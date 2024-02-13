module design9(
    input clk,
    input S,
    input R,
    output reg Q
);

always @ (posedge clk) begin
    if (S && ~R) begin // Set on S=1, R=0
        Q <= 1'b1;
    end else if (~S && R) begin // Reset on S=0, R=1
        Q <= 1'b0;
    end else begin // Hold current state on both S and R=0 or S and R=1
        Q <= Q;
    end
end

endmodule

