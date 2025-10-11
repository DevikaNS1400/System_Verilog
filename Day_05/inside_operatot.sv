module for_each;
 
logic[3:0][2:0] arr='{1,2,3,4};
initial begin
 foreach(arr[i]) begin
  $display("arr[%0d]=%0d",i,arr[i]);
 end
end

  /*
  OUTPUT  
   data=3 outside {1,2,[4:7],[11:15]}
# data=2 inside {1,2,[4:7],[11:15]}
# data=10 outside {1,2,[4:7],[11:15]}
# data=13 inside {1,2,[4:7],[11:15]}
# data=8 outside {1,2,[4:7],[11:15]}

*/
