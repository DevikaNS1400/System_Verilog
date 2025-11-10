module mail_box1();
   mailbox #(string) mb=new(3);
   task process_A();
      string name;
      name="Alex";
      mb.put(name);
      $display("Put data =%s",name);
      name="Robin";
      mb.put(name);
      $display("Put data =%s",name);
   endtask

  task process_B();
      string name;
      mb.get(name);
      $display("Retrieved data =%s",name);
      mb.get(name);
      $display("Retrieved  data =%s",name);
   endtask

   initial begin
      fork
        process_A();
        process_B();
      join
   end
endmodule

/*

OUTPUT

# Put data =Alex
# Put data =Robin
# Retrieved data =Alex
# Retrieved  data =Robin

*/
