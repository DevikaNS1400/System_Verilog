
module wait_fork;

initial begin
$display("---------------------------------");

fork
//process_1
  begin
     $display($time,"\tProcess-1 started");
     #5;
     $display($time,"\tProcess-1 finished");
  end

//process_2
  begin
     $display($time,"\tProcess-2 started");
     #20;
     $display($time,"\tProcess-2 finished");
  end

  join_any

wait fork;
$display("------------------------------------");
$finish;
end
endmodule

  /*

  OUTPUT

   ---------------------------------
#                    0	Process-1 started
#                    0	Process-2 started
#                    5	Process-1 finished
#                   20	Process-2 finished
# ------------------------------------

*/
