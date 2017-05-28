onerror {quit -f}
vlib work
vlog -work work Vending_Machine.vo
vlog -work work Vending_Machine.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Vending_Machine_vlg_vec_tst
vcd file -direction Vending_Machine.msim.vcd
vcd add -internal Vending_Machine_vlg_vec_tst/*
vcd add -internal Vending_Machine_vlg_vec_tst/i1/*
add wave /*
run -all
