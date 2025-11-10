module mail_box_3();
  mailbox mb=new(3);

  task process_A();
    int value;
      repeat(3) begin
        value=$urandom_range(1,50);
        mb.put( value);
        $display("Put data=%0d",value);
      end
    $display("---------------------------");
  endtask

  task process_B();
    int value;
     mb.peek(value);
     $display("Peek data=%0d",value);
     mb.peek(value);
     $display("Peek data=%0d",value);
      if(mb.try_peek(value))
        $display("Successful try_peek data=%0d",value);
      else begin
        $display("Failed in try_peek");
      end
     $display("-------------------------");
      repeat(3)begin
         mb.get(value);
         $display("Get data=%0d",value);
       end
     
     $display("--------------------------");
     if(mb.try_peek(value))
       $display("Successful try peek data=%0d",value);
     else begin
       $display("Failed in try_peek");
     end
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

# Put data=39
# Put data=36
# Put data=28
# ---------------------------
# Peek data=39
# Peek data=39
# Successful try_peek data=39
# -------------------------
# Get data=39
# Get data=36
# Get data=28
# --------------------------
# Failed in try_peek

*/
