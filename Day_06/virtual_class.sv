virtual class parent;
  
   bit [31:0] addr;
endclass

class child extends parent;
  function void display;
    $display("Value of addr is %0d",addr);
  endfunction
endclass

module virtual_class;
initial begin
  child c;
  c=new();
  c.addr=10;
  c.display();
end
endmodule

/*
OUTPUT

# Value of addr is 10

*/
