module design3(
    input a, b, cin,
    output [1:0]sum, 
    output cout
);

assign sum[0] = a ^ b ^ cin;
assign sum[1] = (a & b) | (b & cin) | (a & cin);
assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

