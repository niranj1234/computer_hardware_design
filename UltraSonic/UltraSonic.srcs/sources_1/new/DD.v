/////
// WE DO NOT CLAIM THIS CODE AS OURS.
// THIS COMPONENT WAS IMPORTED FROM THE FOLLOWING GITHUB REPO:
// https://github.com/josh-macfie/VerilogDoubleDabble/blob/master/BCDConvert.v
// ALL CREDIT FOR THIS CODE BELONGS TO THE FOLLOWING CREATOR:
// geek : https://www.youtube.com/watch?v=Q-hOCVVd7Lk
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2020 03:46:57 PM
// Design Name: 
// Module Name: BCDConvert
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


module BCDConvert(
    input           clk,
    input           en,
    input   [15:0]  bin_d_in,
    output  [19:0]  bcd_d_out,
    output          rdy
    );
    
    //State variables
    parameter IDLE      = 3'b000;
    parameter SETUP     = 3'b001;
    parameter ADD       = 3'b010;
    parameter SHIFT     = 3'b011;
    parameter DONE      = 3'b100;
    
    //reg [11:0]  bin_data    = 0;
    reg [31:0]  bcd_data    = 0;
    reg [2:0]   state       = 0;
    reg         busy        = 0;
    reg [3:0]   sh_counter  = 0;
    reg [2:0]   add_counter = 0;
    reg         result_rdy  = 0;
    
    
    always @(posedge clk)
        begin
        if(en)
            begin
                if(~busy)
                    begin
                    bcd_data    <= {20'b0, bin_d_in};
                    state       <= SETUP;
                    end
            end
        
        case(state)
        
            IDLE:
                begin
                    result_rdy  <= 0;
                    busy        <= 0;
                end
                
            SETUP:
                begin
                busy        <= 1;
                state       <= ADD;
                end
                    
            ADD:
                begin
                
                case(add_counter)
                    0:
                        begin
                        if(bcd_data[15:12] > 4)
                            begin
                                bcd_data[31:12] <= bcd_data[31:12] + 3;
                            end
                            add_counter <= add_counter + 1;
                        end
                    
                    1:
                        begin
                        if(bcd_data[19:16] > 4)
                            begin
                                bcd_data[31:16] <= bcd_data[31:16] + 3;
                            end
                            add_counter <= add_counter + 1;
                        end
                        
                    2:
                        begin
                        if((add_counter == 2) && (bcd_data[23:20] > 4))
                            begin
                                bcd_data[31:20] <= bcd_data[31:20] + 3;
                            end
                            add_counter <= add_counter + 1;
                        end
                        
                    3:
                        begin
                        if((add_counter == 3) && (bcd_data[31:24] > 4))
                            begin
                                bcd_data[31:24] <= bcd_data[31:24] + 3;
                            end
                            add_counter <= add_counter + 1;
                        end
                    4:
                        begin
                        if((add_counter == 4) && (bcd_data[31:28] > 4))
                            begin
                                bcd_data[31:28] <= bcd_data[31:28] + 3;
                            end
                            add_counter <= 0;
                            state   <= SHIFT;
                        end
                        
                    endcase
                end
                
            SHIFT:
                begin
                sh_counter  <= sh_counter + 1;
                bcd_data    <= bcd_data << 1;
                
                if(sh_counter == 11)
                    begin
                    sh_counter  <= 0;
                    state       <= DONE;
                    end
                else
                    begin
                    state   <= ADD;
                    end

                end
 
            
            DONE:
                begin
                result_rdy  <= 1;
                state       <= IDLE;
                end
            default:
                begin
                state <= IDLE;
                end
            
            endcase
            
        end
    assign bcd_d_out    = bcd_data[31:12];
    assign rdy          = result_rdy;
endmodule