
module fork_join_any;

initial begin
   $display("-----------------------------");
   
    fork
      begin
        
         $display($time,"\tProcess-1 started");
         #5;
         $display($time,"\tProcess-1 finished");
      end

      begin
         $display($time,"\tProcess-2 started");
         #20;
         $display($time,"\tProcess-2 finished");
      end
     join_any

        $display($time,"\tOutside fork join");
        $display("--------------------------");
 end
endmodule

/*

OUTPUT

-----------------------------
#                    0	Process-1 started
#                    0	Process-2 started
#                    5	Process-1 finished
#                    5	Outside fork join
# --------------------------
#                   20	Process-2 finished

*/
