class if_else_cnsrt;
  rand bit [7:0] value;
  rand enum {LOW,MID,HIGH}scale;
  
  constraint scale_c{ if(scale==LOW)value<30;
                     else if (scale==MID)             {value>=30;value<=70;}
 else value>70;}
endclass

module constraint_ex;
  if_else_cnsrt item;
  
  initial begin
    item=new();
    repeat(10)begin
    item.randomize();
    $display("Scale=%s, value=%0d",item.scale.name(),item.value);
    end
  end
endmodule

/*

OUTPUT

# Scale=HIGH, value=239
# Scale=HIGH, value=158
# Scale=HIGH, value=177
# Scale=LOW, value=22
# Scale=HIGH, value=152
# Scale=MID, value=45
# Scale=HIGH, value=113
# Scale=MID, value=34
# Scale=HIGH, value=243
# Scale=LOW, value=25

*/
