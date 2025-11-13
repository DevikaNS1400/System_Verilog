class bidirect_cnstr;
  rand bit [3:0] a,b,c;
  constraint a1{a==b+c;}
  constraint b1{b>6;}
  constraint c1{c<8;}
endclass

module constr();
  initial begin
   bidirect_cnstr r;
    r=new();
    repeat(5)begin
    r.randomize();
      $display("a=%0d,b=%0d,c=%0d",r.a,r.b,r.c);
    end
  end
endmodule

/*

OUTPUT

# a=1,b=11,c=6
# a=11,b=10,c=1
# a=12,b=10,c=2
# a=15,b=11,c=4
# a=13,b=10,c=3

*/
