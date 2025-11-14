class seq_item;
  rand bit [5:0] value;
  rand bit sel;
  constraint value_c {value==get_values(sel);}

  function bit [5:0]get_values(bit sel);
    return (sel? 'h10: 'h20);
  endfunction
endclass

module constraint_ex;
  seq_item item;
  
  initial begin
    item=new();
    
    repeat(3)begin
      item.randomize();
      $display("Constraint value =%0h",item.value);
    end
    repeat(3)begin
      $display("On function call: value=%0h",item.get_values(item.sel));
    end
  end
endmodule

/*

OUTPUT

Constraint value =10
Constraint value =20
Constraint value =10
On function call: value=10
On function call: value=10
On function call: value=10

*/
