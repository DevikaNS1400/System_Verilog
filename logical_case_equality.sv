
module case_logic;
  
logic [15:0] A1,A2;
 
initial begin
A1='hff; A2='hf0;
$display("A1='hff  A2='hf0 : A1== A2= boolean %0d", A1==A2);
$display("A1='hff  A2='hf0 : A1!= A2= boolean %0d", A1!=A2);
$display("A1='hff  A2='hf0 : A1=== A2= boolean %0d", A1===A2);
$display("A1='hff  A2='hf0 : A1!== A2= boolean %0d", A1!==A2);

$display("---------------------------------------------------");

A1='hxf;A2='hxf;
$display("A1='hxf  A2='hxf : A1== A2= boolean %0d", A1==A2);
$display("A1='hxf  A2='hxf : A1!= A2= boolean %0d", A1!=A2);
$display("A1='hxf  A2='hxf : A1=== A2= boolean %0d", A1===A2);
$display("A1='hxf  A2='hxf : A1!== A2= boolean %0d", A1!==A2);

end
endmodule

/*
OUTPUT

A1='hff  A2='hf0 : A1== A2= boolean 0
# A1='hff  A2='hf0 : A1!= A2= boolean 1
# A1='hff  A2='hf0 : A1=== A2= boolean 0
# A1='hff  A2='hf0 : A1!== A2= boolean 1
# ---------------------------------------------------
# A1='hxf  A2='hxf : A1== A2= boolean x
# A1='hxf  A2='hxf : A1!= A2= boolean x
# A1='hxf  A2='hxf : A1=== A2= boolean 1
# A1='hxf  A2='hxf : A1!== A2= boolean 0

*/
