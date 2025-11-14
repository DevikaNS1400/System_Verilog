class parent;
  rand bit [5:0] value;
  constraint const1 {value inside {[0:10]};}
endclass

class child extends parent;
  constraint const1 {value inside{[10:30]};}
endclass

module inherit;
  parent p;
  child c;
  
 initial begin
    
     p=new();
     c=new();
    
    repeat(3) begin
    p.randomize();
    $display("Value of parent variable is %0d",p.value);
  end
  
  repeat(3) begin
    c.randomize();
    $display("Value of child variable is %0d",c.value);
  end
 end
endmodule

/*

OUTPUT

Value of parent variable is 2
Value of parent variable is 2
Value of parent variable is 6
Value of child variable is 11
Value of child variable is 30
Value of child variable is 14

*/
