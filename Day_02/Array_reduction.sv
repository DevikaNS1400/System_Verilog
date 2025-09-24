// Code your design here
module array_Reduction;
  int A[4]='{3,15,1,9};
  logic [7:0]B[2][2]='{'{1,2},'{3,4}};
  int y;
  
  initial begin
    y=A.sum;
    $display("A.sum=%0d",y);
    
    y=A.sum	with(item+1);
    $display("A.sum=%0d",y);
    
    y=B.sum with (item.sum with(item));
    $display("B.sum=%0d",y);
     
    y=A.xor;
    $display("A.xor=%0h",y);     
             
    y=B.xor(item) with(item.xor);
    $display("B.xor=%0d",y);  
             
    y=A.product;
    $display("A.product=%0d",y); 
             
    y=A.and;
    $display("A.and=%0d",y);
             
    y=A.or;
    $display("A.or=%0d",y);         
  end
  endmodule

/*
OUTPUT 
A.sum=28
# A.sum=32
# B.sum=10
# A.xor=4
# B.xor=4
# A.product=405
# A.and=1
# A.or=15

*/
