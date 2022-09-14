all:

	rm -rf work
	clear
	vlib work
	vlog -sv class.sv && vsim class_ex -c -do "run -all;quit;"

compile:
	vlib work
	vlog -sv class.sv

simulate:
	vsim class_ex -l class_op.log -c -do "run -all;quit;"

clear:
	
	rm -rf work
	clear
