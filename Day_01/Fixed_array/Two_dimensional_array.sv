
module pack;
  bit [3:0][7:0] data_in;
  
  initial begin
    data_in=32'h3e4a256d;
    $display("data_in=%0h",data_in);
    
    for(int i=0;i<$size(data_in);i=i+1)begin
      $display("data_in[%0d]=%0h",i,data_in[i]);
      end
  end
endmodule
