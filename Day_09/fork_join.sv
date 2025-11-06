module fork_join;
  initial begin
    $display("-----------------------");
    fork
      begin
         $display($time,"\tProcess_1 started");
         #5;
         $display($time,"\tProcess_1 finished");
      end

       begin
         $display($time,"\tProcess_2 started");
         #20;
         $display($time,"\tProcess_2 finished");
       end
     join

   $display($time,"\tOutside fork-join");
   $display("-----------------------------");
   $finish;
  end
endmodule

/*

OUTPUT

-----------------------
#                    0	Process_1 started
#                    0	Process_2 started
#                    5	Process_1 finished
#                   20	Process_2 finished
#                   20	Outside fork-join
# -----------------------------

*/
