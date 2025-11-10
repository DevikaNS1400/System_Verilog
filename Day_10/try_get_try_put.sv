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
# Successfully try_put data=39
# Successfully try_put data=36
# Successfully try_put data=28
# Failed while try_put data=15
# Number of messages in the mailbox=3
# Failed while try_put data=13
# Number of messages in the mailbox=3
# ----------------------------------------
# Successfully retrieved try_get data=39
# Successfully retrieved try_get data=36
# Successfully retrieved try_get data=28
# Failed in try_get data
# Number of messages in the mailbox=0
# Failed in try_get data
# Number of messages in the mailbox=0

*/
