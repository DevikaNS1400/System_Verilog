class packet;

bit [31:0] addr;
bit [31:0] data;
bit        write;
string pkt_type;

function new(bit [31:0] addr,data,bit write,string pkt_type);
  this.addr=addr;
  this.data=data;
  this.write=write;
  this.pkt_type=pkt_type;
endfunction

function void display();
   $display("------------------------------------");
   $dispay("\t addr=%0h",addr);
   $display("\tdata=%0h",data);
   $display("\twrite=%0h",write);
   $display("\tpkt_type=%0h",pkt_type);
   $display("-------------------------------------");
endfunction

endclass

module this_mod;
packet pkt;

initial begin
  pkt=new(32'h10,32'hFF,1,"Good_pkt");
  pkt.display();
end
endmodule

/*
OUTPUT
Packet id is 1
# 	1 packets created
# 	Packet id is 2
# 	2 packets created
# 	Packet id is 3
# 	3 packets created

*/
