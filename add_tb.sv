
// Adder Testbench
module Adder_tb;

  // Inputs and outputs
  logic [3:0] operand1, operand2;
  logic [4:0] sum;

  // Instantiate the Adder module
  Adder uut (
    .operand1(operand1),
    .operand2(operand2),
    .sum(sum)
  );

  // Test scenario
  initial begin
    // Test case 1: 3 + 2
    operand1 = 4'b0011;
    operand2 = 4'b0010;
    #10;

    // Test case 2: 7 + 5
    operand1 = 4'b0111;
    operand2 = 4'b0101;
    #10;

    // Add more test cases as needed

    // Finish the simulation
    $finish;
  end

endmodule

