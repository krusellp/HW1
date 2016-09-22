`include "hw1.v"

module demomrgan_test ();

// instantiate device/module under test
reg A,B;				// primary test inputs
wire AorB, nAornB;	//test outputs

demorgan dut(A, B, AorB, nAornB);	//module to be tested

// run sequence of test stimuli
initial begin
	$display("A B | A and B | ~(A+B)");	// prints header for truth table
	A=0;B=0; #1					// set A and B, wait for update (#1)
	$display("%b %b |    %b    |    %b  ", A,B, AorB, nAornB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |    %b    |    %b  ", A,B, AorB, nAornB);
    A=1;B=0; #1
    $display("%b %b |    %b    |    %b  ", A,B, AorB, nAornB);
    A=1;B=1; #1
    $display("%b %b |    %b    |    %b  ", A,B, AorB, nAornB);
  end
endmodule    // End demorgan_test