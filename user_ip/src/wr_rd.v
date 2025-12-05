`timescale 1ns / 1ps

module wr_rd(
    input wr_clk,
    input wr_rst,
    input rd_clk,
    input rd_rst,
  
    input wire [15:0] wr_data_0,
    input wire [15:0] wr_data_1,
    input wire [15:0] wr_data_2,
    input wire [15:0] wr_data_3,

output wire [15:0] rd_data_0,
output wire [15:0] rd_data_1,
output wire [15:0] rd_data_2,
output wire [15:0] rd_data_3

    );
    
wire [15:0] dout0,dout1,dout2,dout3;
   reg rd_en;
   reg dac_valid_reg;
   wire        empty;
   
   
    always@(posedge wr_clk )begin
    if(wr_rst)begin
        dac_valid_reg <= 0;
    end
    else begin
        dac_valid_reg <= 1'b1;
    end
end   

 always@(posedge rd_clk)begin
    if(rd_rst)
        rd_en <= 0;
    else if(~empty)
        rd_en <= 1'b1;   
    else
        rd_en <= 0;     
 end  
 dac_ila_fifo dac_i0 (
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(wr_data_0),        // input wire [15 : 0] din
  .wr_en(dac_valid_reg),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(rd_data_0),      // output wire [15 : 0] dout
  .full(),      // output wire full
  .empty(empty)    // output wire empty
);
dac_ila_fifo dac_q0 (
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(wr_data_1),        // input wire [15 : 0] din
  .wr_en(dac_valid_reg),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(rd_data_1),      // output wire [15 : 0] dout
  .full(),      // output wire full
  .empty()    // output wire empty
);
dac_ila_fifo dac_i1 (
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(wr_data_2),        // input wire [15 : 0] din
  .wr_en(dac_valid_reg),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(rd_data_2),      // output wire [15 : 0] dout
  .full(),      // output wire full
  .empty()    // output wire empty
);
dac_ila_fifo dac_q2 (
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(wr_data_3),        // input wire [15 : 0] din
  .wr_en(dac_valid_reg),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(rd_data_3),      // output wire [15 : 0] dout
  .full(),      // output wire full
  .empty()    // output wire empty
);
// always@(posedge rd_clk)begin
//    if(rd_rst)begin
//        rd_data_0<=0;
//        rd_data_1<=0;
//        rd_data_2<=0;
//        rd_data_3<=0;
        
//    end    
//    else if(rd_en && ~empty)begin
//      rd_data_0<=dout0;
//        rd_data_1<=dout1;
//        rd_data_2<=dout2;
//        rd_data_3<=dout3;
        
//    end
//    else begin
//        rd_data_0<=0;
//        rd_data_1<=0;
//        rd_data_2<=0;
//        rd_data_3<=0;
//    end
// end   
endmodule
