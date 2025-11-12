class random_1;
  rand bit [2:0] addr1;
  randc bit [2:0] addr2;
endclass

module rand_methods;
  initial begin
    random_1 r1;
    r1=new();
    repeat(10)begin
     r1.randomize();
    $display("\t addr1=%0d  addr2=%0d",r1.addr1,r1.addr2);
    end
   end
 endmodule

/*

# 	 addr1=5  addr2=3
# 	 addr1=1  addr2=5
# 	 addr1=3  addr2=6
# 	 addr1=2  addr2=0
# 	 addr1=0  addr2=2
# 	 addr1=2  addr2=1
# 	 addr1=2  addr2=4
# 	 addr1=2  addr2=7
# 	 addr1=0  addr2=6
# 	 addr1=5  addr2=5

*/
