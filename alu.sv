
module ALU (
  input logic [31:0] operand1,
  input logic [31:0] operand2,
  input logic [2:0] alu_op,
  output logic [31:0] result,
  output logic zero_flag
);

  always_comb begin
    case (alu_op)
      3'b000: result = operand1 + operand2; // Addition
      3'b001: result = operand1 - operand2; // Subtraction
      3'b010: result = operand1 & operand2; // Bitwise AND
      3'b011: result = operand1 | operand2; // Bitwise OR
      3'b100: result = operand1 ^ operand2; // Bitwise XOR
      3'b101: result = ~(operand1 & operand2); // Bitwise NAND
      3'b110: result = ~(operand1 | operand2); // Bitwise NOR
      3'b111: result = operand1 ^~ operand2; // Bitwise XNOR
      default: result = 32'h0; // Default to 0 for unknown operation
    endcase

    zero_flag = (result == 32'h0); // Set zero flag
  end

endmodule

