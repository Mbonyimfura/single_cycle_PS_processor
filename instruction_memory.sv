module InstructionMemory(
  input [31:0] address,
  output reg [31:0] instruction
);

  reg [31:0] memory [0:15];

  // Initialize memory with example instructions
  initial begin
    memory[0] = 32'h8F100000; // Example instruction 1
    memory[1] = 32'h03213023; // Example instruction 2
    // Add more instructions as needed
  end

  always @(posedge address) begin
    // Read instruction from memory based on the address
    instruction <= memory[address];
  end

endmodule


