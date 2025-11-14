class solve_before;
  rand bit [7:0] val;
  rand bit en;
  
  constraint en_c { solve en before val;
                   if(en==1) {val inside{[0:100]};}
                  }
endclass
                     
                     
module constraint_ex;
  solve_before item;
  
  initial begin
    item=new();
    
    repeat(5)begin
      item.randomize();
      $display("en=%0d, val=%0d",item.en,item.val);
    end
  end
endmodule
                   
/*

OUTPUT

en=1, val=11
en=0, val=115
en=1, val=32
en=0, val=209
en=0, val=18

*/


                   
