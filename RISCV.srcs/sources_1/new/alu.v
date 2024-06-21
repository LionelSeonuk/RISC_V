module alu(
    input [31:0] a, b,
    input [4:0] control,
    output reg [31:0] result,
    output N,
    output Z,
    output C,
    output V
);
    wire [31:0] sum;
    wire [32:0] c;
    wire sign;
    wire [31:0] bxor;

    assign sign = control[4];
    assign bxor[00] = (sign) ? ~b[00] : b[00];
    assign bxor[01] = (sign) ? ~b[01] : b[01];
    assign bxor[02] = (sign) ? ~b[02] : b[02];
    assign bxor[03] = (sign) ? ~b[03] : b[03];
    assign bxor[04] = (sign) ? ~b[04] : b[04];
    assign bxor[05] = (sign) ? ~b[05] : b[05];
    assign bxor[06] = (sign) ? ~b[06] : b[06];
    assign bxor[07] = (sign) ? ~b[07] : b[07];
    assign bxor[08] = (sign) ? ~b[08] : b[08];
    assign bxor[09] = (sign) ? ~b[09] : b[09];
    assign bxor[10] = (sign) ? ~b[10] : b[10];
    assign bxor[11] = (sign) ? ~b[11] : b[11];
    assign bxor[12] = (sign) ? ~b[12] : b[12];
    assign bxor[13] = (sign) ? ~b[13] : b[13];
    assign bxor[14] = (sign) ? ~b[14] : b[14];
    assign bxor[15] = (sign) ? ~b[15] : b[15];
    assign bxor[16] = (sign) ? ~b[16] : b[16];
    assign bxor[17] = (sign) ? ~b[17] : b[17];
    assign bxor[18] = (sign) ? ~b[18] : b[18];
    assign bxor[19] = (sign) ? ~b[19] : b[19];
    assign bxor[20] = (sign) ? ~b[20] : b[20];
    assign bxor[21] = (sign) ? ~b[21] : b[21];
    assign bxor[22] = (sign) ? ~b[22] : b[22];
    assign bxor[23] = (sign) ? ~b[23] : b[23];
    assign bxor[24] = (sign) ? ~b[24] : b[24];
    assign bxor[25] = (sign) ? ~b[25] : b[25];
    assign bxor[26] = (sign) ? ~b[26] : b[26];
    assign bxor[27] = (sign) ? ~b[27] : b[27];
    assign bxor[28] = (sign) ? ~b[28] : b[28];
    assign bxor[29] = (sign) ? ~b[29] : b[29];
    assign bxor[30] = (sign) ? ~b[30] : b[30];
    assign bxor[31] = (sign) ? ~b[31] : b[31];
    
    
    fa u00(.a(a[00]), .b(bxor[00]), .ci(sign), .s(sum[00]), .co(c[01]));
    fa u01(.a(a[01]), .b(bxor[01]), .ci(c[01]), .s(sum[01]), .co(c[02]));
    fa u02(.a(a[02]), .b(bxor[02]), .ci(c[02]), .s(sum[02]), .co(c[03]));
    fa u03(.a(a[03]), .b(bxor[03]), .ci(c[03]), .s(sum[03]), .co(c[04]));
    fa u04(.a(a[04]), .b(bxor[04]), .ci(c[04]), .s(sum[04]), .co(c[05]));
    fa u05(.a(a[05]), .b(bxor[05]), .ci(c[05]), .s(sum[05]), .co(c[06]));
    fa u06(.a(a[06]), .b(bxor[06]), .ci(c[06]), .s(sum[06]), .co(c[07]));
    fa u07(.a(a[07]), .b(bxor[07]), .ci(c[07]), .s(sum[07]), .co(c[08]));
    fa u08(.a(a[08]), .b(bxor[08]), .ci(c[08]), .s(sum[08]), .co(c[09]));
    fa u09(.a(a[09]), .b(bxor[09]), .ci(c[09]), .s(sum[09]), .co(c[10]));
    fa u10(.a(a[10]), .b(bxor[10]), .ci(c[10]), .s(sum[10]), .co(c[11]));
    fa u11(.a(a[11]), .b(bxor[11]), .ci(c[11]), .s(sum[11]), .co(c[12]));
    fa u12(.a(a[12]), .b(bxor[12]), .ci(c[12]), .s(sum[12]), .co(c[13]));
    fa u13(.a(a[13]), .b(bxor[13]), .ci(c[13]), .s(sum[13]), .co(c[14]));
    fa u14(.a(a[14]), .b(bxor[14]), .ci(c[14]), .s(sum[14]), .co(c[15]));
    fa u15(.a(a[15]), .b(bxor[15]), .ci(c[15]), .s(sum[15]), .co(c[16]));
    fa u16(.a(a[16]), .b(bxor[16]), .ci(c[16]), .s(sum[16]), .co(c[17]));
    fa u17(.a(a[17]), .b(bxor[17]), .ci(c[17]), .s(sum[17]), .co(c[18]));
    fa u18(.a(a[18]), .b(bxor[18]), .ci(c[18]), .s(sum[18]), .co(c[19]));
    fa u19(.a(a[19]), .b(bxor[19]), .ci(c[19]), .s(sum[19]), .co(c[20]));
    fa u20(.a(a[20]), .b(bxor[20]), .ci(c[20]), .s(sum[20]), .co(c[21]));
    fa u21(.a(a[21]), .b(bxor[21]), .ci(c[21]), .s(sum[21]), .co(c[22]));
    fa u22(.a(a[22]), .b(bxor[22]), .ci(c[22]), .s(sum[22]), .co(c[23]));
    fa u23(.a(a[23]), .b(bxor[23]), .ci(c[23]), .s(sum[23]), .co(c[24]));
    fa u24(.a(a[24]), .b(bxor[24]), .ci(c[24]), .s(sum[24]), .co(c[25]));
    fa u25(.a(a[25]), .b(bxor[25]), .ci(c[25]), .s(sum[25]), .co(c[26]));
    fa u26(.a(a[26]), .b(bxor[26]), .ci(c[26]), .s(sum[26]), .co(c[27]));
    fa u27(.a(a[27]), .b(bxor[27]), .ci(c[27]), .s(sum[27]), .co(c[28]));
    fa u28(.a(a[28]), .b(bxor[28]), .ci(c[28]), .s(sum[28]), .co(c[29]));
    fa u29(.a(a[29]), .b(bxor[29]), .ci(c[29]), .s(sum[29]), .co(c[30]));
    fa u30(.a(a[30]), .b(bxor[30]), .ci(c[30]), .s(sum[30]), .co(c[31]));
    fa u31(.a(a[31]), .b(bxor[31]), .ci(c[31]), .s(sum[31]), .co(c[32]));

    always @* begin
    case (control)
        5'b0_0000: result = sum;            // ADD
        5'b1_0000: result = sum;            // SUB
        5'b0_0100: result = a << b[4:0];   //SLL
        5'b0_0001: result = a & b;          // AND
        5'b0_0010: result = a | b;          // OR
        5'b0_0011: result = a ^ b;          // XOR
        5'b1_0111: result = (N !=V) ? 1 : 0;          // SLT
        5'b0_0101: result = a >> b[4:0];         // SRL
        5'b0_0110: result = a >>> b[4:0]; // SRA
        5'b1_1000: result = (!C) ? 1:0;          //SLTU
        default: result = 0;           // 기본 값
    endcase
end 

    // 플래그 설정
    assign N = sum[31];
    assign Z = (sum == 32'b0);
    assign C = c[32]; // c[32] = 캐리 아웃
    assign V = c[31] ^ c[32];

endmodule
