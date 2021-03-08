cmd_arch/arm/dts/zynqmp-m-a2197-01-revA.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/zynqmp-m-a2197-01-revA.dts; ) > arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.pre.tmp; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.dts.tmp arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/zynqmp-m-a2197-01-revA.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.d.dtc.tmp arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.dts.tmp ; cat arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.d.pre.tmp arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.d.dtc.tmp > arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.d

source_arch/arm/dts/zynqmp-m-a2197-01-revA.dtb := arch/arm/dts/.zynqmp-m-a2197-01-revA.dtb.pre.tmp

deps_arch/arm/dts/zynqmp-m-a2197-01-revA.dtb := \
  arch/arm/dts/zynqmp.dtsi \
  arch/arm/dts/include/dt-bindings/power/xlnx-zynqmp-power.h \
  arch/arm/dts/include/dt-bindings/reset/xlnx-zynqmp-resets.h \
  arch/arm/dts/zynqmp-clk-ccf.dtsi \
  arch/arm/dts/include/dt-bindings/clock/xlnx-zynqmp-clk.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \

arch/arm/dts/zynqmp-m-a2197-01-revA.dtb: $(deps_arch/arm/dts/zynqmp-m-a2197-01-revA.dtb)

$(deps_arch/arm/dts/zynqmp-m-a2197-01-revA.dtb):
