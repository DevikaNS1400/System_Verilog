module mod_1d_arr;
  int arr[5];
  initial begin 
    foreach(arr[i])begin
      arr[i]=$random;
      $display("arr[%0d]=%d",i,arr[i]);
    end
  end
endmodule

/*Output
arr[0]= 303379748
arr[1]=-1064739199
arr[2]=-2071669239
arr[3]=-1309649309
arr[4]= 112818957
*/
