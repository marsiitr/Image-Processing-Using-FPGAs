`timescale 1ns / 1ps

module main(
   input wire clk,
   input wire[1:0] select,
   input wire[7:0] threshold,
//   input wire[7:0] redinbyte1,blueinbyte1,greeninbyte1,
//   input wire[7:0] redinbyte2,blueinbyte2,greeninbyte2,
//   input wire[7:0] redinbyte3,blueinbyte3,greeninbyte3,
//   input wire[7:0] redinbyte4,blueinbyte4,greeninbyte4,
//   input wire[7:0] redinbyte5,blueinbyte5,greeninbyte5,
//   input wire[7:0] redinbyte6,blueinbyte6,greeninbyte6,
//   input wire[7:0] redinbyte7,blueinbyte7,greeninbyte7,
//   input wire[7:0] redinbyte8,blueinbyte8,greeninbyte8,
//   input wire[7:0] redinbyte9,blueinbyte9,greeninbyte9,
   
   input wire[7:0] a1,
   input wire[7:0] a2,
   input wire[7:0] a3,
   input wire[7:0] a4,
   input wire[7:0] a5,   
   input wire[7:0] a6,
   input wire[7:0] a7,
   input wire[7:0] a8,
   input wire[7:0] a9,
   output wire[7:0] outbyte
//   output wire[7:0] redout,
//   output wire[7:0] blueout,
//   output wire[7:0] greenout

   );
   
   reg[14:0] Gx;
   reg[7:0] GxA;
   reg[7:0] GxB;
   reg[14:0] Gy;
   reg[7:0] GyA;
   reg[7:0] GyB;
   reg[7:0] G;
   reg[7:0] out;
//   reg[7:0] a1;
//   reg[7:0] a2;
//   reg[7:0] a3;
//   reg[7:0] a4;
//   reg[7:0] a5;
//   reg[7:0] a6;
//   reg[7:0] a7;
//   reg[7:0] a8;
//   reg[7:0] a9;
//   reg[7:0] redinter;
//   reg[7:0] blueinter;
//   reg[7:0] greeninter;
//  a1  a2  a3
//  a4  a5  a6
//  a7  a8  a9

//SOBEL OPERATOR (SOBEL EDGE DETECTION)
//  1   0   -1                  -1  -2  -1
//  2   0   -2                   0   0   0
//  1   0   -1                   1   2   1

//NOISE REDUCTION 
//  1/9   1/9    1/9
//  1/9   1/9    1/9
//  1/9   1/9    1/9

//SHARPEN
//  -1/9   -1/9   -1/9
//  -1/9   17/9   -1/9
//  -1/9   -1/9   -1/9
always@(posedge clk)
begin
if (select==2'b00) //EDGE DETECTION
begin
//    a1 = (redinbyte1 +blueinbyte1 + greeninbyte1)/3;
//    a2 = (redinbyte2 +blueinbyte2 + greeninbyte2)/3;
//    a3 = (redinbyte3 +blueinbyte3 + greeninbyte3)/3;
//    a4 = (redinbyte4 +blueinbyte4 + greeninbyte4)/3;
//    a5 = (redinbyte5 +blueinbyte5 + greeninbyte5)/3;
//    a6 = (redinbyte6 +blueinbyte6 + greeninbyte6)/3; 
//    a7 = (redinbyte7 +blueinbyte7 + greeninbyte7)/3;
//    a8 = (redinbyte8 +blueinbyte8 + greeninbyte8)/3;
//    a9 = (redinbyte9 +blueinbyte9 + greeninbyte9)/3;                     
    GxA=a1+2*a4+a7;
    GxB=a3+2*a6+a9;
    Gx=(GxA>GxB)?(GxA-GxB):(GxB-GxA);
//    Gx=a1+2*a4+a7-a3-2*a6-a9;
    GyA=a7+2*a8+a9;
    GyB=a1+2*a2+a3;
    Gy=(GyA>GyB)?(GyA-GyB):(GyB-GyA);
//    Gy=a7+2*a8+a9-a1-2*a2-a3;
//    G<=((Gx*Gx)+(Gy*Gy))**(0.5);
G=(Gx*Gx)+(Gy*Gy);


    if (G>threshold*threshold)
    begin
//        redinter <= 8'b00000000;
//        blueinter <= 8'b00000000;
//        greeninter <= 8'b00000000;

        out=8'b00000000;
        end
    else
    begin
//        redinter <= 8'b11111111;
//        blueinter <= 8'b11111111;
//        greeninter <= 8'b11111111;

        out=8'b11111111;
    end
end
else if(select == 2'b01) begin // NOISE REDUCTION
   out = (a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9)/9;
end
else if (select==2'b10) //SHARPEN
begin
out= (a5*17-(a1+a2+a3+a4+a6+a7+a8+a9))/9;
if ((a5*17)<(a1+a2+a3+a4+a6+a7+a8+a9))
    out=8'b00000000;

end
end
//assign redout =redinter;
//assign greenout = greeninter;
//assign blueout = blueinter;
assign outbyte=out;


endmodule