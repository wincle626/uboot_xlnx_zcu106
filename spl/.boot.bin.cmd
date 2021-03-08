cmd_spl/boot.bin := ./tools/mkimage -T zynqmpimage -R ./"" -n "" -d spl/u-boot-spl-align.bin spl/boot.bin >/dev/null 
