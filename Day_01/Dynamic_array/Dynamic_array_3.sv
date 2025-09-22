module dyn_array;
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
    
    $display("Size of dyn=%0d",dyn.size());
    
    dyn.reverse();
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
    dyn.sort();
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
    dyn.rsort();
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
    dyn.shuffle();
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
    dyn.min();
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
    dyn.delete();
    $display("Size of dyn=%0d",dyn.size());       
    
  end
endmodule
