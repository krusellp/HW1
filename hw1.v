// homework 1 for comparch. basic proving of demorgan's law

module demorgan
(
	input A,		// single bit inputs
	input B,
	output AorB,   		// single bit output not complemented
	output nAornB		// single bit output complemented ~(A+B)
);

	wire A;
	wire B;
	or orgate(AorB, A, B);
	not outinv(nAornB, AorB);	// flipped output from and gate


endmodule