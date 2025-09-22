module three_dim;
  logic arr[3][2][2];
  
  initial begin
    foreach(arr[i,j,k])begin
      arr[i][j][k]=$random;
    end
    
    foreach(arr[i,j,k])begin
      $display("arr[%0d][%0d][%0d]=%b",i,j,k,arr[i][j][k]);
  end
  end
endmodule

/*Output
arr[0][0][0]=0
arr[0][0][1]=1
arr[0][1][0]=1
arr[0][1][1]=1
arr[1][0][0]=1
arr[1][0][1]=1
arr[1][1][0]=1
arr[1][1][1]=0
arr[2][0][0]=1
arr[2][0][1]=1
arr[2][1][0]=0
arr[2][1][1]=1
*/
