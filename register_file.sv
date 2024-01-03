// Register File Module
module RegisterFile (
  input logic clk,
  input logic [1:0] read_register1,
  input logic [1:0] read_register2,
  input logic [1:0] write_register,
  input logic [31:0] write_data,
  input logic write_enable,
  output logic [31:0] data1,
  output logic [31:0] data2
);

  // Internal registers
  logic [31:0] registers [0:3];

  // Read data
  assign data1 = registers[read_register1];
  assign data2 = registers[read_register2];

  // Write operation
  always_ff @(posedge clk) begin
    if (write_enable) begin
      registers[write_register] <= write_data;
    end
  end

endmodule

