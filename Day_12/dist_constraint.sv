class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;
  
  constraint value1_c {value1 dist {3:/4, [5:8]:/7};}
  constraint value2_c {value2 dist {3:=4, [5:8]:=7};}                     
  endclass 
                       
   module constraint_ex;
     seq_item item;
     
     initial begin
       item=new();
       
       repeat(5) begin
         item.randomize();
         $display("Value1(with:/)=%0d,value2 (with:=)=%0d",item.value1,item.value2);
       end
     end
   endmodule

/*

OUTPUT
# Value1(with:/)=7,value2 (with:=)=5
# Value1(with:/)=3,value2 (with:=)=8
# Value1(with:/)=7,value2 (with:=)=3
# Value1(with:/)=5,value2 (with:=)=7
# Value1(with:/)=3,value2 (with:=)=3

*/
