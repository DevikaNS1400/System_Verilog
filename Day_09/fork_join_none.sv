module fork_join_none;
  initial begin
    $display("---------------------------------");
    
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
     join_none

    $display($time,"\tOutside fork-join_none");
    $display("---------------------------------");

   end
endmodule

/*

OUTSIDE

---------------------------------
#                    0	Outside fork-join_none
# ---------------------------------
#                    0	Process-1 started
#                    0	Process-2 started
#                    5	Process-1 finished
#                   20	Process-2 finished

*/
