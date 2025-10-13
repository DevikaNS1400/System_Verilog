module factorial;

logic [2:0] num,org;
logic [6:0] fact;

initial begin
num=5;
org=num;
fact=1;
do
if(num==0)
fact=1;
else begin
fact=fact*num;
num--;
end
while(num>0);
$display("Factorial of %d is %d",org,fact);
end
endmodule

/*
OUTPUT
Factorial of 5 is 120

*/
