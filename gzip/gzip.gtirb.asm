[INFO]  Reading GTIRB file:     "basilbench/gzip/gzip.gtirb"
[INFO]  Module gzip has integral symbols; attempting to assign referents...
#===================================
.arch armv8-a
#===================================


#===================================
.section .interp ,"a",@progbits
#===================================

.align 0
          .string "/nix/store/vziiw4k1kl88pqv47nhlgzf85mvhnbia-glibc-aarch64-unknown-linux-gnu-2.40-66/lib/ld-linux-aarch64.so.1"
#===================================
# end section .interp
#===================================

#===================================
.section .note.ABI-tag ,"a"
#===================================

.align 2
#-----------------------------------
.type __abi_tag, @object
.size __abi_tag, 32
#-----------------------------------
__abi_tag:
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x47
          .byte 0x4e
          .byte 0x55
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4002c8:
#===================================
# end section .note.ABI-tag
#===================================

#===================================
.section .init ,"ax",@progbits
#===================================

.align 2
#-----------------------------------
.globl __rela_iplt_end_copy
.type __rela_iplt_end_copy, @notype
#-----------------------------------
__rela_iplt_end_copy:
#-----------------------------------
.globl _init
.hidden _init
.type _init, @function
#-----------------------------------
_init:

            nop
            nop
            nop
            nop
            stp fp,lr,[sp,#-16]!
            mov fp,sp
            bl call_weak_fn
.L_401498:

            ldp fp,lr,[sp],#16
            ret 
.size _init, . - _init
#===================================
# end section .init
#===================================

#===================================
.text
#===================================

.align 6
#-----------------------------------
.globl main
.type main, @function
#-----------------------------------
main:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
            stp x27,x28,[sp,#80]
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 26, -40
.cfi_offset 27, -32
.cfi_offset 28, -24
            str w0,[sp,#108]
            ldr x0,[x1]
            str x1,[sp,#96]
            bl base_name

            mov x21,x0
            str x0,[x20,#1400]
            bl strlen

            cmp w0,#4
            b.le .L_401864

            sxtw x19,w0
            adrp x1, .L_40c948
            sub x19,x19,#4
            add x1,x1, :lo12:.L_40c948
            add x0,x21,x19
            bl strcmp

            cbz w0,.L_4019d4
.L_401864:

            add x1,sp,#96
            add x0,sp,#108
            adrp x2, .L_40c950
            add x2,x2, :lo12:.L_40c950
            bl add_envopt

            str x0,[x20,#1416]
            ldr x22,[sp,#96]
            cbz x0,.L_401888

            str x22,[x20,#1424]
.L_401888:

            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            mov x1,#1
            mov w0,#2
            bl signal

            cmp x0,#1
            cset w0,ne
            str w0,[x19,#3056]
            b.ne .L_4019dc
.L_4018ac:

            mov x1,#1
            mov w0,#15
            bl signal

            cmp x0,#1
            b.eq .L_4018d0

            adrp x1, abort_gzip_signal
            mov w0,#15
            add x1,x1, :lo12:abort_gzip_signal
            bl signal
.L_4018d0:

            mov x1,#1
            mov w0,w1
            bl signal

            cmp x0,#1
            b.eq .L_4018f4

            adrp x1, abort_gzip_signal
            mov w0,#1
            add x1,x1, :lo12:abort_gzip_signal
            bl signal
.L_4018f4:

            ldr x21,[x20,#1400]
            ldrb w0,[x21]
            cmp w0,#117
            b.ne .L_401998

            ldrb w0,[x21,#1]
            cmp w0,#110
            b.ne .L_401998
.L_401910:

            mov w0,#1
            str w0,[x19,#1604]
.L_401918:

            adrp x27, optind
            ldr w23,[sp,#108]
            add x26,x27, :lo12:optind
            adrp x21, .L_40ca60
            adrp x24, .L_40d130
            add x25,x26,#3136
            add x21,x21, :lo12:.L_40ca60
            add x24,x24, :lo12:.L_40d130
            adrp x0, .L_40c940
            mov x1,#3
            add x0,x0, :lo12:.L_40c940
            str x0,[x19,#1584]
            str x1,[x19,#3048]
.L_40194c:

            mov x3,x25
            mov x2,x21
            mov x1,x22
            mov w0,w23
            mov w5,#0
            mov x4,#0
            bl _getopt_internal

            cmn w0,#1
            b.eq .L_401c2c

            sub w1,w0,#49
            cmp w1,#69
            b.ls .L_401988
.L_40197c:

            bl usage

            mov w0,#1
            bl do_exit
.L_401988:

            ldrh w1,[x24,w1,uxtw #1]
            adr x2, .L_401998
            add x1,x2,w1, sxth #2
            br x1
.L_401998:

            adrp x1, .L_40c958
            mov x0,x21
            add x1,x1, :lo12:.L_40c958
            mov x2,#3
            bl strncmp

            cbz w0,.L_401910

            adrp x1, .L_40c960
            add x0,x21,#1
            add x1,x1, :lo12:.L_40c960
            bl strcmp

            cbnz w0,.L_4019fc
.L_4019c4:

            mov w0,#1
            str w0,[x19,#1604]
            str w0,[x19,#1660]
            b .L_401918
.L_4019d4:

            strb wzr,[x21,x19]
            b .L_401864
.L_4019dc:

            adrp x1, abort_gzip_signal
            mov w0,#2
            add x1,x1, :lo12:abort_gzip_signal
            bl signal

            b .L_4018ac
.L_4019f0:

            sub w0,w0,#48
            str w0,[x26,#336]
            b .L_40194c
.L_4019fc:

            adrp x1, .L_40c968
            mov x0,x21
            add x1,x1, :lo12:.L_40c968
            bl strcmp

            cbnz w0,.L_401918

            b .L_4019c4
.L_401a14:

            ldr x1,[x20,#1400]
            adrp x3, .L_40bd70
            adrp x2, .L_40bd80
            add x3,x3, :lo12:.L_40bd70
            add x2,x2, :lo12:.L_40bd80
            adrp x0, .L_40bd88
            add x0,x0, :lo12:.L_40bd88
            bl printf

            add x19,x26,#2976
            bl usage

            ldr x0,[x26,#2976]
            cbz x0,.L_401a50
.L_401a44:

            bl puts

            ldr x0,[x19,#8]!
            cbnz x0,.L_401a44
.L_401a50:

            mov w0,#0
            bl do_exit
.L_401a58:

            mov w0,#1
            str w0,[x19,#1660]
            b .L_40194c
.L_401a64:

            mov w0,#1
            str w0,[x19,#1604]
            b .L_40194c
.L_401a70:

            ldr w0,[x19,#1656]
            add w0,w0,#1
            str w0,[x19,#1656]
            b .L_40194c
.L_401a80:

            mov w0,#1
            str w0,[x19,#1604]
            str w0,[x19,#1660]
            str w0,[x19,#1672]
            b .L_40194c
.L_401a94:

            bl license

            b .L_401a50
.L_401a9c:

            mov w0,#1
            str w0,[x19,#3060]
            b .L_40194c
.L_401aa8:

            ldr x0,[x19,#440]
            mov x1,#0
            mov w2,#10
            bl strtol

            str w0,[x26,#2916]
            ldr x1,[x19,#440]
            ldrb w0,[x1]
            cbz w0,.L_40194c

            add x1,x1,#1
            b .L_401adc
.L_401ad0:

            str x1,[x19,#440]
            ldrb w0,[x1],#1
            cbz w0,.L_40194c
.L_401adc:

            sub w0,w0,#48
            and w0,w0,#255
            cmp w0,#9
            b.ls .L_401ad0

            ldr x2,[x20,#1400]
            adrp x1, .L_40c970
            add x1,x1, :lo12:.L_40c970
            adrp x0, stderr
.L_401afc:

            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            b .L_40197c
.L_401b08:

            mov w0,#1
            str w0,[x20,#1436]
            str wzr,[x19,#1668]
            b .L_40194c
.L_401b18:

            mov w0,#1
            str w0,[x19,#3040]
            b .L_40194c
.L_401b24:

            mov w0,#1
            str w0,[x19,#1604]
            str w0,[x19,#1648]
            str w0,[x19,#1660]
            b .L_40194c
.L_401b38:

            ldr w0,[x19,#1668]
            str wzr,[x20,#1436]
            add w0,w0,#1
            str w0,[x19,#1668]
            b .L_40194c
.L_401b4c:

            mov w0,#1
            str w0,[x26,#2600]
            b .L_40194c
.L_401b58:

            mov w0,#1
            str w0,[x26,#2600]
            str w0,[x26,#2604]
            b .L_40194c
.L_401b68:

            mov w0,#1
            str w0,[x19,#1624]
            b .L_40194c
.L_401b74:

            ldr x28,[x19,#440]
            mov x0,x28
            bl strlen

            str x28,[x19,#1584]
            str x0,[x19,#3048]
            b .L_40194c
.L_401b8c:

            bl license

            adrp x2, .L_40c998
            adrp x1, .L_40c9a0
            add x2,x2, :lo12:.L_40c998
            add x1,x1, :lo12:.L_40c9a0
            adrp x0, .L_40c9a8
            add x0,x0, :lo12:.L_40c9a8
            bl printf

            adrp x0, .L_40c9c8
            add x0,x0, :lo12:.L_40c9c8
            bl printf

            adrp x0, .L_40c9d8
            add x0,x0, :lo12:.L_40c9d8
            bl printf

            adrp x0, .L_40c9e8
            add x0,x0, :lo12:.L_40c9e8
            bl printf

            adrp x0, .L_40c9f8
            add x0,x0, :lo12:.L_40c9f8
            bl printf

            adrp x0, .L_40ca08
            add x0,x0, :lo12:.L_40ca08
            bl printf

            mov w0,#10
            bl putchar

            adrp x0, .L_40ca18
            add x0,x0, :lo12:.L_40ca18
            bl puts

            mov w0,#0
            bl do_exit
.L_401c04:

            ldr x2,[x20,#1400]
            adrp x1, .L_40ca38
            adrp x0, stderr
            add x1,x1, :lo12:.L_40ca38
            b .L_401afc
.L_401c18:

            str wzr,[x26,#2600]
            b .L_40194c
.L_401c20:

            str wzr,[x26,#2600]
            str wzr,[x26,#2604]
            b .L_40194c
.L_401c2c:

            ldr w0,[x20,#1436]
            cbnz w0,.L_401d0c
.L_401c34:

            ldr w0,[x26,#2600]
            tbnz w0,#31,.L_401d00
.L_401c3c:

            ldr w0,[x26,#2604]
            tbnz w0,#31,.L_401cf4
.L_401c44:

            ldr w0,[x19,#3060]
            ldr w21,[x27,:lo12:optind]
            cbz w0,.L_401c70

            ldr w0,[x20,#1436]
            cbnz w0,.L_401c70

            adrp x0, stderr
            adrp x1, .L_40ca88
            ldr x2,[x20,#1400]
            add x1,x1, :lo12:.L_40ca88
            ldr x0,[x0,:lo12:stderr]
            bl fprintf
.L_401c70:

            ldr x0,[x19,#3048]
            cbnz x0,.L_401cc8

            ldr w0,[x19,#1604]
            cbz w0,.L_401cd0
.L_401c80:

            subs w21,w23,w21
            b.ne .L_401c9c

            b .L_401d54
.L_401c8c:

            ldr x0,[x22,w1,sxtw #3]
            add w1,w1,#1
            str w1,[x26]
            bl treat_file
.L_401c9c:

            ldr w1,[x26]
            cmp w1,w23
            b.lt .L_401c8c

            ldr w0,[x19,#1672]
            cbz w0,.L_401cc0

            ldr w0,[x20,#1436]
            cmp w0,#0
            ccmp w21,#1,#4,eq
            b.gt .L_401d5c
.L_401cc0:

            ldr w0,[x20,#1408]
            bl do_exit
.L_401cc8:

            cmp x0,#30
            b.ls .L_401d34
.L_401cd0:

            adrp x0, stderr
            adrp x1, .L_40cab8
            ldr x2,[x20,#1400]
            add x1,x1, :lo12:.L_40cab8
            ldr x3,[x19,#1584]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            mov w0,#1
            bl do_exit
.L_401cf4:

            ldr w0,[x19,#1604]
            str w0,[x26,#2604]
            b .L_401c44
.L_401d00:

            ldr w0,[x19,#1604]
            str w0,[x26,#2600]
            b .L_401c3c
.L_401d0c:

            mov x1,#1
            mov w0,#13
            bl signal

            cmp x0,#1
            b.eq .L_401c34

            adrp x1, abort_gzip_signal
            mov w0,#13
            add x1,x1, :lo12:abort_gzip_signal
            bl signal

            b .L_401c34
.L_401d34:

            ldr w0,[x19,#3064]
            cbz w0,.L_401c80

            ldr w0,[x19,#1604]
            cbnz w0,.L_401c80

            adrp x0, lzw
            add x0,x0, :lo12:lzw
            str x0,[x26,#2592]
            b .L_401c80
.L_401d54:

            bl treat_stdin

            b .L_401cc0
.L_401d5c:

            mov w1,#-1
            mov w0,w1
            bl do_list

            b .L_401cc0
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size main, . - main
.align 4
#-----------------------------------
.globl _start
.type _start, @function
#-----------------------------------
_start:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            nop
            nop
            nop
            nop
.cfi_undefined 30
            mov fp,#0
            mov lr,#0
            mov x5,x0
            ldr x1,[sp]
            add x2,sp,#8
            mov x6,sp
            adrp x0, __wrap_main
            add x0,x0, :lo12:__wrap_main
            mov x3,#0
            mov x4,#0
            bl __libc_start_main

            bl abort
__wrap_main:

            nop
            nop
            nop
            nop
            b main
.cfi_endproc 

            nop
            nop
            nop
            nop
.size _start, . - _start
#-----------------------------------
.globl _dl_relocate_static_pie
.hidden _dl_relocate_static_pie
.type _dl_relocate_static_pie, @function
#-----------------------------------
_dl_relocate_static_pie:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ret 
.cfi_endproc 
.size _dl_relocate_static_pie, . - _dl_relocate_static_pie
#-----------------------------------
.type call_weak_fn, @function
#-----------------------------------
call_weak_fn:

            adrp x0, :got:__gmon_start__
            ldr x0,[x0,:got_lo12:__gmon_start__]
            cbz x0,.L_401dd4

            b __gmon_start__
.L_401dd4:

            ret 
.size call_weak_fn, . - call_weak_fn
          .byte 0x1f
          .byte 0x20
          .byte 0x3
          .byte 0xd5
          .byte 0x1f
          .byte 0x20
          .byte 0x3
          .byte 0xd5
#-----------------------------------
.type deregister_tm_clones, @function
#-----------------------------------
deregister_tm_clones:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            adrp x1, stderr
            add x1,x1, :lo12:stderr
            cmp x1,x0
            b.eq .L_401e0c

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_401e0c

            mov x16,x1
            br x16
.L_401e0c:

            ret 
.cfi_endproc 
.size deregister_tm_clones, . - deregister_tm_clones
#-----------------------------------
.type register_tm_clones, @function
#-----------------------------------
register_tm_clones:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            adrp x1, stderr
            add x1,x1, :lo12:stderr
            sub x1,x1,x0
            lsr x2,x1,#63
            add x1,x2,x1, asr #3
            asr x1,x1,#1
            cbz x1,.L_401e48

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_401e48

            mov x16,x2
            br x16
.L_401e48:

            ret 
.cfi_endproc 
.size register_tm_clones, . - register_tm_clones
#-----------------------------------
.type __do_global_dtors_aux, @function
#-----------------------------------
__do_global_dtors_aux:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            adrp x19, completed.0
            ldrb w0,[x19,:lo12:completed.0]
            tbnz w0,#0,.L_401e70

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_401e70:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __do_global_dtors_aux, . - __do_global_dtors_aux
#-----------------------------------
.type frame_dummy, @function
#-----------------------------------
frame_dummy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            b register_tm_clones
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size frame_dummy, . - frame_dummy
#-----------------------------------
.type rsync_roll, @function
#-----------------------------------
rsync_roll:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            add w6,w0,w1
            cmp w0,#4095
            b.hi .L_401f08

            adrp x9, rsync_sum
            adrp x4, window
            add x4,x4, :lo12:window
            mov w5,#4096
            ldr x3,[x9,:lo12:rsync_sum]
            mov w1,w1
            add x4,x4,w0, uxtw
            sub w5,w5,w0
            mov x2,#0
            mov w7,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401ee0:

            cmp x1,x2
            b.eq .L_401f84

            ldrb w0,[x4,x2]
            add x2,x2,#1
            mov w7,#1
            add x3,x3,x0
            cmp x2,x5
            b.ne .L_401ee0

            str x3,[x9,:lo12:rsync_sum]
            mov w0,#4096
.L_401f08:

            cmp w0,w6
            b.hs .L_401f80

            adrp x9, rsync_sum
            add x10,x9, :lo12:rsync_sum
            adrp x4, window
            mov w0,w0
            ldr x3,[x9,:lo12:rsync_sum]
            add x4,x4, :lo12:window
            ldr x5,[x10,#8]
            mov w8,#0
            mov x7,#4294967295
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_401f40:

            sub w2,w0,#1,lsl #12
            ldrb w1,[x4,x0]
            ldrb w2,[x4,w2,uxtw]
            sub x1,x1,x2
            add x3,x3,x1
            cmp x5,x7
            b.ne .L_401f68

            ands x1,x3,#4095
            csel x5,x5,x0,ne
            csinc w8,w8,wzr,ne
.L_401f68:

            add x0,x0,#1
            cmp w6,w0
            b.hi .L_401f40

            str x3,[x9,:lo12:rsync_sum]
            tbz w8,#0,.L_401f80

            str x5,[x10,#8]
.L_401f80:

            ret 
.L_401f84:

            cbz w7,.L_401f80

            str x3,[x9,:lo12:rsync_sum]
            ret 
.cfi_endproc 
.size rsync_roll, . - rsync_roll
#-----------------------------------
.type exchange, @function
#-----------------------------------
exchange:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x10, rsync_sum
            add x10,x10, :lo12:rsync_sum
            adrp x1, optind
            ldp w13,w6,[x10,#16]
            ldr w11,[x1,:lo12:optind]
            mov w7,w13
            cmp w6,w11
            mov w8,w11
            sxtw x12,w6
            ccmp w13,w6,#0,lt
            b.ge .L_402018

            nop
            nop
            nop
            nop
.L_401fc0:

            sub w9,w8,w6
            sub w3,w6,w7
            cmp w9,w3
            b.gt .L_402028

            cmp w9,#0
            b.le .L_402008

            sxtw x2,w7
            add x1,x0,w7, sxtw #3
            add x5,x2,w9, sxtw
            sub x2,x12,x2
            add x5,x0,x5, lsl #3
.L_401fec:

            ldr x4,[x1,x2,lsl #3]
            ldr x3,[x1]
            str x4,[x1]
            str x3,[x1,x2,lsl #3]
            add x1,x1,#8
            cmp x1,x5
            b.ne .L_401fec
.L_402008:

            add w7,w7,w9
.L_40200c:

            cmp w8,w6
            ccmp w7,w6,#0,gt
            b.lt .L_401fc0
.L_402018:

            sub w0,w11,w6
            add w0,w0,w13
            stp w0,w11,[x10,#16]
            ret 
.L_402028:

            sub w8,w8,w3
            sxtw x4,w7
            add x3,x4,w3, sxtw
            add x1,x0,w7, sxtw #3
            sxtw x2,w8
            sub x2,x2,x4
            add x3,x0,x3, lsl #3
.L_402044:

            ldr x5,[x1,x2,lsl #3]
            ldr x4,[x1]
            str x5,[x1]
            str x4,[x1,x2,lsl #3]
            add x1,x1,#8
            cmp x3,x1
            b.ne .L_402044

            b .L_40200c
.cfi_endproc 
.size exchange, . - exchange
#-----------------------------------
.type init_block, @function
#-----------------------------------
init_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x2, rsync_sum
            add x2,x2, :lo12:rsync_sum
            add x0,x2,#32
            add x1,x2,#1176
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402080:

            strh wzr,[x0],#4
            cmp x0,x1
            b.ne .L_402080

            add x0,x2,#2336
            add x1,x2,#2456
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4020a0:

            strh wzr,[x0],#4
            cmp x0,x1
            b.ne .L_4020a0

            add x0,x2,#2592
            add x1,x2,#2668
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4020c0:

            strh wzr,[x0],#4
            cmp x0,x1
            b.ne .L_4020c0

            mov w0,#1
            strh w0,[x2,#1056]
            str xzr,[x2,#2752]
            str xzr,[x2,#2760]
            str wzr,[x2,#2768]
            str wzr,[x2,#2772]
            str wzr,[x2,#2776]
            strb wzr,[x2,#2780]
            strb w0,[x2,#2781]
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size init_block, . - init_block
#-----------------------------------
.type pqdownheap, @function
#-----------------------------------
pqdownheap:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x9, heap+1568
            add x9,x9, :lo12:heap+1568
            adrp x13, rsync_sum
            add x13,x13, :lo12:rsync_sum
            add x6,x13,#2784
            lsl w4,w1,#1
            ldr w7,[x9,#724]
            ldr w15,[x6,w1,sxtw #2]
            cmp w4,w7
            b.gt .L_4021a8

            sbfiz x2,x15,#2,#32
            add x9,x9,#736
            sxtw x14,w15
            ldrh w12,[x0,x2]
            b .L_402150
.L_40213c:

            lsl w4,w2,#1
            str w3,[x6,w1,sxtw #2]
            mov w1,w2
            cmp w4,w7
            b.gt .L_4021a8
.L_402150:

            ldr w3,[x6,w4,sxtw #2]
            mov w2,w4
            sbfiz x5,x3,#2,#32
            sxtw x11,w3
            ldrh w5,[x0,x5]
            cmp w7,w4
            b.le .L_40218c

            add w2,w4,#1
            ldr w8,[x6,w2,sxtw #2]
            sbfiz x10,x8,#2,#32
            ldrh w10,[x0,x10]
            cmp w10,w5
            b.lo .L_4021b4

            b.eq .L_4021c0

            mov w2,w4
.L_40218c:

            cmp w12,w5
            b.lo .L_4021a8

            b.ne .L_40213c

            ldrb w5,[x9,x14]
            ldrb w4,[x9,w3,sxtw]
            cmp w5,w4
            b.hi .L_40213c
.L_4021a8:

            add x13,x13,#2784
            str w15,[x13,w1,sxtw #2]
            ret 
.L_4021b4:

            mov w5,w10
            mov w3,w8
            b .L_40218c
.L_4021c0:

            ldrb w10,[x9,x11]
            ldrb w11,[x9,w8,sxtw]
            cmp w11,w10
            csel w2,w2,w4,ls
            csel w3,w8,w3,ls
            b .L_40218c
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size pqdownheap, . - pqdownheap
#-----------------------------------
.type build_tree_1, @function
#-----------------------------------
build_tree_1:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            adrp x18, heap+1568
            add x18,x18, :lo12:heap+1568
            mov fp,sp
            mov x1,x0
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
            stp x27,x28,[sp,#80]
.cfi_offset 19, -128
.cfi_offset 20, -120
.cfi_offset 21, -112
.cfi_offset 22, -104
.cfi_offset 23, -96
.cfi_offset 24, -88
.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 27, -64
.cfi_offset 28, -56
            ldr w22,[x0,#28]
            str x0,[sp,#104]
            mov w0,#573
            str wzr,[x18,#724]
            str w0,[x18,#1312]
            ldp x0,x27,[x1]
            cmp w22,#0
            b.le .L_4026e8

            adrp x20, rsync_sum
            add x20,x20, :lo12:rsync_sum
            sxtw x22,w22
            add x6,x20,#2784
            mov x2,x0
            add x5,x18,#736
            mov x1,#0
            mov w4,#0
            mov w23,#0
            mov w19,#-1
            b .L_402278
.L_402254:

            add w23,w23,#1
            mov w19,w1
            strb wzr,[x1,x5]
            add x2,x2,#4
            mov w4,#1
            str w1,[x6,w23,sxtw #2]
            add x1,x1,#1
            cmp x22,x1
            b.eq .L_402294
.L_402278:

            ldrh w3,[x2]
            cbnz w3,.L_402254

            add x1,x1,#1
            strh wzr,[x2,#2]
            add x2,x2,#4
            cmp x22,x1
            b.ne .L_402278
.L_402294:

            cbz w4,.L_4026e0

            str w23,[x18,#724]
            cmp w23,#1
            b.gt .L_402338
.L_4022a4:

            ldr x6,[x20,#2752]
            sxtw x2,w23
            ldr x11,[x20,#2760]
            add x9,x20,#2784
            add x8,x18,#736
            mov w10,#0
            mov w7,#1
.L_4022c0:

            mov x5,x0
            mov w4,#0
            mov x1,#0
            cmp w19,#1
            b.gt .L_4022e4

            add w19,w19,#1
            mov w4,w19
            sbfiz x1,x19,#2,#32
            add x5,x0,x1
.L_4022e4:

            add x3,x9,x2, lsl #2
            strb wzr,[x8,w4,sxtw]
            add x1,x27,x1
            add x2,x2,#1
            str w4,[x3,#4]
            strh w7,[x5]
            cbz x27,.L_40230c

            ldrh w1,[x1,#2]
            mov w10,#1
            sub x6,x6,x1
.L_40230c:

            cmp w2,#1
            b.le .L_4022c0

            eor w23,w23,#1
            sub x1,x11,#1
            mov w2,#2
            str w2,[x18,#724]
            sub x1,x1,w23, sxtw
            str x1,[x20,#2760]
            cbz w10,.L_402334

            str x6,[x20,#2752]
.L_402334:

            mov w23,#2
.L_402338:

            ldr x1,[sp,#104]
            asr w21,w23,#1
            str w19,[x1,#36]
.L_402344:

            mov w1,w21
            bl pqdownheap

            subs w21,w21,#1
            b.ne .L_402344

            sxtw x26,w23
            add x21,x20,#2784
            add x24,x18,#736
            mov x25,#571
.L_402364:

            ldr w3,[x21,x26,lsl #2]
            sub w2,w26,#1
            ldr w28,[x21,#4]
            mov w1,#1
            str w3,[x21,#4]
            sub x26,x26,#1
            str w2,[x18,#724]
            bl pqdownheap

            str w25,[x18,#1312]
            ldr w2,[x21,#4]
            add x5,x21,x25, lsl #2
            sbfiz x1,x28,#2,#32
            ldrb w6,[x24,w28,sxtw]
            lsl x10,x22,#2
            add x8,x0,x1
            sbfiz x3,x2,#2,#32
            and w7,w22,#65535
            ldrh w1,[x0,x1]
            add x9,x0,x3
            ldrh w11,[x0,x3]
            add w3,w6,#1
            str w28,[x5,#4]
            and w3,w3,#255
            ldrb w5,[x24,w2,sxtw]
            add w1,w1,w11
            str w2,[x21,x25,lsl #2]
            sub x25,x25,#2
            add w2,w5,#1
            cmp w6,w5
            and w2,w2,#255
            strh w1,[x0,x10]
            csel w2,w2,w3,lo
            strh w7,[x9,#2]
            strh w7,[x8,#2]
            mov w1,#1
            strb w2,[x22,x24]
            str w22,[x21,#4]
            bl pqdownheap

            add x22,x22,#1
            cmp w26,#1
            b.gt .L_402364

            ldr x4,[sp,#104]
            neg w23,w23, lsl #1
            add w1,w23,#574
            ldr w2,[x21,#4]
            add x10,x18,#1328
            str w1,[x18,#1312]
            ldr x13,[x4,#16]
            str w2,[x21,w1,sxtw #2]
            add x1,x4,#32
            add x3,x0,w2, sxtw #2
            ldr w12,[x4,#24]
            add w23,w23,#575
            ldp w9,w8,[x1]
            stp xzr,xzr,[x10]
            stp xzr,xzr,[x10,#16]
            strh wzr,[x3,#2]
            cmp w23,#572
            b.gt .L_402620

            ldr x15,[x20,#2752]
            sxtw x2,w23
            ldr x11,[x20,#2760]
            add x17,x20,#2784
            mov w7,#0
            mov w16,#0
            mov w14,#0
.L_40246c:

            ldr w3,[x17,x2,lsl #2]
            mov w6,#0
            add x2,x2,#1
            sbfiz x4,x3,#2,#32
            add x5,x0,x4
            add x22,x27,x4
            ldrh w1,[x5,#2]
            add x1,x0,x1, lsl #2
            ldrh w1,[x1,#2]
            add w1,w1,#1
            cmp w9,w1
            b.ge .L_4024a4

            add w7,w7,#1
            mov w1,w9
.L_4024a4:

            strh w1,[x5,#2]
            cmp w8,w3
            b.lt .L_4024fc

            ldrh w5,[x10,w1,sxtw #1]
            mov w14,#1
            sub w23,w3,w12
            sxtw x21,w1
            add w5,w5,w14
            strh w5,[x10,w1,sxtw #1]
            cmp w12,w3
            b.gt .L_4024dc

            ldr w6,[x13,x23,lsl #2]
            add w1,w1,w6
            sxtw x21,w1
.L_4024dc:

            ldrh w3,[x0,x4]
            madd x11,x21,x3,x11
            cbz x27,.L_4024fc

            ldrh w1,[x22,#2]
            mov w16,w14
            add w1,w1,w6
            sxtw x1,w1
            madd x15,x1,x3,x15
.L_4024fc:

            cmp w2,#572
            b.le .L_40246c

            cbz w16,.L_40250c

            str x15,[x20,#2752]
.L_40250c:

            cbz w14,.L_402514

            str x11,[x20,#2760]
.L_402514:

            cbz w7,.L_402620

            sub w12,w9,#1
            add x5,x18,#1328
            sub w11,w7,#1
            sxtw x10,w9
            sxtw x13,w12
            and w11,w11,#4294967294
            sub w7,w7,#2
            mov x6,x10
            sub w11,w7,w11
            add x14,x5,x10, lsl #1
            ldrh w3,[x5,x13,lsl #1]
            cbnz w3,.L_402598
.L_402548:

            mov x2,x14
            mov w1,w12
.L_402550:

            ldurh w3,[x2,#-4]
            sub x2,x2,#2
            mov w4,w1
            sub w1,w1,#1
            cbz w3,.L_402550
.L_402564:

            sub w3,w3,#1
            strh w3,[x5,w1,sxtw #1]
            ldrh w1,[x5,w4,sxtw #1]
            add w1,w1,#2
            strh w1,[x5,w4,sxtw #1]
            ldrh w1,[x5,x10,lsl #1]
            sub w1,w1,#1
            strh w1,[x5,x10,lsl #1]
            cmp w7,w11
            b.eq .L_4025a4

            ldrh w3,[x5,x13,lsl #1]
            sub w7,w7,#2
            cbz w3,.L_402548
.L_402598:

            mov w4,w9
            mov w1,w12
            b .L_402564
.L_4025a4:

            cbz w9,.L_402620

            ldr x10,[x20,#2760]
            add x12,x18,#1328
            add x9,x20,#2784
            mov w11,#0
            mov w2,#573
            nop
            nop
            nop
            nop
.L_4025c0:

            ldrh w4,[x12,x6,lsl #1]
            cbz w4,.L_402610

            sub w2,w2,#1
            sxtw x2,w2
.L_4025d0:

            ldr w1,[x9,x2,lsl #2]
            sub x5,x2,#1
            cmp w8,w1
            b.lt .L_4026d4

            sbfiz x1,x1,#2,#32
            add x7,x0,x1
            ldrh w3,[x7,#2]
            cmp w3,w6
            b.eq .L_402608

            ldrh w1,[x0,x1]
            sub x3,x6,w3, uxtw
            mov w11,#1
            strh w6,[x7,#2]
            madd x10,x3,x1,x10
.L_402608:

            subs w4,w4,#1
            b.ne .L_4026d8
.L_402610:

            sub x6,x6,#1
            cbnz w6,.L_4025c0

            cbz w11,.L_402620

            str x10,[x20,#2760]
.L_402620:

            add x18,x18,#1328
            add x5,sp,#112
            mov x2,#0
            mov w1,#0
.L_402630:

            ldrh w4,[x18,x2]
            add x3,x5,x2
            add x2,x2,#2
            add w1,w1,w4
            ubfiz w4,w1,#1,#15
            strh w4,[x3,#2]
            ubfiz w1,w1,#1,#15
            cmp x2,#30
            b.ne .L_402630

            add x7,x0,#4
            add x7,x7,w19, uxtw #2
            tbz w19,#31,.L_402670

            b .L_4026b8
.L_402664:

            add x0,x0,#4
            cmp x7,x0
            b.eq .L_4026b8
.L_402670:

            ldrh w2,[x0,#2]
            cbz w2,.L_402664

            ubfiz x1,x2,#1,#16
            mov w4,#0
            ldrh w6,[x5,x1]
            mov w3,w6
            add w6,w6,#1
            strh w6,[x5,x1]
.L_402690:

            and w1,w3,#1
            subs w2,w2,#1
            orr w1,w1,w4
            lsr w3,w3,#1
            lsl w4,w1,#1
            b.ne .L_402690

            add x0,x0,#4
            sturh w1,[x0,#-4]
            cmp x7,x0
            b.ne .L_402670
.L_4026b8:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#144
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4026d4:

.cfi_restore_state 
            sub x5,x2,#1
.L_4026d8:

            mov x2,x5
            b .L_4025d0
.L_4026e0:

            mov w23,#0
            b .L_4022a4
.L_4026e8:

            adrp x20, rsync_sum
            sxtw x22,w22
            add x20,x20, :lo12:rsync_sum
            mov w23,#0
            mov w19,#-1
            b .L_4022a4
.cfi_endproc 
.size build_tree_1, . - build_tree_1
#-----------------------------------
.type scan_tree, @function
#-----------------------------------
scan_tree:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldrh w6,[x0,#2]
            add x4,x0,w1, sxtw #2
            mov w5,#-1
            mov w8,#3
            cmp w6,#0
            mov w3,#4
            strh w5,[x4,#6]
            mov w7,#138
            mov w2,#7
            csel w8,w8,w3,eq
            csel w7,w7,w2,eq
            tbnz w1,#31,.L_4028e4

            add x2,x0,#10
            adrp x10, rsync_sum
            add x0,x0,#6
            add x10,x10, :lo12:rsync_sum
            add x5,x2,w1, uxtw #2
            mov w2,#0
            mov w1,#-1
.L_40274c:

            add w2,w2,#1
            ldrh w4,[x0]
            cmp w2,w7
            b.lt .L_402904
.L_40275c:

            cbz w6,.L_40280c

            cmp w1,w6
            b.eq .L_4028f8

            add x3,x10,#2592
            sbfiz x2,x6,#2,#32
            mov x1,x10
            ldrh w7,[x3,x2]
            add w7,w7,#1
            strh w7,[x3,x2]
.L_402780:

            ldrh w2,[x1,#2656]
            add x0,x0,#4
            add w2,w2,#1
            strh w2,[x1,#2656]
            cbnz w4,.L_402894

            cmp x0,x5
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w8,#3
            mov w7,#138
            mov w2,#1
.L_4027ac:

            cmp w3,w4
            b.eq .L_402848
.L_4027b4:

            cmp w2,w8
            b.ge .L_4028e8

            adrp x1, rsync_sum
            add x1,x1, :lo12:rsync_sum
            add x1,x1,#2592
.L_4027c8:

            sbfiz x6,x4,#2,#32
            mov w9,w3
            add x0,x0,#4
            mov w8,#4
            mov w7,#7
            ldrh w11,[x1,x6]
            add w2,w2,w11
            strh w2,[x1,x6]
            cbz w3,.L_4028b8

            cmp x5,x0
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w2,#1
            cmp w9,w3
            b.eq .L_4028dc
.L_402804:

            mov w4,w9
            b .L_4027c8
.L_40280c:

            cmp w2,#10
            b.gt .L_402860

            ldrh w1,[x10,#2660]
            add w1,w1,#1
            strh w1,[x10,#2660]
            cbz w4,.L_402870
.L_402824:

            add x0,x0,#4
.L_402828:

            cmp x5,x0
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w8,#4
            mov w7,#7
            mov w2,#1
            cmp w3,w4
            b.ne .L_4027b4
.L_402848:

            add x0,x0,#4
            cmp x5,x0
            b.eq .L_4028e4

            mov w1,w6
            mov w6,w3
            b .L_40274c
.L_402860:

            ldrh w1,[x10,#2664]
            add w1,w1,#1
            strh w1,[x10,#2664]
            cbnz w4,.L_402824
.L_402870:

            add x0,x0,#4
            cmp x5,x0
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w4,#0
            mov w8,#3
            mov w7,#138
            mov w2,#1
            b .L_4027ac
.L_402894:

            cmp w4,w6
            b.ne .L_402828

            cmp x5,x0
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w8,#3
            mov w7,#6
            mov w2,#1
            b .L_4027ac
.L_4028b8:

            mov w9,#0
            cmp x5,x0
            b.eq .L_4028e4

            ldrh w3,[x0]
            mov w8,#3
            mov w7,#138
            mov w2,#1
            cmp w9,w3
            b.ne .L_402804
.L_4028dc:

            mov w6,w4
            b .L_402848
.L_4028e4:

            ret 
.L_4028e8:

            mov w1,w6
            mov w6,w4
            mov w4,w3
            b .L_40275c
.L_4028f8:

            adrp x1, rsync_sum
            add x1,x1, :lo12:rsync_sum
            b .L_402780
.L_402904:

            mov w3,w4
            mov w4,w6
            mov w6,w1
            b .L_4027ac
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size scan_tree, . - scan_tree
#-----------------------------------
.type fill_window, @function
#-----------------------------------
fill_window:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x0, window_size
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            ldr x20,[x0,:lo12:window_size]
            ldr w21,[x19,#1360]
            ldr w22,[x19,#1364]
            sub w20,w20,w21
            sub w20,w20,w22
            cmn w20,#1
            b.eq .L_402a80

            mov w0,#65273
            cmp w22,w0
            b.hi .L_4029cc
.L_402964:

            ldr w0,[x19,#1384]
            cbnz w0,.L_4029a0

            ldr x2,[x19,#1392]
            mov w1,w20
            ldr w3,[x19,#1364]
            adrp x0, window
            add x0,x0, :lo12:window
            add x21,x3,w21, uxtw
            add x0,x0,x21
            blr x2

            sub w1,w0,#1
            cmn w1,#3
            b.ls .L_4029b0

            mov w0,#1
            str w0,[x19,#1384]
.L_4029a0:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4029b0:

.cfi_restore_state 
            ldr w1,[x19,#1360]
            add w0,w1,w0
            str w0,[x19,#1360]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4029cc:

.cfi_restore_state 
            mov x2,#32768
            adrp x0, window
            adrp x1, window+32768
            add x0,x0, :lo12:window
            add x1,x1, :lo12:window+32768
            bl memcpy

            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            ldr w1,[x19,#1368]
            sub w22,w22,#8,lsl #12
            str w22,[x19,#1364]
            mov x3,#4294967295
            ldr x2,[x0,#8]
            sub w1,w1,#8,lsl #12
            str w1,[x19,#1368]
            cmp x2,x3
            b.eq .L_402a18

            sub x2,x2,#8,lsl #12
            str x2,[x0,#8]
.L_402a18:

            ldr x4,[x19,#1376]
            adrp x2, prev+65536
            adrp x0, prev
            add x2,x2, :lo12:prev+65536
            add x0,x0, :lo12:prev
            mov x1,x2
            movi v31.8h,#128,lsl #8
            add x3,x0,#32,lsl #12
            sub x4,x4,#8,lsl #12
            str x4,[x19,#1376]
.L_402a40:

            ldr q30,[x1]
            umax v30.8h,v30.8h,v31.8h
            add v30.8h,v30.8h,v31.8h
            str q30,[x1],#16
            cmp x3,x1
            b.ne .L_402a40

            movi v29.8h,#128,lsl #8
            nop
            nop
            nop
            nop
.L_402a60:

            ldr q28,[x0]
            umax v28.8h,v28.8h,v29.8h
            add v28.8h,v28.8h,v29.8h
            str q28,[x0],#16
            cmp x2,x0
            b.ne .L_402a60

            add w20,w20,#8,lsl #12
            b .L_402964
.L_402a80:

            mov w20,#-2
            b .L_402964
.cfi_endproc 
.size fill_window, . - fill_window
#-----------------------------------
.type usage, @function
#-----------------------------------
usage:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, progname
            adrp x3, .L_40ce48
            adrp x2, .L_40c1f8
            add x3,x3, :lo12:.L_40ce48
            ldr x1,[x0,:lo12:progname]
            add x2,x2, :lo12:.L_40c1f8
            adrp x0, .L_40bd38
            add x0,x0, :lo12:.L_40bd38
            b printf
.cfi_endproc 
.size usage, . - usage
#-----------------------------------
.type license, @function
#-----------------------------------
license:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x0, progname
            adrp x3, .L_40bd70
            mov fp,sp
            add x3,x3, :lo12:.L_40bd70
            ldr x1,[x0,:lo12:progname]
            adrp x2, .L_40bd80
            adrp x0, .L_40bd88
            add x2,x2, :lo12:.L_40bd80
            add x0,x0, :lo12:.L_40bd88
            str x19,[sp,#16]
.cfi_offset 19, -16
            bl printf

            adrp x0, optind
            add x0,x0, :lo12:optind
            add x19,x0,#16
            ldr x0,[x0,#16]
            cbz x0,.L_402afc
.L_402af0:

            bl puts

            ldr x0,[x19,#8]!
            cbnz x0,.L_402af0
.L_402afc:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size license, . - license
#-----------------------------------
.type progerror, @function
#-----------------------------------
progerror:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov x21,x0
            bl __errno_location

            adrp x2, stderr
            mov x20,x0
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x0,[x2,:lo12:stderr]
            ldr x2,[x19,#1400]
            ldr w22,[x20]
            bl fprintf

            str w22,[x20]
            mov x0,x21
            bl perror

            mov w0,#1
            str w0,[x19,#1408]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size progerror, . - progerror
#-----------------------------------
.type do_exit, @function
#-----------------------------------
do_exit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            mov w20,w0
            ldr w0,[x19,#1412]
            cbnz w0,.L_402bb4

            ldr x0,[x19,#1416]
            mov w1,#1
            str w1,[x19,#1412]
            cbz x0,.L_402ba4

            bl free

            str xzr,[x19,#1416]
.L_402ba4:

            ldr x0,[x19,#1424]
            cbz x0,.L_402bb4

            bl free

            str xzr,[x19,#1424]
.L_402bb4:

            mov w0,w20
            bl exit
.cfi_endproc 

            nop
            nop
            nop
            nop
.size do_exit, . - do_exit
.align 4
#-----------------------------------
.globl lzw
.type lzw, @function
#-----------------------------------
lzw:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov w21,w0
            ldr w0,[x19,#1432]
            cbz w0,.L_402bf8
.L_402be4:

            ldp x19,x20,[sp,#16]
            mov w0,#1
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402bf8:

.cfi_restore_state 
            mov w20,w1
            adrp x1, stderr
            mov w22,#1
            adrp x0, .L_40bda0
            ldr x3,[x1,:lo12:stderr]
            add x0,x0, :lo12:.L_40bda0
            mov x2,#43
            mov x1,#1
            str w22,[x19,#1432]
            bl fwrite

            cmp w21,w20
            b.eq .L_402be4

            str w22,[x19,#1408]
            mov w0,#1
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size lzw, . - lzw
#-----------------------------------
.type reset_times, @function
#-----------------------------------
reset_times:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov x19,x1
            add x1,sp,#48
            ldr x2,[x19,#72]
            str x2,[sp,#48]
            ldr x2,[x19,#88]
            str x2,[sp,#56]
            bl utime

            cbz w0,.L_402c9c

            ldr w0,[x19,#16]
            and w0,w0,#61440
            cmp w0,#4,lsl #12
            b.eq .L_402c9c

            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            ldr w0,[x19,#1436]
            cbz w0,.L_402ca8

            ldr w0,[x19,#1408]
            cbnz w0,.L_402c9c

            mov w0,#2
            str w0,[x19,#1408]
.L_402c9c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402ca8:

.cfi_restore_state 
            str x21,[sp,#32]
.cfi_offset 21, -32
            bl __errno_location

            adrp x3, stderr
            mov x20,x0
            ldr x2,[x19,#1400]
            adrp x1, .L_40bd98
            ldr x0,[x3,:lo12:stderr]
            add x1,x1, :lo12:.L_40bd98
            ldr w21,[x20]
            bl fprintf

            ldr w1,[x19,#1408]
            ldr w0,[x19,#1436]
            cbnz w1,.L_402ce4

            mov w1,#2
            str w1,[x19,#1408]
.L_402ce4:

            cbz w0,.L_402cf8

            ldr x21,[sp,#32]
.cfi_remember_state 
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402cf8:

.cfi_restore_state 
            str w21,[x20]
            add x0,x19,#1440
            bl perror

            ldr x21,[sp,#32]
.cfi_restore 21
            b .L_402c9c
.cfi_endproc 
.size reset_times, . - reset_times
#-----------------------------------
.type ct_init.part.0, @function
#-----------------------------------
ct_init.part.0:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -96
.cfi_offset 22, -88
            adrp x22, heap+1568
            add x22,x22, :lo12:heap+1568
            stp x23,x24,[sp,#48]
.cfi_offset 23, -80
.cfi_offset 24, -72
            adrp x23, optind
            add x23,x23, :lo12:optind
            stp x25,x26,[sp,#64]
.cfi_offset 25, -64
.cfi_offset 26, -56
            add x26,x22,#2592
            add x25,x23,#80
            str x27,[sp,#80]
.cfi_offset 27, -48
            add x27,x22,#2464
            mov w21,#0
            mov w24,#1
            stp x19,x20,[sp,#16]
.cfi_offset 19, -112
.cfi_offset 20, -104
            mov x20,#0
.L_402d50:

            ldr w19,[x25,x20,lsl #2]
            str w21,[x27,x20,lsl #2]
            mov w1,w20
            add x0,x26,w21, sxtw
            lsl w2,w24,w19
            mov x19,x2
            cmp w2,#0
            b.le .L_402d78

            add w21,w21,w19
            bl memset
.L_402d78:

            add x20,x20,#1
            cmp x20,#28
            b.ne .L_402d50

            sub w0,w21,#1
            add x1,x22,#2592
            add x26,x22,#2848
            add x27,x23,#208
            add x25,x22,#2976
            mov x19,#0
            mov w21,#0
            mov w24,#1
            strb w20,[x1,w0,sxtw]
.L_402da8:

            ldr w20,[x27,x19,lsl #2]
            mov w1,w19
            str w21,[x26,x19,lsl #2]
            add x0,x25,w21, sxtw
            lsl w2,w24,w20
            mov x20,x2
            cmp w2,#0
            b.le .L_402dd0

            add w21,w21,w20
            bl memset
.L_402dd0:

            add x19,x19,#1
            cmp x19,#16
            b.ne .L_402da8

            asr w21,w21,#7
            add x23,x23,#208
            add x26,x22,#2848
            add x25,x22,#2976
            mov w24,#1
.L_402df0:

            ldr w20,[x23,x19,lsl #2]
            sxtw x0,w21
            lsl w2,w21,#7
            add x0,x0,#256
            sub w20,w20,#7
            str w2,[x26,x19,lsl #2]
            mov w1,w19
            add x0,x25,x0
            lsl w2,w24,w20
            mov x20,x2
            cmp w2,#0
            b.le .L_402e28

            add w21,w21,w20
            bl memset
.L_402e28:

            add x19,x19,#1
            cmp x19,#30
            b.ne .L_402df0

            add x3,x22,#1328
            add x7,x22,#3488
            mov x4,x7
            add x0,x22,#3490
            add x2,x22,#4066
            mov w1,#8
            stp xzr,xzr,[x3]
            stp xzr,xzr,[x3,#16]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402e60:

            strh w1,[x0],#4
            cmp x2,x0
            b.ne .L_402e60

            add x0,x22,#4066
            add x2,x7,#1026
            mov w1,#9
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402e80:

            strh w1,[x0],#4
            cmp x2,x0
            b.ne .L_402e80

            mov x0,#4514
            add x2,x7,#1122
            add x0,x22,x0
            mov w3,#112
            mov w1,#7
            strh w3,[x22,#1346]
.L_402ea4:

            strh w1,[x0],#4
            cmp x2,x0
            b.ne .L_402ea4

            add x6,x22,#1328
            mov w3,#24
            add x5,sp,#96
            mov w2,#8
            movk w3,#152,lsl #16
            mov x1,#0
            mov w0,#0
            stur w3,[x6,#14]
            strh w2,[x22,#4610]
            strh w2,[x22,#4614]
            strh w2,[x22,#4618]
            strh w2,[x22,#4622]
            strh w2,[x22,#4626]
            strh w2,[x22,#4630]
            strh w2,[x22,#4634]
            strh w2,[x22,#4638]
.L_402ef0:

            ldrh w3,[x6,x1]
            add x2,x5,x1
            add x1,x1,#2
            add w0,w0,w3
            ubfiz w3,w0,#1,#15
            strh w3,[x2,#2]
            ubfiz w0,w0,#1,#15
            cmp x1,#30
            b.ne .L_402ef0

            add x7,x7,#1152
            b .L_402f28
.L_402f1c:

            add x4,x4,#4
            cmp x4,x7
            b.eq .L_402f70
.L_402f28:

            ldrh w1,[x4,#2]
            cbz w1,.L_402f1c

            ubfiz x0,x1,#1,#16
            mov w3,#0
            ldrh w6,[x5,x0]
            mov w2,w6
            add w6,w6,#1
            strh w6,[x5,x0]
.L_402f48:

            and w0,w2,#1
            subs w1,w1,#1
            orr w0,w0,w3
            lsr w2,w2,#1
            lsl w3,w0,#1
            b.ne .L_402f48

            add x4,x4,#4
            sturh w0,[x4,#-4]
            cmp x4,x7
            b.ne .L_402f28
.L_402f70:

            adrp x5, static_ltree+864
            add x5,x5, :lo12:static_ltree+864
            add x5,x5,#288
            mov w4,#0
            mov w6,#5
.L_402f84:

            mov w2,w4
            mov w3,#0
            mov w1,#5
            strh w6,[x5,#2]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_402fa0:

            and w0,w2,#1
            subs w1,w1,#1
            orr w0,w0,w3
            lsr w2,w2,#1
            lsl w3,w0,#1
            b.ne .L_402fa0

            add w4,w4,#1
            strh w0,[x5],#4
            cmp w4,#30
            b.ne .L_402f84

            ldr x27,[sp,#80]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b init_block
.cfi_endproc 
.size ct_init.part.0, . - ct_init.part.0
.align 2
#-----------------------------------
.globl abort_gzip_signal
.type abort_gzip_signal, @function
#-----------------------------------
abort_gzip_signal:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, static_ltree+864
            add x0,x0, :lo12:static_ltree+864
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            ldr w1,[x0,#408]
            cbnz w1,.L_403004
.L_402ffc:

            mov w0,#1
            bl _exit
.L_403004:

            ldr w0,[x0,#412]
            bl close

            adrp x0, heap+1568
            add x0,x0, :lo12:heap+1568
            add x0,x0,#1440
            bl unlink

            b .L_402ffc
.cfi_endproc 
.size abort_gzip_signal, . - abort_gzip_signal
.align 4
#-----------------------------------
.globl bi_init
.type bi_init, @function
#-----------------------------------
bi_init:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x1, static_ltree+864
            add x1,x1, :lo12:static_ltree+864
            strh wzr,[x1,#416]
            str wzr,[x1,#420]
            cmn w0,#1
            b.eq .L_403048

            adrp x0, read_buf
            adrp x1, file_read
            add x1,x1, :lo12:file_read
            str x1,[x0,:lo12:read_buf]
.L_403048:

            ret 
.cfi_endproc 
.size bi_init, . - bi_init
.align 2
#-----------------------------------
.globl bi_reverse
.type bi_reverse, @function
#-----------------------------------
bi_reverse:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov w3,#0
.L_403050:

            and w2,w0,#1
            sub w1,w1,#1
            orr w2,w2,w3
            lsr w0,w0,#1
            lsl w3,w2,#1
            cmp w1,#0
            b.gt .L_403050

            and w0,w2,#2147483647
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size bi_reverse, . - bi_reverse
.align 4
#-----------------------------------
.globl longest_match
.type longest_match, @function
#-----------------------------------
longest_match:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x14, heap+1568
            adrp x13, static_ltree+864
            add x14,x14, :lo12:heap+1568
            add x13,x13, :lo12:static_ltree+864
            mov w1,w0
            adrp x6, window
            add x6,x6, :lo12:window
            mov w2,#32506
            ldr w0,[x13,#428]
            adrp x9, prev
            ldr w7,[x14,#1364]
            add x9,x9, :lo12:prev
            ldr w5,[x13,#424]
            mov w12,w7
            sxtw x3,w0
            add x11,x6,x12
            ldr w8,[x13,#432]
            add x4,x11,x3
            cmp w7,w2
            csel w7,w7,w2,hs
            add x12,x12,#258
            cmp w0,w8
            ldrb w10,[x11,w0,sxtw]
            ldurb w15,[x4,#-1]
            lsr w4,w5,#2
            add x12,x6,x12
            sub w7,w7,w2
            csel w5,w4,w5,hs
            b .L_403110
.L_4030f4:

            and x1,x1,#32767
            ldrh w1,[x9,x1,lsl #1]
            cmp w7,w1
            b.hs .L_403224
.L_403104:

            subs w5,w5,#1
            b.eq .L_403224

            sxtw x3,w0
.L_403110:

            add x2,x6,w1, uxtw
            ldrb w4,[x2,x3]
            cmp w4,w10
            b.ne .L_4030f4

            add x3,x2,x3
            ldurb w3,[x3,#-1]
            cmp w3,w15
            b.ne .L_4030f4

            ldrb w4,[x6,w1,uxtw]
            ldrb w3,[x11]
            cmp w4,w3
            b.ne .L_4030f4

            ldrb w4,[x2,#1]
            ldrb w3,[x11,#1]
            cmp w4,w3
            b.ne .L_4030f4

            add x2,x2,#2
            add x3,x11,#2
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403160:

            ldrb w8,[x3,#1]
            ldrb w4,[x2,#1]
            cmp w8,w4
            b.ne .L_403228

            ldrb w8,[x3,#2]
            ldrb w4,[x2,#2]
            cmp w8,w4
            b.ne .L_403230

            ldrb w8,[x3,#3]
            ldrb w4,[x2,#3]
            cmp w8,w4
            b.ne .L_403238

            ldrb w8,[x3,#4]
            ldrb w4,[x2,#4]
            cmp w8,w4
            b.ne .L_403240

            ldrb w8,[x3,#5]
            ldrb w4,[x2,#5]
            cmp w8,w4
            b.ne .L_403250

            ldrb w8,[x3,#6]
            ldrb w4,[x2,#6]
            cmp w8,w4
            b.ne .L_403248

            ldrb w8,[x3,#7]
            ldrb w4,[x2,#7]
            cmp w8,w4
            b.ne .L_403258

            ldrb w8,[x3,#8]!
            ldrb w4,[x2,#8]!
            cmp w8,w4
            ccmp x12,x3,#0,eq
            b.hi .L_403160
.L_4031e4:

            sub w3,w3,w12
            add w3,w3,#258
            cmp w0,w3
            b.ge .L_4030f4

            ldr w0,[x13,#436]
            str w1,[x14,#1368]
            cmp w0,w3
            b.le .L_403260

            and x1,x1,#32767
            add x2,x11,w3, sxtw
            ldrb w10,[x11,w3,sxtw]
            mov w0,w3
            ldrh w1,[x9,x1,lsl #1]
            ldurb w15,[x2,#-1]
            cmp w7,w1
            b.lo .L_403104
.L_403224:

            ret 
.L_403228:

            add x3,x3,#1
            b .L_4031e4
.L_403230:

            add x3,x3,#2
            b .L_4031e4
.L_403238:

            add x3,x3,#3
            b .L_4031e4
.L_403240:

            add x3,x3,#4
            b .L_4031e4
.L_403248:

            add x3,x3,#6
            b .L_4031e4
.L_403250:

            add x3,x3,#5
            b .L_4031e4
.L_403258:

            add x3,x3,#7
            b .L_4031e4
.L_403260:

            mov w0,w3
            ret 
.cfi_endproc 
.size longest_match, . - longest_match
.align 3
#-----------------------------------
.globl _getopt_internal
.type _getopt_internal, @function
#-----------------------------------
_getopt_internal:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -160
.cfi_offset 20, -152
            mov w19,w0
            mov x20,x1
            stp x23,x24,[sp,#48]
.cfi_offset 23, -128
.cfi_offset 24, -120
            mov x24,x2
            ldrb w0,[x2]
            str x3,[sp,#128]
            str w5,[sp,#140]
            str x4,[sp,#152]
            str wzr,[sp,#160]
            cmp w0,#58
            b.eq .L_4032ac

            adrp x0, opterr
            ldr w0,[x0,:lo12:opterr]
            str w0,[sp,#160]
.L_4032ac:

            cmp w19,#0
            b.le .L_40348c

            stp x27,x28,[sp,#80]
.cfi_offset 28, -88
.cfi_offset 27, -96
            adrp x28, optind
            adrp x5, static_ltree+864
            add x23,x5, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 22, -136
.cfi_offset 21, -144
            ldr w21,[x28,:lo12:optind]
            stp x25,x26,[sp,#64]
.cfi_offset 26, -104
.cfi_offset 25, -112
            str xzr,[x23,#440]
            cbz w21,.L_4033a8

            ldr w0,[x23,#448]
            cbnz w0,.L_4033b8
.L_4032e0:

            adrp x22, rsync_sum
            add x22,x22, :lo12:rsync_sum
            adrp x0, .L_40bdd0
            add x0,x0, :lo12:.L_40bdd0
            stp w21,w21,[x22,#16]
            str xzr,[x23,#456]
            bl getenv

            str x0,[x23,#464]
            ldrb w1,[x24]
            cmp w1,#45
            b.eq .L_403538

            cmp w1,#43
            b.eq .L_403784

            cbz x0,.L_40384c

            ldr w0,[x28,:lo12:optind]
            mov w1,#1
            str w1,[x23,#448]
            str wzr,[x23,#472]
            cmp w0,w21
            b.ge .L_403340

            stp w0,w0,[x22,#16]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403340:

            mov w2,#0
.L_403344:

            cmp w19,w0
            b.eq .L_403470
.L_40334c:

            ldr x3,[x20,w0,sxtw #3]
            str x3,[sp,#120]
            ldrb w1,[x3]
            cmp w1,#45
            b.ne .L_403560

            ldrb w1,[x3,#1]
            cmp w1,#45
            b.ne .L_403560

            ldrb w1,[x3,#2]
            cbnz w1,.L_403560

            add w0,w0,#1
            str w0,[x28,:lo12:optind]
            ldp w1,w2,[x22,#16]
            cmp w1,w2
            b.eq .L_403a1c

            cmp w0,w2
            b.eq .L_40339c

            mov x0,x20
            bl exchange

            ldr w1,[x22,#16]
.L_40339c:

            str w19,[x28,:lo12:optind]
            str w19,[x22,#20]
            b .L_403474
.L_4033a8:

            mov w0,#1
            mov w21,w0
            str w0,[x28,:lo12:optind]
            b .L_4032e0
.L_4033b8:

            ldr x26,[x23,#456]
            cbz x26,.L_4033c8

            ldrb w25,[x26]
            cbnz w25,.L_403494
.L_4033c8:

            adrp x22, rsync_sum
            add x22,x22, :lo12:rsync_sum
            ldr w2,[x23,#472]
            ldp w0,w1,[x22,#16]
            cmp w21,w1
            b.ge .L_4033e4

            str w21,[x22,#20]
.L_4033e4:

            cmp w21,w0
            mov w0,w21
            b.ge .L_4033f4
.L_4033f0:

            str w0,[x22,#16]
.L_4033f4:

            cmp w2,#1
            b.ne .L_403344
.L_4033fc:

            ldp w2,w1,[x22,#16]
            cmp w2,w1
            b.eq .L_40394c

            cmp w1,w0
            b.eq .L_40341c

            mov x0,x20
            bl exchange

            ldr w0,[x28,:lo12:optind]
.L_40341c:

            cmp w19,w0
            b.le .L_403afc

            sxtw x0,w0
            b .L_40343c
.L_40342c:

            add x0,x0,#1
            str w1,[x28,:lo12:optind]
            cmp w19,w0
            b.le .L_40380c
.L_40343c:

            ldr x2,[x20,x0,lsl #3]
            add w1,w0,#1
            ldrb w3,[x2]
            cmp w3,#45
            b.ne .L_40342c

            ldrb w2,[x2,#1]
            cbz w2,.L_40342c

            mov w1,w0
            ldr w0,[x28,:lo12:optind]
.L_403460:

            str w1,[x22,#20]
            mov w2,#1
            cmp w19,w0
            b.ne .L_40334c
.L_403470:

            ldp w1,w19,[x22,#16]
.L_403474:

            cmp w1,w19
            b.eq .L_403a08

            str w1,[x28,:lo12:optind]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_40348c:

.cfi_restore 28
.cfi_restore 27
            mov w0,#-1
            b .L_403594
.L_403494:

.cfi_offset 21, -144
.cfi_offset 22, -136
.cfi_offset 25, -112
.cfi_offset 26, -104
.cfi_offset 27, -96
.cfi_offset 28, -88
            ldr x0,[sp,#128]
            cbz x0,.L_4034bc

            ldr x0,[x20,w21,sxtw #3]
            str x0,[sp,#120]
            ldrb w0,[x0,#1]
            str w0,[sp,#168]
            cmp w0,#45
            b.eq .L_403640
.L_4034b4:

            ldr w0,[sp,#140]
            cbnz w0,.L_4035d8
.L_4034bc:

            ldrb w0,[x24]
.L_4034c0:

            add x27,x26,#1
            str x27,[x23,#456]
            ldrb w2,[x26,#1]
            cbz w0,.L_4037a8

            str x24,[sp,#96]
            b .L_4034e0
.L_4034d8:

            ldrb w0,[x24,#1]!
            cbz w0,.L_4037a8
.L_4034e0:

            cmp w25,w0
            b.ne .L_4034d8

            cbnz w2,.L_4034f8

            ldr w0,[x28,:lo12:optind]
            add w0,w0,#1
            str w0,[x28,:lo12:optind]
.L_4034f8:

            cmp w25,#58
            b.eq .L_4037b8

            ldrb w0,[x24]
            ldrb w2,[x24,#1]
            cmp w0,#87
            b.eq .L_40386c
.L_403510:

            mov w0,w25
            cmp w2,#58
            b.eq .L_40395c
.L_40351c:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_403538:

.cfi_restore_state 
            ldr w0,[x28,:lo12:optind]
            mov w2,#2
            mov w1,#1
            str w1,[x23,#448]
            str w2,[x23,#472]
            add x24,x24,#1
            cmp w0,w21
            b.ge .L_403344

            str w0,[x22,#20]
            b .L_4033f0
.L_403560:

            ldr x1,[sp,#120]
            ldrb w1,[x1]
            cmp w1,#45
            b.eq .L_4035a4
.L_403570:

            cbz w2,.L_403a08

            add w1,w0,#1
            str w1,[x28,:lo12:optind]
            ldr x1,[sp,#120]
            str x1,[x23,#440]
            mov w0,#1
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_403594:

.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4035a4:

.cfi_def_cfa_offset 176
.cfi_offset 19, -160
.cfi_offset 20, -152
.cfi_offset 21, -144
.cfi_offset 22, -136
.cfi_offset 23, -128
.cfi_offset 24, -120
.cfi_offset 25, -112
.cfi_offset 26, -104
.cfi_offset 27, -96
.cfi_offset 28, -88
.cfi_offset 29, -176
.cfi_offset 30, -168
            ldr x1,[sp,#120]
            ldrb w25,[x1,#1]
            cbz w25,.L_403570

            ldr x1,[sp,#128]
            cbz x1,.L_403a58

            cmp w25,#45
            b.eq .L_403620

            mov w21,w0
            str w25,[sp,#168]
            ldr x0,[sp,#120]
            add x26,x0,#1
            str x26,[x23,#456]
            b .L_4034b4
.L_4035d8:

            ldr x0,[sp,#120]
            ldrb w0,[x0,#2]
            cbnz w0,.L_403640

            ldrb w0,[x24]
            cbz w0,.L_403640

            mov w2,w0
            mov x4,x24
            b .L_403600
.L_4035f8:

            ldrb w2,[x4,#1]!
            cbz w2,.L_403640
.L_403600:

            ldr w1,[sp,#168]
            cmp w2,w1
            b.ne .L_4035f8
.L_40360c:

            add x27,x26,#1
            ldrb w2,[x26,#1]
            str x24,[sp,#96]
            str x27,[x23,#456]
            b .L_4034e0
.L_403620:

            mov w21,w0
            str w25,[sp,#168]
            ldr x0,[sp,#120]
            add x26,x0,#2
            str x26,[x23,#456]
            ldrb w25,[x0,#2]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403640:

            str x26,[sp,#96]
            cmp w25,#61
            ccmp w25,#0,#4,ne
            b.eq .L_403668
.L_403650:

            ldr x1,[sp,#96]
            ldrb w0,[x1,#1]!
            str x1,[sp,#96]
            cmp w0,#61
            ccmp w0,#0,#4,ne
            b.ne .L_403650
.L_403668:

            ldr x27,[sp,#128]
            ldr x4,[x27]
            cbz x4,.L_4039a4

            ldr x0,[sp,#96]
            mov w22,#0
            str xzr,[sp,#144]
            sub x0,x0,x26
            str x0,[sp,#104]
            mov w0,#-1
            str wzr,[sp,#164]
            str w0,[sp,#172]
            b .L_4036c4
.L_403698:

            ldr w1,[sp,#140]
            cbnz w1,.L_4036b0

            ldr w2,[x0,#8]
            ldr w0,[x27,#8]
            cmp w2,w0
            b.eq .L_403814
.L_4036b0:

            mov w0,#1
            str w0,[sp,#164]
.L_4036b8:

            ldr x4,[x27,#32]!
            add w22,w22,#1
            cbz x4,.L_403710
.L_4036c4:

            ldr x2,[sp,#104]
            mov x1,x26
            mov x0,x4
            str x4,[sp,#112]
            bl strncmp

            cbnz w0,.L_4036b8

            ldr x4,[sp,#112]
            mov x0,x4
            bl strlen

            ldr w1,[sp,#104]
            cmp w1,w0
            b.eq .L_403724

            ldr x0,[sp,#144]
            cbnz x0,.L_403698

            str x27,[sp,#144]
            ldr x4,[x27,#32]!
            str w22,[sp,#172]
            add w22,w22,#1
            cbnz x4,.L_4036c4
.L_403710:

            ldr w0,[sp,#164]
            cbnz w0,.L_403a28

            ldr x27,[sp,#144]
            cbz x27,.L_4039a4

            ldr w22,[sp,#172]
.L_403724:

            ldr x1,[sp,#96]
            add w0,w21,#1
            str w0,[x28,:lo12:optind]
            ldr w2,[x27,#8]
            ldrb w3,[x1]
            cbnz w3,.L_403994

            cmp w2,#1
            b.eq .L_403a84
.L_403744:

            mov x0,x26
            bl strlen

            add x0,x26,x0
            str x0,[x23,#456]
            ldr x0,[sp,#152]
            cbz x0,.L_403760

            str w22,[x0]
.L_403760:

            ldr x1,[x27,#16]
            ldr w0,[x27,#24]
            cbz x1,.L_40351c
.L_40376c:

            str w0,[x1]
            mov w0,#0
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403784:

.cfi_restore_state 
            ldr w0,[x28,:lo12:optind]
            mov w1,#1
            str w1,[x23,#448]
            add x24,x24,#1
            str wzr,[x23,#472]
            cmp w0,w21
            b.ge .L_403340

            stp w0,w0,[x22,#16]
            b .L_403340
.L_4037a8:

            cbnz w2,.L_4037b8

            ldr w0,[x28,:lo12:optind]
            add w0,w0,#1
            str w0,[x28,:lo12:optind]
.L_4037b8:

            ldr w0,[sp,#160]
            cbz w0,.L_4037e4

            ldr x1,[x23,#464]
            adrp x0, stderr
            ldr x2,[x20]
            ldr x0,[x0,:lo12:stderr]
            cbz x1,.L_403b90

            adrp x1, .L_40bec8
            mov w3,w25
            add x1,x1, :lo12:.L_40bec8
            bl fprintf
.L_4037e4:

            add x7,x28, :lo12:optind
            str w25,[x7,#332]
.L_4037ec:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#63
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40380c:

.cfi_restore_state 
            mov w0,w1
            b .L_403460
.L_403814:

            ldr x0,[sp,#144]
            ldr x2,[x0,#16]
            ldr x0,[x27,#16]
            cmp x2,x0
            b.ne .L_4036b0

            ldr x0,[sp,#144]
            ldr w1,[sp,#164]
            ldr w2,[x0,#24]
            ldr w0,[x27,#24]
            cmp w2,w0
            cset w0,ne
            orr w0,w1,w0
            str w0,[sp,#164]
            b .L_4036b8
.L_40384c:

            ldr w0,[x28,:lo12:optind]
            mov w1,#1
            str w1,[x23,#448]
            str w1,[x23,#472]
            cmp w0,w21
            b.ge .L_403948

            stp w0,w0,[x22,#16]
            b .L_4033fc
.L_40386c:

            cmp w2,#59
            b.ne .L_403510

            ldrb w1,[x26,#1]
            ldr w0,[x28,:lo12:optind]
            cbnz w1,.L_40388c

            cmp w19,w0
            b.eq .L_403d04

            ldr x27,[x20,w0,sxtw #3]
.L_40388c:

            add w0,w0,#1
            str w0,[x28,:lo12:optind]
            mov x24,x27
            str x27,[x23,#440]
            str x27,[x23,#456]
            ldrb w21,[x27]
            cmp w21,#61
            ccmp w21,#0,#4,ne
            b.eq .L_4038c0
.L_4038b0:

            ldrb w21,[x24,#1]!
            cmp w21,#61
            ccmp w21,#0,#4,ne
            b.ne .L_4038b0
.L_4038c0:

            ldr x0,[sp,#128]
            ldr x26,[x0]
            cbz x26,.L_403d5c

            sub w0,w24,w27
            sub x25,x24,x27
            mov w22,#0
            stp xzr,x0,[sp,#104]
            str wzr,[sp,#120]
            str wzr,[sp,#140]
            b .L_403904
.L_4038e8:

            mov w0,#1
            str w0,[sp,#120]
.L_4038f0:

            ldr x0,[sp,#128]
            add w22,w22,#1
            ldr x26,[x0,#32]!
            str x0,[sp,#128]
            cbz x26,.L_403aa0
.L_403904:

            mov x1,x27
            mov x2,x25
            mov x0,x26
            bl strncmp

            mov w1,w0
            mov x0,x26
            cbnz w1,.L_4038f0

            bl strlen

            ldr x1,[sp,#112]
            cmp x1,x0
            b.eq .L_403c54

            ldr x0,[sp,#104]
            cbnz x0,.L_4038e8

            ldr x0,[sp,#128]
            str x0,[sp,#104]
            str w22,[sp,#140]
            b .L_4038f0
.L_403948:

            ldr w1,[x22,#20]
.L_40394c:

            cmp w0,w1
            b.eq .L_40341c

            str w0,[x22,#16]
            b .L_40341c
.L_40395c:

            ldrb w6,[x24,#2]
            ldrb w2,[x26,#1]
            cmp w6,#58
            b.eq .L_4039e0

            ldr w1,[x28,:lo12:optind]
            cbz w2,.L_403a68

            add w1,w1,#1
            str w1,[x28,:lo12:optind]
            str x27,[x23,#440]
.L_403980:

            str xzr,[x23,#456]
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403994:

.cfi_restore_state 
            cbz w2,.L_403b30

            add x25,x1,#1
            str x25,[x23,#440]
            b .L_403744
.L_4039a4:

            ldr w0,[sp,#140]
            cbz w0,.L_403ba4

            ldr w0,[sp,#168]
            cmp w0,#45
            b.eq .L_403cd0

            ldrb w0,[x24]
            cbz w0,.L_403cf8

            mov x4,x24
            mov w2,w0
            b .L_4039d4
.L_4039cc:

            ldrb w2,[x4,#1]!
            cbz w2,.L_403cf8
.L_4039d4:

            cmp w2,w25
            b.ne .L_4039cc

            b .L_40360c
.L_4039e0:

            cbz w2,.L_403b28

            ldr w1,[x28,:lo12:optind]
            add w1,w1,#1
            str w1,[x28,:lo12:optind]
.L_4039f0:

            str x27,[x23,#440]
            str xzr,[x23,#456]
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403a08:

.cfi_restore_state 
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403a1c:

.cfi_restore_state 
            mov w1,w0
            str w0,[x22,#16]
            b .L_40339c
.L_403a28:

            ldr w0,[sp,#160]
            cbnz w0,.L_403b04
.L_403a30:

            mov x0,x26
            bl strlen

            add x3,x28, :lo12:optind
            ldr w2,[x28,:lo12:optind]
            add x0,x26,x0
            str x0,[x23,#456]
            add w2,w2,#1
            str w2,[x28,:lo12:optind]
            str wzr,[x3,#332]
            b .L_4037ec
.L_403a58:

            ldr x0,[sp,#120]
            add x26,x0,#1
            ldrb w0,[x24]
            b .L_4034c0
.L_403a68:

            cmp w19,w1
            b.eq .L_403c28

            ldr x2,[x20,w1,sxtw #3]
            add w1,w1,#1
            str w1,[x28,:lo12:optind]
            str x2,[x23,#440]
            b .L_403980
.L_403a84:

            cmp w0,w19
            b.ge .L_403c64

            ldr x0,[x20,w0,sxtw #3]
            add w21,w21,#2
            str w21,[x28,:lo12:optind]
            str x0,[x23,#440]
            b .L_403744
.L_403aa0:

            ldr w0,[sp,#120]
            cbnz w0,.L_403ca8

            ldr x0,[sp,#104]
            cbz x0,.L_403d5c
.L_403ab0:

            ldr x0,[sp,#104]
            ldr w0,[x0,#8]
            cbz w21,.L_403c00

            cbz w0,.L_403de0

            add x24,x24,#1
            str x24,[x23,#440]
.L_403ac8:

            mov x0,x27
            bl strlen

            add x0,x27,x0
            str x0,[x23,#456]
            ldr x0,[sp,#152]
            cbz x0,.L_403ae8

            ldr w1,[sp,#140]
            str w1,[x0]
.L_403ae8:

            ldr x0,[sp,#104]
            ldr x1,[x0,#16]
            ldr w0,[x0,#24]
            cbnz x1,.L_40376c

            b .L_40351c
.L_403afc:

            mov w1,w0
            b .L_403460
.L_403b04:

            adrp x0, stderr
            adrp x1, .L_40bde0
            ldr x2,[x20]
            add x1,x1, :lo12:.L_40bde0
            ldr x3,[sp,#120]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            ldr x26,[x23,#456]
            b .L_403a30
.L_403b28:

            mov x27,#0
            b .L_4039f0
.L_403b30:

            ldr w1,[sp,#160]
            cbz w1,.L_403b70

            add x0,x20,w0, sxtw #3
            adrp x6, stderr
            ldr x2,[x20]
            ldur x1,[x0,#-8]
            ldr x4,[x27]
            ldrb w3,[x1,#1]
            ldr x0,[x6,:lo12:stderr]
            cmp w3,#45
            b.eq .L_403dc8

            ldrb w3,[x1]
            adrp x1, .L_40be30
            add x1,x1, :lo12:.L_40be30
            bl fprintf

            ldr x26,[x23,#456]
.L_403b70:

            mov x0,x26
            bl strlen

            add x0,x26,x0
            add x7,x28, :lo12:optind
            ldr w2,[x27,#24]
            str x0,[x23,#456]
            str w2,[x7,#332]
            b .L_4037ec
.L_403b90:

            mov w3,w25
            adrp x1, .L_40bee8
            add x1,x1, :lo12:.L_40bee8
            bl fprintf

            b .L_4037e4
.L_403ba4:

            ldr w0,[sp,#160]
            cbz w0,.L_403bdc

            ldr w0,[sp,#168]
            cmp w0,#45
            b.eq .L_403cd8
.L_403bb8:

            ldr x1,[sp,#120]
            adrp x0, stderr
            ldr x2,[x20]
            mov x4,x26
            ldrb w3,[x1]
            adrp x1, .L_40bea8
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bea8
            bl fprintf
.L_403bdc:

            add x2,x28, :lo12:optind
            ldr w1,[x28,:lo12:optind]
            adrp x0, .L_40c1f8
            add x0,x0, :lo12:.L_40c1f8
            add w1,w1,#1
            str w1,[x28,:lo12:optind]
            str wzr,[x2,#332]
            str x0,[x23,#456]
            b .L_4037ec
.L_403c00:

            cmp w0,#1
            b.ne .L_403ac8

            ldr w0,[x28,:lo12:optind]
            cmp w0,w19
            b.ge .L_403dfc

            ldr x1,[x20,w0,sxtw #3]
            add w0,w0,#1
            str w0,[x28,:lo12:optind]
            str x1,[x23,#440]
            b .L_403ac8
.L_403c28:

            ldr w0,[sp,#160]
            cbnz w0,.L_403d3c
.L_403c30:

            add x7,x28, :lo12:optind
            mov w1,#58
            ldr x2,[sp,#96]
            mov w0,#63
            str w25,[x7,#332]
            ldrb w2,[x2]
            cmp w2,w1
            csel w0,w0,w1,ne
            b .L_403980
.L_403c54:

            ldr x0,[sp,#128]
            str x0,[sp,#104]
            str w22,[sp,#140]
            b .L_403ab0
.L_403c64:

            ldr w1,[sp,#160]
            cbnz w1,.L_403d9c
.L_403c6c:

            mov x0,x26
            bl strlen

            add x7,x28, :lo12:optind
            ldr w2,[x27,#24]
            add x0,x26,x0
            str x0,[x23,#456]
            str w2,[x7,#332]
            ldrb w0,[x24]
            cmp w0,#58
            b.ne .L_4037ec
.L_403c94:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#58
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403ca8:

.cfi_restore_state 
            ldr w0,[sp,#160]
            cbnz w0,.L_403d74
.L_403cb0:

            mov x0,x27
            bl strlen

            ldr w1,[x28,:lo12:optind]
            add x0,x27,x0
            str x0,[x23,#456]
            add w1,w1,#1
            str w1,[x28,:lo12:optind]
            b .L_4037ec
.L_403cd0:

            ldr w0,[sp,#160]
            cbz w0,.L_403bdc
.L_403cd8:

            adrp x0, stderr
            mov x3,x26
            ldr x2,[x20]
            adrp x1, .L_40be88
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40be88
            bl fprintf

            b .L_403bdc
.L_403cf8:

            ldr w0,[sp,#160]
            cbnz w0,.L_403bb8

            b .L_403bdc
.L_403d04:

            ldr w0,[sp,#160]
            cbnz w0,.L_403e2c
.L_403d0c:

            add x7,x28, :lo12:optind
            mov w1,#58
            ldr x2,[sp,#96]
            mov w0,#63
            str w25,[x7,#332]
            ldrb w2,[x2]
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            cmp w2,w1
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            csel w0,w0,w1,ne
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403d3c:

.cfi_restore_state 
            adrp x0, stderr
            mov w3,w25
            ldr x2,[x20]
            adrp x1, .L_40bf08
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bf08
            bl fprintf

            b .L_403c30
.L_403d5c:

            str xzr,[x23,#456]
            mov w0,#87
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_403594
.L_403d74:

.cfi_restore_state 
            ldrsw x3,[x28,:lo12:optind]
            adrp x0, stderr
            ldr x2,[x20]
            adrp x1, .L_40bf30
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bf30
            ldr x3,[x20,x3,lsl #3]
            bl fprintf

            ldr x27,[x23,#456]
            b .L_403cb0
.L_403d9c:

            mov x1,#-8
            adrp x4, stderr
            add x0,x1,w0, uxtw #3
            adrp x1, .L_40be60
            ldr x2,[x20]
            add x1,x1, :lo12:.L_40be60
            ldr x3,[x20,x0]
            ldr x0,[x4,:lo12:stderr]
            bl fprintf

            ldr x26,[x23,#456]
            b .L_403c6c
.L_403dc8:

            mov x3,x4
            adrp x1, .L_40be00
            add x1,x1, :lo12:.L_40be00
            bl fprintf

            ldr x26,[x23,#456]
            b .L_403b70
.L_403de0:

            ldr w0,[sp,#160]
            cbnz w0,.L_403e4c
.L_403de8:

            mov x0,x27
            bl strlen

            add x0,x27,x0
            str x0,[x23,#456]
            b .L_4037ec
.L_403dfc:

            ldr w1,[sp,#160]
            cbnz w1,.L_403e74
.L_403e04:

            ldr x19,[x23,#456]
            mov x0,x19
            bl strlen

            ldr x1,[sp,#96]
            add x19,x19,x0
            str x19,[x23,#456]
            ldrb w1,[x1]
            cmp w1,#58
            b.ne .L_4037ec

            b .L_403c94
.L_403e2c:

            adrp x0, stderr
            mov w3,w25
            ldr x2,[x20]
            adrp x1, .L_40bf08
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bf08
            bl fprintf

            b .L_403d0c
.L_403e4c:

            ldr x2,[sp,#104]
            adrp x0, stderr
            adrp x1, .L_40bf58
            add x1,x1, :lo12:.L_40bf58
            ldr x0,[x0,:lo12:stderr]
            ldr x3,[x2]
            ldr x2,[x20]
            bl fprintf

            ldr x27,[x23,#456]
            b .L_403de8
.L_403e74:

            mov x1,#-8
            adrp x4, stderr
            add x0,x1,w0, uxtw #3
            adrp x1, .L_40be60
            ldr x2,[x20]
            add x1,x1, :lo12:.L_40be60
            ldr x3,[x20,x0]
            ldr x0,[x4,:lo12:stderr]
            bl fprintf

            b .L_403e04
.cfi_endproc 

            nop
            nop
            nop
            nop
.size _getopt_internal, . - _getopt_internal
.align 4
#-----------------------------------
.globl getopt
.type getopt, @function
#-----------------------------------
getopt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov w5,#0
            mov x4,#0
            mov x3,#0
            b _getopt_internal
.cfi_endproc 
.size getopt, . - getopt
.align 4
#-----------------------------------
.globl abort_gzip
.type abort_gzip, @function
#-----------------------------------
abort_gzip:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, static_ltree+864
            add x0,x0, :lo12:static_ltree+864
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            ldr w1,[x0,#408]
            cbnz w1,.L_403ed0
.L_403ec8:

            mov w0,#1
            bl do_exit
.L_403ed0:

            ldr w0,[x0,#412]
            bl close

            adrp x0, heap+1568
            add x0,x0, :lo12:heap+1568
            add x0,x0,#1440
            bl unlink

            b .L_403ec8
.cfi_endproc 
.size abort_gzip, . - abort_gzip
.align 2
#-----------------------------------
.globl huft_build
.type huft_build, @function
#-----------------------------------
huft_build:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1632
.cfi_def_cfa_offset 1632
            mov w10,w1
            add x15,sp,#208
            sub w1,w1,#1
            movi v31.4s,#0
            mov x9,x0
            stp fp,lr,[sp]
.cfi_offset 29, -1632
.cfi_offset 30, -1624
            mov fp,sp
            add x0,x1,#1
            stp x23,x24,[sp,#48]
.cfi_offset 23, -1584
.cfi_offset 24, -1576
            mov x23,x5
            mov x5,x6
            str wzr,[x15,#64]
            stp x3,x4,[sp,#168]
            add x3,x9,x0, lsl #2
            str w2,[sp,#184]
            mov x2,x9
            stp q31,q31,[x15]
            stp q31,q31,[x15,#32]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403f40:

            ldr w0,[x2],#4
            lsl x0,x0,#2
            ldr w1,[x15,x0]
            add w1,w1,#1
            str w1,[x15,x0]
            cmp x2,x3
            b.ne .L_403f40

            ldr w0,[sp,#208]
            cmp w0,w10
            b.eq .L_404568

            adrp x2, .L_40d2e0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -1592
.cfi_offset 21, -1600
            adrp x0, .L_40d2d0
            stp x27,x28,[sp,#80]
.cfi_offset 28, -1544
.cfi_offset 27, -1552
            add x1,sp,#272
            ldr q29,[x2,:lo12:.L_40d2e0]
            mvni v25.4s,#3
            ldr w21,[x5]
            movi v26.4s,#4
            ldr q28,[x0,:lo12:.L_40d2d0]
            mov x0,x15
.L_403f94:

            ldur q30,[x0,#4]
            add x0,x0,#16
            mov v27.16b,v28.16b
            mov v31.16b,v29.16b
            cmtst v30.4s,v30.4s,v30.4s
            add v28.4s,v28.4s,v25.4s
            add v29.4s,v29.4s,v26.4s
            umaxp v30.4s,v30.4s,v30.4s
            fmov x2,d30
            cbnz x2,.L_403fd8

            cmp x0,x1
            b.ne .L_403f94

            mov w4,#131072
            mov w7,#17
            mov w0,w4
            mov w1,w7
            b .L_40401c
.L_403fd8:

            fmov w1,s31
            fmov w0,s27
            add w0,w1,w0
.L_403fe4:

            ldr w2,[x15,w1,uxtw #2]
            cbnz w2,.L_40400c

            add w1,w1,#1
            cmp w1,w0
            b.ne .L_403fe4

            mov w4,#131072
            mov w1,#17
            mov w0,w4
            mov w7,w1
            b .L_40401c
.L_40400c:

            mov w0,#1
            mov w7,w1
            lsl w0,w0,w1
            mov w4,w0
.L_40401c:

            cmp w21,w1
            mov x2,x15
            csel w6,w1,w21,lo
            csel w21,w7,w21,lo
            mov w28,#16
.L_404030:

            ldr w3,[x2,#64]
            sub x2,x2,#4
            cbnz w3,.L_40430c

            subs w28,w28,#1
            b.ne .L_404030

            mov w6,#0
            mov w21,#0
            str wzr,[x5]
.L_404050:

            ubfiz x0,x28,#2,#32
            ldr w1,[x15,x0]
            subs w27,w4,w1
            b.mi .L_40435c

            str w4,[x15,x0]
            str wzr,[sp,#284]
            cmp w28,#1
            b.ne .L_404384

            add x14,sp,#280
.L_404074:

            add x5,sp,#480
            mov x0,#0
.L_40407c:

            ldr w1,[x9,x0,lsl #2]
            ubfiz x2,x1,#2,#32
            cbz w1,.L_404098

            ldr w1,[x14,x2]
            add w3,w1,#1
            str w3,[x14,x2]
            str w0,[x5,w1,uxtw #2]
.L_404098:

            add x0,x0,#1
            cmp w10,w0
            b.hi .L_40407c

            ldr w0,[x14,w6,sxtw #2]
            neg w3,w21
            str wzr,[sp,#280]
            str xzr,[sp,#352]
            cmp w6,w7
            b.lt .L_404524

            add x15,x15,w7, uxtw #2
            mov w4,#0
            adrp x9, static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 20, -1608
.cfi_offset 19, -1616
            add x20,sp,#480
            stp x25,x26,[sp,#64]
.cfi_offset 26, -1560
.cfi_offset 25, -1568
            add w26,w6,#1
            add x22,x9, :lo12:static_ltree+864
            mov w5,w7
            mov w9,#-1
            mov w7,w9
            str w6,[sp,#164]
            mov w6,w3
            stp w27,w28,[sp,#200]
            mov x28,x23
            mov x27,x24
            mov w23,w21
            mov w24,w26
            mov w21,w4
            mov x26,x20
            mov x4,x15
            add x0,x20,w0, uxtw #2
            mov w19,#0
            mov x2,#0
            mov w25,#1
            str x0,[sp,#192]
.L_404124:

            ldr w16,[x4]
            cbz w16,.L_404508

            ldr x20,[sp,#192]
            mov x0,x27
            mov x1,x26
            mov w27,w23
            mov w26,w21
            mov w23,w19
            mov x19,x0
            str x4,[sp,#136]
            mov w4,w16
            str w24,[sp,#188]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404160:

            sub w12,w5,w6
            add w15,w27,w6
            mov w9,w12
            cmp w15,w5
            b.ge .L_4043f4

            ldr w0,[sp,#164]
            add w6,w7,#1
            add x10,sp,#352
            sub w21,w5,w15
            sxtw x6,w6
            add x10,x10,w7, sxtw #3
            sub w12,w0,w15
            mov x23,x19
            mov w24,w27
            mov x19,x6
            mov w27,w21
            mov w21,w12
            stp w4,w5,[sp,#108]
            stp x8,x14,[sp,#120]
            stp x20,x1,[sp,#144]
            mov w20,w15
            str w26,[sp,#160]
            mov x26,x28
            mov x28,x10
            b .L_404264
.L_4041c4:

            add w0,w1,#1
            stp w1,w11,[sp,#100]
            lsl x0,x0,#4
            bl malloc

            ldp w1,w11,[sp,#100]
            cbz x0,.L_4042e0
.L_4041dc:

            ldr w3,[x22,#476]
            add x2,x0,#16
            str x2,[x26]
            add x26,x0,#8
            add w3,w3,#1
            str xzr,[x0,#8]
            add w3,w3,w1
            str x2,[x28,#8]
            str w3,[x22,#476]
            cbz w19,.L_40423c

            ldr w4,[sp,#160]
            sub w3,w20,w24
            ldr x13,[x28]
            add w0,w11,#16
            lsr w3,w4,w3
            str x2,[sp,#120]
            ldr x5,[sp,#128]
            bfxil x23,x0,#0,#8
            lsl x0,x3,#4
            add x3,x13,x3, lsl #4
            bfi x23,x24,#8,#8
            str w4,[x5,x19,lsl #2]
            str x23,[x13,x0]
            str x2,[x3,#8]
.L_40423c:

            ldr w4,[sp,#112]
            add w0,w20,w24
            add x19,x19,#1
            add x28,x28,#8
            sub w21,w21,w24
            sub w3,w27,w24
            cmp w4,w0
            b.le .L_4043bc

            mov w27,w3
            mov w20,w0
.L_404264:

            ldr w0,[sp,#108]
            mov w11,w27
            str w19,[sp,#116]
            lsl w1,w25,w27
            cmp w1,w0
            b.ls .L_4041c4

            cmp w21,w24
            csel w3,w21,w24,ls
            cmp w27,w3
            b.hs .L_4041c4

            add w11,w27,#1
            sub w1,w1,w0
            ldr x2,[sp,#136]
            cmp w3,w11
            b.hi .L_4042b4

            b .L_4042c4
.L_4042a4:

            add w11,w11,#1
            sub w1,w1,w0
            cmp w11,w3
            b.eq .L_4042c4
.L_4042b4:

            ldr w0,[x2,#4]!
            lsl w1,w1,#1
            cmp w0,w1
            b.lo .L_4042a4
.L_4042c4:

            lsl w1,w25,w11
            add w0,w1,#1
            stp w1,w11,[sp,#100]
            lsl x0,x0,#4
            bl malloc

            ldp w1,w11,[sp,#100]
            cbnz x0,.L_4041dc
.L_4042e0:

            ldr w9,[sp,#116]
            cbnz w9,.L_404584
.L_4042e8:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            mov w0,#3
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp fp,lr,[sp]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1632
.cfi_restore 23
.cfi_restore 24
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_40430c:

.cfi_def_cfa_offset 1632
.cfi_offset 21, -1600
.cfi_offset 22, -1592
.cfi_offset 23, -1584
.cfi_offset 24, -1576
.cfi_offset 27, -1552
.cfi_offset 28, -1544
.cfi_offset 29, -1632
.cfi_offset 30, -1624
            cmp w6,w28
            mov w6,w28
            csel w21,w21,w28,ls
            str w21,[x5]
            cmp w1,w28
            b.hs .L_404050

            sub w4,w28,w1
            add x3,x15,w1, uxtw #2
            sub w4,w4,#1
            add x2,x15,#4
            add x1,x4,w1, uxtw
            add x2,x2,x1, lsl #2
            b .L_40434c
.L_404340:

            lsl w0,w0,#1
            cmp x3,x2
            b.eq .L_40436c
.L_40434c:

            ldr w1,[x3]
            add x3,x3,#4
            subs w0,w0,w1
            b.pl .L_404340
.L_40435c:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#2
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_404574
.L_40436c:

.cfi_restore_state 
            ubfiz x2,x28,#2,#32
            ldr w1,[x15,x2]
            subs w27,w0,w1
            b.mi .L_40435c

            str w0,[x15,x2]
            str wzr,[sp,#284]
.L_404384:

            sub w3,w28,#1
            add x14,sp,#280
            mov x0,#0
            mov w2,#0
            lsl x3,x3,#2
.L_404398:

            add x4,x15,x0
            add x1,x14,x0
            add x0,x0,#4
            ldr w4,[x4,#4]
            add w2,w2,w4
            str w2,[x1,#8]
            cmp x0,x3
            b.ne .L_404398

            b .L_404074
.L_4043bc:

.cfi_offset 19, -1616
.cfi_offset 20, -1608
.cfi_offset 25, -1568
.cfi_offset 26, -1560
            sub w12,w4,w20
            mov x19,x23
            mov w6,w20
            mov w23,w1
            ldp x8,x14,[sp,#120]
            mov w21,w27
            ldp x20,x1,[sp,#144]
            mov x5,x4
            mov x28,x26
            ldr w4,[sp,#108]
            ldr w7,[sp,#116]
            mov w27,w24
            ldr w26,[sp,#160]
            mov w9,w21
.L_4043f4:

            and w12,w12,#255
            mov w15,#99
            cmp x20,x1
            b.ls .L_404424

            ldr w0,[x1],#4
            ldr w3,[sp,#184]
            cmp w0,w3
            b.hs .L_404548

            cmp w0,#256
            bfxil x8,x0,#0,#16
            cset w15,lo
            add w15,w15,#15
.L_404424:

            lsl w9,w25,w9
            lsr w0,w26,w6
            cmp w0,w23
            b.hs .L_404464

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404440:

            ubfiz x3,x0,#4,#32
            bfxil x19,x15,#0,#8
            add x10,x2,x3
            add w0,w0,w9
            bfi x19,x12,#8,#8
            str x19,[x2,x3]
            str x8,[x10,#8]
            cmp w0,w23
            b.lo .L_404440
.L_404464:

            sub w0,w5,#1
            lsl w0,w25,w0
            tst w0,w26
            b.eq .L_404490

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404480:

            eor w26,w26,w0
            lsr w0,w0,#1
            tst w26,w0
            b.ne .L_404480
.L_404490:

            sbfiz x3,x7,#2,#32
            eor w26,w26,w0
            lsl w0,w25,w6
            sub w0,w0,#1
            and w0,w0,w26
            ldr w9,[x14,x3]
            cmp w0,w9
            b.eq .L_4044e0

            add x3,x14,x3
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4044c0:

            sub w6,w6,w27
            ldr w9,[x3,#-4]!
            sub w7,w7,#1
            lsl w0,w25,w6
            sub w0,w0,#1
            and w0,w0,w26
            cmp w0,w9
            b.ne .L_4044c0
.L_4044e0:

            subs w4,w4,#1
            b.ne .L_404160

            ldr x4,[sp,#136]
            mov x0,x19
            ldr w24,[sp,#188]
            mov w21,w26
            mov w19,w23
            mov x26,x1
            mov w23,w27
            mov x27,x0
.L_404508:

            add w5,w5,#1
            add x4,x4,#4
            cmp w5,w24
            b.ne .L_404124

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp w27,w28,[sp,#200]
.L_404524:

            cmp w27,#0
            ccmp w28,#1,#4,ne
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            cset w0,ne
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp fp,lr,[sp]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1632
.cfi_restore 23
.cfi_restore 24
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_404548:

.cfi_def_cfa_offset 1632
.cfi_offset 19, -1616
.cfi_offset 20, -1608
.cfi_offset 21, -1600
.cfi_offset 22, -1592
.cfi_offset 23, -1584
.cfi_offset 24, -1576
.cfi_offset 25, -1568
.cfi_offset 26, -1560
.cfi_offset 27, -1552
.cfi_offset 28, -1544
.cfi_offset 29, -1632
.cfi_offset 30, -1624
            ldr w3,[sp,#184]
            sub w0,w0,w3
            ldp x3,x10,[sp,#168]
            lsl x0,x0,#1
            ldrh w3,[x3,x0]
            ldrb w15,[x10,x0]
            bfxil x8,x3,#0,#16
            b .L_404424
.L_404568:

.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            str xzr,[x23]
            mov w0,#0
            str wzr,[x5]
.L_404574:

            ldp fp,lr,[sp]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1632
.cfi_restore 23
.cfi_restore 24
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_404584:

.cfi_def_cfa_offset 1632
.cfi_offset 19, -1616
.cfi_offset 20, -1608
.cfi_offset 21, -1600
.cfi_offset 22, -1592
.cfi_offset 23, -1584
.cfi_offset 24, -1576
.cfi_offset 25, -1568
.cfi_offset 26, -1560
.cfi_offset 27, -1552
.cfi_offset 28, -1544
.cfi_offset 29, -1632
.cfi_offset 30, -1624
            ldr x19,[sp,#352]
            cbz x19,.L_4042e8
.L_40458c:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_40458c

            b .L_4042e8
.cfi_endproc 
.size huft_build, . - huft_build
.align 4
#-----------------------------------
.globl huft_free
.type huft_free, @function
#-----------------------------------
huft_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_4045e0

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4045c0:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_4045c0

            ldr x19,[sp,#16]
            mov w0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_4045e0:

            mov w0,#0
            ret 
.cfi_endproc 
.size huft_free, . - huft_free
.align 3
#-----------------------------------
.globl ct_init
.type ct_init, @function
#-----------------------------------
ct_init:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x2, static_ltree+864
            add x2,x2, :lo12:static_ltree+864
            ldrh w3,[x2,#290]
            stp x0,x1,[x2,#480]
            stp xzr,xzr,[x2,#496]
            cbnz w3,.L_404604

            b ct_init.part.0
.L_404604:

            ret 
.cfi_endproc 
.size ct_init, . - ct_init
.align 3
#-----------------------------------
.globl ct_tally
.type ct_tally, @function
#-----------------------------------
ct_tally:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x4, rsync_sum
            add x4,x4, :lo12:rsync_sum
            adrp x2, inbuf
            add x2,x2, :lo12:inbuf
            ldr w5,[x4,#2776]
            ldrb w3,[x4,#2781]
            add w7,w5,#1
            str w7,[x4,#2776]
            strb w1,[x2,w5,uxtw]
            cbnz w0,.L_404724

            sbfiz x1,x1,#2,#32
            add x2,x4,#32
            ldrh w0,[x2,x1]
            add w0,w0,#1
            strh w0,[x2,x1]
.L_404644:

            adrp x5, optind
            add x5,x5, :lo12:optind
            ubfiz w0,w3,#1,#7
            strb w0,[x4,#2781]
            ldr w0,[x5,#336]
            tst x7,#7
            b.ne .L_404700

            ldr w2,[x4,#2768]
            adrp x1, flag_buf
            add x1,x1, :lo12:flag_buf
            ldrb w6,[x4,#2780]
            add w8,w2,#1
            mov w3,#1
            str w8,[x4,#2768]
            strb w6,[x1,w2,uxtw]
            strb wzr,[x4,#2780]
            strb w3,[x4,#2781]
            ldr w1,[x4,#2772]
            cmp w0,#2
            b.le .L_4046f4

            tst x7,#4095
            b.ne .L_4046f4
.L_40469c:

            add x5,x5,#208
            ubfiz x2,x7,#3,#32
            add x6,x4,#2336
            mov x0,#0
.L_4046ac:

            ldrsw x1,[x0,x5]
            ldrh w3,[x0,x6]
            add x0,x0,#4
            add x1,x1,#5
            madd x2,x1,x3,x2
            cmp x0,#120
            b.ne .L_4046ac

            ldr w1,[x4,#2772]
            cmp w1,w7, lsr #1
            b.hs .L_4046f4

            adrp x0, heap+1568
            add x0,x0, :lo12:heap+1568
            lsr x2,x2,#3
            ldr x3,[x0,#1376]
            ldr w0,[x0,#1364]
            sub x0,x0,x3
            cmp x2,x0, lsr #1
            b.lo .L_40471c
.L_4046f4:

            cmp w1,#8,lsl #12
            cset w0,eq
            ret 
.L_404700:

            cmp w0,#2
            b.le .L_404710

            tst x7,#4095
            b.eq .L_40469c
.L_404710:

            mov w0,#32767
            cmp w7,w0
            b.ne .L_4047b4
.L_40471c:

            mov w0,#1
            ret 
.L_404724:

            adrp x5, heap+1568
            add x5,x5, :lo12:heap+1568
            add x8,x5,#2592
            sub w2,w0,#1
            add x6,x4,#32
            ldrb w0,[x8,w1,sxtw]
            mov x1,x6
            add x0,x0,#257
            lsl x0,x0,#2
            ldrh w6,[x6,x0]
            add w6,w6,#1
            strh w6,[x1,x0]
            cmp w2,#255
            b.le .L_4047a8

            asr w0,w2,#7
            add x5,x5,#2976
            add w0,w0,#256
            ldrb w0,[x5,w0,sxtw]
.L_40476c:

            ubfiz x0,x0,#2,#8
            add x1,x4,#2336
            ldr w9,[x4,#2772]
            adrp x8, d_buf
            add x8,x8, :lo12:d_buf
            ldrb w5,[x4,#2780]
            ldrh w6,[x1,x0]
            add w10,w9,#1
            orr w5,w3,w5
            str w10,[x4,#2772]
            add w6,w6,#1
            strh w2,[x8,w9,uxtw #1]
            strh w6,[x1,x0]
            strb w5,[x4,#2780]
            b .L_404644
.L_4047a8:

            add x5,x5,#2976
            ldrb w0,[x5,w2,sxtw]
            b .L_40476c
.L_4047b4:

            ldr w1,[x4,#2772]
            b .L_4046f4
.cfi_endproc 

            nop
            nop
            nop
            nop
.size ct_tally, . - ct_tally
.align 4
#-----------------------------------
.globl check_zipfile
.type check_zipfile, @function
#-----------------------------------
check_zipfile:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x3, static_ltree+864
            add x3,x3, :lo12:static_ltree+864
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov fp,sp
            ldr w2,[x3,#512]
            str w0,[x3,#516]
            ldr w5,[x3,#520]
            add x4,x1,w2, uxtw
            ldrh w0,[x4,#26]
            ldrh w6,[x4,#28]
            add w0,w0,#30
            add w0,w0,w6
            add w0,w0,w2
            str w0,[x3,#512]
            cmp w0,w5
            b.hi .L_40481c

            ldr w1,[x1,w2,uxtw]
            mov w0,#19280
            movk w0,#1027,lsl #16
            cmp w1,w0
            b.eq .L_40485c
.L_40481c:

            adrp x1, .L_40bf88
            add x3,x3,#528
            add x1,x1, :lo12:.L_40bf88
            str x19,[sp,#16]
.cfi_offset 19, -16
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
.L_404838:

            ldr x2,[x19,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            mov w0,#1
            str w0,[x19,#1408]
            ldr x19,[sp,#16]
.cfi_restore 19
            mov w0,#1
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40485c:

.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, method
            ldrb w0,[x4,#8]
            str w0,[x1,:lo12:method]
            and w0,w0,#4294967287
            cbnz w0,.L_40489c

            ldrb w1,[x4,#6]
            and w0,w1,#1
            str w0,[x3,#1552]
            cbnz w0,.L_4048bc

            ubfx x1,x1,#3,#1
            mov w0,#0
            mov w2,#1
            str w1,[x3,#1556]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            str w2,[x3,#1560]
            ret 
.L_40489c:

.cfi_restore_state 
            adrp x1, .L_40bfa8
            add x3,x3,#528
            add x1,x1, :lo12:.L_40bfa8
            adrp x0, stderr
            str x19,[sp,#16]
.cfi_remember_state 
.cfi_offset 19, -16
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            b .L_404838
.L_4048bc:

.cfi_restore_state 
            adrp x1, .L_40bfe8
            add x3,x3,#528
            add x1,x1, :lo12:.L_40bfe8
            adrp x0, stderr
            str x19,[sp,#16]
.cfi_offset 19, -16
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            b .L_404838
.cfi_endproc 

            nop
            nop
            nop
            nop
.size check_zipfile, . - check_zipfile
.align 4
#-----------------------------------
.globl updcrc
.type updcrc, @function
#-----------------------------------
updcrc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_404928

            adrp x4, optind
            add x4,x4, :lo12:optind
            ldr x2,[x4,#344]
            cbz w1,.L_40491c

            add x3,x0,w1, uxtw
            add x5,x4,#352
            nop
            nop
            nop
            nop
.L_404900:

            ldrb w1,[x0],#1
            eor w1,w1,w2
            and w1,w1,#255
            ldr x1,[x5,w1,sxtw #3]
            eor x2,x1,x2, lsr #8
            cmp x0,x3
            b.ne .L_404900
.L_40491c:

            eor x0,x2,#4294967295
            str x2,[x4,#344]
            ret 
.L_404928:

            adrp x4, optind
            add x4,x4, :lo12:optind
            mov x2,#4294967295
            mov x0,#0
            str x2,[x4,#344]
            ret 
.cfi_endproc 
.size updcrc, . - updcrc
.align 4
#-----------------------------------
.globl clear_bufs
.type clear_bufs, @function
#-----------------------------------
clear_bufs:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, static_ltree+864
            add x0,x0, :lo12:static_ltree+864
            str wzr,[x0,#512]
            str wzr,[x0,#520]
            str wzr,[x0,#1564]
            str xzr,[x0,#1568]
            str xzr,[x0,#1576]
            ret 
.cfi_endproc 
.size clear_bufs, . - clear_bufs
.align 4
#-----------------------------------
.globl strlwr
.type strlwr, @function
#-----------------------------------
strlwr:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
            str x23,[sp,#48]
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 23, -16
            mov x23,x0
            ldrb w19,[x0]
            cbz w19,.L_4049c0

            mov x20,x23
            stp x21,x22,[sp,#32]
.cfi_offset 22, -24
.cfi_offset 21, -32
            bl __ctype_b_loc

            mov x22,x0
.L_40498c:

            ldr x2,[x22]
            ubfiz x1,x19,#1,#8
            mov w21,w19
            ldrh w1,[x2,x1]
            tbz w1,#8,.L_4049b0

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldr w19,[x0,x21,lsl #2]
            and w19,w19,#255
.L_4049b0:

            strb w19,[x20]
            ldrb w19,[x20,#1]!
            cbnz w19,.L_40498c

            ldp x21,x22,[sp,#32]
.L_4049c0:

.cfi_restore 22
.cfi_restore 21
            mov x0,x23
            ldr x23,[sp,#48]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size strlwr, . - strlwr
#-----------------------------------
.type get_suffix, @function
#-----------------------------------
get_suffix:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            adrp x2, z_suffix
            adrp x1, optind
            add x1,x1, :lo12:optind
            mov fp,sp
            ldr x2,[x2,:lo12:z_suffix]
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
.cfi_offset 19, -112
.cfi_offset 20, -104
.cfi_offset 21, -96
.cfi_offset 22, -88
.cfi_offset 23, -80
.cfi_offset 24, -72
            mov x24,x0
            stp x25,x26,[sp,#64]
.cfi_offset 25, -64
.cfi_offset 26, -56
            str x2,[x1,#2400]
            ldrb w0,[x2]
            cmp w0,#122
            b.ne .L_404ae0

            ldrb w0,[x2,#1]
            add x20,x1,#2408
            cbnz w0,.L_404ae0
.L_404a28:

            mov x0,x24
            bl strlen

            mov x23,x0
            cmp w0,#32
            b.gt .L_404ac4

            add x21,sp,#88
            add x2,x0,#1
            mov x1,x24
            mov x0,x21
            bl memcpy
.L_404a50:

            mov x0,x21
            bl strlwr

            mov x0,x21
            bl strlen

            mov x22,x0
            mov w26,w0
.L_404a68:

            ldr x25,[x20]
            mov x0,x25
            bl strlen

            subs w2,w26,w0
            b.le .L_404aa4

            sub w2,w2,#1
            sub x3,x22,w0, sxtw
            sxtw x19,w0
            mov x1,x25
            add x0,x21,x3
            ldrb w2,[x21,w2,sxtw]
            cmp w2,#47
            b.eq .L_404aa4

            bl strcmp

            cbz w0,.L_404ae8
.L_404aa4:

            ldr x0,[x20,#8]!
            cbnz x0,.L_404a68

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#128
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404ac4:

.cfi_restore_state 
            sxtw x1,w0
            add x21,sp,#88
            sub x1,x1,#32
            mov x0,x21
            add x1,x24,x1
            bl strcpy

            b .L_404a50
.L_404ae0:

            add x20,x1,#2400
            b .L_404a28
.L_404ae8:

            sxtw x0,w23
            sub x0,x0,x19
            ldp x21,x22,[sp,#32]
            add x0,x24,x0
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_suffix, . - get_suffix
.align 2
#-----------------------------------
.globl base_name
.type base_name, @function
#-----------------------------------
base_name:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w1,#47
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            bl strrchr

            cmp x0,#0
            csinc x0,x19,x0,eq
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size base_name, . - base_name
.align 4
#-----------------------------------
.globl xunlink
.type xunlink, @function
#-----------------------------------
xunlink:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            b unlink
.cfi_endproc 
.size xunlink, . - xunlink
.align 2
#-----------------------------------
.globl make_simple_name
.type make_simple_name, @function
#-----------------------------------
make_simple_name:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w1,#46
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            bl strrchr

            cbz x0,.L_404b84

            cmp x19,x0
            mov w2,#95
            csinc x0,x0,x19,ne
.L_404b6c:

            ldrb w1,[x0,#-1]!
            cmp w1,#46
            b.ne .L_404b7c

            strb w2,[x0]
.L_404b7c:

            cmp x19,x0
            b.ne .L_404b6c
.L_404b84:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size make_simple_name, . - make_simple_name
.align 4
#-----------------------------------
.globl error
.type error, @function
#-----------------------------------
error:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            adrp x1, progname
            adrp x5, stderr
            mov fp,sp
            mov x4,x0
            ldr x2,[x1,:lo12:progname]
            adrp x3, static_ltree+864
            ldr x0,[x5,:lo12:stderr]
            add x3,x3, :lo12:static_ltree+864
            add x3,x3,#528
            adrp x1, .L_40c010
            add x1,x1, :lo12:.L_40c010
            bl fprintf

            bl abort_gzip
.cfi_endproc 
.size error, . - error
.align 3
#-----------------------------------
.globl lm_init
.type lm_init, @function
#-----------------------------------
lm_init:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov w19,w0
            sub w0,w0,#1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            cmp w0,#8
            b.hi .L_404d18

            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            mov x2,#65536
            mov x21,x1
            adrp x0, prev+65536
            mov w1,#0
            add x0,x0, :lo12:prev+65536
            str w19,[x20,#1592]
            bl memset

            sbfiz x0,x19,#3,#32
            adrp x2, configuration_table
            add x2,x2, :lo12:configuration_table
            adrp x3, rsync_sum
            add x1,x2,x0
            add x4,x3, :lo12:rsync_sum
            str xzr,[x3,:lo12:rsync_sum]
            mov x5,#4294967295
            ldrh w3,[x2,x0]
            ldrh w0,[x1,#2]
            ldrh w2,[x1,#4]
            ldrh w1,[x1,#6]
            str x5,[x4,#8]
            str w1,[x20,#424]
            str w3,[x20,#432]
            str w2,[x20,#436]
            str w0,[x20,#1596]
            cmp w19,#1
            b.eq .L_404cec

            cmp w19,#9
            b.eq .L_404cdc
.L_404c60:

            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            mov w1,#65536
            adrp x22, window
            add x21,x22, :lo12:window
            ldr x2,[x19,#1392]
            str wzr,[x19,#1364]
            str xzr,[x19,#1376]
            mov x0,x21
            blr x2

            sub w1,w0,#1
            str w0,[x19,#1360]
            cmn w1,#3
            b.hi .L_404cfc

            str wzr,[x19,#1384]
            cmp w0,#261
            b.hi .L_404cbc
.L_404ca4:

            bl fill_window

            ldr w0,[x19,#1360]
            cmp w0,#261
            b.hi .L_404cbc

            ldr w0,[x19,#1384]
            cbz w0,.L_404ca4
.L_404cbc:

            ldrb w0,[x22,:lo12:window]
            ldrb w1,[x21,#1]
            eor w0,w1,w0, lsl #5
            str w0,[x20,#1600]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404cdc:

.cfi_restore_state 
            ldrh w0,[x21]
            orr w0,w0,#2
            strh w0,[x21]
            b .L_404c60
.L_404cec:

            ldrh w0,[x21]
            orr w0,w0,#4
            strh w0,[x21]
            b .L_404c60
.L_404cfc:

            mov w0,#1
            str wzr,[x19,#1360]
            str w0,[x19,#1384]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404d18:

.cfi_restore_state 
            adrp x0, .L_40c020
            add x0,x0, :lo12:.L_40c020
            bl error
.cfi_endproc 
.size lm_init, . - lm_init
#-----------------------------------
.type make_table, @function
#-----------------------------------
make_table:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            add x4,x1,#1
            sub w8,w0,#1
            add x8,x8,x4
            add x4,sp,#2
            mov fp,sp
            mov x6,x1
            add x7,sp,#72
            str x19,[sp,#16]
.cfi_offset 19, -144
            stp xzr,xzr,[x4,#72]
            stp xzr,xzr,[x4,#88]
.L_404d50:

            ldrb w4,[x6],#1
            lsl x4,x4,#1
            ldrh w5,[x7,x4]
            add w5,w5,#1
            strh w5,[x7,x4]
            cmp x6,x8
            b.ne .L_404d50

            add x13,sp,#112
            mov x4,#0
            mov w5,#0
            mov w10,#15
            strh wzr,[sp,#114]
.L_404d80:

            add x6,x7,x4, lsl #1
            sub w9,w10,w4
            add x8,x13,x4, lsl #1
            add x4,x4,#1
            ldrh w6,[x6,#2]
            lsl w6,w6,w9
            add w5,w5,w6
            and w5,w5,#65535
            strh w5,[x8,#4]
            cmp x4,#16
            b.ne .L_404d80

            ldrh w5,[sp,#146]
            cbnz w5,.L_404f48

            sub w6,w4,w2
            mov x8,x13
            mov w4,#1
            add x9,sp,#34
            mov w10,w4
.L_404dc8:

            ldrh w5,[x8,#2]
            sub w7,w2,w4
            add w4,w4,#1
            lsl w7,w10,w7
            strh w7,[x9],#2
            asr w5,w5,w6
            strh w5,[x8,#2]!
            cmp w4,w2
            b.ls .L_404dc8

            add w9,w2,#1
            add x16,sp,#32
            mov w4,#16
            sub w4,w4,w9
            add x5,x16,w9, uxtw #1
            mov w8,#1
.L_404e04:

            lsl w7,w8,w4
            sub w4,w4,#1
            strh w7,[x5],#2
            cmn w4,#1
            b.ne .L_404e04

            ldrh w4,[x13,w9,sxtw #1]
            asr w4,w4,w6
            cbnz w4,.L_404f24
.L_404e24:

            mov w4,#15
            sub w4,w4,w2
            mov w15,#1
            adrp x10, prev
            mov w11,w0
            add x10,x10, :lo12:prev
            add x18,x3,#2
            lsl w15,w15,w4
            mov x12,#0
.L_404e48:

            ldrb w5,[x1,x12]
            cbz w5,.L_404e9c

            ubfiz x4,x5,#1,#8
            mov w17,w5
            ldrh w9,[x13,x4]
            ldrh w19,[x16,x4]
            mov w7,w9
            cmp w5,w2
            b.hi .L_404eb4

            add w7,w9,w19
            cmp w7,w9
            b.ls .L_404e98

            sub w19,w19,#1
            add x4,x3,w9, uxth #1
            add x9,x19,w9, uxtw
            and w5,w12,#65535
            add x9,x18,x9, lsl #1
.L_404e8c:

            strh w5,[x4],#2
            cmp x9,x4
            b.ne .L_404e8c
.L_404e98:

            strh w7,[x13,x17,lsl #1]
.L_404e9c:

            add x12,x12,#1
            cmp w0,w12
            b.hi .L_404e48

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#160
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_404eb4:

.cfi_restore_state 
            lsr w8,w9,w6
            sub w5,w5,w2
            add x8,x3,x8, lsl #1
            b .L_404edc
.L_404ec4:

            add x4,x4,#8,lsl #12
            lsl w7,w7,#1
            subs w5,w5,#1
            ubfiz x4,x4,#1,#17
            add x8,x10,x4
            b.eq .L_404f18
.L_404edc:

            ldrh w4,[x8]
            cbnz w4,.L_404f00

            mov w14,w11
            and w4,w11,#65535
            add lr,x14,#8,lsl #12
            add w11,w11,#1
            strh wzr,[x10,x14,lsl #1]
            strh wzr,[x10,lr,lsl #1]
            strh w4,[x8]
.L_404f00:

            tst w15,w7
            b.ne .L_404ec4

            add x8,x10,w4, uxth #1
            lsl w7,w7,#1
            subs w5,w5,#1
            b.ne .L_404edc
.L_404f18:

            add w7,w9,w19
            strh w12,[x8]
            b .L_404e98
.L_404f24:

            lsl w8,w8,w2
            cmp w4,w8
            b.eq .L_404e24
.L_404f30:

            mov w5,w4
            add w4,w4,#1
            strh wzr,[x3,w5,uxtw #1]
            cmp w8,w4
            b.ne .L_404f30

            b .L_404e24
.L_404f48:

            adrp x0, .L_40c030
            add x0,x0, :lo12:.L_40c030
            bl error
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size make_table, . - make_table
#-----------------------------------
.type shorten_name.constprop.0, @function
#-----------------------------------
shorten_name.constprop.0:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -32
.cfi_offset 24, -24
            adrp x24, heap+1568
            adrp x23, static_ltree+864
            add x24,x24, :lo12:heap+1568
            add x23,x23, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            add x20,x24,#1440
            mov x0,x20
            bl strlen

            mov x19,x0
            ldr w0,[x23,#1604]
            cbz w0,.L_404fb8

            cmp x19,#1
            b.ls .L_405118

            add x20,x20,x19
            sturb wzr,[x20,#-1]
.L_404fa8:

            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404fb8:

.cfi_restore_state 
            mov x0,x20
            bl get_suffix

            mov x20,x0
            cbz x0,.L_40512c

            strb wzr,[x0]
            mov w0,#1
            str w0,[x23,#1608]
            cmp x19,#4
            b.hi .L_4050cc
.L_404fdc:

            add x19,x24,#1440
            mov w1,#47
            mov x0,x19
            stp x21,x22,[sp,#32]
.cfi_offset 22, -40
.cfi_offset 21, -48
            mov w21,#3
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl strrchr

            cmp x0,#0
            csinc x25,x19,x0,eq
            ldrb w0,[x25]
            cbz w0,.L_405100

            adrp x22, .L_40c078
            add x22,x22, :lo12:.L_40c078
.L_405010:

            mov x20,x25
            mov x19,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405020:

            mov x1,x22
            mov x0,x20
            bl strcspn

            cmp w21,w0
            add x1,x20,w0, sxtw
            ldrb w0,[x20,w0,sxtw]
            sub x2,x1,#1
            csel x19,x2,x19,lt
            cbnz w0,.L_40508c

            cbnz x19,.L_4050a0
.L_405048:

            subs w21,w21,#1
            b.ne .L_405010
.L_405050:

            add x0,x24,#1440
            mov w1,#46
            bl strrchr

            cbz x0,.L_40510c

            ldrb w1,[x0,#1]
            cmp w1,#0
            cset x1,eq
            sub x0,x0,x1
.L_405070:

            ldr x25,[sp,#64]
.cfi_remember_state 
.cfi_restore 25
            ldr x1,[x23,#1584]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b strcpy
.L_40508c:

.cfi_restore_state 
            ldrb w0,[x1,#1]
            add x20,x1,#1
            cbnz w0,.L_405020

            cbz x19,.L_405048

            nop
            nop
            nop
            nop
.L_4050a0:

            ldrb w1,[x19,#1]
            mov x0,x19
            strb w1,[x19]
            add x19,x19,#1
            cbz w1,.L_405070

            ldrb w1,[x19,#1]
            mov x0,x19
            strb w1,[x19]
            add x19,x19,#1
            cbnz w1,.L_4050a0

            b .L_405070
.L_4050cc:

.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
            sub x19,x20,#4
            adrp x1, .L_40c068
            mov x0,x19
            add x1,x1, :lo12:.L_40c068
            bl strcmp

            cbnz w0,.L_404fdc

            adrp x0, .L_40c070
            add x0,x0, :lo12:.L_40c070
            ldr w1,[x0]
            ldrb w0,[x0,#4]
            stur w1,[x20,#-4]
            strb w0,[x20]
            b .L_404fa8
.L_405100:

.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 25, -16
            subs w21,w21,#1
            b.ne .L_405100

            b .L_405050
.L_40510c:

            adrp x0, .L_40c080
            add x0,x0, :lo12:.L_40c080
            bl error
.L_405118:

.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
            adrp x0, .L_40c040
            add x0,x0, :lo12:.L_40c040
            stp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_offset 22, -40
.cfi_offset 21, -48
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl error
.L_40512c:

.cfi_restore_state 
            adrp x0, .L_40c050
            add x0,x0, :lo12:.L_40c050
            stp x21,x22,[sp,#32]
.cfi_offset 22, -40
.cfi_offset 21, -48
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl error
.cfi_endproc 
.size shorten_name.constprop.0, . - shorten_name.constprop.0
.align 4
#-----------------------------------
.globl add_envopt
.type add_envopt, @function
#-----------------------------------
add_envopt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -48
.cfi_offset 24, -40
            mov x23,x0
            mov x24,x1
            stp x21,x22,[sp,#32]
            mov x0,x2
.cfi_offset 21, -64
.cfi_offset 22, -56
            ldr w21,[x23]
            bl getenv

            cbz x0,.L_405324

            stp x19,x20,[sp,#16]
.cfi_offset 20, -72
.cfi_offset 19, -80
            mov x19,x0
            bl strlen

            mov x20,x0
            add w0,w0,#1
            bl malloc

            cbz x0,.L_40533c

            add x2,x20,#1
            mov x1,x19
            bl memcpy

            mov x22,x0
            ldrb w0,[x0]
            cbz w0,.L_405318

            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            mov x26,x22
            adrp x20, .L_40c0b0
            add x20,x20, :lo12:.L_40c0b0
            mov x0,x26
            mov x1,x20
            str x27,[sp,#80]
.cfi_offset 27, -16
            bl strspn

            add x25,x26,x0
            ldrb w0,[x26,x0]
            mov w27,#0
            cbz w0,.L_40530c
.L_4051cc:

            mov x1,x20
            mov x0,x25
            bl strcspn

            ldrb w2,[x25,x0]
            add w27,w27,#1
            add x1,x25,x0
            cbnz w2,.L_4052e4
.L_4051e8:

            ldr w0,[x23]
            mov x1,#8
            add w0,w27,w0
            str w0,[x23]
            add w0,w0,#1
            sxtw x0,w0
            bl calloc

            cbz x0,.L_405344

            ldr x25,[x24]
            str x0,[x24]
            tbnz w21,#31,.L_405350

            mov x26,x0
            sub w24,w27,#1
            ldr x1,[x25]
            add w24,w24,#2
            str x1,[x26],#8
            sub w27,w27,#1
            add x24,x0,x24, lsl #3
            mov x19,x22
            mov x23,x26
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405240:

            mov x0,x19
            mov x1,x20
            bl strspn

            add x19,x19,x0
            str x19,[x23],#8
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405260:

            ldrb w1,[x19],#1
            cbnz w1,.L_405260

            cmp x23,x24
            b.ne .L_405240

            add x19,x26,w27, uxtw #3
            add x6,x19,#8
            mov x0,x6
            cmp w21,#1
            b.eq .L_4052c0

            sub w5,w21,#2
            sub x3,x25,x19
            sub x3,x3,#8
            lsl x5,x5,#3
            add x4,x5,#16
            add x4,x4,x19
            nop
            nop
            nop
            nop
.L_4052a0:

            mov x1,x0
            add x0,x0,#8
            ldr x2,[x0,x3]
            str x2,[x1]
            cmp x0,x4
            b.ne .L_4052a0

            add x5,x5,#8
            add x0,x5,x6
.L_4052c0:

            ldr x27,[sp,#80]
.cfi_remember_state 
.cfi_restore 27
            str xzr,[x0]
            mov x0,x22
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_4052e4:

.cfi_restore_state 
            strb wzr,[x25,x0]
            add x26,x1,#1
            ldrb w0,[x1,#1]
            cbz w0,.L_4051e8

            mov x1,x20
            mov x0,x26
            bl strspn

            add x25,x26,x0
            ldrb w0,[x26,x0]
            cbnz w0,.L_4051cc
.L_40530c:

            cbnz w27,.L_4051e8

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldr x27,[sp,#80]
.L_405318:

.cfi_restore 27
            mov x0,x22
            bl free

            ldp x19,x20,[sp,#16]
.L_405324:

.cfi_restore 20
.cfi_restore 19
            mov x22,#0
            ldp x23,x24,[sp,#48]
            mov x0,x22
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_40533c:

.cfi_def_cfa_offset 96
.cfi_offset 19, -80
.cfi_offset 20, -72
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
.cfi_offset 24, -40
.cfi_offset 29, -96
.cfi_offset 30, -88
            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            str x27,[sp,#80]
.L_405344:

.cfi_offset 27, -16
            adrp x0, .L_40c0a0
            add x0,x0, :lo12:.L_40c0a0
            bl error
.L_405350:

            adrp x0, .L_40c0b8
            add x0,x0, :lo12:.L_40c0b8
            bl error
.cfi_endproc 

            nop
            nop
            nop
            nop
.size add_envopt, . - add_envopt
.align 4
#-----------------------------------
.globl warning
.type warning, @function
#-----------------------------------
warning:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov x4,x0
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            ldr w0,[x19,#1436]
            cbz w0,.L_40539c
.L_405380:

            ldr w0,[x19,#1408]
            cbnz w0,.L_405390

            mov w0,#2
            str w0,[x19,#1408]
.L_405390:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_40539c:

.cfi_restore_state 
            adrp x0, stderr
            adrp x3, static_ltree+864
            ldr x2,[x19,#1400]
            add x3,x3, :lo12:static_ltree+864
            ldr x0,[x0,:lo12:stderr]
            add x3,x3,#528
            adrp x1, .L_40c0c0
            add x1,x1, :lo12:.L_40c0c0
            bl fprintf

            b .L_405380
.cfi_endproc 
.size warning, . - warning
.align 2
#-----------------------------------
.globl read_error
.type read_error, @function
#-----------------------------------
read_error:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x20, stderr
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl __errno_location

            mov x19,x0
            adrp x2, progname
            ldr x0,[x20,:lo12:stderr]
            adrp x1, .L_40c0d8
            ldr w21,[x19]
            add x1,x1, :lo12:.L_40c0d8
            ldr x2,[x2,:lo12:progname]
            bl fprintf

            cbnz w21,.L_405420

            ldr x0,[x20,:lo12:stderr]
            adrp x2, static_ltree+864
            add x2,x2, :lo12:static_ltree+864
            adrp x1, .L_40c0e0
            add x2,x2,#528
            add x1,x1, :lo12:.L_40c0e0
            bl fprintf

            bl abort_gzip
.L_405420:

            adrp x0, static_ltree+864
            add x0,x0, :lo12:static_ltree+864
            add x0,x0,#528
            str w21,[x19]
            bl perror

            bl abort_gzip
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size read_error, . - read_error
.align 4
#-----------------------------------
.globl file_read
.type file_read, @function
#-----------------------------------
file_read:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w2,w1
            mov x1,x0
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            mov x19,x0
            ldr w0,[x20,#516]
            bl read

            cbz w0,.L_4054c4

            cmn w0,#1
            b.eq .L_4054e8

            cbz x19,.L_4054d0

            adrp x3, optind
            add x3,x3, :lo12:optind
            add x5,x3,#352
            and x6,x0,#4294967295
            add x4,x19,w0, uxtw
            ldr x1,[x3,#344]
.L_405490:

            ldrb w2,[x19],#1
            eor w2,w2,w1
            and w2,w2,#255
            ldr x2,[x5,w2,sxtw #3]
            eor x1,x2,x1, lsr #8
            cmp x19,x4
            b.ne .L_405490

            eor x4,x1,#4294967295
.L_4054b0:

            ldr x2,[x20,#1576]
            str x1,[x3,#344]
            str x4,[x20,#1616]
            add x1,x2,x6
            str x1,[x20,#1576]
.L_4054c4:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4054d0:

.cfi_restore_state 
            adrp x3, optind
            and x6,x0,#4294967295
            add x3,x3, :lo12:optind
            mov x4,#0
            mov x1,#4294967295
            b .L_4054b0
.L_4054e8:

            bl read_error
.cfi_endproc 
.size file_read, . - file_read
.align 2
#-----------------------------------
.globl write_error
.type write_error, @function
#-----------------------------------
write_error:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl __errno_location

            adrp x3, stderr
            mov x20,x0
            ldr x2,[x19,#1400]
            adrp x1, .L_40c0d8
            ldr x0,[x3,:lo12:stderr]
            add x1,x1, :lo12:.L_40c0d8
            ldr w21,[x20]
            bl fprintf

            str w21,[x20]
            add x0,x19,#1440
            bl perror

            bl abort_gzip
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size write_error, . - write_error
.align 4
#-----------------------------------
.globl write_buf
.type write_buf, @function
#-----------------------------------
write_buf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x1
            mov w19,w2
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov w21,w0
            b .L_405570
.L_405560:

            cmn w0,#1
            b.eq .L_405598

            sub w19,w19,w0
            add x20,x20,w0, uxtw
.L_405570:

            mov w2,w19
            mov x1,x20
            mov w0,w21
            bl write

            cmp w19,w0
            b.ne .L_405560

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405598:

.cfi_restore_state 
            bl write_error
.cfi_endproc 

            nop
            nop
            nop
            nop
.size write_buf, . - write_buf
.align 4
#-----------------------------------
.globl copy
.type copy, @function
#-----------------------------------
copy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            adrp x22, static_ltree+864
            add x22,x22, :lo12:static_ltree+864
            mov w21,w1
            stp x19,x20,[sp,#16]
            stp x23,x24,[sp,#48]
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 23, -16
.cfi_offset 24, -8
            mov w24,w0
            bl __errno_location

            str wzr,[x0]
            adrp x23, inbuf
            add x23,x23, :lo12:inbuf
            ldr w19,[x22,#520]
            sub w0,w19,#1
            cmn w0,#3
            b.hi .L_405648
.L_4055e4:

            mov x20,x23
            b .L_4055fc
.L_4055ec:

            cmn w0,#1
            b.eq .L_405670

            sub w19,w19,w0
            add x20,x20,w0, uxtw
.L_4055fc:

            mov w2,w19
            mov x1,x20
            mov w0,w21
            bl write

            cmp w0,w19
            b.ne .L_4055ec

            ldr x4,[x22,#1568]
            mov x1,x23
            ldr w3,[x22,#520]
            mov w0,w24
            mov x2,#32768
            add x3,x3,x4
            str x3,[x22,#1568]
            bl read

            mov x19,x0
            sub w0,w0,#1
            str w19,[x22,#520]
            cmn w0,#3
            b.ls .L_4055e4
.L_405648:

            cmn w19,#1
            b.eq .L_405674

            ldr x1,[x22,#1568]
            str x1,[x22,#1576]
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405670:

.cfi_restore_state 
            bl write_error
.L_405674:

            bl read_error
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size copy, . - copy
.align 4
#-----------------------------------
.globl flush_outbuf
.type flush_outbuf, @function
#-----------------------------------
flush_outbuf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            adrp x22, static_ltree+864
            add x22,x22, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr w19,[x22,#1564]
            cbnz w19,.L_4056b0

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4056b0:

.cfi_restore_state 
            adrp x20, outbuf
            ldr w21,[x22,#412]
            add x20,x20, :lo12:outbuf
            b .L_4056d0
.L_4056c0:

            cmn w0,#1
            b.eq .L_40570c

            sub w19,w19,w0
            add x20,x20,w0, uxtw
.L_4056d0:

            mov w2,w19
            mov x1,x20
            mov w0,w21
            bl write

            cmp w0,w19
            b.ne .L_4056c0

            ldr x1,[x22,#1568]
            ldr w0,[x22,#1564]
            str wzr,[x22,#1564]
            add x0,x0,x1
            str x0,[x22,#1568]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40570c:

.cfi_restore_state 
            bl write_error
.cfi_endproc 
.size flush_outbuf, . - flush_outbuf
.align 4
#-----------------------------------
.globl send_bits
.type send_bits, @function
#-----------------------------------
send_bits:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov w20,w0
            mov w21,w1
            ldr w0,[x19,#420]
            mov w1,#16
            ldrh w4,[x19,#416]
            sub w1,w1,w21
            add w3,w0,w21
            lsl w2,w20,w0
            orr w2,w2,w4
            and w2,w2,#65535
            cmp w1,w0
            b.ge .L_4057ac

            ldr w1,[x19,#1564]
            and w5,w2,#255
            strh w2,[x19,#416]
            mov w4,#16381
            add w3,w1,#1
            cmp w1,w4
            b.hi .L_4057c4

            adrp x4, outbuf
            add x4,x4, :lo12:outbuf
            lsr w2,w2,#8
            add w6,w1,#2
            str w6,[x19,#1564]
            strb w5,[x4,w1,uxtw]
            strb w2,[x4,w3,uxtw]
.L_405790:

            and w20,w20,#65535
            mov w1,#16
            sub w1,w1,w0
            sub w21,w21,#16
            add w3,w21,w0
            asr w20,w20,w1
            and w2,w20,#65535
.L_4057ac:

            strh w2,[x19,#416]
            str w3,[x19,#420]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4057c4:

.cfi_restore_state 
            adrp x22, outbuf
            add x22,x22, :lo12:outbuf
            str w3,[x19,#1564]
            strb w5,[x22,w1,uxtw]
            cmp w3,#4,lsl #12
            b.eq .L_405808
.L_4057dc:

            lsr w2,w2,#8
            add w0,w3,#1
            strb w2,[x22,w3,uxtw]
            str w0,[x19,#1564]
            cmp w0,#4,lsl #12
            b.eq .L_4057fc

            ldr w0,[x19,#420]
            b .L_405790
.L_4057fc:

            bl flush_outbuf

            ldr w0,[x19,#420]
            b .L_405790
.L_405808:

            bl flush_outbuf

            ldrh w2,[x19,#416]
            ldr w3,[x19,#1564]
            b .L_4057dc
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size send_bits, . - send_bits
#-----------------------------------
.type send_tree, @function
#-----------------------------------
send_tree:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov w4,#3
            mov w5,#4
            mov fp,sp
            mov w3,#7
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            mov w25,w1
            mov w1,#138
            ldrh w2,[x0,#2]
            cmp w2,#0
            csel w4,w4,w5,eq
            csel w1,w1,w3,eq
            tbnz w25,#31,.L_40595c

            stp x23,x24,[sp,#48]
.cfi_offset 24, -56
.cfi_offset 23, -64
            adrp x24, rsync_sum
            add x24,x24, :lo12:rsync_sum
            add x26,x24,#2592
            stp x19,x20,[sp,#16]
.cfi_offset 20, -88
.cfi_offset 19, -96
            add x20,x0,#6
            stp x21,x22,[sp,#32]
.cfi_offset 22, -72
.cfi_offset 21, -80
            mov w22,#-1
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            mov w28,#0
            mov w27,#0
.L_405880:

            add w19,w28,#1
            ldrh w23,[x20]
            add w21,w27,#1
            cmp w19,w1
            b.lt .L_405ab8
.L_405894:

            cbnz w2,.L_405968

            cmp w19,#10
            b.gt .L_4059f4

            ldrh w1,[x26,#70]
            ldrh w0,[x26,#68]
            str x24,[sp,#96]
            bl send_bits

            sub w0,w28,#2
            mov w1,#3
            bl send_bits

            cbz w23,.L_405a14
.L_4058c0:

            add x20,x20,#4
            cmp w25,w21
            b.lt .L_40594c

            ldrh w22,[x20]
            add w21,w27,#2
            cmp w23,w22
            b.eq .L_405a6c
.L_4058dc:

            mov w19,#1
.L_4058e0:

            ldr x0,[sp,#96]
            add x27,x0,#2592
            add x27,x27,w23, sxtw #2
.L_4058ec:

            ldrh w1,[x27,#2]
            ldrh w0,[x27]
            bl send_bits

            subs w19,w19,#1
            b.ne .L_4058ec

            cbnz w22,.L_405a40

            mov w2,w23
.L_405908:

            add x20,x20,#4
            cmp w25,w21
            b.lt .L_40594c

            ldrh w22,[x20]
            add w21,w21,#1
            mov w19,#1
            mov w23,#0
            cbnz w22,.L_4058e0

            mov w28,w19
            mov w27,w21
            mov w22,w2
            mov w4,#3
            mov w2,#0
            mov w1,#138
.L_405940:

            add x20,x20,#4
            cmp w25,w21
            b.ge .L_405880
.L_40594c:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.L_40595c:

.cfi_restore 28
.cfi_restore 27
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_def_cfa_offset 0
            ret 
.L_405968:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 26, -40
.cfi_offset 27, -32
.cfi_offset 28, -24
.cfi_offset 29, -112
.cfi_offset 30, -104
            str x24,[sp,#96]
            cmp w22,w2
            b.eq .L_405994

            sbfiz x0,x2,#2,#32
            str w2,[sp,#108]
            add x1,x26,x0
            mov w19,w28
            ldrh w0,[x26,x0]
            ldrh w1,[x1,#2]
            bl send_bits

            ldr w2,[sp,#108]
.L_405994:

            ldrh w1,[x24,#2658]
            ldrh w0,[x24,#2656]
            str w2,[sp,#108]
            bl send_bits

            sub w0,w19,#3
            mov w1,#2
            bl send_bits

            ldr w2,[sp,#108]
            cbz w23,.L_405908

            cmp w23,w2
            b.ne .L_405a34

            add x20,x20,#4
            cmp w25,w21
            b.lt .L_40594c

            ldrh w22,[x20]
            add w21,w27,#2
            mov w19,#1
            cmp w2,w22
            b.ne .L_4058e0

            mov w28,w19
            mov w27,w21
            mov w4,#3
            mov w1,#6
            b .L_405940
.L_4059f4:

            ldrh w1,[x26,#74]
            ldrh w0,[x26,#72]
            str x24,[sp,#96]
            bl send_bits

            sub w0,w28,#10
            mov w1,#7
            bl send_bits

            cbnz w23,.L_4058c0
.L_405a14:

            add x20,x20,#4
            cmp w25,w21
            b.lt .L_40594c

            ldrh w22,[x20]
            add w21,w27,#2
            cbz w22,.L_405a88

            mov w23,#0
            b .L_4058dc
.L_405a34:

            mov w22,w23
            mov w23,w2
            nop
            nop
            nop
            nop
.L_405a40:

            add x20,x20,#4
            cmp w25,w21
            b.lt .L_40594c

            ldrh w2,[x20]
            add w21,w21,#1
            mov w19,#1
            cmp w22,w2
            b.eq .L_405aa0

            mov w23,w22
            mov w22,w2
            b .L_4058e0
.L_405a6c:

            mov w2,w22
            mov w27,w21
            mov w22,#0
            mov w4,#4
            mov w1,#7
            mov w28,#1
            b .L_405940
.L_405a88:

            mov w27,w21
            mov w2,#0
            mov w4,#3
            mov w1,#138
            mov w28,#1
            b .L_405940
.L_405aa0:

            mov w22,w23
            mov w28,w19
            mov w27,w21
            mov w4,#4
            mov w1,#7
            b .L_405940
.L_405ab8:

            cmp w23,w2
            b.eq .L_405ae0

            cmp w19,w4
            b.ge .L_405894

            mov w22,w23
            adrp x28, rsync_sum
            mov w23,w2
            add x0,x28, :lo12:rsync_sum
            str x0,[sp,#96]
            b .L_4058e0
.L_405ae0:

            mov w28,w19
            mov w27,w21
            b .L_405940
.cfi_endproc 
.size send_tree, . - send_tree
#-----------------------------------
.type compress_block, @function
#-----------------------------------
compress_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -96
.cfi_offset 22, -88
            adrp x21, rsync_sum
            add x21,x21, :lo12:rsync_sum
            stp x19,x20,[sp,#16]
.cfi_offset 19, -112
.cfi_offset 20, -104
            mov x20,x0
            ldr w0,[x21,#2776]
            cbz w0,.L_405c50

            stp x25,x26,[sp,#64]
.cfi_offset 26, -56
.cfi_offset 25, -64
            adrp x26, heap+1568
            add x26,x26, :lo12:heap+1568
            add x0,x26,#2592
            mov x22,x1
            mov x19,#0
            mov w25,#0
            stp x23,x24,[sp,#48]
.cfi_offset 24, -72
.cfi_offset 23, -80
            adrp x24, inbuf
            mov w23,#0
            add x24,x24, :lo12:inbuf
            stp x27,x28,[sp,#80]
.cfi_offset 28, -40
.cfi_offset 27, -48
            adrp x27, flag_buf
            mov w28,#0
            str x0,[sp,#120]
            add x0,x27, :lo12:flag_buf
            str x0,[sp,#112]
            b .L_405b80
.L_405b58:

            ubfiz x2,x27,#2,#8
            add x19,x19,#1
            add x1,x20,x2
            lsr w28,w28,#1
            ldrh w0,[x20,x2]
            ldrh w1,[x1,#2]
            bl send_bits

            ldr w0,[x21,#2776]
            cmp w0,w19
            b.ls .L_405c44
.L_405b80:

            tst x19,#7
            b.ne .L_405b94

            ldr x0,[sp,#112]
            ldrb w28,[x0,w23,uxtw]
            add w23,w23,#1
.L_405b94:

            ldrb w27,[x24,x19]
            tbz w28,#0,.L_405b58

            ldr x0,[sp,#120]
            ldrb w4,[x0,w27,sxtw]
            str w4,[sp,#104]
            add w0,w4,#257
            ubfiz x0,x0,#2,#10
            add x1,x20,x0
            ldrh w0,[x20,x0]
            ldrh w1,[x1,#2]
            bl send_bits

            ldr w4,[sp,#104]
            mov w0,w4
            adrp x4, optind
            add x4,x4, :lo12:optind
            add x1,x4,#80
            ldr w1,[x1,x0,lsl #2]
            cbnz w1,.L_405c94
.L_405bdc:

            adrp x0, d_buf
            add x0,x0, :lo12:d_buf
            ldrh w27,[x0,w25,uxtw #1]
            cmp w27,#255
            b.hi .L_405c80

            add x0,x26,#2976
            ldrb w0,[x0,w27,uxtw]
.L_405bf8:

            ubfiz x1,x0,#2,#8
            mov w2,w0
            add x6,x22,x1
            str x2,[sp,#104]
            ldrh w0,[x22,x1]
            ldrh w1,[x6,#2]
            bl send_bits

            ldr x2,[sp,#104]
            adrp x0, optind
            add x4,x0, :lo12:optind
            add x4,x4,#208
            ldr w1,[x4,x2,lsl #2]
            cbnz w1,.L_405c68

            add w25,w25,#1
.L_405c30:

            ldr w0,[x21,#2776]
            add x19,x19,#1
            lsr w28,w28,#1
            cmp w0,w19
            b.hi .L_405b80
.L_405c44:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_405c50:

.cfi_restore 28
.cfi_restore 27
            ldp x21,x22,[sp,#32]
            ldrh w1,[x20,#1026]
            ldrh w0,[x20,#1024]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b send_bits
.L_405c68:

.cfi_def_cfa_offset 128
.cfi_offset 19, -112
.cfi_offset 20, -104
.cfi_offset 21, -96
.cfi_offset 22, -88
.cfi_offset 23, -80
.cfi_offset 24, -72
.cfi_offset 25, -64
.cfi_offset 26, -56
.cfi_offset 27, -48
.cfi_offset 28, -40
.cfi_offset 29, -128
.cfi_offset 30, -120
            add x0,x26,#2848
            add w25,w25,#1
            ldr w0,[x0,x2,lsl #2]
            sub w0,w27,w0
            bl send_bits

            b .L_405c30
.L_405c80:

            lsr w0,w27,#7
            add x1,x26,#2976
            add w0,w0,#256
            ldrb w0,[x1,w0,uxtw]
            b .L_405bf8
.L_405c94:

            add x5,x26,#2464
            ldr w0,[x5,x0,lsl #2]
            sub w0,w27,w0
            bl send_bits

            b .L_405bdc
.cfi_endproc 
.size compress_block, . - compress_block
.align 3
#-----------------------------------
.globl bi_windup
.type bi_windup, @function
#-----------------------------------
bi_windup:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            ldr w0,[x19,#420]
            cmp w0,#8
            b.le .L_405d14

            ldrh w0,[x19,#416]
            mov w3,#16381
            ldr w1,[x19,#1564]
            and w4,w0,#255
            add w2,w1,#1
            cmp w1,w3
            b.hi .L_405d58

            adrp x3, outbuf
            add x3,x3, :lo12:outbuf
            lsr w0,w0,#8
            add w5,w1,#2
            str w5,[x19,#1564]
            strb w4,[x3,w1,uxtw]
            strb w0,[x3,w2,uxtw]
.L_405d00:

            strh wzr,[x19,#416]
            str wzr,[x19,#420]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405d14:

.cfi_restore_state 
            cmp w0,#0
            b.le .L_405d00

            ldr w2,[x19,#1564]
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            ldrh w3,[x19,#416]
            add w1,w2,#1
            str w1,[x19,#1564]
            strb w3,[x0,w2,uxtw]
            cmp w1,#4,lsl #12
            b.ne .L_405d00
.L_405d40:

            bl flush_outbuf

            strh wzr,[x19,#416]
            str wzr,[x19,#420]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405d58:

.cfi_restore_state 
            adrp x20, outbuf
            add x20,x20, :lo12:outbuf
            str w2,[x19,#1564]
            strb w4,[x20,w1,uxtw]
            cmp w2,#4,lsl #12
            b.eq .L_405d9c
.L_405d70:

            lsr w0,w0,#8
            add w1,w2,#1
            strb w0,[x20,w2,uxtw]
            str w1,[x19,#1564]
            cmp w1,#4,lsl #12
            b.eq .L_405d40

            strh wzr,[x19,#416]
            str wzr,[x19,#420]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405d9c:

.cfi_restore_state 
            bl flush_outbuf

            ldrh w0,[x19,#416]
            ldr w2,[x19,#1564]
            b .L_405d70
.cfi_endproc 
.size bi_windup, . - bi_windup
.align 2
#-----------------------------------
.globl copy_block
.type copy_block, @function
#-----------------------------------
copy_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov w20,w2
            mov x19,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov w21,w1
            bl bi_windup

            cbz w20,.L_405e4c

            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            adrp x22, outbuf
            and w23,w21,#255
            ldr w1,[x20,#1564]
            and w24,w21,#65535
            str x25,[sp,#64]
.cfi_offset 25, -16
            add x22,x22, :lo12:outbuf
            add w2,w1,#1
            ubfx x25,x21,#8,#8
            mov w0,#16381
            cmp w1,w0
            b.hi .L_405eb4

            add w0,w1,#2
            strb w23,[x22,w1,uxtw]
            strb w25,[x22,w2,uxtw]
.L_405e14:

            mvn w24,w24
            mvn w23,w23
            and w23,w23,#255
            strb w23,[x22,w0,uxtw]
            add w1,w0,#1
            ubfx x24,x24,#8,#8
            mov w2,#16381
            cmp w0,w2
            b.hi .L_405ee4

            strb w24,[x22,w1,uxtw]
            add w0,w0,#2
            ldr x25,[sp,#64]
.cfi_restore 25
            str w0,[x20,#1564]
            ldp x23,x24,[sp,#48]
.L_405e4c:

.cfi_restore 24
.cfi_restore 23
            sub w0,w21,#1
            cbz w21,.L_405ea4

            mov w21,w0
            adrp x20, static_ltree+864
            add x21,x21,#1
            adrp x22, outbuf
            add x20,x20, :lo12:static_ltree+864
            add x21,x19,x21
            add x22,x22, :lo12:outbuf
            b .L_405e7c
.L_405e74:

            cmp x19,x21
            b.eq .L_405ea4
.L_405e7c:

            ldr w1,[x20,#1564]
            add w0,w1,#1
            str w0,[x20,#1564]
            ldrb w2,[x19],#1
            strb w2,[x22,w1,uxtw]
            cmp w0,#4,lsl #12
            b.ne .L_405e74

            bl flush_outbuf

            cmp x19,x21
            b.ne .L_405e7c
.L_405ea4:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405eb4:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 25, -16
.cfi_offset 29, -80
.cfi_offset 30, -72
            strb w23,[x22,w1,uxtw]
            str w2,[x20,#1564]
            cmp w2,#4,lsl #12
            b.eq .L_405f2c
.L_405ec4:

            add w0,w2,#1
            strb w25,[x22,w2,uxtw]
            str w0,[x20,#1564]
            cmp w0,#4,lsl #12
            b.ne .L_405e14

            bl flush_outbuf

            ldr w0,[x20,#1564]
            b .L_405e14
.L_405ee4:

            str w1,[x20,#1564]
            cmp w1,#4,lsl #12
            b.eq .L_405f20
.L_405ef0:

            add w0,w1,#1
            strb w24,[x22,w1,uxtw]
            str w0,[x20,#1564]
            cmp w0,#4,lsl #12
            b.eq .L_405f10

            ldr x25,[sp,#64]
.cfi_remember_state 
.cfi_restore 25
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_405e4c
.L_405f10:

.cfi_restore_state 
            bl flush_outbuf

            ldr x25,[sp,#64]
.cfi_remember_state 
.cfi_restore 25
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_405e4c
.L_405f20:

.cfi_restore_state 
            bl flush_outbuf

            ldr w1,[x20,#1564]
            b .L_405ef0
.L_405f2c:

            bl flush_outbuf

            ldr w2,[x20,#1564]
            b .L_405ec4
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size copy_block, . - copy_block
.align 4
#-----------------------------------
.globl flush_block
.type flush_block, @function
#-----------------------------------
flush_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            adrp x4, flag_buf
            add x4,x4, :lo12:flag_buf
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 21, -64
.cfi_offset 22, -56
            mov x22,x0
            mov w21,w3
            stp x23,x24,[sp,#48]
            mov w0,#65535
.cfi_offset 23, -48
.cfi_offset 24, -40
            mov w23,w2
            stp x25,x26,[sp,#64]
.cfi_offset 25, -32
.cfi_offset 26, -24
            mov x25,x1
            stp x27,x28,[sp,#80]
.cfi_offset 27, -16
.cfi_offset 28, -8
            adrp x28, rsync_sum
            add x28,x28, :lo12:rsync_sum
            ldr x7,[x20,#480]
            ldr w6,[x28,#2768]
            ldrb w8,[x28,#2780]
            ldrh w5,[x7]
            strb w8,[x4,x6]
            cmp w5,w0
            b.eq .L_406204
.L_405fa4:

            adrp x24, optind
            add x24,x24, :lo12:optind
            add x26,x24,#2472
            add x19,x24,#2512
            mov x0,x26
            bl build_tree_1

            mov x0,x19
            bl build_tree_1

            ldr w1,[x24,#2508]
            add x0,x28,#32
            adrp x27, configuration_table
            add x27,x27, :lo12:configuration_table
            bl scan_tree

            ldr w1,[x24,#2548]
            add x0,x28,#2336
            bl scan_tree

            add x0,x24,#2552
            bl build_tree_1

            add x3,x28,#2592
            add x2,x27,#80
            mov x4,#18
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406000:

            ldrb w0,[x2,x4]
            add x0,x3,x0, lsl #2
            ldrh w0,[x0,#2]
            cbnz w0,.L_4061bc

            sub x4,x4,#1
            cmp x4,#2
            b.ne .L_406000

            mov w19,w4
            mov x2,#23
.L_406024:

            ldr x1,[x28,#2760]
            add x26,x25,#4
            ldr x0,[x28,#2752]
            add x2,x2,x1
            ldr x3,[x20,#496]
            add x1,x2,#10
            add x0,x0,#10
            str x2,[x28,#2760]
            lsr x1,x1,#3
            add x2,x3,x25
            lsr x0,x0,#3
            str x2,[x20,#496]
            cmp x1,x0
            csel x2,x1,x0,ls
            cmp x22,#0
            ccmp x26,x2,#2,ne
            b.ls .L_4061d0

            cmp x1,x0
            mov w1,#3
            b.hs .L_406154

            add w0,w21,#4
            bl send_bits

            ldr w25,[x24,#2508]
            mov w1,#5
            ldr w24,[x24,#2548]
            add x26,x28,#2592
            sub w0,w25,#256
            bl send_bits

            mov w0,w24
            mov w1,#5
            bl send_bits

            sub w0,w19,#3
            mov w1,#4
            bl send_bits

            add x0,x27,#81
            add x27,x27,#80
            add x19,x0,w19, sxtw
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4060c0:

            ldrb w0,[x27],#1
            mov w1,#3
            add x0,x26,x0, lsl #2
            ldrh w0,[x0,#2]
            bl send_bits

            cmp x27,x19
            b.ne .L_4060c0

            add x19,x28,#32
            mov w1,w25
            mov x0,x19
            add x25,x28,#2336
            bl send_tree

            mov w1,w24
            mov x0,x25
            bl send_tree

            mov x1,x25
            mov x0,x19
            bl compress_block

            ldr x0,[x28,#2760]
            ldr x1,[x20,#504]
            add x0,x0,#3
            add x0,x0,x1
            str x0,[x20,#504]
.L_40611c:

            bl init_block

            cbnz w21,.L_40618c
.L_406124:

            ldr x0,[x20,#504]
            cbz w23,.L_406134

            tst x0,#7
            b.ne .L_406290
.L_406134:

            ldp x19,x20,[sp,#16]
            asr x0,x0,#3
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406154:

.cfi_restore_state 
            add w0,w21,#2
            bl send_bits

            adrp x0, heap+1568
            add x0,x0, :lo12:heap+1568
            add x1,x20,#288
            add x0,x0,#3488
            bl compress_block

            ldr x0,[x28,#2752]
            ldr x1,[x20,#504]
            add x0,x0,#3
            add x0,x0,x1
            str x0,[x20,#504]
            bl init_block

            cbz w21,.L_406124
.L_40618c:

            bl bi_windup

            ldr x0,[x20,#504]
            add x0,x0,#7
            str x0,[x20,#504]
            asr x0,x0,#3
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4061bc:

.cfi_restore_state 
            add w2,w4,w4, lsl #1
            mov w19,w4
            add w2,w2,#17
            sxtw x2,w2
            b .L_406024
.L_4061d0:

            mov w0,w21
            mov w1,#3
            bl send_bits

            ldr x3,[x20,#504]
            mov w1,w25
            mov x0,x22
            mov w2,#1
            add x3,x3,#10
            and x3,x3,#-8
            add x26,x3,x26, lsl #3
            str x26,[x20,#504]
            bl copy_block

            b .L_40611c
.L_406204:

            add x1,x28,#32
            add x4,x28,#60
            mov x0,x1
            mov w2,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406220:

            ldrh w3,[x0],#4
            add w2,w2,w3
            cmp x4,x0
            b.ne .L_406220

            add x4,x28,#60
            add x0,x1,#512
            mov w5,#0
            nop
            nop
            nop
            nop
.L_406240:

            ldrh w6,[x4],#4
            add w5,w5,w6
            cmp x4,x0
            b.ne .L_406240

            movi v29.4s,#0
            add x1,x1,#1024
            add x0,x28,#544
            nop
            nop
            nop
            nop
.L_406260:

            ld2 {v30.8h,v31.8h},[x0]!
            uaddw v29.4s,v29.4s,v30.4h
            uaddw2 v29.4s,v29.4s,v30.8h
            cmp x0,x1
            b.ne .L_406260

            addv s31,v29.4s
            fmov w0,s31
            add w2,w2,w0
            cmp w2,w5, lsr #2
            cset w0,ls
            strh w0,[x7]
            b .L_405fa4
.L_406290:

            mov w1,#3
            mov w0,#0
            bl send_bits

            ldr x3,[x20,#504]
            mov x0,x22
            mov w2,#1
            mov w1,#0
            add x3,x3,#10
            and x3,x3,#-8
            str x3,[x20,#504]
            bl copy_block

            ldr x0,[x20,#504]
            ldp x21,x22,[sp,#32]
            ldp x19,x20,[sp,#16]
            asr x0,x0,#3
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size flush_block, . - flush_block
.align 4
#-----------------------------------
.globl deflate
.type deflate, @function
#-----------------------------------
deflate:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -80
.cfi_offset 22, -72
            adrp x21, static_ltree+864
            add x21,x21, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            ldr w0,[x21,#1592]
            ldr w18,[x19,#1360]
            cmp w0,#3
            b.le .L_406710

            stp x25,x26,[sp,#64]
.cfi_offset 26, -40
.cfi_offset 25, -48
            cbz w18,.L_406580

            adrp x22, window
            adrp x20, prev
            adrp x26, rsync_sum
            add x22,x22, :lo12:window
            add x20,x20, :lo12:prev
            add x26,x26, :lo12:rsync_sum
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            adrp x27, optind
            add x27,x27, :lo12:optind
            stp x23,x24,[sp,#48]
.cfi_offset 24, -56
.cfi_offset 23, -64
            mov w24,#0
            mov w23,#2
.L_406348:

            ldr w11,[x19,#1364]
            ldr w28,[x21,#1600]
            add w0,w11,#2
            and x2,x11,#32767
            str w23,[x21,#428]
            ldr w3,[x19,#1368]
            ldrb w0,[x22,w0,uxtw]
            eor w28,w0,w28, lsl #5
            and w28,w28,#32767
            str w28,[x21,#1600]
            add w1,w28,#8,lsl #12
            ubfiz x1,x1,#1,#17
            ldrh w0,[x20,x1]
            strh w0,[x20,x2,lsl #1]
            strh w11,[x20,x1]
            cbz w0,.L_4063c0

            ldr w1,[x21,#1596]
            cmp w1,w23
            b.ls .L_4063c0

            sub w2,w11,w0
            mov w1,#32506
            cmp w2,w1
            b.hi .L_4063c0

            ldr x1,[x27,#8]
            sub x1,x1,#262
            cmp x1,w11, uxtw
            b.hs .L_406494

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4063c0:

            cmp w23,#2
            b.ls .L_4064d0
.L_4063c8:

            sub w0,w11,w3
            sub w1,w23,#3
            sub w0,w0,#1
            bl ct_tally

            ldr w11,[x21,#428]
            mov w25,w0
            ldr w12,[x21,#1624]
            sub w18,w18,w11
            sub w0,w11,#2
            add w18,w18,#1
            str w0,[x21,#428]
            str w18,[x19,#1360]
            ldr w13,[x19,#1364]
            cbnz w12,.L_406890
.L_406400:

            add w6,w11,w13
            mov w1,w13
            sub w5,w6,#2
.L_40640c:

            mov w2,w1
            add w1,w1,#1
            add w2,w2,#3
            and x3,x1,#32767
            ldrb w2,[x22,w2,uxtw]
            eor w2,w2,w28, lsl #5
            and w28,w2,#32767
            add w2,w28,#8,lsl #12
            ubfiz x2,x2,#1,#32
            ldrh w4,[x20,x2]
            strh w4,[x20,x3,lsl #1]
            strh w1,[x20,x2]
            cmp w1,w5
            b.ne .L_40640c

            add w0,w11,w13
            strh w4,[x20,x3,lsl #1]
            sub w0,w0,#2
            sub w6,w6,#1
            strh w0,[x20,x2]
            str wzr,[x21,#428]
            str w6,[x19,#1364]
            str w28,[x21,#1600]
            cbz w12,.L_4066d0

            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            mov w1,w6
            ldr x2,[x0,#8]
            cmp x1,x2
            b.ls .L_4066d0

            mov x3,#4294967295
            mov w2,#1
            mov w25,#2
            str x3,[x0,#8]
            b .L_4066dc
.L_406494:

            str w3,[sp,#108]
            bl longest_match

            cmp w0,w18
            ldr w11,[x19,#1364]
            csel w23,w0,w18,ls
            ldr w1,[x21,#428]
            ldr w3,[sp,#108]
            cmp w23,#3
            b.ne .L_40687c

            ldr w0,[x19,#1368]
            sub w0,w11,w0
            cmp w0,#1,lsl #12
            b.ls .L_4069fc

            cmp w1,#2
            b.hi .L_406888
.L_4064d0:

            mov w23,#2
.L_4064d4:

            cbnz w24,.L_4065bc

            ldr w0,[x21,#1624]
            cbz w0,.L_406530

            ldr x0,[x26,#8]
            mov w1,w11
            cmp x1,x0
            b.ls .L_406648

            ldr x0,[x19,#1376]
            mov x4,#4294967295
            mov w3,#0
            mov w2,#1
            cmp x0,#0
            sub x1,x1,x0
            add x0,x22,w0, uxtw
            str x4,[x26,#8]
            csel x0,x0,xzr,ge
            mov w25,#2
            bl flush_block

            ldr w11,[x19,#1364]
            ldr w0,[x21,#1624]
            mov w1,w11
            str x1,[x19,#1376]
            cbnz w0,.L_406648
.L_406530:

            ldr w18,[x19,#1360]
            add w11,w11,#1
            mov w24,#1
            str w11,[x19,#1364]
            sub w18,w18,#1
            str w18,[x19,#1360]
.L_406548:

            cmp w18,#261
            b.ls .L_406564

            b .L_406348
.L_406554:

            bl fill_window

            ldr w18,[x19,#1360]
            cmp w18,#261
            b.hi .L_406348
.L_406564:

            ldr w0,[x19,#1384]
            cbz w0,.L_406554

            ldr w18,[x19,#1360]
            cbnz w18,.L_406348

            cbnz w24,.L_4066b0

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.L_406580:

.cfi_restore 28
.cfi_restore 27
            sub w2,w25,#1
            ldr x1,[x19,#1376]
            adrp x0, window
            ldr w3,[x19,#1364]
            add x0,x0, :lo12:window
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            cmp x1,#0
            ldp x19,x20,[sp,#16]
            add x0,x0,w1, uxtw
            ldp x21,x22,[sp,#32]
            sub x1,x3,x1
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            csel x0,x0,xzr,ge
            mov w3,#1
            b flush_block
.L_4065bc:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 26, -40
.cfi_offset 27, -32
.cfi_offset 28, -24
.cfi_offset 29, -112
.cfi_offset 30, -104
            sub w11,w11,#1
            mov w0,#0
            ldrb w1,[x22,w11,uxtw]
            bl ct_tally

            ldr w11,[x19,#1364]
            ldr w2,[x21,#1624]
            mov w25,w0
            cbz w2,.L_406658

            ldr x0,[x26,#8]
            mov w1,w11
            cmp x1,x0
            b.hi .L_40669c

            cbz w25,.L_406678

            mov w2,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406600:

            ldr x0,[x19,#1376]
            mov w3,#0
            cmp x0,#0
            sub x1,x1,x0
            add x0,x22,w0, uxtw
            csel x0,x0,xzr,ge
            bl flush_block

            ldr w11,[x19,#1364]
            ldr w0,[x21,#1624]
            mov w1,w11
            str x1,[x19,#1376]
            cbnz w0,.L_406678

            ldr w18,[x19,#1360]
            add w11,w11,#1
            str w11,[x19,#1364]
            sub w18,w18,#1
            str w18,[x19,#1360]
            b .L_406548
.L_406648:

            mov w0,w11
            mov w1,#1
            bl rsync_roll

            b .L_406530
.L_406658:

            mov w1,w11
            cbnz w0,.L_406600

            ldr w18,[x19,#1360]
            add w11,w11,#1
            str w11,[x19,#1364]
            sub w18,w18,#1
            str w18,[x19,#1360]
            b .L_406548
.L_406678:

            mov w0,w11
            mov w1,#1
            bl rsync_roll

            ldr w18,[x19,#1360]
            add w11,w11,#1
            str w11,[x19,#1364]
            sub w18,w18,#1
            str w18,[x19,#1360]
            b .L_406548
.L_40669c:

            mov x0,#4294967295
            mov w2,w24
            mov w25,#2
            str x0,[x26,#8]
            b .L_406600
.L_4066b0:

            ldr w1,[x19,#1364]
            mov w0,#0
            sub w1,w1,#1
            ldrb w1,[x22,w1,uxtw]
            bl ct_tally

            ldp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_406580
.L_4066d0:

.cfi_restore_state 
            cbz w25,.L_406870

            mov w1,w6
            mov w2,#0
.L_4066dc:

            ldr x0,[x19,#1376]
            mov w3,#0
            mov w23,#2
            mov w24,#0
            cmp x0,#0
            sub x1,x1,x0
            add x0,x22,w0, uxtw
            csel x0,x0,xzr,ge
            bl flush_block

            ldr w0,[x19,#1364]
            ldr w18,[x19,#1360]
            str x0,[x19,#1376]
            b .L_406548
.L_406710:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            stp x23,x24,[sp,#48]
.cfi_offset 24, -56
.cfi_offset 23, -64
            mov w0,#2
            str w0,[x21,#428]
            cbz w18,.L_406834

            adrp x22, window
            adrp x20, prev
            add x22,x22, :lo12:window
            add x20,x20, :lo12:prev
            stp x25,x26,[sp,#64]
.cfi_offset 26, -40
.cfi_offset 25, -48
            adrp x25, rsync_sum
            adrp x26, optind
            add x25,x25, :lo12:rsync_sum
            add x26,x26, :lo12:optind
.L_406744:

            ldr w2,[x19,#1364]
            ldr w23,[x21,#1600]
            add w0,w2,#2
            and x3,x2,#32767
            ldrb w0,[x22,w0,uxtw]
            eor w23,w0,w23, lsl #5
            and w23,w23,#32767
            str w23,[x21,#1600]
            add w1,w23,#8,lsl #12
            ubfiz x1,x1,#1,#17
            ldrh w0,[x20,x1]
            strh w0,[x20,x3,lsl #1]
            strh w2,[x20,x1]
            cbz w0,.L_4068a0

            sub w3,w2,w0
            mov w1,#32506
            cmp w3,w1
            b.hi .L_4068a0

            ldr x1,[x26,#8]
            mov w2,w2
            sub x1,x1,#262
            cmp x2,x1
            b.ls .L_406900

            ldrb w1,[x22,x2]
            mov w0,#0
            bl ct_tally

            ldr w11,[x19,#1364]
            ldr w1,[x21,#1624]
            mov w24,w0
            cbnz w1,.L_4068c0

            nop
            nop
            nop
            nop
.L_4067c0:

            sub w18,w18,#1
            add w11,w11,#1
            str w18,[x19,#1360]
            str w11,[x19,#1364]
.L_4067d0:

            cbz w24,.L_406800

            ldr w1,[x19,#1364]
            mov w2,#0
.L_4067dc:

            ldr x0,[x19,#1376]
            mov w3,#0
            cmp x0,#0
            sub x1,x1,x0
            add x0,x22,w0, uxtw
            csel x0,x0,xzr,ge
            bl flush_block

            ldr w0,[x19,#1364]
            str x0,[x19,#1376]
.L_406800:

            ldr w18,[x19,#1360]
            cmp w18,#261
            b.ls .L_406820

            b .L_406744
.L_406810:

            bl fill_window

            ldr w18,[x19,#1360]
            cmp w18,#261
            b.hi .L_406744
.L_406820:

            ldr w1,[x19,#1384]
            cbz w1,.L_406810

            ldr w18,[x19,#1360]
            cbnz w18,.L_406744

            ldp x25,x26,[sp,#64]
.L_406834:

.cfi_restore 26
.cfi_restore 25
            sub w2,w24,#1
            ldr x1,[x19,#1376]
            adrp x0, window
            ldr w3,[x19,#1364]
            add x0,x0, :lo12:window
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            cmp x1,#0
            ldp x19,x20,[sp,#16]
            add x0,x0,w1, uxtw
            ldp x21,x22,[sp,#32]
            sub x1,x3,x1
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            csel x0,x0,xzr,ge
            mov w3,#1
            b flush_block
.L_406870:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 26, -40
.cfi_offset 27, -32
.cfi_offset 28, -24
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov w24,#0
            mov w23,#2
            b .L_406548
.L_40687c:

            cmp w1,#2
            ccmp w23,w1,#2,hi
            b.hi .L_4064d4
.L_406888:

            mov w23,w1
            b .L_4063c8
.L_406890:

            sub w1,w11,#1
            mov w0,w13
            bl rsync_roll

            b .L_406400
.L_4068a0:

.cfi_restore 27
.cfi_restore 28
            mov w2,w2
            mov w0,#0
            ldrb w1,[x22,x2]
            bl ct_tally

            ldr w11,[x19,#1364]
            ldr w1,[x21,#1624]
            mov w24,w0
            cbz w1,.L_4067c0
.L_4068c0:

            mov w0,w11
            sub w18,w18,#1
            add w11,w11,#1
            mov w1,#1
            bl rsync_roll

            str w18,[x19,#1360]
            str w11,[x19,#1364]
.L_4068dc:

            ldr x0,[x25,#8]
            ldr w1,[x19,#1364]
            cmp x1,x0
            b.ls .L_4067d0

            mov x0,#4294967295
            mov w2,#1
            mov w24,#2
            str x0,[x25,#8]
            b .L_4067dc
.L_406900:

            bl longest_match

            cmp w0,w18
            csel w11,w0,w18,ls
            ldr w2,[x19,#1364]
            cmp w11,#2
            b.ls .L_4068a0

            ldr w0,[x19,#1368]
            sub w1,w11,#3
            sub w18,w18,w11
            sub w0,w2,w0
            bl ct_tally

            ldr w13,[x21,#1624]
            mov w24,w0
            str w18,[x19,#1360]
            ldr w12,[x19,#1364]
            cbnz w13,.L_406970

            ldr w0,[x21,#1596]
            cmp w11,w0
            b.ls .L_406988
.L_40694c:

            add w11,w11,w12
            str w11,[x19,#1364]
            add w1,w11,#1
            ldrb w0,[x22,w11,uxtw]
            ldrb w1,[x22,w1,uxtw]
            eor w0,w1,w0, lsl #5
            str w0,[x21,#1600]
            cbnz w13,.L_4068dc

            b .L_4067d0
.L_406970:

            mov w0,w12
            mov w1,w11
            bl rsync_roll

            ldr w0,[x21,#1596]
            cmp w11,w0
            b.hi .L_40694c
.L_406988:

            sub w5,w12,#1
            mov w1,w12
            add w5,w5,w11
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4069a0:

            mov w2,w1
            add w1,w1,#1
            add w2,w2,#3
            and x3,x1,#32767
            ldrb w2,[x22,w2,uxtw]
            eor w2,w2,w23, lsl #5
            and w23,w2,#32767
            add w2,w23,#8,lsl #12
            ubfiz x2,x2,#1,#32
            ldrh w4,[x20,x2]
            strh w4,[x20,x3,lsl #1]
            strh w1,[x20,x2]
            cmp w1,w5
            b.ne .L_4069a0

            add w0,w11,w12
            strh w4,[x20,x3,lsl #1]
            sub w0,w0,#1
            add w12,w11,w12
            strh w0,[x20,x2]
            str w12,[x19,#1364]
            str w23,[x21,#1600]
            cbnz w13,.L_4068dc

            b .L_4067d0
.L_4069fc:

.cfi_offset 27, -32
.cfi_offset 28, -24
            cmp w1,#2
            b.ls .L_4064d4

            mov w23,w1
            b .L_4063c8
.cfi_endproc 
.size deflate, . - deflate
.align 2
#-----------------------------------
.globl zip
.type zip, @function
#-----------------------------------
zip:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            adrp x6, outbuf
            mov x5,#4294967295
            mov fp,sp
            mov w7,#-29921
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            adrp x20, optind
            add x21,x6, :lo12:outbuf
            ldr w2,[x19,#1608]
            add x20,x20, :lo12:optind
            ldr x4,[x19,#1632]
            cmp w2,#0
            cset w2,ne
            ldr w3,[x19,#1632]
            cmp x4,x5
            strh w7,[x6,:lo12:outbuf]
            ubfiz w4,w2,#3,#5
            csel w3,w3,wzr,ls
            mov w2,#8
            strb w2,[x21,#2]
            strb w4,[x21,#3]
            str w3,[x21,#4]
            strh wzr,[sp,#60]
            strh wzr,[sp,#62]
            str w2,[x20,#340]
            str x5,[x20,#344]
            str w1,[x19,#412]
            strh wzr,[x19,#416]
            str wzr,[x19,#420]
            str w0,[x19,#516]
            str w2,[x19,#1564]
            str xzr,[x19,#1616]
            cmn w1,#1
            b.eq .L_406ab0

            adrp x0, read_buf
            adrp x1, file_read
            add x1,x1, :lo12:file_read
            str x1,[x0,:lo12:read_buf]
.L_406ab0:

            ldrh w1,[x19,#290]
            add x2,sp,#60
            add x0,x20,#340
            stp x2,x0,[x19,#480]
            stp xzr,xzr,[x19,#496]
            cbnz w1,.L_406acc

            bl ct_init.part.0
.L_406acc:

            ldr w0,[x20,#336]
            add x1,sp,#62
            bl lm_init

            ldr w1,[x19,#1564]
            ldrh w2,[sp,#62]
            add w0,w1,#1
            str w0,[x19,#1564]
            strb w2,[x21,w1,uxtw]
            cmp w0,#4,lsl #12
            b.eq .L_406d64
.L_406af4:

            add w20,w0,#1
            mov w1,#3
            strb w1,[x21,w0,uxtw]
            str w20,[x19,#1564]
            cmp w20,#4,lsl #12
            b.eq .L_406d58
.L_406b0c:

            ldr w0,[x19,#1608]
            cbz w0,.L_406b68

            add x22,x19,#528
            mov w1,#47
            mov x0,x22
            bl strrchr

            cmp x0,#0
            csinc x22,x22,x0,eq
            b .L_406b38
.L_406b30:

            add x22,x22,#1
            cbz w0,.L_406b68
.L_406b38:

            ldrb w0,[x22]
            add w1,w20,#1
            strb w0,[x21,w20,uxtw]
            mov w20,w1
            str w1,[x19,#1564]
            cmp w1,#4,lsl #12
            b.ne .L_406b30

            bl flush_outbuf

            add x22,x22,#1
            ldurb w0,[x22,#-1]
            ldr w20,[x19,#1564]
            cbnz w0,.L_406b38
.L_406b68:

            mov w20,w20
            str x20,[x19,#1640]
            bl deflate

            ldr w0,[x19,#1564]
            mov w4,#16381
            ldr x1,[x19,#1616]
            add w2,w0,#1
            and w3,w1,#255
            strb w3,[x21,w0,uxtw]
            cmp w0,w4
            b.hi .L_406c40

            add w0,w0,#2
            ubfx w3,w1,#8,#8
            strb w3,[x21,w2,uxtw]
.L_406ba0:

            lsr x2,x1,#16
            ubfx w1,w1,#16,#8
            strb w1,[x21,w0,uxtw]
            add w3,w0,#1
            mov w4,#16381
            cmp w0,w4
            b.hi .L_406c8c
.L_406bbc:

            add w0,w0,#2
            ubfx w2,w2,#8,#8
            strb w2,[x21,w3,uxtw]
.L_406bc8:

            ldr x1,[x19,#1576]
            add w2,w0,#1
            mov w4,#16381
            and w3,w1,#255
            strb w3,[x21,w0,uxtw]
            cmp w0,w4
            b.hi .L_406ce0
.L_406be4:

            add w0,w0,#2
            ubfx w3,w1,#8,#8
            strb w3,[x21,w2,uxtw]
.L_406bf0:

            lsr x2,x1,#16
            ubfx w1,w1,#16,#8
            strb w1,[x21,w0,uxtw]
            add w3,w0,#1
            mov w4,#16381
            cmp w0,w4
            b.hi .L_406d2c
.L_406c0c:

            add w0,w0,#2
            ubfx w2,w2,#8,#8
            strb w2,[x21,w3,uxtw]
            str w0,[x19,#1564]
.L_406c1c:

            ldr x0,[x19,#1640]
            add x0,x0,#16
            str x0,[x19,#1640]
            bl flush_outbuf

            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406c40:

.cfi_restore_state 
            str w2,[x19,#1564]
            cmp w2,#4,lsl #12
            b.eq .L_406d70

            add w0,w2,#1
            ubfx w3,w1,#8,#8
            strb w3,[x21,w2,uxtw]
            str w0,[x19,#1564]
            cmp w0,#4,lsl #12
            b.ne .L_406ba0
.L_406c64:

            bl flush_outbuf

            ldr x1,[x19,#1616]
            mov w4,#16381
            ldr w0,[x19,#1564]
            lsr x2,x1,#16
            ubfx w1,w1,#16,#8
            add w3,w0,#1
            strb w1,[x21,w0,uxtw]
            cmp w0,w4
            b.ls .L_406bbc
.L_406c8c:

            str w3,[x19,#1564]
            cmp w3,#4,lsl #12
            b.eq .L_406dec

            ubfx w2,w2,#8,#8
            add w0,w3,#1
            strb w2,[x21,w3,uxtw]
            str w0,[x19,#1564]
            cmp w0,#4,lsl #12
            b.ne .L_406bc8
.L_406cb0:

            bl flush_outbuf

            ldr w0,[x19,#1564]
            mov w4,#16381
            ldr x1,[x19,#1576]
            add w2,w0,#1
            and w3,w1,#255
            strb w3,[x21,w0,uxtw]
            cmp w0,w4
            b.ls .L_406be4

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406ce0:

            str w2,[x19,#1564]
            cmp w2,#4,lsl #12
            b.eq .L_406dc4

            add w0,w2,#1
            ubfx w3,w1,#8,#8
            strb w3,[x21,w2,uxtw]
            str w0,[x19,#1564]
            cmp w0,#4,lsl #12
            b.ne .L_406bf0
.L_406d04:

            bl flush_outbuf

            ldr x1,[x19,#1576]
            mov w4,#16381
            ldr w0,[x19,#1564]
            lsr x2,x1,#16
            ubfx w1,w1,#16,#8
            add w3,w0,#1
            strb w1,[x21,w0,uxtw]
            cmp w0,w4
            b.ls .L_406c0c
.L_406d2c:

            str w3,[x19,#1564]
            cmp w3,#4,lsl #12
            b.eq .L_406d98

            ubfx w2,w2,#8,#8
            add w0,w3,#1
            strb w2,[x21,w3,uxtw]
            str w0,[x19,#1564]
            cmp w0,#4,lsl #12
            b.ne .L_406c1c
.L_406d50:

            bl flush_outbuf

            b .L_406c1c
.L_406d58:

            bl flush_outbuf

            ldr w20,[x19,#1564]
            b .L_406b0c
.L_406d64:

            bl flush_outbuf

            ldr w0,[x19,#1564]
            b .L_406af4
.L_406d70:

            bl flush_outbuf

            ldr x1,[x19,#1616]
            ldr w2,[x19,#1564]
            ubfx w3,w1,#8,#8
            add w0,w2,#1
            str w0,[x19,#1564]
            strb w3,[x21,w2,uxtw]
            cmp w0,#4,lsl #12
            b.ne .L_406ba0

            b .L_406c64
.L_406d98:

            bl flush_outbuf

            ldr x2,[x19,#1576]
            ldr w3,[x19,#1564]
            lsr x2,x2,#16
            add w0,w3,#1
            str w0,[x19,#1564]
            ubfx w2,w2,#8,#8
            strb w2,[x21,w3,uxtw]
            cmp w0,#4,lsl #12
            b.ne .L_406c1c

            b .L_406d50
.L_406dc4:

            bl flush_outbuf

            ldr x1,[x19,#1576]
            ldr w2,[x19,#1564]
            ubfx w3,w1,#8,#8
            add w0,w2,#1
            str w0,[x19,#1564]
            strb w3,[x21,w2,uxtw]
            cmp w0,#4,lsl #12
            b.ne .L_406bf0

            b .L_406d04
.L_406dec:

            bl flush_outbuf

            ldr x2,[x19,#1616]
            ldr w3,[x19,#1564]
            lsr x2,x2,#16
            add w0,w3,#1
            str w0,[x19,#1564]
            ubfx w2,w2,#8,#8
            strb w2,[x21,w3,uxtw]
            cmp w0,#4,lsl #12
            b.ne .L_406bc8

            b .L_406cb0
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size zip, . - zip
.align 4
#-----------------------------------
.globl flush_window
.type flush_window, @function
#-----------------------------------
flush_window:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            adrp x21, static_ltree+864
            add x21,x21, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr w19,[x21,#1564]
            cbnz w19,.L_406e50

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406e50:

.cfi_restore_state 
            adrp x4, optind
            add x4,x4, :lo12:optind
            mov w2,w19
            adrp x20, window
            add x20,x20, :lo12:window
            add x6,x4,#352
            ldr x1,[x4,#344]
            add x5,x20,x2
            mov x3,x20
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406e80:

            ldrb w0,[x3],#1
            eor w0,w0,w1
            and w0,w0,#255
            ldr x0,[x6,w0,sxtw #3]
            eor x1,x0,x1, lsr #8
            cmp x3,x5
            b.ne .L_406e80

            ldr w0,[x21,#1648]
            str x1,[x4,#344]
            cbz w0,.L_406ec8
.L_406ea8:

            ldr x0,[x21,#1568]
            str wzr,[x21,#1564]
            add x0,x0,x2
            str x0,[x21,#1568]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406ec8:

.cfi_restore_state 
            ldr w22,[x21,#412]
            b .L_406ee4
.L_406ed0:

            cmn w0,#1
            b.eq .L_406f00

            sub w2,w19,w0
            add x20,x20,w0, uxtw
            mov x19,x2
.L_406ee4:

            mov x1,x20
            mov w0,w22
            bl write

            cmp w0,w19
            b.ne .L_406ed0

            ldr w2,[x21,#1564]
            b .L_406ea8
.L_406f00:

            bl write_error
.cfi_endproc 
.size flush_window, . - flush_window
.align 2
#-----------------------------------
.globl fill_inbuf
.type fill_inbuf, @function
#-----------------------------------
fill_inbuf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov w1,#0
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
            mov w20,#32768
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov w22,#32767
            stp x23,x24,[sp,#48]
.cfi_offset 23, -16
.cfi_offset 24, -8
            adrp x23, inbuf
            mov w24,w0
            add x21,x23, :lo12:inbuf
            str wzr,[x19,#520]
            b .L_406f5c
.L_406f40:

            cmn w0,#1
            b.eq .L_406fcc

            ldr w1,[x19,#520]
            add w1,w1,w0
            str w1,[x19,#520]
            cmp w1,w22
            b.hi .L_406f94
.L_406f5c:

            ldr w0,[x19,#516]
            sub w2,w20,w1
            add x1,x21,w1, uxtw
            bl read

            cbnz w0,.L_406f40

            ldr w1,[x19,#520]
            cbnz w1,.L_406f94

            mov w0,#-1
            cbz w24,.L_406fc0

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406f94:

.cfi_restore_state 
            ldr x2,[x19,#1576]
            mov w3,#1
            str w3,[x19,#512]
            ldrb w0,[x23,:lo12:inbuf]
            add x1,x2,w1, uxtw
            str x1,[x19,#1576]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406fc0:

.cfi_restore_state 
            bl flush_window

            bl __errno_location

            str wzr,[x0]
.L_406fcc:

            bl read_error
.cfi_endproc 
.size fill_inbuf, . - fill_inbuf
#-----------------------------------
.type input_eof, @function
#-----------------------------------
input_eof:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            ldr w0,[x19,#1604]
            cbz w0,.L_40700c

            ldr w20,[x19,#1652]
            cbnz w20,.L_40700c

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.ne .L_407010

            cmp w0,#8,lsl #12
            b.eq .L_407020
.L_40700c:

            mov w20,#1
.L_407010:

            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407020:

.cfi_restore_state 
            mov w0,#1
            bl fill_inbuf

            cmn w0,#1
            b.eq .L_40700c

            str wzr,[x19,#512]
            b .L_407010
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size input_eof, . - input_eof
#-----------------------------------
.type get_method, @function
#-----------------------------------
get_method:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
            mov w20,w0
            stp x23,x24,[sp,#48]
            ldr w0,[x19,#1656]
            ldr w1,[x19,#512]
            ldr w2,[x19,#520]
            cmp w1,w2
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
.cfi_offset 24, -40
            cbz w0,.L_40707c

            ldr w0,[x19,#1660]
            cbnz w0,.L_407448
.L_40707c:

            b.hs .L_40750c

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w3,w1,#1
            str w3,[x19,#512]
            ldrb w0,[x0,w1,uxtw]
.L_407094:

            mov w22,#0
            bfxil w22,w0,#0,#8
            cmp w3,w2
            b.hs .L_4074fc

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w1,w3,#1
            str w1,[x19,#512]
            ldrb w0,[x0,w3,uxtw]
.L_4070b8:

            mov w23,#0
.L_4070bc:

            adrp x21, optind
            add x21,x21, :lo12:optind
            ldr w1,[x19,#1664]
            bfi w22,w0,#8,#8
            and w2,w22,#65535
            mov w0,#-1
            add w1,w1,#1
            str w0,[x21,#340]
            str xzr,[x19,#1640]
            mov w0,#35615
            str wzr,[x19,#1652]
            str w1,[x19,#1664]
            cmp w2,w0
            b.eq .L_407100

            mov w0,#40479
            cmp w2,w0
            b.ne .L_4073f8
.L_407100:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.hs .L_4074f0

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add w2,w0,#1
            str w2,[x19,#512]
            ldrb w0,[x1,w0,uxtw]
.L_407124:

            str w0,[x21,#340]
            cmp w0,#8
            b.ne .L_40799c

            ldr w1,[x19,#512]
            adrp x0, unzip
            ldr w2,[x19,#520]
            add x0,x0, :lo12:unzip
            str x0,[x21,#2592]
            cmp w1,w2
            b.hs .L_40748c

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w2,w1,#1
            str w2,[x19,#512]
            ldrb w24,[x0,w1,uxtw]
.L_407160:

            tbnz w24,#5,.L_4079d4

            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            and w25,w24,#2
            tbnz w24,#1,.L_407524
.L_407170:

            cmp w24,#63
            b.hi .L_407568

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.hs .L_4075b4
.L_407188:

            adrp x2, inbuf
            add x2,x2, :lo12:inbuf
            add w3,w0,#1
            str w3,[x19,#512]
            ldrb w26,[x2,w0,uxtw]
            cmp w3,w1
            b.hs .L_4075d0
.L_4071a4:

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w2,w3,#1
            str w2,[x19,#512]
            ldrb w0,[x0,w3,uxtw]
            lsl x0,x0,#8
            orr x26,x26,x0
            cmp w2,w1
            b.hs .L_4075f0
.L_4071c8:

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w3,w2,#1
            str w3,[x19,#512]
            ldrb w0,[x0,w2,uxtw]
            lsl x20,x0,#16
            cmp w3,w1
            b.hs .L_40760c
.L_4071e8:

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w2,w3,#1
            str w2,[x19,#512]
            ldrb w0,[x0,w3,uxtw]
            lsl x0,x0,#24
.L_407200:

            orr x0,x20,x0
            orr x0,x0,x26
            cbz x0,.L_407214

            ldr w3,[x21,#2600]
            cbz w3,.L_4076d8
.L_407214:

            cmp w2,w1
            b.hs .L_407624

            add w2,w2,#1
            str w2,[x19,#512]
            cmp w2,w1
            b.hs .L_40763c
.L_40722c:

            add w2,w2,#1
            str w2,[x19,#512]
.L_407234:

            cbz w25,.L_407284

            ldr w0,[x19,#512]
            ldr w2,[x19,#520]
            cmp w0,w2
            b.hs .L_4077d8

            adrp x3, inbuf
            add x3,x3, :lo12:inbuf
            add w1,w0,#1
            str w1,[x19,#512]
            ldrb w20,[x3,w0,uxtw]
.L_40725c:

            cmp w1,w2
            b.hs .L_4077c8

            adrp x2, inbuf
            add x2,x2, :lo12:inbuf
            add w0,w1,#1
            str w0,[x19,#512]
            ldrb w1,[x2,w1,uxtw]
            lsl w1,w1,#8
.L_40727c:

            ldr w2,[x19,#1668]
            cbnz w2,.L_4076e0
.L_407284:

            tbz w24,#2,.L_407320

            ldr w0,[x19,#512]
            ldr w2,[x19,#520]
            cmp w0,w2
            b.hs .L_407828

            adrp x3, inbuf
            add x3,x3, :lo12:inbuf
            add w1,w0,#1
            str w1,[x19,#512]
            ldrb w25,[x3,w0,uxtw]
.L_4072ac:

            cmp w1,w2
            b.hs .L_407818

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w2,w1,#1
            str w2,[x19,#512]
            ldrb w0,[x0,w1,uxtw]
            lsl w0,w0,#8
.L_4072cc:

            ldr w1,[x19,#1668]
            orr w25,w25,w0
            cbnz w1,.L_4077f0
.L_4072d8:

            sub w20,w25,#1
            cbnz w25,.L_4072f8

            b .L_407320
.L_4072e4:

            add w1,w1,#1
            sub w20,w20,#1
            str w1,[x19,#512]
            cmn w20,#1
            b.eq .L_407320
.L_4072f8:

            ldr w1,[x19,#512]
            ldr w0,[x19,#520]
            cmp w1,w0
            b.lo .L_4072e4

            mov w0,#0
            sub w20,w20,#1
            bl fill_inbuf

            cmn w20,#1
            b.ne .L_4072f8

            nop
            nop
            nop
            nop
.L_407320:

            tbz w24,#3,.L_407360

            ldr w0,[x21,#2604]
            cbz w0,.L_407648
.L_40732c:

            adrp x20, inbuf
            add x20,x20, :lo12:inbuf
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407340:

            ldr w1,[x19,#512]
            ldr w0,[x19,#520]
            cmp w1,w0
            b.hs .L_4074b4

            ldrb w0,[x20,w1,uxtw]
            add w2,w1,#1
            str w2,[x19,#512]
            cbnz w0,.L_407340
.L_407360:

            tbz w24,#4,.L_407394

            adrp x20, inbuf
            add x20,x20, :lo12:inbuf
.L_40736c:

            ldr w1,[x19,#512]
            ldr w0,[x19,#520]
            cmp w1,w0
            b.hs .L_40749c

            ldrb w0,[x20,w1,uxtw]
            add w1,w1,#1
            str w1,[x19,#512]
            cmp w0,#0
            cset w0,ne
            cbnz w0,.L_40736c
.L_407394:

            ldr w1,[x19,#1664]
            ldr w0,[x21,#340]
            cmp w1,#1
            b.eq .L_4074c8

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            tbz w0,#31,.L_4073e4
.L_4073ac:

            tst w22,#255
            b.ne .L_4073c0

            cbz w23,.L_40777c
.L_4073b8:

            cmn w23,#1
            b.eq .L_40774c
.L_4073c0:

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            ldr w0,[x20,#1436]
            cbz w0,.L_4077a8
.L_4073d0:

            ldr w0,[x20,#1408]
            cbnz w0,.L_4073e0

            mov w0,#2
            str w0,[x20,#1408]
.L_4073e0:

            mov w0,#-2
.L_4073e4:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4073f8:

.cfi_restore_state 
            mov w0,#19280
            cmp w2,w0
            b.ne .L_407410

            ldr w0,[x19,#512]
            cmp w0,#2
            b.eq .L_4078d4
.L_407410:

            mov w0,#7711
            cmp w2,w0
            b.eq .L_407708

            mov w0,#40223
            cmp w2,w0
            b.ne .L_407868

            mov w2,#1
            adrp x1, unlzw
            mov w0,w2
            add x1,x1, :lo12:unlzw
            str w2,[x21,#340]
            str w2,[x19,#1652]
            str x1,[x21,#2592]
            b .L_4073e4
.L_407448:

            b.hs .L_407734

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w3,w1,#1
            str w3,[x19,#512]
            ldrb w0,[x0,w1,uxtw]
.L_407460:

            mov w22,#0
            bfxil w22,w0,#0,#8
            cmp w3,w2
            b.hs .L_407854

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w1,w3,#1
            str w1,[x19,#512]
            ldrb w0,[x0,w3,uxtw]
            mov w23,w0
            b .L_4070bc
.L_40748c:

            mov w0,#0
            bl fill_inbuf

            and w24,w0,#255
            b .L_407160
.L_40749c:

.cfi_offset 25, -32
.cfi_offset 26, -24
            mov w0,#0
            bl fill_inbuf

            cmp w0,#0
            cset w0,ne
            cbnz w0,.L_40736c

            b .L_407394
.L_4074b4:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            cbnz w0,.L_407340

            b .L_407360
.L_4074c8:

            ldr w1,[x19,#512]
            add x1,x1,#16
            str x1,[x19,#1640]
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            tbnz w0,#31,.L_407924

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4074f0:

.cfi_restore_state 
            mov w0,#0
            bl fill_inbuf

            b .L_407124
.L_4074fc:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            b .L_4070b8
.L_40750c:

            mov w0,#0
            bl fill_inbuf

            ldr w3,[x19,#512]
            and w0,w0,#255
            ldr w2,[x19,#520]
            b .L_407094
.L_407524:

.cfi_offset 25, -32
.cfi_offset 26, -24
            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            adrp x0, stderr
            add x3,x19,#528
            adrp x1, .L_40c158
            add x1,x1, :lo12:.L_40c158
            ldr x2,[x20,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            ldr w0,[x19,#1656]
            mov w1,#1
            str w1,[x20,#1408]
            cmp w0,w1
            b.gt .L_407170
.L_40755c:

            ldp x25,x26,[sp,#64]
.L_407560:

.cfi_restore 26
.cfi_restore 25
            mov w0,#-1
            b .L_4073e4
.L_407568:

.cfi_offset 25, -32
.cfi_offset 26, -24
            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            adrp x0, stderr
            mov w4,w24
            add x3,x19,#528
            adrp x1, .L_40c190
            ldr x2,[x20,#1400]
            add x1,x1, :lo12:.L_40c190
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            ldr w0,[x19,#1656]
            mov w1,#1
            str w1,[x20,#1408]
            cmp w0,w1
            b.le .L_40755c

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.lo .L_407188
.L_4075b4:

            mov w0,#0
            bl fill_inbuf

            ldr w3,[x19,#512]
            sxtw x26,w0
            ldr w1,[x19,#520]
            cmp w3,w1
            b.lo .L_4071a4
.L_4075d0:

            mov w0,#0
            bl fill_inbuf

            ldr w2,[x19,#512]
            sbfiz x0,x0,#8,#32
            ldr w1,[x19,#520]
            orr x26,x26,x0
            cmp w2,w1
            b.lo .L_4071c8
.L_4075f0:

            mov w0,#0
            bl fill_inbuf

            ldr w3,[x19,#512]
            sbfiz x20,x0,#16,#32
            ldr w1,[x19,#520]
            cmp w3,w1
            b.lo .L_4071e8
.L_40760c:

            mov w0,#0
            bl fill_inbuf

            ldr w2,[x19,#512]
            sbfiz x0,x0,#24,#32
            ldr w1,[x19,#520]
            b .L_407200
.L_407624:

            mov w0,#0
            bl fill_inbuf

            ldr w2,[x19,#512]
            ldr w1,[x19,#520]
            cmp w2,w1
            b.lo .L_40722c
.L_40763c:

            mov w0,#0
            bl fill_inbuf

            b .L_407234
.L_407648:

            ldr w0,[x19,#1660]
            cbz w0,.L_407658

            ldr w0,[x19,#1672]
            cbz w0,.L_40732c
.L_407658:

            ldr w0,[x19,#1664]
            cmp w0,#1
            b.gt .L_40732c

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            add x25,x20,#1440
            mov w1,#47
            mov x0,x25
            str x27,[sp,#80]
.cfi_offset 27, -16
            bl strrchr

            cmp x0,#0
            csinc x25,x25,x0,eq
            adrp x27, inbuf
            add x20,x20,#2464
            add x27,x27, :lo12:inbuf
            mov x26,x25
            b .L_4076b8
.L_40769c:

            add w1,w0,#1
            ldrb w0,[x27,w0,uxtw]
            str w1,[x19,#512]
.L_4076a8:

            strb w0,[x26],#1
            cbz w0,.L_4078ac

            cmp x26,x20
            b.hs .L_4079f0
.L_4076b8:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.lo .L_40769c

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            b .L_4076a8
.L_4076d8:

.cfi_restore 27
            str x0,[x19,#1632]
            b .L_407214
.L_4076e0:

            adrp x0, progname
            adrp x3, stderr
            orr w4,w20,w1
            adrp x1, .L_40c1b8
            ldr x2,[x0,:lo12:progname]
            add x1,x1, :lo12:.L_40c1b8
            ldr x0,[x3,:lo12:stderr]
            add x3,x19,#528
            bl fprintf

            b .L_407284
.L_407708:

.cfi_restore 25
.cfi_restore 26
            mov w2,#2
            adrp x1, unpack
            add x1,x1, :lo12:unpack
            str w2,[x21,#340]
            str x1,[x21,#2592]
            mov w0,w2
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407734:

.cfi_restore_state 
            mov w0,#1
            bl fill_inbuf

            ldr w3,[x19,#512]
            and w0,w0,#255
            ldr w2,[x19,#520]
            b .L_407460
.L_40774c:

            ldr w0,[x19,#1668]
            cbz w0,.L_407774

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            ldr w0,[x20,#1436]
            cbz w0,.L_40797c
.L_407764:

            ldr w0,[x20,#1408]
            cbnz w0,.L_407774

            mov w0,#2
            str w0,[x20,#1408]
.L_407774:

            mov w0,#-3
            b .L_4073e4
.L_40777c:

            adrp x20, inbuf
            add x20,x20, :lo12:inbuf
.L_407784:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.hs .L_407840

            ldrb w23,[x20,w0,uxtw]
            add w1,w0,#1
            str w1,[x19,#512]
            cbnz w23,.L_4073b8

            b .L_407784
.L_4077a8:

            adrp x0, stderr
            add x3,x19,#528
            ldr x2,[x20,#1400]
            adrp x1, .L_40c280
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c280
            bl fprintf

            b .L_4073d0
.L_4077c8:

.cfi_offset 25, -32
.cfi_offset 26, -24
            mov w0,#0
            bl fill_inbuf

            lsl w1,w0,#8
            b .L_40727c
.L_4077d8:

            mov w0,#0
            bl fill_inbuf

            ldr w1,[x19,#512]
            mov w20,w0
            ldr w2,[x19,#520]
            b .L_40725c
.L_4077f0:

            adrp x0, progname
            adrp x3, stderr
            mov w4,w25
            adrp x1, .L_40c1d0
            ldr x2,[x0,:lo12:progname]
            add x1,x1, :lo12:.L_40c1d0
            ldr x0,[x3,:lo12:stderr]
            add x3,x19,#528
            bl fprintf

            b .L_4072d8
.L_407818:

            mov w0,#0
            bl fill_inbuf

            lsl w0,w0,#8
            b .L_4072cc
.L_407828:

            mov w0,#0
            bl fill_inbuf

            ldr w1,[x19,#512]
            mov w25,w0
            ldr w2,[x19,#520]
            b .L_4072ac
.L_407840:

.cfi_restore 25
.cfi_restore 26
            mov w0,#1
            bl fill_inbuf

            mov w23,w0
            cbnz w23,.L_4073b8

            b .L_407784
.L_407854:

            mov w0,#1
            bl fill_inbuf

            mov w23,w0
            and w0,w0,#255
            b .L_4070bc
.L_407868:

            mov w0,#40991
            cmp w2,w0
            b.eq .L_407958

            ldr w0,[x19,#1656]
            cbz w0,.L_40791c

            ldr w0,[x19,#1660]
            cbz w0,.L_40791c

            ldr w0,[x19,#1672]
            cbnz w0,.L_40791c

            adrp x1, copy
            mov w2,#1
            add x1,x1, :lo12:copy
            str wzr,[x21,#340]
            str wzr,[x19,#512]
            str w2,[x19,#1652]
            str x1,[x21,#2592]
            b .L_4073e4
.L_4078ac:

.cfi_offset 25, -32
.cfi_offset 26, -24
.cfi_offset 27, -16
            mov w1,#47
            mov x0,x25
            bl strrchr

            mov x1,x0
            cmp x1,#0
            mov x0,x25
            csinc x1,x25,x1,eq
            bl strcpy

            ldr x27,[sp,#80]
.cfi_restore 27
            b .L_407360
.L_4078d4:

.cfi_restore 25
.cfi_restore 26
            adrp x3, inbuf
            mov w0,#19280
            movk w0,#1027,lsl #16
            ldr w3,[x3,:lo12:inbuf]
            cmp w3,w0
            b.ne .L_407410

            adrp x1, unzip
            add x1,x1, :lo12:unzip
            mov w0,w20
            str wzr,[x19,#512]
            str x1,[x21,#2592]
            bl check_zipfile

            cbnz w0,.L_407560

            ldr w0,[x21,#340]
            mov w1,#1
            str w1,[x19,#1652]
            tbz w0,#31,.L_4073e4

            ldr w1,[x19,#1664]
.L_40791c:

            cmp w1,#1
            b.ne .L_4073ac
.L_407924:

            adrp x20, heap+1568
            adrp x1, .L_40c228
            add x20,x20, :lo12:heap+1568
            add x3,x19,#528
            add x1,x1, :lo12:.L_40c228
            adrp x0, stderr
.L_40793c:

            ldr x2,[x20,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            mov w0,#1
            str w0,[x20,#1408]
            mov w0,#-1
            b .L_4073e4
.L_407958:

            mov w2,#3
            adrp x1, unlzh
            mov w3,#1
            add x1,x1, :lo12:unlzh
            mov w0,w2
            str w2,[x21,#340]
            str w3,[x19,#1652]
            str x1,[x21,#2592]
            b .L_4073e4
.L_40797c:

            adrp x0, stderr
            add x3,x19,#528
            ldr x2,[x20,#1400]
            adrp x1, .L_40c248
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c248
            bl fprintf

            b .L_407764
.L_40799c:

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            adrp x5, stderr
            mov w4,w0
            add x3,x19,#528
            adrp x1, .L_40c100
            ldr x2,[x20,#1400]
            add x1,x1, :lo12:.L_40c100
            ldr x0,[x5,:lo12:stderr]
            bl fprintf

            mov w0,#1
            str w0,[x20,#1408]
            mov w0,#-1
            b .L_4073e4
.L_4079d4:

            adrp x20, heap+1568
            adrp x1, .L_40c130
            add x20,x20, :lo12:heap+1568
            add x3,x19,#528
            add x1,x1, :lo12:.L_40c130
            adrp x0, stderr
            b .L_40793c
.L_4079f0:

.cfi_offset 25, -32
.cfi_offset 26, -24
.cfi_offset 27, -16
            adrp x0, .L_40c200
            add x0,x0, :lo12:.L_40c200
            bl error
.cfi_endproc 

            nop
            nop
            nop
            nop
.size get_method, . - get_method
#-----------------------------------
.type fillbuf, @function
#-----------------------------------
fillbuf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            mov w20,w0
            ldrh w1,[x19,#1676]
            ldr w2,[x19,#1680]
            lsl w1,w1,w0
            ldr w0,[x19,#1684]
            and w1,w1,#65535
            cmp w20,w2
            b.le .L_407ac0

            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            adrp x22, inbuf
            mov w21,#8
            add x22,x22, :lo12:inbuf
            b .L_407a68
.L_407a48:

            ldrb w0,[x22,w2,uxtw]
            add w2,w2,#1
            str w2,[x19,#512]
            str w0,[x19,#1684]
.L_407a58:

            str w21,[x19,#1680]
            mov w2,#8
            cmp w20,w2
            b.le .L_407abc
.L_407a68:

            sub w20,w20,w2
            ldr w3,[x19,#520]
            ldr w2,[x19,#512]
            lsl w0,w0,w20
            orr w1,w1,w0
            and w1,w1,#65535
            strh w1,[x19,#1676]
            cmp w2,w3
            b.lo .L_407a48

            mov w0,#1
            bl fill_inbuf

            str w0,[x19,#1684]
            ldrh w1,[x19,#1676]
            cmn w0,#1
            b.ne .L_407a58

            str w21,[x19,#1680]
            mov w0,#0
            str wzr,[x19,#1684]
            mov w2,#8
            cmp w20,w2
            b.gt .L_407a68
.L_407abc:

            ldp x21,x22,[sp,#32]
.L_407ac0:

.cfi_restore 22
.cfi_restore 21
            sub w2,w2,w20
            str w2,[x19,#1680]
            lsr w0,w0,w2
            orr w1,w1,w0
            strh w1,[x19,#1676]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size fillbuf, . - fillbuf
#-----------------------------------
.type read_pt_len, @function
#-----------------------------------
read_pt_len:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
            mov w19,w1
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov w21,#0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -32
.cfi_offset 24, -24
            mov w24,w0
            add x23,x20,#1696
            stp x25,x26,[sp,#64]
.cfi_offset 25, -16
.cfi_offset 26, -8
            mov w26,#16
            sub w26,w26,w1
            ldrh w22,[x20,#1676]
            mov w25,w2
            mov w0,w1
            bl fillbuf

            asr w22,w22,w26
            cbz w22,.L_407c2c
.L_407b30:

            sxtw x19,w21
            sub w21,w25,w21
            add x21,x21,x19
            b .L_407b54
.L_407b40:

            bl fillbuf

            strb w26,[x19,x23]
            add x19,x19,#1
            cmp x21,x19
            b.eq .L_407bb0
.L_407b54:

            cmp w22,w19
            b.le .L_407be0

            ldrh w3,[x20,#1676]
            mov w0,#3
            lsr w1,w3,#13
            mov w26,w1
            cmp w1,#7
            b.ne .L_407b40

            tbz w3,#12,.L_407c84

            mov w2,#4096
            nop
            nop
            nop
            nop
.L_407b80:

            lsr w2,w2,#1
            mov w0,w1
            add w1,w1,#1
            tst w2,w3
            b.ne .L_407b80

            and w26,w1,#255
            sub w0,w0,#2
            bl fillbuf

            strb w26,[x19,x23]
            add x19,x19,#1
            cmp x21,x19
            b.ne .L_407b54
.L_407bb0:

            ldrh w19,[x20,#1676]
            mov w0,#2
            mov w21,#3
            bl fillbuf

            asr w19,w19,#14
            cbz w19,.L_407b30

            and x2,x19,#3
            add x0,x20,#1699
            mov w1,#0
            add w21,w19,w21
            bl memset

            b .L_407b30
.L_407be0:

            cmp w19,w24
            b.ge .L_407c04

            sub w2,w24,#1
            add x0,x20,#1696
            sub w2,w2,w19
            add x0,x0,w19, sxtw
            add x2,x2,#1
            mov w1,#0
            bl memset
.L_407c04:

            ldp x21,x22,[sp,#32]
            mov w0,w24
            ldp x25,x26,[sp,#64]
            add x3,x20,#1728
            ldp x23,x24,[sp,#48]
            add x1,x20,#1696
            ldp x19,x20,[sp,#16]
            mov w2,#8
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b make_table
.L_407c2c:

.cfi_restore_state 
            ldrh w1,[x20,#1676]
            mov w0,w19
            asr w26,w1,w26
            bl fillbuf

            mov w2,w24
            mov x0,x23
            mov w1,#0
            bl memset

            dup v31.8h,w26
            add x0,x20,#1728
            add x20,x20,#2240
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407c60:

            str q31,[x0],#16
            cmp x20,x0
            b.ne .L_407c60

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407c84:

.cfi_restore_state 
            mov w0,#4
            b .L_407b40
.cfi_endproc 
.size read_pt_len, . - read_pt_len
.align 2
#-----------------------------------
.globl unlzh
.type unlzh, @function
#-----------------------------------
unlzh:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov w2,w0
            mov w0,#16
            mov fp,sp
            stp x27,x28,[sp,#80]
.cfi_offset 27, -48
.cfi_offset 28, -40
            adrp x27, static_ltree+864
            add x27,x27, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
            adrp x28, prev
            add x28,x28, :lo12:prev
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
            str d15,[sp,#96]
.cfi_offset 19, -112
.cfi_offset 20, -104
.cfi_offset 21, -96
.cfi_offset 22, -88
.cfi_offset 23, -80
.cfi_offset 24, -72
.cfi_offset 25, -64
.cfi_offset 26, -56
.cfi_offset 79, -32
            str w1,[sp,#120]
            str w1,[x27,#412]
            str w2,[x27,#516]
            strh wzr,[x27,#1676]
            str wzr,[x27,#1680]
            str wzr,[x27,#1684]
            bl fillbuf

            str wzr,[x27,#2240]
            mov w0,#0
            str wzr,[x27,#2244]
            str wzr,[x27,#2248]
            cbnz w0,.L_407e0c

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407d00:

            adrp x2, window
            ldr w1,[x27,#2244]
            ldr w0,[x27,#2252]
            add x2,x2, :lo12:window
            mov x26,#0
            mov w3,#0
            b .L_407d3c
.L_407d1c:

            ldrb w3,[x2,w0,uxtw]
            add w0,w0,#1
            strb w3,[x2,x26]
            add x26,x26,#1
            and w0,w0,#8191
            mov w3,#1
            cmp x26,#2,lsl #12
            b.eq .L_408094
.L_407d3c:

            subs w1,w1,#1
            b.pl .L_407d1c

            str w1,[x27,#2244]
            cbz w3,.L_407d50

            str w0,[x27,#2252]
.L_407d50:

            adrp x20, outbuf
            add x20,x20, :lo12:outbuf
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407d60:

            ldr w0,[x27,#2240]
            cbz w0,.L_407e6c

            adrp x19, d_buf
            mov x22,x20
            add x19,x19, :lo12:d_buf
.L_407d74:

            ldrh w1,[x27,#1676]
            sub w0,w0,#1
            str w0,[x27,#2240]
            lsr w0,w1,#4
            ldrh w19,[x19,w0,sxtw #1]
            cmp w19,#509
            b.ls .L_407dc4

            mov w0,#8
            b .L_407dac
.L_407d98:

            add w19,w19,#8,lsl #12
            lsr w0,w0,#1
            ldrh w19,[x28,x19,lsl #1]
            cmp w19,#509
            b.ls .L_407dc4
.L_407dac:

            tst w0,w1
            b.ne .L_407d98

            ldrh w19,[x28,w19,uxtw #1]
            lsr w0,w0,#1
            cmp w19,#509
            b.hi .L_407dac
.L_407dc4:

            ldrb w0,[x22,w19,uxtw]
            bl fillbuf

            cmp w19,#255
            b.hi .L_407fb8

            adrp x0, window
            add x0,x0, :lo12:window
            strb w19,[x0,w26,uxtw]
            add w26,w26,#1
            cmp w26,#2,lsl #12
            b.ne .L_407d60
.L_407dec:

            mov w1,#1
            mov w26,#8192
.L_407df4:

            ldr w0,[x27,#1648]
            cmp w0,#0
            ccmp w1,#0,#4,eq
            b.ne .L_407e30

            ldr w0,[x27,#2248]
.L_407e08:

            cbz w0,.L_407d00
.L_407e0c:

            ldr d15,[sp,#96]
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#128
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 79
.cfi_def_cfa_offset 0
            ret 
.L_407e30:

.cfi_restore_state 
            adrp x19, window
            add x19,x19, :lo12:window
            b .L_407e4c
.L_407e3c:

            cmn w0,#1
            b.eq .L_408134

            sub w26,w26,w0
            add x19,x19,w0, uxtw
.L_407e4c:

            ldr w0,[sp,#120]
            mov w2,w26
            mov x1,x19
            bl write

            cmp w0,w26
            b.ne .L_407e3c

            ldr w0,[x27,#2248]
            b .L_407e08
.L_407e6c:

            ldrh w19,[x27,#1676]
            mov w0,#16
            bl fillbuf

            str w19,[x27,#2240]
            cbz w19,.L_408080

            mov w0,#19
            mov w2,#3
            mov w1,#5
            bl read_pt_len

            ldrh w23,[x27,#1676]
            mov w0,#9
            asr w23,w23,#7
            bl fillbuf

            cbz w23,.L_4080a0

            mov x22,x20
            add x25,x27,#1728
            add x24,x27,#1696
            mov w21,#0
            b .L_407edc
.L_407eb8:

            ldrb w0,[x24,w19,sxtw]
            bl fillbuf

            cmp w19,#2
            b.le .L_407f1c

            sub w19,w19,#2
            strb w19,[x20,w21,sxtw]
            add w21,w21,#1
            cmp w21,w23
            b.ge .L_407f68
.L_407edc:

            ldrh w1,[x27,#1676]
            lsr w0,w1,#8
            ldrh w19,[x25,w0,sxtw #1]
            cmp w19,#18
            b.le .L_407eb8

            mov w0,#128
            b .L_407f0c
.L_407ef8:

            add w19,w19,#8,lsl #12
            ldrh w19,[x28,x19,lsl #1]
.L_407f00:

            lsr w0,w0,#1
            cmp w19,#18
            b.le .L_407eb8
.L_407f0c:

            tst w0,w1
            b.ne .L_407ef8

            ldrh w19,[x28,w19,sxtw #1]
            b .L_407f00
.L_407f1c:

            cbz w19,.L_407f44

            ldrh w1,[x27,#1676]
            str w1,[sp,#124]
            cmp w19,#1
            b.eq .L_4080f0

            mov w0,#9
            bl fillbuf

            ldr w1,[sp,#124]
            asr w1,w1,#7
            add w19,w1,#19
.L_407f44:

            add w2,w19,#1
            add x0,x20,w21, sxtw
            mov w1,#0
            sxtw x2,w2
            bl memset

            add w3,w21,#1
            add w21,w3,w19
            cmp w21,w23
            b.lt .L_407edc
.L_407f68:

            cmp w21,#509
            b.gt .L_407f84

            mov w2,#510
            add x0,x20,w21, sxtw
            sub w2,w2,w21
            mov w1,#0
            bl memset
.L_407f84:

            adrp x19, d_buf
            add x19,x19, :lo12:d_buf
            mov x3,x19
            mov x1,x20
            mov w2,#12
            mov w0,#510
            bl make_table
.L_407fa0:

            mov w0,#14
            mov w2,#-1
            mov w1,#4
            bl read_pt_len

            ldr w0,[x27,#2240]
            b .L_407d74
.L_407fb8:

            ldrh w1,[x27,#1676]
            add x0,x27,#1728
            sub w19,w19,#253
            str w19,[x27,#2244]
            lsr w2,w1,#8
            ldrh w19,[x0,w2,sxtw #1]
            cmp w19,#13
            b.ls .L_40800c

            mov w0,#128
            b .L_407ff4
.L_407fe0:

            add w19,w19,#8,lsl #12
            lsr w0,w0,#1
            ldrh w19,[x28,x19,lsl #1]
            cmp w19,#13
            b.ls .L_40800c
.L_407ff4:

            tst w0,w1
            b.ne .L_407fe0

            ldrh w19,[x28,w19,uxtw #1]
            lsr w0,w0,#1
            cmp w19,#13
            b.hi .L_407ff4
.L_40800c:

            add x0,x27,#1696
            ldrb w0,[x0,w19,uxtw]
            bl fillbuf

            cbnz w19,.L_408108
.L_40801c:

            ldr w2,[x27,#2244]
            sub w0,w26,#1
            sub w0,w0,w19
            adrp x3, window
            and w0,w0,#8191
            add x3,x3, :lo12:window
            sub w2,w2,#1
            mov w4,#0
            str w0,[x27,#2252]
            b .L_408068
.L_408044:

            ldrb w4,[x3,w0,uxtw]
            add w0,w0,#1
            strb w4,[x3,w26,uxtw]
            add w26,w26,#1
            sub w2,w2,#1
            and w0,w0,#8191
            mov w4,#1
            cmp w26,#2,lsl #12
            b.eq .L_408094
.L_408068:

            mov w1,w2
            tbz w2,#31,.L_408044

            str w2,[x27,#2244]
            cbz w4,.L_407d60

            str w0,[x27,#2252]
            b .L_407d60
.L_408080:

            cmp w26,#0
            mov w0,#1
            cset w1,ne
            str w0,[x27,#2248]
            b .L_407df4
.L_408094:

            str w1,[x27,#2244]
            str w0,[x27,#2252]
            b .L_407dec
.L_4080a0:

            ldrh w1,[x27,#1676]
            mov w0,#9
            fmov s31,w1
            adrp x22, outbuf
            add x22,x22, :lo12:outbuf
            adrp x19, d_buf
            sshr v15.2s,v31.2s,#7
            add x19,x19, :lo12:d_buf
            bl fillbuf

            mov w1,#0
            mov x0,x22
            mov x2,#510
            bl memset

            dup v31.8h,v15.h[0]
            mov x0,x19
            add x1,x19,#2,lsl #12
.L_4080e0:

            str q31,[x0],#16
            cmp x0,x1
            b.ne .L_4080e0

            b .L_407fa0
.L_4080f0:

            mov w0,#4
            bl fillbuf

            ldr w1,[sp,#124]
            asr w1,w1,#12
            add w19,w1,#2
            b .L_407f44
.L_408108:

            sub w19,w19,#1
            ldrh w22,[x27,#1676]
            mov w1,#16
            sub w1,w1,w19
            mov w0,w19
            asr w22,w22,w1
            bl fillbuf

            mov w0,#1
            lsl w0,w0,w19
            add w19,w0,w22
            b .L_40801c
.L_408134:

            bl write_error
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size unlzh, . - unlzh
.align 4
#-----------------------------------
.globl inflate_codes
.type inflate_codes, @function
#-----------------------------------
inflate_codes:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov w5,w2
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -112
.cfi_offset 24, -104
            adrp x24, optind
            add x4,x24, :lo12:optind
            stp x27,x28,[sp,#80]
            str w2,[sp,#116]
            add x2,x4,#2608
            stp x4,x0,[sp,#120]
            adrp x4, static_ltree+864
.cfi_offset 27, -80
.cfi_offset 28, -72
            add x28,x4, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -144
.cfi_offset 20, -136
            adrp x19, inbuf
            add x19,x19, :lo12:inbuf
            stp x21,x22,[sp,#32]
.cfi_offset 21, -128
.cfi_offset 22, -120
            mov w21,w3
            stp x25,x26,[sp,#64]
.cfi_offset 25, -96
.cfi_offset 26, -88
            ldr x27,[x28,#2256]
            str x1,[sp,#152]
            ldrh w0,[x2,w5,sxtw #1]
            ldr w24,[x28,#1564]
            ldr w26,[x28,#2264]
            str w0,[sp,#136]
            ldrh w0,[x2,w3,sxtw #1]
            str w0,[sp,#148]
.L_4081a8:

            ldr w0,[sp,#116]
            cmp w26,w0
            b.lo .L_408220
.L_4081b4:

            ldr w0,[sp,#136]
            ldr x1,[sp,#128]
            and w0,w0,w27
            ubfiz x0,x0,#4,#16
            add x20,x1,x0
            ldrb w22,[x1,x0]
            cmp w22,#16
            b.hi .L_408520
.L_4081d4:

            ldrb w0,[x20,#1]
            sub w26,w26,w0
            lsr x27,x27,x0
            cmp w22,#16
            b.ne .L_40824c

            adrp x7, window
            add x22,x7, :lo12:window
            ldrh w0,[x20,#8]
            strb w0,[x22,w24,uxtw]
            add w24,w24,#1
            cmp w24,#8,lsl #12
            b.ne .L_4081a8

            str w24,[x28,#1564]
            bl flush_window

            ldr w0,[sp,#116]
            mov w24,#0
            cmp w26,w0
            b.hs .L_4081b4

            nop
            nop
            nop
            nop
.L_408220:

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_40850c

            add w1,w0,#1
            ldrb w0,[x19,w0,uxtw]
            str w1,[x28,#512]
.L_40823c:

            lsl x0,x0,x26
            add w26,w26,#8
            orr x27,x27,x0
            b .L_4081a8
.L_40824c:

            cmp w22,#15
            b.ne .L_40826c

            b .L_408634
.L_408258:

            ldrb w0,[x19,w0,uxtw]
            str w7,[x28,#512]
.L_408260:

            lsl x0,x0,x26
            add w26,w26,#8
            orr x27,x27,x0
.L_40826c:

            cmp w22,w26
            b.ls .L_40829c

            ldr w0,[x28,#512]
            ldr w2,[x28,#520]
            add w7,w0,#1
            cmp w0,w2
            b.lo .L_408258

            mov w0,#0
            str w24,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408260
.L_40829c:

            ldr x0,[sp,#120]
            mov w2,w22
            ldrh w1,[x20,#8]
            sub w26,w26,w22
            add x0,x0,#2608
            lsr x22,x27,x22
            ldrh w0,[x0,x2,lsl #1]
            stp w1,w0,[sp,#140]
            cmp w26,w21
            b.lo .L_4082e4

            b .L_40831c
.L_4082c8:

            ldrb w0,[x19,w0,uxtw]
            str w7,[x28,#512]
            lsl x0,x0,x26
            add w26,w26,#8
            orr x22,x22,x0
            cmp w26,w21
            b.hs .L_40831c
.L_4082e4:

            ldr w0,[x28,#512]
            ldr w2,[x28,#520]
            add w7,w0,#1
            cmp w0,w2
            b.lo .L_4082c8

            mov w0,#0
            str w24,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            lsl x0,x0,x26
            add w26,w26,#8
            orr x22,x22,x0
            cmp w26,w21
            b.lo .L_4082e4
.L_40831c:

            ldr w0,[sp,#148]
            ldr x1,[sp,#152]
            and w0,w0,w22
            ubfiz x0,x0,#4,#16
            add x20,x1,x0
            ldrb w23,[x1,x0]
            cmp w23,#16
            b.ls .L_4083ec

            ldr x0,[sp,#120]
            adrp x9, inbuf
            add x25,x9, :lo12:inbuf
            add x0,x0,#2608
            str x0,[sp,#104]
.L_408350:

            cmp w23,#99
            b.eq .L_4085c8

            ldrb w0,[x20,#1]
            sub w23,w23,#16
            sub w26,w26,w0
            lsr x22,x22,x0
            cmp w26,w23
            b.lo .L_408390

            b .L_4083c8
.L_408374:

            ldrb w0,[x25,w0,uxtw]
            str w7,[x28,#512]
            lsl x0,x0,x26
            add w26,w26,#8
            orr x22,x22,x0
            cmp w23,w26
            b.ls .L_4083c8
.L_408390:

            ldr w0,[x28,#512]
            ldr w2,[x28,#520]
            add w7,w0,#1
            cmp w0,w2
            b.lo .L_408374

            mov w0,#0
            str w24,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            lsl x0,x0,x26
            add w26,w26,#8
            orr x22,x22,x0
            cmp w23,w26
            b.hi .L_408390
.L_4083c8:

            ldr x0,[sp,#104]
            ldr x2,[x20,#8]
            ldrh w0,[x0,w23,uxtw #1]
            and w0,w0,w22
            ubfiz x0,x0,#4,#16
            add x20,x2,x0
            ldrb w23,[x2,x0]
            cmp w23,#16
            b.hi .L_408350
.L_4083ec:

            ldrb w0,[x20,#1]
            sub w26,w26,w0
            lsr x1,x22,x0
            cmp w23,w26
            b.ls .L_408468

            adrp x7, inbuf
            add x25,x7, :lo12:inbuf
            b .L_408428
.L_40840c:

            ldrb w0,[x25,w0,uxtw]
            str w3,[x28,#512]
            lsl x0,x0,x26
            add w26,w26,#8
            orr x1,x1,x0
            cmp w23,w26
            b.ls .L_408468
.L_408428:

            ldr w0,[x28,#512]
            ldr w2,[x28,#520]
            add w3,w0,#1
            cmp w0,w2
            b.lo .L_40840c

            mov w0,#0
            str x1,[sp,#104]
            str w24,[x28,#1564]
            bl fill_inbuf

            ldr x1,[sp,#104]
            and x0,x0,#255
            lsl x0,x0,x26
            add w26,w26,#8
            orr x1,x1,x0
            cmp w23,w26
            b.hi .L_408428
.L_408468:

            ldr x0,[sp,#120]
            mov w7,w23
            ldr w3,[sp,#144]
            sub w26,w26,w23
            add x0,x0,#2608
            ldrh w2,[x20,#8]
            and w9,w3,w27
            ldr w3,[sp,#140]
            sub w2,w24,w2
            lsr x27,x1,x23
            ldrh w0,[x0,x7,lsl #1]
            add w9,w9,w3
            adrp x7, window
            add x22,x7, :lo12:window
            and w0,w0,w1
            mov w23,#32768
            sub w2,w2,w0
.L_4084ac:

            and w20,w2,#32767
            sub w25,w23,w24
            cmp w24,w20
            sub w0,w23,w20
            csel w25,w25,w0,hs
            sub w10,w24,w20
            cmp w9,w25
            csel w25,w9,w25,ls
            sub w9,w9,w25
            cmp w25,w10
            b.hi .L_40860c

            mov w1,w20
            mov w2,w25
            add x0,x22,w24, uxtw
            add x1,x22,x1
            str w9,[sp,#104]
            bl memcpy

            ldr w9,[sp,#104]
            add w24,w24,w25
            add w2,w25,w20
.L_4084fc:

            cmp w24,#8,lsl #12
            b.eq .L_4085e8

            cbnz w9,.L_4084ac

            b .L_4081a8
.L_40850c:

            mov w0,#0
            str w24,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_40823c
.L_408520:

            ldr x0,[sp,#120]
            add x25,x0,#2608
            cmp w22,#99
            b.eq .L_4085c8
.L_408530:

            ldrb w0,[x20,#1]
            sub w22,w22,#16
            sub w26,w26,w0
            lsr x27,x27,x0
            cmp w26,w22
            b.lo .L_408568

            b .L_4085a0
.L_40854c:

            ldrb w0,[x19,w0,uxtw]
            str w7,[x28,#512]
            lsl x0,x0,x26
            add w26,w26,#8
            orr x27,x27,x0
            cmp w22,w26
            b.ls .L_4085a0
.L_408568:

            ldr w0,[x28,#512]
            ldr w2,[x28,#520]
            add w7,w0,#1
            cmp w0,w2
            b.lo .L_40854c

            mov w0,#0
            str w24,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            lsl x0,x0,x26
            add w26,w26,#8
            orr x27,x27,x0
            cmp w22,w26
            b.hi .L_408568
.L_4085a0:

            ldrh w0,[x25,w22,uxtw #1]
            ldr x1,[x20,#8]
            and w0,w0,w27
            ubfiz x0,x0,#4,#16
            add x20,x1,x0
            ldrb w22,[x1,x0]
            cmp w22,#16
            b.ls .L_4081d4

            cmp w22,#99
            b.ne .L_408530
.L_4085c8:

            mov w0,#1
.L_4085cc:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#160
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4085e8:

.cfi_restore_state 
            str w9,[sp,#104]
            str w2,[sp,#140]
            str w24,[x28,#1564]
            bl flush_window

            ldr w9,[sp,#104]
            mov w24,#0
            ldr w2,[sp,#140]
            cbnz w9,.L_4084ac

            b .L_4081a8
.L_40860c:

            add w2,w25,w20
.L_408610:

            mov w1,w20
            add w0,w10,w20
            add w20,w20,#1
            ldrb w1,[x22,w1,uxtw]
            strb w1,[x22,w0,uxtw]
            cmp w20,w2
            b.ne .L_408610

            add w24,w24,w25
            b .L_4084fc
.L_408634:

            mov w0,#0
            str w24,[x28,#1564]
            str x27,[x28,#2256]
            str w26,[x28,#2264]
            b .L_4085cc
.cfi_endproc 
.size inflate_codes, . - inflate_codes
.align 3
#-----------------------------------
.globl inflate_fixed
.type inflate_fixed, @function
#-----------------------------------
inflate_fixed:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            movi v31.4s,#8
            sub sp,sp,#1232
.cfi_def_cfa_offset 1232
            add x0,sp,#656
            stp fp,lr,[sp]
.cfi_offset 29, -1232
.cfi_offset 30, -1224
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -1200
.cfi_offset 22, -1192
            add x21,sp,#80
            mov x1,x21
            stp x19,x20,[sp,#16]
.cfi_offset 19, -1216
.cfi_offset 20, -1208
            mov x19,x21
.L_408670:

            str q31,[x1],#16
            cmp x0,x1
            b.ne .L_408670

            movi v31.4s,#9
            add x1,x21,#1024
.L_408684:

            str q31,[x0],#16
            cmp x0,x1
            b.ne .L_408684

            movi v31.4s,#7
            add x1,x21,#96
            mov x0,x21
            nop
            nop
            nop
            nop
.L_4086a0:

            add x0,x0,#16
            str q31,[x0,#1008]
            cmp x1,x0
            b.ne .L_4086a0

            movi v30.4s,#8
            adrp x22, optind
            add x22,x22, :lo12:optind
            add x6,sp,#56
            add x4,x22,#2656
            add x3,x22,#2720
            add x5,sp,#64
            mov x0,x21
            mov w2,#257
            mov w1,#288
            str s31,[sp,#56]
            str q30,[sp,#1200]
            str q30,[sp,#1216]
            bl huft_build

            mov w20,w0
            cbnz w0,.L_40875c

            add x0,sp,#200
            mov w7,#5
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408700:

            str w7,[x19],#4
            cmp x0,x19
            b.ne .L_408700

            mov x0,x21
            add x6,sp,#60
            add x5,sp,#72
            add x4,x22,#2784
            add x3,x22,#2848
            mov w2,#0
            mov w1,#30
            str w7,[sp,#60]
            bl huft_build

            mov w20,w0
            ldr x19,[sp,#64]
            cmp w0,#1
            b.gt .L_4087a4

            ldp w2,w3,[sp,#56]
            mov x0,x19
            ldr x21,[sp,#72]
            mov x1,x21
            bl inflate_codes

            mov w20,w0
            cbz w0,.L_408774
.L_40875c:

            ldp fp,lr,[sp]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            add sp,sp,#1232
.cfi_remember_state 
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_408774:

.cfi_restore_state 
            cbz x19,.L_408790

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408780:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_408780
.L_408790:

            cbz x21,.L_40875c

            sub x0,x21,#16
            ldur x21,[x21,#-8]
            bl free

            b .L_408790
.L_4087a4:

            cbz x19,.L_40875c
.L_4087a8:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_4087a8

            ldp fp,lr,[sp]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            add sp,sp,#1232
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_fixed, . - inflate_fixed
.align 4
#-----------------------------------
.globl inflate_dynamic
.type inflate_dynamic, @function
#-----------------------------------
inflate_dynamic:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1424
.cfi_def_cfa_offset 1424
            adrp x8, static_ltree+864
            stp fp,lr,[sp]
.cfi_offset 29, -1424
.cfi_offset 30, -1416
            mov fp,sp
            stp x27,x28,[sp,#80]
.cfi_offset 27, -1344
.cfi_offset 28, -1336
            add x28,x8, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -1408
.cfi_offset 20, -1400
.cfi_offset 21, -1392
.cfi_offset 22, -1384
            ldr w21,[x28,#2264]
            ldr x19,[x28,#2256]
            ldr w20,[x28,#1564]
            cmp w21,#4
            b.hi .L_408834

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_40897c

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add w2,w0,#1
            str w2,[x28,#512]
            ldrb w0,[x1,w0,uxtw]
.L_408828:

            lsl x0,x0,x21
            add w21,w21,#8
            orr x19,x19,x0
.L_408834:

            and w27,w19,#31
            sub w22,w21,#5
            add w0,w27,#257
            str w0,[sp,#104]
            lsr x19,x19,#5
            cmp w22,#4
            b.hi .L_408880

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_40898c

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add w2,w0,#1
            str w2,[x28,#512]
            ldrb w0,[x1,w0,uxtw]
.L_408874:

            lsl x0,x0,x22
            add w22,w21,#3
            orr x19,x19,x0
.L_408880:

            and w0,w19,#31
            sub w27,w22,#5
            add w0,w0,#1
            str w0,[sp,#116]
            lsr x19,x19,#5
            cmp w27,#3
            b.hi .L_4088cc

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_4089a0

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add w2,w0,#1
            str w2,[x28,#512]
            ldrb w0,[x1,w0,uxtw]
.L_4088c0:

            lsl x0,x0,x27
            add w27,w22,#3
            orr x19,x19,x0
.L_4088cc:

            ldr w0,[sp,#104]
            cmp w0,#286
            ldr w0,[sp,#116]
            ccmp w0,#30,#2,ls
            b.hi .L_408ab8

            adrp x21, configuration_table
            add x21,x21, :lo12:configuration_table
            stp x23,x24,[sp,#48]
.cfi_offset 24, -1368
.cfi_offset 23, -1376
            and w23,w19,#15
            add x0,x21,#128
            add w24,w23,#4
            sub w27,w27,#4
            add x23,x0,w23, uxtw #2
            add x22,sp,#160
            stp x25,x26,[sp,#64]
.cfi_offset 26, -1352
.cfi_offset 25, -1360
            lsr x26,x19,#4
            adrp x25, inbuf
            add x19,x21,#112
            add x25,x25, :lo12:inbuf
            b .L_40894c
.L_40891c:

            ldrb w0,[x25,w0,uxtw]
            str w2,[x28,#512]
.L_408924:

            lsl x0,x0,x27
            add w27,w27,#8
            orr x26,x26,x0
.L_408930:

            ldr w0,[x19],#4
            and w1,w26,#7
            sub w27,w27,#3
            lsr x26,x26,#3
            str w1,[x22,x0,lsl #2]
            cmp x19,x23
            b.eq .L_4089b4
.L_40894c:

            cmp w27,#2
            b.hi .L_408930

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            add w2,w0,#1
            cmp w0,w1
            b.lo .L_40891c

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408924
.L_40897c:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
            mov w0,#0
            bl fill_inbuf

            and x0,x0,#255
            b .L_408828
.L_40898c:

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408874
.L_4089a0:

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_4088c0
.L_4089b4:

.cfi_offset 23, -1376
.cfi_offset 24, -1368
.cfi_offset 25, -1360
.cfi_offset 26, -1352
            add x21,x21,#112
            mov w0,w24
            cmp w24,#19
            b.eq .L_4089d8
.L_4089c4:

            ldr w1,[x21,x0,lsl #2]
            add x0,x0,#1
            str wzr,[x22,x1,lsl #2]
            cmp w0,#19
            b.ne .L_4089c4
.L_4089d8:

            mov w10,#7
            mov w2,#19
            add x6,sp,#136
            add x5,sp,#144
            mov w1,w2
            mov x0,x22
            mov x4,#0
            mov x3,#0
            str w10,[sp,#136]
            bl huft_build

            mov w19,w0
            cbnz w0,.L_408a90

            ldr x23,[sp,#144]
            cbz x23,.L_408e64

            ldr w1,[sp,#104]
            adrp x0, optind
            ldr w2,[sp,#116]
            add x0,x0, :lo12:optind
            ldr w25,[sp,#136]
            adrp x4, inbuf
            str x0,[sp,#120]
            add x0,x0,#2608
            add w1,w1,w2
            stp w1,wzr,[sp,#96]
            add x24,x4, :lo12:inbuf
            mov w21,#0
            ldrh w0,[x0,w25,sxtw #1]
            str w0,[sp,#112]
            b .L_408a60
.L_408a4c:

            ldrb w0,[x24,w0,uxtw]
            str w2,[x28,#512]
.L_408a54:

            lsl x0,x0,x27
            add w27,w27,#8
            orr x26,x26,x0
.L_408a60:

            cmp w25,w27
            b.ls .L_408ad8

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            add w2,w0,#1
            cmp w0,w1
            b.lo .L_408a4c

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408a54
.L_408a90:

            cmp w0,#1
            b.ne .L_408b74

            ldr x19,[sp,#144]
            cbz x19,.L_408ab0
.L_408aa0:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_408aa0
.L_408ab0:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.L_408ab8:

.cfi_restore 26
.cfi_restore 25
            mov w19,#1
.L_408abc:

            ldp fp,lr,[sp]
            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x27,x28,[sp,#80]
            add sp,sp,#1424
.cfi_restore 27
.cfi_restore 28
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_408ad8:

.cfi_def_cfa_offset 1424
.cfi_offset 19, -1408
.cfi_offset 20, -1400
.cfi_offset 21, -1392
.cfi_offset 22, -1384
.cfi_offset 23, -1376
.cfi_offset 24, -1368
.cfi_offset 25, -1360
.cfi_offset 26, -1352
.cfi_offset 27, -1344
.cfi_offset 28, -1336
.cfi_offset 29, -1424
.cfi_offset 30, -1416
            ldr w0,[sp,#112]
            and w0,w0,w26
            add x0,x23,w0, uxth #4
            str x0,[sp,#152]
            ldrb w1,[x0,#1]
            ldrh w0,[x0,#8]
            sub w27,w27,w1
            lsr x26,x26,x1
            cmp w0,#15
            b.hi .L_408b98

            str w0,[x22,w19,sxtw #2]
            add w19,w19,#1
            str w0,[sp,#100]
.L_408b0c:

            ldr w0,[sp,#96]
            mov w21,w19
            cmp w19,w0
            b.lo .L_408a60

            nop
            nop
            nop
            nop
.L_408b20:

            sub x0,x23,#16
            ldur x23,[x23,#-8]
            bl free

            cbnz x23,.L_408b20

            ldr x0,[sp,#120]
            add x6,sp,#136
            ldr w1,[sp,#104]
            add x5,sp,#144
            add x4,x0,#2656
            add x3,x0,#2720
            ldr w10,[x0,#2908]
            mov w2,#257
            mov x0,x22
            str w10,[sp,#136]
            str x26,[x28,#2256]
            str w27,[x28,#2264]
            bl huft_build

            mov w19,w0
            cbz w0,.L_408d54

            cmp w0,#1
            b.eq .L_408df4
.L_408b74:

            ldp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_restore 24
.cfi_restore 23
            mov w0,w19
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x27,x28,[sp,#80]
            add sp,sp,#1424
.cfi_restore 27
.cfi_restore 28
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_408b98:

.cfi_restore_state 
            cmp w0,#16
            b.eq .L_408cb8

            cmp w0,#17
            b.eq .L_408c30

            cmp w27,#6
            b.hi .L_408bd8

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_408c1c

            add w1,w0,#1
            ldrb w0,[x24,w0,uxtw]
            str w1,[x28,#512]
.L_408bcc:

            lsl x0,x0,x27
            add w27,w27,#8
            orr x26,x26,x0
.L_408bd8:

            add w0,w21,#11
            ldr w1,[sp,#96]
            and w21,w26,#127
            sub w27,w27,#7
            add w0,w0,w21
            lsr x26,x26,#7
            cmp w0,w1
            b.hi .L_408ab0

            add w2,w21,#11
            add x0,x22,w19, uxtw #2
            add w19,w19,#11
            mov w1,#0
            ubfiz x2,x2,#2,#8
            add w19,w19,w21
            bl memset

            str wzr,[sp,#100]
            b .L_408b0c
.L_408c1c:

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408bcc
.L_408c30:

            cmp w27,#2
            b.hi .L_408c60

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_408ca4

            add w1,w0,#1
            ldrb w0,[x24,w0,uxtw]
            str w1,[x28,#512]
.L_408c54:

            lsl x0,x0,x27
            add w27,w27,#8
            orr x26,x26,x0
.L_408c60:

            add w0,w21,#3
            ldr w1,[sp,#96]
            and w21,w26,#7
            sub w27,w27,#3
            add w0,w0,w21
            lsr x26,x26,#3
            cmp w0,w1
            b.hi .L_408ab0

            add w2,w21,#3
            add x0,x22,w19, uxtw #2
            add w19,w19,#3
            mov w1,#0
            ubfiz x2,x2,#2,#4
            add w19,w19,w21
            bl memset

            str wzr,[sp,#100]
            b .L_408b0c
.L_408ca4:

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408c54
.L_408cb8:

            cmp w27,#1
            b.hi .L_408ce8

            ldr w0,[x28,#512]
            ldr w1,[x28,#520]
            cmp w0,w1
            b.hs .L_408d40

            add w1,w0,#1
            ldrb w0,[x24,w0,uxtw]
            str w1,[x28,#512]
.L_408cdc:

            lsl x0,x0,x27
            add w27,w27,#8
            orr x26,x26,x0
.L_408ce8:

            and w5,w26,#3
            add w0,w21,#3
            ldr w1,[sp,#96]
            add w0,w0,w5
            sub w27,w27,#2
            lsr x26,x26,#2
            cmp w0,w1
            b.hi .L_408ab0

            add w1,w5,#3
            add x2,x22,w19, uxtw #2
            mov x0,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408d20:

            ldr w3,[sp,#100]
            str w3,[x2,x0,lsl #2]
            add x0,x0,#1
            cmp x1,x0
            b.ne .L_408d20

            add w19,w19,#3
            add w19,w19,w5
            b .L_408b0c
.L_408d40:

            mov w0,#0
            str w20,[x28,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_408cdc
.L_408d54:

            ldr x2,[sp,#120]
            add x6,sp,#140
            ldr x0,[sp,#104]
            add x4,x2,#2784
            ldr w7,[x2,#2912]
            add x3,x2,#2848
            ldr w1,[sp,#116]
            add x5,sp,#152
            ubfiz x0,x0,#2,#10
            mov w2,#0
            add x0,x22,x0
            str w7,[sp,#140]
            bl huft_build

            mov w19,w0
            ldr x20,[sp,#144]
            cbz w0,.L_408db0

            cmp w0,#1
            b.eq .L_408e2c
.L_408d9c:

            cbz x20,.L_408b74

            sub x0,x20,#16
            ldur x20,[x20,#-8]
            bl free

            b .L_408d9c
.L_408db0:

            ldp w2,w3,[sp,#136]
            mov x0,x20
            ldr x21,[sp,#152]
            mov x1,x21
            bl inflate_codes

            mov w19,w0
            cbnz w0,.L_408ab0
.L_408dcc:

            cbz x20,.L_408de0

            sub x0,x20,#16
            ldur x20,[x20,#-8]
            bl free

            b .L_408dcc
.L_408de0:

            cbz x21,.L_408b74

            sub x0,x21,#16
            ldur x21,[x21,#-8]
            bl free

            b .L_408de0
.L_408df4:

            adrp x1, stderr
            adrp x0, .L_40c2b8
            mov x2,#25
            add x0,x0, :lo12:.L_40c2b8
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite

            ldr x19,[sp,#144]
            cbz x19,.L_408ab0
.L_408e18:

            sub x0,x19,#16
            ldur x19,[x19,#-8]
            bl free

            cbnz x19,.L_408e18

            b .L_408ab0
.L_408e2c:

            adrp x1, stderr
            adrp x0, .L_40c2d8
            mov x2,#26
            add x0,x0, :lo12:.L_40c2d8
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite

            ldr x21,[sp,#152]
            cbz x21,.L_408d9c
.L_408e50:

            sub x0,x21,#16
            ldur x21,[x21,#-8]
            bl free

            cbnz x21,.L_408e50

            b .L_408d9c
.L_408e64:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            mov w19,#2
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            b .L_408abc
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size inflate_dynamic, . - inflate_dynamic
.align 4
#-----------------------------------
.globl inflate_stored
.type inflate_stored, @function
#-----------------------------------
inflate_stored:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 25, -16
.cfi_offset 26, -8
            ldr x20,[x19,#2256]
            ldr w22,[x19,#2264]
            ldr w25,[x19,#1564]
            and w21,w22,#7
            sub w23,w22,w21
            lsr x20,x20,x21
            cmp w23,#15
            b.hi .L_408f38

            adrp x26, inbuf
            mov w24,w23
            add x26,x26, :lo12:inbuf
            b .L_408eec
.L_408ed0:

            ldrb w0,[x26,w0,uxtw]
            str w2,[x19,#512]
            lsl x0,x0,x24
            add w24,w24,#8
            orr x20,x20,x0
            cmp w24,#15
            b.hi .L_408f24
.L_408eec:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            add w2,w0,#1
            cmp w0,w1
            b.lo .L_408ed0

            mov w0,#0
            str w25,[x19,#1564]
            bl fill_inbuf

            and x0,x0,#255
            lsl x0,x0,x24
            add w24,w24,#8
            orr x20,x20,x0
            cmp w24,#15
            b.ls .L_408eec
.L_408f24:

            sub w0,w21,w22
            add w23,w23,#8
            add w0,w0,#15
            and w0,w0,#4294967288
            add w23,w0,w23
.L_408f38:

            sub w21,w23,#16
            and w22,w20,#65535
            lsr x20,x20,#16
            cmp w21,#15
            b.hi .L_408fc0

            adrp x24, inbuf
            add x24,x24, :lo12:inbuf
            b .L_408f74
.L_408f58:

            ldrb w0,[x24,w0,uxtw]
            str w2,[x19,#512]
            lsl x0,x0,x21
            add w21,w21,#8
            orr x20,x20,x0
            cmp w21,#15
            b.hi .L_408fac
.L_408f74:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            add w2,w0,#1
            cmp w0,w1
            b.lo .L_408f58

            mov w0,#0
            str w25,[x19,#1564]
            bl fill_inbuf

            and x0,x0,#255
            lsl x0,x0,x21
            add w21,w21,#8
            orr x20,x20,x0
            cmp w21,#15
            b.ls .L_408f74
.L_408fac:

            mov w21,#31
            sub w21,w21,w23
            and w21,w21,#4294967288
            sub w23,w23,#8
            add w21,w21,w23
.L_408fc0:

            mvn w1,w20
            mov w0,#1
            cmp w22,w1, uxth
            b.ne .L_409000

            adrp x24, window
            adrp x26, inbuf
            lsr x20,x20,#16
            sub w21,w21,#16
            add x24,x24, :lo12:window
            add x26,x26, :lo12:inbuf
            sub w23,w22,#1
            cbnz w22,.L_409048
.L_408ff0:

            mov w0,#0
            str w25,[x19,#1564]
            str x20,[x19,#2256]
            str w21,[x19,#2264]
.L_409000:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409018:

.cfi_restore_state 
            ldrb w0,[x26,w0,uxtw]
            str w2,[x19,#512]
.L_409020:

            lsl x0,x0,x21
            orr x20,x20,x0
.L_409028:

            strb w20,[x24,w25,uxtw]
            add w25,w25,#1
            cmp w25,#8,lsl #12
            b.eq .L_409078
.L_409038:

            sub w23,w23,#1
            lsr x20,x20,#8
            cmn w23,#1
            b.eq .L_408ff0
.L_409048:

            cmp w21,#7
            b.hi .L_409088

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            add w2,w0,#1
            cmp w0,w1
            b.lo .L_409018

            mov w0,#0
            str w25,[x19,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_409020
.L_409078:

            str w25,[x19,#1564]
            mov w25,#0
            bl flush_window

            b .L_409038
.L_409088:

            sub w21,w21,#8
            b .L_409028
.cfi_endproc 
.size inflate_stored, . - inflate_stored
.align 4
#-----------------------------------
.globl inflate_block
.type inflate_block, @function
#-----------------------------------
inflate_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x22,x0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -16
.cfi_offset 24, -8
            ldr w21,[x20,#2264]
            ldr x23,[x20,#2256]
            cbnz w21,.L_40917c

            ldr w1,[x20,#512]
            ldr w2,[x20,#520]
            cmp w1,w2
            b.hs .L_409130

            adrp x2, inbuf
            add x2,x2, :lo12:inbuf
            add w0,w1,#1
            str w0,[x20,#512]
            ldrb w19,[x2,w1,uxtw]
.L_4090e0:

            orr x19,x19,x23
            mov w1,#5
            and w2,w19,#1
            str w2,[x22]
            lsr x19,x19,#1
.L_4090f4:

            lsr x0,x19,#2
            and w19,w19,#3
            str x0,[x20,#2256]
            str w1,[x20,#2264]
            cmp w19,#2
            b.eq .L_409168

            cbz w19,.L_409140

            cmp w19,#1
            b.eq .L_409154

            ldp x19,x20,[sp,#16]
            mov w0,#2
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409130:

.cfi_restore_state 
            mov w0,#0
            bl fill_inbuf

            and x19,x0,#255
            b .L_4090e0
.L_409140:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b inflate_stored
.L_409154:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b inflate_fixed
.L_409168:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b inflate_dynamic
.L_40917c:

.cfi_restore_state 
            ldr w2,[x20,#1564]
            and w0,w23,#1
            sub w24,w21,#1
            str w0,[x22]
            lsr x19,x23,#1
            sub w1,w21,#3
            cmp w24,#1
            b.hi .L_4090f4

            ldr w0,[x20,#512]
            ldr w1,[x20,#520]
            cmp w0,w1
            b.hs .L_4091d0

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add w2,w0,#1
            str w2,[x20,#512]
            ldrb w0,[x1,w0,uxtw]
.L_4091c0:

            lsl x0,x0,x24
            add w1,w21,#5
            orr x19,x19,x0
            b .L_4090f4
.L_4091d0:

            mov w0,#0
            str w2,[x20,#1564]
            bl fill_inbuf

            and x0,x0,#255
            b .L_4091c0
.cfi_endproc 
.size inflate_block, . - inflate_block
.align 2
#-----------------------------------
.globl inflate
.type inflate, @function
#-----------------------------------
inflate:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -48
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            str wzr,[x19,#1564]
            str xzr,[x19,#2256]
            str wzr,[x19,#2264]
            b .L_409210
.L_409208:

            ldr w1,[sp,#60]
            cbnz w1,.L_40922c
.L_409210:

            add x0,sp,#60
            str wzr,[x19,#476]
            bl inflate_block

            cbz w0,.L_409208

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_40922c:

.cfi_restore_state 
            ldr w1,[x19,#2264]
            cmp w1,#7
            b.ls .L_409254

            ldr w3,[x19,#512]
            sub w2,w1,#8
            and w1,w1,#7
            str w1,[x19,#2264]
            sub w1,w3,#1
            sub w1,w1,w2, lsr #3
            str w1,[x19,#512]
.L_409254:

            str w0,[sp,#44]
            bl flush_window

            ldr x19,[sp,#16]
            ldr w0,[sp,#44]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate, . - inflate
.align 2
#-----------------------------------
.globl unpack
.type unpack, @function
#-----------------------------------
unpack:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov x2,#0
            mov fp,sp
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            adrp x26, static_ltree+864
            add x26,x26, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            mov w20,#4
            stp x21,x22,[sp,#32]
.cfi_offset 21, -80
.cfi_offset 22, -72
            adrp x21, inbuf
            add x21,x21, :lo12:inbuf
            stp x23,x24,[sp,#48]
            stp x27,x28,[sp,#80]
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 27, -32
.cfi_offset 28, -24
            ldr w3,[x26,#512]
            ldr w4,[x26,#520]
            str w1,[x26,#412]
            str w0,[x26,#516]
            str xzr,[x26,#2272]
.L_4092b4:

            lsl x19,x2,#8
            cmp w3,w4
            b.hs .L_4095f4

            add w1,w3,#1
            ldrb w0,[x21,w3,uxtw]
            mov w3,w1
            str w1,[x26,#512]
.L_4092d0:

            orr x2,x19,x0
            str x2,[x26,#2272]
            subs w20,w20,#1
            b.ne .L_4092b4

            cmp w3,w4
            b.hs .L_40972c

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w1,w3,#1
            str w1,[x26,#512]
            ldrb w21,[x0,w3,uxtw]
.L_4092fc:

            str w21,[x26,#2280]
            cmp w21,#25
            b.gt .L_409788

            adrp x23, inbuf
            add x22,x26,#2288
            add x23,x23, :lo12:inbuf
            mov x19,#1
            mov w20,#0
            cmp w21,#0
            b.gt .L_40934c

            b .L_40973c
.L_409328:

            add w1,w0,#1
            ldr w21,[x26,#2280]
            ldrb w0,[x23,w0,uxtw]
            str w0,[x22,x19,lsl #2]
            add x19,x19,#1
            str w1,[x26,#512]
            add w20,w20,w0
            cmp w21,w19
            b.lt .L_40937c
.L_40934c:

            ldr w0,[x26,#512]
            ldr w1,[x26,#520]
            cmp w0,w1
            b.lo .L_409328

            mov w0,#0
            bl fill_inbuf

            ldr w21,[x26,#2280]
            add w20,w20,w0
            str w0,[x22,x19,lsl #2]
            add x19,x19,#1
            cmp w21,w19
            b.ge .L_40934c
.L_40937c:

            cmp w20,#256
            b.gt .L_40977c

            ldr w0,[x22,w21,sxtw #2]
            add w1,w0,#1
            str w1,[x22,w21,sxtw #2]
            str w1,[sp,#108]
            cmp w21,#0
            b.le .L_409750

            adrp x25, inbuf
            add x23,x26,#2400
            add x25,x25, :lo12:inbuf
            add x22,x26,#2288
            mov w20,#0
            mov x27,#1
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4093c0:

            ldr w21,[x22,x27,lsl #2]
            str w20,[x23,x27,lsl #2]
            cmp w21,#0
            b.le .L_409434

            sxtw x0,w20
            sub w24,w21,#1
            add x24,x24,x0
            add x1,x26,#2513
            add x19,x26,#2512
            add x24,x24,x1
            add x19,x19,x0
            b .L_409408
.L_4093f0:

            add w1,w0,#1
            ldrb w0,[x25,w0,uxtw]
            strb w0,[x19],#1
            str w1,[x26,#512]
            cmp x24,x19
            b.eq .L_409430
.L_409408:

            ldr w0,[x26,#512]
            ldr w1,[x26,#520]
            cmp w0,w1
            b.lo .L_4093f0

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            strb w0,[x19],#1
            cmp x24,x19
            b.ne .L_409408
.L_409430:

            add w20,w20,w21
.L_409434:

            ldr w21,[x26,#2280]
            add x27,x27,#1
            cmp w21,w27
            b.ge .L_4093c0

            add x5,x26,#2288
            sxtw x0,w21
            ldr w1,[x5,w21,sxtw #2]
            str w1,[sp,#108]
            add w1,w1,#1
            str w1,[x5,w21,sxtw #2]
            cmp w21,#0
            b.le .L_40975c

            add x6,x26,#2768
            add x3,x26,#2400
            mov w1,#0
.L_409470:

            ldr w2,[x3,x0,lsl #2]
            asr w1,w1,#1
            ldr w4,[x5,x0,lsl #2]
            sub w2,w2,w1
            str w1,[x6,x0,lsl #2]
            str w2,[x3,x0,lsl #2]
            sub x0,x0,#1
            add w1,w1,w4
            cmp w0,#0
            b.gt .L_409470

            cmp w21,#12
            mov w0,#12
            csel w21,w21,w0,le
            mov w22,#1
            adrp x23, outbuf
            add x0,x23, :lo12:outbuf
            lsl w22,w22,w21
            add x27,x26,#2288
            add x25,x0,w22, sxtw
            mov x20,#1
            str x0,[sp,#96]
            str w21,[x26,#2872]
.L_4094c8:

            ldr w19,[x27,x20,lsl #2]
            sub w0,w21,w20
            lsl w19,w19,w0
            cbz w19,.L_4094f8

            sub w19,w19,#1
            mov w1,w20
            mvn x0,x19
            add x2,x19,#1
            add x0,x25,x0
            sub x25,x25,#1
            sub x25,x25,x19
            bl memset
.L_4094f8:

            add x20,x20,#1
            cmp w21,w20
            b.ge .L_4094c8
.L_409504:

            ldr x0,[sp,#96]
            cmp x25,x0
            b.ls .L_409520

            ldr x0,[sp,#96]
            mov w1,#0
            sub x2,x25,x0
            bl memset
.L_409520:

            adrp x3, inbuf
            sub w22,w22,#1
            add x24,x3, :lo12:inbuf
            add x25,x26,#2400
            mov x2,#0
            mov w1,#0
            str wzr,[x26,#2876]
            str xzr,[x26,#2880]
.L_409540:

            cmp w1,w21
            b.lt .L_4095c0
.L_409548:

            sub w4,w1,w21
            ldr x0,[sp,#96]
            lsr x4,x2,x4
            and w4,w22,w4
            ldrb w20,[x0,w4,uxtw]
            cbz w20,.L_409664

            sub w0,w21,w20
            lsr w0,w4,w0
.L_409568:

            ldr w1,[sp,#108]
            cmp w0,w1
            b.eq .L_40960c
.L_409574:

            ldr w4,[x25,w20,sxtw #2]
            add x2,x26,#2512
            ldr w5,[x26,#1564]
            adrp x1, window
            add w0,w0,w4
            add x1,x1, :lo12:window
            add w4,w5,#1
            str w4,[x26,#1564]
            ldrb w0,[x2,w0,uxtw]
            strb w0,[x1,w5,uxtw]
            cmp w4,#8,lsl #12
            b.eq .L_409724
.L_4095a4:

            ldr w1,[x26,#2876]
            ldr w21,[x26,#2872]
            sub w1,w1,w20
            str w1,[x26,#2876]
            ldr x2,[x26,#2880]
            cmp w1,w21
            b.ge .L_409548
.L_4095c0:

            lsl x19,x2,#8
            ldr w0,[x26,#512]
            ldr w2,[x26,#520]
            cmp w0,w2
            b.hs .L_40964c

            add w2,w0,#1
            ldrb w0,[x24,w0,uxtw]
            str w2,[x26,#512]
.L_4095e0:

            orr x2,x19,x0
            add w1,w1,#8
            str w1,[x26,#2876]
            str x2,[x26,#2880]
            b .L_409540
.L_4095f4:

            mov w0,#0
            bl fill_inbuf

            ldr w3,[x26,#512]
            sxtw x0,w0
            ldr w4,[x26,#520]
            b .L_4092d0
.L_40960c:

            ldr w1,[x26,#2280]
            cmp w1,w20
            b.ne .L_409574

            bl flush_window

            ldr x0,[x26,#2272]
            ldr w1,[x26,#1568]
            cmp x1,x0
            b.ne .L_409794

            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40964c:

.cfi_restore_state 
            mov w0,#0
            bl fill_inbuf

            ldr w1,[x26,#2876]
            sxtw x0,w0
            ldr w21,[x26,#2872]
            b .L_4095e0
.L_409664:

            add w4,w21,#1
            sxtw x19,w22
            add x21,x26,#2768
            sxtw x23,w4
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409680:

            lsl x19,x19,#1
            mov w20,w23
            add x19,x19,#1
            mov w28,w23
            cmp w23,w1
            b.gt .L_4096c4

            b .L_409700
.L_40969c:

            add w1,w0,#1
            ldrb w0,[x24,w0,uxtw]
            str w1,[x26,#512]
            ldr w1,[x26,#2876]
            orr x2,x27,x0
            str x2,[x26,#2880]
            add w1,w1,#8
            str w1,[x26,#2876]
            cmp w1,w28
            b.ge .L_409700
.L_4096c4:

            ldr w0,[x26,#512]
            lsl x27,x2,#8
            ldr w1,[x26,#520]
            cmp w0,w1
            b.lo .L_40969c

            mov w0,#0
            bl fill_inbuf

            ldr w1,[x26,#2876]
            sxtw x0,w0
            orr x2,x27,x0
            str x2,[x26,#2880]
            add w1,w1,#8
            str w1,[x26,#2876]
            cmp w1,w28
            b.lt .L_4096c4
.L_409700:

            sub w0,w1,w20
            ldr w1,[x21,x23,lsl #2]
            add x23,x23,#1
            lsr x0,x2,x0
            and w0,w0,w19
            cmp w1,w0
            b.ls .L_409568

            ldr w1,[x26,#2876]
            b .L_409680
.L_409724:

            bl flush_window

            b .L_4095a4
.L_40972c:

            mov w0,#0
            bl fill_inbuf

            mov w21,w0
            b .L_4092fc
.L_40973c:

            add x1,x26,#2288
            ldr w0,[x1,w21,sxtw #2]
            add w2,w0,#1
            str w2,[x1,w21,sxtw #2]
            str w2,[sp,#108]
.L_409750:

            add x1,x26,#2288
            add w0,w0,#2
            str w0,[x1,w21,sxtw #2]
.L_40975c:

            adrp x25, outbuf+1
            adrp x23, outbuf
            add x25,x25, :lo12:outbuf+1
            add x0,x23, :lo12:outbuf
            mov w22,#1
            str x0,[sp,#96]
            str w21,[x26,#2872]
            b .L_409504
.L_40977c:

            adrp x0, .L_40c330
            add x0,x0, :lo12:.L_40c330
            bl error
.L_409788:

            adrp x0, .L_40c2f8
            add x0,x0, :lo12:.L_40c2f8
            bl error
.L_409794:

            adrp x0, .L_40c350
            add x0,x0, :lo12:.L_40c350
            bl error
.cfi_endproc 
.size unpack, . - unpack
.align 4
#-----------------------------------
.globl unzip
.type unzip, @function
#-----------------------------------
unzip:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov x3,#4294967295
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 21, -64
.cfi_offset 22, -56
            adrp x21, optind
            add x21,x21, :lo12:optind
            stp x23,x24,[sp,#48]
            ldr w2,[x19,#1560]
            str x3,[x21,#344]
            str w1,[x19,#412]
            str w0,[x19,#516]
            ldr w0,[x21,#340]
.cfi_offset 23, -48
.cfi_offset 24, -40
            cbnz w2,.L_4097f8

            cmp w0,#8
            b.eq .L_409b0c

            str x25,[sp,#64]
.L_4097ec:

.cfi_offset 25, -32
            adrp x0, .L_40c3f0
            add x0,x0, :lo12:.L_40c3f0
            bl error
.L_4097f8:

.cfi_restore 25
            ldr w1,[x19,#1556]
            str x25,[sp,#64]
.cfi_offset 25, -32
            cbnz w1,.L_409a18

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            ldur w23,[x1,#14]
            ldur w22,[x1,#22]
            cmp w0,#8
            b.eq .L_409a28
.L_40981c:

            cbnz w0,.L_4097ec

            adrp x25, inbuf
            add x25,x25, :lo12:inbuf
            ldr w0,[x19,#1552]
            ldur w3,[x25,#18]
            cmp w0,#0
            ldur w20,[x25,#22]
            sub x0,x3,#12
            csel x0,x0,x3,ne
            cmp x20,x0
            b.ne .L_409b90

            adrp x24, window
            add x24,x24, :lo12:window
            cbnz x20,.L_409884

            b .L_4098c4
.L_409858:

            ldr w2,[x19,#1564]
            add w1,w0,#1
            ldrb w0,[x25,w0,uxtw]
            str w1,[x19,#512]
            add w1,w2,#1
            str w1,[x19,#1564]
            strb w0,[x24,w2,uxtw]
            cmp w1,#8,lsl #12
            b.eq .L_4098b8
.L_40987c:

            subs x20,x20,#1
            b.eq .L_4098c4
.L_409884:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.lo .L_409858

            mov w0,#0
            bl fill_inbuf

            ldr w2,[x19,#1564]
            and w0,w0,#255
            add w1,w2,#1
            str w1,[x19,#1564]
            strb w0,[x24,w2,uxtw]
            cmp w1,#8,lsl #12
            b.ne .L_40987c
.L_4098b8:

            bl flush_window

            subs x20,x20,#1
            b.ne .L_409884
.L_4098c4:

            bl flush_window

            ldr x25,[sp,#64]
.L_4098cc:

.cfi_restore 25
            ldr w0,[x19,#1560]
            cbnz w0,.L_409a30

            adrp x23, inbuf
            add x20,sp,#80
            add x23,x23, :lo12:inbuf
            add x22,sp,#88
            b .L_409900
.L_4098e8:

            add w1,w0,#1
            ldrb w0,[x23,w0,uxtw]
            strb w0,[x20],#1
            str w1,[x19,#512]
            cmp x22,x20
            b.eq .L_409928
.L_409900:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.lo .L_4098e8

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            strb w0,[x20],#1
            cmp x22,x20
            b.ne .L_409900
.L_409928:

            ldp w23,w22,[sp,#80]
.L_40992c:

            mov w20,#0
            ldr x0,[x21,#344]
            eor x0,x0,#4294967295
            cmp x23,x0
            b.eq .L_409964

            adrp x21, progname
            adrp x0, stderr
            mov w20,#1
            add x3,x19,#528
            ldr x2,[x21,:lo12:progname]
            adrp x1, .L_40c410
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c410
            bl fprintf
.L_409964:

            ldr w0,[x19,#1568]
            cmp x0,x22
            b.eq .L_409a9c

            adrp x21, heap+1568
            add x21,x21, :lo12:heap+1568
            adrp x0, stderr
            add x3,x19,#528
            adrp x1, .L_40c440
            add x1,x1, :lo12:.L_40c440
            ldr x2,[x21,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            ldr w0,[x19,#1560]
            cbz w0,.L_409adc

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            add w2,w0,#4
            cmp w2,w1
            b.hs .L_409b00

            mov w20,#1
.L_4099b4:

            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            add x2,x1,w0, uxtw
            mov x3,#19280
            movk x3,#1027,lsl #16
            ldrb w4,[x1,w0,uxtw]
            ldrb w1,[x2,#1]
            ldrb w0,[x2,#3]
            ldrb w2,[x2,#2]
            orr w1,w4,w1, lsl #8
            orr w0,w2,w0, lsl #8
            sxtw x1,w1
            lsl w0,w0,#16
            orr x0,x0,x1
            cmp x0,x3
            b.eq .L_409b34
.L_4099f4:

            str wzr,[x19,#1556]
            str wzr,[x19,#1560]
            cbnz w20,.L_409abc
.L_409a00:

            ldp x21,x22,[sp,#32]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409a18:

.cfi_def_cfa_offset 96
.cfi_offset 19, -80
.cfi_offset 20, -72
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
.cfi_offset 24, -40
.cfi_offset 25, -32
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov x22,#0
            mov x23,#0
            cmp w0,#8
            b.ne .L_40981c
.L_409a28:

            ldr x25,[sp,#64]
.cfi_restore 25
            b .L_409b14
.L_409a30:

            ldr w0,[x19,#1556]
            cbz w0,.L_40992c

            adrp x22, inbuf
            add x20,sp,#80
            add x22,x22, :lo12:inbuf
            b .L_409a64
.L_409a48:

            add w1,w0,#1
            ldrb w0,[x22,w0,uxtw]
            strb w0,[x20],#1
            add x0,sp,#96
            str w1,[x19,#512]
            cmp x20,x0
            b.eq .L_409a90
.L_409a64:

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            cmp w0,w1
            b.lo .L_409a48

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            strb w0,[x20],#1
            add x0,sp,#96
            cmp x20,x0
            b.ne .L_409a64
.L_409a90:

            ldr w23,[sp,#84]
            ldr w22,[sp,#92]
            b .L_40992c
.L_409a9c:

            ldr w0,[x19,#1560]
            cbz w0,.L_4099f4

            ldr w0,[x19,#512]
            ldr w1,[x19,#520]
            add w2,w0,#4
            cmp w2,w1
            b.hs .L_4099f4

            b .L_4099b4
.L_409abc:

            adrp x21, heap+1568
            add x21,x21, :lo12:heap+1568
.L_409ac4:

            ldr w0,[x19,#1648]
            mov w20,#1
            str w20,[x21,#1408]
            cbnz w0,.L_409a00

            str x25,[sp,#64]
.cfi_remember_state 
.cfi_offset 25, -32
            bl abort_gzip
.L_409adc:

.cfi_restore_state 
            str wzr,[x19,#1556]
            b .L_409ac4
.L_409ae4:

            adrp x0, stderr
            adrp x1, .L_40c4a0
            ldr x2,[x21,#1400]
            add x3,x19,#528
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c4a0
            bl fprintf
.L_409b00:

            str wzr,[x19,#1556]
            str wzr,[x19,#1560]
            b .L_409ac4
.L_409b0c:

            mov x22,#0
            mov x23,#0
.L_409b14:

            bl inflate

            cmp w0,#3
            b.eq .L_409b80

            cbz w0,.L_4098cc

            adrp x0, .L_40c378
            add x0,x0, :lo12:.L_40c378
            str x25,[sp,#64]
.cfi_remember_state 
.cfi_offset 25, -32
            bl error
.L_409b34:

.cfi_restore_state 
            ldr w0,[x19,#1660]
            adrp x21, heap+1568
            add x21,x21, :lo12:heap+1568
            cbz w0,.L_409ae4

            ldr w0,[x21,#1436]
            cbz w0,.L_409b60
.L_409b4c:

            ldr w0,[x21,#1408]
            cbnz w0,.L_4099f4

            mov w0,#2
            str w0,[x21,#1408]
            b .L_4099f4
.L_409b60:

            adrp x0, stderr
            add x3,x19,#528
            ldr x2,[x21,#1400]
            adrp x1, .L_40c470
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c470
            bl fprintf

            b .L_409b4c
.L_409b80:

            adrp x0, .L_40c0a0
            add x0,x0, :lo12:.L_40c0a0
            str x25,[sp,#64]
.cfi_offset 25, -32
            bl error
.L_409b90:

            adrp x0, stderr
            mov x2,x20
            adrp x1, .L_40c3a8
            add x1,x1, :lo12:.L_40c3a8
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            adrp x0, .L_40c3c0
            add x0,x0, :lo12:.L_40c3c0
            bl error
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size unzip, . - unzip
.align 4
#-----------------------------------
.globl unlzw
.type unlzw, @function
#-----------------------------------
unlzw:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-192]!
.cfi_def_cfa_offset 192
.cfi_offset 29, -192
.cfi_offset 30, -184
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -144
.cfi_offset 24, -136
            adrp x23, static_ltree+864
            add x23,x23, :lo12:static_ltree+864
            stp x19,x20,[sp,#16]
.cfi_offset 19, -176
.cfi_offset 20, -168
            mov w19,w1
            ldr w1,[x23,#512]
            str w0,[sp,#188]
            ldr w0,[x23,#520]
            cmp w1,w0
            b.hs .L_40a2dc

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add w2,w1,#1
            str w2,[x23,#512]
            ldrb w0,[x0,w1,uxtw]
.L_409c04:

            adrp x1, optind
            add x1,x1, :lo12:optind
            mov x2,x1
            and w1,w0,#128
            str x2,[sp,#176]
            ands w4,w0,#96
            str w0,[x2,#2916]
            str w1,[x2,#2920]
            b.eq .L_409c50

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            ldr w0,[x20,#1436]
            cbz w0,.L_40a370

            ldr w0,[x20,#1408]
            cbnz w0,.L_40a2d0
.L_409c40:

            ldr x0,[sp,#176]
            mov w1,#2
            str w1,[x20,#1408]
            ldr w0,[x0,#2916]
.L_409c50:

            and w4,w0,#31
            mov x20,#1
            ldr x0,[sp,#176]
            str w4,[x0,#2916]
            lsl x0,x20,x4
            str x0,[sp,#160]
            cmp w4,#16
            b.gt .L_40a290

            adrp x2, .L_40d2f0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -152
.cfi_offset 21, -160
            adrp x20, window
            ldr q31,[x2,:lo12:.L_40d2f0]
            adrp x2, .L_40d300
            ldr x0,[sp,#176]
            stp x25,x26,[sp,#64]
.cfi_offset 26, -120
.cfi_offset 25, -128
            adrp x21, prev
            ldr q30,[x2,:lo12:.L_40d300]
            adrp x2, .L_40d310
            stp x27,x28,[sp,#80]
.cfi_offset 28, -104
.cfi_offset 27, -112
            add x21,x21, :lo12:prev
            add x20,x20, :lo12:window
            ldr q29,[x2,:lo12:.L_40d310]
            adrp x2, .L_40d320
            ldr w0,[x0,#2920]
            ldr q28,[x2,:lo12:.L_40d320]
            adrp x2, .L_40d330
            ldr w7,[x23,#512]
            cmp w0,#0
            ldr q27,[x2,:lo12:.L_40d330]
            adrp x2, .L_40d340
            ldr w1,[x23,#520]
            cset x10,ne
            ldr q26,[x2,:lo12:.L_40d340]
            adrp x2, .L_40d350
            movi v21.4s,#0
            adrp x0, window+240
            ldr q25,[x2,:lo12:.L_40d350]
            adrp x2, .L_40d360
            lsl w27,w7,#3
            mov w3,w1
            ldr q24,[x2,:lo12:.L_40d360]
            adrp x2, .L_40d370
            add x10,x10,#256
            add x0,x0, :lo12:window+240
            ldr q23,[x2,:lo12:.L_40d370]
            adrp x2, .L_40d380
            stp q21,q21,[x21]
            ldr q22,[x2,:lo12:.L_40d380]
            stp q21,q21,[x21,#32]
            stp q21,q21,[x21,#64]
            stp q21,q21,[x21,#96]
            stp q21,q21,[x21,#128]
            stp q21,q21,[x21,#160]
            stp q21,q21,[x21,#192]
            stp q21,q21,[x21,#224]
.L_409d2c:

            cmp x20,x0
            mov v20.16b,v31.16b
            sub x0,x0,#16
            add v2.2d,v31.2d,v30.2d
            add v31.2d,v31.2d,v29.2d
            add v1.2d,v20.2d,v28.2d
            uzp1 v2.4s,v20.4s,v2.4s
            add v18.2d,v20.2d,v27.2d
            add v0.2d,v20.2d,v26.2d
            add v19.2d,v20.2d,v25.2d
            add v21.2d,v20.2d,v24.2d
            add v20.2d,v20.2d,v23.2d
            uzp1 v18.4s,v1.4s,v18.4s
            uzp1 v19.4s,v0.4s,v19.4s
            uzp1 v20.4s,v21.4s,v20.4s
            uzp1 v18.8h,v2.8h,v18.8h
            uzp1 v20.8h,v19.8h,v20.8h
            uzp1 v20.16b,v18.16b,v20.16b
            tbl v20.16b,{v20.16b},v22.16b
            str q20,[x0,#16]
            b.ne .L_409d2c

            adrp x0, d_buf
            add x0,x0, :lo12:d_buf
            add x0,x0,#15,lsl #12
            str x0,[sp,#168]
            mov x0,#511
            mov w9,#9
            mov w26,#0
            str wzr,[sp,#128]
            str x0,[sp,#136]
            str w0,[sp,#152]
            mov x0,#-1
            str x0,[sp,#96]
.L_409db0:

            asr x4,x27,#3
            sub w1,w1,w4
            cmp w1,#0
            b.le .L_409de4

            adrp x0, inbuf
            add x5,x0, :lo12:inbuf
            add x4,x5,w4, sxtw
            mov x0,#0
.L_409dd0:

            ldrb w2,[x4,x0]
            strb w2,[x5,x0]
            add x0,x0,#1
            cmp w1,w0
            b.gt .L_409dd0
.L_409de4:

            str w1,[x23,#520]
            cmp w1,#63
            b.ls .L_40a1d0
.L_409df0:

            mov w0,w1
            cbz w3,.L_40a18c

            udiv w2,w1,w9
            mov x27,#0
            msub w2,w2,w9,w1
            sub x0,x0,x2
            lsl x13,x0,#3
            cmp x13,#0
            b.le .L_409db0
.L_409e14:

            ldr x0,[sp,#136]
            mov x6,x10
            str w9,[sp,#132]
            mov x27,#0
            str x13,[sp,#144]
            mov x28,x27
            str w3,[sp,#184]
            mov w25,w26
            cmp x0,x6
            b.lt .L_409f74

            nop
            nop
            nop
            nop
.L_409e40:

            ldr w3,[sp,#132]
            asr x0,x28,#3
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            and w2,w28,#7
            add x1,x1,x0
            add x28,x28,w3, sxtw
            adrp x3, inbuf
            add x3,x3, :lo12:inbuf
            ldrb w7,[x1,#1]
            ldrb w3,[x3,x0]
            ldrb w0,[x1,#2]
            lsl x0,x0,#16
            orr x7,x0,x7, lsl #8
            ldr w0,[sp,#152]
            orr x7,x7,x3
            asr x7,x7,x2
            and w5,w0,w7
            ldr x0,[sp,#96]
            cmn x0,#1
            b.eq .L_40a100

            cmp x5,#256
            b.eq .L_40a150

            cmp x5,x6
            b.lt .L_40a178

            b.gt .L_40a330
.L_409ea8:

            ldr x1,[sp,#168]
            adrp x3, d_buf+65533
            ldr x0,[sp,#96]
            adrp x8, d_buf+65534
            ldrb w2,[sp,#128]
            add x3,x3, :lo12:d_buf+65533
            add x8,x8, :lo12:d_buf+65534
            strb w2,[x1,#4093]
.L_409ec8:

            cmp x0,#255
            b.ls .L_409ee4
.L_409ed0:

            ldrb w2,[x20,x0]
            ldrh w0,[x21,x0,lsl #1]
            strb w2,[x3,#-1]!
            cmp w0,#255
            b.hi .L_409ed0
.L_409ee4:

            sub x24,x3,#1
            ldrb w0,[x20,x0]
            sub x4,x8,x24
            sturb w0,[x3,#-1]
            add w3,w25,w4
            str w0,[sp,#128]
            str w0,[sp,#156]
            mov w0,#16383
            cmp w3,w0
            b.gt .L_409fe0

            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            add x0,x0,w25, sxtw
            sxtw x2,w4
            mov x1,x24
            str w3,[sp,#104]
            stp x6,x5,[sp,#112]
            bl memcpy

            ldr w3,[sp,#104]
            ldp x6,x5,[sp,#112]
            mov w25,w3
.L_409f38:

            ldr x0,[sp,#160]
            cmp x0,x6
            b.le .L_409f58

            ldrh w0,[sp,#96]
            strh w0,[x21,x6,lsl #1]
            ldrb w0,[sp,#156]
            strb w0,[x20,x6]
            add x6,x6,#1
.L_409f58:

            ldr x0,[sp,#144]
            cmp x28,x0
            b.ge .L_40a128
.L_409f64:

            ldr x0,[sp,#136]
            str x5,[sp,#96]
            cmp x0,x6
            b.ge .L_409e40
.L_409f74:

            ldr w9,[sp,#132]
            sub x8,x28,#1
            ldr x1,[sp,#176]
            mov x10,x6
            lsl w0,w9,#3
            add w9,w9,#1
            ldr x6,[sp,#160]
            sxtw x0,w0
            ldr w1,[x1,#2916]
            add x5,x8,x0
            mov x2,#1
            ldr w3,[sp,#184]
            cmp w1,w9
            lsl x1,x2,x9
            sub x4,x1,#1
            lsl w2,w2,w9
            csel x4,x4,x6,ne
            str x4,[sp,#136]
            sdiv x4,x5,x0
            sub w2,w2,#1
            str w2,[sp,#152]
            mov w26,w25
            ldr w1,[x23,#520]
            msub x2,x4,x0,x5
            sub x0,x0,x2
            add x27,x0,x8
            b .L_409db0
.L_409fe0:

            mov w0,#16384
            sub w0,w0,w25
            cmp w0,w4
            csel w22,w0,w4,le
            cmp w22,#0
            b.gt .L_40a030

            mov w0,#16383
            cmp w25,w0
            b.le .L_40a068
.L_40a004:

            ldr w0,[x23,#1648]
            cbz w0,.L_40a08c
.L_40a00c:

            add x24,x24,w22, sxtw
            mov w25,#0
            sub x4,x8,x24
            cmp w4,#0
            b.le .L_409f38

            cmp w4,#4,lsl #12
            mov w0,#16384
            csel w22,w4,w0,le
            mov w25,#0
.L_40a030:

            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            add x0,x0,w25, sxtw
            sxtw x2,w22
            mov x1,x24
            add w25,w25,w22
            stp x8,x6,[sp,#104]
            str x5,[sp,#120]
            bl memcpy

            ldr x5,[sp,#120]
            mov w0,#16383
            ldp x8,x6,[sp,#104]
            cmp w25,w0
            b.gt .L_40a004
.L_40a068:

            add x24,x24,w22, sxtw
            sub x0,x8,x24
            cmp w0,#0
            b.le .L_409f38

            mov w4,#16384
            sub w4,w4,w25
            cmp w4,w0
            csel w22,w4,w0,le
            b .L_40a030
.L_40a08c:

            adrp x0, outbuf
            add x26,x0, :lo12:outbuf
            mov x27,x8
            str x5,[sp,#104]
            str w22,[sp,#112]
            mov w22,w25
            str x24,[sp,#120]
            mov x24,x26
            mov x26,x6
            b .L_40a0c4
.L_40a0b4:

            cmn w0,#1
            b.eq .L_40a28c

            sub w22,w22,w0
            add x24,x24,w0, uxtw
.L_40a0c4:

            mov w2,w22
            mov x1,x24
            mov w0,w19
            bl write

            cmp w0,w22
            b.ne .L_40a0b4

            ldr x0,[x23,#1568]
            mov x6,x26
            ldr x5,[sp,#104]
            mov x8,x27
            ldr x24,[sp,#120]
            add x0,x0,w25, sxtw
            ldr w22,[sp,#112]
            str x0,[x23,#1568]
            b .L_40a00c
.L_40a100:

            cmp x5,#255
            b.gt .L_40a364

            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            str w5,[sp,#128]
            strb w5,[x0,w25,sxtw]
            add w25,w25,#1
            ldr x0,[sp,#144]
            cmp x28,x0
            b.lt .L_409f64
.L_40a128:

            ldr w3,[sp,#184]
            mov x27,x28
            ldr w9,[sp,#132]
            mov w26,w25
            mov x7,x5
            mov x10,x6
            cbz w3,.L_40a1a0

            ldr w1,[x23,#520]
            str x7,[sp,#96]
            b .L_409db0
.L_40a150:

            ldr x0,[sp,#176]
            ldr w0,[x0,#2920]
            cbnz w0,.L_40a220

            cmp x6,#256
            b.eq .L_409ea8

            adrp x8, d_buf+65534
            add x8,x8, :lo12:d_buf+65534
            mov x3,x8
            mov x0,x5
            b .L_409ed0
.L_40a178:

            adrp x8, d_buf+65534
            add x8,x8, :lo12:d_buf+65534
            mov x3,x8
            mov x0,x5
            b .L_409ec8
.L_40a18c:

            sub w1,w9,#1
            lsl x0,x0,#3
            sub x13,x0,w1, sxtw
            cmp x13,#0
            b.gt .L_409e14
.L_40a1a0:

            ldr w0,[x23,#1648]
            cmp w0,#0
            ccmp w26,#0,#4,eq
            b.gt .L_40a2e8
.L_40a1b0:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#0
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#192
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40a1d0:

.cfi_restore_state 
            adrp x0, inbuf
            add x5,x0, :lo12:inbuf
            ldr w0,[sp,#188]
            add x1,x5,w1, uxtw
            mov x2,#32768
            str w9,[sp,#104]
            str x10,[sp,#112]
            bl read

            mov w3,w0
            ldr x10,[sp,#112]
            cmn w0,#1
            ldr w9,[sp,#104]
            b.eq .L_40a398

            ldr x2,[x23,#1576]
            ldr w1,[x23,#520]
            add x2,x2,w0, sxtw
            add w1,w1,w0
            str w1,[x23,#520]
            str x2,[x23,#1576]
            b .L_409df0
.L_40a220:

            ldr w9,[sp,#132]
            sub x8,x28,#1
            mov x2,#511
            str x2,[sp,#136]
            str w2,[sp,#152]
            mov w26,w25
            lsl w0,w9,#3
            ldr w1,[x23,#520]
            movi v31.4s,#0
            ldr w3,[sp,#184]
            sxtw x0,w0
            mov x10,x5
            add x4,x8,x0
            mov w9,#9
            stp q31,q31,[x21]
            sdiv x2,x4,x0
            stp q31,q31,[x21,#32]
            stp q31,q31,[x21,#64]
            msub x2,x2,x0,x4
            stp q31,q31,[x21,#96]
            sub x0,x0,x2
            stp q31,q31,[x21,#128]
            add x27,x0,x8
            stp q31,q31,[x21,#160]
            stp q31,q31,[x21,#192]
            stp q31,q31,[x21,#224]
            b .L_409db0
.L_40a28c:

            bl write_error
.L_40a290:

.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
            add x3,x23,#528
            mov w5,#16
            adrp x1, .L_40c538
            ldr x2,[x19,#1400]
            add x1,x1, :lo12:.L_40c538
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            str w20,[x19,#1408]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#192
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40a2d0:

.cfi_restore_state 
            ldr x0,[sp,#176]
            ldr w0,[x0,#2916]
            b .L_409c50
.L_40a2dc:

            mov w0,#0
            bl fill_inbuf

            b .L_409c04
.L_40a2e8:

.cfi_offset 21, -160
.cfi_offset 22, -152
.cfi_offset 25, -128
.cfi_offset 26, -120
.cfi_offset 27, -112
.cfi_offset 28, -104
            adrp x20, outbuf
            mov w21,w26
            add x20,x20, :lo12:outbuf
            b .L_40a308
.L_40a2f8:

            cmn w0,#1
            b.eq .L_40a28c

            sub w21,w21,w0
            add x20,x20,w0, uxtw
.L_40a308:

            mov w2,w21
            mov x1,x20
            mov w0,w19
            bl write

            cmp w0,w21
            b.ne .L_40a2f8

            ldr x0,[x23,#1568]
            add x5,x0,w26, sxtw
            str x5,[x23,#1568]
            b .L_40a1b0
.L_40a330:

            ldr w0,[x23,#1648]
            mov w26,w25
            cmp w0,#0
            ccmp w25,#0,#4,eq
            b.gt .L_40a39c
.L_40a344:

            ldr w2,[x23,#1660]
            adrp x1, .L_40c4e0
            add x1,x1, :lo12:.L_40c4e0
            adrp x0, .L_40c4d0
            cmp w2,#0
            add x0,x0, :lo12:.L_40c4d0
            csel x0,x1,x0,eq
            bl error
.L_40a364:

            adrp x0, .L_40c4d0
            add x0,x0, :lo12:.L_40c4d0
            bl error
.L_40a370:

.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x0, stderr
            add x3,x23,#528
            ldr x2,[x20,#1400]
            adrp x1, .L_40c510
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c510
            bl fprintf

            ldr w0,[x20,#1408]
            cbz w0,.L_409c40

            b .L_40a2d0
.L_40a398:

.cfi_offset 21, -160
.cfi_offset 22, -152
.cfi_offset 25, -128
.cfi_offset 26, -120
.cfi_offset 27, -112
.cfi_offset 28, -104
            bl read_error
.L_40a39c:

            adrp x20, outbuf
            mov w21,w25
            add x20,x20, :lo12:outbuf
            b .L_40a3bc
.L_40a3ac:

            cmn w0,#1
            b.eq .L_40a28c

            sub w21,w21,w0
            add x20,x20,w0, uxtw
.L_40a3bc:

            mov w2,w21
            mov x1,x20
            mov w0,w19
            bl write

            cmp w0,w21
            b.ne .L_40a3ac

            ldr x0,[x23,#1568]
            add x0,x0,w26, sxtw
            str x0,[x23,#1568]
            b .L_40a344
.cfi_endproc 
.size unlzw, . - unlzw
.align 2
#-----------------------------------
.globl display_ratio
.type display_ratio, @function
#-----------------------------------
display_ratio:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x3,x0
            movi d0,#0
            mov x0,x2
            fmov d31,x3
            cbz x1,.L_40a410

            scvtf d0,d31
            mov x2,#4636737291354636288
            fmov d30,x2
            scvtf d31,x1
            fmul d0,d0,d30
            fdiv d0,d0,d31
.L_40a410:

            adrp x1, .L_40c578
            add x1,x1, :lo12:.L_40c578
            b fprintf
.cfi_endproc 

            nop
            nop
            nop
            nop
.size display_ratio, . - display_ratio
.align 4
#-----------------------------------
.globl fprint_off
.type fprint_off, @function
#-----------------------------------
fprint_off:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            mov x20,x0
            mov x0,#7378697629483820646
            str x21,[sp,#32]
.cfi_offset 21, -80
            add x19,sp,#112
            movk x0,#26215
            tbnz x1,#63,.L_40a4cc
.L_40a444:

            smulh x3,x1,x0
            asr x3,x3,#2
            sub x3,x3,x1, asr #63
            add x4,x3,x3, lsl #2
            sub x4,x1,x4, lsl #1
            mov x1,x3
            add w3,w4,#48
            strb w3,[x19,#-1]!
            cbnz x1,.L_40a444
.L_40a468:

            add x0,sp,#112
            sub x0,x0,x19
            sub w0,w2,w0
            sub w21,w0,#1
            cmp w0,#0
            b.le .L_40a498
.L_40a480:

            mov x1,x20
            mov w0,#32
            sub w21,w21,#1
            bl putc

            cmn w21,#1
            b.ne .L_40a480
.L_40a498:

            add x0,sp,#112
            cmp x19,x0
            b.hs .L_40a4bc
.L_40a4a4:

            ldrb w0,[x19],#1
            mov x1,x20
            bl putc

            add x0,sp,#112
            cmp x19,x0
            b.ne .L_40a4a4
.L_40a4bc:

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40a4cc:

.cfi_restore_state 
            mov x4,x19
            mov x6,x0
            mov w5,#48
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a4e0:

            smulh x0,x1,x6
            mov x19,x4
            asr x0,x0,#2
            sub x0,x0,x1, asr #63
            add x3,x0,x0, lsl #2
            sub x3,x1,x3, lsl #1
            mov x1,x0
            sub w0,w5,w3
            strb w0,[x4,#-1]!
            cbnz x1,.L_40a4e0

            mov w0,#45
            sub x19,x19,#2
            sturb w0,[x4,#-1]
            b .L_40a468
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size fprint_off, . - fprint_off
#-----------------------------------
.type do_list, @function
#-----------------------------------
do_list:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            adrp x2, optind
            add x2,x2, :lo12:optind
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov w20,w1
            ldr w1,[x2,#2924]
            str x21,[sp,#32]
.cfi_offset 21, -32
            mov w21,w0
            cbz w1,.L_40a640

            tbnz w20,#31,.L_40a64c

            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            str wzr,[x2,#2924]
            ldr w0,[x19,#1668]
            cbnz w0,.L_40a780
.L_40a560:

            adrp x0, quiet
            ldr w0,[x0,:lo12:quiet]
            cbz w0,.L_40a750
.L_40a56c:

            ldr x0,[x19,#2904]
            mov x1,#-1
            str x1,[x19,#1568]
            str x0,[x19,#1576]
            cmp w20,#8
            b.eq .L_40a6d4
.L_40a584:

            mov x21,#-1
.L_40a588:

            add x0,x19,#1632
            bl ctime

            ldr w1,[x19,#1668]
            strb wzr,[x0,#16]
            cbnz w1,.L_40a728
.L_40a59c:

            adrp x20, stdout
            mov w2,#19
            ldr x1,[x19,#1576]
            ldr x0,[x20,:lo12:stdout]
            bl fprint_off

            mov w0,#32
            bl putchar

            ldr x1,[x19,#1568]
            mov w2,#19
            ldr x0,[x20,:lo12:stdout]
            bl fprint_off

            mov w0,#32
            bl putchar

            ldr x0,[x19,#1576]
            cmn x0,#1
            b.eq .L_40a6fc

            ldr x1,[x19,#2888]
            tbnz x1,#63,.L_40a5ec

            add x1,x0,x1
            str x1,[x19,#2888]
.L_40a5ec:

            ldr x1,[x19,#1568]
            cmn x1,#1
            b.ne .L_40a790

            ldr x0,[x20,:lo12:stdout]
            movi d0,#0
            str xzr,[x19,#1568]
            str xzr,[x19,#1576]
            str xzr,[x19,#1640]
            str x1,[x19,#2896]
.L_40a610:

            adrp x1, .L_40c578
            add x1,x1, :lo12:.L_40c578
            bl fprintf

            ldr x21,[sp,#32]
            adrp x1, heap+1568
            ldp x19,x20,[sp,#16]
            add x1,x1, :lo12:heap+1568
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            add x1,x1,#1440
            adrp x0, .L_40c0d0
            add x0,x0, :lo12:.L_40c0d0
            b printf
.L_40a640:

.cfi_restore_state 
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            tbz w20,#31,.L_40a56c
.L_40a64c:

            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            ldr x1,[x19,#2888]
            cmp x1,#0
            b.le .L_40a718

            ldr x0,[x19,#2896]
            cmp x0,#0
            b.le .L_40a718

            ldr w2,[x19,#1668]
            cbnz w2,.L_40a7d4

            adrp x2, quiet
            ldr w2,[x2,:lo12:quiet]
            cbz w2,.L_40a7ec

            adrp x3, stdout
            mov x2,x0
            ldr x0,[x3,:lo12:stdout]
.L_40a68c:

            scvtf d0,x2
            ldr x4,[x19,#1640]
            mov x3,#4636737291354636288
            fmov d30,x3
            sub x1,x1,x4
            sub x2,x2,x1
            scvtf d31,x2
            fmul d31,d31,d30
            fdiv d0,d31,d0
.L_40a6b0:

            adrp x1, .L_40c578
            add x1,x1, :lo12:.L_40c578
            bl fprintf

            ldr x21,[sp,#32]
            adrp x0, .L_40c608
            ldp x19,x20,[sp,#16]
            add x0,x0, :lo12:.L_40c608
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b puts
.L_40a6d4:

.cfi_restore_state 
            ldr w0,[x19,#1652]
            cbnz w0,.L_40a584

            mov w0,w21
            mov w2,#2
            mov x1,#-8
            bl lseek

            cmn x0,#1
            b.ne .L_40a834

            str x0,[x19,#1576]
            b .L_40a584
.L_40a6fc:

            movi d0,#0
            str xzr,[x19,#1568]
            str xzr,[x19,#1576]
            str xzr,[x19,#1640]
            str x0,[x19,#2888]
            ldr x0,[x20,:lo12:stdout]
            b .L_40a610
.L_40a718:

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40a728:

.cfi_restore_state 
            adrp x1, configuration_table
            add x1,x1, :lo12:configuration_table
            add x1,x1,#192
            add x3,x0,#4
            mov x2,x21
            adrp x0, .L_40c618
            add x0,x0, :lo12:.L_40c618
            ldr x1,[x1,w20,sxtw #3]
            bl printf

            b .L_40a59c
.L_40a750:

            mov w5,#19
            adrp x6, .L_40c5a0
            mov w4,w5
            add x6,x6, :lo12:.L_40c5a0
            mov w2,w5
            mov w1,w5
            adrp x3, .L_40c5b0
            adrp x0, .L_40c5c0
            add x3,x3, :lo12:.L_40c5b0
            add x0,x0, :lo12:.L_40c5c0
            bl printf

            b .L_40a56c
.L_40a780:

            adrp x0, .L_40c580
            add x0,x0, :lo12:.L_40c580
            bl printf

            b .L_40a560
.L_40a790:

            ldr x3,[x19,#1640]
            ldr x2,[x19,#2896]
            sub x0,x0,x3
            sub x0,x1,x0
            fmov d0,x0
            tbnz x2,#63,.L_40a7b0

            add x2,x1,x2
            str x2,[x19,#2896]
.L_40a7b0:

            ldr x0,[x20,:lo12:stdout]
            cbz x1,.L_40a860

            scvtf d0,d0
            mov x2,#4636737291354636288
            fmov d30,x2
            scvtf d31,x1
            fmul d0,d0,d30
            fdiv d0,d0,d31
            b .L_40a610
.L_40a7d4:

            adrp x0, .L_40c5e8
            add x0,x0, :lo12:.L_40c5e8
            bl printf

            ldr w0,[x19,#1668]
            ldr x1,[x19,#2888]
            cbz w0,.L_40a868
.L_40a7ec:

            adrp x20, stdout
            mov w2,#19
            ldr x0,[x20,:lo12:stdout]
            bl fprint_off

            mov w0,#32
            bl putchar

            ldr x1,[x19,#2896]
            mov w2,#19
            ldr x0,[x20,:lo12:stdout]
            bl fprint_off

            mov w0,#32
            bl putchar

            ldr x1,[x19,#2888]
.L_40a820:

            movi d0,#0
            ldr x2,[x19,#2896]
            ldr x0,[x20,:lo12:stdout]
            cbz x2,.L_40a6b0

            b .L_40a68c
.L_40a834:

            add x3,x0,#8
            add x1,sp,#56
            mov w0,w21
            mov x2,#8
            str x3,[x19,#1576]
            bl read

            cmp x0,#8
            b.ne .L_40a87c

            ldp w21,w0,[sp,#56]
            str x0,[x19,#1568]
            b .L_40a588
.L_40a860:

            movi d0,#0
            b .L_40a610
.L_40a868:

            adrp x0, quiet
            ldr w0,[x0,:lo12:quiet]
            cbz w0,.L_40a7ec

            adrp x20, stdout
            b .L_40a820
.L_40a87c:

            bl read_error
.cfi_endproc 
.size do_list, . - do_list
#-----------------------------------
.type treat_stdin, @function
#-----------------------------------
treat_stdin:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
.cfi_offset 24, -8
            ldr w0,[x19,#1656]
            ldr w2,[x19,#1672]
            orr w0,w2,w0
            cbnz w0,.L_40a8cc

            ldr w0,[x19,#1604]
            cbnz w0,.L_40aaa4

            adrp x24, stdout
            ldr x0,[x24,:lo12:stdout]
.L_40a8bc:

            bl fileno

            bl isatty

            cbnz w0,.L_40aadc

            ldr w2,[x19,#1672]
.L_40a8cc:

            adrp x1, .L_40c6b8
            add x1,x1, :lo12:.L_40c6b8
            adrp x20, heap+1568
            adrp x0, .L_40c6b0
            add x20,x20, :lo12:heap+1568
            add x0,x0, :lo12:.L_40c6b0
            add x3,x20,#1440
            ldr w5,[x1]
            ldur w4,[x1,#3]
            ldr w1,[x0]
            ldrh w0,[x0,#4]
            str w5,[x20,#1440]
            stur w4,[x3,#3]
            str w1,[x19,#528]
            strh w0,[x19,#532]
            str xzr,[x19,#1632]
            cbnz w2,.L_40a9c4

            adrp x21, optind
            add x21,x21, :lo12:optind
            ldr w0,[x21,#2600]
            cbz w0,.L_40a9c4
.L_40a920:

            ldr w0,[x19,#1604]
            mov x1,#-1
            mov w2,#1
            str wzr,[x19,#512]
            str wzr,[x19,#520]
            str wzr,[x19,#1564]
            str xzr,[x19,#1568]
            str xzr,[x19,#1576]
            str w2,[x19,#1660]
            str wzr,[x19,#1664]
            str x1,[x19,#2904]
            cbnz w0,.L_40a9f4
.L_40a950:

            ldr w0,[x19,#1672]
            cbnz w0,.L_40aa88

            adrp x23, stdin
            adrp x24, stdout
            add x23,x23, :lo12:stdin
            add x24,x24, :lo12:stdout
            b .L_40a988
.L_40a96c:

            bl input_eof

            cbnz w0,.L_40aa0c

            ldr w0,[x19,#516]
            bl get_method

            str w0,[x21,#340]
            tbnz w0,#31,.L_40a9b0

            str xzr,[x19,#1568]
.L_40a988:

            ldr x0,[x23]
            ldr x22,[x21,#2592]
            bl fileno

            mov w20,w0
            ldr x0,[x24]
            bl fileno

            mov w1,w0
            mov w0,w20
            blr x22

            cbz w0,.L_40a96c
.L_40a9b0:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40a9c4:

.cfi_restore_state 
            adrp x23, stdin
            add x21,x19,#2912
            ldr x0,[x23,:lo12:stdin]
            bl fileno

            mov x1,x21
            bl fstat

            cbnz w0,.L_40ab30

            ldr x0,[x21,#88]
            adrp x21, optind
            add x21,x21, :lo12:optind
            str x0,[x19,#1632]
            b .L_40a920
.L_40a9f4:

            ldr w0,[x19,#516]
            bl get_method

            str w0,[x21,#340]
            tbz w0,#31,.L_40a950

            ldr w0,[x20,#1408]
            bl do_exit
.L_40aa0c:

            ldr w0,[x19,#1668]
            cbz w0,.L_40a9b0

            ldr w0,[x19,#1648]
            cbnz w0,.L_40aab0

            ldr w0,[x19,#1604]
            cbnz w0,.L_40a9b0

            ldr x1,[x19,#1576]
            adrp x21, stderr
            movi d0,#0
            ldr x0,[x21,:lo12:stderr]
            cbz x1,.L_40aa60

            ldr x3,[x19,#1568]
            mov x2,#4636737291354636288
            ldr x4,[x19,#1640]
            fmov d30,x2
            scvtf d0,x1
            sub x2,x3,x4
            sub x1,x1,x2
            scvtf d31,x1
            fmul d31,d31,d30
            fdiv d0,d31,d0
.L_40aa60:

            adrp x1, .L_40c578
            add x1,x1, :lo12:.L_40c578
            bl fprintf

            ldr x1,[x21,:lo12:stderr]
            mov w0,#10
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b fputc
.L_40aa88:

.cfi_restore_state 
            ldp x23,x24,[sp,#48]
            ldr w0,[x19,#516]
            ldr w1,[x21,#340]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b do_list
.L_40aaa4:

.cfi_restore_state 
            adrp x23, stdin
            ldr x0,[x23,:lo12:stdin]
            b .L_40a8bc
.L_40aab0:

            ldp x19,x20,[sp,#16]
            adrp x1, stderr
            ldp x21,x22,[sp,#32]
            adrp x0, .L_40c6d0
            ldp x23,x24,[sp,#48]
            add x0,x0, :lo12:.L_40c6d0
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            mov x2,#4
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            b fwrite
.L_40aadc:

.cfi_restore_state 
            ldr w1,[x19,#1604]
            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            adrp x21, stderr
            ldr x0,[x21,:lo12:stderr]
            ldr x2,[x20,#1400]
            cbz w1,.L_40ab44

            adrp x3, .L_40c628
            adrp x4, .L_40c638
            add x3,x3, :lo12:.L_40c628
            add x4,x4, :lo12:.L_40c638
.L_40ab08:

            adrp x1, .L_40c650
            add x1,x1, :lo12:.L_40c650
            bl fprintf

            ldr x2,[x20,#1400]
            adrp x1, .L_40c698
            ldr x0,[x21,:lo12:stderr]
            add x1,x1, :lo12:.L_40c698
            bl fprintf

            mov w0,#1
            bl do_exit
.L_40ab30:

            adrp x0, .L_40c6c0
            add x0,x0, :lo12:.L_40c6c0
            bl progerror

            mov w0,#1
            bl do_exit
.L_40ab44:

            adrp x3, .L_40c640
            adrp x4, .L_40c1f8
            add x3,x3, :lo12:.L_40c640
            add x4,x4, :lo12:.L_40c1f8
            b .L_40ab08
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size treat_stdin, . - treat_stdin
.align 4
#-----------------------------------
.globl xmalloc
.type xmalloc, @function
#-----------------------------------
xmalloc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov w0,w0
            mov fp,sp
            bl malloc

            cbz x0,.L_40ab7c

            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40ab7c:

.cfi_restore_state 
            adrp x0, .L_40c0a0
            add x0,x0, :lo12:.L_40c0a0
            bl error
.cfi_endproc 
.size xmalloc, . - xmalloc
.align 3
#-----------------------------------
.globl yesno
.type yesno, @function
#-----------------------------------
yesno:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -144
.cfi_offset 22, -136
            adrp x21, stdin
            add x22,sp,#48
            add x21,x21, :lo12:stdin
            stp x19,x20,[sp,#16]
.cfi_offset 19, -160
.cfi_offset 20, -152
            mov w20,#0
.L_40aba8:

            ldr x0,[x21]
            bl getc

            mov w19,w0
            cmp w19,#10
            sub w0,w20,#1
            ccmn w19,#1,#4,ne
            b.eq .L_40ac04
.L_40abc4:

            cmp w0,#125
            b.ls .L_40abe0

            cbnz w20,.L_40aba8

            bl __ctype_b_loc

            ldr x0,[x0]
            ldrh w0,[x0,w19,sxtw #1]
            tbnz w0,#13,.L_40aba8
.L_40abe0:

            ldr x0,[x21]
            strb w19,[x22,w20,sxtw]
            add w20,w20,#1
            bl getc

            mov w19,w0
            cmp w19,#10
            sub w0,w20,#1
            ccmn w19,#1,#4,ne
            b.ne .L_40abc4
.L_40ac04:

            strb wzr,[x22,w20,sxtw]
            ldrb w0,[sp,#48]
            ldp x19,x20,[sp,#16]
            and w0,w0,#4294967263
            and w0,w0,#255
            cmp w0,#89
            ldp x21,x22,[sp,#32]
            cset w0,eq
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size yesno, . - yesno
#-----------------------------------
.type treat_file.part.0, @function
#-----------------------------------
treat_file.part.0:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1392
.cfi_def_cfa_offset 1392
            stp fp,lr,[sp]
.cfi_offset 29, -1392
.cfi_offset 30, -1384
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -1376
.cfi_offset 20, -1368
            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            add x2,x19,#2912
            stp x23,x24,[sp,#48]
            ldr w1,[x2,#16]
            and w1,w1,#61440
            cmp w1,#4,lsl #12
.cfi_offset 23, -1344
.cfi_offset 24, -1336
            b.eq .L_40b03c

            cmp w1,#8,lsl #12
            b.eq .L_40ac98

            adrp x23, heap+1568
            add x23,x23, :lo12:heap+1568
            ldr w0,[x23,#1436]
            cbz w0,.L_40b348
.L_40ac74:

            ldr w0,[x23,#1408]
            cbnz w0,.L_40ac84
.L_40ac7c:

            mov w0,#2
            str w0,[x23,#1408]
.L_40ac84:

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1392
.cfi_remember_state 
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_40ac98:

.cfi_restore_state 
            ldr w3,[x2,#20]
            ldr w1,[x19,#1660]
            cmp w3,#1
            b.ls .L_40acb4

            ldr w0,[x19,#1656]
            orr w0,w1,w0
            cbz w0,.L_40b4c8
.L_40acb4:

            adrp x24, optind
            add x24,x24, :lo12:optind
            add x0,x19,#2912
            stp x21,x22,[sp,#32]
.cfi_offset 22, -1352
.cfi_offset 21, -1360
            ldr w2,[x24,#2600]
            ldr x3,[x0,#48]
            str x3,[x19,#2904]
            cbz w2,.L_40b074

            ldr w2,[x19,#1672]
            cbz w2,.L_40b38c

            ldr x0,[x0,#88]
            str x0,[x19,#1632]
.L_40ace4:

            add x22,x19,#528
            adrp x23, heap+1568
            mov x1,x22
            add x23,x23, :lo12:heap+1568
            add x21,x23,#1440
            mov x0,x21
            bl strcpy

            mov x0,x21
            bl get_suffix

            ldr w1,[x19,#1604]
            mov x20,x0
            cbz w1,.L_40b318

            cbz x0,.L_40b3d0

            bl strlwr

            adrp x1, .L_40c070
            mov x0,x20
            add x1,x1, :lo12:.L_40c070
            bl strcmp

            cbz w0,.L_40ad44

            adrp x1, .L_40c7b0
            mov x0,x20
            add x1,x1, :lo12:.L_40c7b0
            bl strcmp

            cbnz w0,.L_40b510
.L_40ad44:

            adrp x0, .L_40c068
            add x0,x0, :lo12:.L_40c068
            ldr w1,[x0]
            ldrb w0,[x0,#4]
            str w1,[x20]
            strb w0,[x20,#4]
.L_40ad5c:

            add x20,x19,#528
            mov w2,#384
            mov x0,x20
            mov w1,#0
            bl open

            str w0,[x19,#516]
            cmn w0,#1
            b.eq .L_40b75c

            ldr w1,[x19,#1604]
            str wzr,[x19,#512]
            str wzr,[x19,#520]
            str wzr,[x19,#1564]
            str xzr,[x19,#1568]
            str xzr,[x19,#1576]
            str wzr,[x19,#1664]
            cbnz w1,.L_40b424
.L_40ad9c:

            ldr w0,[x19,#1672]
            cbnz w0,.L_40b6f8

            ldr w0,[x19,#1660]
            cbnz w0,.L_40b398

            add x21,sp,#240
            add x20,x23,#1440
            stp x25,x26,[sp,#64]
.cfi_offset 26, -1320
.cfi_offset 25, -1328
            adrp x26, .L_40c858
            adrp x25, stderr
            stp x27,x28,[sp,#80]
.cfi_offset 28, -1304
.cfi_offset 27, -1312
            bl __errno_location

            mov x22,x0
            add x0,x26, :lo12:.L_40c858
            str x0,[sp,#104]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ade0:

            str wzr,[x22]
            b .L_40adf8
.L_40ade8:

            ldr w0,[x22]
            cmp w0,#36
            b.ne .L_40ae8c

            bl shorten_name.constprop.0
.L_40adf8:

            mov x1,x21
            mov x0,x20
            bl lstat

            cbnz w0,.L_40ade8

            ldr w0,[x19,#1604]
            cbz w0,.L_40b1d0
.L_40ae10:

            ldr x1,[sp,#248]
            ldr x0,[x19,#2920]
            cmp x0,x1
            b.eq .L_40b238
.L_40ae20:

            ldr w0,[x19,#1656]
            cbnz w0,.L_40ae80

            ldr x1,[sp,#104]
            mov x3,x20
            ldr x2,[x23,#1400]
            ldr x0,[x25,:lo12:stderr]
            bl fprintf

            ldr w0,[x19,#3056]
            cbz w0,.L_40b2d8

            adrp x0, stdin
            ldr x0,[x0,:lo12:stdin]
            bl fileno

            bl isatty

            cbz w0,.L_40b2d8

            ldr x3,[x25,:lo12:stderr]
            mov x2,#36
            mov x1,#1
            adrp x0, .L_40c888
            add x0,x0, :lo12:.L_40c888
            bl fwrite

            ldr x0,[x25,:lo12:stderr]
            bl fflush

            bl yesno

            cbz w0,.L_40b2d8
.L_40ae80:

            mov x0,x20
            bl unlink

            cbnz w0,.L_40b708
.L_40ae8c:

            mov x0,x20
            mov w28,#1
            mov w2,#384
            mov w1,#193
            str w28,[x19,#408]
            bl open

            str w0,[x19,#412]
            cmn w0,#1
            b.eq .L_40b7c4

            add x26,sp,#112
            mov x1,x26
            bl fstat

            cbnz w0,.L_40b808

            mov x0,x20
            bl strlen

            ldp q31,q29,[x26]
            sub x28,x0,#1
            add x1,sp,#368
            mov x0,x20
            str q31,[sp,#368]
            ldrb w27,[x20,x28]
            ldp q31,q30,[x26,#32]
            strb wzr,[x20,x28]
            str q29,[x1,#16]
            ldp q29,q28,[x26,#64]
            stp q31,q30,[x1,#32]
            ldp q31,q30,[x26,#96]
            stp q29,q28,[x1,#64]
            stp q31,q30,[x1,#96]
            bl lstat

            ldr w1,[x19,#1604]
            cbnz w0,.L_40af1c

            ldr x2,[sp,#120]
            ldr x0,[sp,#376]
            cmp x2,x0
            b.eq .L_40b2a8
.L_40af1c:

            strb w27,[x20,x28]
.L_40af20:

            ldr w0,[x19,#1604]
            cbnz w0,.L_40b518

            ldr w0,[x19,#1608]
            cbnz w0,.L_40b8a4

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_40af38:

.cfi_restore 28
.cfi_restore 27
            ldr w1,[x24,#2604]
            ldr w0,[x19,#1668]
            cmp w1,#0
            cset w1,eq
            str w1,[x19,#1608]
.L_40af4c:

            cbz w0,.L_40af74

            b .L_40b5e8
.L_40af54:

            bl input_eof

            ldr w1,[x19,#516]
            cbnz w0,.L_40af90

            mov w0,w1
            bl get_method

            str w0,[x24,#340]
            tbnz w0,#31,.L_40af90

            str xzr,[x19,#1568]
.L_40af74:

            ldr x2,[x24,#2592]
            ldr w1,[x19,#412]
            ldr w0,[x19,#516]
            blr x2

            cbz w0,.L_40af54

            mov w0,#-1
            str w0,[x24,#340]
.L_40af90:

            ldr w0,[x19,#516]
            bl close

            ldr w0,[x19,#1660]
            cbz w0,.L_40b604

            ldr w0,[x24,#340]
            cmn w0,#1
            b.eq .L_40b3b8
.L_40afac:

            ldr w0,[x19,#1668]
            cbz w0,.L_40b3b8

            ldr w1,[x19,#1648]
            adrp x20, stderr
            ldr x0,[x20,:lo12:stderr]
            cbnz w1,.L_40b5cc

            ldr w3,[x19,#1604]
            movi d0,#0
            ldr x1,[x19,#1568]
            ldr x2,[x19,#1576]
            ldr x4,[x19,#1640]
            cbz w3,.L_40b79c

            cbz x1,.L_40b000

            sub x2,x2,x4
            mov x3,#4636737291354636288
            sub x2,x1,x2
            fmov d29,x3
            scvtf d31,x1
            scvtf d30,x2
            fmul d30,d30,d29
            fdiv d0,d30,d31
.L_40b000:

            adrp x1, .L_40c578
            add x1,x1, :lo12:.L_40c578
            bl fprintf
.L_40b00c:

            ldr w0,[x19,#1648]
            ldr w1,[x19,#1660]
            orr w0,w0,w1
            cbz w0,.L_40b8c0
.L_40b01c:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            mov w0,#10
            ldp fp,lr,[sp]
            ldp x23,x24,[sp,#48]
            ldr x1,[x20,:lo12:stderr]
            ldp x19,x20,[sp,#16]
            add sp,sp,#1392
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            b fputc
.L_40b03c:

.cfi_def_cfa_offset 1392
.cfi_offset 19, -1376
.cfi_offset 20, -1368
.cfi_offset 23, -1344
.cfi_offset 24, -1336
.cfi_offset 29, -1392
.cfi_offset 30, -1384
            ldr w1,[x19,#3040]
            cbnz w1,.L_40b0b8

            adrp x23, heap+1568
            add x23,x23, :lo12:heap+1568
            ldr w0,[x23,#1436]
            cbnz w0,.L_40ac74

            adrp x0, stderr
            add x3,x19,#528
            ldr x2,[x23,#1400]
            adrp x1, .L_40c6f8
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c6f8
            bl fprintf

            b .L_40ac74
.L_40b074:

.cfi_offset 21, -1360
.cfi_offset 22, -1352
            ldr x0,[x0,#88]
            str x0,[x19,#1632]
            cbz w1,.L_40ace4

            ldr w0,[x19,#1672]
            cbnz w0,.L_40ace4
.L_40b088:

            ldr w0,[x19,#1648]
            cbnz w0,.L_40ace4

            adrp x0, .L_40c6b8
            add x0,x0, :lo12:.L_40c6b8
            adrp x23, heap+1568
            add x23,x23, :lo12:heap+1568
            add x1,x23,#1440
            ldr w2,[x0]
            ldur w0,[x0,#3]
            str w2,[x23,#1440]
            stur w0,[x1,#3]
            b .L_40ad5c
.L_40b0b8:

.cfi_restore 21
.cfi_restore 22
            stp x21,x22,[sp,#32]
.cfi_offset 22, -1352
.cfi_offset 21, -1360
            add x21,sp,#240
            mov x20,x0
            ldp q31,q30,[x2]
            str q31,[sp,#240]
            ldp q29,q31,[x2,#32]
            stp q30,q29,[x21,#16]
            ldp q29,q30,[x2,#64]
            stp q31,q29,[x21,#48]
            ldp q29,q31,[x2,#96]
            stp q30,q29,[x21,#80]
            str q31,[x21,#112]
            bl opendir

            mov x23,x0
            cbz x0,.L_40b9bc

            adrp x24, heap+1568
            add x24,x24, :lo12:heap+1568
            stp x25,x26,[sp,#64]
.cfi_offset 26, -1320
.cfi_offset 25, -1328
            adrp x25, .L_40c6d8
            add x25,x25, :lo12:.L_40c6d8
            stp x27,x28,[sp,#80]
.cfi_offset 28, -1304
.cfi_offset 27, -1312
            bl __errno_location

            mov x22,x0
            adrp x26, stderr
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b120:

            str wzr,[x22]
            mov x0,x23
            bl readdir

            cbz x0,.L_40b44c

            ldrb w1,[x0,#19]
            add x28,x0,#19
            cmp w1,#46
            b.ne .L_40b148

            ldrb w1,[x28,#1]
            cbz w1,.L_40b120
.L_40b148:

            ldrb w0,[x0,#19]
            cmp w0,#46
            b.ne .L_40b168

            ldrb w0,[x28,#1]
            cmp w0,#46
            b.ne .L_40b168

            ldrb w0,[x28,#2]
            cbz w0,.L_40b120
.L_40b168:

            mov x0,x20
            bl strlen

            mov x19,x0
            mov x0,x28
            bl strlen

            add x0,x0,#1
            add x0,x0,w19, sxtw
            sxtw x27,w19
            cmp x0,#1022
            b.hi .L_40b368

            add x2,x19,#1
            add x0,sp,#368
            mov x1,x20
            bl memcpy

            add x0,sp,#368
            cbz w19,.L_40b1bc

            add x1,sp,#368
            add w19,w19,#1
            mov w0,#47
            strb w0,[x1,x27]
            add x0,x1,w19, sxtw
.L_40b1bc:

            mov x1,x28
            bl strcpy

            add x0,sp,#368
            bl treat_file

            b .L_40b120
.L_40b1d0:

            mov x0,x20
            bl strlen

            ldp q31,q29,[x21]
            sub x28,x0,#1
            add x1,sp,#368
            mov x0,x20
            str q31,[sp,#368]
            ldrb w26,[x20,x28]
            ldp q31,q30,[x21,#32]
            strb wzr,[x20,x28]
            str q29,[x1,#16]
            ldp q29,q28,[x21,#64]
            stp q31,q30,[x1,#32]
            ldp q31,q30,[x21,#96]
            stp q29,q28,[x1,#64]
            stp q31,q30,[x1,#96]
            bl lstat

            ldr x1,[sp,#248]
            cbnz w0,.L_40b228

            ldr x0,[sp,#376]
            cmp x0,x1
            b.eq .L_40b5a0
.L_40b228:

            ldr x0,[x19,#2920]
            strb w26,[x20,x28]
            cmp x0,x1
            b.ne .L_40ae20
.L_40b238:

            ldr x0,[sp,#240]
            ldr x1,[x19,#2912]
            cmp x1,x0
            b.ne .L_40ae20

            add x21,x23,#1440
            add x20,x19,#528
            mov x1,x21
            mov x0,x20
            bl strcmp

            mov w1,w0
            adrp x0, stderr
            ldr x2,[x23,#1400]
            ldr x0,[x0,:lo12:stderr]
            cbnz w1,.L_40b88c

            ldr w3,[x19,#1604]
            adrp x1, .L_40c638
            adrp x4, .L_40c1f8
            add x1,x1, :lo12:.L_40c638
            cmp w3,#0
            add x4,x4, :lo12:.L_40c1f8
            csel x4,x4,x1,eq
            mov x3,x20
            adrp x1, .L_40c808
            add x1,x1, :lo12:.L_40c808
            bl fprintf
.L_40b29c:

            mov w0,#1
            str w0,[x23,#1408]
            b .L_40b300
.L_40b2a8:

            ldr x2,[sp,#112]
            ldr x0,[sp,#368]
            cmp x2,x0
            b.ne .L_40af1c

            strb w27,[x20,x28]
            cbnz w1,.L_40b85c

            ldr w0,[x19,#412]
            bl close

            mov x0,x20
            bl unlink

            bl shorten_name.constprop.0

            b .L_40ade0
.L_40b2d8:

            ldr x3,[x25,:lo12:stderr]
            adrp x0, .L_40c870
            mov x2,#17
            add x0,x0, :lo12:.L_40c870
            mov x1,#1
            bl fwrite

            ldr w0,[x23,#1408]
            cbnz w0,.L_40b300

            mov w0,#2
            str w0,[x23,#1408]
.L_40b300:

            ldr w0,[x19,#516]
            bl close

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40ac84
.L_40b318:

.cfi_offset 21, -1360
.cfi_offset 22, -1352
            cbnz x0,.L_40b47c

            mov x0,x21
            str wzr,[x19,#1608]
            bl strlen

            ldr x1,[x19,#3048]
            add x1,x0,x1
            cmp x1,#1023
            b.hi .L_40b734

            ldr x1,[x19,#1584]
            add x0,x21,x0
            bl strcpy

            b .L_40ad5c
.L_40b348:

.cfi_restore 21
.cfi_restore 22
            adrp x0, stderr
            add x3,x19,#528
            ldr x2,[x23,#1400]
            adrp x1, .L_40c720
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c720
            bl fprintf

            b .L_40ac74
.L_40b368:

.cfi_offset 21, -1360
.cfi_offset 22, -1352
.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            ldr x2,[x24,#1400]
            mov x4,x28
            ldr x0,[x26,:lo12:stderr]
            mov x3,x20
            mov x1,x25
            bl fprintf

            mov w0,#1
            str w0,[x24,#1408]
            b .L_40b120
.L_40b38c:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            str xzr,[x19,#1632]
            cbnz w1,.L_40b088

            b .L_40ace4
.L_40b398:

            adrp x0, stdout
            ldr x0,[x0,:lo12:stdout]
            bl fileno

            str w0,[x19,#412]
.L_40b3a8:

            ldr w0,[x19,#1608]
            cbz w0,.L_40af38

            ldr w0,[x19,#1668]
            b .L_40af4c
.L_40b3b8:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1392
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_40b3d0:

.cfi_restore_state 
            ldr w0,[x19,#3040]
            cbnz w0,.L_40b878

            ldr w1,[x19,#1648]
            ldr w0,[x19,#1672]
            orr w0,w0,w1
            cbnz w0,.L_40ad5c

            ldr w0,[x19,#1668]
            cbnz w0,.L_40b880

            ldr w0,[x23,#1436]
            cbnz w0,.L_40b3b8
.L_40b3f8:

            adrp x0, stderr
            adrp x1, .L_40c788
            ldr x2,[x23,#1400]
            add x3,x19,#528
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c788
            bl fprintf
.L_40b414:

            ldr w0,[x23,#1408]
            cbnz w0,.L_40b3b8

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            b .L_40ac7c
.L_40b424:

.cfi_restore_state 
            bl get_method

            str w0,[x24,#340]
            tbz w0,#31,.L_40ad9c
.L_40b430:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp fp,lr,[sp]
            ldp x23,x24,[sp,#48]
            ldr w0,[x19,#516]
            ldp x19,x20,[sp,#16]
            add sp,sp,#1392
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            b close
.L_40b44c:

.cfi_def_cfa_offset 1392
.cfi_offset 19, -1376
.cfi_offset 20, -1368
.cfi_offset 21, -1360
.cfi_offset 22, -1352
.cfi_offset 23, -1344
.cfi_offset 24, -1336
.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
.cfi_offset 29, -1392
.cfi_offset 30, -1384
            ldr w19,[x22]
            cbnz w19,.L_40b524
.L_40b454:

            mov x0,x23
            bl closedir

            cbnz w0,.L_40b55c

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_40b468:

.cfi_restore 28
.cfi_restore 27
            mov x1,x21
            mov x0,x20
            bl reset_times

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            b .L_40ac84
.L_40b47c:

.cfi_restore_state 
            ldr w0,[x19,#1668]
            cbnz w0,.L_40b494

            ldr w0,[x19,#3040]
            ldr w1,[x23,#1436]
            orr w0,w0,w1
            cbnz w0,.L_40b3b8
.L_40b494:

            ldr x2,[x23,#1400]
            mov x4,x20
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            add x3,x19,#528
            ldp fp,lr,[sp]
            adrp x0, stderr
            ldp x19,x20,[sp,#16]
            adrp x1, .L_40c7b8
            ldp x23,x24,[sp,#48]
            add x1,x1, :lo12:.L_40c7b8
            ldr x0,[x0,:lo12:stderr]
            add sp,sp,#1392
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            b fprintf
.L_40b4c8:

.cfi_def_cfa_offset 1392
.cfi_offset 19, -1376
.cfi_offset 20, -1368
.cfi_offset 23, -1344
.cfi_offset 24, -1336
.cfi_offset 29, -1392
.cfi_offset 30, -1384
            adrp x23, heap+1568
            add x23,x23, :lo12:heap+1568
            ldr w0,[x23,#1436]
            cbnz w0,.L_40ac74

            adrp x0, stderr
            cmp w3,#2
            ldr x2,[x23,#1400]
            mov w6,#32
            ldr x0,[x0,:lo12:stderr]
            mov w3,w3
            sub x4,x3,#1
            mov w5,#115
            add x3,x19,#528
            csel w5,w6,w5,eq
            adrp x1, .L_40c758
            add x1,x1, :lo12:.L_40c758
            bl fprintf

            b .L_40ac74
.L_40b510:

.cfi_offset 21, -1360
.cfi_offset 22, -1352
            strb wzr,[x20]
            b .L_40ad5c
.L_40b518:

.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40b3a8
.L_40b524:

.cfi_restore_state 
            adrp x24, heap+1568
            add x24,x24, :lo12:heap+1568
            adrp x0, stderr
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x2,[x24,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            str w19,[x22]
            mov x0,x20
            bl perror

            mov w0,#1
            str w0,[x24,#1408]
            b .L_40b454
.L_40b55c:

            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
            ldr w23,[x22]
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x2,[x19,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            str w23,[x22]
            mov x0,x20
            bl perror

            mov w0,#1
            str w0,[x19,#1408]
            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40b468
.L_40b5a0:

.cfi_restore_state 
            ldr x3,[sp,#240]
            ldr x0,[sp,#368]
            cmp x3,x0
            b.ne .L_40b228

            strb w26,[x20,x28]
            bl shorten_name.constprop.0

            mov x1,x21
            mov x0,x20
            bl lstat

            cbz w0,.L_40ae10

            b .L_40ae8c
.L_40b5cc:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            mov x3,x0
            mov x2,#3
            adrp x0, .L_40c920
            mov x1,#1
            add x0,x0, :lo12:.L_40c920
            bl fwrite

            b .L_40b00c
.L_40b5e8:

            adrp x0, stderr
            add x2,x19,#528
            adrp x1, .L_40c8f8
            add x1,x1, :lo12:.L_40c8f8
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            b .L_40af74
.L_40b604:

            ldr w0,[x19,#1604]
            cbz w0,.L_40b648

            ldr x0,[x19,#1632]
            cbz x0,.L_40b648

            ldr x2,[x19,#3000]
            cmp x0,x2
            b.eq .L_40b648

            ldr w2,[x19,#1668]
            str x0,[x19,#3000]
            cmp w2,#1
            b.le .L_40b648

            adrp x0, stderr
            adrp x1, .L_40c900
            add x2,x23,#1440
            add x1,x1, :lo12:.L_40c900
            ldr x0,[x0,:lo12:stderr]
            bl fprintf
.L_40b648:

            add x20,x19,#2912
            add x0,x23,#1440
            mov x1,x20
            bl reset_times

            ldr w0,[x19,#412]
            ldr w1,[x19,#2928]
            and w1,w1,#4095
            bl fchmod

            cbz w0,.L_40b684

            ldr w0,[x23,#1436]
            cbz w0,.L_40b8d8

            ldr w0,[x23,#1408]
            cbnz w0,.L_40b684

            mov w0,#2
            str w0,[x23,#1408]
.L_40b684:

            add x1,x19,#2912
            ldr w0,[x19,#412]
            ldp w1,w2,[x1,#24]
            bl fchown

            str wzr,[x19,#408]
            add x0,x19,#528
            bl unlink

            cbz w0,.L_40b6bc

            ldr w0,[x23,#1436]
            cbz w0,.L_40b924

            ldr w0,[x23,#1408]
            cbnz w0,.L_40b6bc

            mov w0,#2
            str w0,[x23,#1408]
.L_40b6bc:

            ldr w0,[x19,#412]
            bl close

            cbnz w0,.L_40b9c8

            ldr w0,[x24,#340]
            cmn w0,#1
            b.ne .L_40afac

            ldr w0,[x19,#1660]
            cbnz w0,.L_40b3b8

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            add x0,x23,#1440
            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1392
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            b unlink
.L_40b6f8:

.cfi_restore_state 
            ldr w0,[x19,#516]
            ldr w1,[x24,#340]
            bl do_list

            b .L_40b430
.L_40b708:

.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            adrp x0, stderr
            ldr w21,[x22]
            ldr x2,[x23,#1400]
            adrp x1, .L_40bd98
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bd98
            bl fprintf

            str w21,[x22]
            mov x0,x20
            bl perror

            b .L_40b29c
.L_40b734:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            ldr w0,[x23,#1436]
            cbnz w0,.L_40b414

            adrp x0, stderr
            mov x3,x22
            ldr x2,[x23,#1400]
            adrp x1, .L_40c7e8
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c7e8
            bl fprintf

            b .L_40b414
.L_40b75c:

            bl __errno_location

            mov x19,x0
            adrp x3, stderr
            adrp x1, .L_40bd98
            ldr x2,[x23,#1400]
            add x1,x1, :lo12:.L_40bd98
            ldr x0,[x3,:lo12:stderr]
            ldr w21,[x19]
            bl fprintf

            str w21,[x19]
            mov x0,x20
            bl perror

            mov w0,#1
            str w0,[x23,#1408]
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            b .L_40ac84
.L_40b79c:

.cfi_restore_state 
            cbz x2,.L_40b000

            sub x1,x1,x4
            mov x3,#4636737291354636288
            sub x1,x2,x1
            fmov d29,x3
            scvtf d30,x2
            scvtf d31,x1
            fmul d31,d31,d29
            fdiv d0,d31,d30
            b .L_40b000
.L_40b7c4:

.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            adrp x0, stderr
            ldr w21,[x22]
            ldr x2,[x23,#1400]
            adrp x1, .L_40bd98
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bd98
            bl fprintf

            str w21,[x22]
            mov x0,x20
            bl perror

            str w28,[x23,#1408]
            ldr w0,[x19,#516]
            bl close

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40ac84
.L_40b808:

.cfi_restore_state 
            adrp x0, stderr
            ldr w21,[x22]
            ldr x2,[x23,#1400]
            adrp x1, .L_40bd98
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40bd98
            bl fprintf

            str w21,[x22]
            mov x0,x20
            bl perror

            str w28,[x23,#1408]
            ldr w0,[x19,#516]
            bl close

            ldr w0,[x19,#412]
            bl close

            mov x0,x20
            bl unlink

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40ac84
.L_40b85c:

.cfi_restore_state 
            ldr w0,[x23,#1436]
            cbz w0,.L_40b970
.L_40b864:

            ldr w0,[x23,#1408]
            cbnz w0,.L_40af20

            mov w0,#2
            str w0,[x23,#1408]
            b .L_40af20
.L_40b878:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            ldr w0,[x19,#1668]
            cbz w0,.L_40b3b8
.L_40b880:

            ldr w0,[x23,#1436]
            cbnz w0,.L_40b414

            b .L_40b3f8
.L_40b88c:

.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            mov x4,x21
            mov x3,x20
            adrp x1, .L_40c830
            add x1,x1, :lo12:.L_40c830
            bl fprintf

            b .L_40b29c
.L_40b8a4:

            ldr w0,[x19,#1668]
            ldr w1,[x23,#1436]
            orr w1,w0,w1
            cbz w1,.L_40b990

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40af4c
.L_40b8c0:

            ldr x0,[x20,:lo12:stderr]
            add x2,x23,#1440
            adrp x1, .L_40c928
            add x1,x1, :lo12:.L_40c928
            bl fprintf

            b .L_40b01c
.L_40b8d8:

            bl __errno_location

            mov x20,x0
            adrp x3, stderr
            adrp x1, .L_40bd98
            ldr x2,[x23,#1400]
            add x1,x1, :lo12:.L_40bd98
            ldr x0,[x3,:lo12:stderr]
            ldr w21,[x20]
            bl fprintf

            ldr w1,[x23,#1408]
            ldr w0,[x23,#1436]
            cbnz w1,.L_40b910

            mov w1,#2
            str w1,[x23,#1408]
.L_40b910:

            cbnz w0,.L_40b684

            str w21,[x20]
            add x0,x23,#1440
            bl perror

            b .L_40b684
.L_40b924:

            bl __errno_location

            mov x20,x0
            adrp x3, stderr
            adrp x1, .L_40bd98
            ldr x2,[x23,#1400]
            add x1,x1, :lo12:.L_40bd98
            ldr x0,[x3,:lo12:stderr]
            ldr w21,[x20]
            bl fprintf

            ldr w1,[x23,#1408]
            ldr w0,[x23,#1436]
            cbnz w1,.L_40b95c

            mov w1,#2
            str w1,[x23,#1408]
.L_40b95c:

            cbnz w0,.L_40b6bc

            str w21,[x20]
            add x0,x19,#528
            bl perror

            b .L_40b6bc
.L_40b970:

.cfi_offset 25, -1328
.cfi_offset 26, -1320
.cfi_offset 27, -1312
.cfi_offset 28, -1304
            adrp x0, stderr
            mov x3,x20
            ldr x2,[x23,#1400]
            adrp x1, .L_40c8b0
            ldr x0,[x0,:lo12:stderr]
            add x1,x1, :lo12:.L_40c8b0
            bl fprintf

            b .L_40b864
.L_40b990:

            adrp x0, stderr
            add x4,x23,#1440
            ldr x2,[x23,#1400]
            add x3,x19,#528
            ldr x0,[x0,:lo12:stderr]
            adrp x1, .L_40c8d8
            add x1,x1, :lo12:.L_40c8d8
            bl fprintf

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40b3a8
.L_40b9bc:

            mov x0,x20
            bl progerror

            b .L_40b468
.L_40b9c8:

            stp x25,x26,[sp,#64]
.cfi_offset 26, -1320
.cfi_offset 25, -1328
            stp x27,x28,[sp,#80]
.cfi_offset 28, -1304
.cfi_offset 27, -1312
            bl write_error
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size treat_file.part.0, . - treat_file.part.0
#-----------------------------------
.type treat_file, @function
#-----------------------------------
treat_file:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            mov x19,x0
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_40ba24

            ldrb w0,[x19,#1]
            cbnz w0,.L_40ba24

            adrp x19, static_ltree+864
            add x19,x19, :lo12:static_ltree+864
            ldr w20,[x19,#1660]
            bl treat_stdin

            str w20,[x19,#1660]
.L_40ba18:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40ba24:

.cfi_restore_state 
            adrp x20, static_ltree+864
            add x20,x20, :lo12:static_ltree+864
            stp x21,x22,[sp,#32]
.cfi_offset 22, -56
.cfi_offset 21, -64
            adrp x21, optind
            add x21,x21, :lo12:optind
            ldr x1,[x20,#1584]
            mov x0,x19
            str x1,[x21,#2928]
            bl strlen

            cmp x0,#1022
            b.ls .L_40ba8c
.L_40ba50:

            adrp x20, heap+1568
            add x20,x20, :lo12:heap+1568
            adrp x0, stderr
            mov x3,x19
            adrp x1, .L_40c7e8
            add x1,x1, :lo12:.L_40c7e8
            ldr x2,[x20,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            mov w0,#1
            str w0,[x20,#1408]
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40ba8c:

.cfi_restore_state 
            add x2,x0,#1
            mov x1,x19
            stp x23,x24,[sp,#48]
.cfi_offset 24, -40
.cfi_offset 23, -48
            add x23,x20,#528
            mov x0,x23
            bl memcpy

            bl __errno_location

            str wzr,[x0]
            mov x22,x0
            ldr w1,[x20,#1656]
            ldr w0,[x20,#1660]
            orr w0,w0,w1
            cbz w0,.L_40bcb4

            mov x0,x23
            add x1,x20,#2912
            bl stat
.L_40bacc:

            cbz w0,.L_40bb34

            ldr w0,[x20,#1604]
            ldr w23,[x22]
            cbz w0,.L_40bae4

            cmp w23,#2
            b.eq .L_40bb4c
.L_40bae4:

            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x2,[x19,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            str w23,[x22]
            add x0,x20,#528
.L_40bb0c:

            bl perror

            mov w0,#1
            str w0,[x19,#1408]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40bb2c:

.cfi_def_cfa_offset 96
.cfi_offset 19, -80
.cfi_offset 20, -72
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
.cfi_offset 24, -40
.cfi_offset 25, -32
.cfi_offset 26, -24
.cfi_offset 27, -16
.cfi_offset 28, -8
.cfi_offset 29, -96
.cfi_offset 30, -88
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_40bb34:

.cfi_restore 28
.cfi_restore 27
            mov x0,x19
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b treat_file.part.0
.L_40bb4c:

.cfi_restore_state 
            add x24,x20,#528
            mov x0,x24
            bl get_suffix

            cbnz x0,.L_40bc84

            mov x0,x24
            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            stp x27,x28,[sp,#80]
.cfi_offset 28, -8
.cfi_offset 27, -16
            bl strlen

            mov x26,x0
            ldr x0,[x20,#1584]
            adrp x1, .L_40c940
            add x1,x1, :lo12:.L_40c940
            add x28,x20,#2912
            mov w27,#0
            bl strcmp

            cmp w0,#0
            add x0,x21,#2928
            add x21,x21,#2936
            csel x21,x21,x0,eq
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bba0:

            ldr x23,[x21]
            mov x1,x19
            mov x0,x24
            bl stpcpy

            mov x25,x0
            mov x0,x23
            bl strlen

            mov x3,x0
            add x2,x3,#1
            add x3,x26,x3
            mov x1,x23
            mov x0,x25
            cmp x3,#1023
            b.hi .L_40bccc

            bl memcpy

            str wzr,[x22]
            mov x1,x28
            mov x0,x24
            ldr w3,[x20,#1656]
            ldr w2,[x20,#1660]
            orr w2,w2,w3
            cbz w2,.L_40bcc4

            bl stat
.L_40bbfc:

            cbz w0,.L_40bb2c

            ldr x25,[x20,#1584]
            mov x0,x23
            mov x1,x25
            bl strcmp

            cbnz w0,.L_40bc18

            ldr w27,[x22]
.L_40bc18:

            ldr x0,[x21,#8]!
            cbnz x0,.L_40bba0

            add x20,x20,#528
            mov x1,x19
            mov x0,x20
            bl stpcpy

            mov x1,x25
            adrp x19, heap+1568
            bl strcpy

            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x2,[x19,#1400]
            ldr x0,[x0,:lo12:stderr]
            str w27,[x22]
            bl fprintf

            str w27,[x22]
            mov x0,x20
            bl perror

            mov w0,#1
            str w0,[x19,#1408]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40ba18
.L_40bc84:

.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
.cfi_offset 24, -40
            adrp x19, heap+1568
            add x19,x19, :lo12:heap+1568
            adrp x0, stderr
            ldr w20,[x22]
            adrp x1, .L_40bd98
            add x1,x1, :lo12:.L_40bd98
            ldr x2,[x19,#1400]
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            str w20,[x22]
            mov x0,x24
            b .L_40bb0c
.L_40bcb4:

            mov x0,x23
            add x1,x20,#2912
            bl lstat

            b .L_40bacc
.L_40bcc4:

.cfi_offset 25, -32
.cfi_offset 26, -24
.cfi_offset 27, -16
.cfi_offset 28, -8
            bl lstat

            b .L_40bbfc
.L_40bccc:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40ba50
.cfi_endproc 

            nop
            nop
            nop
            nop
.size treat_file, . - treat_file
.align 4
#-----------------------------------
.globl rpmatch
.type rpmatch, @function
#-----------------------------------
rpmatch:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldrb w0,[x0]
            and w0,w0,#4294967263
            and w0,w0,#255
            cmp w0,#89
            b.eq .L_40bd00

            cmp w0,#78
            csetm w0,ne
            ret 
.L_40bd00:

            mov w0,#1
            ret 
.cfi_endproc 
.size rpmatch, . - rpmatch
.align 3
#-----------------------------------
.globl getopt_long
.type getopt_long, @function
#-----------------------------------
getopt_long:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov w5,#0
            b _getopt_internal
.cfi_endproc 
.size getopt_long, . - getopt_long
.align 4
#-----------------------------------
.globl getopt_long_only
.type getopt_long_only, @function
#-----------------------------------
getopt_long_only:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov w5,#1
            b _getopt_internal
.cfi_endproc 
.size getopt_long_only, . - getopt_long_only
#===================================
# end section .text
#===================================

#===================================
.section .fini ,"ax",@progbits
#===================================

.align 2
#-----------------------------------
.globl _fini
.hidden _fini
.type _fini, @function
#-----------------------------------
_fini:

            nop
            nop
            nop
            nop
            stp fp,lr,[sp,#-16]!
            mov fp,sp
.L_40bd24:

            ldp fp,lr,[sp],#16
            ret 
.size _fini, . - _fini
#===================================
# end section .fini
#===================================

#===================================
.section .rodata ,"a",@progbits
#===================================

.align 4
.L_40bd30:
#-----------------------------------
.globl _IO_stdin_used
.type _IO_stdin_used, @object
.size _IO_stdin_used, 4
#-----------------------------------
_IO_stdin_used:
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40bd38:
          .string "usage: %s [-%scdfhlLnN%stvV19] [-S suffix] [file ...]\n"
          .zero 1
.L_40bd70:
          .string "2002-09-30"
          .zero 5
.L_40bd80:
          .string "1.3.5"
          .zero 2
.L_40bd88:
          .string "%s %s\n(%s)\n"
          .zero 4
.L_40bd98:
          .string "%s: "
          .zero 3
.L_40bda0:
          .string "output in compress .Z format not supported\n"
          .zero 4
.L_40bdd0:
          .string "POSIXLY_CORRECT"
.L_40bde0:
          .string "%s: option `%s' is ambiguous\n"
          .zero 2
.L_40be00:
          .string "%s: option `--%s' doesn't allow an argument\n"
          .zero 3
.L_40be30:
          .string "%s: option `%c%s' doesn't allow an argument\n"
          .zero 3
.L_40be60:
          .string "%s: option `%s' requires an argument\n"
          .zero 2
.L_40be88:
          .string "%s: unrecognized option `--%s'\n"
.L_40bea8:
          .string "%s: unrecognized option `%c%s'\n"
.L_40bec8:
          .string "%s: illegal option -- %c\n"
          .zero 6
.L_40bee8:
          .string "%s: invalid option -- %c\n"
          .zero 6
.L_40bf08:
          .string "%s: option requires an argument -- %c\n"
          .zero 1
.L_40bf30:
          .string "%s: option `-W %s' is ambiguous\n"
          .zero 7
.L_40bf58:
          .string "%s: option `-W %s' doesn't allow an argument\n"
          .zero 2
.L_40bf88:
          .string "\n%s: %s: not a valid zip file\n"
          .zero 1
.L_40bfa8:
          .string "\n%s: %s: first entry not deflated or stored -- use unzip\n"
          .zero 6
.L_40bfe8:
          .string "\n%s: %s: encrypted file -- use unzip\n"
          .zero 2
.L_40c010:
          .string "\n%s: %s: %s\n"
          .zero 3
.L_40c020:
          .string "bad pack level"
          .zero 1
.L_40c030:
          .string "Bad table\n"
          .zero 5
.L_40c040:
          .string "name too short"
          .zero 1
.L_40c050:
          .string "can't recover suffix\n"
          .zero 2
.L_40c068:
          .byte 0x2e
          .byte 0x74
          .byte 0x61
          .byte 0x72
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c070:
          .byte 0x2e
          .byte 0x74
          .byte 0x67
          .byte 0x7a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c078:
          .string "."
          .zero 6
.L_40c080:
          .string "internal error in shorten_name"
          .zero 1
.L_40c0a0:
          .string "out of memory"
          .zero 2
.L_40c0b0:
          .string " \t"
          .zero 5
.L_40c0b8:
          .string "argc<=0"
.L_40c0c0:
          .ascii "%s: %s: warning:"
.L_40c0d0:
          .string " %s\n"
          .zero 3
.L_40c0d8:
          .string "\n%s: "
          .zero 2
.L_40c0e0:
          .string "%s: unexpected end of file\n"
          .zero 4
.L_40c100:
          .string "%s: %s: unknown method %d -- not supported\n"
          .zero 4
.L_40c130:
          .string "%s: %s is encrypted -- not supported\n"
          .zero 2
.L_40c158:
          .string "%s: %s is a a multi-part gzip file -- not supported\n"
          .zero 3
.L_40c190:
          .string "%s: %s has flags 0x%x -- not supported\n"
.L_40c1b8:
          .string "%s: %s: part number %u\n"
.L_40c1d0:
          .ascii "%s: %s: extra field of %u bytes ignored\n"
.L_40c1f8:
          .zero 1
          .zero 7
.L_40c200:
          .string "corrupted input -- file name too large"
          .zero 1
.L_40c228:
          .string "\n%s: %s: not in gzip format\n"
          .zero 3
.L_40c248:
          .string "\n%s: %s: decompression OK, trailing zero bytes ignored\n"
.L_40c280:
          .string "\n%s: %s: decompression OK, trailing garbage ignored\n"
          .zero 3
.L_40c2b8:
          .string " incomplete literal tree\n"
          .zero 6
.L_40c2d8:
          .string " incomplete distance tree\n"
          .zero 5
.L_40c2f8:
          .string "invalid compressed data -- Huffman code > 32 bits"
          .zero 6
.L_40c330:
          .string "too many leaves in Huffman tree"
.L_40c350:
          .string "invalid compressed data--length error"
          .zero 2
.L_40c378:
          .string "invalid compressed data--format violated"
          .zero 7
.L_40c3a8:
          .string "len %ld, siz %ld\n"
          .zero 6
.L_40c3c0:
          .string "invalid compressed data--length mismatch"
          .zero 7
.L_40c3f0:
          .string "internal error, invalid method"
          .zero 1
.L_40c410:
          .string "\n%s: %s: invalid compressed data--crc error\n"
          .zero 3
.L_40c440:
          .string "\n%s: %s: invalid compressed data--length error\n"
.L_40c470:
          .string "%s: %s has more than one entry--rest ignored\n"
          .zero 2
.L_40c4a0:
          .string "%s: %s has more than one entry -- unchanged\n"
          .zero 3
.L_40c4d0:
          .string "corrupt input."
          .zero 1
.L_40c4e0:
          .string "corrupt input. Use zcat to recover some data."
          .zero 2
.L_40c510:
          .string "\n%s: %s: warning, unknown flags 0x%x\n"
          .zero 2
.L_40c538:
          .string "\n%s: %s: compressed with %d bits, can only handle %d bits\n"
          .zero 5
.L_40c578:
          .string "%5.1f%%"
.L_40c580:
          .string "method  crc     date  time  "
          .zero 3
.L_40c5a0:
          .string "uncompressed"
          .zero 3
.L_40c5b0:
          .string "compressed"
          .zero 5
.L_40c5c0:
          .string "%*.*s %*.*s  ratio uncompressed_name\n"
          .zero 2
.L_40c5e8:
          .string "                            "
          .zero 3
.L_40c608:
          .string " (totals)"
          .zero 6
.L_40c618:
          .string "%5s %08lx %11s "
.L_40c628:
          .string "read from"
          .zero 6
.L_40c638:
          .string "de"
          .zero 5
.L_40c640:
          .string "written to"
          .zero 5
.L_40c650:
          .string "%s: compressed data not %s a terminal. Use -f to force %scompression.\n"
          .zero 1
.L_40c698:
          .string "For help, type: %s -h\n"
          .zero 1
.L_40c6b0:
          .ascii "stdi"
          .string "n"
          .zero 2
.L_40c6b8:
          .ascii "std"
          .string "out"
          .zero 1
.L_40c6c0:
          .string "standard input"
          .zero 1
.L_40c6d0:
          .string " OK\n"
          .zero 3
.L_40c6d8:
          .string "%s: %s/%s: pathname too long\n"
          .zero 2
.L_40c6f8:
          .string "%s: %s is a directory -- ignored\n"
          .zero 6
.L_40c720:
          .string "%s: %s is not a directory or a regular file - ignored\n"
          .zero 1
.L_40c758:
          .string "%s: %s has %lu other link%c -- unchanged\n"
          .zero 6
.L_40c788:
          .string "%s: %s: unknown suffix -- ignored\n"
          .zero 5
.L_40c7b0:
          .byte 0x2e
          .byte 0x74
          .byte 0x61
          .byte 0x7a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c7b8:
          .string "%s: %s already has %s suffix -- unchanged\n"
          .zero 5
.L_40c7e8:
          .string "%s: %s: file name too long\n"
          .zero 4
.L_40c808:
          .string "%s: %s: cannot %scompress onto itself\n"
          .zero 1
.L_40c830:
          .string "%s: %s and %s are the same file\n"
          .zero 7
.L_40c858:
          .string "%s: %s already exists;"
          .zero 1
.L_40c870:
          .string "\tnot overwritten\n"
          .zero 6
.L_40c888:
          .string " do you wish to overwrite (y or n)? "
          .zero 3
.L_40c8b0:
          .string "%s: %s: warning, name truncated\n"
          .zero 7
.L_40c8d8:
          .string "%s: %s compressed to %s\n"
          .zero 7
.L_40c8f8:
          .string "%s:\t"
          .zero 3
.L_40c900:
          .string "%s: time stamp restored\n"
          .zero 7
.L_40c920:
          .string " OK"
          .zero 4
.L_40c928:
          .ascii " -- replaced with %s"
          .zero 1
          .zero 3
.L_40c940:
          .byte 0x2e
          .byte 0x67
          .byte 0x7a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40c948:
          .string ".exe"
          .zero 3
.L_40c950:
          .string "GZIP"
          .zero 3
.L_40c958:
          .string "gun"
          .zero 4
.L_40c960:
          .string "cat"
          .zero 4
.L_40c968:
          .string "gzcat"
          .zero 2
.L_40c970:
          .string "%s: -b operand is not an integer\n"
          .zero 6
.L_40c998:
          .string "UTIME"
          .zero 2
.L_40c9a0:
          .string "DIRENT"
          .zero 1
.L_40c9a8:
          .string "Compilation options:\n%s %s "
          .zero 4
.L_40c9c8:
          .string "STDC_HEADERS "
          .zero 2
.L_40c9d8:
          .string "HAVE_UNISTD_H "
          .zero 1
.L_40c9e8:
          .string "HAVE_MEMORY_H "
          .zero 1
.L_40c9f8:
          .string "HAVE_STRING_H "
          .zero 1
.L_40ca08:
          .string "HAVE_LSTAT "
          .zero 4
.L_40ca18:
          .string "Written by Jean-loup Gailly."
          .zero 3
.L_40ca38:
          .string "%s: -Z not supported in this version\n"
          .zero 2
.L_40ca60:
          .string "ab:cdfhH?lLmMnNqrS:tvVZ123456789"
          .zero 7
.L_40ca88:
          .string "%s: option --ascii ignored on this system\n"
          .zero 5
.L_40cab8:
          .string "%s: incorrect suffix '%s'\n"
          .zero 5
.L_40cad8:
          .string "store"
          .zero 2
.L_40cae0:
          .string "compr"
          .zero 2
.L_40cae8:
          .string "pack "
          .zero 2
.L_40caf0:
          .string "lzh  "
          .zero 2
.L_40caf8:
          .ascii "defl"
          .string "a"
          .zero 2
.L_40cb00:
          .byte 0x2e
          .byte 0x7a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40cb08:
          .string "-gz"
          .zero 4
.L_40cb10:
          .string "-z"
          .zero 5
.L_40cb18:
          .string "_z"
          .zero 5
.L_40cb20:
          .string ".Z"
          .zero 5
.L_40cb28:
          .string " -c --stdout      write on standard output, keep original files unchanged"
          .zero 6
.L_40cb78:
          .string " -d --decompress  decompress"
          .zero 3
.L_40cb98:
          .string " -f --force       force overwrite of output file and compress links"
          .zero 4
.L_40cbe0:
          .string " -h --help        give this help"
          .zero 7
.L_40cc08:
          .string " -l --list        list compressed file contents"
.L_40cc38:
          .string " -L --license     display software license"
          .zero 5
.L_40cc68:
          .string " -n --no-name     do not save or restore the original name and time stamp"
          .zero 6
.L_40ccb8:
          .string " -N --name        save or restore the original name and time stamp"
          .zero 5
.L_40cd00:
          .string " -q --quiet       suppress all warnings"
.L_40cd28:
          .string " -r --recursive   operate recursively on directories"
          .zero 3
.L_40cd60:
          .string " -S .suf  --suffix .suf     use suffix .suf on compressed files"
.L_40cda0:
          .string " -t --test        test compressed file integrity"
          .zero 7
.L_40cdd8:
          .string " -v --verbose     verbose mode"
          .zero 1
.L_40cdf8:
          .string " -V --version     display version number"
          .zero 7
.L_40ce28:
          .ascii " -1 --fast        compress faste"
.L_40ce48:
          .string "r"
          .zero 6
.L_40ce50:
          .string " -9 --best        compress better"
          .zero 6
.L_40ce78:
          .string "    --rsyncable   Make rsync-friendly archive"
          .zero 2
.L_40cea8:
          .string " file...          files to (de)compress. If none given, use standard input."
          .zero 4
.L_40cef8:
          .string "Report bugs to <bug-gzip@gnu.org>."
          .zero 5
.L_40cf20:
          .string "ascii"
          .zero 2
.L_40cf28:
          .string "to-stdout"
          .zero 6
.L_40cf38:
          .string "decompress"
          .zero 5
.L_40cf48:
          .string "uncompress"
          .zero 5
.L_40cf58:
          .string "force"
          .zero 2
.L_40cf60:
          .string "help"
          .zero 3
.L_40cf68:
          .string "list"
          .zero 3
.L_40cf70:
          .string "license"
.L_40cf78:
          .string "no-name"
.L_40cf80:
          .string "name"
          .zero 3
.L_40cf88:
          .string "quiet"
          .zero 2
.L_40cf90:
          .string "silent"
          .zero 1
.L_40cf98:
          .string "recursive"
          .zero 6
.L_40cfa8:
          .string "suffix"
          .zero 1
.L_40cfb0:
          .string "test"
          .zero 3
.L_40cfb8:
          .string "no-time"
.L_40cfc0:
          .string "verbose"
.L_40cfc8:
          .string "version"
.L_40cfd0:
          .string "fast"
          .zero 3
.L_40cfd8:
          .string "best"
          .zero 3
.L_40cfe0:
          .string "lzw"
          .zero 4
.L_40cfe8:
          .string "bits"
          .zero 3
.L_40cff0:
          .string "rsyncable"
          .zero 6
.L_40d000:
          .string "Copyright 2002 Free Software Foundation"
.L_40d028:
          .string "Copyright 1992-1993 Jean-loup Gailly"
          .zero 3
.L_40d050:
          .string "This program comes with ABSOLUTELY NO WARRANTY."
.L_40d080:
          .string "You may redistribute copies of this program"
          .zero 4
.L_40d0b0:
          .string "under the terms of the GNU General Public License."
          .zero 5
.L_40d0e8:
          .string "For more information about these matters, see the file named COPYING."
          .zero 2
.L_40d130:
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_4019f0-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a14-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a14-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a94-.L_401998)/4
          .short (.L_401c18-.L_401998)/4
          .short (.L_401c20-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401b68-.L_401998)/4
          .short (.L_401b74-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401b8c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401c04-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a9c-.L_401998)/4
          .short (.L_401aa8-.L_401998)/4
          .short (.L_401a58-.L_401998)/4
          .short (.L_401a64-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a70-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a14-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401a80-.L_401998)/4
          .short (.L_401b4c-.L_401998)/4
          .short (.L_401b58-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401b08-.L_401998)/4
          .short (.L_401b18-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401b24-.L_401998)/4
          .short (.L_40197c-.L_401998)/4
          .short (.L_401b38-.L_401998)/4
          .zero 4
#-----------------------------------
.type configuration_table, @object
.size configuration_table, 80
#-----------------------------------
configuration_table:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x2
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x20
          .byte 0x0
          .byte 0x2
          .byte 0x1
          .byte 0x2
          .byte 0x1
          .byte 0x0
          .byte 0x10
#-----------------------------------
.type bl_order, @object
.size bl_order, 19
#-----------------------------------
bl_order:
          .byte 0x10
          .byte 0x11
          .byte 0x12
          .byte 0x0
          .byte 0x8
          .byte 0x7
          .byte 0x9
          .byte 0x6
          .byte 0xa
          .byte 0x5
          .byte 0xb
          .byte 0x4
          .byte 0xc
          .byte 0x3
          .byte 0xd
          .byte 0x2
          .byte 0xe
          .byte 0x1
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type border, @object
.size border, 76
#-----------------------------------
border:
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x12
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type methods.3, @object
.size methods.3, 72
#-----------------------------------
methods.3:
          .quad .L_40cad8
          .quad .L_40cae0
          .quad .L_40cae8
          .quad .L_40caf0
          .quad .L_40c1f8
          .quad .L_40c1f8
          .quad .L_40c1f8
          .quad .L_40c1f8
          .quad .L_40caf8
          .zero 8
.L_40d2d0:
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d2e0:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d2f0:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_40d300:
          .byte 0xfe
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xfe
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d310:
          .byte 0xf0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xf0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d320:
          .byte 0xfc
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xfc
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d330:
          .byte 0xfa
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xfa
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d340:
          .byte 0xf8
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xf8
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d350:
          .byte 0xf6
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xf6
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d360:
          .byte 0xf4
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xf4
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d370:
          .byte 0xf2
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xf2
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_40d380:
          .byte 0xf
          .byte 0xe
          .byte 0xd
          .byte 0xc
          .byte 0xb
          .byte 0xa
          .byte 0x9
          .byte 0x8
          .byte 0x7
          .byte 0x6
          .byte 0x5
          .byte 0x4
          .byte 0x3
          .byte 0x2
          .byte 0x1
          .byte 0x0
#===================================
# end section .rodata
#===================================

#===================================
.section .init_array ,"wa"
#===================================

.align 3
#-----------------------------------
.type __frame_dummy_init_array_entry, @object
#-----------------------------------
__frame_dummy_init_array_entry:
          .quad frame_dummy
#===================================
# end section .init_array
#===================================

#===================================
.section .fini_array ,"wa"
#===================================

.align 3
#-----------------------------------
.type __do_global_dtors_aux_fini_array_entry, @object
#-----------------------------------
__do_global_dtors_aux_fini_array_entry:
          .quad __do_global_dtors_aux
#-----------------------------------
.type _DYNAMIC, @object
#-----------------------------------
_DYNAMIC:
#===================================
# end section .fini_array
#===================================

#===================================
.data
#===================================

.align 4
#-----------------------------------
.weak data_start
.type data_start, @notype
#-----------------------------------
data_start:
#-----------------------------------
.globl __data_start
.type __data_start, @notype
#-----------------------------------
__data_start:
          .zero 8
.L_4201a8:
#-----------------------------------
.globl __dso_handle
.hidden __dso_handle
.type __dso_handle, @object
#-----------------------------------
__dso_handle:
          .zero 8
#-----------------------------------
.globl optind
.type optind, @object
.size optind, 4
#-----------------------------------
optind:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl window_size
.type window_size, @object
.size window_size, 8
#-----------------------------------
window_size:
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type license_msg, @object
.size license_msg, 56
#-----------------------------------
license_msg:
          .quad .L_40d000
          .quad .L_40d028
          .quad .L_40d050
          .quad .L_40d080
          .quad .L_40d0b0
          .quad .L_40d0e8
          .zero 16
#-----------------------------------
.type extra_lbits, @object
.size extra_lbits, 116
#-----------------------------------
extra_lbits:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type extra_dbits, @object
.size extra_dbits, 120
#-----------------------------------
extra_dbits:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl opterr
.type opterr, @object
.size opterr, 4
#-----------------------------------
opterr:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl optopt
.type optopt, @object
.size optopt, 4
#-----------------------------------
optopt:
          .byte 0x3f
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl level
.type level, @object
.size level, 4
#-----------------------------------
level:
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl method
.type method, @object
.size method, 4
#-----------------------------------
method:
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type crc.0, @object
.size crc.0, 8
#-----------------------------------
crc.0:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl crc_32_tab
.type crc_32_tab, @object
.size crc_32_tab, 2048
#-----------------------------------
crc_32_tab:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x96
          .byte 0x30
          .byte 0x7
          .byte 0x77
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2c
          .byte 0x61
          .byte 0xe
          .byte 0xee
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xba
          .byte 0x51
          .byte 0x9
          .byte 0x99
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x19
          .byte 0xc4
          .byte 0x6d
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8f
          .byte 0xf4
          .byte 0x6a
          .byte 0x70
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x35
          .byte 0xa5
          .byte 0x63
          .byte 0xe9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa3
          .byte 0x95
          .byte 0x64
          .byte 0x9e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x32
          .byte 0x88
          .byte 0xdb
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa4
          .byte 0xb8
          .byte 0xdc
          .byte 0x79
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0xe9
          .byte 0xd5
          .byte 0xe0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x88
          .byte 0xd9
          .byte 0xd2
          .byte 0x97
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2b
          .byte 0x4c
          .byte 0xb6
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xbd
          .byte 0x7c
          .byte 0xb1
          .byte 0x7e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x2d
          .byte 0xb8
          .byte 0xe7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x91
          .byte 0x1d
          .byte 0xbf
          .byte 0x90
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x64
          .byte 0x10
          .byte 0xb7
          .byte 0x1d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf2
          .byte 0x20
          .byte 0xb0
          .byte 0x6a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x48
          .byte 0x71
          .byte 0xb9
          .byte 0xf3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xde
          .byte 0x41
          .byte 0xbe
          .byte 0x84
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7d
          .byte 0xd4
          .byte 0xda
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xeb
          .byte 0xe4
          .byte 0xdd
          .byte 0x6d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x51
          .byte 0xb5
          .byte 0xd4
          .byte 0xf4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc7
          .byte 0x85
          .byte 0xd3
          .byte 0x83
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x56
          .byte 0x98
          .byte 0x6c
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc0
          .byte 0xa8
          .byte 0x6b
          .byte 0x64
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7a
          .byte 0xf9
          .byte 0x62
          .byte 0xfd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xec
          .byte 0xc9
          .byte 0x65
          .byte 0x8a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4f
          .byte 0x5c
          .byte 0x1
          .byte 0x14
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd9
          .byte 0x6c
          .byte 0x6
          .byte 0x63
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x63
          .byte 0x3d
          .byte 0xf
          .byte 0xfa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf5
          .byte 0xd
          .byte 0x8
          .byte 0x8d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc8
          .byte 0x20
          .byte 0x6e
          .byte 0x3b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5e
          .byte 0x10
          .byte 0x69
          .byte 0x4c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe4
          .byte 0x41
          .byte 0x60
          .byte 0xd5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x72
          .byte 0x71
          .byte 0x67
          .byte 0xa2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd1
          .byte 0xe4
          .byte 0x3
          .byte 0x3c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x47
          .byte 0xd4
          .byte 0x4
          .byte 0x4b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfd
          .byte 0x85
          .byte 0xd
          .byte 0xd2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6b
          .byte 0xb5
          .byte 0xa
          .byte 0xa5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfa
          .byte 0xa8
          .byte 0xb5
          .byte 0x35
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6c
          .byte 0x98
          .byte 0xb2
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd6
          .byte 0xc9
          .byte 0xbb
          .byte 0xdb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0xf9
          .byte 0xbc
          .byte 0xac
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe3
          .byte 0x6c
          .byte 0xd8
          .byte 0x32
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x75
          .byte 0x5c
          .byte 0xdf
          .byte 0x45
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xcf
          .byte 0xd
          .byte 0xd6
          .byte 0xdc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x59
          .byte 0x3d
          .byte 0xd1
          .byte 0xab
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xac
          .byte 0x30
          .byte 0xd9
          .byte 0x26
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3a
          .byte 0x0
          .byte 0xde
          .byte 0x51
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x51
          .byte 0xd7
          .byte 0xc8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x16
          .byte 0x61
          .byte 0xd0
          .byte 0xbf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb5
          .byte 0xf4
          .byte 0xb4
          .byte 0x21
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x23
          .byte 0xc4
          .byte 0xb3
          .byte 0x56
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x99
          .byte 0x95
          .byte 0xba
          .byte 0xcf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0xa5
          .byte 0xbd
          .byte 0xb8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9e
          .byte 0xb8
          .byte 0x2
          .byte 0x28
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x88
          .byte 0x5
          .byte 0x5f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb2
          .byte 0xd9
          .byte 0xc
          .byte 0xc6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x24
          .byte 0xe9
          .byte 0xb
          .byte 0xb1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x87
          .byte 0x7c
          .byte 0x6f
          .byte 0x2f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x4c
          .byte 0x68
          .byte 0x58
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xab
          .byte 0x1d
          .byte 0x61
          .byte 0xc1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3d
          .byte 0x2d
          .byte 0x66
          .byte 0xb6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x90
          .byte 0x41
          .byte 0xdc
          .byte 0x76
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x71
          .byte 0xdb
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xbc
          .byte 0x20
          .byte 0xd2
          .byte 0x98
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2a
          .byte 0x10
          .byte 0xd5
          .byte 0xef
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x89
          .byte 0x85
          .byte 0xb1
          .byte 0x71
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1f
          .byte 0xb5
          .byte 0xb6
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa5
          .byte 0xe4
          .byte 0xbf
          .byte 0x9f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x33
          .byte 0xd4
          .byte 0xb8
          .byte 0xe8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa2
          .byte 0xc9
          .byte 0x7
          .byte 0x78
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x34
          .byte 0xf9
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8e
          .byte 0xa8
          .byte 0x9
          .byte 0x96
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x18
          .byte 0x98
          .byte 0xe
          .byte 0xe1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xbb
          .byte 0xd
          .byte 0x6a
          .byte 0x7f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2d
          .byte 0x3d
          .byte 0x6d
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x97
          .byte 0x6c
          .byte 0x64
          .byte 0x91
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x5c
          .byte 0x63
          .byte 0xe6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf4
          .byte 0x51
          .byte 0x6b
          .byte 0x6b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x62
          .byte 0x61
          .byte 0x6c
          .byte 0x1c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd8
          .byte 0x30
          .byte 0x65
          .byte 0x85
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4e
          .byte 0x0
          .byte 0x62
          .byte 0xf2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xed
          .byte 0x95
          .byte 0x6
          .byte 0x6c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7b
          .byte 0xa5
          .byte 0x1
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc1
          .byte 0xf4
          .byte 0x8
          .byte 0x82
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x57
          .byte 0xc4
          .byte 0xf
          .byte 0xf5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc6
          .byte 0xd9
          .byte 0xb0
          .byte 0x65
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x50
          .byte 0xe9
          .byte 0xb7
          .byte 0x12
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xea
          .byte 0xb8
          .byte 0xbe
          .byte 0x8b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7c
          .byte 0x88
          .byte 0xb9
          .byte 0xfc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xdf
          .byte 0x1d
          .byte 0xdd
          .byte 0x62
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x49
          .byte 0x2d
          .byte 0xda
          .byte 0x15
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf3
          .byte 0x7c
          .byte 0xd3
          .byte 0x8c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x65
          .byte 0x4c
          .byte 0xd4
          .byte 0xfb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x58
          .byte 0x61
          .byte 0xb2
          .byte 0x4d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xce
          .byte 0x51
          .byte 0xb5
          .byte 0x3a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x74
          .byte 0x0
          .byte 0xbc
          .byte 0xa3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe2
          .byte 0x30
          .byte 0xbb
          .byte 0xd4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x41
          .byte 0xa5
          .byte 0xdf
          .byte 0x4a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd7
          .byte 0x95
          .byte 0xd8
          .byte 0x3d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6d
          .byte 0xc4
          .byte 0xd1
          .byte 0xa4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfb
          .byte 0xf4
          .byte 0xd6
          .byte 0xd3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6a
          .byte 0xe9
          .byte 0x69
          .byte 0x43
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfc
          .byte 0xd9
          .byte 0x6e
          .byte 0x34
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x46
          .byte 0x88
          .byte 0x67
          .byte 0xad
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd0
          .byte 0xb8
          .byte 0x60
          .byte 0xda
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x73
          .byte 0x2d
          .byte 0x4
          .byte 0x44
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe5
          .byte 0x1d
          .byte 0x3
          .byte 0x33
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5f
          .byte 0x4c
          .byte 0xa
          .byte 0xaa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc9
          .byte 0x7c
          .byte 0xd
          .byte 0xdd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3c
          .byte 0x71
          .byte 0x5
          .byte 0x50
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xaa
          .byte 0x41
          .byte 0x2
          .byte 0x27
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x10
          .byte 0xb
          .byte 0xbe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x86
          .byte 0x20
          .byte 0xc
          .byte 0xc9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x25
          .byte 0xb5
          .byte 0x68
          .byte 0x57
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb3
          .byte 0x85
          .byte 0x6f
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0xd4
          .byte 0x66
          .byte 0xb9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9f
          .byte 0xe4
          .byte 0x61
          .byte 0xce
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0xf9
          .byte 0xde
          .byte 0x5e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x98
          .byte 0xc9
          .byte 0xd9
          .byte 0x29
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x22
          .byte 0x98
          .byte 0xd0
          .byte 0xb0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb4
          .byte 0xa8
          .byte 0xd7
          .byte 0xc7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x17
          .byte 0x3d
          .byte 0xb3
          .byte 0x59
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x81
          .byte 0xd
          .byte 0xb4
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3b
          .byte 0x5c
          .byte 0xbd
          .byte 0xb7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xad
          .byte 0x6c
          .byte 0xba
          .byte 0xc0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x83
          .byte 0xb8
          .byte 0xed
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb6
          .byte 0xb3
          .byte 0xbf
          .byte 0x9a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0xe2
          .byte 0xb6
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9a
          .byte 0xd2
          .byte 0xb1
          .byte 0x74
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x39
          .byte 0x47
          .byte 0xd5
          .byte 0xea
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xaf
          .byte 0x77
          .byte 0xd2
          .byte 0x9d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x15
          .byte 0x26
          .byte 0xdb
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x83
          .byte 0x16
          .byte 0xdc
          .byte 0x73
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x12
          .byte 0xb
          .byte 0x63
          .byte 0xe3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x84
          .byte 0x3b
          .byte 0x64
          .byte 0x94
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3e
          .byte 0x6a
          .byte 0x6d
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa8
          .byte 0x5a
          .byte 0x6a
          .byte 0x7a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb
          .byte 0xcf
          .byte 0xe
          .byte 0xe4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9d
          .byte 0xff
          .byte 0x9
          .byte 0x93
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x27
          .byte 0xae
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb1
          .byte 0x9e
          .byte 0x7
          .byte 0x7d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x44
          .byte 0x93
          .byte 0xf
          .byte 0xf0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd2
          .byte 0xa3
          .byte 0x8
          .byte 0x87
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x68
          .byte 0xf2
          .byte 0x1
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xc2
          .byte 0x6
          .byte 0x69
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5d
          .byte 0x57
          .byte 0x62
          .byte 0xf7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xcb
          .byte 0x67
          .byte 0x65
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x71
          .byte 0x36
          .byte 0x6c
          .byte 0x19
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe7
          .byte 0x6
          .byte 0x6b
          .byte 0x6e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x76
          .byte 0x1b
          .byte 0xd4
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0x2b
          .byte 0xd3
          .byte 0x89
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5a
          .byte 0x7a
          .byte 0xda
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xcc
          .byte 0x4a
          .byte 0xdd
          .byte 0x67
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6f
          .byte 0xdf
          .byte 0xb9
          .byte 0xf9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf9
          .byte 0xef
          .byte 0xbe
          .byte 0x8e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x43
          .byte 0xbe
          .byte 0xb7
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd5
          .byte 0x8e
          .byte 0xb0
          .byte 0x60
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe8
          .byte 0xa3
          .byte 0xd6
          .byte 0xd6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7e
          .byte 0x93
          .byte 0xd1
          .byte 0xa1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc4
          .byte 0xc2
          .byte 0xd8
          .byte 0x38
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x52
          .byte 0xf2
          .byte 0xdf
          .byte 0x4f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf1
          .byte 0x67
          .byte 0xbb
          .byte 0xd1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x67
          .byte 0x57
          .byte 0xbc
          .byte 0xa6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xdd
          .byte 0x6
          .byte 0xb5
          .byte 0x3f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4b
          .byte 0x36
          .byte 0xb2
          .byte 0x48
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xda
          .byte 0x2b
          .byte 0xd
          .byte 0xd8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4c
          .byte 0x1b
          .byte 0xa
          .byte 0xaf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf6
          .byte 0x4a
          .byte 0x3
          .byte 0x36
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x60
          .byte 0x7a
          .byte 0x4
          .byte 0x41
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc3
          .byte 0xef
          .byte 0x60
          .byte 0xdf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x55
          .byte 0xdf
          .byte 0x67
          .byte 0xa8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xef
          .byte 0x8e
          .byte 0x6e
          .byte 0x31
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x79
          .byte 0xbe
          .byte 0x69
          .byte 0x46
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8c
          .byte 0xb3
          .byte 0x61
          .byte 0xcb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1a
          .byte 0x83
          .byte 0x66
          .byte 0xbc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa0
          .byte 0xd2
          .byte 0x6f
          .byte 0x25
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x36
          .byte 0xe2
          .byte 0x68
          .byte 0x52
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x95
          .byte 0x77
          .byte 0xc
          .byte 0xcc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x47
          .byte 0xb
          .byte 0xbb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb9
          .byte 0x16
          .byte 0x2
          .byte 0x22
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2f
          .byte 0x26
          .byte 0x5
          .byte 0x55
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xbe
          .byte 0x3b
          .byte 0xba
          .byte 0xc5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x28
          .byte 0xb
          .byte 0xbd
          .byte 0xb2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x92
          .byte 0x5a
          .byte 0xb4
          .byte 0x2b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x6a
          .byte 0xb3
          .byte 0x5c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa7
          .byte 0xff
          .byte 0xd7
          .byte 0xc2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x31
          .byte 0xcf
          .byte 0xd0
          .byte 0xb5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8b
          .byte 0x9e
          .byte 0xd9
          .byte 0x2c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1d
          .byte 0xae
          .byte 0xde
          .byte 0x5b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb0
          .byte 0xc2
          .byte 0x64
          .byte 0x9b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x26
          .byte 0xf2
          .byte 0x63
          .byte 0xec
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9c
          .byte 0xa3
          .byte 0x6a
          .byte 0x75
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x93
          .byte 0x6d
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa9
          .byte 0x6
          .byte 0x9
          .byte 0x9c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3f
          .byte 0x36
          .byte 0xe
          .byte 0xeb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x85
          .byte 0x67
          .byte 0x7
          .byte 0x72
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x57
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x82
          .byte 0x4a
          .byte 0xbf
          .byte 0x95
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x14
          .byte 0x7a
          .byte 0xb8
          .byte 0xe2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xae
          .byte 0x2b
          .byte 0xb1
          .byte 0x7b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x38
          .byte 0x1b
          .byte 0xb6
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9b
          .byte 0x8e
          .byte 0xd2
          .byte 0x92
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0xbe
          .byte 0xd5
          .byte 0xe5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb7
          .byte 0xef
          .byte 0xdc
          .byte 0x7c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x21
          .byte 0xdf
          .byte 0xdb
          .byte 0xb
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd4
          .byte 0xd2
          .byte 0xd3
          .byte 0x86
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0xe2
          .byte 0xd4
          .byte 0xf1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf8
          .byte 0xb3
          .byte 0xdd
          .byte 0x68
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6e
          .byte 0x83
          .byte 0xda
          .byte 0x1f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xcd
          .byte 0x16
          .byte 0xbe
          .byte 0x81
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5b
          .byte 0x26
          .byte 0xb9
          .byte 0xf6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe1
          .byte 0x77
          .byte 0xb0
          .byte 0x6f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x77
          .byte 0x47
          .byte 0xb7
          .byte 0x18
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe6
          .byte 0x5a
          .byte 0x8
          .byte 0x88
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x70
          .byte 0x6a
          .byte 0xf
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xca
          .byte 0x3b
          .byte 0x6
          .byte 0x66
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5c
          .byte 0xb
          .byte 0x1
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0x9e
          .byte 0x65
          .byte 0x8f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x69
          .byte 0xae
          .byte 0x62
          .byte 0xf8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd3
          .byte 0xff
          .byte 0x6b
          .byte 0x61
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x45
          .byte 0xcf
          .byte 0x6c
          .byte 0x16
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x78
          .byte 0xe2
          .byte 0xa
          .byte 0xa0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xee
          .byte 0xd2
          .byte 0xd
          .byte 0xd7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x54
          .byte 0x83
          .byte 0x4
          .byte 0x4e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc2
          .byte 0xb3
          .byte 0x3
          .byte 0x39
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x61
          .byte 0x26
          .byte 0x67
          .byte 0xa7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf7
          .byte 0x16
          .byte 0x60
          .byte 0xd0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4d
          .byte 0x47
          .byte 0x69
          .byte 0x49
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xdb
          .byte 0x77
          .byte 0x6e
          .byte 0x3e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4a
          .byte 0x6a
          .byte 0xd1
          .byte 0xae
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xdc
          .byte 0x5a
          .byte 0xd6
          .byte 0xd9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x66
          .byte 0xb
          .byte 0xdf
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0x3b
          .byte 0xd8
          .byte 0x37
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x53
          .byte 0xae
          .byte 0xbc
          .byte 0xa9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc5
          .byte 0x9e
          .byte 0xbb
          .byte 0xde
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7f
          .byte 0xcf
          .byte 0xb2
          .byte 0x47
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe9
          .byte 0xff
          .byte 0xb5
          .byte 0x30
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1c
          .byte 0xf2
          .byte 0xbd
          .byte 0xbd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8a
          .byte 0xc2
          .byte 0xba
          .byte 0xca
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x30
          .byte 0x93
          .byte 0xb3
          .byte 0x53
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa6
          .byte 0xa3
          .byte 0xb4
          .byte 0x24
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x36
          .byte 0xd0
          .byte 0xba
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x93
          .byte 0x6
          .byte 0xd7
          .byte 0xcd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x29
          .byte 0x57
          .byte 0xde
          .byte 0x54
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xbf
          .byte 0x67
          .byte 0xd9
          .byte 0x23
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2e
          .byte 0x7a
          .byte 0x66
          .byte 0xb3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xb8
          .byte 0x4a
          .byte 0x61
          .byte 0xc4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x1b
          .byte 0x68
          .byte 0x5d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x94
          .byte 0x2b
          .byte 0x6f
          .byte 0x2a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x37
          .byte 0xbe
          .byte 0xb
          .byte 0xb4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa1
          .byte 0x8e
          .byte 0xc
          .byte 0xc3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1b
          .byte 0xdf
          .byte 0x5
          .byte 0x5a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8d
          .byte 0xef
          .byte 0x2
          .byte 0x2d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type known_suffixes.5, @object
.size known_suffixes.5, 72
#-----------------------------------
known_suffixes.5:
          .zero 8
          .quad .L_40c940
          .quad .L_40cb00
          .quad .L_40c7b0
          .quad .L_40c070
          .quad .L_40cb08
          .quad .L_40cb10
          .quad .L_40cb18
          .zero 8
#-----------------------------------
.type l_desc, @object
.size l_desc, 40
#-----------------------------------
l_desc:
          .quad dyn_ltree
          .quad static_ltree
          .quad extra_lbits
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type d_desc, @object
.size d_desc, 40
#-----------------------------------
d_desc:
          .quad dyn_dtree
          .quad static_dtree
          .quad extra_dbits
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type bl_desc, @object
.size bl_desc, 40
#-----------------------------------
bl_desc:
          .quad bl_tree
          .zero 8
          .quad extra_blbits
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl work
.type work, @object
.size work, 8
#-----------------------------------
work:
          .quad zip
#-----------------------------------
.globl no_time
.type no_time, @object
.size no_time, 4
#-----------------------------------
no_time:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
#-----------------------------------
.globl no_name
.type no_name, @object
.size no_name, 4
#-----------------------------------
no_name:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
#-----------------------------------
.globl mask_bits
.type mask_bits, @object
.size mask_bits, 34
#-----------------------------------
mask_bits:
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x1f
          .byte 0x0
          .byte 0x3f
          .byte 0x0
          .byte 0x7f
          .byte 0x0
          .byte 0xff
          .byte 0x0
          .byte 0xff
          .byte 0x1
          .byte 0xff
          .byte 0x3
          .byte 0xff
          .byte 0x7
          .byte 0xff
          .byte 0xf
          .byte 0xff
          .byte 0x1f
          .byte 0xff
          .byte 0x3f
          .byte 0xff
          .byte 0x7f
          .byte 0xff
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type cplext, @object
.size cplext, 62
#-----------------------------------
cplext:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x63
          .byte 0x0
          .byte 0x63
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type cplens, @object
.size cplens, 62
#-----------------------------------
cplens:
          .byte 0x3
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x17
          .byte 0x0
          .byte 0x1b
          .byte 0x0
          .byte 0x1f
          .byte 0x0
          .byte 0x23
          .byte 0x0
          .byte 0x2b
          .byte 0x0
          .byte 0x33
          .byte 0x0
          .byte 0x3b
          .byte 0x0
          .byte 0x43
          .byte 0x0
          .byte 0x53
          .byte 0x0
          .byte 0x63
          .byte 0x0
          .byte 0x73
          .byte 0x0
          .byte 0x83
          .byte 0x0
          .byte 0xa3
          .byte 0x0
          .byte 0xc3
          .byte 0x0
          .byte 0xe3
          .byte 0x0
          .byte 0x2
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type cpdext, @object
.size cpdext, 60
#-----------------------------------
cpdext:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0xb
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type cpdist, @object
.size cpdist, 60
#-----------------------------------
cpdist:
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x19
          .byte 0x0
          .byte 0x21
          .byte 0x0
          .byte 0x31
          .byte 0x0
          .byte 0x41
          .byte 0x0
          .byte 0x61
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0xc1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x81
          .byte 0x1
          .byte 0x1
          .byte 0x2
          .byte 0x1
          .byte 0x3
          .byte 0x1
          .byte 0x4
          .byte 0x1
          .byte 0x6
          .byte 0x1
          .byte 0x8
          .byte 0x1
          .byte 0xc
          .byte 0x1
          .byte 0x10
          .byte 0x1
          .byte 0x18
          .byte 0x1
          .byte 0x20
          .byte 0x1
          .byte 0x30
          .byte 0x1
          .byte 0x40
          .byte 0x1
          .byte 0x60
#-----------------------------------
.globl lbits
.type lbits, @object
.size lbits, 4
#-----------------------------------
lbits:
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl dbits
.type dbits, @object
.size dbits, 4
#-----------------------------------
dbits:
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl maxbits
.type maxbits, @object
.size maxbits, 4
#-----------------------------------
maxbits:
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl block_mode
.type block_mode, @object
.size block_mode, 4
#-----------------------------------
block_mode:
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type first_time.4, @object
.size first_time.4, 4
#-----------------------------------
first_time.4:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type suffixes.6, @object
.size suffixes.6, 48
#-----------------------------------
suffixes.6:
          .zero 8
          .quad .L_40c940
          .quad .L_40cb00
          .quad .L_40cb10
          .quad .L_40cb20
          .zero 8
#-----------------------------------
.type help_msg.7, @object
.size help_msg.7, 160
#-----------------------------------
help_msg.7:
          .quad .L_40cb28
          .quad .L_40cb78
          .quad .L_40cb98
          .quad .L_40cbe0
          .quad .L_40cc08
          .quad .L_40cc38
          .quad .L_40cc68
          .quad .L_40ccb8
          .quad .L_40cd00
          .quad .L_40cd28
          .quad .L_40cd60
          .quad .L_40cda0
          .quad .L_40cdd8
          .quad .L_40cdf8
          .quad .L_40ce28
          .quad .L_40ce50
          .quad .L_40ce78
          .quad .L_40cea8
          .quad .L_40cef8
          .zero 8
#-----------------------------------
.globl longopts
.type longopts, @object
.size longopts, 800
#-----------------------------------
longopts:
          .quad .L_40cf20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x61
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf28
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x63
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40c6b8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x63
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf38
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x64
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf48
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x64
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf58
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x66
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf60
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x68
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf68
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf70
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf78
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf88
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x71
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf90
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x71
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cf98
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x72
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfa8
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x53
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfb0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x74
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfb8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x54
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfc0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x76
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfc8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x56
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfd0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x31
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfd8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x39
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfe0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cfe8
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x62
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_40cff0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x52
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type extra_blbits, @object
.size extra_blbits, 76
#-----------------------------------
extra_blbits:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl _edata
.type _edata, @notype
#-----------------------------------
_edata:
.L_42115c:
#===================================
# end section .data
#===================================

#===================================
.bss
#===================================

.align 4
#-----------------------------------
.globl stderr_copy
.type stderr_copy, @object
.size stderr_copy, 8
#-----------------------------------
stderr_copy:
#-----------------------------------
.globl __TMC_END__
.hidden __TMC_END__
.type __TMC_END__, @object
#-----------------------------------
__TMC_END__:
#-----------------------------------
.globl __bss_start__
.type __bss_start__, @notype
#-----------------------------------
__bss_start__:
#-----------------------------------
.globl __bss_start
.type __bss_start, @notype
#-----------------------------------
__bss_start:
          .zero 8
#-----------------------------------
.globl stdout_copy
.type stdout_copy, @object
.size stdout_copy, 8
#-----------------------------------
stdout_copy:
          .zero 8
#-----------------------------------
.globl stdin_copy
.type stdin_copy, @object
.size stdin_copy, 8
#-----------------------------------
stdin_copy:
          .zero 8
#-----------------------------------
.type completed.0, @object
.size completed.0, 1
#-----------------------------------
completed.0:
          .zero 8
#-----------------------------------
.type rsync_sum, @object
.size rsync_sum, 8
#-----------------------------------
rsync_sum:
          .zero 8
#-----------------------------------
.type rsync_chunk_end, @object
.size rsync_chunk_end, 8
#-----------------------------------
rsync_chunk_end:
          .zero 8
#-----------------------------------
.type first_nonopt, @object
.size first_nonopt, 4
#-----------------------------------
first_nonopt:
          .zero 4
#-----------------------------------
.type last_nonopt, @object
.size last_nonopt, 4
#-----------------------------------
last_nonopt:
          .zero 12
#-----------------------------------
.type dyn_ltree, @object
.size dyn_ltree, 2292
#-----------------------------------
dyn_ltree:
          .zero 2304
#-----------------------------------
.type dyn_dtree, @object
.size dyn_dtree, 244
#-----------------------------------
dyn_dtree:
          .zero 256
#-----------------------------------
.type bl_tree, @object
.size bl_tree, 156
#-----------------------------------
bl_tree:
          .zero 160
#-----------------------------------
.type static_len, @object
.size static_len, 8
#-----------------------------------
static_len:
          .zero 8
#-----------------------------------
.type opt_len, @object
.size opt_len, 8
#-----------------------------------
opt_len:
          .zero 8
#-----------------------------------
.type last_flags, @object
.size last_flags, 4
#-----------------------------------
last_flags:
          .zero 4
#-----------------------------------
.type last_dist, @object
.size last_dist, 4
#-----------------------------------
last_dist:
          .zero 4
#-----------------------------------
.type last_lit, @object
.size last_lit, 4
#-----------------------------------
last_lit:
          .zero 4
#-----------------------------------
.type flags, @object
.size flags, 1
#-----------------------------------
flags:
          .zero 1
#-----------------------------------
.type flag_bit, @object
.size flag_bit, 1
#-----------------------------------
flag_bit:
          .zero 3
#-----------------------------------
.type heap, @object
.size heap, 2292
#-----------------------------------
heap:
          .zero 2292
#-----------------------------------
.type heap_len, @object
.size heap_len, 4
#-----------------------------------
heap_len:
          .zero 12
#-----------------------------------
.type depth, @object
.size depth, 573
#-----------------------------------
depth:
          .zero 576
#-----------------------------------
.type heap_max, @object
.size heap_max, 4
#-----------------------------------
heap_max:
          .zero 16
#-----------------------------------
.type bl_count, @object
.size bl_count, 32
#-----------------------------------
bl_count:
          .zero 32
#-----------------------------------
.type lookahead, @object
.size lookahead, 4
#-----------------------------------
lookahead:
          .zero 4
#-----------------------------------
.globl strstart
.type strstart, @object
.size strstart, 4
#-----------------------------------
strstart:
          .zero 4
#-----------------------------------
.globl match_start
.type match_start, @object
.size match_start, 4
#-----------------------------------
match_start:
          .zero 8
#-----------------------------------
.globl block_start
.type block_start, @object
.size block_start, 8
#-----------------------------------
block_start:
          .zero 8
#-----------------------------------
.type eofile, @object
.size eofile, 4
#-----------------------------------
eofile:
          .zero 8
#-----------------------------------
.globl read_buf
.type read_buf, @object
.size read_buf, 8
#-----------------------------------
read_buf:
          .zero 8
#-----------------------------------
.globl progname
.type progname, @object
.size progname, 8
#-----------------------------------
progname:
          .zero 8
#-----------------------------------
.globl exit_code
.type exit_code, @object
.size exit_code, 4
#-----------------------------------
exit_code:
          .zero 4
#-----------------------------------
.type in_exit.2, @object
.size in_exit.2, 4
#-----------------------------------
in_exit.2:
          .zero 4
#-----------------------------------
.globl env
.type env, @object
.size env, 8
#-----------------------------------
env:
          .zero 8
#-----------------------------------
.globl args
.type args, @object
.size args, 8
#-----------------------------------
args:
          .zero 8
#-----------------------------------
.type msg_done, @object
.size msg_done, 4
#-----------------------------------
msg_done:
          .zero 4
#-----------------------------------
.globl quiet
.type quiet, @object
.size quiet, 4
#-----------------------------------
quiet:
          .zero 4
#-----------------------------------
.globl ofname
.type ofname, @object
.size ofname, 1024
#-----------------------------------
ofname:
          .zero 1024
#-----------------------------------
.type base_length, @object
.size base_length, 116
#-----------------------------------
base_length:
          .zero 128
#-----------------------------------
.type length_code, @object
.size length_code, 256
#-----------------------------------
length_code:
          .zero 256
#-----------------------------------
.type base_dist, @object
.size base_dist, 120
#-----------------------------------
base_dist:
          .zero 128
#-----------------------------------
.type dist_code, @object
.size dist_code, 512
#-----------------------------------
dist_code:
          .zero 512
#-----------------------------------
.type static_ltree, @object
.size static_ltree, 1152
#-----------------------------------
static_ltree:
          .zero 1152
#-----------------------------------
.type static_dtree, @object
.size static_dtree, 120
#-----------------------------------
static_dtree:
          .zero 120
#-----------------------------------
.globl remove_ofname
.type remove_ofname, @object
.size remove_ofname, 4
#-----------------------------------
remove_ofname:
          .zero 4
#-----------------------------------
.globl ofd
.type ofd, @object
.size ofd, 4
#-----------------------------------
ofd:
          .zero 4
#-----------------------------------
.type bi_buf, @object
.size bi_buf, 2
#-----------------------------------
bi_buf:
          .zero 4
#-----------------------------------
.type bi_valid, @object
.size bi_valid, 4
#-----------------------------------
bi_valid:
          .zero 4
#-----------------------------------
.globl max_chain_length
.type max_chain_length, @object
.size max_chain_length, 4
#-----------------------------------
max_chain_length:
          .zero 4
#-----------------------------------
.globl prev_length
.type prev_length, @object
.size prev_length, 4
#-----------------------------------
prev_length:
          .zero 4
#-----------------------------------
.globl good_match
.type good_match, @object
.size good_match, 4
#-----------------------------------
good_match:
          .zero 4
#-----------------------------------
.globl nice_match
.type nice_match, @object
.size nice_match, 4
#-----------------------------------
nice_match:
          .zero 4
#-----------------------------------
.globl optarg
.type optarg, @object
.size optarg, 8
#-----------------------------------
optarg:
          .zero 8
#-----------------------------------
.globl __getopt_initialized
.type __getopt_initialized, @object
.size __getopt_initialized, 4
#-----------------------------------
__getopt_initialized:
          .zero 8
#-----------------------------------
.type nextchar, @object
.size nextchar, 8
#-----------------------------------
nextchar:
          .zero 8
#-----------------------------------
.type posixly_correct, @object
.size posixly_correct, 8
#-----------------------------------
posixly_correct:
          .zero 8
#-----------------------------------
.type ordering, @object
.size ordering, 4
#-----------------------------------
ordering:
          .zero 4
#-----------------------------------
.globl hufts
.type hufts, @object
.size hufts, 4
#-----------------------------------
hufts:
          .zero 4
#-----------------------------------
.globl file_type
.type file_type, @object
.size file_type, 8
#-----------------------------------
file_type:
          .zero 8
#-----------------------------------
.globl file_method
.type file_method, @object
.size file_method, 8
#-----------------------------------
file_method:
          .zero 8
#-----------------------------------
.type input_len, @object
.size input_len, 8
#-----------------------------------
input_len:
          .zero 8
#-----------------------------------
.type compressed_len, @object
.size compressed_len, 8
#-----------------------------------
compressed_len:
          .zero 8
#-----------------------------------
.globl inptr
.type inptr, @object
.size inptr, 4
#-----------------------------------
inptr:
          .zero 4
#-----------------------------------
.globl ifd
.type ifd, @object
.size ifd, 4
#-----------------------------------
ifd:
          .zero 4
#-----------------------------------
.globl insize
.type insize, @object
.size insize, 4
#-----------------------------------
insize:
          .zero 8
#-----------------------------------
.globl ifname
.type ifname, @object
.size ifname, 1024
#-----------------------------------
ifname:
          .zero 1024
#-----------------------------------
.globl decrypt
.type decrypt, @object
.size decrypt, 4
#-----------------------------------
decrypt:
          .zero 4
#-----------------------------------
.globl ext_header
.type ext_header, @object
.size ext_header, 4
#-----------------------------------
ext_header:
          .zero 4
#-----------------------------------
.globl pkzip
.type pkzip, @object
.size pkzip, 4
#-----------------------------------
pkzip:
          .zero 4
#-----------------------------------
.globl outcnt
.type outcnt, @object
.size outcnt, 4
#-----------------------------------
outcnt:
          .zero 4
#-----------------------------------
.globl bytes_out
.type bytes_out, @object
.size bytes_out, 8
#-----------------------------------
bytes_out:
          .zero 8
#-----------------------------------
.globl bytes_in
.type bytes_in, @object
.size bytes_in, 8
#-----------------------------------
bytes_in:
          .zero 8
#-----------------------------------
.globl z_suffix
.type z_suffix, @object
.size z_suffix, 8
#-----------------------------------
z_suffix:
          .zero 8
#-----------------------------------
.type compr_level, @object
.size compr_level, 4
#-----------------------------------
compr_level:
          .zero 4
#-----------------------------------
.type max_lazy_match, @object
.size max_lazy_match, 4
#-----------------------------------
max_lazy_match:
          .zero 4
#-----------------------------------
.type ins_h, @object
.size ins_h, 4
#-----------------------------------
ins_h:
          .zero 4
#-----------------------------------
.globl decompress
.type decompress, @object
.size decompress, 4
#-----------------------------------
decompress:
          .zero 4
#-----------------------------------
.globl save_orig_name
.type save_orig_name, @object
.size save_orig_name, 4
#-----------------------------------
save_orig_name:
          .zero 8
#-----------------------------------
.type crc, @object
.size crc, 8
#-----------------------------------
crc:
          .zero 8
#-----------------------------------
.globl rsync
.type rsync, @object
.size rsync, 4
#-----------------------------------
rsync:
          .zero 8
#-----------------------------------
.globl time_stamp
.type time_stamp, @object
.size time_stamp, 8
#-----------------------------------
time_stamp:
          .zero 8
#-----------------------------------
.globl header_bytes
.type header_bytes, @object
.size header_bytes, 8
#-----------------------------------
header_bytes:
          .zero 8
#-----------------------------------
.globl test
.type test, @object
.size test, 4
#-----------------------------------
test:
          .zero 4
#-----------------------------------
.globl last_member
.type last_member, @object
.size last_member, 4
#-----------------------------------
last_member:
          .zero 4
#-----------------------------------
.globl force
.type force, @object
.size force, 4
#-----------------------------------
force:
          .zero 4
#-----------------------------------
.globl to_stdout
.type to_stdout, @object
.size to_stdout, 4
#-----------------------------------
to_stdout:
          .zero 4
#-----------------------------------
.globl part_nb
.type part_nb, @object
.size part_nb, 4
#-----------------------------------
part_nb:
          .zero 4
#-----------------------------------
.globl verbose
.type verbose, @object
.size verbose, 4
#-----------------------------------
verbose:
          .zero 4
#-----------------------------------
.globl list
.type list, @object
.size list, 4
#-----------------------------------
list:
          .zero 4
#-----------------------------------
.type io_bitbuf, @object
.size io_bitbuf, 2
#-----------------------------------
io_bitbuf:
          .zero 4
#-----------------------------------
.type bitcount, @object
.size bitcount, 4
#-----------------------------------
bitcount:
          .zero 4
#-----------------------------------
.type subbitbuf, @object
.size subbitbuf, 4
#-----------------------------------
subbitbuf:
          .zero 12
#-----------------------------------
.type pt_len, @object
.size pt_len, 19
#-----------------------------------
pt_len:
          .zero 32
#-----------------------------------
.type pt_table, @object
.size pt_table, 512
#-----------------------------------
pt_table:
          .zero 512
#-----------------------------------
.type blocksize, @object
.size blocksize, 4
#-----------------------------------
blocksize:
          .zero 4
#-----------------------------------
.type j, @object
.size j, 4
#-----------------------------------
j:
          .zero 4
#-----------------------------------
.type done, @object
.size done, 4
#-----------------------------------
done:
          .zero 4
#-----------------------------------
.type i.1, @object
.size i.1, 4
#-----------------------------------
i.1:
          .zero 4
#-----------------------------------
.globl bb
.type bb, @object
.size bb, 8
#-----------------------------------
bb:
          .zero 8
#-----------------------------------
.globl bk
.type bk, @object
.size bk, 4
#-----------------------------------
bk:
          .zero 8
#-----------------------------------
.type orig_len, @object
.size orig_len, 8
#-----------------------------------
orig_len:
          .zero 8
#-----------------------------------
.type max_len, @object
.size max_len, 4
#-----------------------------------
max_len:
          .zero 8
#-----------------------------------
.type leaves, @object
.size leaves, 104
#-----------------------------------
leaves:
          .zero 112
#-----------------------------------
.type lit_base, @object
.size lit_base, 104
#-----------------------------------
lit_base:
          .zero 112
#-----------------------------------
.type literal, @object
.size literal, 256
#-----------------------------------
literal:
          .zero 256
#-----------------------------------
.type parents, @object
.size parents, 104
#-----------------------------------
parents:
          .zero 104
#-----------------------------------
.type peek_bits, @object
.size peek_bits, 4
#-----------------------------------
peek_bits:
          .zero 4
#-----------------------------------
.type valid, @object
.size valid, 4
#-----------------------------------
valid:
          .zero 4
#-----------------------------------
.type bitbuf, @object
.size bitbuf, 8
#-----------------------------------
bitbuf:
          .zero 8
#-----------------------------------
.globl total_in
.type total_in, @object
.size total_in, 8
#-----------------------------------
total_in:
          .zero 8
#-----------------------------------
.globl total_out
.type total_out, @object
.size total_out, 8
#-----------------------------------
total_out:
          .zero 8
#-----------------------------------
.globl ifile_size
.type ifile_size, @object
.size ifile_size, 8
#-----------------------------------
ifile_size:
          .zero 8
#-----------------------------------
.globl istat
.type istat, @object
.size istat, 128
#-----------------------------------
istat:
          .zero 128
#-----------------------------------
.globl recursive
.type recursive, @object
.size recursive, 4
#-----------------------------------
recursive:
          .zero 8
#-----------------------------------
.globl z_len
.type z_len, @object
.size z_len, 8
#-----------------------------------
z_len:
          .zero 8
#-----------------------------------
.globl foreground
.type foreground, @object
.size foreground, 4
#-----------------------------------
foreground:
          .zero 4
#-----------------------------------
.globl ascii
.type ascii, @object
.size ascii, 4
#-----------------------------------
ascii:
          .zero 4
#-----------------------------------
.globl do_lzw
.type do_lzw, @object
.size do_lzw, 4
#-----------------------------------
do_lzw:
          .zero 8
#-----------------------------------
.globl key
.type key, @object
.size key, 8
#-----------------------------------
key:
          .zero 16
#-----------------------------------
.type flag_buf, @object
.size flag_buf, 4096
#-----------------------------------
flag_buf:
          .zero 4096
#-----------------------------------
.globl prev
.type prev, @object
.size prev, 131072
#-----------------------------------
prev:
          .zero 131072
#-----------------------------------
.globl window
.type window, @object
.size window, 65536
#-----------------------------------
window:
          .zero 65536
#-----------------------------------
.globl d_buf
.type d_buf, @object
.size d_buf, 65536
#-----------------------------------
d_buf:
          .zero 65536
#-----------------------------------
.globl outbuf
.type outbuf, @object
.size outbuf, 18432
#-----------------------------------
outbuf:
          .zero 18432
#-----------------------------------
.globl inbuf
.type inbuf, @object
.size inbuf, 32832
#-----------------------------------
inbuf:
          .zero 32832
#-----------------------------------
.globl _end
.type _end, @notype
#-----------------------------------
_end:
#-----------------------------------
.globl _bss_end__
.type _bss_end__, @notype
#-----------------------------------
_bss_end__:
#-----------------------------------
.globl __end__
.type __end__, @notype
#-----------------------------------
__end__:
#-----------------------------------
.globl __bss_end__
.type __bss_end__, @notype
#-----------------------------------
__bss_end__:
.L_4717d0:
#===================================
# end section .bss
#===================================
# WARNING: integral symbol .L_0 may not have been correctly relocated
.set .L_0, 0
#-----------------------------------
.weak _ITM_deregisterTMCloneTable
.type _ITM_deregisterTMCloneTable, @notype
#-----------------------------------
#-----------------------------------
.weak _ITM_registerTMCloneTable
.type _ITM_registerTMCloneTable, @notype
#-----------------------------------
#-----------------------------------
.symver __ctype_b_loc,__ctype_b_loc@GLIBC_2.17
.globl __ctype_b_loc
.type __ctype_b_loc, @function
#-----------------------------------
#-----------------------------------
.symver __ctype_tolower_loc,__ctype_tolower_loc@GLIBC_2.17
.globl __ctype_tolower_loc
.type __ctype_tolower_loc, @function
#-----------------------------------
#-----------------------------------
.symver __errno_location,__errno_location@GLIBC_2.17
.globl __errno_location
.type __errno_location, @function
#-----------------------------------
#-----------------------------------
.weak __gmon_start__
.type __gmon_start__, @notype
#-----------------------------------
#-----------------------------------
.symver __libc_start_main,__libc_start_main@GLIBC_2.34
.globl __libc_start_main
.type __libc_start_main, @function
#-----------------------------------
#-----------------------------------
.symver _exit,_exit@GLIBC_2.17
.globl _exit
.type _exit, @function
#-----------------------------------
#-----------------------------------
.symver abort,abort@GLIBC_2.17
.globl abort
.type abort, @function
#-----------------------------------
#-----------------------------------
.symver calloc,calloc@GLIBC_2.17
.globl calloc
.type calloc, @function
#-----------------------------------
#-----------------------------------
.symver close,close@GLIBC_2.17
.globl close
.type close, @function
#-----------------------------------
#-----------------------------------
.symver closedir,closedir@GLIBC_2.17
.globl closedir
.type closedir, @function
#-----------------------------------
#-----------------------------------
.symver ctime,ctime@GLIBC_2.17
.globl ctime
.type ctime, @function
#-----------------------------------
#-----------------------------------
.symver exit,exit@GLIBC_2.17
.globl exit
.type exit, @function
#-----------------------------------
#-----------------------------------
.symver fchmod,fchmod@GLIBC_2.17
.globl fchmod
.type fchmod, @function
#-----------------------------------
#-----------------------------------
.symver fchown,fchown@GLIBC_2.17
.globl fchown
.type fchown, @function
#-----------------------------------
#-----------------------------------
.symver fflush,fflush@GLIBC_2.17
.globl fflush
.type fflush, @function
#-----------------------------------
#-----------------------------------
.symver fileno,fileno@GLIBC_2.17
.globl fileno
.type fileno, @function
#-----------------------------------
#-----------------------------------
.symver fprintf,fprintf@GLIBC_2.17
.globl fprintf
.type fprintf, @function
#-----------------------------------
#-----------------------------------
.symver fputc,fputc@GLIBC_2.17
.globl fputc
.type fputc, @function
#-----------------------------------
#-----------------------------------
.symver free,free@GLIBC_2.17
.globl free
.type free, @function
#-----------------------------------
#-----------------------------------
.symver fstat,fstat@GLIBC_2.33
.globl fstat
.type fstat, @function
#-----------------------------------
#-----------------------------------
.symver fwrite,fwrite@GLIBC_2.17
.globl fwrite
.type fwrite, @function
#-----------------------------------
#-----------------------------------
.symver getc,getc@GLIBC_2.17
.globl getc
.type getc, @function
#-----------------------------------
#-----------------------------------
.symver getenv,getenv@GLIBC_2.17
.globl getenv
.type getenv, @function
#-----------------------------------
#-----------------------------------
.symver isatty,isatty@GLIBC_2.17
.globl isatty
.type isatty, @function
#-----------------------------------
#-----------------------------------
.symver lseek,lseek@GLIBC_2.17
.globl lseek
.type lseek, @function
#-----------------------------------
#-----------------------------------
.symver lstat,lstat@GLIBC_2.33
.globl lstat
.type lstat, @function
#-----------------------------------
#-----------------------------------
.symver malloc,malloc@GLIBC_2.17
.globl malloc
.type malloc, @function
#-----------------------------------
#-----------------------------------
.symver memcpy,memcpy@GLIBC_2.17
.globl memcpy
.type memcpy, @function
#-----------------------------------
#-----------------------------------
.symver memset,memset@GLIBC_2.17
.globl memset
.type memset, @function
#-----------------------------------
#-----------------------------------
.symver open,open@GLIBC_2.17
.globl open
.type open, @function
#-----------------------------------
#-----------------------------------
.symver opendir,opendir@GLIBC_2.17
.globl opendir
.type opendir, @function
#-----------------------------------
#-----------------------------------
.symver perror,perror@GLIBC_2.17
.globl perror
.type perror, @function
#-----------------------------------
#-----------------------------------
.symver printf,printf@GLIBC_2.17
.globl printf
.type printf, @function
#-----------------------------------
#-----------------------------------
.symver putc,putc@GLIBC_2.17
.globl putc
.type putc, @function
#-----------------------------------
#-----------------------------------
.symver putchar,putchar@GLIBC_2.17
.globl putchar
.type putchar, @function
#-----------------------------------
#-----------------------------------
.symver puts,puts@GLIBC_2.17
.globl puts
.type puts, @function
#-----------------------------------
#-----------------------------------
.symver read,read@GLIBC_2.17
.globl read
.type read, @function
#-----------------------------------
#-----------------------------------
.symver readdir,readdir@GLIBC_2.17
.globl readdir
.type readdir, @function
#-----------------------------------
#-----------------------------------
.symver signal,signal@GLIBC_2.17
.globl signal
.type signal, @function
#-----------------------------------
#-----------------------------------
.symver stat,stat@GLIBC_2.33
.globl stat
.type stat, @function
#-----------------------------------
#-----------------------------------
.symver stderr,stderr@GLIBC_2.17
.globl stderr
.type stderr, @object
.size stderr, 8
#-----------------------------------
#-----------------------------------
.symver stdin,stdin@GLIBC_2.17
.globl stdin
.type stdin, @object
.size stdin, 8
#-----------------------------------
#-----------------------------------
.symver stdout,stdout@GLIBC_2.17
.globl stdout
.type stdout, @object
.size stdout, 8
#-----------------------------------
#-----------------------------------
.symver stpcpy,stpcpy@GLIBC_2.17
.globl stpcpy
.type stpcpy, @function
#-----------------------------------
#-----------------------------------
.symver strcmp,strcmp@GLIBC_2.17
.globl strcmp
.type strcmp, @function
#-----------------------------------
#-----------------------------------
.symver strcpy,strcpy@GLIBC_2.17
.globl strcpy
.type strcpy, @function
#-----------------------------------
#-----------------------------------
.symver strcspn,strcspn@GLIBC_2.17
.globl strcspn
.type strcspn, @function
#-----------------------------------
#-----------------------------------
.symver strlen,strlen@GLIBC_2.17
.globl strlen
.type strlen, @function
#-----------------------------------
#-----------------------------------
.symver strncmp,strncmp@GLIBC_2.17
.globl strncmp
.type strncmp, @function
#-----------------------------------
#-----------------------------------
.symver strrchr,strrchr@GLIBC_2.17
.globl strrchr
.type strrchr, @function
#-----------------------------------
#-----------------------------------
.symver strspn,strspn@GLIBC_2.17
.globl strspn
.type strspn, @function
#-----------------------------------
#-----------------------------------
.symver strtol,strtol@GLIBC_2.17
.globl strtol
.type strtol, @function
#-----------------------------------
#-----------------------------------
.symver unlink,unlink@GLIBC_2.17
.globl unlink
.type unlink, @function
#-----------------------------------
#-----------------------------------
.symver utime,utime@GLIBC_2.17
.globl utime
.type utime, @function
#-----------------------------------
#-----------------------------------
.symver write,write@GLIBC_2.17
.globl write
.type write, @function
#-----------------------------------
