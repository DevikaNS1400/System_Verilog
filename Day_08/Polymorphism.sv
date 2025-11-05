class base_class;
  virtual function void display();
    $display("Inside base class");
  endfunction
endclass

class ch1 extends base_class;
   function void display();
     $display("Inside ch1 class");
   endfunction
endclass

class ch2 extends base_class;
   function void display();
     $display("Inside ch2 class");
   endfunction
endclass

module poly_mode;
initial begin 
ch1 c1=new();
ch2 c2=new();
base_class b[3];

b[0]=c1;
b[1]=c2;
b[2]=new();
  
b[0].display();
b[1].display();
b[2].display();
end
endmodule


/*

OUTPUT

Inside ch1 class
Inside ch2 class
Inside base class
*/
