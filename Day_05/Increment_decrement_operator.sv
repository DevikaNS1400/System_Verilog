module inc_dec_optr;
 
int a,b,c,d;
 initial begin

a=10;
b=a++;
$display("b=a++:: a=%0d b=%0d",a,b);

a=20;
b=++a;
$display("b=++a:: a=%0d b=%0d",a,b);

a=10;
b=a--;
$display("b=a--:: a=%0d b=%0d",a,b);

a=20;
b=--a;
$display("b=--a:: a=%0d b=%0d",a,b);

a=10;c=10;
b=++a + ++c;
$display("b=++a + ++c:: a=%0d  c=%0d  b=%0d",a,c,b);

a=10;c=10;
b=a++ + c++;
$display("b=a++ + c++:: a=%0d  c=%0d  b=%0d",a,c,b);

end
endmodule

/*
OUTPUT
# b=a++:: a=11 b=10
# b=++a:: a=21 b=21
# b=a--:: a=9 b=10
# b=--a:: a=19 b=19
# b=++a + ++c:: a=11  c=11  b=22
# b=a++ + c++:: a=11  c=11  b=20

*/
