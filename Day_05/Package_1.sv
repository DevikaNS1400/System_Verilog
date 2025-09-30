package pkg;
  class transaction;
    int data=5;

    function void display();
      $display("data=%0d",data);
    endfunction
  endclass

    function pkg_function();
      $display("Inside pkg_funct");
    endfunction
endpackage

import pkg::*;
module package_example;
   initial begin
     transaction tr=new();
tr.display();
pkg_function();
end
endmodule
