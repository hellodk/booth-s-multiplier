`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:19 06/20/2010 
// Design Name: 
// Module Name:    boothm 
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
module boothm(m,r,op);
    input [3:0] m;
    input [3:0] r;
    output [7:0] op;
	 reg [3:0] mc;
	 reg [8:0] a;
	 reg [8:0] s;
	 reg [8:0] p;
	 reg [1:0] ls;
	 integer i;
	 always@(m,r)
	 begin
	   a[8]<=m[3];
	   a[7]<=m[2];
	   a[6]<=m[1];
	   a[5]<=m[0];
	   a[4]<=0;
	   a[3]<=0;
	   a[2]<=0;
	   a[1]<=0;
	   a[0]<=0;
	   mc<=~m+1;
	   s[8]<=mc[3];
	   s[7]<=mc[2];
	   s[6]<=mc[1];
	   s[5]<=mc[0];
	   s[4]<=0;
	   s[3]<=0;
	   s[2]<=0;
	   s[1]<=0;
	   s[0]<=0;
	   p[8]<=0;
	   p[7]<=0;
	   p[6]<=0;
	   p[5]<=0;
	   p[0]<=0;
	   p[4]<=r[3];
	   p[3]<=r[2];
	   p[2]<=r[1];
	   p[1]<=r[0];
	 end
	 for(i=0;i<4;i=i+1)
	   begin
	     assign ls[1]=p[1];
	     assign ls[0]=p[0];
	     case(ls)
	       2'b01: assign p=p+a;
	       2'b10: assign p=p+s;
	     endcase
	     p=p>>1;
	   end
	assign op[7]=p[8];
	assign op[6]=p[7];
	assign op[5]=p[6];
	assign op[4]=p[5];
	assign op[3]=p[4];
	assign op[2]=p[3];
	assign op[1]=p[2];
	assign op[0]=p[1];
endmodule
