
// DataMemory Testbench
module DataMemory_tb;

  // Inputs and outputs
  logic [31:0] address, write_data, read_data;
  logic write_enable, read_enable;

  // Instantiate the DataMemory module
  DataMemory uut (
    .address(address),
    .write_data(write_data),
    .write_enable(write_enable),
    .read_enable(read_enable),
    .read_data(read_data)
  );

  // Test scenario
  initial begin
    // Write data to memory
    write_enable = 1;
    address = 16'h0010;
    write_data = 32'hABCDEFFF;
    #10;

    // Read data from memory
    write_enable = 0;
    read_enable = 1;
    address = 16'h0010;
    #10;

    // Add more test cases as needed

    // Finish the simulation
    $finish;
  end

endmodule

