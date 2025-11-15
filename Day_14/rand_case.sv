
class rand_case;
  int cnt_arr[int];
  real i_sum;
  
  function void randcase_testing();
    repeat(10)begin
      randcase
        2:begin $display("Selected 2"); cnt_arr[2]++;end
        3:begin $display("Selected 3"); cnt_arr[3]++;end
        5:begin $display("Selected 5"); cnt_arr[5]++;end
        7:begin $display("Selected 7"); cnt_arr[7]++;end
      endcase
    end
    foreach(cnt_arr[i])begin
      i_sum+=i;
    end
    
    foreach(cnt_arr[i])begin
      $display("Probability for %0d=%0f in 1 iteration",i,i/i_sum);
      $display("cnt_arr[%0d]",i,cnt_arr[i]);
      $display("Probability for cnt_arr[%0d]=%0f",i,cnt_arr[i]/10.0);
      $display("---------------------------------");
    end
  endfunction
  
endclass
 
module constraint_ex;
  rand_case item;
  
  initial begin
    item=new();
    item.randcase_testing();
  end
endmodule

/*

OUTPUT

Selected 7
Selected 5
Selected 2
Selected 2
Selected 3
Selected 7
Selected 7
Selected 7
Selected 7
Selected 5
Probability for 2=0.117647 in 1 iteration
cnt_arr[2]          2
Probability for cnt_arr[2]=0.200000
---------------------------------
Probability for 3=0.176471 in 1 iteration
cnt_arr[3]          1
Probability for cnt_arr[3]=0.100000
---------------------------------
Probability for 5=0.294118 in 1 iteration
cnt_arr[5]          2
Probability for cnt_arr[5]=0.200000
---------------------------------
Probability for 7=0.411765 in 1 iteration
cnt_arr[7]          5
Probability for cnt_arr[7]=0.500000
---------------------------------
*/
