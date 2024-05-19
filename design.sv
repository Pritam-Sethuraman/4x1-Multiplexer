module mux_4to1 (
    input logic [1:0] sel,    // 2-bit Selector input
    input logic input0,       // Data input 0
    input logic input1,       // Data input 1
    input logic input2,       // Data input 2
    input logic input3,       // Data input 3
    output logic y            // Output
);

    always_comb begin
        case (sel)
            2'b00: y = input0;
            2'b01: y = input1;
            2'b10: y = input2;
            2'b11: y = input3;
            default: y = 1'b0;
        endcase
    end
endmodule
