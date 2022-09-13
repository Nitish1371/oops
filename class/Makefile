all:
	rm -rf class_op.log
	rm -rf work
	clear
	vlib work
	vlog -sv class.sv && vsim check_electricity -c -do "run -all;quit;"

compile:
	vlib work
	vlog -sv class.sv

simulate:
	vsim check_electricity -c -do "run -all;quit;"

clear:
	rm -rf class.log
	rm -rf work
	clear
