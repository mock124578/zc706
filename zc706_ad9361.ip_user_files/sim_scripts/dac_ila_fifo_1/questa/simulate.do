onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dac_ila_fifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dac_ila_fifo.udo}

run -all

quit -force
