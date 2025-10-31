class parent_class;
bit [31:0]data;
function disp_p();
$display("Value of data=%0d",data);
endfunction
endclass

class child_c extends parent_class;
int id;
function void disp_c();
$display("Value of id=%0d",id);
endfunction
endclass

module classs_m();
initial begin
child_c ctr;
ctr=new();
ctr.data=79;
ctr.id=34;
ctr.disp_c();
ctr.disp_p();
end
endmodule

/*
OUTPUT
Base value of the data=3
# Child: Value of data=5
*/
