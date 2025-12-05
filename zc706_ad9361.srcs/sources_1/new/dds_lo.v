`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/14 17:05:50
// Design Name: 
// Module Name: dds_lo
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


module dds_lo(
    input  wire         clk,
    input  wire         rstn,
    output reg  signed [15:0] lo_i, // cos(φ)
    output reg  signed [15:0] lo_q  // -sin(φ)
);

    parameter PHASE_WIDTH = 32;
    parameter LUT_ADDR_WIDTH = 12;
    parameter LUT_SIZE = 1<<LUT_ADDR_WIDTH;

    // 相位累加器
    reg [PHASE_WIDTH-1:0] phase_acc;

    // 相位增量 Δφ = f_LO / f_clk * 2^32
    // f_LO = 3.84MHz, f_clk = 30.72MHz → Δφ = 0.125 * 2^32
    localparam [PHASE_WIDTH-1:0] PHASE_INC = 32'h20000000; // 2^32 * 0.125

    // LUT：存储 Q1.15 定点 sin/cos
    reg signed [15:0] sin_lut [0:LUT_SIZE-1];
    reg signed [15:0] cos_lut [0:LUT_SIZE-1];

    integer i;
    initial begin
        // 初始化 LUT，可在 MATLAB 生成 sin/cos 乘以 32767 再导入
        for(i=0;i<LUT_SIZE;i=i+1) begin
            cos_lut[i] = $rtoi(32767 * $cos(2*3.14159265*i/LUT_SIZE));
            sin_lut[i] = $rtoi(32767 * $sin(2*3.14159265*i/LUT_SIZE));
        end
    end

    // DDS 逻辑
    wire [LUT_ADDR_WIDTH-1:0] addr = phase_acc[PHASE_WIDTH-1 -: LUT_ADDR_WIDTH];

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            phase_acc <= 0;
        else
            phase_acc <= phase_acc + PHASE_INC;

        lo_i <= cos_lut[addr];
        lo_q <= -sin_lut[addr]; // 负号用于下变频
    end


endmodule
