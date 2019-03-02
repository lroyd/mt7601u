cmd_/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o := arm-hisiv300-linux-gcc -Wp,-MD,/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/.auth.o.d  -nostdinc -isystem /opt/hisi-linux/x86-arm/arm-hisiv300-linux/bin/../lib/gcc/arm-hisiv300-linux-uclibcgnueabi/4.8.3/include -I/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/osdrv/opensource/kernel/linux-3.4.y/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/osdrv/opensource/kernel/linux-3.4.y/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-hi3518ev200/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -marm -fno-dwarf2-cfi-asm -fno-aggressive-loop-optimizations -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -DAGGREGATION_SUPPORT -DPIGGYBACK_SUPPORT -DWMM_SUPPORT -DLINUX -Wall -Wstrict-prototypes -Wno-trigraphs -DSYSTEM_LOG_SUPPORT -DRT28xx_MODE=STA -DCHIPSET=7601U -DRESOURCE_PRE_ALLOC -I/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include -DCONFIG_STA_SUPPORT -DSCAN_SUPPORT -DDBG -DWPA_SUPPLICANT_SUPPORT -DNATIVE_WPA_SUPPLICANT_SUPPORT -DDOT11_N_SUPPORT -DDOT11N_DRAFT3 -DSTATS_COUNT_SUPPORT -DOS_ABL_SUPPORT -DOS_ABL_FUNC_SUPPORT -DOS_ABL_OS_PCI_SUPPORT -DOS_ABL_OS_USB_SUPPORT -DOS_ABL_OS_AP_SUPPORT -DOS_ABL_OS_STA_SUPPORT -DEXPORT_SYMTAB -DMT7601U -DMT7601 -DRLT_MAC -DRLT_RF -DRTMP_MAC_USB -DRTMP_USB_SUPPORT -DRTMP_TIMER_TASK_SUPPORT -DRX_DMA_SCATTER -DVCORECAL_SUPPORT -DRTMP_EFUSE_SUPPORT -DNEW_MBSSID_MODE -DRTMP_INTERNAL_TX_ALC -DCONFIG_ANDES_SUPPORT -DDPD_CALIBRATION_SUPPORT -DCONFIG_RX_CSO_SUPPORT -DRTMP_FREQ_CALIBRATION_SUPPORT -DBLOCK_NET_IF  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(auth)"  -D"KBUILD_MODNAME=KBUILD_STR(mt7601Usta)" -c -o /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.c

source_/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o := /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.c

deps_/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o := \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rt_config.h \
    $(wildcard include/config/h//.h) \
    $(wildcard include/config/ap/support.h) \
    $(wildcard include/config/sta/support.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_comm.h \
    $(wildcard include/config/opmode/on/ap.h) \
    $(wildcard include/config/opmode/on/sta.h) \
    $(wildcard include/config/if/opmode/on/ap.h) \
    $(wildcard include/config/if/opmode/on/sta.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_type.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_os.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/os/rt_drv.h \
    $(wildcard include/config/multi/channel.h) \
    $(wildcard include/config/cso/support.h) \
    $(wildcard include/config/rx/cso/support.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/os/rt_linux_cmm.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/osdrv/opensource/kernel/linux-3.4.y/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/osdrv/opensource/kernel/linux-3.4.y/arch/arm/include/asm/posix_types.h \
  include/asm-generic/posix_types.h \
  /opt/hisi-linux/x86-arm/arm-hisiv300-linux/lib/gcc/arm-hisiv300-linux-uclibcgnueabi/4.8.3/include/stdarg.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/osdrv/opensource/kernel/linux-3.4.y/arch/arm/include/asm/string.h \
  include/linux/ctype.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/link_list.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_cmd.h \
    $(wildcard include/config/apsta/mixed/support.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/value.h) \
    $(wildcard include/config/init.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/iface/iface_util.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_def.h \
    $(wildcard include/config/desp/entry/size.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/oid.h \
    $(wildcard include/config/status.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_chip.h \
    $(wildcard include/config/andes/support.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/pbf.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/nmac/ral_nmac_pbf.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/eeprom.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/rtmp_mac.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/nmac/ral_nmac.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_type.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/omac/ral_omac_rxwi.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/nmac/ral_nmac_txwi.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/mac_usb.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/nmac/ral_nmac_usb.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/rtmp_mac.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/chip/rtmp_phy.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/rf_ctrl.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/phy/rlt_phy.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_iface.h \
    $(wildcard include/config/.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/iface/rtmp_usb.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtusb_io.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/wpa_cmm.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/dot11i_wpa.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_dot11.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_mcu.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/chip/mt7601.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_timer.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mlme.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_dot11.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/crypt_md5.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/crypt_sha2.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/crypt_hmac.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rt_config.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/crypt_aes.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/crypt_arc4.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp.h \
    $(wildcard include/config/t.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/spectrum_def.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/wsc.h \
    $(wildcard include/config/req.h) \
    $(wildcard include/config/methods.h) \
    $(wildcard include/config/methods/usba.h) \
    $(wildcard include/config/methods/ethernet.h) \
    $(wildcard include/config/methods/label.h) \
    $(wildcard include/config/methods/display.h) \
    $(wildcard include/config/methods/ent.h) \
    $(wildcard include/config/methods/int.h) \
    $(wildcard include/config/methods/nfci.h) \
    $(wildcard include/config/methods/pbc.h) \
    $(wildcard include/config/methods/keypad.h) \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/drs_extr.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_M51.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rtmp_and.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/radar.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/frq_cal.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/ap.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/wpa.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/chlist.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/spectrum.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rt_os_util.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/rt_os_net.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/chip/chip_id.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/netif_block.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/sta_cfg.h \
  /home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/include/mac_ral/fce.h \

/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o: $(deps_/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o)

$(deps_/home/lroyd/haisi/Hi3518E_SDK_V1.0.3.0/mpp/mt7601u/src/os/linux/../../sta/auth.o):
