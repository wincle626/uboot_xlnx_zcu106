cmd_arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dts; ) > arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.pre.tmp; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.dts.tmp arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.d.dtc.tmp arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.dts.tmp ; cat arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.d.pre.tmp arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.d.dtc.tmp > arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.d

source_arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb := arch/arm/dts/.zynqmp-mini-qspi-x1-stacked.dtb.pre.tmp

deps_arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb := \
  arch/arm/dts/zynqmp-mini-qspi.dts \

arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb: $(deps_arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb)

$(deps_arch/arm/dts/zynqmp-mini-qspi-x1-stacked.dtb):
