
module disable_fork;

initial begin
$display("-------------------------------------------");

fork
//process-1
begin
  $display($time,"\tProcess-1 of fork-1 started");
  #5;
  $display($time,"\tProcess-1 of fork-1 finished");
end

begin
  sub_process();
end
join_any

disable fork;

$display("-------------------------------------------");

$display($time,"\tAfter disable-fork");
$display("-------------------------------------------");

end

task sub_process;
$display($time,"\tSub-Process started");
#10;
$display($time,"\tSub-Process finished");
endtask
endmodule

  /*

  OUTPUT

  -------------------------------------------
#                    0	Process-1 of fork-1 started
#                    0	Sub-Process started
#                    5	Process-1 of fork-1 finished
# -------------------------------------------
#                    5	After disable-fork
# -------------------------------------------

*/
