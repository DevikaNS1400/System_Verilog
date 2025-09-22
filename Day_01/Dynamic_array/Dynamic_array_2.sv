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
    
    dyn=new[6](dyn);
    $display("Size of dyn=%0d",dyn.size());
    foreach(dyn[i])
      $display("dyn[%0d]=%0d",i,dyn[i]);
    
  end
endmodule

/*Output
dyn[0]=4
dyn[1]=7
dyn[2]=2
dyn[3]=9
dyn[4]=10
Size of dyn=5
Size of dyn=6
dyn[0]=4
dyn[1]=7
dyn[2]=2
dyn[3]=9
dyn[4]=10
dyn[5]=0
*/
