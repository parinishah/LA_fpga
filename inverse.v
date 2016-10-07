`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:03 10/07/2016 
// Design Name: 
// Module Name:    inv 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module inverse(clk, reset, data_out, address, A11,A12,A13,A14,A15,A21,A22,A23,A24,A25,A31,A32,A33,A34,A35,A41,A42,A43,A44,A45,A51,A52,A53,A54,A55,A11d,A12d,A13d,A14d,A15d,A21d,A22d,A23d,A24d,A25d,A31d,A32d,A33d,A34d,A35d,A41d,A42d,A43d,A44d,A45d,A51d,A52d,A53d,A54d,A55d);

output [31:0] A11d,A12d,A13d,A14d,A15d;
output [31:0] A21d,A22d,A23d,A24d,A25d;
output [31:0] A31d,A32d,A33d,A34d,A35d;
output [31:0] A41d,A42d,A43d,A44d,A45d;
output [31:0] A51d,A52d,A53d,A54d,A55d;

output reg [31:0] A11,A12,A13,A14,A15;
output reg [31:0] A21,A22,A23,A24,A25;
output reg [31:0] A31,A32,A33,A34,A35;
output reg [31:0] A41,A42,A43,A44,A45;
output reg [31:0] A51,A52,A53,A54,A55;

reg [31:0] B[0:25];
reg [31:0] inv[0:24];

output [31:0] data_out;

input reset;
input [4:0] address;

reg [31:0] data_in11,data_in12,data_in13,data_in14,data_in15;
reg [31:0] data_in21,data_in22,data_in23,data_in24,data_in25;
reg [31:0] data_in31,data_in32,data_in33,data_in34,data_in35;
reg [31:0] data_in41,data_in42,data_in43,data_in44,data_in45;
reg [31:0] data_in51,data_in52,data_in53,data_in54,data_in55;
input clk;


reg [31:0] A11t = 32'd1;
reg [31:0] A12t = 32'd0;
reg [31:0] A13t = 32'd0;
reg [31:0] A14t = 32'd0;
reg [31:0] A15t = 32'd0;

reg [31:0] A21t = 32'd0;
reg [31:0] A22t = 32'd1;
reg [31:0] A23t = 32'd0;
reg [31:0] A24t = 32'd0;
reg [31:0] A25t = 32'd0;

reg [31:0] A31t = 32'd0;
reg [31:0] A32t = 32'd0;
reg [31:0] A33t = 32'd1;
reg [31:0] A34t = 32'd0;
reg [31:0] A35t = 32'd0;

reg [31:0] A41t = 32'd0;
reg [31:0] A42t = 32'd0;
reg [31:0] A43t = 32'd0;
reg [31:0] A44t = 32'd1;
reg [31:0] A45t = 32'd0;

reg [31:0] A51t = 32'd0;
reg [31:0] A52t = 32'd0;
reg [31:0] A53t = 32'd0;
reg [31:0] A54t = 32'd0;
reg [31:0] A55t = 32'd1;

reg [31:0] answer_temp11,answer_temp12,answer_temp13,answer_temp14,answer_temp15,answer_temp21,answer_temp22,answer_temp23,answer_temp24,answer_temp25,answer_temp31,answer_temp32,answer_temp33,answer_temp34,answer_temp35,answer_temp41,answer_temp42,answer_temp43,answer_temp44,answer_temp45,answer_temp51,answer_temp52,answer_temp53t,answer_temp54t,answer_temp55t;

reg [31:0] x;
reg [31:0] y;

Matrix_inverse M1 (
  .clka(clk), // input clka
  .addra(address), // input [4 : 0] addra
  .douta(data_out) // output [31 : 0] douta
);


always@(posedge clk)
begin

if(reset==1'b0)
begin
	B[address] <= data_out;
end

else
begin

data_in11 = B[1];
data_in12 = B[2];
data_in13 = B[3];
data_in14 = B[4];
data_in15 = B[5];

data_in21 = B[6];
data_in22 = B[7];
data_in23 = B[8];
data_in24 = B[9];
data_in25 = B[10];

data_in31 = B[11];
data_in32= B[12];
data_in33= B[13];
data_in34 = B[14];
data_in35 = B[15];

data_in41 = B[16];
data_in42 =  B[17];
data_in43 = B[18];
data_in44 = B[19];
data_in45 = B[20];

data_in51 = B[21];
data_in52 = B[22];
data_in53 = B[23];
data_in54 = B[24];
data_in55 = B[25];

answer_temp11 = (data_in11 > 0 ? data_in11 : (~data_in11+32'd1));
answer_temp12 = (data_in12 > 0 ? data_in12 : (~data_in12+32'd1));
answer_temp13 = (data_in13 > 0 ? data_in13 : (~data_in13+32'd1));
answer_temp14 = (data_in14 > 0 ? data_in14 : (~data_in14+32'd1));
answer_temp15 = (data_in15 > 0 ? data_in15 : (~data_in15+32'd1));

answer_temp21 = (data_in21 > 0 ? data_in21 : (~data_in21 + 32'd1));
answer_temp22 = (data_in22 > 0 ? data_in22 : (~data_in22 + 32'd1));
answer_temp23 = (data_in23 > 0 ? data_in23 : (~data_in23 + 32'd1));
answer_temp24 = (data_in24 > 0 ? data_in24 : (~data_in24 + 32'd1));
answer_temp25 = (data_in25 > 0 ? data_in25 : (~data_in25 + 32'd1));

answer_temp31 = (data_in31 > 0 ? data_in31 : (~data_in31 + 32'd1));
answer_temp32 = (data_in32 > 0 ? data_in32 : (~data_in32 + 32'd1));
answer_temp33 = (data_in33 > 0 ? data_in33 : (~data_in33 + 32'd1));
answer_temp34 = (data_in34 > 0 ? data_in34 : (~data_in34 + 32'd1));
answer_temp35 = (data_in35 > 0 ? data_in35 : (~data_in35 + 32'd1));

answer_temp41 = (data_in41 > 0 ? data_in41 : (~data_in41+32'd1));
answer_temp42 = (data_in42 > 0 ? data_in42 : (~data_in42+32'd1));
answer_temp43 = (data_in43 > 0 ? data_in43 : (~data_in43+32'd1));
answer_temp44 = (data_in44 > 0 ? data_in44 : (~data_in44+32'd1));
answer_temp45 = (data_in45 > 0 ? data_in45 : (~data_in45+32'd1));

answer_temp51 = (data_in51 > 0 ? data_in51 : (~data_in51+32'd1));
answer_temp52 = (data_in52 > 0 ? data_in52 : (~data_in52+32'd1));
answer_temp53t = (data_in53 > 0 ? data_in53 : (~data_in53+32'd1));
answer_temp54t = (data_in54 > 0 ? data_in54 : (~data_in54+32'd1));
answer_temp55t = (data_in55 > 0 ? data_in55 : (~data_in55+32'd1));



x = answer_temp11;
y = answer_temp21;

answer_temp21 = x*answer_temp21 - y*answer_temp11;
answer_temp22 = x*answer_temp22 - y*answer_temp12;
answer_temp23 = x*answer_temp23 - y*answer_temp13;
answer_temp24 = x*answer_temp24 - y*answer_temp14;
answer_temp25 = x*answer_temp25 - y*answer_temp15;
A21t = x*A21t - y*A11t;
A22t = x*A22t - y*A12t;
A23t = x*A23t - y*A13t;
A24t = x*A24t - y*A14t;
A25t = x*A25t - y*A15t;

x = answer_temp11;
y = answer_temp31;

answer_temp31 = x*answer_temp31 - y*answer_temp11;
answer_temp32 = x*answer_temp32 - y*answer_temp12;
answer_temp33 = x*answer_temp33 - y*answer_temp13;
answer_temp34 = x*answer_temp34 - y*answer_temp14;
answer_temp35 = x*answer_temp35 - y*answer_temp15;
A31t = x*A31t - y*A11t;
A32t = x*A32t - y*A12t;
A33t = x*A33t - y*A13t;
A34t = x*A34t - y*A14t;
A35t = x*A35t - y*A15t;

x = answer_temp11;
y = answer_temp41;

answer_temp41 = x*answer_temp41 - y*answer_temp11;
answer_temp42 = x*answer_temp42 - y*answer_temp12;
answer_temp43 = x*answer_temp43 - y*answer_temp13;
answer_temp44 = x*answer_temp44 - y*answer_temp14;
answer_temp45 = x*answer_temp45 - y*answer_temp15;
A41t = x*A41t - y*A11t;
A42t = x*A42t - y*A12t;
A43t = x*A43t - y*A13t;
A44t = x*A44t - y*A14t;
A45t = x*A45t - y*A15t;

x = answer_temp11;
y = answer_temp51;

answer_temp51 = x*answer_temp51 - y*answer_temp11;
answer_temp52 = x*answer_temp52 - y*answer_temp12;
answer_temp53t = x*answer_temp53t - y*answer_temp13;
answer_temp54t = x*answer_temp54t - y*answer_temp14;
answer_temp55t = x*answer_temp55t - y*answer_temp15;
A51t = x*A51t - y*A11t;
A52t = x*A52t - y*A12t;
A53t = x*A53t - y*A13t;
A54t = x*A54t - y*A14t;
A55t = x*A55t - y*A15t;


x = answer_temp22;
y = answer_temp12;

answer_temp11 = x*answer_temp11 - y*answer_temp21;
answer_temp12 = x*answer_temp12 - y*answer_temp22;
answer_temp13 = x*answer_temp13 - y*answer_temp23;
answer_temp14 = x*answer_temp14 - y*answer_temp24;
answer_temp15 = x*answer_temp15 - y*answer_temp25;
A11t = x*A11t - y*A21t;
A12t = x*A12t - y*A22t;
A13t = x*A13t - y*A23t;
A14t = x*A14t - y*A24t;
A15t = x*A15t - y*A25t;

x = answer_temp22;
y = answer_temp32;

answer_temp31 = x*answer_temp31 - y*answer_temp21;
answer_temp32 = x*answer_temp32 - y*answer_temp22;
answer_temp33 = x*answer_temp33 - y*answer_temp23;
answer_temp34 = x*answer_temp34 - y*answer_temp24;
answer_temp35 = x*answer_temp35 - y*answer_temp25;
A31t = x*A31t - y*A21t;
A32t = x*A32t - y*A22t;
A33t = x*A33t - y*A23t;
A34t = x*A34t - y*A24t;
A35t = x*A35t - y*A25t;

x = answer_temp22;
y = answer_temp42;

answer_temp41 = x*answer_temp41 - y*answer_temp21;
answer_temp42 = x*answer_temp42 - y*answer_temp22;
answer_temp43 = x*answer_temp43 - y*answer_temp23;
answer_temp44 = x*answer_temp44 - y*answer_temp24;
answer_temp45 = x*answer_temp45 - y*answer_temp25;
A41t = x*A41t - y*A21t;
A42t = x*A42t - y*A22t;
A43t = x*A43t - y*A23t;
A44t = x*A44t - y*A24t;
A45t = x*A45t - y*A25t;

x = answer_temp22;
y = answer_temp52;

answer_temp51 = x*answer_temp51 - y*answer_temp21;
answer_temp52 = x*answer_temp52 - y*answer_temp22;
answer_temp53t = x*answer_temp53t - y*answer_temp23;
answer_temp54t = x*answer_temp54t - y*answer_temp24;
answer_temp55t = x*answer_temp55t - y*answer_temp25;
A51t = x*A51t - y*A21t;
A52t = x*A52t - y*A22t;
A53t = x*A53t - y*A23t;
A54t = x*A54t - y*A24t;
A55t = x*A55t - y*A25t;


x = answer_temp33;
y = answer_temp13;

answer_temp11 = x*answer_temp11 - y*answer_temp31;
answer_temp12 = x*answer_temp12 - y*answer_temp32;
answer_temp13 = x*answer_temp13 - y*answer_temp33;
answer_temp14 = x*answer_temp14 - y*answer_temp34;
answer_temp15 = x*answer_temp15 - y*answer_temp35;
A11t = x*A11t - y*A31t;
A12t = x*A12t - y*A32t;
A13t = x*A13t - y*A33t;
A14t = x*A14t - y*A34t;
A15t = x*A15t - y*A35t;

x = answer_temp33;
y = answer_temp23;

answer_temp21 = x*answer_temp21 - y*answer_temp31;
answer_temp22 = x*answer_temp22 - y*answer_temp32;
answer_temp23 = x*answer_temp23 - y*answer_temp33;
answer_temp24 = x*answer_temp24 - y*answer_temp34;
answer_temp25 = x*answer_temp25 - y*answer_temp35;
A21t = x*A21t - y*A31t;
A22t = x*A22t - y*A32t;
A23t = x*A23t - y*A33t;
A24t = x*A24t - y*A34t;
A25t = x*A25t - y*A35t;

x = answer_temp33;
y = answer_temp43;

answer_temp41 = x*answer_temp41 - y*answer_temp31;
answer_temp42 = x*answer_temp42 - y*answer_temp32;
answer_temp43 = x*answer_temp43 - y*answer_temp33;
answer_temp44 = x*answer_temp44 - y*answer_temp34;
answer_temp45 = x*answer_temp45 - y*answer_temp35;
A41t = x*A41t - y*A31t;
A42t = x*A42t - y*A32t;
A43t = x*A43t - y*A33t;
A44t = x*A44t - y*A34t;
A45t = x*A45t - y*A35t;

x = answer_temp33;
y = answer_temp53t;

answer_temp51 = x*answer_temp51 - y*answer_temp31;
answer_temp52 = x*answer_temp52 - y*answer_temp32;
answer_temp53t = x*answer_temp53t - y*answer_temp33;
answer_temp54t = x*answer_temp54t - y*answer_temp34;
answer_temp55t = x*answer_temp55t - y*answer_temp35;
A51t = x*A51t - y*A31t;
A52t = x*A52t - y*A32t;
A53t = x*A53t - y*A33t;
A54t = x*A54t - y*A34t;
A55t = x*A55t - y*A35t;


x = answer_temp44;
y = answer_temp14;

answer_temp11 = x*answer_temp11 - y*answer_temp41;
answer_temp12 = x*answer_temp12 - y*answer_temp42;
answer_temp13 = x*answer_temp13 - y*answer_temp43;
answer_temp14 = x*answer_temp14 - y*answer_temp44;
answer_temp15 = x*answer_temp15 - y*answer_temp45;
A11t = x*A11t - y*A41t;
A12t = x*A12t - y*A42t;
A13t = x*A13t - y*A43t;
A14t = x*A14t - y*A44t;
A15t = x*A15t - y*A45t;

x = answer_temp44;
y = answer_temp24;

answer_temp21 = x*answer_temp21 - y*answer_temp41;
answer_temp22 = x*answer_temp22 - y*answer_temp42;
answer_temp23 = x*answer_temp23 - y*answer_temp43;
answer_temp24 = x*answer_temp24 - y*answer_temp44;
answer_temp25 = x*answer_temp25 - y*answer_temp45;
A21t = x*A21t - y*A41t;
A22t = x*A22t - y*A42t;
A23t = x*A23t - y*A43t;
A24t = x*A24t - y*A44t;
A25t = x*A25t - y*A45t;

x = answer_temp44;
y = answer_temp34;

answer_temp31 = x*answer_temp31 - y*answer_temp41;
answer_temp32 = x*answer_temp32 - y*answer_temp42;
answer_temp33 = x*answer_temp33 - y*answer_temp43;
answer_temp34 = x*answer_temp34 - y*answer_temp44;
answer_temp35 = x*answer_temp35 - y*answer_temp45;
A31t = x*A31t - y*A41t;
A32t = x*A32t - y*A42t;
A33t = x*A33t - y*A43t;
A34t = x*A34t - y*A44t;
A35t = x*A35t - y*A45t;

x = answer_temp44;
y = answer_temp54t;

answer_temp51 = x*answer_temp51 - y*answer_temp41;
answer_temp52 = x*answer_temp52 - y*answer_temp42;
answer_temp53t = x*answer_temp53t - y*answer_temp43;
answer_temp54t = x*answer_temp54t - y*answer_temp44;
answer_temp55t = x*answer_temp55t - y*answer_temp45;
A51t = x*A51t - y*A41t;
A52t = x*A52t - y*A42t;
A53t = x*A53t - y*A43t;
A54t = x*A54t - y*A44t;
A55t = x*A55t - y*A45t;


x = answer_temp55t;
y = answer_temp15;

answer_temp11 = x*answer_temp11 - y*answer_temp51;
answer_temp12 = x*answer_temp12 - y*answer_temp52;
answer_temp13 = x*answer_temp13 - y*answer_temp53t;
answer_temp14 = x*answer_temp14 - y*answer_temp54t;
answer_temp15 = x*answer_temp15 - y*answer_temp55t;
A11t = x*A11t - y*A51t;
A12t = x*A12t - y*A52t;
A13t = x*A13t - y*A53t;
A14t = x*A14t - y*A54t;
A15t = x*A15t - y*A55t;

x = answer_temp55t;
y = answer_temp25;

answer_temp21 = x*answer_temp21 - y*answer_temp51;
answer_temp22 = x*answer_temp22 - y*answer_temp52;
answer_temp23 = x*answer_temp23 - y*answer_temp53t;
answer_temp24 = x*answer_temp24 - y*answer_temp54t;
answer_temp25 = x*answer_temp25 - y*answer_temp55t;
A21t = x*A21t - y*A51t;
A22t = x*A22t - y*A52t;
A23t = x*A23t - y*A53t;
A24t = x*A24t - y*A54t;
A25t = x*A25t - y*A55t;

x = answer_temp55t;
y = answer_temp35;

answer_temp31 = x*answer_temp31 - y*answer_temp51;
answer_temp32 = x*answer_temp32 - y*answer_temp52;
answer_temp33 = x*answer_temp33 - y*answer_temp53t;
answer_temp34 = x*answer_temp34 - y*answer_temp54t;
answer_temp35 = x*answer_temp35 - y*answer_temp55t;
A31t = x*A31t - y*A51t;
A32t = x*A32t - y*A52t;
A33t = x*A33t - y*A53t;
A34t = x*A34t - y*A54t;
A35t = x*A35t - y*A55t;

x = answer_temp55t;
y = answer_temp45;

answer_temp41 = x*answer_temp41 - y*answer_temp51;
answer_temp42 = x*answer_temp42 - y*answer_temp52;
answer_temp43 = x*answer_temp43 - y*answer_temp53t;
answer_temp44 = x*answer_temp44 - y*answer_temp54t;
answer_temp45 = x*answer_temp45 - y*answer_temp55t;
A41t = x*A41t - y*A51t;
A42t = x*A42t - y*A52t;
A43t = x*A43t - y*A53t;
A44t = x*A44t - y*A54t;
A45t = x*A45t - y*A55t;




if(answer_temp11==32'd0 || answer_temp22 == 32'd0 || answer_temp33 == 32'd0 || answer_temp44==32'd0 || answer_temp55t==32'd0)
begin
	A11=32'dx;
	A22=32'dx;
	A33=32'dx;
	A44=32'dx;
	A55=32'dx;
end

else
begin
	A11 = A11t;
	A12 = A12t;
	A13 = A13t;
	A14 = A14t;
	A15 = A15t;

	A21 = A21t;
	A22 = A22t;
	A23 = A23t;
	A24 = A24t;
	A25 = A25t;

	A31 = A31t;
	A32 = A32t;
	A33 = A33t;
	A34 = A34t;
	A35 = A35t;

	A41 = A41t;
	A42 = A42t;
	A43 = A43t;
	A44 = A44t;
	A45 = A45t;

	A51 = A51t;
	A52 = A52t;
	A53 = A53t;
	A54 = A54t;
	A55 = A55t;
end


inv[0] = A11;
inv[1] = A12;
inv[2] = A13;
inv[3] = A14;
inv[4] = A15;

inv[5] = A21;
inv[6] = A22;
inv[7] = A23;
inv[8] = A24;
inv[9] = A25;

inv[10] = A31;
inv[11] = A32;
inv[12] = A33;
inv[13] = A34;
inv[14] = A35;

inv[15] = A41;
inv[16] = A42;
inv[17] = A43;
inv[18] = A44;
inv[19] = A45;

inv[20] = A51;
inv[21] = A52;
inv[22] = A53;
inv[23] = A54;
inv[24] = A55;

end

end



wire [31:0] A11dt,A12dt,A13dt,A14dt,A15dt;
wire [31:0] A21dt,A22dt,A23dt,A24dt,A25dt;
wire [31:0] A31dt,A32dt,A33dt,A34dt,A35dt;
wire [31:0] A41dt,A42dt,A43dt,A44dt,A45dt;
wire [31:0] A51dt,A52dt,A53dt,A54dt,A55dt;

assign A11d = A11;
assign A12d = A12;
assign A13d = A13;
assign A14d = A14;
assign A15d = A15;

assign A21d = A21;
assign A22d = A22;
assign A23d = A23;
assign A24d = A24;
assign A25d = A25;

assign A31d = A31;
assign A32d = A32;
assign A33d = A33;
assign A34d = A34;
assign A35d = A35;

assign A41d = A41;
assign A42d = A42;
assign A43d = A43;
assign A44d = A44;
assign A45d = A45;

assign A51d = A51;
assign A52d = A52;
assign A53d = A53;
assign A54d = A54;
assign A55d = A55;

wire [31:0] a,b,c,d,e;

assign a = answer_temp11;
assign b = answer_temp22;
assign c = answer_temp33;
assign d = answer_temp44;
assign e = answer_temp55t;


assign A11d = A11dt;
assign A12d = A12dt;
assign A13d = A13dt;
assign A14d = A14dt;
assign A15d = A15dt;

assign A21d = A21dt;
assign A22d = A22dt;
assign A23d = A23dt;
assign A24d = A24dt;
assign A25d = A25dt;

assign A31d = A31dt;
assign A32d = A32dt;
assign A33d = A33dt;
assign A34d = A34dt;
assign A35d = A35dt;

assign A41d = A41dt;
assign A42d = A42dt;
assign A43d = A43dt;
assign A44d = A44dt;
assign A45d = A45dt;

assign A51d = A51dt;
assign A52d = A52dt;
assign A53d = A53dt;
assign A54d = A54dt;
assign A55d = A55dt;



endmodule
