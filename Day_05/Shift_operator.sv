module shift_operator;

logic [7:0] I1,i1;

initial begin

I1=8'b10110111;

i1=I1<<2;
$display("I1=%b : <<2=%b",I1,i1);

i1=I1>>4;
$display("I1=%b  :  >>4 = %b",I1,i1);

I1=-3;
i1=I1<<<2;
$display("I1=%b : <<<2=%b ",I1,i1);

I1=-2;
i1=I1>>>4;
$display("I1=%b : >>>4=%b ",I1,i1);

end
endmodule

/*
OUTPUT

I1=10110111 : <<2=11011100
# I1=10110111  :  >>4 = 00001011
# I1=11111101 : <<<2=11110100 
# I1=11111110 : >>>4=00001111 

*/
