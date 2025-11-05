class parent_class;
   bit[31:0]addr;
function display();
    $display("Address is %0d",addr);
endfunction
endclass

class child extends parent_class;
 bit [31:0]data;
function display();
  $display("Data is %0d",data);
endfunction
endclass

module over_ride;
initial begin
child c=new();
c.addr=31;
c.data=38;
c.display();
end
endmodule

/*

OUTPUT

Data is 38

*/
