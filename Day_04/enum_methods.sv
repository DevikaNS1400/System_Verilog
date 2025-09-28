module enum_method;
typedef enum{red,green,blue,yellow}Colours;
Colours c;

initial begin

  $display("Number of members in Colours is %0d ",c.num);
  c=c.first();
  $display("Fisrt item in Colours is %0d : %s",c,c.name);
  c=c.next(2);
  $display("Next(2) is %0d : %s",c,c.name);
  c=c.prev();
  $display("Previous is %0d : %s ",c,c.name);
  c=c.last();
  $display("Last of Colours is %0d : %s",c,c.name);
  
end
endmodule

/*
OUTPUT
Number of members in Colours is 4 
# Fisrt item in Colours is 0 : red
# Next(2) is 2 : blue
# Previous is 1 : green 
# Last of Colours is 3 : yellow
*/
