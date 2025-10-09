module conditional_oprt;

logic[7:0] data1;
logic enb;

initial begin

enb=1'b1;
data1=enb?'hff:'z;
$display("enb=%0d data1=%h",enb,data1);

enb=1'b0;
data1=enb?'hff:'z;
$display("enb=%0d data1=%h",enb,data1);

enb=1'bx;
data1=enb?'hff:'hff;
$display("enb=%0d data1=%h",enb,data1);

enb=1'bx;
data1=enb?'hff:'h00;
$display("enb=%0d data1=%h",enb,data1);

end
endmodule

/*
OUTPUT 
# enb=1 data1=ff
# enb=0 data1=zz
# enb=x data1=ff
# enb=x data1=xx
*/





