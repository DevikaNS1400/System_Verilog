module mailbox_ex();
   mailbox mb=new();;

task process_A();
   int value;
   //value=4;
   string name;
   value=4;
   name="MAIL";
   mb.put(value);
   $display("Put data=%0d",value);
   mb.put(name);
   $display("Put data=%s",name);
   endtask;

task process_B();
   static int value;
   static string name;
   mb.get(value);
   $display("Retrieved data=%0d",value);
   mb.get(name);
   $display("Retrieved data=%s",name);
   endtask;
   
   initial begin
   fork
     process_A();
     process_B();
   join
  
   end
endmodule

/*

OUTPUT

# Put data=39
# Put data=36
# Put data=28
# Put data=15
# Put data=13
# Put data=29
# Put data=21
# Put data=20
# Put data=23
# Put data=38
# -----------------------------
# Retrieved data=39
# Retrieved data=36
# Retrieved data=28
# Retrieved data=15
# Retrieved data=13
# Retrieved data=29
# Retrieved data=21
# Retrieved data=20
# Retrieved data=23
# Retrieved data=38

*/



