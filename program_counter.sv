
// Program Counter Module
module ProgramCounter (
  input logic clk,
  input logic reset,
  input logic [31:0] new_address,
  output logic [31:0] current_address
);
  // Internal counter register
  logic [31:0] counter;

  // Process to update the counter on positive edge of the clock
  always_ff @(posedge clk or posedge reset)
    if (reset)
      counter <= 32'h0000_0000; // Reset the counter to zero
    else
      counter <= new_address; // Update the counter with the new address

  // Output the current counter value
  assign current_address = counter;

endmodule

