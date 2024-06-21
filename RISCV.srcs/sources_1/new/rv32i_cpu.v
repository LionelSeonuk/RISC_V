`define OP_LUI      7'b0110111
`define OP_AUIPC    7'b0010111
`define OP_JAL      7'b1101111
`define OP_JALR     7'b1100111
`define OP_B        7'b1100011
`define OP_I_LOAD   7'b0000011
`define OP_S        7'b0100011
`define OP_I_ARITH  7'b0010011
`define OP_R        7'b0110011

module rv32i_cpu(
        input   clk, 
        input   rst,
        output reg [31:0]  pc, //program counter (address for instruction)
        input   [31:0]  inst, //instruction from memory
        output  MemWen, 	
        output  [31:0]  MemAddr, 
        output  [31:0]  MemWdata, 
        input   [31:0]  MemRdata 
    );
      wire [6:0] opcode; 
      wire [4:0] rs1, rs2, rd;
      wire [31:0] rs1_data, rs2_data;   
      reg [31:0] rd_data;  
      wire [6:0] funct7; 
      wire [2:0] funct3;
  
      reg [31:0] alusrc1, alusrc2;    
      wire [31:0] aluout; 
      reg [4:0] alucontrol;   
      reg alusrc, regwrite, lui, memwrite, auipc,beq, memtoreg,jal,jalr;
      wire Nflag, Zflag, Cflag, Vflag; 
  
  
  // register for pc
  
      always @ (posedge clk, posedge rst)
      begin
          if (rst)
              pc <= 0;
          else if(
            (beq && (funct3==3'b000) && Zflag)||
            (beq && (funct3==3'b001) && !Zflag)||
            (beq && (funct3==3'b100) && (Nflag != Vflag))||
            (beq && (funct3==3'b101) && ((Nflag == Vflag)|| Zflag))||
            (beq && (funct3==3'b110) && !Cflag)||
            (beq && (funct3==3'b111) && (Cflag || Zflag))
            )
              pc <= pc + {{19{inst[31]}},{inst[31],inst[7],inst[30:25],inst[11:8],1'b0}}; 
          else if(jal)
              pc <= pc + {{11{inst[31]}},{inst[31],inst[19:12],inst[20],inst[30:21],1'b0}};
          else if(jalr)
              pc <= {{{19{inst[30]}},inst[31:20]}+ rs1_data[30:1] ,1'b0};  
          else 
              pc <= pc+4; 
      end
      
      // register file
      regfile regfile_inst( 
          .clk(clk), 
          .we(regwrite),
          .rs1(rs1),
          .rs2(rs2),
          .rd(rd),
          .rd_data(rd_data),
          .rs1_data(rs1_data),
          .rs2_data(rs2_data)
      );  
    
      assign rs1 = inst[19:15]; 
      assign rs2 = inst[24:20];
      assign rd = inst[11:7];
    
      assign opcode = inst[6:0];
      assign funct7 = inst[31:25];
      assign funct3 = inst[14:12];
       
      //generate constrol signal for alu //aludec
      always @* begin
          case (opcode)
              `OP_R: //R-type
                  case ({funct7,funct3}) 
                      10'b0000000_000: alucontrol = 5'b0_0000; //add
                      10'b0100000_000: alucontrol = 5'b1_0000; //subtract
                      10'b0000000_001: alucontrol = 5'b0_0100; //sll
                      10'b0000000_010: alucontrol = 5'b1_0111; //slt
                      10'b0000000_011: alucontrol = 5'b1_1000; //sltu
                      10'b0000000_100: alucontrol = 5'b0_0011; //xor
                      10'b0000000_101: alucontrol = 5'b0_0101; //srl
                      10'b0100000_101: alucontrol = 5'b0_0110; //sra
                      10'b0000000_110: alucontrol = 5'b0_0010; //or
                      10'b0000000_111: alucontrol = 5'b0_0001; //and
                      default: alucontrol = 5'b0_0000;
                  endcase
              `OP_I_ARITH:begin //I-Type Arithemtic
                  casex ({funct7,funct3})
                      10'bxxxxxxx_000 : alucontrol = 5'b0_0000; //addi
                      10'bxxxxxxx_010 : alucontrol = 5'b1_0111; //slti
                      10'bxxxxxxx_011 : alucontrol = 5'b1_1000; //sltiu
                      10'bxxxxxxx_100 : alucontrol = 5'b0_0011; //xori
                      10'bxxxxxxx_110 : alucontrol = 5'b0_0010; //ori
                      10'bxxxxxxx_111 : alucontrol = 5'b0_0001; //andi
                      10'b0000000_001: alucontrol = 5'b0_0100; //sll
                      10'b0000000_101: alucontrol = 5'b0_0101; //srl
                      10'b0100000_101: alucontrol = 5'b0_0110; //sra
                      default: alucontrol = 5'b0; 
                  endcase
                  end
               `OP_B: //B-Type
                   case (funct3)
                      3'b000 : alucontrol = 5'b1_0000;//BEQ
                      3'b001 : alucontrol = 5'b1_0000;//BNE  
                      3'b100 : alucontrol = 5'b1_0000;//BLT
                      3'b101 : alucontrol = 5'b1_0000;//BGE
                      3'b110 : alucontrol = 5'b1_0000;//BLTU
                      3'b111 : alucontrol = 5'b1_0000;//BGEU
                  endcase
              `OP_JAL:
                  alucontrol = 5'bx_xxxx;
              default: 
                  alucontrol = 5'b0_0000;
          endcase
      end
   
                     
      //generate various control signals according to opcode
      always @* begin
          case (opcode)
              `OP_R: begin //R-type
                  alusrc = 1'b0; 
                  regwrite = 1'b1;
                  lui = 1'b0; 
                  memwrite = 1'b0;
                  auipc =1'b0;
                  memtoreg = 1'b0;
                  jal = 1'b0;
                  beq = 1'b0;
                  jalr =1'b0;
              end 
              `OP_I_ARITH: begin //I-type
                  alusrc = 1'b1; 
                  regwrite = 1'b1;
                  lui = 1'b0; 
                  memwrite = 1'b0;
                  auipc =1'b0;
                  memtoreg = 1'b0;
                  jal = 1'b0;
                  beq = 1'b0;
                  jalr =1'b0;
              end
              `OP_LUI: begin
                  alusrc = 1'b0; 
                  regwrite = 1'b1;
                  lui = 1'b1; 
                  memwrite = 1'b0;
                  auipc =1'b0;
                  memtoreg = 1'b0;
                  jal = 1'b0;
                  beq = 1'b0;
                  jalr =1'b0;
               end
               `OP_I_LOAD: begin
                  alusrc = 1'b1;
                  regwrite = 1'b1;
                  memwrite = 1'b0;
                  beq = 1'b0;
                  memtoreg = 1'b1;
                  jal=1'b0;
                  lui = 1'b0; 
                  auipc =1'b0;
                  jalr =1'b0;
                end
               `OP_S: begin
                   alusrc = 1'b1; 
                   regwrite = 1'b0;
                   lui = 1'b0; 
                   memwrite = 1'b1;
                   auipc =1'b0;
                   jal = 1'b0;
                   jalr =1'b0;
                   beq = 1'b0;
                   memtoreg =1'bx;
                end
               `OP_AUIPC: begin
                   alusrc = 1'b0; 
                   regwrite = 1'b1;
                   lui = 1'b0; 
                   memwrite = 1'b0;
                   memtoreg =1'b0;
                   auipc =1'b1;
                   jal = 1'b0;
                   jalr =1'b0;
                   beq = 1'b0;
               end
              `OP_B: begin
                  beq =1'b1;
                  alusrc = 1'b0;
                  regwrite = 1'b0;
                  memwrite = 1'b0;
                  jal = 1'b0;
                  auipc =1'b0;
                  lui = 1'b0;
                  jalr =1'b0;
                  memtoreg =1'bx;
               end
               `OP_JAL: begin
                  regwrite = 1'b1;
                  beq = 1'b0;
                  memwrite = 1'b0;
                  jal = 1'b1;
                  lui = 1'b0;
                  auipc =1'b0;
                  jalr =1'b0;
                  memtoreg =1'bx;
                  alusrc =1'bx;
               end
               `OP_JALR: begin
                  regwrite = 1'b1;
                  beq = 1'b0;
                  memwrite = 1'b0;
                  jal = 1'b0;
                  lui = 1'b0;
                  auipc =1'b0;
                  jalr =1'b1;
                  alusrc = 1'b1;
                  memtoreg =1'bx;
               end
               default: begin
                  jal = 1'b0;
                  alusrc = 1'b0;
                  regwrite = 1'b0;
                  lui = 1'b0;
                  memwrite = 1'b0;
                  auipc =1'b0;
                  beq = 1'b0;
                  memtoreg = 1'b0;
                  jalr =1'b0;
              end
           endcase
      end 
  
      
      //always for alusrc1, alusrc2
      always @* begin
          if (lui) alusrc1 = 0; 
          else if(auipc) alusrc1 = pc;
          else alusrc1 = rs1_data; 
      end
  
      always @* begin
          if (memwrite) alusrc2 = {{20{inst[31]}}, inst[31:25], inst[11:7]};   //se_imm_stype
          else if (alusrc) alusrc2 = {{20{inst[31]}}, inst[31:20]};  //se_imm_itype
          else if (lui || auipc) alusrc2 = {inst[31:12], 12'b0};   //auipc_lui_imm
          else alusrc2 = rs2_data;
      end
      

   
      
      alu alu_inst(
            .a(alusrc1), 
            .b(alusrc2),
            .control(alucontrol),
            .result(aluout),
            .N(Nflag),
            .Z(Zflag),
            .C(Cflag),
            .V(Vflag)
      );   
      
      always @* begin
              if (memtoreg) rd_data = MemRdata;
              else if(jal) rd_data = pc + 4;
              else rd_data = aluout;
      end
  
      assign MemAddr = aluout;  
      assign MemWdata = rs2_data; 
      assign MemWen = memwrite; 

endmodule