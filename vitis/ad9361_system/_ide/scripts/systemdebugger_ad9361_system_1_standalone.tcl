# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: G:\zc706_ad9361\vitis\ad9361_system\_ide\scripts\systemdebugger_ad9361_system_1_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source G:\zc706_ad9361\vitis\ad9361_system\_ide\scripts\systemdebugger_ad9361_system_1_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B7E2" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A1B7E2-23731093-0"}
fpga -file C:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.runs/impl_1/system_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/20915/Desktop/zijib/zc706_ad9361/vitis/system_top/export/system_top/hw/system_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source G:/zc706_ad9361/vitis/ad9361/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow G:/zc706_ad9361/vitis/ad9361/Debug/ad9361.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
