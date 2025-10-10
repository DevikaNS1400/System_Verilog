module shift_operator_signed();

reg [7:0] r_shift1=8'b11010000;
reg signed [7:0] r_shift2=8'b11010000;

initial begin

$display("%b",r_shift1<<2);
$display("%b",$signed(r_shift1)<<<2);
$display("%b",r_shift2<<<2);
$display("%b",$signed(r_shift1)>>>2);
$display("%b",r_shift1>>>2);
$display("%b",r_shift2>>>2);
end
endmodule

/*

OUTPUT
01000000
# 01000000
# 01000000
# 11110100
# 00110100
# 11110100

*/
