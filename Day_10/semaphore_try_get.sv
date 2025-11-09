module semophore_ex;
 semaphore sema;

initial begin
 sema=new(4);
  fork
    display(2);//process-1
    display(3);//process-2
    display(2);//process-3
    display(1);//process-4
  join
end

 task automatic display(int key);
   sema.get(key);
     $display($time,"\tCurrent simulation Time, Got %0d keys",key);
   #30;
   sema.put(key);
 endtask
endmodule

/*
OUTPUT

# Process_A:Key received
# Process_A started
# Process_B:Key is not available
# Process_B started
# Process_A completed
# Process_B completed

*/
