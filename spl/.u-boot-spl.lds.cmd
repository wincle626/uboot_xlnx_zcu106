cmd_spl/u-boot-spl.lds := aarch64-linux-gnu-gcc -E -Wp,-MD,spl/.u-boot-spl.lds.d -D__KERNEL__ -D__UBOOT__  -DCONFIG_SPL_BUILD  -D__ARM__          -mstrict-align  -ffunction-sections -fdata-sections -fno-common -ffixed-r9     -fno-common -ffixed-x18 -pipe -march=armv8-a -D__LINUX_ARM_ARCH__=8  -I./arch/arm/mach-zynqmp/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h  -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/7/include -include ./include/u-boot/u-boot.lds.h -include ./include/config.h -DCPUDIR=arch/arm/cpu/armv8  -ansi -D__ASSEMBLY__ -x assembler-with-cpp -std=c99 -P -o spl/u-boot-spl.lds arch/arm/cpu/armv8/u-boot-spl.lds

source_spl/u-boot-spl.lds := arch/arm/cpu/armv8/u-boot-spl.lds

deps_spl/u-boot-spl.lds := \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
  include/u-boot/u-boot.lds.h \
  include/config.h \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/gpio.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/xilinx_zynqmp.h \
    $(wildcard include/config/remake/elf.h) \
    $(wildcard include/config/armv8/switch/to/el1.h) \
    $(wildcard include/config/gicv2.h) \
    $(wildcard include/config/sys/memtest/scratch.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/arm/dcc.h) \
    $(wildcard include/config/cpu/armv8.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/bootp/bootfilesize.h) \
    $(wildcard include/config/bootp/may/fail.h) \
    $(wildcard include/config/mmc/sdhci/zynq.h) \
    $(wildcard include/config/support/emmc/boot.h) \
    $(wildcard include/config/nand/arasan.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/sys/nand/onfi/detection.h) \
    $(wildcard include/config/zynqmp/gqspi.h) \
    $(wildcard include/config/spi/flash/mtd.h) \
    $(wildcard include/config/zynqmp/psu/init/enabled.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/zynqmp/usb.h) \
    $(wildcard include/config/sys/dfu/data/buf/size.h) \
    $(wildcard include/config/thor/reset/off.h) \
    $(wildcard include/config/extra/env/board/settings.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/zynq/gem.h) \
    $(wildcard include/config/sys/fault/echo/link/down.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/clocks.h) \
    $(wildcard include/config/sata/ceva.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/spl/dfu/support.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/spi/flash/support.h) \
    $(wildcard include/config/sys/spi/kernel/offs.h) \
    $(wildcard include/config/sys/spi/args/offs.h) \
    $(wildcard include/config/sys/spi/args/size.h) \
    $(wildcard include/config/sys/spi/u/boot/offs.h) \
    $(wildcard include/config/spl/fs/load/args/name.h) \
    $(wildcard include/config/sys/spl/args/addr.h) \
    $(wildcard include/config/spl/fs/load/kernel/name.h) \
    $(wildcard include/config/spl/load/fit/address.h) \
    $(wildcard include/config/sys/mmcsd/fs/boot/partition.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/args/sector.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/args/sectors.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/kernel/sector.h) \
    $(wildcard include/config/spl/fs/load/payload/name.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/spl/env/support.h) \
    $(wildcard include/config/spl/hash/support.h) \
    $(wildcard include/config/env/max/entries.h) \
    $(wildcard include/config/sys/spl/malloc/start.h) \
    $(wildcard include/config/sys/spl/malloc/size.h) \
    $(wildcard include/config/spl/sys/malloc/simple.h) \
    $(wildcard include/config/board/early/init/f.h) \
  include/config_distro_bootcmd.h \
    $(wildcard include/config/cmd/distro/bootcmd/h.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/x86/run/32bit.h) \
    $(wildcard include/config/x86/run/64bit.h) \
    $(wildcard include/config/arch/rv32i.h) \
    $(wildcard include/config/arch/rv64i.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/dm/pci.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/virtio.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/cmd/dhcp/or/pxe.h) \
    $(wildcard include/config/bootcommand.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/i2c.h) \

spl/u-boot-spl.lds: $(deps_spl/u-boot-spl.lds)

$(deps_spl/u-boot-spl.lds):
