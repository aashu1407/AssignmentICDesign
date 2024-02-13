module design2(
    input clk,
    input T,
    output reg Q
);

always @ (posedge clk) begin
    Q <= ~Q ^ T; // XOR current Q with T and assign to next Q
end

endmodule

