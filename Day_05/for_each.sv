module for_each;
 
logic[3:0][2:0] arr='{1,2,3,4};
initial begin
 foreach(arr[i]) begin
  $display("arr[%0d]=%0d",i,arr[i]);
 end
end
endmodule

/*
OUTPUT
# arr[3]=1
# arr[2]=2
# arr[1]=3
# arr[0]=4
*/
