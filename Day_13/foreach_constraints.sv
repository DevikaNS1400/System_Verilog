typedef enum {LOW,MID1,MID2,HIGH}scale;

class seq_item;
  rand bit[7:0] value_a[scale];
  rand bit[3:0] array[];
  constraint arr_size_c {value_a.size()==4;array.size() inside{[2:5]};}
  
  constraint array_c{foreach(array[i]){array[i]>i*i;}}
                             constraint value_a_c{
                               foreach(value_a[i]){
                                 value_a[i]<100;
                                 (i==LOW)->value_a[i]<30;
                                 (i==HIGH)->value_a[i]>70;
                                 (i==MID1)->value_a[i] inside{[30:50]};
                                 (i==MID2)->value_a[i] inside{[51:70]};   
                               }}
endclass
                                       
module constraint_ex;
 seq_item item;
  initial begin
    item=new();
     repeat(5)begin
       item.randomize();
       
       $display("-----------------------------------------------");
        foreach(item.value_a[i]) $display("value[%s]=%0d",i.name(),item.value_a[i]);
       
       foreach(item.array[i]) $display("array[%0d]=%0d",i,item.array[i]);
       $display("-----------------------------------------------");
     end
  end
endmodule

/*

OUTPUT
-----------------------------------------------
value[LOW]=15
value[MID1]=37
value[MID2]=54
value[HIGH]=86
array[0]=14
array[1]=10
-----------------------------------------------
-----------------------------------------------
value[LOW]=23
value[MID1]=39
value[MID2]=54
value[HIGH]=96
array[0]=15
array[1]=3
-----------------------------------------------
-----------------------------------------------
value[LOW]=17
value[MID1]=47
value[MID2]=59
value[HIGH]=73
array[0]=5
array[1]=15
array[2]=15
array[3]=13
-----------------------------------------------
-----------------------------------------------
value[LOW]=11
value[MID1]=38
value[MID2]=51
value[HIGH]=76
array[0]=4
array[1]=11
array[2]=11
array[3]=15
-----------------------------------------------
-----------------------------------------------
value[LOW]=22
value[MID1]=43
value[MID2]=58
value[HIGH]=79
array[0]=11
array[1]=2
array[2]=6
-----------------------------------------------

*/

  
  
