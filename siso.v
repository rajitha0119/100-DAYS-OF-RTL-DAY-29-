`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 21:27:24
// Design Name: 
// Module Name: siso
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
module d_ff(input clk,d,rst,output reg q);
always@(posedge clk)
begin
if(rst)
q<=1'd0;
else
q<=d;
end
endmodule

module siso(
    input clk,
    input d,
    input rst,
    output q
    );
    wire x1,x2,x3;
  d_ff DFF1(clk,d,rst,x3);
  d_ff DFF2(clk,x3,rst,x2);
  d_ff DFF3(clk,x2,rst,x1);
  d_ff DFF4(clk,x1,rst,q);
endmodule
