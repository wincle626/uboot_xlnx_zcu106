cmd_arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/zynqmp-zc1751-xm016-dc2.dts; ) > arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.pre.tmp; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.dts.tmp arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.d.dtc.tmp arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.dts.tmp ; cat arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.d.pre.tmp arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.d.dtc.tmp > arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.d

source_arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb := arch/arm/dts/.zynqmp-zc1751-xm016-dc2.dtb.pre.tmp

deps_arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb := \
  arch/arm/dts/zynqmp.dtsi \
  arch/arm/dts/include/dt-bindings/power/xlnx-zynqmp-power.h \
  arch/arm/dts/include/dt-bindings/reset/xlnx-zynqmp-resets.h \
  arch/arm/dts/zynqmp-clk-ccf.dtsi \
  arch/arm/dts/include/dt-bindings/clock/xlnx-zynqmp-clk.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/pinctrl/pinctrl-zynqmp.h \

arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb: $(deps_arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb)

$(deps_arch/arm/dts/zynqmp-zc1751-xm016-dc2.dtb):
