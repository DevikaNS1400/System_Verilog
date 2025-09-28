module str_optr;
string s1="Hello";
string s2="World";
string s3="compare";
string s4="compare";
string s5,s6;
string s7="Apple";
string s8="Banana";
integer s1_len,s2_len,s3_len,s4_len;

initial begin
  s1_len=s1.len();
  $display("String s1: %s is of length %0d",s1,s1_len);
   
  s2_len=s2.len();
  $display("String s2: %s is of length %0d",s2,s2_len);

  s3_len=s3.len();
  $display("String s3: %s is of length %0d",s3,s3_len);
   
  s4_len=s2.len();
  $display("String s2: %s is of length %0d",s2,s2_len);

  $display("String s7 is %s",s7);
  $display("String s8 is %s",s8);

  if(s1==s2)
   $display("Strings are equal");
  else 
   $display("Strings are not equal");

 if(s3==s4)
   $display("Strings are equal");
  else 
   $display("Strings are not equal");

 if(s1>=s2)
   $display("String s1 is greater than or equal to s2");

 if(s1<=s2)
   $display("String s1 is less than or equal to s2");

 if(s7>s8)
   $display("String s7 is greater than s8");
if(s8>s7)
   $display("String s8 is greater tham s7");
   s5={s1," ",s2};
  $display("New string is : %s",s5);

   s6={4{s1[4]}};
  $display("Replication operation on s1[4]:%s",s6);
   
end
endmodule

/*
OUTPUT
String s1: Hello is of length 5
# String s2: World is of length 5
# String s3: compare is of length 7
# String s2: World is of length 5
# String s7 is Apple
# String s8 is Banana
# Strings are not equal
# Strings are equal
# String s1 is less than or equal to s2
# String s8 is greater tham s7
# New string is : Hello World
# Replication operation on s1[4]:oooo
*/
