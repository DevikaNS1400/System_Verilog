module array_sort;
  int arr[8]='{3,5,7,9,1,4,6,8};
  int ar;
  initial begin
    
    $display("Array is:%p ",arr);
    arr.reverse();
    $display("Array after reversing:%p ",arr);
    arr.sort();
    $display("Array after sorting:%p ",arr);
    arr.rsort();
    $display("Array after reverse sorting:%p ",arr);
    arr.shuffle();
    $display("Array after shuffling:%p ",arr);
    
  end
endmodule

/*
Array is:'{3, 5, 7, 9, 1, 4, 6, 8} 
# Array after reversing:'{8, 6, 4, 1, 9, 7, 5, 3} 
# Array after sorting:'{1, 3, 4, 5, 6, 7, 8, 9} 
# Array after reverse sorting:'{9, 8, 7, 6, 5, 4, 3, 1} 
# Array after shuffling:'{8, 4, 5, 6, 7, 1, 3, 9} 

*/
