module design4(
    input clk,
    input in,
    output reg [3:0] q
);

always @ (posedge clk) begin
    q[0] <= in;
    q[1] <= q[0];
    q[2] <= q[1];
    q[3] <= q[2];
end

endmodule

