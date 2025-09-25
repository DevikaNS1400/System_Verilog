module union_unpacked;
  logic [31:0]x;
  
  typedef union{
    int a;
    byte b;
    bit[15:0]c;
  }data;
  
  data d1;
  
  initial begin
    d1.a=32'hffff_ffff;
    x=d1.b;
    $display("x=%h",x);
    
    d1.b=8'h01;
    x=d1.a;
    $display("x=%h",x);
    
    d1.c=16'h1010;
    x=d1.a;
    $display("x=%h",x);
  end
endmodule

/*
OUTPUT
x=ffffffff
x=ffffff01
x=ffff1010
*/
