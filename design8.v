module design8(
    input clk,
    input J,
    input K,
    output reg Q
);

always @ (posedge clk) begin
    if (J & ~K) begin // Set on J=1, K=0
        Q <= 1'b1;
    end else if (~J & K) begin // Reset on J=0, K=1
        Q <= 1'b0;
    end else begin // Toggle on J=K=1 or J=K=0
        Q <= ~Q;
    end
end

endmodule

