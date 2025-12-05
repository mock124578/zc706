# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\20915\Desktop\zijib\zc706_ad9361\vitis\system_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\20915\Desktop\zijib\zc706_ad9361\vitis\system_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_top}\
-hw {C:\Users\20915\Desktop\zijib\zc706_ad9361\system_top.xsa}\
-out {C:/Users/20915/Desktop/zijib/zc706_ad9361/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {system_top}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {system_top}
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {C:/Users/20915/Desktop/zijib/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate -domains 
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
domain active {zynq_fsbl}
bsp removelib -name xilffs
bsp write
bsp reload
catch {bsp regenerate}
bsp write
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
catch {bsp regenerate}
bsp write
platform clean
platform clean
domain active {zynq_fsbl}
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp setlib -name xilrsa -ver 1.6
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
platform generate -domains 
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config use_lfn "0"
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
bsp write
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
domain active {zynq_fsbl}
bsp reload
platform config -updatehw {G:/zc706_ad9361/system_top.xsa}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_top}
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {system_top}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate -domains 
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {system_top}
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform active {system_top}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform clean
platform generate
platform clean
platform generate
platform active {system_top}
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/zc706_ad9361/system_top.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform clean
platform generate
