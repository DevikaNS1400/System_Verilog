`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 14:40:30
// Design Name: 
// Module Name: Queue_array
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Queue_array();
int q[$]='{2,43,6,32,5,77,34};
int x;
initial begin
x=q.size();
$display("Size of Queue is:%0d",x);
$display("Queue");
$display(q);

q.insert(3,4);
x=q.size();
$display("Size of Queue after insertion is:%0d",x);
$display("Queue");
$display(q);

q.push_back(78);
q.pop_front();
x=q.size();
$display("Size of Queue after push back and pop front is:%0d",x);
$display("Queue");
$display(q);

q.push_front(88);
q.pop_back();
x=q.size();
$display("Size of Queue after push front and pop back is:%0d",x);
$display("Queue");
$display(q);

q.delete(5);
x=q.size();
$display("Size of Queue after delete is:%0d",x);
$display("Queue");
$display(q);
end
endmodule

/*
OUTPUT
Size of Queue is:7
Queue
'{2,43,6,32,5,77,34}
Size of Queue after insertion is:8
Queue
'{2,43,6,4,32,5,77,34}
Size of Queue after push back and pop front is:8
Queue
'{43,6,4,32,5,77,34,78}
Size of Queue after push front and pop back is:8
Queue
'{88,43,6,4,32,5,77,34}
Size of Queue after delete is:7
Queue
'{88,43,6,4,32,77,34}
*/
