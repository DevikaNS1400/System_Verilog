module event_ex();
 event e1;

task process_A();
  $display("%0t:Process_A: Before triggering event e1 using ->>",$time);
  ->>e1;
  $display("%0t:Process_A:After triggering event e1 using ->>",$time);
endtask

task process_B();
  $display("%0t:Process_B: Waiting for the event e1 ",$time);
  @(e1.triggered);
  $display("%0t:Process_B: event e1 is triggered ",$time);
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

# 0:Process_A: Before triggering event e1 using ->>
# 0:Process_A:After triggering event e1 using ->>
# 0:Process_B: Waiting for the event e1 
# 0:Process_B: event e1 is triggered 

*/
