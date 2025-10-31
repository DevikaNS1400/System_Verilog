class transaction;
  bit [31:0] data;
endclass

module class_ex;
  transaction tr1,tr2;
  initial begin
    tr1=new();
    tr1.data=5;
    tr2=tr1;
    $display("tr1.data=%0h",tr1.data);
    $display("tr2.data=%0h",tr2.data);
    tr2.data=10;
    $display("tr1.data=%0h",tr1.data);
    $display("tr2.data=%0h",tr2.data);
  end
  endmodule


/*
OUTPUT
run -all
# tr1.data=5
# tr2.data=5
# tr1.data=a
# tr2.data=a
*/
