// Program Counter Testbench
module ProgramCounter_tb;

  // Inputs and outputs
  logic clk, reset;
  logic [31:0] new_address, current_address;

  // Instantiate the ProgramCounter module
  ProgramCounter uut (
    .clk(clk),
    .reset(reset),
    .new_address(new_address),
    .current_address(current_address)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test scenario
  initial begin
    // Reset the counter
    reset = 1;
    #10;
    reset = 0;

    // Update the counter with a new address
    new_address = 32'h1000_0000;
    #10;

    // Add more test cases as needed

    // Finish the simulation
    $finish;
  end

endmodule

