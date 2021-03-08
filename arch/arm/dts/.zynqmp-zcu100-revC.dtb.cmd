cmd_arch/arm/dts/zynqmp-zcu100-revC.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/zynqmp-zcu100-revC.dts; ) > arch/arm/dts/.zynqmp-zcu100-revC.dtb.pre.tmp; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.zynqmp-zcu100-revC.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynqmp-zcu100-revC.dtb.dts.tmp arch/arm/dts/.zynqmp-zcu100-revC.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/zynqmp-zcu100-revC.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.zynqmp-zcu100-revC.dtb.d.dtc.tmp arch/arm/dts/.zynqmp-zcu100-revC.dtb.dts.tmp ; cat arch/arm/dts/.zynqmp-zcu100-revC.dtb.d.pre.tmp arch/arm/dts/.zynqmp-zcu100-revC.dtb.d.dtc.tmp > arch/arm/dts/.zynqmp-zcu100-revC.dtb.d

source_arch/arm/dts/zynqmp-zcu100-revC.dtb := arch/arm/dts/.zynqmp-zcu100-revC.dtb.pre.tmp

deps_arch/arm/dts/zynqmp-zcu100-revC.dtb := \
  arch/arm/dts/zynqmp.dtsi \
  arch/arm/dts/include/dt-bindings/power/xlnx-zynqmp-power.h \
  arch/arm/dts/include/dt-bindings/reset/xlnx-zynqmp-resets.h \
  arch/arm/dts/zynqmp-clk-ccf.dtsi \
  arch/arm/dts/include/dt-bindings/clock/xlnx-zynqmp-clk.h \
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/pinctrl/pinctrl-zynqmp.h \
  arch/arm/dts/include/dt-bindings/phy/phy.h \

arch/arm/dts/zynqmp-zcu100-revC.dtb: $(deps_arch/arm/dts/zynqmp-zcu100-revC.dtb)

$(deps_arch/arm/dts/zynqmp-zcu100-revC.dtb):
