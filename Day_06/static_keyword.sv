// Code your testbench here
// or browse Examples

class address_range;
bit [31:0] start_address;
bit [31:0]end_address;

function new();
  start_address=10;
  end_address=50;
endfunction

function address_range copy;
copy=new();
copy.start_address=this.start_address;
  copy.end_address=this.end_address;
return copy;
endfunction
endclass

class packet;
bit [31:0]addr;
bit [31:0]data;
address_range ar;

function new();
addr=32'h10;
data=32'hFF;
ar=new();
endfunction

function void display();
$display("-----------------------------------");
$display("\taddr=%0h",addr);
$display("\tdata=%0h",data);
$display("\t start_address=%0d",ar.start_address);
$display("\tend_address=%0d",ar.end_address);
$display("------------------------------------");
endfunction

function packet copy();
copy=new();
copy.addr=this.addr;
copy.data=this.data;
copy.ar=ar.copy;
return copy;
endfunction
endclass

module class_assign;
packet pkt_1;
packet pkt_2;
initial begin
   pkt_1=new();
  $display("\t*******calling pkt_1 display*******");
pkt_1.display();

pkt_2=new();
$display("\t*******calling pkt_2 display*******");
pkt_2.display();
pkt_2=pkt_1.copy();
pkt_2.addr=32'h68;
pkt_2.ar.start_address=60;
pkt_2.ar.end_address=80;
$display("Calling pkt_1 display after changing pkt_2 properties");
pkt_1.display();
$display("\tCalling pkt_2 display after changing pkt_2 properties");
pkt_2.display();
end
endmodule

/*
OUTPUT

Packet id is 0
# 	3 packets created

*/
