`timescale 1ns / 1ps

module testbench;
reg clk;
reg[1:0] select;
reg[7:0] threshold;
reg[7:0] a1;
reg[7:0] a2;
reg[7:0] a3;
reg[7:0] a4;
reg[7:0] a5;
reg[7:0] a6;
reg[7:0] a7;
reg[7:0] a8;
reg[7:0] a9;
reg[7:0] inbyte;
reg[7:0] Memin[0:100000];
wire[7:0] outbyte;
integer infile,outfile,i,x;

main first(clk,select,threshold,a1,a2,a3,a4,a5,a6,a7,a8,a9,outbyte);

always 
begin
    clk = 1'b1; 
    #2; // high for 20 * timescale = 20 ns
    clk = 1'b0;
    #2; // low for 20 * timescale = 20 ns
end

always@(posedge clk)

begin

clk = 1'b0;

//infile =$fopen("C:\\Users\\Hp\\Desktop\\infile.coe","r"); 
infile =$fopen("C:\\Users\\Hp\\Desktop\\FPGA\\input_blur_bin_FPGA.coe","r"); 
outfile =$fopen("C:\\Users\\Hp\\Desktop\\outfile_blur.txt","w");
$readmemb("C:\\Users\\Hp\\Desktop\\FPGA\\input_blur_bin_FPGA.coe",Memin);
  
x = 849;  //WIDTH OF IMAGE -1
  
clk = 1'b1;
select=2'b01;
threshold=8'b1100100;

i = 850;// WIDTH OF IMAGE

//  a1  a2  a3
//  a4  a5  a6
//  a7  a8  a9
$fwrite(outfile,"%b",11111111);
$fwrite(outfile,"\t");
while(!$feof(infile))
begin
clk = 0;
#1
clk = 1;
inbyte = Memin[i];
a1=Memin[i-x-1];
a2=Memin[i-x];
a3=Memin[i-x+1];
a4=Memin[i-1];
a5=Memin[i];
a6=Memin[i+1];
a7=Memin[i+x-1];
a8=Memin[i+x];
a9=Memin[i+x+1];
$fwrite(outfile,"%b",outbyte,"\t");
i <= i+1;  
if (i>=719950)
    i=721650;
#10;
end
$fclose(infile);
$fclose(outfile);


#100;
$stop;
end
endmodule
