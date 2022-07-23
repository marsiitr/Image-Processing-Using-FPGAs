`timescale 1ns/1ps 

module test;
reg clk;
reg[1:0] select;
reg[7:0] value;
reg[7:0] threshold;
reg[7:0] inbyte;
reg[7:0] Memin[0:100000];
reg[7:0] Memout[0:100000];
wire[7:0] outbyte;
integer infile,outfile,i;



main first(clk,select,value,threshold,inbyte,outbyte);
always 
begin
    clk = 1'b1; 
    clk = 1'b0;
end

always@(posedge clk)

begin

clk = 1'b0;



infile =$fopen("C:\\Users\\Hp\\Desktop\\infile.coe","r");  // input binary file
outfile =$fopen("C:\\Users\\Hp\\Desktop\\outfile.txt","w"); // output binary file
  
$readmemb("C:\\Users\\Hp\\Desktop\\infile.coe",Memin);  


clk = 1'b1;
select=2'b11;  // -----------CHANGE SELECT STATE TO CHANGE OUTPUT----------//
value = 8'b01000000;
threshold=8'b10000010;

i = 0;

while(!$feof(infile))
begin
clk = 0;
#1
clk = 1;
inbyte = Memin[i];
Memout[i] = outbyte;
  $fwrite(outfile,"%b",outbyte);
  $fwrite(outfile,"\t");
i = i+1;  
#10;
end


 
$fclose(infile);
$fclose(outfile);


#100;
$stop;
end

endmodule