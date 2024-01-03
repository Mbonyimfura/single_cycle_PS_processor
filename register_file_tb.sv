// Register File Testbench
module RegisterFile_tb;

  // Inputs and outputs
  logic [1:0] read_register1, read_register2, write_register;
  logic [31:0] write_data, data1, data2;
  logic write_enable;
  reg clk;

  // Instantiate the Register File module
  RegisterFile uut (
    .read_register1(read_register1),
    .read_register2(read_register2),
    .write_register(write_register),
    .write_data(write_data),
    .write_enable(write_enable),
    .data1(data1),
    .data2(data2)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test scenario
  initial begin
    // Test case 1: Write to register 0
    read_register1 = 2'b00;
    read_register2 = 2'b01;
    write_register = 2'b00;
    write_data = 32'h12345678;
    write_enable = 1;
    #10;

    // Test case 2: Read from registers 1 and 2
    read_register1 = 2'b01;
    read_register2 = 2'b10;
    write_register = 2'b00;
    write_data = 32'h87654321;
    write_enable = 1;
    #10;

    // Add more test cases as needed

    // Finish the simulation
    $finish;
  end

endmodule

