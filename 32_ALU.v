module alu_32bit (
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0]  ALU_Sel,
    output reg [31:0] ALU_Out,
    output Zero
);

always @(*) begin
    case (ALU_Sel)

        4'b0000: ALU_Out = A + B;          // Addition
        4'b0001: ALU_Out = A - B;          // Subtraction
        4'b0010: ALU_Out = A & B;          // AND
        4'b0011: ALU_Out = A | B;          // OR
        4'b0100: ALU_Out = A ^ B;          // XOR
        4'b0101: ALU_Out = ~A;             // NOT
        4'b0110: ALU_Out = A << 1;         // Shift Left
        4'b0111: ALU_Out = A >> 1;         // Shift Right

        default: ALU_Out = 32'b0;

    endcase
end

// Zero Flag
assign Zero = (ALU_Out == 32'b0);

endmodule