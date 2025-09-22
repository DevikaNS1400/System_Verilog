module dyn_arr;
  int dyn[];
  initial begin
    dyn=new[5];
    dyn[0]=4;
    dyn[1]=7;
    dyn[2]=2;
    dyn[3]=9;
    dyn[4]=10;
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
  end
endmodule
