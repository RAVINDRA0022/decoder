`timescale 1ns / 1ps

module decoder( input [2:0]in , output [7:0]out);
  wire w1,w2,w3;
        assign w1= ~in[2];
        assign w2= ~in[1];
        assign w3= ~in[0];
        assign out[0]= w1&w2&w3;
        assign out[1]= w1&w2&in[0];
        assign out[2]= w1&in[1]&w3;
        assign out[3]= w1&in[1]&in[0];
        assign out[4]= in[2]&w2&w3;
        assign out[5]= in[2]&w2&in[0];
        assign out[6]= in[2]&in[1]&w3;
        assign out[7]= in[2]&in[1]&in[0];
endmodule
