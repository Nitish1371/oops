all:

	rm -rf work
	clear
	vlib work
	vlog -sv this.sv && vsim class_example -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv class_example.sv

simulate:
		vsim class_example -l this_op.log -c -do "run -all;quit;"

clear:
		
	rm -rf work
	clear
