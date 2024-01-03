
// 4-bit Adder Module
module Adder (
  input logic [3:0] operand1,
  input logic [3:0] operand2,
  output logic [4:0] sum
);

  // Output the sum of the operands
  always_comb begin
    sum = operand1 + operand2;
  end

endmodule

