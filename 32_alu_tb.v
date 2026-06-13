module alu_32bit_tb;

reg  [31:0] A, B;
reg  [3:0] ALU_Sel;
wire [31:0] ALU_Out;
wire Zero;

alu_32bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .Zero(Zero)
);

initial begin

    A = 32'd6;
    B = 32'd5;

    // ADD
    ALU_Sel = 4'b0000;
    #10;

    // SUB
    ALU_Sel = 4'b0001;
    #10;

    // AND
    ALU_Sel = 4'b0010;
    #10;

    // OR
    ALU_Sel = 4'b0011;
    #10;

    // XOR
    ALU_Sel = 4'b0100;
    #10;

    // NOT
    ALU_Sel = 4'b0101;
    #10;

    // Shift Left
    ALU_Sel = 4'b0110;
    #10;

    // Shift Right
    ALU_Sel = 4'b0111;
    #10;

    $finish;
end

endmodule