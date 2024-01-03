
// Multiplexer Testbench
module Multiplexer_tb;

  // Inputs and outputs
  logic [31:0] data0, data1, data2, data3;
  logic [1:0] selector;
  logic [31:0] output_data;

  // Instantiate the Multiplexer module
  Multiplexer uut (
    .data0(data0),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .selector(selector),
    .output_data(output_data)
  );

  // Test scenario
  initial begin
    // Test case 1: Selector is 00
    data0 = 32'h1234_5678;
    data1 = 32'h8765_4321;
    data2 = 32'h1111_2222;
    data3 = 32'h3333_4444;
    selector = 2'b00;
    #10;

    // Test case 2: Selector is 10
    selector = 2'b10;
    #10;

    // Add more test cases as needed

    // Finish the simulation
    $finish;
  end

endmodule

