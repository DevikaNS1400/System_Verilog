class soft_constr;
  rand bit [7:0]val;
  
  constraint val_c {soft val inside {5,[10:15]};}
endclass

module constr_ex;
  soft_constr item;
  
  initial begin
    item=new();
    
    repeat(5)begin
      item.randomize();
      $display("Before inline constraint: val=%0d",item.val);
      
      item.randomize with {val inside {[20:30]};};
      $display("After inline constraint: val=%0d",item.val);
    end
  end
 endmodule

/*

OUTPUT

Before inline constraint: val=11
After inline constraint: val=23
Before inline constraint: val=12
After inline constraint: val=21
Before inline constraint: val=11
After inline constraint: val=23
Before inline constraint: val=10
After inline constraint: val=22
Before inline constraint: val=12
After inline constraint: val=27

*/
