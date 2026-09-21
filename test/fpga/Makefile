test:
	iverilog -g2012 -o fixture_tb top.v tb_top.v
	vvp fixture_tb

build:
	yosys -p 'synth_ice40 -top top -json fixture.json' top.v
	nextpnr-ice40 --up5k --package sg48 --json fixture.json --asc fixture.asc --pcf-allow-unconstrained
	icepack fixture.asc fixture.bin
