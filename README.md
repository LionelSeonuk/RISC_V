# RISC-V(with vivado verilog & centos7x)


https://github.com/LionelSeonuk/RISC_V/assets/167200555/4e4691fe-bce5-4087-84b4-384828477b52

# Code Explain
``` C
#include "SevenSeg.h"

void SevenSeg()
{
	unsigned int * seg0_addr = (unsigned int *) SevenSeg0;
	unsigned int * led_addr  = (unsigned int *) LEDG;
	unsigned int i, data;

	data = 0x155;
	while (1){

		*seg0_addr = SEG_5;
		*led_addr  = data;
		data = data ^ 0x3FF;

		for (i=0; i<0xFFFFF; i++) ;
		//for (i=0; i<0x10; i++) ;

		*seg0_addr = SEG_A;
		*led_addr  = data;
		data = data ^ 0x3FF;

		for (i=0; i<0xFFFFF; i++) ;
		//for (i=0; i<0x10; i++) ;
	}
	return;
}
```
### Centos7- Main code
``` C
#ifndef SEVENSEG_H_
#define SEVENSEG_H_

#define  GPIO_BASE      0xFFFF2000
#define  Button_Status  GPIO_BASE + 0
#define  SW_Status      GPIO_BASE + 1   //if pointer of int, increment(+1) is equal to address(+4)
#define  LEDG           GPIO_BASE + 2
#define  SevenSeg0      GPIO_BASE + 3
#define  SevenSeg1      GPIO_BASE + 4
#define  SevenSeg2      GPIO_BASE + 5
#define  SevenSeg3      GPIO_BASE + 6
#define  SevenSeg4      GPIO_BASE + 7
#define  SevenSeg5      GPIO_BASE + 8
#define  SEG_0      0x7E    /* Display "0" on 7 Segment */
#define  SEG_1      0x30    /* Display "1" on 7 Segment */
#define  SEG_2      0x6D    /* Display "2" on 7 Segment */
#define  SEG_3      0x79    /* Display "3" on 7 Segment */
#define  SEG_4      0x33    /* Display "4" on 7 Segment */
#define  SEG_5      0x5B    /* Display "5" on 7 Segment */
#define  SEG_6      0x5F    /* Display "6" on 7 Segment */
#define  SEG_7      0x72    /* Display "7" on 7 Segment */
#define  SEG_8      0x7F    /* Display "8" on 7 Segment */
#define  SEG_9      0x7B    /* Display "9" on 7 Segment */
#define  SEG_A      0x77    /* Display "A" on 7 Segment */
#define  SEG_B      0x1F    /* Display "B" on 7 Segment */
#define  SEG_C      0x4E    /* Display "C" on 7 Segment */
#define  SEG_D      0x3D    /* Display "D" on 7 Segment */
#define  SEG_E      0x4F    /* Display "E" on 7 Segment */
#define  SEG_F      0x47    /* Display "F" on 7 Segment */
#define  SEG_       0x01    /* Display "-" on 7 Segment */

#endif /* SEVENSEG_H_ */
```
### Centos7-Header code
```verilog
always @ (posedge clk, posedge rst)
      begin
          if (rst)
              pc <= 0;
          else if(
            (beq && funct3==3'b000 && Zflag)||
            (beq && funct3==3'b001 && !Zflag)||
            (beq && funct3==3'b100 && (Nflag != Vflag))||
            (beq && funct3==3'b101 && (Nflag == Vflag)|| Zflag)||
            (beq && funct3==3'b110 && !Cflag)||
            (beq && funct3==3'b111 && (Cflag || Zflag))
            )
              pc <= pc + {{19{inst[31]}},{inst[31],inst[7],inst[30:25],inst[11:8],1'b0}}; 
          else if(jal)
              pc <= pc + {{11{inst[31]}},{inst[31],inst[19:12],inst[20],inst[30:21],1'b0}};
          else if(jalr)
              pc <= {{{19{inst[30]}},inst[31:20]}+ rs1_data[30:1] ,1'b0};  
          else 
              pc <= pc+4; 
      end
```
### Register for PC
```verilog
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
                  case ({funct7,funct3})
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
```
### Function & ALUcontrol
The R-type command uses function7 and function3 bits to perform operations between registers to determine specific operations.
<br>
I-type commands perform arithmetic operations with immediate values and shift operations with immediate values.
<br>
The B-type command performs a conditional branch.
<br>
In addition, there are load commands, jal commands, jal commands, jalr commands, lui commands, auipc commands, and s commands that do not use function bits.
<br>
This syntax sets the ALU control signal based on the opcode and function bits to determine the operations that the ALU should perform.
```verilog
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
```
### OP Code
Several control signals were set based on the opcode, and various control signals such as input source, register write, memory write, branch, jump, and special command (lui, auipc) of the ALU were set for each opcode.
```verilog
always @* begin
          if (lui) alusrc1 = 0; 
          else if(auipc) alusrc1 = pc;
          else alusrc1 = rs1_data; 
      end
  
      always @* begin
          if (memwrite) alusrc2 = {{20{inst[31]}}, inst[31:25], inst[11:7]};   
          else if (alusrc) alusrc2 = {{20{inst[31]}}, inst[31:20]}; 
          else if (lui || auipc) alusrc2 = {inst[31:12], 12'b0};  
          else alusrc2 = rs2_data;
      end
```
### ALUsrc setup logic
'alusrc1' setup logic
<br>
If lui is enabled, 0, if auipc is enabled, it is set to the program counter (pc) and otherwise to the data in the rs1 register.
<br>
'alusrc2' setup logic
<br>
When memwrite is enabled, it is set to S-Type instantaneous value, when alusrc is enabled, I-Type instantaneous value, lui or auipc is set to LUI and AUIPC instant values, and otherwise to data in the rs2 register.
```verilog
always @* begin
    case (control)
        5'b00000: result = sum;            // ADD
        5'b10000: result = sum;            // SUB
        5'b00001: result = a & b;          // AND
        5'b00010: result = a | b;          // OR
        5'b00011: result = a ^ b;          // XOR
        5'b10111: result = (N !=V) ? 1:0;      // SLT
	5'b11000: result = (!C) ? 1:0;          //SLTU
	5'b00100: result = a << b[4:0];   //SLL
        5'b00101: result = a >> b[4:0];         // SRL
        5'b00110: result = a >>> b[4:0]; // SRA
        default: result = 32'b0;           // 기본 값
    endcase
end
assign N = sum[31];
assign Z = (sum == 32'b0);
assign C = c[32]; // c[32] = 캐리 아웃
assign V = c[31] ^ c[32];
```
### ALU
NZCV
