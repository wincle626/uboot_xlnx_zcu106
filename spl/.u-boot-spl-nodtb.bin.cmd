cmd_spl/u-boot-spl-nodtb.bin := aarch64-linux-gnu-objcopy  -j .text -j .secure_text -j .secure_data -j .rodata -j .data -j .u_boot_list -j .rela.dyn -j .got -j .got.plt -j .binman_sym_table -j .text_rest -j .dtb.init.rodata -j .efi_runtime -j .efi_runtime_rel  -O binary  spl/u-boot-spl spl/u-boot-spl-nodtb.bin
