test:
	iverilog -g2012 -o fixture_tb top.v tb_top.v
	vvp fixture_tb

build:
	yosys -p 'synth_ecp5 -top top -json fixture.json' top.v
	nextpnr-ecp5 --85k --package CABGA381 --json fixture.json --textcfg fixture.config --lpf-allow-unconstrained
	ecppack fixture.config fixture.bit
