`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2026 23:37:40
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] sel;
    wire[3:0] result;
    wire carry;
    
    alu_4bit uut(
    .a(a),
    .b(b),
    .sel(sel),
    .result(result),
    .carry(carry)
    );
    
 initial begin
 $monitor("Time=%0t A=%d B=%d sel=%b carry=%b result=%b"
         , $time,a,b,sel,carry,result);
         
  a = 4'b0101; b = 4'b0011;
         
  sel = 3'b000; #10; // Add
    sel = 3'b001; #10; // Sub
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // Shift left
    sel = 3'b111; #10; // Shift right
    
    $finish;
   
   end
    
endmodule
