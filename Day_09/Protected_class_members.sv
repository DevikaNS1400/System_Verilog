class parent_class;
 protected bit [31:0] tmp_addr;
   function new (bit [31:0] r_addr);
     tmp_addr=r_addr+10;
   endfunction
endclass

class child_class extends parent_class;
  function new(bit[31:0] r_addr);
    super.new(r_addr);
  endfunction

  function void incr_addr();
    tmp_addr++;
  endfunction

   function display();
     $display("Addr=%0d",tmp_addr);
   endfunction
endclass

module encapsulation;
initial begin
child_class c=new(10);
c.incr_addr();
c.display();
end
endmodule

/*

OUTPUT

Addr=21

*/
