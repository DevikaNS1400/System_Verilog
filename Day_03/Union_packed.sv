module packed_union;
  logic [9:0] x;
  typedef union packed{
    logic [9:0]data;
    
    struct packed{
      bit[1:0]p1;
      byte p2;
    }pmodes;
  }myUnion;
  
  myUnion u1;
  
  initial begin
    u1.data=10'b1010001101;  
    x=u1.data;
    $display("u1.data(initially)=%b",u1.data);
    
    u1.pmodes.p1=2'b11;
    x=u1.data;
    u1.pmodes.p2=8'hfa;
    
    $display("u1.data=%b",u1.data);
    $display("u1.p.p1=%b",u1.pmodes.p1);
    $display("u1.data=%b",x);
    $display("u1.p.p2=%h",u1.pmodes.p2);
  end 
endmodule

/*
OUTPUT
u1.data(initially)=1010001101
# u1.data=1111111010
# u1.p.p1=11
# u1.data=1110001101
# u1.p.p2=fa
*/
