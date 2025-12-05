`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/27 17:20:41
// Design Name: 
// Module Name: phase
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


module phase(
    input   clk,
    input   rst,
    output          valid,
    output  [15:0]  phase_data
    );

reg     [12:0]  rotate_rom_addr;
 
always @(posedge clk or posedge rst) begin
    if (rst) 
        rotate_rom_addr <= 0;
    else if (rotate_rom_addr == 'd5119)
        rotate_rom_addr <= 'd0;
    else
        rotate_rom_addr <= rotate_rom_addr + 1'b1;
end

assign valid = 1'b1;

endmodule


