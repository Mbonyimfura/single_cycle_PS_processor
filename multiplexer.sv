// 4-to-1 Multiplexer Module
module Multiplexer (
  input logic [31:0] data0,
  input logic [31:0] data1,
  input logic [31:0] data2,
  input logic [31:0] data3,
  input logic [1:0] selector,
  output logic [31:0] output_data
);

  // Output the selected data based on the selector
  always_comb begin
    case (selector)
      2'b00: output_data = data0;
      2'b01: output_data = data1;
      2'b10: output_data = data2;
      2'b11: output_data = data3;
      default: output_data = 32'hxxxx_xxxx; // Default to an undefined value for unknown selector
    endcase
  end

endmodule

