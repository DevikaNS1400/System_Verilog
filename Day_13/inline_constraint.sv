class inline_constr;
  rand bit [7:0] val1,val2;
  
  constraint val1_c {val1>100;val1<200;}
  constraint val2_c {val2>5;val2<80;}

endclass

module constraint_ex;
 inline_constr item1;
  
   initial begin
     item1=new();
     
     repeat(5)begin
       item1.randomize();
       $display("Before inline constraint:val1=%0d,val2=%0d",item1.val1,item1.val2);
       
       item1.randomize with {val1>150;val1<160;};
       item1.randomize with {val2 inside {[10:15]};};
       $display("After inline constraint:val1=%0d,val2=%0d",item1.val1,item1.val2);
     end
   end
endmodule

/*

OUTPUT

Before inline constraint:val1=121,val2=75
After inline constraint:val1=161,val2=12
Before inline constraint:val1=176,val2=42
After inline constraint:val1=113,val2=13
Before inline constraint:val1=194,val2=76
After inline constraint:val1=161,val2=13
Before inline constraint:val1=128,val2=42
After inline constraint:val1=104,val2=14
Before inline constraint:val1=114,val2=79
After inline constraint:val1=179,val2=15

*/
