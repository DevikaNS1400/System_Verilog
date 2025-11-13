typedef enum {A,B,C,D}scale_e;

class seq_item;
  
  rand bit [3:0] array_s[5];
  rand bit [3:0] array_d[];
  rand bit [7:0] array_a[scale_e];
  
  rand bit [2:0] val1,val2,val3,val4;
  
  scale_e scale;
  
  constraint array_s_c {unique{array_s};}
  
  constraint array_d_c {unique{array_d};
                         array_d.size==5;
                        }
  
  constraint value_a_c { unique {array_a};
                        array_a.size==scale.num();
                        }
  constraint val_c {unique { val1,val2,val3,val4};}
endclass
  

module constraint_ex;
  seq_item item;
    initial begin
      item=new();
      
      repeat(3) begin
        item.randomize();
        $display("---------------------------------------");
        $display("val1=%0d, val2=%0d, val3=%0d, val4=%0d",item.val1,item.val2,item.val3,item.val4);
        $display("---------------------------------------");
        
        foreach(item.array_s[i])
          $display("array_s[%0d]=%0d",i,item.array_s[i]);
        $display("---------------------------------------");
        
        foreach(item.array_d[i])
          $display("array_d[%0d]=%0d",i,item.array_d[i]);
        $display("---------------------------------------");
        
        foreach(item.array_a[i])
          $display("array_a[%s]=%0d",i.name(),item.array_a[i]);
        $display("---------------------------------------");
        
      end
    end
endmodule

/*

OUTPUT

---------------------------------------
val1=0, val2=7, val3=2, val4=6
---------------------------------------
array_s[0]=5
array_s[1]=8
array_s[2]=12
array_s[3]=3
array_s[4]=6
---------------------------------------
array_d[0]=8
array_d[1]=11
array_d[2]=9
array_d[3]=10
array_d[4]=2
---------------------------------------
array_a[A]=84
array_a[B]=96
array_a[C]=27
array_a[D]=85
---------------------------------------
---------------------------------------
val1=7, val2=5, val3=6, val4=2
---------------------------------------
array_s[0]=15
array_s[1]=1
array_s[2]=2
array_s[3]=10
array_s[4]=14
---------------------------------------
array_d[0]=4
array_d[1]=14
array_d[2]=7
array_d[3]=5
array_d[4]=6
---------------------------------------
array_a[A]=113
array_a[B]=143
array_a[C]=126
array_a[D]=117
---------------------------------------
---------------------------------------
val1=2, val2=6, val3=7, val4=4
---------------------------------------
array_s[0]=6
array_s[1]=1
array_s[2]=12
array_s[3]=10
array_s[4]=9
---------------------------------------
array_d[0]=1
array_d[1]=4
array_d[2]=10
array_d[3]=2
array_d[4]=9
---------------------------------------
array_a[A]=158
array_a[B]=87
array_a[C]=210
array_a[D]=0
---------------------------------------

*/
