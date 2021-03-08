cmd_arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo := mkdir -p arch/arm/dts/ ; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.dts.tmp arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dts ; ./scripts/dtc/dtc -@ -O dtb -o arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.d.dtc.tmp arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.dts.tmp ; cat arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.d.pre.tmp arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.d.dtc.tmp > arch/arm/dts/.zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo.d

source_arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo := arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dts

deps_arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo := \

arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo: $(deps_arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo)

$(deps_arch/arm/dts/zynqmp-p-a2197-00-revA-x-prc-01-revA.dtbo):
