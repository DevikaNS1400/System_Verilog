// Code your design here
module unpacked_struct;
  struct {
    string name;
    bit [7:0]intr;
    logic [23:0]addr;
    
  }SURu;
  
  initial begin
    SURu.intr='hFF;
    $display("SURu=%p",SURu);
    $display("SURU Intr=%h",SURu.intr);
    SURu='{"Device1",'h00,'hFF};
    $display("SURu=%p",SURu);
  end
  
  typedef struct{
    string name;
    int addr;
    int data;
  }bus;
  
  bus b1,b2;
  initial begin
    b1= '{"Device2",'h1010,'h298f};
    b2='{"Device",'hde32,'h79fa};
    $display("b1.name=%s,b1.addr=%h  b1.data=%h",b1.name,b1.addr,b1.data);
    $display("b2.name=%s,b2.addr=%h  b2.data=%h",b2.name,b2.addr,b2.data);
       end
       endmodule

/*
OUTPUT

SURu='{name:"", intr:255, addr:x}
# SURU Intr=ff
# SURu='{name:"Device1", intr:0, addr:255}
# b1.name=Device2,b1.addr=00001010  b1.data=0000298f
# b2.name=Device,b2.addr=0000de32  b2.data=000079fa

*/
