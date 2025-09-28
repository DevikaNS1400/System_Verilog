module str_methods;
string s1="hello world";
string s2="123_FF_56";
string s3,s4;
string s5="COFEE";
integer x,y;
byte z;
initial begin
$display("String1 is %s ",s1);
$display("String2 is %s ",s2);

x=s1.len();
$display("Size of s1:%0d",x);

s2.putc(3,"F");
$display("Modified string s2 is %s",s2);

z=s1.getc(3);
$display("3rd character of string 'hello world' is :%s",z);

s3=s1.toupper();
$display("String1 after converting to upper case is %s",s3);

s4=s5.tolower();
$display("String1 after converting to upper case is %s",s4);

y=s2.atoi();
$display("String2 after atoi is %0d",y);

s2.itoa(y);
$display("itoa(y)=%s",s2);
  
end
endmodule

/*
OUTPUT

String1 is hello world 
# String2 is 123_FF_56 
# Size of s1:11
# Modified string s2 is 123FFF_56
# 3rd character of string 'hello world' is :l
# String1 after converting to upper case is HELLO WORLD
# String1 after converting to upper case is cofee
# String2 after atoi is 123
# itoa(y)=123

*/

