module array_locator;
  int q[$]='{1,3,5,7};
  int tq[$];
  int d[]='{9,1,8,3,4,4};
  int f[6]='{1,6,2,6,8,6};
  int count;
  
  initial begin
    $display("Min of q:",q.min());
    $display("Max of q:",q.max());
    tq=f.unique();
    $display("Unique of f: ",tq);
    tq=d.find with (item>3);
    $display("Item >3 in d: ",tq);
    tq=d.find_index with (item>3);
    $display("Index with item>3: ",tq);
    tq=d.find_first_index with (item==4);
    $display("First index with item as 4 in d:",tq);
    tq=f.find_last_index with (item==6);
    $display("Last index with item as 4 in f:",tq);   
  end
endmodule

/*
OUTPUT
Min of q:1
# Max of q:7
# Unique of f: 1 2 6 8
# Item >3 in d: 9 8 4 4
# Index with item>3: 0 2 4 5
# First index with item as 4 in d:4
# Last index with item as 4 in f:5

*/
