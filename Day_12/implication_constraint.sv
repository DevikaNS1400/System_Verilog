class seq_item;
  rand bit [5:0] value;
  rand enum {LOW,HIGH}scale;
  
  constraint scale_c {(scale==LOW)->value<50;}
endclass

module constraint_ex;
  seq_item item;
  
  initial begin
    item=new();
    
    repeat(5) begin
      item.randomize();
      $display("Scale=%s,value=%0d",item.scale.name(),item.value);
    end
  end
endmodule

/*

OUTPUT

Scale=HIGH,value=50
# Scale=LOW,value=14
# Scale=HIGH,value=26
# Scale=LOW,value=17
# Scale=HIGH,value=60

*/
