// Sign Extender Module
module SignExtender (
  input logic [7:0] input_data,
  input logic sign_bit,
  output logic [31:0] output_data
);

  // Output the sign-extended data
  always_comb begin
    if (sign_bit) // If sign bit is 1 (negative), extend with 1s
      output_data = {{24{1'b1}}, input_data};
    else // If sign bit is 0 (positive), extend with 0s
      output_data = {{24{1'b0}}, input_data};
  end

endmodule

