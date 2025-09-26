// Code your design here
module tagged_union;
logic [31:0]x;
  typedef union tagged{
	  int a;
	  byte b;
	  bit [15:0]c;
	  }data;

	  data d1;

	  initial begin
		  d1=tagged a 32'hffff_ffff;
        x=d1.a;
         $display("x=%h (read from a)",x);
        
		  d1=tagged b 8'h10;

		  x=d1.b;
          
        $display("x=%h (read from b)",x);
        
        x=d1.a;
          
        $display("x=%h (read from a)",x);
          end
	  endmodule

/*
OUTPUT

x=ffffffff (read from a)
#x=00000010 (read from b)
# ** Error (suppressible): (vsim-8011) Union is tagged 'b', but is referenced as 'a'.
#    Time: 0 ns  Iteration: 0  Process: /tagged_union/#INITIAL#12 File: design.sv Line: 23
# x=ffffff10 (read from a)

*/
