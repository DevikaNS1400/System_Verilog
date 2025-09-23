// Code your design here
module SU;
  
  struct packed{
    bit [7:0] intr;
    logic [23:0]addr;}SUR;
  
  initial begin
    SUR.intr='hFF;
    $display("SUR=%h",SUR);
    $display("SUR_Intr=%h",SUR.intr);
    
    //Assign by name
    SUR='{intr:'h01,addr:'h439105};
    $display("SUR=%h",SUR);
    
    //Assign by position
    SUR='{'h00,'hff_45_98};
    $display("SUR=%h",SUR);
    
    //Assign default
    SUR='{default:'h1289fa};
    $display("SUR=%h",SUR);
    
    //Assign default
    SUR='{default:'h78};
    $display("SUR=%h",SUR);
    
    SUR=0;
    SUR=SUR+'h12;
    $display("SUR=%h",SUR);
  end
endmodule

/*
OUTPUT
SUR=ffxxxxxx
# SUR_Intr=ff
# SUR=01439105
# SUR=00ff4598
# SUR=fa1289fa
# SUR=78000078
# SUR=00000012
*/
