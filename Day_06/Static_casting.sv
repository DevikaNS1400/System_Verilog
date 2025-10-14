module convert;
integer i1;
real r1;
bit [63:0]b1;
shortreal sr1;
bit [31:0] b2;

initial begin
r1=3456.78;
i1=$rtoi(r1);
$display("$rtoi:r1=%f,i1=%0d",r1,i1);

i1=1234;
r1=$itor(i1);
$display("$itor:i1=%0d,r1=%f\n",i1,r1);

r1=4567.678012;
b1=$realtobits(r1);
$display("$realtobits: r1=%f b1=%b",r1,b1);

r1=$bitstoreal(b1);
$display("$bitstoreal: b1=%b r1=%f \n",b1,r1);

sr1=7890.123047;
b2=$shortrealtobits(sr1);
$display("$shortrealtobits:sr1=%f b2=%b",sr1,b2);

sr1=$bitstoshortreal(b2);
$display("$bitstoshortreal:b2 =%b sr1=%f",b2,sr1);
end
endmodule

/*
OUTPUT

 $rtoi:r1=3456.780000,i1=3456
# $itor:i1=1234,r1=1234.000000
# 
# $realtobits: r1=4567.678012 b1=0100000010110001110101111010110110010010001100011100011001001100
# $bitstoreal: b1=0100000010110001110101111010110110010010001100011100011001001100 r1=4567.678012 
# 
# $shortrealtobits:sr1=7890.123047 b2=01000101111101101001000011111100
# $bitstoshortreal:b2 =01000101111101101001000011111100 sr1=7890.123047

*/
