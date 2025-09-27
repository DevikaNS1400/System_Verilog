module typedef_code;
typedef logic[7:0]byte1;
typedef integer unsigned intg;
initial begin
byte1 data;
intg i1;
data=8'hfb;
i1=32'hface_cafe;
$display("Data is %h",data);
$display("Integer is %h",i1);
end
endmodule

/*
OUTPUT
Data is fb
# Integer is facecafe

*/
