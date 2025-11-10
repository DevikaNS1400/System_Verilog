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

# Put data=4
# Put data=MAIL
# Retrieved data=4
# Retrieved data=MAIL

*/



