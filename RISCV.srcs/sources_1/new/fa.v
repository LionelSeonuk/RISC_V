`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/16 17:55:09
// Design Name: 
// Module Name: fa4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fa(
    input a,
    input b,
    input ci,
    output s,
    output co
    
    );
    assign s=a^b^ci;
    assign co=(ci&(a^b))|(a&b);
endmodule
