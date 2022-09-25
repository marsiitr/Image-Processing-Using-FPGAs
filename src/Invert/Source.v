`timescale 1ns / 1ps

module main(
   input wire clk,
   input wire[1:0] select,
   input wire[7:0] value,
   input wire[7:0] threshold,
   input wire[7:0] inbyte,
   output wire[7:0] outbyte
    );
    reg[7:0] grayscale;
always@(posedge clk)
begin 
    if(select == 2'b00) //INCREASE BRIGHTNESS
       begin
         grayscale <= inbyte + value ;
              if(inbyte > 8'b11111111 - value)
              grayscale <= 8'b11111111;
       end  
    else if(select == 2'b01) // DECREASE BRIGHTNESS
        begin
         grayscale <= inbyte - value ;
         if(value > inbyte)
         grayscale <= 0;
        end
    else if(select == 2'b11)  // INVERT
         grayscale <= 8'b11111111 - inbyte;
         
    else
        begin           // BINARISE
        if(inbyte > threshold)
            grayscale <= 8'b11111111;
        else
            grayscale <= 8'b00000000;   
        end      
end

assign outbyte = grayscale;

endmodule