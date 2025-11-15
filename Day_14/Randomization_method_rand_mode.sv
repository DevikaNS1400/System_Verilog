class random_mode;
  rand bit [7:0] val1=101;
  rand bit [7:0] val2=6;
  
  constraint val1_c {val1>100;val1<200;}
  constraint val2_c {val2>5 ; val2<8;}
  
  function void pre_randomize();
    $display("Inside pre_randomize");
    this.rand_mode(0);
  endfunction
  
  function void post_randomize();
    $display("Inside post_randomize");
    $display("val1=%0d, val2=%0d",this.val1,this.val2);
  endfunction
endclass
 
module constraint_ex;
  random_mode item;
  
  initial begin
    item=new();
    item.randomize();
  end
endmodule

/*

OUTPUT

Inside pre_randomize
Inside post_randomize
val1=101, val2=6

*/
