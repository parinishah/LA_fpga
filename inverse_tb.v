`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:40:44 10/07/2016
// Design Name:   inverse
// Module Name:   C:/softwares/xylinx pros/LA_inverse/inverse_tb.v
// Project Name:  LA_inverse
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inverse
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inverse_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;

	// Outputs
	wire [31:0] data_out;
	wire [31:0] A11;
	wire [31:0] A12;
	wire [31:0] A13;
	wire [31:0] A14;
	wire [31:0] A15;
	wire [31:0] A21;
	wire [31:0] A22;
	wire [31:0] A23;
	wire [31:0] A24;
	wire [31:0] A25;
	wire [31:0] A31;
	wire [31:0] A32;
	wire [31:0] A33;
	wire [31:0] A34;
	wire [31:0] A35;
	wire [31:0] A41;
	wire [31:0] A42;
	wire [31:0] A43;
	wire [31:0] A44;
	wire [31:0] A45;
	wire [31:0] A51;
	wire [31:0] A52;
	wire [31:0] A53;
	wire [31:0] A54;
	wire [31:0] A55;
	wire [31:0] A11d;
	wire [31:0] A12d;
	wire [31:0] A13d;
	wire [31:0] A14d;
	wire [31:0] A15d;
	wire [31:0] A21d;
	wire [31:0] A22d;
	wire [31:0] A23d;
	wire [31:0] A24d;
	wire [31:0] A25d;
	wire [31:0] A31d;
	wire [31:0] A32d;
	wire [31:0] A33d;
	wire [31:0] A34d;
	wire [31:0] A35d;
	wire [31:0] A41d;
	wire [31:0] A42d;
	wire [31:0] A43d;
	wire [31:0] A44d;
	wire [31:0] A45d;
	wire [31:0] A51d;
	wire [31:0] A52d;
	wire [31:0] A53d;
	wire [31:0] A54d;
	wire [31:0] A55d;

	// Instantiate the Unit Under Test (UUT)
	inverse uut (
		.clk(clk), 
		.reset(reset), 
		.data_out(data_out), 
		.address(address), 
		.A11(A11), 
		.A12(A12), 
		.A13(A13), 
		.A14(A14), 
		.A15(A15), 
		.A21(A21), 
		.A22(A22), 
		.A23(A23), 
		.A24(A24), 
		.A25(A25), 
		.A31(A31), 
		.A32(A32), 
		.A33(A33), 
		.A34(A34), 
		.A35(A35), 
		.A41(A41), 
		.A42(A42), 
		.A43(A43), 
		.A44(A44), 
		.A45(A45), 
		.A51(A51), 
		.A52(A52), 
		.A53(A53), 
		.A54(A54), 
		.A55(A55), 
		.A11d(A11d), 
		.A12d(A12d), 
		.A13d(A13d), 
		.A14d(A14d), 
		.A15d(A15d), 
		.A21d(A21d), 
		.A22d(A22d), 
		.A23d(A23d), 
		.A24d(A24d), 
		.A25d(A25d), 
		.A31d(A31d), 
		.A32d(A32d), 
		.A33d(A33d), 
		.A34d(A34d), 
		.A35d(A35d), 
		.A41d(A41d), 
		.A42d(A42d), 
		.A43d(A43d), 
		.A44d(A44d), 
		.A45d(A45d), 
		.A51d(A51d), 
		.A52d(A52d), 
		.A53d(A53d), 
		.A54d(A54d), 
		.A55d(A55d)
	);

	always #100 clk = ~clk;

	initial 
	begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;  
end		
endmodule

