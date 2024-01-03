
module ALU_tb;

  logic [31:0] operand1, operand2;
  logic [2:0] alu_op;
  logic [31:0] result;
  logic zero_flag;

  // Instantiate the ALU module
  ALU uut (
    .operand1(operand1),
    .operand2(operand2),
    .alu_op(alu_op),
    .result(result),
    .zero_flag(zero_flag)
  );

  // Test scenario
  initial begin
    // Test case 1: Addition
    operand1 = 16'hAAAA;
    operand2 = 16'h5555;
    alu_op = 3'b000; // Addition
    #10;

    // Test case 2: Bitwise AND
    operand1 = 16'hF0F0;
    operand2 = 16'h0F0F;
    alu_op = 3'b010; // Bitwise AND
    #10;

    // Test case 3: Subtraction
    operand1 = 16'hABCDE;
    operand2 = 16'h54321;
    alu_op = 3'b001; // Subtraction
    #10;

    // Add more test cases as needed

    $finish;
  end

endmodule

