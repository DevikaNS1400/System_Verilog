module event_ex1();
  event e1;

  task process_A();
     $display("@%0t: Process_A: Before triggering event e1",$time);
     ->e1;
     $display("@%0t: Process_A: After triggering event e1",$time);
  endtask

  task process_B();
     $display("@%0t: Process_B: waiting for the event e1 using @",$time);
     @e1;
     $display("@0t: Process_B event e1 is triggered using @",$time);
  endtask

  task process_C();
     $display("@%0t: Process_C: waiting for the event e1 using wait(e1.triggered",$time);
     wait(e1.triggered);
     $display("@%0t: Process_C: event e1 is triggered using wait(e1.triggered)",$time);
  endtask

  initial begin
    fork
     process_A();
     process_B();
     process_C();
    join

end
endmodule 

/*

OUTPUT

# @0: waiting for the events e1,e2,e3
# @5: process_A: event e1 is triggered
# @10: process_C: event e3 is triggered
# @15: process_B: event e2 is triggered
# Events are triggered in order

*/


