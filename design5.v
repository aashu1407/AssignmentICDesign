module design5(
    input clk,
    input [3:0] data_in,
    input [2:0] shift_amount, // Number of bits to shift (max 3)
    output reg [3:0] data_out
);

always @ (posedge clk) begin
    data_out <= data_in >> shift_amount; // Right shift by specified amount
end

endmodule

