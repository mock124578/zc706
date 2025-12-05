onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dac_ila_fifo -L xilinx_vip -L xpm -L fifo_generator_v13_2_6 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dac_ila_fifo xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {dac_ila_fifo.udo}

run -all

endsim

quit -force
