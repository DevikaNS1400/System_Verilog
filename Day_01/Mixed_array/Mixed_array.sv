module mixed_arr;
  logic [7:0]arr[3:0];
  initial begin
    arr[3]=8'h23;
    arr[2]=8'hd4;
    arr[1]=8'hfa;
    arr[0]=8'h97;
    $display("arr[3]=%0h,%0b",arr[3],arr[3]);
    $display("arr[3][5]=%0b",arr[3][5]);
    
    $display("arr[1]=%0h,%0b",arr[1],arr[1]);
    $display("arr[1][1]=%0b",arr[1][1]);
  end
endmodule
