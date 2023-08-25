`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 21:33:31
// Design Name: 
// Module Name: siso_tb
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


module siso_tb(

    );
    reg clk,d,rst;
    wire q;
    siso uut(clk,d,rst,q);
    initial begin
    clk=1'b0;
    forever #10 clk=~clk;
    end
    initial begin
    rst=1'b0;
    end
    initial begin
    d=1'b0;
    forever #20 d=~d;
    end
endmodule
