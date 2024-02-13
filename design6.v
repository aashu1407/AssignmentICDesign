module design6(
    input in0,
    input in1,
    input sel,
    output reg out
);

always @ (*) begin
    out = (sel) ? in1 : in0;
end

endmodule

