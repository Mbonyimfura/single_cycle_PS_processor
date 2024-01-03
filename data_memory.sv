
// DataMemory Module
module DataMemory (
  input logic [31:0] address,
  input logic [31:0] write_data,
  input logic write_enable,
  input logic read_enable,
  output logic [31:0] read_data
);

  // Memory array to store data
  logic [31:0] memory [0:1023];

  // Read and write operations
  always_ff @(posedge read_enable or posedge write_enable)
    if (read_enable)
      read_data <= memory[address];
    else if (write_enable)
      memory[address] <= write_data;

endmodule

