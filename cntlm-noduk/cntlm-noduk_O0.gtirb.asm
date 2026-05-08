[INFO]  Reading GTIRB file:     "basilbench/cntlm-noduk/cntlm-noduk_O0.gtirb"
[INFO]  Module cntlm-noduk_O0 has integral symbols; attempting to assign referents...
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
.L_402150:

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
            cbz x0,.L_402854

            b __gmon_start__
.L_402854:

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
            adrp x0, _edata
            add x0,x0, :lo12:_edata
            adrp x1, _edata
            add x1,x1, :lo12:_edata
            cmp x1,x0
            b.eq .L_40288c

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_40288c

            mov x16,x1
            br x16
.L_40288c:

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
            adrp x0, _edata
            add x0,x0, :lo12:_edata
            adrp x1, _edata
            add x1,x1, :lo12:_edata
            sub x1,x1,x0
            lsr x2,x1,#63
            add x1,x2,x1, asr #3
            asr x1,x1,#1
            cbz x1,.L_4028c8

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_4028c8

            mov x16,x2
            br x16
.L_4028c8:

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
            tbnz w0,#0,.L_4028f0

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_4028f0:

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
.size frame_dummy, . - frame_dummy
.align 2
#-----------------------------------
.globl acl_add
.type acl_add, @function
#-----------------------------------
acl_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -112
            str x0,[sp,#56]
            str x1,[sp,#48]
            str w2,[sp,#44]
            str xzr,[sp,#80]
            str xzr,[sp,#120]
            mov w0,#32
            str w0,[sp,#116]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_402940

            mov w0,#0
            b .L_402ce0
.L_402940:

            ldr x0,[sp,#48]
            bl strdup

            str x0,[sp,#48]
            mov x0,#8
            bl zmalloc

            str x0,[sp,#96]
            adrp x0, .L_418ad8
            add x1,x0, :lo12:.L_418ad8
            ldr x0,[sp,#48]
            bl strcspn

            str x0,[sp,#88]
            ldr x0,[sp,#48]
            bl strlen

            mov x1,x0
            ldr x0,[sp,#88]
            cmp x0,x1
            b.hs .L_402a24

            ldr x1,[sp,#48]
            ldr x0,[sp,#88]
            add x0,x1,x0
            strb wzr,[x0]
            ldr x0,[sp,#88]
            add x0,x0,#1
            ldr x1,[sp,#48]
            add x0,x1,x0
            add x1,sp,#72
            mov w2,#10
            bl strtol

            str w0,[sp,#116]
            ldr w0,[sp,#116]
            cmp w0,#0
            b.lt .L_4029f8

            ldr w0,[sp,#116]
            cmp w0,#32
            b.gt .L_4029f8

            ldr x0,[sp,#88]
            add x0,x0,#1
            ldr x1,[sp,#48]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_4029f8

            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_402a24
.L_4029f8:

            ldr x2,[sp,#48]
            adrp x0, .L_418ae0
            add x1,x0, :lo12:.L_418ae0
            mov w0,#3
            bl syslog

            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#48]
            bl free

            mov w0,#0
            b .L_402ce0
.L_402a24:

            ldr x1,[sp,#48]
            adrp x0, .L_418b00
            add x0,x0, :lo12:.L_418b00
            bl strcmp

            cmp w0,#0
            b.ne .L_402a4c

            ldr x0,[sp,#96]
            str wzr,[x0]
            str wzr,[sp,#116]
            b .L_402ab4
.L_402a4c:

            ldr x1,[sp,#48]
            adrp x0, .L_418b08
            add x0,x0, :lo12:.L_418b08
            bl strcmp

            cmp w0,#0
            b.ne .L_402a70

            ldr x0,[sp,#96]
            str wzr,[x0]
            b .L_402ab4
.L_402a70:

            add x0,sp,#80
            mov w2,#0
            ldr x1,[sp,#48]
            bl so_resolv

            cmp w0,#0
            b.ne .L_402ab4

            ldr x2,[sp,#48]
            adrp x0, .L_418b10
            add x1,x0, :lo12:.L_418b10
            mov w0,#3
            bl syslog

            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#48]
            bl free

            mov w0,#0
            b .L_402ce0
.L_402ab4:

            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_402b54

            ldr x0,[sp,#80]
            str x0,[sp,#104]
            b .L_402af8
.L_402acc:

            ldr x0,[sp,#104]
            ldr w0,[x0,#4]
            cmp w0,#2
            b.ne .L_402aec

            ldr x0,[sp,#104]
            ldr x0,[x0,#24]
            str x0,[sp,#120]
            b .L_402b04
.L_402aec:

            ldr x0,[sp,#104]
            ldr x0,[x0,#40]
            str x0,[sp,#104]
.L_402af8:

            ldr x0,[sp,#104]
            cmp x0,#0
            b.ne .L_402acc
.L_402b04:

            ldr x0,[sp,#120]
            cmp x0,#0
            b.ne .L_402b44

            ldr x2,[sp,#48]
            adrp x0, .L_418b38
            add x1,x0, :lo12:.L_418b38
            mov w0,#3
            bl syslog

            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#80]
            bl freeaddrinfo

            mov w0,#0
            b .L_402ce0
.L_402b44:

            ldr x0,[sp,#120]
            ldr w1,[x0,#4]
            ldr x0,[sp,#96]
            str w1,[x0]
.L_402b54:

            ldr x0,[sp,#96]
            ldr w1,[sp,#116]
            str w1,[x0,#4]
            mov w1,#32
            ldr w0,[sp,#116]
            sub w0,w1,w0
            mov x1,#1
            lsl x0,x1,x0
            neg w0,w0
            lsl w1,w0,#24
            mov w2,#32
            ldr w0,[sp,#116]
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsl w0,w0,#8
            and w0,w0,#16711680
            orr w1,w1,w0
            mov w2,#32
            ldr w0,[sp,#116]
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsr w0,w0,#8
            and w0,w0,#65280
            orr w1,w1,w0
            mov w2,#32
            ldr w0,[sp,#116]
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsr w0,w0,#24
            orr w0,w1,w0
            str w0,[sp,#116]
            ldr x0,[sp,#96]
            ldr w1,[x0]
            ldr w0,[sp,#116]
            and w1,w1,w0
            ldr x0,[sp,#96]
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_402c48

            ldr x0,[sp,#120]
            cmp x0,#0
            b.eq .L_402c24

            ldr x0,[sp,#120]
            ldr w0,[x0,#4]
            bl inet_ntoa

            b .L_402c28
.L_402c24:

            ldr x0,[sp,#48]
.L_402c28:

            ldr x1,[sp,#96]
            ldr w1,[x1,#4]
            mov w3,w1
            mov x2,x0
            adrp x0, .L_418b70
            add x1,x0, :lo12:.L_418b70
            mov w0,#4
            bl syslog
.L_402c48:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.ne .L_402c60

            adrp x0, .L_418ba0
            add x19,x0, :lo12:.L_418ba0
            b .L_402c68
.L_402c60:

            adrp x0, .L_418ba8
            add x19,x0, :lo12:.L_418ba8
.L_402c68:

            ldr x0,[sp,#120]
            cmp x0,#0
            b.eq .L_402c84

            ldr x0,[sp,#120]
            ldr w0,[x0,#4]
            bl inet_ntoa

            b .L_402c88
.L_402c84:

            ldr x0,[sp,#48]
.L_402c88:

            ldr x1,[sp,#96]
            ldr w1,[x1,#4]
            mov w4,w1
            mov x3,x0
            mov x2,x19
            adrp x0, .L_418bb0
            add x1,x0, :lo12:.L_418bb0
            mov w0,#6
            bl syslog

            ldr x0,[sp,#56]
            ldr x0,[x0]
            ldr w1,[sp,#44]
            ldr x2,[sp,#96]
            bl plist_add

            mov x1,x0
            ldr x0,[sp,#56]
            str x1,[x0]
            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#80]
            bl freeaddrinfo

            mov w0,#1
.L_402ce0:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size acl_add, . - acl_add
.align 2
#-----------------------------------
.globl acl_check
.type acl_check, @function
#-----------------------------------
acl_check:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            cmp x0,#0
            b.eq .L_402e10

            ldr x0,[sp]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_402e10

            ldr x0,[sp]
            str x0,[sp,#40]
            b .L_402e04
.L_402d20:

            ldr x0,[sp,#8]
            ldr x0,[x0,#8]
            str x0,[sp,#32]
            ldr x0,[sp,#32]
            ldr w0,[x0,#4]
            mov w1,#32
            sub w0,w1,w0
            mov x1,#1
            lsl x0,x1,x0
            neg w0,w0
            lsl w1,w0,#24
            ldr x0,[sp,#32]
            ldr w0,[x0,#4]
            mov w2,#32
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsl w0,w0,#8
            and w0,w0,#16711680
            orr w1,w1,w0
            ldr x0,[sp,#32]
            ldr w0,[x0,#4]
            mov w2,#32
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsr w0,w0,#8
            and w0,w0,#65280
            orr w1,w1,w0
            ldr x0,[sp,#32]
            ldr w0,[x0,#4]
            mov w2,#32
            sub w0,w2,w0
            mov x2,#1
            lsl x0,x2,x0
            neg w0,w0
            lsr w0,w0,#24
            orr w0,w1,w0
            str w0,[sp,#28]
            ldr x0,[sp,#40]
            ldr w1,[x0,#4]
            ldr w0,[sp,#28]
            and w1,w1,w0
            ldr x0,[sp,#32]
            ldr w2,[x0]
            ldr w0,[sp,#28]
            and w0,w2,w0
            cmp w1,w0
            b.ne .L_402df8

            ldr x0,[sp,#8]
            ldr x0,[x0]
            b .L_402e14
.L_402df8:

            ldr x0,[sp,#8]
            ldr x0,[x0,#16]
            str x0,[sp,#8]
.L_402e04:

            ldr x0,[sp,#8]
            cmp x0,#0
            b.ne .L_402d20
.L_402e10:

            mov w0,#0
.L_402e14:

            add sp,sp,#48
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size acl_check, . - acl_check
.align 2
#-----------------------------------
.globl new_auth
.type new_auth, @function
#-----------------------------------
new_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            mov x0,#316
            bl malloc

            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_402e44

            mov x0,#0
            b .L_402ee0
.L_402e44:

            ldr x0,[sp,#24]
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            add x0,x0,#50
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            add x0,x0,#100
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            add x0,x0,#250
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            add x0,x0,#200
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            add x0,x0,#150
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#24]
            mov w1,#1
            str w1,[x0,#300]
            ldr x0,[sp,#24]
            str wzr,[x0,#304]
            ldr x0,[sp,#24]
            str wzr,[x0,#308]
            ldr x0,[sp,#24]
            str wzr,[x0,#312]
            ldr x0,[sp,#24]
.L_402ee0:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size new_auth, . - new_auth
.align 3
#-----------------------------------
.globl copy_auth
.type copy_auth, @function
#-----------------------------------
copy_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            ldr x0,[sp,#32]
            ldr w1,[x0,#300]
            ldr x0,[sp,#40]
            str w1,[x0,#300]
            ldr x0,[sp,#32]
            ldr w1,[x0,#304]
            ldr x0,[sp,#40]
            str w1,[x0,#304]
            ldr x0,[sp,#32]
            ldr w1,[x0,#308]
            ldr x0,[sp,#40]
            str w1,[x0,#308]
            ldr x0,[sp,#32]
            ldr w1,[x0,#312]
            ldr x0,[sp,#40]
            str w1,[x0,#312]
            ldr x0,[sp,#40]
            add x3,x0,#50
            ldr x0,[sp,#32]
            add x0,x0,#50
            mov x2,#50
            mov x1,x0
            mov x0,x3
            bl strlcpy

            ldr x0,[sp,#40]
            add x3,x0,#100
            ldr x0,[sp,#32]
            add x0,x0,#100
            mov x2,#50
            mov x1,x0
            mov x0,x3
            bl strlcpy

            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_402ffc

            ldr x0,[sp,#40]
            ldr x1,[sp,#32]
            mov x2,#50
            bl strlcpy

            ldr x0,[sp,#40]
            add x3,x0,#250
            ldr x0,[sp,#32]
            add x0,x0,#250
            mov x2,#50
            mov x1,x0
            mov x0,x3
            bl memcpy

            ldr x0,[sp,#40]
            add x3,x0,#200
            ldr x0,[sp,#32]
            add x0,x0,#200
            mov x2,#50
            mov x1,x0
            mov x0,x3
            bl memcpy

            ldr x0,[sp,#40]
            add x3,x0,#150
            ldr x0,[sp,#32]
            add x0,x0,#150
            mov x2,#50
            mov x1,x0
            mov x0,x3
            bl memcpy

            b .L_403048
.L_402ffc:

            ldr x0,[sp,#40]
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            add x0,x0,#250
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            add x0,x0,#200
            mov x2,#50
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            add x0,x0,#150
            mov x2,#50
            mov w1,#0
            bl memset
.L_403048:

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size copy_auth, . - copy_auth
.align 2
#-----------------------------------
.globl dup_auth
.type dup_auth, @function
#-----------------------------------
dup_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            bl new_auth

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_403080

            mov x0,#0
            b .L_403090
.L_403080:

            ldr w2,[sp,#20]
            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            bl copy_auth
.L_403090:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size dup_auth, . - dup_auth
.align 3
#-----------------------------------
.globl dump_auth
.type dump_auth, @function
#-----------------------------------
dump_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, .L_418bc8
            add x0,x0, :lo12:.L_418bc8
            bl puts

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4030cc

            adrp x0, .L_418be8
            add x0,x0, :lo12:.L_418be8
            bl puts

            b .L_403248
.L_4030cc:

            ldr x0,[sp,#24]
            mov x1,x0
            adrp x0, .L_418c08
            add x0,x0, :lo12:.L_418c08
            bl printf

            ldr x0,[sp,#24]
            add x0,x0,#50
            mov x1,x0
            adrp x0, .L_418c18
            add x0,x0, :lo12:.L_418c18
            bl printf

            ldr x0,[sp,#24]
            add x0,x0,#100
            mov x1,x0
            adrp x0, .L_418c28
            add x0,x0, :lo12:.L_418c28
            bl printf

            ldr x0,[sp,#24]
            ldr w0,[x0,#300]
            mov w1,w0
            adrp x0, .L_418c38
            add x0,x0, :lo12:.L_418c38
            bl printf

            ldr x0,[sp,#24]
            ldr w0,[x0,#304]
            mov w1,w0
            adrp x0, .L_418c48
            add x0,x0, :lo12:.L_418c48
            bl printf

            ldr x0,[sp,#24]
            ldr w0,[x0,#308]
            mov w1,w0
            adrp x0, .L_418c58
            add x0,x0, :lo12:.L_418c58
            bl printf

            ldr x0,[sp,#24]
            ldr w0,[x0,#312]
            mov w1,w0
            adrp x0, .L_418c68
            add x0,x0, :lo12:.L_418c68
            bl printf

            ldr x0,[sp,#24]
            add x0,x0,#250
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_4031b8

            ldr x0,[sp,#24]
            add x0,x0,#250
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#40]
            ldr x1,[sp,#40]
            adrp x0, .L_418c78
            add x0,x0, :lo12:.L_418c78
            bl printf

            ldr x0,[sp,#40]
            bl free
.L_4031b8:

            ldr x0,[sp,#24]
            add x0,x0,#200
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_403200

            ldr x0,[sp,#24]
            add x0,x0,#200
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#40]
            ldr x1,[sp,#40]
            adrp x0, .L_418c88
            add x0,x0, :lo12:.L_418c88
            bl printf

            ldr x0,[sp,#40]
            bl free
.L_403200:

            ldr x0,[sp,#24]
            add x0,x0,#150
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_403248

            ldr x0,[sp,#24]
            add x0,x0,#150
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#40]
            ldr x1,[sp,#40]
            adrp x0, .L_418c98
            add x0,x0, :lo12:.L_418c98
            bl printf

            ldr x0,[sp,#40]
            bl free
.L_403248:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size dump_auth, . - dump_auth
.align 4
#-----------------------------------
.globl config_open
.type config_open, @function
#-----------------------------------
config_open:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            str x0,[sp,#24]
            mov x0,#27751
            movk x0,#25199,lsl #16
            movk x0,#27745,lsl #32
            mov x1,#0
            stp x0,x1,[sp,#32]
            stp xzr,xzr,[sp,#48]
            stp xzr,xzr,[sp,#64]
            strh wzr,[sp,#80]
            adrp x0, .L_418cb0
            add x1,x0, :lo12:.L_418cb0
            ldr x0,[sp,#24]
            bl fopen

            str x0,[sp,#136]
            ldr x0,[sp,#136]
            cmp x0,#0
            b.ne .L_4032a4

            mov x0,#0
            b .L_4037ec
.L_4032a4:

            mov x0,#4096
            bl zmalloc

            str x0,[sp,#128]
            mov x0,#8
            bl zmalloc

            str x0,[sp,#120]
            ldr x0,[sp,#120]
            str xzr,[x0]
            b .L_4037c0
.L_4032c8:

            str wzr,[sp,#148]
            ldr x2,[sp,#136]
            mov w1,#4096
            ldr x0,[sp,#128]
            bl fgets

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_4037d4

            ldr x0,[sp,#128]
            bl strlen

            cmp x0,#1,lsl #12
            b.hi .L_403308

            ldr x0,[sp,#128]
            bl strlen

            b .L_40330c
.L_403308:

            mov w0,#4096
.L_40330c:

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.eq .L_4037a4

            ldr x0,[sp,#136]
            bl feof

            cmp w0,#0
            b.ne .L_4037a4

            str wzr,[sp,#152]
            ldr w0,[sp,#152]
            str w0,[sp,#156]
            b .L_403348
.L_40333c:

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
.L_403348:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_40338c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            ldr x2,[sp,#128]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_40333c
.L_40338c:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_4037ac

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#35
            b.eq .L_4037ac

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#59
            b.eq .L_4037ac

            ldr w0,[sp,#152]
            str w0,[sp,#156]
            b .L_4033e4
.L_4033d8:

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
.L_4033e4:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_403428

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            ldr x2,[sp,#128]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8
            cmp w0,#0
            b.ne .L_4033d8
.L_403428:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_4037b4

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#91
            b.ne .L_403580

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
            b .L_40346c
.L_403460:

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
.L_40346c:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_4034b0

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            ldr x2,[sp,#128]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_403460
.L_4034b0:

            ldr w0,[sp,#152]
            str w0,[sp,#84]
            b .L_4034c8
.L_4034bc:

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
.L_4034c8:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_403538

            ldr w1,[sp,#152]
            ldr w0,[sp,#84]
            sub w0,w1,w0
            cmp w0,#48
            b.gt .L_403538

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#93
            b.eq .L_403538

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            ldr x2,[sp,#128]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.eq .L_4034bc
.L_403538:

            ldr w1,[sp,#152]
            ldr w0,[sp,#84]
            sub w0,w1,w0
            cmp w0,#0
            b.le .L_4037bc

            ldrsw x0,[sp,#84]
            ldr x1,[sp,#128]
            add x3,x1,x0
            ldr w1,[sp,#152]
            ldr w0,[sp,#84]
            sub w0,w1,w0
            add w0,w0,#1
            sxtw x1,w0
            add x0,sp,#32
            mov x2,x1
            mov x1,x3
            bl strlcpy

            b .L_4037bc
.L_403580:

            ldr w1,[sp,#152]
            ldr w0,[sp,#156]
            sub w0,w1,w0
            mov w2,w0
            ldr w1,[sp,#156]
            ldr x0,[sp,#128]
            bl substr

            str x0,[sp,#96]
            ldr w0,[sp,#152]
            str w0,[sp,#156]
            b .L_4035b8
.L_4035ac:

            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
.L_4035b8:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_4035fc

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            ldr x2,[sp,#128]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_4035ac
.L_4035fc:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_40363c

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#35
            b.eq .L_40363c

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#59
            b.ne .L_403648
.L_40363c:

            ldr x0,[sp,#96]
            bl free

            b .L_4037c0
.L_403648:

            ldrsw x0,[sp,#152]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#34
            b.ne .L_4036d0

            mov w0,#1
            str w0,[sp,#148]
            ldr w0,[sp,#152]
            add w0,w0,#1
            str w0,[sp,#152]
            ldr w0,[sp,#152]
            str w0,[sp,#156]
            b .L_40368c
.L_403680:

            ldr w0,[sp,#156]
            add w0,w0,#1
            str w0,[sp,#156]
.L_40368c:

            ldr w1,[sp,#152]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.ge .L_4036b4

            ldrsw x0,[sp,#156]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#34
            b.ne .L_403680
.L_4036b4:

            ldr w1,[sp,#156]
            ldr w0,[sp,#108]
            cmp w1,w0
            b.lt .L_4036d8

            ldr x0,[sp,#96]
            bl free

            b .L_4037c0
.L_4036d0:

            ldr w0,[sp,#108]
            str w0,[sp,#156]
.L_4036d8:

            ldr w1,[sp,#156]
            ldr w0,[sp,#152]
            sub w0,w1,w0
            mov w2,w0
            ldr w1,[sp,#152]
            ldr x0,[sp,#128]
            bl substr

            str x0,[sp,#88]
            ldr w0,[sp,#148]
            cmp w0,#0
            b.ne .L_403748

            adrp x0, .L_418cb8
            add x1,x0, :lo12:.L_418cb8
            ldr x0,[sp,#88]
            bl strcspn

            str w0,[sp,#156]
            ldr x0,[sp,#88]
            bl strlen

            mov w1,w0
            ldr w0,[sp,#156]
            cmp w0,w1
            b.eq .L_403740

            ldrsw x0,[sp,#156]
            ldr x1,[sp,#88]
            add x0,x1,x0
            strb wzr,[x0]
.L_403740:

            ldr x0,[sp,#88]
            bl trimr
.L_403748:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403778

            add x0,sp,#32
            ldr x3,[sp,#88]
            ldr x2,[sp,#96]
            mov x1,x0
            adrp x0, .L_418cc0
            add x0,x0, :lo12:.L_418cc0
            bl printf
.L_403778:

            ldr x0,[sp,#120]
            ldr x0,[x0]
            mov w4,#0
            mov w3,#0
            ldr x2,[sp,#88]
            ldr x1,[sp,#96]
            bl hlist_add

            mov x1,x0
            ldr x0,[sp,#120]
            str x1,[x0]
            b .L_4037c0
.L_4037a4:

            nop
            nop
            nop
            nop
            b .L_4037c0
.L_4037ac:

            nop
            nop
            nop
            nop
            b .L_4037c0
.L_4037b4:

            nop
            nop
            nop
            nop
            b .L_4037c0
.L_4037bc:

            nop
            nop
            nop
            nop
.L_4037c0:

            ldr x0,[sp,#136]
            bl feof

            cmp w0,#0
            b.eq .L_4032c8

            b .L_4037d8
.L_4037d4:

            nop
            nop
            nop
            nop
.L_4037d8:

            ldr x0,[sp,#128]
            bl free

            ldr x0,[sp,#136]
            bl fclose

            ldr x0,[sp,#120]
.L_4037ec:

            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_open, . - config_open
.align 2
#-----------------------------------
.globl config_set
.type config_set, @function
#-----------------------------------
config_set:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#40]
            ldr x0,[x0]
            mov w3,#1
            ldr x2,[sp,#24]
            ldr x1,[sp,#32]
            bl hlist_mod

            mov x1,x0
            ldr x0,[sp,#40]
            str x1,[x0]
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_set, . - config_set
.align 3
#-----------------------------------
.globl config_pop
.type config_pop, @function
#-----------------------------------
config_pop:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            bl hlist_get

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_403890

            ldr x0,[sp,#40]
            bl strdup

            str x0,[sp,#40]
            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            bl hlist_del

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0]
.L_403890:

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_pop, . - config_pop
.align 2
#-----------------------------------
.globl config_count
.type config_count, @function
#-----------------------------------
config_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            ldr x0,[x0]
            bl hlist_count

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_count, . - config_count
.align 2
#-----------------------------------
.globl config_close
.type config_close, @function
#-----------------------------------
config_close:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4038f8

            ldr x0,[sp,#24]
            ldr x0,[x0]
            bl hlist_free

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0]
            ldr x0,[sp,#24]
            bl free

            b .L_4038fc
.L_4038f8:

            nop
            nop
            nop
            nop
.L_4038fc:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_close, . - config_close
.align 2
#-----------------------------------
.globl host_connect
.type host_connect, @function
#-----------------------------------
host_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            bl __errno_location

            str wzr,[x0]
            add x0,sp,#32
            ldr w2,[sp,#20]
            ldr x1,[sp,#24]
            bl so_resolv

            cmp w0,#0
            b.ne .L_40393c

            mov w0,#-1
            b .L_403954
.L_40393c:

            ldr x0,[sp,#32]
            bl so_connect

            str w0,[sp,#44]
            ldr x0,[sp,#32]
            bl freeaddrinfo

            ldr w0,[sp,#44]
.L_403954:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size host_connect, . - host_connect
.align 2
#-----------------------------------
.globl www_authenticate
.type www_authenticate, @function
#-----------------------------------
www_authenticate:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -112
            str w0,[sp,#76]
            str w1,[sp,#72]
            str x2,[sp,#64]
            str x3,[sp,#56]
            str x4,[sp,#48]
            str w5,[sp,#44]
            str wzr,[sp,#124]
            mov x0,#4096
            bl zmalloc

            str x0,[sp,#112]
            mov x2,#4096
            adrp x0, .L_418cd8
            add x1,x0, :lo12:.L_418cd8
            ldr x0,[sp,#112]
            bl strlcpy

            add x0,sp,#88
            ldr x1,[sp,#48]
            bl ntlm_request

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.eq .L_4039e0

            ldr x0,[sp,#112]
            add x0,x0,#5
            ldr x1,[sp,#88]
            ldrsw x2,[sp,#108]
            mov x3,#4091
            bl to_base64

            ldr x0,[sp,#88]
            bl free
.L_4039e0:

            ldr x0,[sp,#64]
            bl dup_rr_data

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            adrp x0, .L_418ce0
            add x2,x0, :lo12:.L_418ce0
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            ldr x2,[sp,#112]
            adrp x0, .L_418d00
            add x1,x0, :lo12:.L_418d00
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            adrp x0, .L_418d10
            add x2,x0, :lo12:.L_418d10
            adrp x0, .L_418d18
            add x1,x0, :lo12:.L_418d18
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#80]
            ldr x2,[x0,#8]
            ldr x19,[sp,#80]
            adrp x0, .L_418d28
            add x1,x0, :lo12:.L_418d28
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.ne .L_403aac

            ldr x1,[sp,#56]
            ldr w0,[sp,#76]
            bl http_body_drop

            cmp w0,#0
            b.eq .L_403dcc
.L_403aac:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403ad8

            adrp x0, .L_418d40
            add x0,x0, :lo12:.L_418d40
            bl puts

            ldr x0,[sp,#80]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_403ad8:

            ldr x0,[sp,#80]
            mov x1,x0
            ldr w0,[sp,#76]
            bl headers_send

            cmp w0,#0
            b.eq .L_403dd4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403b10

            adrp x0, .L_418d60
            add x0,x0, :lo12:.L_418d60
            bl puts
.L_403b10:

            ldr x0,[sp,#80]
            bl reset_rr_data

            ldr x0,[sp,#80]
            mov x1,x0
            ldr w0,[sp,#76]
            bl headers_recv

            cmp w0,#0
            b.eq .L_403ddc

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403b50

            ldr x0,[sp,#80]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_403b50:

            ldr x0,[sp,#80]
            ldr w0,[x0,#16]
            cmp w0,#401
            b.ne .L_403de4

            ldr x0,[sp,#80]
            mov x1,x0
            ldr w0,[sp,#76]
            bl http_body_drop

            cmp w0,#0
            b.eq .L_403dec

            ldr x0,[sp,#80]
            ldr x2,[x0,#8]
            adrp x0, .L_418d80
            add x1,x0, :lo12:.L_418d80
            mov x0,x2
            bl hlist_get

            str x0,[sp,#88]
            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_403cf0

            ldr x0,[sp,#88]
            bl strlen

            cmp x0,#14
            b.ls .L_403cf0

            ldr x0,[sp,#88]
            bl strlen

            add x0,x0,#6
            bl zmalloc

            str x0,[sp,#96]
            ldr x0,[sp,#88]
            add x0,x0,#5
            mov x1,x0
            ldr x0,[sp,#96]
            bl from_base64

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#40
            b.le .L_403cc4

            str xzr,[sp,#88]
            add x0,sp,#88
            ldr x3,[sp,#48]
            ldr w2,[sp,#108]
            ldr x1,[sp,#96]
            bl ntlm_response

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.le .L_403c90

            mov x2,#4096
            adrp x0, .L_418cd8
            add x1,x0, :lo12:.L_418cd8
            ldr x0,[sp,#112]
            bl strlcpy

            ldr x0,[sp,#112]
            add x0,x0,#5
            ldr x1,[sp,#88]
            ldrsw x2,[sp,#108]
            mov x3,#4091
            bl to_base64

            ldr x0,[sp,#64]
            ldr x4,[x0,#8]
            mov w3,#1
            ldr x2,[sp,#112]
            adrp x0, .L_418d00
            add x1,x0, :lo12:.L_418d00
            mov x0,x4
            bl hlist_mod

            mov x1,x0
            ldr x0,[sp,#64]
            str x1,[x0,#8]
            ldr x0,[sp,#88]
            bl free

            ldr x0,[sp,#96]
            bl free

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403d20

            b .L_403d14
.L_403c90:

            adrp x0, .L_418d98
            add x1,x0, :lo12:.L_418d98
            mov w0,#3
            bl syslog

            ldr x0,[sp,#56]
            adrp x1, .L_418dc8
            add x1,x1, :lo12:.L_418dc8
            str x1,[x0,#96]
            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#88]
            bl free

            b .L_403e10
.L_403cc4:

            adrp x0, .L_418df0
            add x1,x0, :lo12:.L_418df0
            mov w0,#3
            bl syslog

            ldr x0,[sp,#56]
            adrp x1, .L_418dc8
            add x1,x1, :lo12:.L_418dc8
            str x1,[x0,#96]
            ldr x0,[sp,#96]
            bl free

            b .L_403e10
.L_403cf0:

            adrp x0, .L_418e18
            add x1,x0, :lo12:.L_418e18
            mov w0,#4
            bl syslog

            ldr x0,[sp,#56]
            adrp x1, .L_418e40
            add x1,x1, :lo12:.L_418e40
            str x1,[x0,#96]
            b .L_403e10
.L_403d14:

            adrp x0, .L_418e68
            add x0,x0, :lo12:.L_418e68
            bl puts
.L_403d20:

            ldr x1,[sp,#64]
            ldr w0,[sp,#76]
            bl headers_send

            cmp w0,#0
            b.eq .L_403df4

            ldr x0,[sp,#80]
            bl reset_rr_data

            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_403d68

            ldr x0,[sp,#80]
            mov x3,x0
            ldr x2,[sp,#64]
            ldr w1,[sp,#72]
            ldr w0,[sp,#76]
            bl http_body_send

            cmp w0,#0
            b.eq .L_403dfc
.L_403d68:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403d88

            adrp x0, .L_418e80
            add x0,x0, :lo12:.L_418e80
            bl puts
.L_403d88:

            ldr x0,[sp,#80]
            mov x1,x0
            ldr w0,[sp,#76]
            bl headers_recv

            cmp w0,#0
            b.eq .L_403e04

            mov w0,#1
            str w0,[sp,#124]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403e0c

            ldr x0,[sp,#80]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_403e10
.L_403dcc:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403dd4:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403ddc:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403de4:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403dec:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403df4:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403dfc:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403e04:

            nop
            nop
            nop
            nop
            b .L_403e10
.L_403e0c:

            nop
            nop
            nop
            nop
.L_403e10:

            ldr w0,[sp,#124]
            cmp w0,#0
            b.eq .L_403e2c

            ldr x0,[sp,#80]
            mov x1,x0
            ldr x0,[sp,#56]
            bl copy_rr_data
.L_403e2c:

            add x0,sp,#80
            bl free_rr_data

            ldr x0,[sp,#112]
            bl free

            ldr w0,[sp,#124]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size www_authenticate, . - www_authenticate
.align 2
#-----------------------------------
.globl direct_request
.type direct_request, @function
#-----------------------------------
direct_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -192
.cfi_offset 20, -184
            str x0,[sp,#40]
            str x1,[sp,#32]
            str xzr,[sp,#144]
            str xzr,[sp,#152]
            str xzr,[sp,#200]
            str xzr,[sp,#192]
            str wzr,[sp,#184]
            str xzr,[sp,#176]
            str wzr,[sp,#168]
            str wzr,[sp,#172]
            ldr x0,[sp,#40]
            ldr w0,[x0]
            str w0,[sp,#104]
            add x0,sp,#56
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#40]
            add x0,x0,#16
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#40]
            add x0,x0,#16
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_403ed4

            ldr x0,[sp,#40]
            add x0,x0,#16
            add x0,x0,#4
            b .L_403ee0
.L_403ed4:

            ldr x0,[sp,#40]
            add x0,x0,#16
            add x0,x0,#8
.L_403ee0:

            add x1,sp,#56
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403f18

            adrp x0, .L_418ea8
            add x0,x0, :lo12:.L_418ea8
            bl puts
.L_403f18:

            ldr x0,[sp,#32]
            ldr x2,[x0,#64]
            ldr x0,[sp,#32]
            ldr w0,[x0,#32]
            mov w1,w0
            mov x0,x2
            bl host_connect

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.ge .L_403fd0

            ldr x0,[sp,#32]
            ldr x19,[x0,#64]
            ldr x0,[sp,#32]
            ldr w20,[x0,#32]
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x4,x0
            mov w3,w20
            mov x2,x19
            adrp x0, .L_418ec8
            add x1,x0, :lo12:.L_418ec8
            mov w0,#4
            bl syslog

            ldr x0,[sp,#32]
            ldr x19,[x0,#72]
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            mov x0,x19
            bl gen_502_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_403fd0:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            bl dup_auth

            str x0,[sp,#192]
            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_404018

            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            bl strdup

            str x0,[sp,#176]
            ldr x0,[sp,#32]
            ldr w0,[x0,#32]
            str w0,[sp,#168]
            b .L_404064
.L_404018:

            ldr x0,[sp,#32]
            ldr x2,[x0,#72]
            adrp x0, .L_418ef0
            add x1,x0, :lo12:.L_418ef0
            mov x0,x2
            bl gen_502_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404064:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_4040e4

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_4040ac

            ldr x0,[sp,#32]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4040ac

            ldr x0,[sp,#32]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_418f08
            add x0,x0, :lo12:.L_418f08
            bl strcasecmp

            cmp w0,#0
            b.eq .L_4040c8
.L_4040ac:

            mov x1,#0
            ldr x0,[sp,#32]
            bl http_has_body

            cmp x0,#0
            b.eq .L_4040c8

            mov w0,#1
            b .L_4040cc
.L_4040c8:

            mov w0,#0
.L_4040cc:

            str w0,[sp,#184]
            ldr x0,[sp,#32]
            bl dup_rr_data

            str x0,[sp,#144]
            str xzr,[sp,#32]
            b .L_4040ec
.L_4040e4:

            bl new_rr_data

            str x0,[sp,#144]
.L_4040ec:

            bl new_rr_data

            str x0,[sp,#152]
            add x0,sp,#104
            str x0,[sp,#120]
            ldr x0,[sp,#120]
            str x0,[sp,#128]
            add x0,sp,#108
            str x0,[sp,#112]
            ldr x0,[sp,#112]
            str x0,[sp,#136]
            str wzr,[sp,#172]
            str wzr,[sp,#188]
            b .L_404c4c
.L_404120:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr w0,[x0,#28]
            cmp w0,#0
            b.eq .L_4041f4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40419c

            ldr w0,[sp,#188]
            add w0,w0,#1
            ldr w1,[sp,#104]
            ldr w2,[sp,#108]
            mov w3,w2
            mov w2,w1
            mov w1,w0
            adrp x0, .L_418f10
            add x0,x0, :lo12:.L_418f10
            bl printf

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#128
            ldr x0,[x1,x0]
            ldr w0,[x0]
            mov w1,w0
            adrp x0, .L_418f38
            add x0,x0, :lo12:.L_418f38
            bl printf
.L_40419c:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#128
            ldr x0,[x1,x0]
            ldr w2,[x0]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            mov x1,x0
            mov w0,w2
            bl headers_recv

            cmp w0,#0
            b.ne .L_4041f4

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_4041f4:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_40429c

            ldr x0,[sp,#176]
            cmp x0,#0
            b.eq .L_40429c

            ldr x0,[sp,#144]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_40429c

            ldr x0,[sp,#144]
            ldr x0,[x0,#64]
            mov x1,x0
            ldr x0,[sp,#176]
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40424c

            ldr x0,[sp,#144]
            ldr w0,[x0,#32]
            ldr w1,[sp,#168]
            cmp w1,w0
            b.eq .L_40429c
.L_40424c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404278

            ldr x0,[sp,#144]
            ldr x0,[x0,#48]
            mov x1,x0
            adrp x0, .L_418f58
            add x0,x0, :lo12:.L_418f58
            bl printf
.L_404278:

            ldr x0,[sp,#144]
            bl dup_rr_data

            str x0,[sp,#200]
            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            b .L_404cb0
.L_40429c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4042c8

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_4042c8:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_404454

            ldr x0,[sp,#144]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404454

            ldr x0,[sp,#144]
            ldr x1,[x0,#40]
            ldr x0,[sp,#144]
            ldr x2,[x0,#48]
            add x0,sp,#56
            mov x4,x2
            mov x3,x1
            mov x2,x0
            adrp x0, .L_418f78
            add x1,x0, :lo12:.L_418f78
            mov w0,#7
            bl syslog

            ldr x0,[sp,#144]
            ldr x0,[x0,#56]
            cmp x0,#0
            b.eq .L_404354

            ldr x0,[sp,#144]
            ldr x0,[x0,#48]
            cmp x0,#0
            b.eq .L_404340

            ldr x0,[sp,#144]
            ldr x0,[x0,#48]
            bl free
.L_404340:

            ldr x0,[sp,#144]
            ldr x0,[x0,#56]
            ldr x19,[sp,#144]
            bl strdup

            str x0,[x19,#48]
.L_404354:

            ldr x0,[sp,#144]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.le .L_4043cc

            ldr x0,[sp,#144]
            ldr x4,[x0,#8]
            ldr x19,[sp,#144]
            mov w3,#1
            adrp x0, .L_418ce0
            add x2,x0, :lo12:.L_418ce0
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            b .L_4043cc
.L_404394:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x19,[x1,x0]
            adrp x0, .L_418f88
            add x1,x0, :lo12:.L_418f88
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
.L_4043cc:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            adrp x0, .L_418f88
            add x1,x0, :lo12:.L_418f88
            mov x0,x2
            bl hlist_get

            cmp x0,#0
            b.ne .L_404394

            ldr x0,[sp,#144]
            ldr x3,[x0,#8]
            ldr x2,[sp,#192]
            adrp x0, .L_418d00
            add x1,x0, :lo12:.L_418d00
            mov x0,x3
            bl http_parse_basic

            cmp w0,#0
            b.le .L_404454

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404454

            ldr x0,[sp,#192]
            add x1,x0,#50
            ldr x2,[sp,#192]
            ldr x0,[sp,#192]
            add x0,x0,#100
            mov x3,x0
            adrp x0, .L_418fa0
            add x0,x0, :lo12:.L_418fa0
            bl printf
.L_404454:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_404540

            ldr x0,[sp,#144]
            cmp x0,#0
            b.eq .L_404540

            ldr x0,[sp,#144]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404540

            ldr x0,[sp,#144]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_418f08
            add x0,x0, :lo12:.L_418f08
            bl strcasecmp

            cmp w0,#0
            b.ne .L_404540

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4044bc

            adrp x0, .L_418fd0
            add x0,x0, :lo12:.L_418fd0
            bl puts
.L_4044bc:

            ldr x0,[sp,#152]
            str wzr,[x0,#28]
            ldr x0,[sp,#152]
            str wzr,[x0]
            ldr x0,[sp,#152]
            mov w1,#200
            str w1,[x0,#16]
            ldr x19,[sp,#152]
            adrp x0, .L_418fe0
            add x0,x0, :lo12:.L_418fe0
            bl strdup

            str x0,[x19,#80]
            ldr x0,[sp,#144]
            ldr x0,[x0,#72]
            ldr x19,[sp,#152]
            bl strdup

            str x0,[x19,#72]
            ldr w0,[sp,#104]
            ldr x1,[sp,#152]
            bl headers_send

            cmp w0,#0
            b.eq .L_404520

            ldr w0,[sp,#104]
            ldr w1,[sp,#108]
            bl tunnel
.L_404520:

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404540:

            ldr w0,[sp,#188]
            cmp w0,#1
            b.ne .L_4047e8

            ldr x0,[sp,#152]
            ldr w0,[x0,#16]
            cmp w0,#401
            b.ne .L_4047e8

            ldr x0,[sp,#152]
            ldr x3,[x0,#8]
            adrp x0, .L_418ff8
            add x2,x0, :lo12:.L_418ff8
            adrp x0, .L_418d80
            add x1,x0, :lo12:.L_418d80
            mov x0,x3
            bl hlist_subcmp_all

            cmp w0,#0
            b.eq .L_4047e8

            ldr x0,[sp,#152]
            ldr x3,[x0,#8]
            adrp x0, .L_419000
            add x2,x0, :lo12:.L_419000
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_40468c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4045cc

            adrp x0, .L_419008
            add x0,x0, :lo12:.L_419008
            bl puts
.L_4045cc:

            ldr w0,[sp,#108]
            bl close

            ldr x0,[sp,#152]
            ldr x4,[x0,#8]
            ldr x19,[sp,#152]
            mov w3,#1
            adrp x0, .L_418d10
            add x2,x0, :lo12:.L_418d10
            adrp x0, .L_418d18
            add x1,x0, :lo12:.L_418d18
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#144]
            ldr x2,[x0,#64]
            ldr x0,[sp,#144]
            ldr w0,[x0,#32]
            mov w1,w0
            mov x0,x2
            bl host_connect

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.ge .L_40468c

            ldr x0,[sp,#144]
            ldr x2,[x0,#72]
            adrp x0, .L_419028
            add x1,x0, :lo12:.L_419028
            mov x0,x2
            bl gen_502_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_40468c:

            ldr x0,[sp,#112]
            ldr w6,[x0]
            ldr x0,[sp,#128]
            ldr w0,[x0]
            ldr x1,[sp,#144]
            ldr x2,[sp,#152]
            ldr w5,[sp,#184]
            ldr x4,[sp,#192]
            mov x3,x2
            mov x2,x1
            mov w1,w0
            mov w0,w6
            bl www_authenticate

            cmp w0,#0
            b.ne .L_404768

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4046e8

            adrp x0, .L_419050
            add x0,x0, :lo12:.L_419050
            bl puts
.L_4046e8:

            ldr x0,[sp,#152]
            ldr x2,[x0,#72]
            ldr x0,[sp,#152]
            ldr x0,[x0,#96]
            cmp x0,#0
            b.eq .L_40470c

            ldr x0,[sp,#152]
            ldr x0,[x0,#96]
            b .L_404714
.L_40470c:

            adrp x0, .L_419070
            add x0,x0, :lo12:.L_419070
.L_404714:

            mov x1,x0
            mov x0,x2
            bl gen_502_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404768:

            ldr x0,[sp,#152]
            ldr w0,[x0,#16]
            cmp w0,#401
            b.ne .L_4047e4

            ldr x0,[sp,#152]
            ldr x3,[x0,#72]
            ldr x0,[sp,#144]
            ldr x1,[x0,#64]
            ldr x0,[sp,#144]
            ldr w0,[x0,#32]
            mov w2,w0
            mov x0,x3
            bl gen_401_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_4047e4:

            str wzr,[sp,#184]
.L_4047e8:

            ldr w0,[sp,#188]
            cmp w0,#1
            b.ne .L_4048c4

            ldr w0,[sp,#184]
            cmp w0,#0
            b.eq .L_4048c4

            ldr w0,[sp,#108]
            bl so_closed

            cmp w0,#0
            b.eq .L_4048b4

            ldr w0,[sp,#108]
            bl close

            ldr x0,[sp,#144]
            ldr x2,[x0,#64]
            ldr x0,[sp,#144]
            ldr w0,[x0,#32]
            mov w1,w0
            mov x0,x2
            bl host_connect

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.ge .L_4048a4

            ldr x0,[sp,#144]
            ldr x2,[x0,#72]
            adrp x0, .L_419090
            add x1,x0, :lo12:.L_419090
            mov x0,x2
            bl gen_502_page

            str x0,[sp,#160]
            ldr w19,[sp,#104]
            ldr x0,[sp,#160]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#160]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#160]
            bl free

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_4048a4:

            adrp x0, .L_4190b8
            add x1,x0, :lo12:.L_4190b8
            mov w0,#7
            bl syslog
.L_4048b4:

            ldr x0,[sp,#152]
            bl reset_rr_data

            str wzr,[sp,#184]
            str wzr,[sp,#188]
.L_4048c4:

            ldr w0,[sp,#188]
            cmp w0,#1
            b.ne .L_4049f4

            ldr x0,[sp,#152]
            ldr x3,[x0,#8]
            adrp x0, .L_419000
            add x2,x0, :lo12:.L_419000
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.ne .L_404924

            ldr x0,[sp,#144]
            ldr x1,[sp,#152]
            bl http_has_body

            cmn x0,#1
            b.eq .L_404924

            ldr x0,[sp,#144]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.le .L_404924

            mov w0,#1
            b .L_404928
.L_404924:

            mov w0,#0
.L_404928:

            str w0,[sp,#172]
            ldr w0,[sp,#172]
            cmp w0,#0
            b.eq .L_404994

            ldr x0,[sp,#152]
            ldr x4,[x0,#8]
            ldr x19,[sp,#152]
            mov w3,#1
            adrp x0, .L_418ce0
            add x2,x0, :lo12:.L_418ce0
            adrp x0, .L_4190d8
            add x1,x0, :lo12:.L_4190d8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#152]
            ldr x4,[x0,#8]
            ldr x19,[sp,#152]
            mov w3,#1
            adrp x0, .L_418ce0
            add x2,x0, :lo12:.L_418ce0
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            b .L_4049f4
.L_404994:

            ldr x0,[sp,#152]
            ldr x4,[x0,#8]
            ldr x19,[sp,#152]
            mov w3,#1
            adrp x0, .L_419000
            add x2,x0, :lo12:.L_419000
            adrp x0, .L_4190d8
            add x1,x0, :lo12:.L_4190d8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#152]
            ldr x4,[x0,#8]
            ldr x19,[sp,#152]
            mov w3,#1
            adrp x0, .L_419000
            add x2,x0, :lo12:.L_419000
            adrp x0, .L_418cf0
            add x1,x0, :lo12:.L_418cf0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            mov x0,#-1
            str x0,[sp,#200]
.L_4049f4:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404aa0

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#112
            ldr x0,[x1,x0]
            ldr w0,[x0]
            mov w1,w0
            adrp x0, .L_4190f0
            add x0,x0, :lo12:.L_4190f0
            bl printf

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_404aa0

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x4,[x0,#40]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x2,[x0,#48]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x0,[x0,#72]
            mov x3,x0
            mov x1,x4
            adrp x0, .L_419110
            add x0,x0, :lo12:.L_419110
            bl printf

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_404aa0:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_404b7c

            ldr w0,[sp,#184]
            cmp w0,#0
            b.eq .L_404b7c

            ldr x0,[sp,#144]
            bl dup_rr_data

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            ldr x0,[x0,#40]
            bl free

            ldr x19,[sp,#48]
            adrp x0, .L_419120
            add x0,x0, :lo12:.L_419120
            bl strdup

            str x0,[x19,#40]
            ldr x0,[sp,#48]
            ldr x4,[x0,#8]
            ldr x19,[sp,#48]
            mov w3,#1
            adrp x0, .L_418d10
            add x2,x0, :lo12:.L_418d10
            adrp x0, .L_418d18
            add x1,x0, :lo12:.L_418d18
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#48]
            ldr x2,[x0,#8]
            ldr x19,[sp,#48]
            adrp x0, .L_418d28
            add x1,x0, :lo12:.L_418d28
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
            ldr x0,[sp,#112]
            ldr w0,[x0]
            ldr x1,[sp,#48]
            bl headers_send

            cmp w0,#0
            b.ne .L_404b70

            add x0,sp,#48
            bl free_rr_data

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404b70:

            add x0,sp,#48
            bl free_rr_data

            b .L_404c40
.L_404b7c:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#112
            ldr x0,[x1,x0]
            ldr w2,[x0]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#144
            ldr x0,[x1,x0]
            mov x1,x0
            mov w0,w2
            bl headers_send

            cmp w0,#0
            b.ne .L_404bd4

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404bd4:

            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#112
            ldr x0,[x1,x0]
            ldr w4,[x0]
            ldrsw x0,[sp,#188]
            lsl x0,x0,#3
            add x1,sp,#128
            ldr x0,[x1,x0]
            ldr w0,[x0]
            ldr x1,[sp,#144]
            ldr x2,[sp,#152]
            mov x3,x2
            mov x2,x1
            mov w1,w0
            mov w0,w4
            bl http_body_send

            cmp w0,#0
            b.ne .L_404c40

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#200]
            b .L_404cb0
.L_404c40:

            ldr w0,[sp,#188]
            add w0,w0,#1
            str w0,[sp,#188]
.L_404c4c:

            ldr w0,[sp,#188]
            cmp w0,#1
            b.le .L_404120

            add x0,sp,#144
            bl free_rr_data

            add x0,sp,#144
            add x0,x0,#8
            bl free_rr_data

            ldr w0,[sp,#172]
            cmp w0,#0
            b.eq .L_404cac

            ldr w0,[sp,#108]
            bl so_closed

            cmp w0,#0
            b.ne .L_404cac

            ldr w0,[sp,#104]
            bl so_closed

            cmp w0,#0
            b.ne .L_404cac

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404064
.L_404cac:

            nop
            nop
            nop
            nop
.L_404cb0:

            ldr x0,[sp,#192]
            cmp x0,#0
            b.eq .L_404cc4

            ldr x0,[sp,#192]
            bl free
.L_404cc4:

            ldr x0,[sp,#176]
            cmp x0,#0
            b.eq .L_404cd8

            ldr x0,[sp,#176]
            bl free
.L_404cd8:

            ldr w0,[sp,#108]
            cmp w0,#0
            b.lt .L_404cec

            ldr w0,[sp,#108]
            bl close
.L_404cec:

            ldr x0,[sp,#200]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size direct_request, . - direct_request
.align 2
#-----------------------------------
.globl direct_tunnel
.type direct_tunnel, @function
#-----------------------------------
direct_tunnel:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#24]
            str wzr,[sp,#124]
            ldr x0,[sp,#24]
            ldr w0,[x0]
            str w0,[sp,#120]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            str x0,[sp,#112]
            add x0,sp,#40
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_404d6c

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#4
            b .L_404d78
.L_404d6c:

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#8
.L_404d78:

            add x1,sp,#40
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            ldr x0,[sp,#112]
            bl strdup

            str x0,[sp,#104]
            mov w1,#58
            ldr x0,[sp,#104]
            bl strchr

            str x0,[sp,#96]
            ldr x0,[sp,#96]
            cmp x0,#0
            b.eq .L_404dd8

            ldr x0,[sp,#96]
            strb wzr,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#1
            str x0,[sp,#96]
            ldr x0,[sp,#96]
            bl atoi

            str w0,[sp,#124]
.L_404dd8:

            ldr w1,[sp,#124]
            ldr x0,[sp,#104]
            bl host_connect

            str w0,[sp,#92]
            ldr w0,[sp,#92]
            cmp w0,#0
            b.le .L_404e48

            add x0,sp,#40
            ldr x3,[sp,#112]
            mov x2,x0
            adrp x0, .L_419128
            add x1,x0, :lo12:.L_419128
            mov w0,#7
            bl syslog

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_404e38

            ldr w2,[sp,#120]
            ldr x1,[sp,#112]
            adrp x0, .L_419138
            add x0,x0, :lo12:.L_419138
            bl printf
.L_404e38:

            ldr w1,[sp,#92]
            ldr w0,[sp,#120]
            bl tunnel

            b .L_404e4c
.L_404e48:

            nop
            nop
            nop
            nop
.L_404e4c:

            ldr x0,[sp,#104]
            bl free

            ldr w0,[sp,#92]
            cmp w0,#0
            b.lt .L_404e68

            ldr w0,[sp,#92]
            bl close
.L_404e68:

            ldr w0,[sp,#120]
            bl close

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size direct_tunnel, . - direct_tunnel
.align 2
#-----------------------------------
.globl forward_request
.type forward_request, @function
#-----------------------------------
forward_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-240]!
.cfi_def_cfa_offset 240
.cfi_offset 29, -240
.cfi_offset 30, -232
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -224
            str x0,[sp,#40]
            str x1,[sp,#32]
            str wzr,[sp,#228]
            str xzr,[sp,#120]
            str xzr,[sp,#128]
            str xzr,[sp,#216]
            str xzr,[sp,#112]
            str xzr,[sp,#200]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_404ed4

            adrp x0, .L_419a78
            add x3,x0, :lo12:.L_419a78
            mov w2,#96
            adrp x0, .L_419160
            add x1,x0, :lo12:.L_419160
            adrp x0, .L_419170
            add x0,x0, :lo12:.L_419170
            bl __assert_fail
.L_404ed4:

            ldr x0,[sp,#40]
            ldr w0,[x0]
            str w0,[sp,#104]
            add x0,sp,#56
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#40]
            add x0,x0,#16
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#40]
            add x0,x0,#16
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_404f28

            ldr x0,[sp,#40]
            add x0,x0,#16
            add x0,x0,#4
            b .L_404f34
.L_404f28:

            ldr x0,[sp,#40]
            add x0,x0,#16
            add x0,x0,#8
.L_404f34:

            add x1,sp,#56
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop
.L_404f4c:

            str wzr,[sp,#108]
            str wzr,[sp,#196]
            ldr w0,[sp,#196]
            str w0,[sp,#192]
            ldr w0,[sp,#192]
            str w0,[sp,#188]
            ldr w0,[sp,#188]
            str w0,[sp,#184]
            ldr w0,[sp,#184]
            str w0,[sp,#180]
            add x0,sp,#104
            str x0,[sp,#144]
            ldr x0,[sp,#144]
            str x0,[sp,#152]
            add x0,sp,#108
            str x0,[sp,#136]
            ldr x0,[sp,#136]
            str x0,[sp,#160]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405000

            ldr w0,[sp,#228]
            cmp w0,#0
            b.eq .L_404fc0

            adrp x0, .L_419188
            add x0,x0, :lo12:.L_419188
            b .L_404fc8
.L_404fc0:

            adrp x0, .L_419198
            add x0,x0, :lo12:.L_419198
.L_404fc8:

            mov x1,x0
            adrp x0, .L_4191a0
            add x0,x0, :lo12:.L_4191a0
            bl printf

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_lock

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            bl plist_dump

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_unlock
.L_405000:

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_lock

            add x0,sp,#112
            mov x1,x0
            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            bl plist_pop

            str w0,[sp,#176]
            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_unlock

            ldr w0,[sp,#176]
            cmp w0,#0
            b.eq .L_40507c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405060

            ldr w1,[sp,#176]
            adrp x0, .L_4191b8
            add x0,x0, :lo12:.L_4191b8
            bl printf
.L_405060:

            ldr w0,[sp,#176]
            str w0,[sp,#108]
            mov w0,#1
            str w0,[sp,#188]
            mov w0,#1
            str w0,[sp,#180]
            b .L_405118
.L_40507c:

            bl new_auth

            str x0,[sp,#112]
            ldr x3,[sp,#112]
            ldr x0,[sp,#32]
            ldr x1,[x0,#48]
            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            mov x2,x0
            mov x0,x3
            bl proxy_connect

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmn w0,#2
            b.ne .L_4050c0

            mov x0,#-2
            str x0,[sp,#216]
            b .L_405d9c
.L_4050c0:

            ldr w0,[sp,#108]
            cmp w0,#0
            b.ge .L_405118

            ldr x0,[sp,#32]
            ldr x2,[x0,#72]
            adrp x0, .L_4191e0
            add x1,x0, :lo12:.L_4191e0
            mov x0,x2
            bl gen_502_page

            str x0,[sp,#168]
            ldr w19,[sp,#104]
            ldr x0,[sp,#168]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#168]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#168]
            bl free

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_405118:

            ldr x0,[sp,#200]
            cmp x0,#0
            b.ne .L_405144

            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_405144

            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            bl strdup

            str x0,[sp,#200]
.L_405144:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_40517c

            ldr w0,[sp,#228]
            cmp w0,#0
            b.eq .L_405168

            ldr x0,[sp,#32]
            str x0,[sp,#120]
            b .L_405174
.L_405168:

            ldr x0,[sp,#32]
            bl dup_rr_data

            str x0,[sp,#120]
.L_405174:

            str xzr,[sp,#32]
            b .L_405184
.L_40517c:

            bl new_rr_data

            str x0,[sp,#120]
.L_405184:

            bl new_rr_data

            str x0,[sp,#128]
            str wzr,[sp,#228]
            str wzr,[sp,#196]
            str wzr,[sp,#192]
            str wzr,[sp,#236]
            b .L_405d2c
.L_4051a0:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr w0,[x0,#28]
            cmp w0,#0
            b.eq .L_40527c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405224

            ldr w0,[sp,#236]
            add w0,w0,#1
            ldr w1,[sp,#104]
            ldr w2,[sp,#108]
            ldr w5,[sp,#184]
            ldr w4,[sp,#188]
            mov w3,w2
            mov w2,w1
            mov w1,w0
            adrp x0, .L_419200
            add x0,x0, :lo12:.L_419200
            bl printf

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#152
            ldr x0,[x1,x0]
            ldr w0,[x0]
            mov w1,w0
            adrp x0, .L_419240
            add x0,x0, :lo12:.L_419240
            bl printf
.L_405224:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#152
            ldr x0,[x1,x0]
            ldr w2,[x0]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            mov x1,x0
            mov w0,w2
            bl headers_recv

            cmp w0,#0
            b.ne .L_40527c

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_40527c:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.ne .L_405384

            ldr x0,[sp,#200]
            cmp x0,#0
            b.eq .L_405384

            ldr x0,[sp,#120]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_405384

            ldr x0,[sp,#120]
            ldr x0,[x0,#64]
            mov x1,x0
            ldr x0,[sp,#200]
            bl strcasecmp

            cmp w0,#0
            b.eq .L_405384

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4052ec

            ldr x0,[sp,#120]
            ldr x0,[x0,#48]
            mov x1,x0
            adrp x0, .L_419260
            add x0,x0, :lo12:.L_419260
            bl printf
.L_4052ec:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_405360

            ldr x0,[sp,#120]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.le .L_405360

            ldr x0,[sp,#120]
            ldr x3,[x0,#8]
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.ne .L_405358

            ldr x0,[sp,#120]
            ldr x3,[x0,#8]
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_4192a8
            add x1,x0, :lo12:.L_4192a8
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_405360
.L_405358:

            mov w0,#1
            str w0,[sp,#196]
.L_405360:

            ldr x0,[sp,#120]
            bl dup_rr_data

            str x0,[sp,#216]
            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            b .L_405d9c
.L_405384:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4053b0

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_4053b0:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.ne .L_405400

            ldr x0,[sp,#120]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405400

            ldr x0,[sp,#120]
            ldr x1,[x0,#40]
            ldr x0,[sp,#120]
            ldr x2,[x0,#48]
            add x0,sp,#56
            mov x4,x2
            mov x3,x1
            mov x2,x0
            adrp x0, .L_4192b8
            add x1,x0, :lo12:.L_4192b8
            mov w0,#7
            bl syslog

            b .L_405404
.L_405400:

            nop
            nop
            nop
            nop
.L_405404:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.ne .L_405628

            ldr x0,[sp,#120]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405628

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x3,[x0,#8]
            ldr x0,[sp,#112]
            mov x2,x0
            adrp x0, .L_4192c8
            add x1,x0, :lo12:.L_4192c8
            mov x0,x3
            bl http_parse_basic

            cmp w0,#0
            b.le .L_405494

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405528

            ldr x0,[sp,#112]
            add x1,x0,#50
            ldr x0,[sp,#112]
            mov x2,x0
            ldr x0,[sp,#112]
            add x0,x0,#100
            mov x3,x0
            adrp x0, .L_4192e0
            add x0,x0, :lo12:.L_4192e0
            bl printf

            b .L_405528
.L_405494:

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405528

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4054c8

            adrp x0, .L_419310
            add x0,x0, :lo12:.L_419310
            bl puts
.L_4054c8:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x0,[x0,#72]
            bl gen_407_page

            str x0,[sp,#168]
            ldr w19,[sp,#104]
            ldr x0,[sp,#168]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#168]
            mov w0,w19
            bl write_wrapper

            ldr x0,[sp,#168]
            bl free

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_405528:

            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x0,[x0]
            str x0,[sp,#208]
            b .L_405578
.L_40553c:

            ldr x0,[sp,#120]
            ldr x4,[x0,#8]
            ldr x0,[sp,#208]
            ldr x1,[x0]
            ldr x0,[sp,#208]
            ldr x0,[x0,#8]
            ldr x19,[sp,#120]
            mov w3,#1
            mov x2,x0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#208]
            ldr x0,[x0,#24]
            str x0,[sp,#208]
.L_405578:

            ldr x0,[sp,#208]
            cmp x0,#0
            b.ne .L_40553c

            ldr x0,[sp,#120]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.le .L_4055fc

            ldr x0,[sp,#120]
            ldr x4,[x0,#8]
            ldr x19,[sp,#120]
            mov w3,#1
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            b .L_4055fc
.L_4055c4:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x19,[x1,x0]
            adrp x0, .L_4192c8
            add x1,x0, :lo12:.L_4192c8
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
.L_4055fc:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            adrp x0, .L_4192c8
            add x1,x0, :lo12:.L_4192c8
            mov x0,x2
            bl hlist_get

            cmp x0,#0
            b.ne .L_4055c4
.L_405628:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.ne .L_405714

            ldr x0,[sp,#120]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405714

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_405714

            ldr w0,[sp,#184]
            cmp w0,#0
            b.ne .L_405714

            ldr x0,[sp,#136]
            ldr x1,[sp,#120]
            ldr x2,[sp,#128]
            ldr x3,[sp,#112]
            bl proxy_authenticate

            cmp w0,#0
            b.ne .L_4056b8

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405698

            adrp x0, .L_419340
            add x0,x0, :lo12:.L_419340
            bl puts
.L_405698:

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_4056b8:

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.eq .L_40570c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4056e8

            adrp x0, .L_419360
            add x0,x0, :lo12:.L_419360
            bl puts
.L_4056e8:

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#399
            b.gt .L_405700

            mov w0,#1
            str w0,[sp,#184]
.L_405700:

            mov w0,#1
            str w0,[sp,#236]
            b .L_405404
.L_40570c:

            ldr x0,[sp,#128]
            bl reset_rr_data
.L_405714:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_4057ac

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_4057ac

            ldr w0,[sp,#180]
            cmp w0,#0
            b.ne .L_405748

            ldr w0,[sp,#184]
            cmp w0,#0
            b.eq .L_4057ac
.L_405748:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405770

            ldr w2,[sp,#184]
            ldr w1,[sp,#180]
            adrp x0, .L_419390
            add x0,x0, :lo12:.L_419390
            bl printf
.L_405770:

            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_405784

            ldr x0,[sp,#112]
            bl free
.L_405784:

            mov w0,#1
            str w0,[sp,#228]
            ldr x0,[sp,#120]
            str x0,[sp,#32]
            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            ldr w0,[sp,#108]
            bl close

            b .L_404f4c
.L_4057ac:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_4057dc

            ldr w0,[sp,#184]
            cmp w0,#0
            b.ne .L_4057dc

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.eq .L_4057dc

            mov w0,#1
            str w0,[sp,#188]
.L_4057dc:

            mov w0,#32767
            str w0,[sp,#232]
            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_405858

            adrp x0, scanner_plugin
            add x0,x0, :lo12:scanner_plugin
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405858

            ldr x6,[sp,#120]
            ldr x7,[sp,#128]
            ldr x2,[sp,#112]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#136
            ldr x0,[x1,x0]
            ldr w3,[x0]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#152
            ldr x1,[x1,x0]
            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            ldr x0,[x0]
            mov x5,x0
            mov x4,x1
            mov x1,x7
            mov x0,x6
            bl scanner_hook

            str w0,[sp,#232]
.L_405858:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_4059b0

            ldr x0,[sp,#128]
            ldr x3,[x0,#8]
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_4192a8
            add x1,x0, :lo12:.L_4192a8
            mov x0,x3
            bl hlist_subcmp

            str w0,[sp,#192]
            ldr w0,[sp,#192]
            cmp w0,#0
            b.ne .L_405948

            ldr x0,[sp,#120]
            cmp x0,#0
            b.eq .L_4058e0

            ldr x0,[sp,#120]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4058e0

            ldr x0,[sp,#120]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_4193c8
            add x0,x0, :lo12:.L_4193c8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_4058e0

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#200
            b.eq .L_405948
.L_4058e0:

            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_4193d0
            add x2,x0, :lo12:.L_4193d0
            adrp x0, .L_4192a8
            add x1,x0, :lo12:.L_4192a8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            b .L_405948
.L_405910:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x19,[x1,x0]
            adrp x0, .L_4193d8
            add x1,x0, :lo12:.L_4193d8
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
.L_405948:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x2,[x0,#8]
            adrp x0, .L_4193d8
            add x1,x0, :lo12:.L_4193d8
            mov x0,x2
            bl hlist_get

            cmp x0,#0
            b.ne .L_405910

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_4059b0

            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_4193f0
            add x2,x0, :lo12:.L_4193f0
            adrp x0, .L_4193d8
            add x1,x0, :lo12:.L_4193d8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
.L_4059b0:

            ldr w0,[sp,#232]
            and w0,w0,#1
            cmp w0,#0
            b.eq .L_405ac4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405a6c

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#136
            ldr x0,[x1,x0]
            ldr w0,[x0]
            mov w1,w0
            adrp x0, .L_419430
            add x0,x0, :lo12:.L_419430
            bl printf

            ldr w0,[sp,#236]
            cmp w0,#0
            b.ne .L_405a6c

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x4,[x0,#40]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x2,[x0,#48]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x0,[x0,#72]
            mov x3,x0
            mov x1,x4
            adrp x0, .L_419450
            add x0,x0, :lo12:.L_419450
            bl printf

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_405a6c:

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#136
            ldr x0,[x1,x0]
            ldr w2,[x0]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#120
            ldr x0,[x1,x0]
            mov x1,x0
            mov w0,w2
            bl headers_send

            cmp w0,#0
            b.ne .L_405ac4

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_405ac4:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_405b68

            ldr x0,[sp,#120]
            cmp x0,#0
            b.eq .L_405b68

            ldr x0,[sp,#120]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405b68

            ldr x0,[sp,#120]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_4193c8
            add x0,x0, :lo12:.L_4193c8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_405b68

            ldr x0,[sp,#128]
            ldr w0,[x0,#16]
            cmp w0,#200
            b.ne .L_405b68

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405b3c

            adrp x0, .L_419460
            add x0,x0, :lo12:.L_419460
            bl puts
.L_405b3c:

            ldr w0,[sp,#104]
            ldr w1,[sp,#108]
            bl tunnel

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_405b68:

            ldr w0,[sp,#232]
            and w0,w0,#2
            cmp w0,#0
            b.eq .L_405be4

            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#136
            ldr x0,[x1,x0]
            ldr w4,[x0]
            ldrsw x0,[sp,#236]
            lsl x0,x0,#3
            add x1,sp,#152
            ldr x0,[x1,x0]
            ldr w0,[x0]
            ldr x1,[sp,#120]
            ldr x2,[sp,#128]
            mov x3,x2
            mov x2,x1
            mov w1,w0
            mov w0,w4
            bl http_body_send

            cmp w0,#0
            b.ne .L_405be4

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#216]
            b .L_405d9c
.L_405be4:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.ne .L_405d20

            ldr x0,[sp,#128]
            ldr x3,[x0,#8]
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_405c30

            ldr x0,[sp,#120]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.le .L_405c30

            mov w0,#1
            b .L_405c34
.L_405c30:

            mov w0,#0
.L_405c34:

            str w0,[sp,#196]
            ldr w0,[sp,#196]
            cmp w0,#0
            b.eq .L_405ca0

            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_4192a8
            add x1,x0, :lo12:.L_4192a8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            b .L_405d20
.L_405ca0:

            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_4193d0
            add x2,x0, :lo12:.L_4193d0
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#128]
            ldr x4,[x0,#8]
            ldr x19,[sp,#128]
            mov w3,#1
            adrp x0, .L_4193d0
            add x2,x0, :lo12:.L_4193d0
            adrp x0, .L_4192a8
            add x1,x0, :lo12:.L_4192a8
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405d18

            adrp x0, .L_419488
            add x0,x0, :lo12:.L_419488
            bl puts
.L_405d18:

            mov x0,#-1
            str x0,[sp,#216]
.L_405d20:

            ldr w0,[sp,#236]
            add w0,w0,#1
            str w0,[sp,#236]
.L_405d2c:

            ldr w0,[sp,#236]
            cmp w0,#1
            b.le .L_4051a0

            add x0,sp,#120
            bl free_rr_data

            add x0,sp,#120
            add x0,x0,#8
            bl free_rr_data

            ldr w0,[sp,#192]
            cmp w0,#0
            b.eq .L_405d98

            ldr w0,[sp,#196]
            cmp w0,#0
            b.eq .L_405d98

            ldr w0,[sp,#108]
            bl so_closed

            cmp w0,#0
            b.ne .L_405d98

            ldr w0,[sp,#104]
            bl so_closed

            cmp w0,#0
            b.ne .L_405d98

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405144
.L_405d98:

            nop
            nop
            nop
            nop
.L_405d9c:

            ldr x0,[sp,#200]
            cmp x0,#0
            b.eq .L_405db0

            ldr x0,[sp,#200]
            bl free
.L_405db0:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405e00

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w19,[x0]
            ldr w0,[sp,#108]
            bl so_closed

            mov w4,w0
            mov w3,w19
            ldr w2,[sp,#188]
            ldr w1,[sp,#196]
            adrp x0, .L_4194a8
            add x0,x0, :lo12:.L_4194a8
            bl printf

            adrp x0, .L_4194e8
            add x0,x0, :lo12:.L_4194e8
            bl puts
.L_405e00:

            ldr w0,[sp,#196]
            cmp w0,#0
            b.eq .L_405eb4

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_405eb4

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405eb4

            ldr w0,[sp,#108]
            bl so_closed

            cmp w0,#0
            b.ne .L_405eb4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405e6c

            ldr w0,[sp,#104]
            ldr w1,[sp,#108]
            mov w2,w1
            mov w1,w0
            adrp x0, .L_419500
            add x0,x0, :lo12:.L_419500
            bl printf
.L_405e6c:

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_lock

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            ldr w1,[sp,#108]
            sxtw x1,w1
            ldr x2,[sp,#112]
            bl plist_add

            mov x1,x0
            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            str x1,[x0]
            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_unlock

            b .L_405ed0
.L_405eb4:

            ldr x0,[sp,#112]
            bl free

            ldr w0,[sp,#108]
            cmp w0,#0
            b.lt .L_405ed0

            ldr w0,[sp,#108]
            bl close
.L_405ed0:

            ldr x0,[sp,#216]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#240
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size forward_request, . - forward_request
.align 4
#-----------------------------------
.globl prepare_http_connect
.type prepare_http_connect, @function
#-----------------------------------
prepare_http_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -96
            str w0,[sp,#60]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str wzr,[sp,#108]
            ldr w0,[sp,#60]
            cmp w0,#0
            b.eq .L_405f24

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_405f24

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_405f2c
.L_405f24:

            mov w0,#0
            b .L_406218
.L_405f2c:

            bl new_rr_data

            str x0,[sp,#80]
            bl new_rr_data

            str x0,[sp,#72]
            ldr x0,[sp,#80]
            mov w1,#1
            str w1,[x0]
            ldr x19,[sp,#80]
            adrp x0, .L_4193c8
            add x0,x0, :lo12:.L_4193c8
            bl strdup

            str x0,[x19,#40]
            ldr x19,[sp,#80]
            ldr x0,[sp,#40]
            bl strdup

            str x0,[x19,#48]
            ldr x19,[sp,#80]
            ldr x0,[sp,#40]
            bl strdup

            str x0,[x19,#64]
            ldr x0,[sp,#80]
            ldr x0,[x0,#64]
            mov w1,#58
            bl strchr

            str x0,[sp,#88]
            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_405fb8

            ldr x0,[sp,#88]
            strb wzr,[x0]
            ldr x0,[sp,#88]
            add x0,x0,#1
            ldr x19,[sp,#80]
            bl atoi

            str w0,[x19,#32]
.L_405fb8:

            ldr x19,[sp,#80]
            adrp x0, .L_419530
            add x0,x0, :lo12:.L_419530
            bl strdup

            str x0,[x19,#72]
            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x0,[x0]
            str x0,[sp,#96]
            b .L_406048
.L_40600c:

            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x0,[sp,#96]
            ldr x1,[x0]
            ldr x0,[sp,#96]
            ldr x0,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            mov x2,x0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            str x0,[sp,#96]
.L_406048:

            ldr x0,[sp,#96]
            cmp x0,#0
            b.ne .L_40600c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406074

            adrp x0, .L_419540
            add x0,x0, :lo12:.L_419540
            bl puts
.L_406074:

            ldr x1,[sp,#80]
            ldr x2,[sp,#72]
            add x0,sp,#60
            ldr x3,[sp,#48]
            bl proxy_authenticate

            cmp w0,#0
            b.eq .L_4061ec

            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_406170

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4060cc

            adrp x0, .L_419560
            add x0,x0, :lo12:.L_419560
            bl puts

            ldr x0,[sp,#80]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_4060cc:

            ldr w0,[sp,#60]
            ldr x1,[sp,#80]
            bl headers_send

            cmp w0,#0
            b.ne .L_4060f0

            adrp x0, .L_419578
            add x0,x0, :lo12:.L_419578
            bl puts

            b .L_406204
.L_4060f0:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406110

            adrp x0, .L_419590
            add x0,x0, :lo12:.L_419590
            bl puts
.L_406110:

            ldr x0,[sp,#72]
            bl reset_rr_data

            ldr w0,[sp,#60]
            ldr x1,[sp,#72]
            bl headers_recv

            cmp w0,#0
            b.ne .L_406150

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406200

            adrp x0, .L_4195a8
            add x0,x0, :lo12:.L_4195a8
            bl puts

            b .L_406200
.L_406150:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406170

            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_406170:

            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#200
            b.ne .L_4061ac

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4061a0

            adrp x0, .L_419460
            add x0,x0, :lo12:.L_419460
            bl puts
.L_4061a0:

            mov w0,#1
            str w0,[sp,#108]
            b .L_406204
.L_4061ac:

            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_4061d4

            ldr x2,[sp,#40]
            adrp x0, .L_4195c8
            add x1,x0, :lo12:.L_4195c8
            mov w0,#3
            bl syslog

            b .L_406204
.L_4061d4:

            ldr x2,[sp,#40]
            adrp x0, .L_4195f0
            add x1,x0, :lo12:.L_4195f0
            mov w0,#3
            bl syslog

            b .L_406204
.L_4061ec:

            adrp x0, .L_419618
            add x1,x0, :lo12:.L_419618
            mov w0,#3
            bl syslog

            b .L_406204
.L_406200:

            nop
            nop
            nop
            nop
.L_406204:

            add x0,sp,#80
            bl free_rr_data

            add x0,sp,#72
            bl free_rr_data

            ldr w0,[sp,#108]
.L_406218:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size prepare_http_connect, . - prepare_http_connect
.align 2
#-----------------------------------
.globl forward_tunnel
.type forward_tunnel, @function
#-----------------------------------
forward_tunnel:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40625c

            adrp x0, .L_419a88
            add x3,x0, :lo12:.L_419a88
            mov w2,#592
            adrp x0, .L_419160
            add x1,x0, :lo12:.L_419160
            adrp x0, .L_419170
            add x0,x0, :lo12:.L_419170
            bl __assert_fail
.L_40625c:

            ldr x0,[sp,#24]
            ldr w0,[x0]
            str w0,[sp,#124]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            str x0,[sp,#112]
            ldr x0,[sp,#112]
            bl strdup

            str x0,[sp,#104]
            add x0,sp,#32
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_4062c8

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#4
            b .L_4062d4
.L_4062c8:

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#8
.L_4062d4:

            add x1,sp,#32
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            bl new_auth

            str x0,[sp,#96]
            mov w1,#58
            ldr x0,[sp,#104]
            bl strchr

            str x0,[sp,#88]
            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_406318

            ldr x0,[sp,#88]
            strb wzr,[x0]
.L_406318:

            ldr x2,[sp,#104]
            ldr x1,[sp,#112]
            ldr x0,[sp,#96]
            bl proxy_connect

            str w0,[sp,#84]
            ldr w0,[sp,#84]
            cmp w0,#0
            b.lt .L_4063a4

            add x0,sp,#32
            ldr x3,[sp,#112]
            mov x2,x0
            adrp x0, .L_419638
            add x1,x0, :lo12:.L_419638
            mov w0,#7
            bl syslog

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40637c

            ldr w2,[sp,#124]
            ldr x1,[sp,#112]
            adrp x0, .L_419648
            add x0,x0, :lo12:.L_419648
            bl printf
.L_40637c:

            ldr x2,[sp,#112]
            ldr x1,[sp,#96]
            ldr w0,[sp,#84]
            bl prepare_http_connect

            cmp w0,#0
            b.eq .L_4063ac

            ldr w1,[sp,#84]
            ldr w0,[sp,#124]
            bl tunnel

            b .L_4063b0
.L_4063a4:

            nop
            nop
            nop
            nop
            b .L_4063b0
.L_4063ac:

            nop
            nop
            nop
            nop
.L_4063b0:

            ldr w0,[sp,#84]
            cmp w0,#0
            b.lt .L_4063c4

            ldr w0,[sp,#84]
            bl close
.L_4063c4:

            ldr w0,[sp,#84]
            cmn w0,#2
            b.eq .L_4063d8

            ldr w0,[sp,#124]
            bl close
.L_4063d8:

            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#104]
            bl free

            ldr w0,[sp,#84]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size forward_tunnel, . - forward_tunnel
.align 2
#-----------------------------------
.globl magic_auth_detect
.type magic_auth_detect, @function
#-----------------------------------
magic_auth_detect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-304]!
.cfi_def_cfa_offset 304
.cfi_offset 29, -304
.cfi_offset 30, -296
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -288
            str x0,[sp,#40]
            str wzr,[sp,#296]
            mov w0,#-1
            str w0,[sp,#292]
            str xzr,[sp,#280]
            adrp x0, .L_4199c8
            add x1,x0, :lo12:.L_4199c8
            add x0,sp,#96
            ldr q26,[x1]
            ldr q27,[x1,#16]
            ldr q28,[x1,#32]
            ldr q29,[x1,#48]
            ldr q30,[x1,#64]
            ldr q31,[x1,#80]
            ldr w1,[x1,#96]
            str q26,[x0]
            str q27,[x0,#16]
            str q28,[x0,#32]
            str q29,[x0,#48]
            str q30,[x0,#64]
            str q31,[x0,#80]
            str w1,[x0,#96]
            bl new_auth

            str x0,[sp,#272]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w2,#1
            mov x1,x0
            ldr x0,[sp,#272]
            bl copy_auth

            ldr x0,[sp,#272]
            add x0,x0,#200
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_4064c4

            ldr x0,[sp,#272]
            add x0,x0,#150
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_4064c4

            ldr x0,[sp,#272]
            add x0,x0,#250
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.eq .L_4064d8
.L_4064c4:

            adrp x0, .L_419670
            add x0,x0, :lo12:.L_419670
            bl puts

            mov w0,#1
            bl exit
.L_4064d8:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_406504

            adrp x0, .L_419a98
            add x3,x0, :lo12:.L_419a98
            mov w2,#661
            adrp x0, .L_419160
            add x1,x0, :lo12:.L_419160
            adrp x0, .L_4196c0
            add x0,x0, :lo12:.L_4196c0
            bl __assert_fail
.L_406504:

            adrp x0, .L_4196d0
            add x1,x0, :lo12:.L_4196d0
            ldr x0,[sp,#40]
            bl strstr

            str x0,[sp,#264]
            ldr x0,[sp,#264]
            cmp x0,#0
            b.eq .L_406580

            ldr x0,[sp,#264]
            add x0,x0,#3
            mov w1,#47
            bl strchr

            str x0,[sp,#256]
            ldr x0,[sp,#264]
            add x3,x0,#3
            ldr x0,[sp,#256]
            cmp x0,#0
            b.eq .L_406560

            ldr x1,[sp,#256]
            ldr x0,[sp,#264]
            sub x0,x1,x0
            sub w0,w0,#3
            b .L_406564
.L_406560:

            mov w0,#0
.L_406564:

            mov w2,w0
            mov w1,#0
            mov x0,x3
            bl substr

            str x0,[sp,#280]
            str wzr,[sp,#300]
            b .L_40691c
.L_406580:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            ldr x2,[sp,#40]
            adrp x0, .L_4196d8
            add x1,x0, :lo12:.L_4196d8
            mov x0,x3
            bl fprintf

            ldr x0,[sp,#272]
            bl free

            b .L_406b44
.L_4065ac:

            bl new_rr_data

            str x0,[sp,#200]
            bl new_rr_data

            str x0,[sp,#208]
            ldr x0,[sp,#208]
            mov w1,#1
            str w1,[x0]
            ldr x19,[sp,#208]
            adrp x0, .L_4196f0
            add x0,x0, :lo12:.L_4196f0
            bl strdup

            str x0,[x19,#40]
            ldr x19,[sp,#208]
            ldr x0,[sp,#40]
            bl strdup

            str x0,[x19,#48]
            ldr x19,[sp,#208]
            adrp x0, .L_419530
            add x0,x0, :lo12:.L_419530
            bl strdup

            str x0,[x19,#72]
            ldr x0,[sp,#208]
            ldr x5,[x0,#8]
            ldr x19,[sp,#208]
            mov w4,#1
            mov w3,#1
            adrp x0, .L_419280
            add x2,x0, :lo12:.L_419280
            adrp x0, .L_419290
            add x1,x0, :lo12:.L_419290
            mov x0,x5
            bl hlist_add

            str x0,[x19,#8]
            ldr x0,[sp,#280]
            cmp x0,#0
            b.eq .L_406668

            ldr x0,[sp,#208]
            ldr x5,[x0,#8]
            ldr x19,[sp,#208]
            mov w4,#1
            mov w3,#1
            ldr x2,[sp,#280]
            adrp x0, .L_4196f8
            add x1,x0, :lo12:.L_4196f8
            mov x0,x5
            bl hlist_add

            str x0,[x19,#8]
.L_406668:

            ldrsw x1,[sp,#300]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#96
            ldr w1,[x1,x0]
            ldr x0,[sp,#272]
            str w1,[x0,#304]
            ldrsw x1,[sp,#300]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#100
            ldr w1,[x1,x0]
            ldr x0,[sp,#272]
            str w1,[x0,#308]
            ldrsw x1,[sp,#300]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#104
            ldr w1,[x1,x0]
            ldr x0,[sp,#272]
            str w1,[x0,#300]
            ldrsw x1,[sp,#300]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#108
            ldr w0,[x1,x0]
            mov w1,w0
            ldr x0,[sp,#272]
            str w1,[x0,#312]
            ldr w0,[sp,#300]
            add w0,w0,#1
            mov w2,#5
            mov w1,w0
            adrp x0, .L_419700
            add x0,x0, :lo12:.L_419700
            bl printf

            ldr x2,[sp,#280]
            ldr x1,[sp,#40]
            mov x0,#0
            bl proxy_connect

            str w0,[sp,#220]
            ldr w0,[sp,#220]
            cmp w0,#0
            b.ge .L_40676c

            adrp x0, .L_419720
            add x0,x0, :lo12:.L_419720
            bl puts

            add x0,sp,#200
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#280]
            cmp x0,#0
            b.eq .L_406b40

            ldr x0,[sp,#280]
            bl free

            b .L_406b40
.L_40676c:

            ldr x1,[sp,#208]
            ldr x2,[sp,#200]
            add x0,sp,#220
            ldr x3,[sp,#272]
            bl proxy_authenticate

            str w0,[sp,#252]
            ldr w0,[sp,#252]
            cmp w0,#0
            b.eq .L_4067e0

            ldr x0,[sp,#200]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.eq .L_4067e0

            ldr w0,[sp,#296]
            add w0,w0,#1
            str w0,[sp,#296]
            ldr x0,[sp,#200]
            ldr w0,[x0,#16]
            mov w1,w0
            adrp x0, .L_419750
            add x0,x0, :lo12:.L_419750
            bl printf

            add x0,sp,#200
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr w0,[sp,#220]
            bl close

            b .L_406910
.L_4067e0:

            ldr x0,[sp,#200]
            bl reset_rr_data

            ldr w0,[sp,#220]
            ldr x1,[sp,#208]
            bl headers_send

            cmp w0,#0
            b.eq .L_406810

            ldr w0,[sp,#220]
            ldr x1,[sp,#200]
            bl headers_recv

            cmp w0,#0
            b.ne .L_406820
.L_406810:

            adrp x0, .L_419778
            add x0,x0, :lo12:.L_419778
            bl puts

            b .L_4068f8
.L_406820:

            ldr x0,[sp,#200]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_4068b0

            ldr x0,[sp,#200]
            ldr x3,[x0,#8]
            adrp x0, .L_4197a8
            add x2,x0, :lo12:.L_4197a8
            adrp x0, .L_4193d8
            add x1,x0, :lo12:.L_4193d8
            mov x0,x3
            bl hlist_subcmp_all

            cmp w0,#0
            b.eq .L_406868

            adrp x0, .L_4197b0
            add x0,x0, :lo12:.L_4197b0
            bl puts

            b .L_4068f8
.L_406868:

            ldr x0,[sp,#200]
            ldr x3,[x0,#8]
            adrp x0, .L_4197d8
            add x2,x0, :lo12:.L_4197d8
            adrp x0, .L_4193d8
            add x1,x0, :lo12:.L_4193d8
            mov x0,x3
            bl hlist_subcmp_all

            cmp w0,#0
            b.eq .L_4068a0

            adrp x0, .L_4197e0
            add x0,x0, :lo12:.L_4197e0
            bl puts

            b .L_4068f8
.L_4068a0:

            adrp x0, .L_419820
            add x0,x0, :lo12:.L_419820
            bl puts

            b .L_406928
.L_4068b0:

            ldr x0,[sp,#200]
            ldr w0,[x0,#16]
            mov w1,w0
            adrp x0, .L_419850
            add x0,x0, :lo12:.L_419850
            bl printf

            ldr w0,[sp,#292]
            cmp w0,#0
            b.ge .L_4068f8

            ldr w0,[sp,#300]
            str w0,[sp,#292]
            add x0,sp,#200
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr w0,[sp,#220]
            bl close

            b .L_406928
.L_4068f8:

            add x0,sp,#200
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr w0,[sp,#220]
            bl close
.L_406910:

            ldr w0,[sp,#300]
            add w0,w0,#1
            str w0,[sp,#300]
.L_40691c:

            ldr w0,[sp,#300]
            cmp w0,#4
            b.le .L_4065ac
.L_406928:

            ldr w0,[sp,#292]
            cmp w0,#0
            b.lt .L_406b00

            adrp x0, .L_419a50
            add x1,x0, :lo12:.L_419a50
            add x0,sp,#56
            ldr q30,[x1]
            ldr q31,[x1,#16]
            ldr x1,[x1,#32]
            str q30,[x0]
            str q31,[x0,#16]
            str x1,[x0,#32]
            ldr w1,[sp,#292]
            adrp x0, .L_419868
            add x0,x0, :lo12:.L_419868
            bl printf

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#112
            ldr w0,[x1,x0]
            sxtw x0,w0
            lsl x0,x0,#3
            add x1,sp,#56
            ldr x0,[x1,x0]
            mov x1,x0
            adrp x0, .L_4198a0
            add x0,x0, :lo12:.L_4198a0
            bl printf

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#108
            ldr w0,[x1,x0]
            cmp w0,#0
            b.eq .L_4069f4

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#108
            ldr w0,[x1,x0]
            mov w1,w0
            adrp x0, .L_4198b8
            add x0,x0, :lo12:.L_4198b8
            bl printf
.L_4069f4:

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#96
            ldr w0,[x1,x0]
            cmp w0,#0
            b.eq .L_406a48

            ldr x0,[sp,#272]
            add x0,x0,#200
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#240]
            ldr x1,[sp,#240]
            adrp x0, .L_4198d0
            add x0,x0, :lo12:.L_4198d0
            bl printf

            ldr x0,[sp,#240]
            bl free
.L_406a48:

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#100
            ldr w0,[x1,x0]
            cmp w0,#0
            b.eq .L_406a9c

            ldr x0,[sp,#272]
            add x0,x0,#150
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#232]
            ldr x1,[sp,#232]
            adrp x0, .L_4198e8
            add x0,x0, :lo12:.L_4198e8
            bl printf

            ldr x0,[sp,#232]
            bl free
.L_406a9c:

            ldrsw x1,[sp,#292]
            mov x0,x1
            lsl x0,x0,#2
            add x0,x0,x1
            lsl x0,x0,#2
            add x1,sp,#104
            ldr w0,[x1,x0]
            cmp w0,#0
            b.eq .L_406af0

            ldr x0,[sp,#272]
            add x0,x0,#250
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#224]
            ldr x1,[sp,#224]
            adrp x0, .L_419900
            add x0,x0, :lo12:.L_419900
            bl printf

            ldr x0,[sp,#224]
            bl free
.L_406af0:

            adrp x0, .L_419918
            add x0,x0, :lo12:.L_419918
            bl puts

            b .L_406b28
.L_406b00:

            ldr w0,[sp,#296]
            cmp w0,#5
            b.ne .L_406b1c

            adrp x0, .L_419950
            add x0,x0, :lo12:.L_419950
            bl puts

            b .L_406b28
.L_406b1c:

            adrp x0, .L_419988
            add x0,x0, :lo12:.L_419988
            bl puts
.L_406b28:

            ldr x0,[sp,#280]
            cmp x0,#0
            b.eq .L_406b44

            ldr x0,[sp,#280]
            bl free

            b .L_406b44
.L_406b40:

            nop
            nop
            nop
            nop
.L_406b44:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#304
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size magic_auth_detect, . - magic_auth_detect
.align 4
#-----------------------------------
.globl is_http_header
.type is_http_header, @function
#-----------------------------------
is_http_header:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -32
            str x0,[sp,#40]
            adrp x0, .L_419ab0
            add x1,x0, :lo12:.L_419ab0
            ldr x0,[sp,#40]
            bl strcspn

            mov x19,x0
            ldr x0,[sp,#40]
            bl strlen

            cmp x19,x0
            cset w0,ne
            and w0,w0,#255
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size is_http_header, . - is_http_header
.align 2
#-----------------------------------
.globl get_http_header_name
.type get_http_header_name, @function
#-----------------------------------
get_http_header_name:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, .L_419ab0
            add x1,x0, :lo12:.L_419ab0
            ldr x0,[sp,#24]
            bl strcspn

            str w0,[sp,#44]
            ldr x0,[sp,#24]
            bl strlen

            mov w1,w0
            ldr w0,[sp,#44]
            cmp w0,w1
            b.eq .L_406be0

            ldr w2,[sp,#44]
            mov w1,#0
            ldr x0,[sp,#24]
            bl substr

            b .L_406be4
.L_406be0:

            mov x0,#0
.L_406be4:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_http_header_name, . - get_http_header_name
.align 2
#-----------------------------------
.globl get_http_header_value
.type get_http_header_value, @function
#-----------------------------------
get_http_header_value:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            mov w1,#58
            ldr x0,[sp,#24]
            bl strchr

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_406c4c

            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
            b .L_406c30
.L_406c24:

            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_406c30:

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#32
            b.eq .L_406c24

            ldr x0,[sp,#40]
            bl strdup

            b .L_406c50
.L_406c4c:

            mov x0,#0
.L_406c50:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_http_header_value, . - get_http_header_value
.align 3
#-----------------------------------
.globl headers_recv
.type headers_recv, @function
#-----------------------------------
headers_recv:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -112
.cfi_offset 20, -104
            str w0,[sp,#44]
            str x1,[sp,#32]
            str wzr,[sp,#84]
            str xzr,[sp,#56]
            str xzr,[sp,#104]
            str xzr,[sp,#96]
            str xzr,[sp,#88]
            mov w0,#4096
            str w0,[sp,#76]
            ldr w0,[sp,#76]
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#64]
            add x1,sp,#76
            add x0,sp,#64
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#44]
            bl so_recvln

            str w0,[sp,#124]
            ldr w0,[sp,#124]
            cmp w0,#0
            b.le .L_4075ac

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406ce8

            ldr x0,[sp,#64]
            mov x1,x0
            adrp x0, .L_419ab8
            add x0,x0, :lo12:.L_419ab8
            bl printf
.L_406ce8:

            ldr x0,[sp,#64]
            bl trimr

            ldr x0,[sp,#64]
            bl strdup

            str x0,[sp,#104]
            ldr x0,[sp,#64]
            bl strlen

            str w0,[sp,#80]
            ldr x3,[sp,#64]
            add x0,sp,#56
            mov x2,x0
            adrp x0, .L_419ac8
            add x1,x0, :lo12:.L_419ac8
            mov x0,x3
            bl strtok_r

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_406fb0

            mov x2,#5
            adrp x0, .L_419ad0
            add x1,x0, :lo12:.L_419ad0
            ldr x0,[sp,#112]
            bl strncasecmp

            cmp w0,#0
            cset w0,eq
            and w0,w0,#255
            str w0,[sp,#84]
            ldr w0,[sp,#84]
            cmp w0,#0
            b.ne .L_406d80

            mov x2,#3
            adrp x0, .L_419ad8
            add x1,x0, :lo12:.L_419ad8
            ldr x0,[sp,#112]
            bl strncasecmp

            cmp w0,#0
            b.ne .L_406fb0
.L_406d80:

            ldr x0,[sp,#32]
            str wzr,[x0]
            ldr x0,[sp,#32]
            str wzr,[x0,#28]
            ldr x0,[sp,#112]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#72]
            ldr x0,[sp,#32]
            str xzr,[x0,#80]
            ldr w0,[sp,#84]
            cmp w0,#0
            b.eq .L_406e8c

            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            mov w1,#47
            bl strchr

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_406e8c

            ldr x0,[sp,#112]
            bl strlen

            cmp x0,#3
            b.ls .L_406e8c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#112]
            add x0,x0,#1
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_406e8c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#112]
            add x0,x0,#3
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_406e8c

            ldr x0,[sp,#112]
            add x0,x0,#1
            ldrb w0,[x0]
            sub w1,w0,#48
            mov w0,w1
            lsl w0,w0,#2
            add w0,w0,w1
            lsl w0,w0,#1
            mov w1,w0
            ldr x0,[sp,#112]
            add x0,x0,#3
            ldrb w0,[x0]
            sub w0,w0,#48
            add w1,w1,w0
            ldr x0,[sp,#32]
            str w1,[x0,#36]
            b .L_406e98
.L_406e8c:

            ldr x0,[sp,#32]
            mov w1,#-1
            str w1,[x0,#36]
.L_406e98:

            add x0,sp,#56
            mov x2,x0
            adrp x0, .L_419ac8
            add x1,x0, :lo12:.L_419ac8
            mov x0,#0
            bl strtok_r

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_406f3c

            ldr x0,[sp,#112]
            bl strdup

            str x0,[sp,#96]
            ldr x0,[sp,#96]
            bl strlen

            mov x1,x0
            ldr x0,[sp,#112]
            add x0,x0,x1
            str x0,[sp,#112]
            nop
            nop
            nop
            nop
.L_406ee8:

            ldr x1,[sp,#64]
            ldrsw x0,[sp,#80]
            add x0,x1,x0
            ldr x1,[sp,#112]
            cmp x1,x0
            b.hs .L_406f18

            ldr x0,[sp,#112]
            add x1,x0,#1
            str x1,[sp,#112]
            ldrb w0,[x0]
            cmp w0,#32
            b.eq .L_406ee8
.L_406f18:

            ldr x0,[sp,#112]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_406f3c

            ldr x0,[sp,#112]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#80]
.L_406f3c:

            ldr x0,[sp,#32]
            ldr x0,[x0,#80]
            cmp x0,#0
            b.ne .L_406f64

            adrp x0, .L_419ae0
            add x0,x0, :lo12:.L_419ae0
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#80]
.L_406f64:

            ldr x0,[sp,#96]
            cmp x0,#0
            b.eq .L_406fa4

            ldr x0,[sp,#96]
            bl strlen

            cmp x0,#3
            b.ne .L_406fa4

            ldr x0,[sp,#96]
            bl atoi

            mov w1,w0
            ldr x0,[sp,#32]
            str w1,[x0,#16]
            ldr x0,[sp,#32]
            ldr w0,[x0,#16]
            cmp w0,#0
            b.ne .L_4072a8
.L_406fa4:

            mov w0,#-2
            str w0,[sp,#124]
            b .L_4075b8
.L_406fb0:

            adrp x0, .L_419ae8
            add x1,x0, :lo12:.L_419ae8
            ldr x0,[sp,#104]
            bl strstr

            cmp x0,#0
            b.eq .L_407278

            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_407278

            ldr x0,[sp,#32]
            mov w1,#1
            str w1,[x0]
            ldr x0,[sp,#32]
            str wzr,[x0,#28]
            ldr x0,[sp,#32]
            str xzr,[x0,#40]
            ldr x0,[sp,#32]
            str xzr,[x0,#48]
            ldr x0,[sp,#32]
            str xzr,[x0,#56]
            ldr x0,[sp,#32]
            str xzr,[x0,#72]
            ldr x0,[sp,#32]
            str xzr,[x0,#64]
            ldr x0,[sp,#112]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#40]
            add x0,sp,#56
            mov x2,x0
            adrp x0, .L_419ac8
            add x1,x0, :lo12:.L_419ac8
            mov x0,#0
            bl strtok_r

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_407060

            ldr x0,[sp,#112]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#48]
.L_407060:

            add x0,sp,#56
            mov x2,x0
            adrp x0, .L_419ac8
            add x1,x0, :lo12:.L_419ac8
            mov x0,#0
            bl strtok_r

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_40709c

            ldr x0,[sp,#112]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#72]
.L_40709c:

            ldr x0,[sp,#32]
            ldr x0,[x0,#48]
            cmp x0,#0
            b.eq .L_4070bc

            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            cmp x0,#0
            b.ne .L_4070c8
.L_4070bc:

            mov w0,#-3
            str w0,[sp,#124]
            b .L_4075b8
.L_4070c8:

            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            mov w1,#47
            bl strchr

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_40719c

            ldr x0,[sp,#112]
            bl strlen

            cmp x0,#3
            b.ls .L_40719c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#112]
            add x0,x0,#1
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_40719c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#112]
            add x0,x0,#3
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_40719c

            ldr x0,[sp,#112]
            add x0,x0,#1
            ldrb w0,[x0]
            sub w1,w0,#48
            mov w0,w1
            lsl w0,w0,#2
            add w0,w0,w1
            lsl w0,w0,#1
            mov w1,w0
            ldr x0,[sp,#112]
            add x0,x0,#3
            ldrb w0,[x0]
            sub w0,w0,#48
            add w1,w1,w0
            ldr x0,[sp,#32]
            str w1,[x0,#36]
            b .L_4071a8
.L_40719c:

            ldr x0,[sp,#32]
            mov w1,#-1
            str w1,[x0,#36]
.L_4071a8:

            ldr x0,[sp,#32]
            ldr x2,[x0,#48]
            adrp x0, .L_419af0
            add x1,x0, :lo12:.L_419af0
            mov x0,x2
            bl strstr

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_4071e0

            ldr x0,[sp,#112]
            add x0,x0,#3
            str x0,[sp,#112]
            b .L_4071ec
.L_4071e0:

            ldr x0,[sp,#32]
            ldr x0,[x0,#48]
            str x0,[sp,#112]
.L_4071ec:

            mov w1,#47
            ldr x0,[sp,#112]
            bl strchr

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_407240

            ldr x1,[sp,#56]
            ldr x0,[sp,#112]
            sub x0,x1,x0
            mov w2,w0
            mov w1,#0
            ldr x0,[sp,#112]
            bl substr

            str x0,[sp,#88]
            ldr x0,[sp,#56]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#56]
            b .L_4072ac
.L_407240:

            ldr x0,[sp,#112]
            bl strlen

            mov w2,w0
            mov w1,#0
            ldr x0,[sp,#112]
            bl substr

            str x0,[sp,#88]
            adrp x0, .L_419af8
            add x0,x0, :lo12:.L_419af8
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#56]
            b .L_4072ac
.L_407278:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40729c

            ldr x1,[sp,#104]
            adrp x0, .L_419b00
            add x0,x0, :lo12:.L_419b00
            bl printf
.L_40729c:

            mov w0,#-4
            str w0,[sp,#124]
            b .L_4075b8
.L_4072a8:

            nop
            nop
            nop
            nop
.L_4072ac:

            add x1,sp,#76
            add x0,sp,#64
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#44]
            bl so_recvln

            str w0,[sp,#124]
            ldr x0,[sp,#64]
            bl trimr

            ldr w0,[sp,#124]
            cmp w0,#0
            b.le .L_40732c

            ldr x0,[sp,#64]
            bl is_http_header

            cmp w0,#0
            b.eq .L_40732c

            ldr x0,[sp,#32]
            ldr x19,[x0,#8]
            ldr x0,[sp,#64]
            bl get_http_header_name

            mov x20,x0
            ldr x0,[sp,#64]
            bl get_http_header_value

            mov w4,#0
            mov w3,#0
            mov x2,x0
            mov x1,x20
            mov x0,x19
            bl hlist_add

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#8]
.L_40732c:

            ldr x0,[sp,#64]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_407348

            ldr w0,[sp,#124]
            cmp w0,#0
            b.gt .L_4072ac
.L_407348:

            ldr x0,[sp,#32]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4075b4

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_4073c8

            ldr x0,[sp,#88]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_4073c8

            ldr x0,[sp,#32]
            ldr x2,[x0,#8]
            adrp x0, .L_419b28
            add x1,x0, :lo12:.L_419b28
            mov x0,x2
            bl hlist_get

            cmp x0,#0
            b.ne .L_4073f8

            ldr x0,[sp,#32]
            ldr x5,[x0,#8]
            mov w4,#1
            mov w3,#1
            ldr x2,[sp,#88]
            adrp x0, .L_419b28
            add x1,x0, :lo12:.L_419b28
            mov x0,x5
            bl hlist_add

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#8]
            b .L_4073f8
.L_4073c8:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4073ec

            ldr x1,[sp,#104]
            adrp x0, .L_419b30
            add x0,x0, :lo12:.L_419b30
            bl printf
.L_4073ec:

            mov w0,#-6
            str w0,[sp,#124]
            b .L_4075b8
.L_4073f8:

            ldr x0,[sp,#88]
            ldrb w0,[x0]
            cmp w0,#91
            b.ne .L_407468

            mov w1,#93
            ldr x0,[sp,#88]
            bl strchr

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            strb wzr,[x0]
            ldr x0,[sp,#88]
            add x0,x0,#1
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#64]
            ldr x0,[sp,#112]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_4074d0

            ldr x0,[sp,#112]
            add x0,x0,#2
            bl atoi

            mov w1,w0
            ldr x0,[sp,#32]
            str w1,[x0,#32]
            b .L_4074d0
.L_407468:

            mov w1,#58
            ldr x0,[sp,#88]
            bl strchr

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_4074bc

            ldr x0,[sp,#112]
            strb wzr,[x0]
            ldr x0,[sp,#88]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#64]
            ldr x0,[sp,#112]
            add x0,x0,#1
            bl atoi

            mov w1,w0
            ldr x0,[sp,#32]
            str w1,[x0,#32]
            b .L_4074d0
.L_4074bc:

            ldr x0,[sp,#88]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#32]
            str x1,[x0,#64]
.L_4074d0:

            ldr x0,[sp,#32]
            ldr w0,[x0,#32]
            cmp w0,#0
            b.ne .L_407520

            ldr x0,[sp,#32]
            ldr x3,[x0,#48]
            mov x2,#5
            adrp x0, .L_419b58
            add x1,x0, :lo12:.L_419b58
            mov x0,x3
            bl strncasecmp

            cmp w0,#0
            b.ne .L_407514

            ldr x0,[sp,#32]
            mov w1,#443
            str w1,[x0,#32]
            b .L_407520
.L_407514:

            ldr x0,[sp,#32]
            mov w1,#80
            str w1,[x0,#32]
.L_407520:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_40754c

            adrp x0, .L_419f70
            add x3,x0, :lo12:.L_419f70
            mov w2,#258
            adrp x0, .L_419b60
            add x1,x0, :lo12:.L_419b60
            adrp x0, .L_419b70
            add x0,x0, :lo12:.L_419b70
            bl __assert_fail
.L_40754c:

            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.ne .L_40757c

            adrp x0, .L_419f70
            add x3,x0, :lo12:.L_419f70
            mov w2,#259
            adrp x0, .L_419b60
            add x1,x0, :lo12:.L_419b60
            adrp x0, .L_419b80
            add x0,x0, :lo12:.L_419b80
            bl __assert_fail
.L_40757c:

            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_4075a0

            ldr x0,[sp,#32]
            ldr w0,[x0,#32]
            cmp w0,#0
            b.ne .L_4075b4
.L_4075a0:

            mov w0,#-5
            str w0,[sp,#124]
            b .L_4075b8
.L_4075ac:

            nop
            nop
            nop
            nop
            b .L_4075b8
.L_4075b4:

            nop
            nop
            nop
            nop
.L_4075b8:

            ldr x0,[sp,#104]
            cmp x0,#0
            b.eq .L_4075cc

            ldr x0,[sp,#104]
            bl free
.L_4075cc:

            ldr x0,[sp,#96]
            cmp x0,#0
            b.eq .L_4075e0

            ldr x0,[sp,#96]
            bl free
.L_4075e0:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_4075f4

            ldr x0,[sp,#88]
            bl free
.L_4075f4:

            ldr x0,[sp,#64]
            bl free

            ldr w0,[sp,#124]
            cmp w0,#0
            b.gt .L_407638

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407630

            ldr w2,[sp,#124]
            ldr w1,[sp,#44]
            adrp x0, .L_419b98
            add x0,x0, :lo12:.L_419b98
            bl printf
.L_407630:

            mov w0,#0
            b .L_40763c
.L_407638:

            mov w0,#1
.L_40763c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size headers_recv, . - headers_recv
.align 3
#-----------------------------------
.globl headers_send
.type headers_send, @function
#-----------------------------------
headers_send:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -64
            str w0,[sp,#44]
            str x1,[sp,#32]
            ldr x0,[sp,#32]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4076a8

            ldr x0,[sp,#32]
            ldr x0,[x0,#40]
            bl strlen

            mov w19,w0
            ldr x0,[sp,#32]
            ldr x0,[x0,#48]
            bl strlen

            add w19,w19,w0
            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            bl strlen

            add w0,w19,w0
            add w0,w0,#20
            str w0,[sp,#64]
            b .L_4076d0
.L_4076a8:

            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            bl strlen

            mov w19,w0
            ldr x0,[sp,#32]
            ldr x0,[x0,#80]
            bl strlen

            add w0,w19,w0
            add w0,w0,#20
            str w0,[sp,#64]
.L_4076d0:

            ldr x0,[sp,#32]
            ldr x0,[x0,#8]
            str x0,[sp,#72]
            b .L_40771c
.L_4076e0:

            ldr x0,[sp,#72]
            ldr x0,[x0]
            bl strlen

            mov w19,w0
            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            bl strlen

            add w1,w19,w0
            ldr w0,[sp,#64]
            add w0,w1,w0
            add w0,w0,#20
            str w0,[sp,#64]
            ldr x0,[sp,#72]
            ldr x0,[x0,#24]
            str x0,[sp,#72]
.L_40771c:

            ldr x0,[sp,#72]
            cmp x0,#0
            b.ne .L_4076e0

            ldr w0,[sp,#64]
            str w0,[sp,#60]
            ldrsw x0,[sp,#60]
            bl zmalloc

            str x0,[sp,#48]
            str wzr,[sp,#64]
            ldr x0,[sp,#32]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407790

            ldrsw x1,[sp,#60]
            ldr x0,[sp,#32]
            ldr x2,[x0,#40]
            ldr x0,[sp,#32]
            ldr x3,[x0,#48]
            ldr x0,[sp,#32]
            ldr x0,[x0,#72]
            mov x5,x0
            mov x4,x3
            mov x3,x2
            adrp x0, .L_419bb8
            add x2,x0, :lo12:.L_419bb8
            ldr x0,[sp,#48]
            bl snprintf

            str w0,[sp,#64]
            b .L_4077dc
.L_407790:

            ldr x0,[sp,#32]
            ldr w0,[x0,#20]
            cmp w0,#0
            b.ne .L_4077dc

            ldrsw x1,[sp,#60]
            ldr x0,[sp,#32]
            ldr x2,[x0,#72]
            ldr x0,[sp,#32]
            ldr w3,[x0,#16]
            ldr x0,[sp,#32]
            ldr x0,[x0,#80]
            mov x5,x0
            mov w4,w3
            mov x3,x2
            adrp x0, .L_419bc8
            add x2,x0, :lo12:.L_419bc8
            ldr x0,[sp,#48]
            bl snprintf

            str w0,[sp,#64]
.L_4077dc:

            ldr x0,[sp,#32]
            ldr x0,[x0,#8]
            str x0,[sp,#72]
            b .L_40784c
.L_4077ec:

            ldrsw x0,[sp,#64]
            ldr x1,[sp,#48]
            add x5,x1,x0
            ldr w1,[sp,#60]
            ldr w0,[sp,#64]
            sub w0,w1,w0
            sxtw x1,w0
            ldr x0,[sp,#72]
            ldr x2,[x0]
            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            mov x4,x0
            mov x3,x2
            adrp x0, .L_419bd8
            add x2,x0, :lo12:.L_419bd8
            mov x0,x5
            bl snprintf

            mov w1,w0
            ldr w0,[sp,#64]
            add w0,w0,w1
            str w0,[sp,#64]
            ldr x0,[sp,#72]
            ldr x0,[x0,#24]
            str x0,[sp,#72]
.L_40784c:

            ldr x0,[sp,#72]
            cmp x0,#0
            b.ne .L_4077ec

            ldrsw x0,[sp,#60]
            mov x2,x0
            adrp x0, .L_419be8
            add x1,x0, :lo12:.L_419be8
            ldr x0,[sp,#48]
            bl strlcat

            ldr w0,[sp,#44]
            bl so_closed

            cmp w0,#0
            b.ne .L_4078a4

            ldr w0,[sp,#64]
            add w0,w0,#2
            sxtw x0,w0
            mov x2,x0
            ldr x1,[sp,#48]
            ldr w0,[sp,#44]
            bl write_wrapper

            str w0,[sp,#68]
            b .L_4078ac
.L_4078a4:

            mov w0,#-999
            str w0,[sp,#68]
.L_4078ac:

            ldr x0,[sp,#48]
            bl free

            ldr w0,[sp,#68]
            cmp w0,#0
            b.le .L_4078d4

            ldr w0,[sp,#64]
            add w0,w0,#2
            ldr w1,[sp,#68]
            cmp w1,w0
            b.eq .L_407904
.L_4078d4:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4078fc

            ldr w2,[sp,#68]
            ldr w1,[sp,#44]
            adrp x0, .L_419bf0
            add x0,x0, :lo12:.L_419bf0
            bl printf
.L_4078fc:

            mov w0,#0
            b .L_407908
.L_407904:

            mov w0,#1
.L_407908:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size headers_send, . - headers_send
.align 2
#-----------------------------------
.globl data_send
.type data_send, @function
#-----------------------------------
data_send:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str w0,[sp,#28]
            str w1,[sp,#24]
            str x2,[sp,#16]
            str wzr,[sp,#56]
            mov w0,#1
            str w0,[sp,#52]
            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_407948

            mov w0,#1
            b .L_407b70
.L_407948:

            mov x0,#2048
            bl zmalloc

            str x0,[sp,#40]
.L_407954:

            ldr x0,[sp,#16]
            cmn x0,#1
            b.eq .L_407988

            ldrsw x0,[sp,#56]
            ldr x1,[sp,#16]
            sub x0,x1,x0
            cmp x0,#2048
            b.gt .L_407988

            ldr x0,[sp,#16]
            mov w1,w0
            ldr w0,[sp,#56]
            sub w0,w1,w0
            b .L_40798c
.L_407988:

            mov w0,#2048
.L_40798c:

            str w0,[sp,#36]
            ldrsw x0,[sp,#36]
            mov x2,x0
            ldr x1,[sp,#40]
            ldr w0,[sp,#24]
            bl read

            str w0,[sp,#60]
            ldr w0,[sp,#60]
            cmp w0,#0
            b.le .L_4079c4

            ldr w1,[sp,#56]
            ldr w0,[sp,#60]
            add w0,w1,w0
            str w0,[sp,#56]
.L_4079c4:

            ldr w0,[sp,#28]
            cmp w0,#0
            b.lt .L_407a28

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407a28

            ldr w0,[sp,#60]
            cmp w0,#0
            b.ge .L_407a00

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            b .L_407a08
.L_407a00:

            adrp x0, .L_419c28
            add x0,x0, :lo12:.L_419c28
.L_407a08:

            mov x5,x0
            ldr x4,[sp,#16]
            ldr w3,[sp,#56]
            ldr w2,[sp,#36]
            ldr w1,[sp,#60]
            adrp x0, .L_419c30
            add x0,x0, :lo12:.L_419c30
            bl printf
.L_407a28:

            ldr w0,[sp,#28]
            cmp w0,#0
            b.lt .L_407a50

            ldr w0,[sp,#28]
            bl so_closed

            cmp w0,#0
            b.eq .L_407a50

            mov w0,#-999
            str w0,[sp,#60]
            b .L_407adc
.L_407a50:

            ldr w0,[sp,#28]
            cmp w0,#0
            b.lt .L_407aa8

            ldr w0,[sp,#60]
            cmp w0,#0
            b.le .L_407aa8

            ldrsw x0,[sp,#60]
            mov x2,x0
            ldr x1,[sp,#40]
            ldr w0,[sp,#28]
            bl write_wrapper

            str w0,[sp,#52]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407aa8

            ldr w2,[sp,#60]
            ldr w1,[sp,#52]
            adrp x0, .L_419c68
            add x0,x0, :lo12:.L_419c68
            bl printf
.L_407aa8:

            ldr w0,[sp,#60]
            cmp w0,#0
            b.le .L_407adc

            ldr w0,[sp,#52]
            cmp w0,#0
            b.le .L_407adc

            ldr x0,[sp,#16]
            cmn x0,#1
            b.eq .L_407954

            ldrsw x0,[sp,#56]
            ldr x1,[sp,#16]
            cmp x1,x0
            b.gt .L_407954
.L_407adc:

            ldr x0,[sp,#40]
            bl free

            ldr w0,[sp,#60]
            cmp w0,#0
            b.le .L_407afc

            ldr w0,[sp,#52]
            cmp w0,#0
            b.gt .L_407b6c
.L_407afc:

            ldr w0,[sp,#60]
            cmp w0,#0
            b.ne .L_407b38

            ldr w0,[sp,#52]
            cmp w0,#0
            b.le .L_407b38

            ldr x0,[sp,#16]
            cmn x0,#1
            b.eq .L_407b30

            ldrsw x0,[sp,#56]
            ldr x1,[sp,#16]
            cmp x1,x0
            b.ne .L_407b38
.L_407b30:

            mov w0,#1
            b .L_407b70
.L_407b38:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407b64

            ldr w3,[sp,#60]
            ldr w2,[sp,#24]
            ldr w1,[sp,#28]
            adrp x0, .L_419c88
            add x0,x0, :lo12:.L_419c88
            bl printf
.L_407b64:

            mov w0,#0
            b .L_407b70
.L_407b6c:

            mov w0,#1
.L_407b70:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size data_send, . - data_send
.align 3
#-----------------------------------
.globl chunked_data_send
.type chunked_data_send, @function
#-----------------------------------
chunked_data_send:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -80
            str w0,[sp,#44]
            str w1,[sp,#40]
            str xzr,[sp,#56]
            mov w0,#4096
            str w0,[sp,#68]
            ldr w0,[sp,#68]
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#72]
.L_407ba8:

            add x1,sp,#68
            add x0,sp,#72
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#40]
            bl so_recvln

            str w0,[sp,#84]
            ldr w0,[sp,#84]
            cmp w0,#0
            b.gt .L_407c00

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407bf0

            adrp x0, .L_419cc0
            add x0,x0, :lo12:.L_419cc0
            bl puts
.L_407bf0:

            ldr x0,[sp,#72]
            bl free

            mov w0,#0
            b .L_407dcc
.L_407c00:

            ldr x0,[sp,#72]
            add x1,sp,#56
            mov w2,#16
            bl strtol

            str w0,[sp,#80]
            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_407c80

            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#59
            b.eq .L_407c80

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407c70

            adrp x0, .L_419ce8
            add x0,x0, :lo12:.L_419ce8
            bl puts
.L_407c70:

            ldr x0,[sp,#72]
            bl free

            mov w0,#0
            b .L_407dcc
.L_407c80:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.lt .L_407ca8

            ldr x19,[sp,#72]
            ldr x0,[sp,#72]
            bl strlen

            mov x2,x0
            mov x1,x19
            ldr w0,[sp,#44]
            bl write_wrapper
.L_407ca8:

            ldr w0,[sp,#80]
            cmp w0,#0
            b.eq .L_407d08

            ldr w0,[sp,#80]
            add w0,w0,#2
            sxtw x0,w0
            mov x2,x0
            ldr w1,[sp,#40]
            ldr w0,[sp,#44]
            bl data_send

            cmp w0,#0
            b.ne .L_407d08

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407cf8

            adrp x0, .L_419d20
            add x0,x0, :lo12:.L_419d20
            bl puts
.L_407cf8:

            ldr x0,[sp,#72]
            bl free

            mov w0,#0
            b .L_407dcc
.L_407d08:

            ldr w0,[sp,#80]
            cmp w0,#0
            b.ne .L_407ba8

            str wzr,[sp,#84]
            ldr w0,[sp,#84]
            str w0,[sp,#92]
            ldr w0,[sp,#92]
            str w0,[sp,#88]
.L_407d28:

            add x1,sp,#68
            add x0,sp,#72
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#40]
            bl so_recvln

            str w0,[sp,#84]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.lt .L_407d84

            ldr w0,[sp,#84]
            cmp w0,#0
            b.le .L_407d84

            ldr x0,[sp,#72]
            bl strlen

            str w0,[sp,#92]
            ldr x0,[sp,#72]
            ldrsw x1,[sp,#92]
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#44]
            bl write_wrapper

            str w0,[sp,#88]
.L_407d84:

            ldr w1,[sp,#88]
            ldr w0,[sp,#92]
            cmp w1,w0
            b.ne .L_407dc0

            ldr w0,[sp,#84]
            cmp w0,#0
            b.le .L_407dc0

            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#13
            b.eq .L_407dc0

            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#10
            b.ne .L_407d28
.L_407dc0:

            ldr x0,[sp,#72]
            bl free

            mov w0,#1
.L_407dcc:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size chunked_data_send, . - chunked_data_send
.align 3
#-----------------------------------
.globl tunnel
.type tunnel, @function
#-----------------------------------
tunnel:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov fp,sp
            str w0,[sp,#28]
            str w1,[sp,#24]
            mov x0,#4096
            bl zmalloc

            str x0,[sp,#184]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407e1c

            ldr w2,[sp,#24]
            ldr w1,[sp,#28]
            adrp x0, .L_419d50
            add x0,x0, :lo12:.L_419d50
            bl printf
.L_407e1c:

            add x0,sp,#40
            str x0,[sp,#176]
            str wzr,[sp,#196]
            b .L_407e44
.L_407e2c:

            ldr x0,[sp,#176]
            ldr w1,[sp,#196]
            str xzr,[x0,x1,lsl #3]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_407e44:

            ldr w0,[sp,#196]
            cmp w0,#15
            b.ls .L_407e2c

            ldr w0,[sp,#28]
            add w1,w0,#63
            cmp w0,#0
            csel w0,w1,w0,lt
            asr w0,w0,#6
            mov w3,w0
            sxtw x0,w3
            lsl x0,x0,#3
            add x1,sp,#40
            ldr x0,[x1,x0]
            ldr w1,[sp,#28]
            and w1,w1,#63
            mov x2,#1
            lsl x1,x2,x1
            orr x2,x0,x1
            sxtw x0,w3
            lsl x0,x0,#3
            add x1,sp,#40
            str x2,[x1,x0]
            ldr w0,[sp,#24]
            add w1,w0,#63
            cmp w0,#0
            csel w0,w1,w0,lt
            asr w0,w0,#6
            mov w3,w0
            sxtw x0,w3
            lsl x0,x0,#3
            add x1,sp,#40
            ldr x0,[x1,x0]
            ldr w1,[sp,#24]
            and w1,w1,#63
            mov x2,#1
            lsl x1,x2,x1
            orr x2,x0,x1
            sxtw x0,w3
            lsl x0,x0,#3
            add x1,sp,#40
            str x2,[x1,x0]
            add x0,sp,#40
            mov x4,#0
            mov x3,#0
            mov x2,#0
            mov x1,x0
            mov w0,#1024
            bl select

            str w0,[sp,#172]
            ldr w0,[sp,#172]
            cmp w0,#0
            b.le .L_407fcc

            ldr w0,[sp,#28]
            add w1,w0,#63
            cmp w0,#0
            csel w0,w1,w0,lt
            asr w0,w0,#6
            sxtw x0,w0
            lsl x0,x0,#3
            add x1,sp,#40
            ldr x0,[x1,x0]
            ldr w1,[sp,#28]
            and w1,w1,#63
            mov x2,#1
            lsl x1,x2,x1
            and x0,x0,x1
            cmp x0,#0
            b.eq .L_407f68

            ldr w0,[sp,#28]
            str w0,[sp,#204]
            ldr w0,[sp,#24]
            str w0,[sp,#200]
            b .L_407f78
.L_407f68:

            ldr w0,[sp,#24]
            str w0,[sp,#204]
            ldr w0,[sp,#28]
            str w0,[sp,#200]
.L_407f78:

            mov x2,#4096
            ldr x1,[sp,#184]
            ldr w0,[sp,#204]
            bl read

            str w0,[sp,#168]
            ldr w0,[sp,#168]
            cmp w0,#0
            b.le .L_407fb0

            ldrsw x0,[sp,#168]
            mov x2,x0
            ldr x1,[sp,#184]
            ldr w0,[sp,#200]
            bl write_wrapper

            b .L_407e1c
.L_407fb0:

            ldr x0,[sp,#184]
            bl free

            ldr w0,[sp,#168]
            cmp w0,#0
            cset w0,eq
            and w0,w0,#255
            b .L_407fe4
.L_407fcc:

            ldr w0,[sp,#172]
            cmp w0,#0
            b.ge .L_407e1c

            ldr x0,[sp,#184]
            bl free

            mov w0,#0
.L_407fe4:

            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size tunnel, . - tunnel
.align 2
#-----------------------------------
.globl http_has_body
.type http_has_body, @function
#-----------------------------------
http_has_body:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#16]
            cmp x0,#0
            b.eq .L_408018

            ldr x0,[sp,#16]
            ldr w0,[x0,#28]
            cmp w0,#0
            b.eq .L_408020
.L_408018:

            ldr x0,[sp,#24]
            b .L_408024
.L_408020:

            ldr x0,[sp,#16]
.L_408024:

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_408054

            ldr x3,[sp,#16]
            ldr x2,[sp,#24]
            adrp x0, .L_419d78
            add x1,x0, :lo12:.L_419d78
            mov w0,#3
            bl syslog

            mov x0,#0
            b .L_4082c8
.L_408054:

            ldr x1,[sp,#40]
            ldr x0,[sp,#16]
            cmp x1,x0
            b.ne .L_4080f4

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4080a0

            ldr x0,[sp,#24]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4080a0

            ldr x0,[sp,#24]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_419df8
            add x0,x0, :lo12:.L_419df8
            bl strcasecmp

            cmp w0,#0
            b.eq .L_4080e0
.L_4080a0:

            ldr x0,[sp,#16]
            ldr w0,[x0,#16]
            cmp w0,#99
            b.le .L_4080c0

            ldr x0,[sp,#16]
            ldr w0,[x0,#16]
            cmp w0,#199
            b.le .L_4080e0
.L_4080c0:

            ldr x0,[sp,#16]
            ldr w0,[x0,#16]
            cmp w0,#204
            b.eq .L_4080e0

            ldr x0,[sp,#16]
            ldr w0,[x0,#16]
            cmp w0,#304
            b.ne .L_4080e8
.L_4080e0:

            mov w0,#1
            b .L_4080ec
.L_4080e8:

            mov w0,#0
.L_4080ec:

            str w0,[sp,#52]
            b .L_40817c
.L_4080f4:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_408130

            ldr x0,[sp,#24]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408130

            ldr x0,[sp,#24]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_419e00
            add x0,x0, :lo12:.L_419e00
            bl strcasecmp

            cmp w0,#0
            b.eq .L_40816c
.L_408130:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_408174

            ldr x0,[sp,#24]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408174

            ldr x0,[sp,#24]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_419df8
            add x0,x0, :lo12:.L_419df8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_408174
.L_40816c:

            mov w0,#1
            b .L_408178
.L_408174:

            mov w0,#0
.L_408178:

            str w0,[sp,#52]
.L_40817c:

            ldr x0,[sp,#40]
            ldr x2,[x0,#8]
            adrp x0, .L_419e08
            add x1,x0, :lo12:.L_419e08
            mov x0,x2
            bl hlist_get

            str x0,[sp,#32]
            ldr w0,[sp,#52]
            cmp w0,#0
            b.ne .L_408278

            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_408278

            ldr x0,[sp,#40]
            ldr x2,[x0,#8]
            adrp x0, .L_419e18
            add x1,x0, :lo12:.L_419e18
            mov x0,x2
            bl hlist_in

            cmp w0,#0
            b.ne .L_408218

            ldr x0,[sp,#40]
            ldr x2,[x0,#8]
            adrp x0, .L_419e28
            add x1,x0, :lo12:.L_419e28
            mov x0,x2
            bl hlist_in

            cmp w0,#0
            b.ne .L_408218

            ldr x0,[sp,#40]
            ldr x3,[x0,#8]
            adrp x0, .L_419e40
            add x2,x0, :lo12:.L_419e40
            adrp x0, .L_419e48
            add x1,x0, :lo12:.L_419e48
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_408278
.L_408218:

            ldr x0,[sp,#40]
            ldr x2,[x0,#8]
            adrp x0, .L_419e28
            add x1,x0, :lo12:.L_419e28
            mov x0,x2
            bl hlist_in

            cmp w0,#0
            b.eq .L_40826c

            ldr x0,[sp,#40]
            ldr x3,[x0,#8]
            adrp x0, .L_419e58
            add x2,x0, :lo12:.L_419e58
            adrp x0, .L_419e28
            add x1,x0, :lo12:.L_419e28
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_40826c

            mov x0,#1
            str x0,[sp,#56]
            b .L_4082a4
.L_40826c:

            mov x0,#-1
            str x0,[sp,#56]
            b .L_4082a4
.L_408278:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_40829c

            ldr w0,[sp,#52]
            cmp w0,#0
            b.ne .L_40829c

            ldr x0,[sp,#32]
            bl atoll

            b .L_4082a0
.L_40829c:

            mov x0,#0
.L_4082a0:

            str x0,[sp,#56]
.L_4082a4:

            ldr x1,[sp,#40]
            ldr x0,[sp,#24]
            cmp x1,x0
            b.ne .L_4082c4

            ldr x0,[sp,#56]
            cmn x0,#1
            b.ne .L_4082c4

            str xzr,[sp,#56]
.L_4082c4:

            ldr x0,[sp,#56]
.L_4082c8:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size http_has_body, . - http_has_body
.align 4
#-----------------------------------
.globl http_body_send
.type http_body_send, @function
#-----------------------------------
http_body_send:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str w0,[sp,#44]
            str w1,[sp,#40]
            str x2,[sp,#32]
            str x3,[sp,#24]
            mov w0,#1
            str w0,[sp,#76]
            ldr x0,[sp,#24]
            ldr w0,[x0,#28]
            cmp w0,#0
            b.eq .L_408308

            ldr x0,[sp,#32]
            b .L_40830c
.L_408308:

            ldr x0,[sp,#24]
.L_40830c:

            str x0,[sp,#64]
            ldr x1,[sp,#24]
            ldr x0,[sp,#32]
            bl http_has_body

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_40844c

            ldr x0,[sp,#64]
            ldr x3,[x0,#8]
            adrp x0, .L_419e58
            add x2,x0, :lo12:.L_419e58
            adrp x0, .L_419e28
            add x1,x0, :lo12:.L_419e28
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_4083cc

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408374

            adrp x0, .L_419e60
            add x0,x0, :lo12:.L_419e60
            bl puts
.L_408374:

            ldr w1,[sp,#40]
            ldr w0,[sp,#44]
            bl chunked_data_send

            str w0,[sp,#76]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40846c

            ldr w0,[sp,#76]
            cmp w0,#0
            b.eq .L_4083b0

            adrp x0, .L_419e78
            add x0,x0, :lo12:.L_419e78
            b .L_4083b8
.L_4083b0:

            adrp x0, .L_419e90
            add x0,x0, :lo12:.L_419e90
.L_4083b8:

            mov x1,x0
            adrp x0, .L_419eb8
            add x0,x0, :lo12:.L_419eb8
            bl printf

            b .L_40846c
.L_4083cc:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4083f0

            ldr x1,[sp,#56]
            adrp x0, .L_419ec0
            add x0,x0, :lo12:.L_419ec0
            bl printf
.L_4083f0:

            ldr x2,[sp,#56]
            ldr w1,[sp,#40]
            ldr w0,[sp,#44]
            bl data_send

            str w0,[sp,#76]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40846c

            ldr w0,[sp,#76]
            cmp w0,#0
            b.eq .L_408430

            adrp x0, .L_419ee0
            add x0,x0, :lo12:.L_419ee0
            b .L_408438
.L_408430:

            adrp x0, .L_419ef0
            add x0,x0, :lo12:.L_419ef0
.L_408438:

            mov x1,x0
            adrp x0, .L_419eb8
            add x0,x0, :lo12:.L_419eb8
            bl printf

            b .L_40846c
.L_40844c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40846c

            adrp x0, .L_419f10
            add x0,x0, :lo12:.L_419f10
            bl puts
.L_40846c:

            ldr w0,[sp,#76]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size http_body_send, . - http_body_send
.align 3
#-----------------------------------
.globl http_body_drop
.type http_body_drop, @function
#-----------------------------------
http_body_drop:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#28]
            str x1,[sp,#16]
            mov w0,#1
            str w0,[sp,#44]
            ldr x1,[sp,#16]
            mov x0,#0
            bl http_has_body

            str x0,[sp,#32]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_408540

            ldr x0,[sp,#16]
            ldr x3,[x0,#8]
            adrp x0, .L_419e58
            add x2,x0, :lo12:.L_419e58
            adrp x0, .L_419e28
            add x1,x0, :lo12:.L_419e28
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.eq .L_408508

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4084f4

            adrp x0, .L_419f20
            add x0,x0, :lo12:.L_419f20
            bl puts
.L_4084f4:

            ldr w1,[sp,#28]
            mov w0,#-1
            bl chunked_data_send

            str w0,[sp,#44]
            b .L_408540
.L_408508:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40852c

            ldr x1,[sp,#32]
            adrp x0, .L_419f40
            add x0,x0, :lo12:.L_419f40
            bl printf
.L_40852c:

            ldr x2,[sp,#32]
            ldr w1,[sp,#28]
            mov w0,#-1
            bl data_send

            str w0,[sp,#44]
.L_408540:

            ldr w0,[sp,#44]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size http_body_drop, . - http_body_drop
.align 2
#-----------------------------------
.globl compat_memset_s
.type compat_memset_s, @function
#-----------------------------------
compat_memset_s:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str x0,[sp,#24]
            str x1,[sp,#16]
            strb w2,[sp,#15]
            str x3,[sp]
            ldr x0,[sp]
            ldr x2,[sp,#16]
            ldr x1,[sp,#16]
            cmp x2,x0
            csel x0,x1,x0,ls
            str x0,[sp]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_408598
.L_408584:

            ldr x0,[sp,#40]
            add x1,x0,#1
            str x1,[sp,#40]
            ldrb w1,[sp,#15]
            strb w1,[x0]
.L_408598:

            ldr x0,[sp]
            sub x1,x0,#1
            str x1,[sp]
            cmp x0,#0
            b.ne .L_408584

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            add sp,sp,#48
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size compat_memset_s, . - compat_memset_s
.align 2
#-----------------------------------
.globl http_parse_basic
.type http_parse_basic, @function
#-----------------------------------
http_parse_basic:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str xzr,[sp,#80]
            str xzr,[sp,#72]
            str xzr,[sp,#64]
            str xzr,[sp,#56]
            adrp x0, .L_419f58
            add x2,x0, :lo12:.L_419f58
            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl hlist_subcmp

            cmp w0,#0
            b.ne .L_408604

            mov w0,#0
            b .L_4088fc
.L_408604:

            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl hlist_get

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            cmp x0,#0
            b.ne .L_408640

            adrp x0, .L_419f80
            add x3,x0, :lo12:.L_419f80
            mov w2,#697
            adrp x0, .L_419b60
            add x1,x0, :lo12:.L_419b60
            adrp x0, .L_419f60
            add x0,x0, :lo12:.L_419f60
            bl __assert_fail
.L_408640:

            ldr x0,[sp,#80]
            bl strlen

            add x0,x0,#1
            str x0,[sp,#48]
            ldr x0,[sp,#80]
            bl strlen

            add x0,x0,#1
            bl zmalloc

            str x0,[sp,#64]
            mov x0,#5
            str x0,[sp,#88]
            nop
            nop
            nop
            nop
.L_408670:

            ldr x0,[sp,#80]
            bl strlen

            mov x1,x0
            ldr x0,[sp,#88]
            cmp x0,x1
            b.hs .L_4086ac

            ldr x0,[sp,#88]
            add x0,x0,#1
            str x0,[sp,#88]
            ldr x1,[sp,#80]
            ldr x0,[sp,#88]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#32
            b.eq .L_408670
.L_4086ac:

            ldr x1,[sp,#80]
            ldr x0,[sp,#88]
            add x0,x1,x0
            mov x1,x0
            ldr x0,[sp,#64]
            bl from_base64

            mov w1,#58
            ldr x0,[sp,#64]
            bl strchr

            str x0,[sp,#72]
            ldr x0,[sp,#72]
            cmp x0,#0
            b.ne .L_40870c

            ldr x0,[sp,#64]
            bl strlen

            mov x3,x0
            mov w2,#0
            ldr x1,[sp,#48]
            ldr x0,[sp,#64]
            bl compat_memset_s

            ldr x0,[sp,#64]
            bl free

            mov w0,#-1
            b .L_4088fc
.L_40870c:

            ldr x0,[sp,#72]
            strb wzr,[x0]
            mov w1,#92
            ldr x0,[sp,#64]
            bl strchr

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_40875c

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4087c4

            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_4087c4

            ldr x0,[sp,#24]
            mov x2,#50
            ldr x1,[sp,#64]
            bl strlcpy

            b .L_4087c4
.L_40875c:

            ldr x0,[sp,#56]
            strb wzr,[x0]
            ldr x0,[sp,#56]
            add x0,x0,#1
            str x0,[sp,#56]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_40879c

            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_40879c

            ldr x0,[sp,#24]
            add x0,x0,#50
            mov x2,#50
            ldr x1,[sp,#64]
            bl strlcpy
.L_40879c:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4087c4

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_4087c4

            ldr x0,[sp,#24]
            mov x2,#50
            ldr x1,[sp,#56]
            bl strlcpy
.L_4087c4:

            ldr x0,[sp,#24]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.eq .L_40882c

            ldr x3,[sp,#24]
            ldr x0,[sp,#24]
            add x1,x0,#50
            ldr x0,[sp,#72]
            add x0,x0,#1
            mov x2,x0
            mov x0,x3
            bl ntlm2_hash_password

            str x0,[sp,#80]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_408824

            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_408824

            ldr x0,[sp,#24]
            add x2,x0,#250
            ldr x0,[sp,#80]
            ldp x0,x1,[x0]
            stp x0,x1,[x2]
.L_408824:

            ldr x0,[sp,#80]
            bl free
.L_40882c:

            ldr x0,[sp,#24]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.eq .L_408880

            ldr x0,[sp,#72]
            add x0,x0,#1
            bl ntlm_hash_nt_password

            str x0,[sp,#80]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_408878

            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_408878

            ldr x0,[sp,#24]
            add x0,x0,#200
            mov x2,#21
            ldr x1,[sp,#80]
            bl memcpy
.L_408878:

            ldr x0,[sp,#80]
            bl free
.L_408880:

            ldr x0,[sp,#24]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.eq .L_4088d4

            ldr x0,[sp,#72]
            add x0,x0,#1
            bl ntlm_hash_lm_password

            str x0,[sp,#80]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4088cc

            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_4088cc

            ldr x0,[sp,#24]
            add x0,x0,#150
            mov x2,#21
            ldr x1,[sp,#80]
            bl memcpy
.L_4088cc:

            ldr x0,[sp,#80]
            bl free
.L_4088d4:

            ldr x0,[sp,#64]
            bl strlen

            mov x3,x0
            mov w2,#0
            ldr x1,[sp,#48]
            ldr x0,[sp,#64]
            bl compat_memset_s

            ldr x0,[sp,#64]
            bl free

            mov w0,#1
.L_4088fc:

            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size http_parse_basic, . - http_parse_basic
.align 2
#-----------------------------------
.globl sighandler
.type sighandler, @function
#-----------------------------------
sighandler:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str w0,[sp,#28]
            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40893c

            ldr w2,[sp,#28]
            adrp x0, .L_419f98
            add x1,x0, :lo12:.L_419f98
            mov w0,#6
            bl syslog

            b .L_408950
.L_40893c:

            ldr w2,[sp,#28]
            adrp x0, .L_419fc8
            add x1,x0, :lo12:.L_419fc8
            mov w0,#6
            bl syslog
.L_408950:

            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, quit
            add x1,x1, :lo12:quit
            str w2,[x1]
            cmp w0,#0
            b.ne .L_408988

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4089a4
.L_408988:

            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, quit
            add x0,x0, :lo12:quit
            str w1,[x0]
.L_4089a4:

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size sighandler, . - sighandler
.align 4
#-----------------------------------
.globl listen_add
.type listen_add, @function
#-----------------------------------
listen_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str w3,[sp,#20]
            mov w1,#58
            ldr x0,[sp,#24]
            bl strrchr

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_408ab8

            ldr x1,[sp,#80]
            ldr x0,[sp,#24]
            sub x0,x1,x0
            str w0,[sp,#72]
            ldr x0,[sp,#24]
            ldrb w0,[x0]
            cmp w0,#91
            b.ne .L_408a40

            ldrsw x0,[sp,#72]
            sub x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#93
            b.ne .L_408a40

            ldr w0,[sp,#72]
            sub w0,w0,#2
            mov w2,w0
            mov w1,#1
            ldr x0,[sp,#24]
            bl substr

            str x0,[sp,#88]
            b .L_408a54
.L_408a40:

            ldr w2,[sp,#72]
            mov w1,#0
            ldr x0,[sp,#24]
            bl substr

            str x0,[sp,#88]
.L_408a54:

            ldrsw x0,[sp,#72]
            add x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            bl atoi

            str w0,[sp,#76]
            ldr w0,[sp,#76]
            cmp w0,#0
            b.eq .L_408a90

            add x0,sp,#56
            ldr w2,[sp,#76]
            ldr x1,[sp,#88]
            bl so_resolv

            cmp w0,#0
            b.ne .L_408aac
.L_408a90:

            ldr x2,[sp,#24]
            adrp x0, .L_419ff0
            add x1,x0, :lo12:.L_419ff0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_408aac:

            ldr x0,[sp,#88]
            bl free

            b .L_408afc
.L_408ab8:

            ldr x0,[sp,#24]
            bl atoi

            str w0,[sp,#76]
            ldr w0,[sp,#76]
            cmp w0,#0
            b.ne .L_408aec

            ldr x2,[sp,#24]
            adrp x0, .L_419ff0
            add x1,x0, :lo12:.L_419ff0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_408aec:

            add x0,sp,#56
            ldr w2,[sp,#20]
            ldr w1,[sp,#76]
            bl so_resolv_wildcard
.L_408afc:

            ldr x0,[sp,#56]
            mov x2,#0
            mov x1,x0
            ldr x0,[sp,#32]
            bl so_listen

            str w0,[sp,#68]
            ldr w0,[sp,#68]
            cmp w0,#0
            b.le .L_408b38

            ldr x3,[sp,#24]
            ldr x2,[sp,#40]
            adrp x0, .L_41a018
            add x1,x0, :lo12:.L_41a018
            mov w0,#6
            bl syslog
.L_408b38:

            ldr x0,[sp,#56]
            bl freeaddrinfo

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size listen_add, . - listen_add
.align 2
#-----------------------------------
.globl tunnel_add
.type tunnel_add, @function
#-----------------------------------
tunnel_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -128
            str x0,[sp,#56]
            str x1,[sp,#48]
            str w2,[sp,#44]
            ldr x0,[sp,#48]
            bl strdup

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            bl strlen

            str w0,[sp,#128]
            add x0,sp,#64
            ldr x1,[sp,#48]
            str x1,[x0]
            mov w0,#1
            str w0,[sp,#136]
            str wzr,[sp,#140]
            b .L_408bf4
.L_408b98:

            ldrsw x0,[sp,#140]
            ldr x1,[sp,#48]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_408be8

            ldrsw x0,[sp,#140]
            ldr x1,[sp,#48]
            add x0,x1,x0
            strb wzr,[x0]
            ldrsw x0,[sp,#140]
            add x1,x0,#1
            ldr w0,[sp,#136]
            add w2,w0,#1
            str w2,[sp,#136]
            ldr x2,[sp,#48]
            add x2,x2,x1
            add x1,sp,#64
            sxtw x0,w0
            str x2,[x1,x0,lsl #3]
.L_408be8:

            ldr w0,[sp,#140]
            add w0,w0,#1
            str w0,[sp,#140]
.L_408bf4:

            ldr w0,[sp,#136]
            cmp w0,#3
            b.gt .L_408c10

            ldr w1,[sp,#140]
            ldr w0,[sp,#128]
            cmp w1,w0
            b.lt .L_408b98
.L_408c10:

            str wzr,[sp,#132]
            ldr w0,[sp,#136]
            cmp w0,#4
            b.ne .L_408cb4

            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            bl atoi

            str w0,[sp,#124]
            ldr w0,[sp,#124]
            cmp w0,#0
            b.eq .L_408c68

            add x0,sp,#64
            ldrsw x1,[sp,#132]
            ldr x1,[x0,x1,lsl #3]
            add x0,sp,#96
            ldr w2,[sp,#124]
            bl so_resolv

            cmp w0,#0
            b.ne .L_408ca4
.L_408c68:

            add x0,sp,#64
            ldrsw x1,[sp,#132]
            ldr x2,[x0,x1,lsl #3]
            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            mov x3,x0
            adrp x0, .L_41a030
            add x1,x0, :lo12:.L_41a030
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_408ca4:

            ldr w0,[sp,#132]
            add w0,w0,#1
            str w0,[sp,#132]
            b .L_408d0c
.L_408cb4:

            add x0,sp,#64
            ldrsw x1,[sp,#132]
            ldr x0,[x0,x1,lsl #3]
            bl atoi

            str w0,[sp,#124]
            ldr w0,[sp,#124]
            cmp w0,#0
            b.ne .L_408cfc

            add x0,sp,#64
            ldrsw x1,[sp,#132]
            ldr x0,[x0,x1,lsl #3]
            mov x2,x0
            adrp x0, .L_41a060
            add x1,x0, :lo12:.L_41a060
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_408cfc:

            add x0,sp,#96
            ldr w2,[sp,#44]
            ldr w1,[sp,#124]
            bl so_resolv_wildcard
.L_408d0c:

            ldr w1,[sp,#136]
            ldr w0,[sp,#132]
            sub w0,w1,w0
            cmp w0,#3
            b.ne .L_408ea4

            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_408d60

            ldr w0,[sp,#132]
            add w1,w0,#2
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_408da4
.L_408d60:

            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x2,[x0,x1,lsl #3]
            ldr w0,[sp,#132]
            add w1,w0,#2
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            mov x3,x0
            adrp x0, .L_41a080
            add x1,x0, :lo12:.L_41a080
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_408da4:

            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            bl strlen

            mov x19,x0
            ldr w0,[sp,#132]
            add w1,w0,#2
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            bl strlen

            add x0,x19,x0
            add x0,x0,#3
            str x0,[sp,#112]
            ldr x0,[sp,#112]
            bl zmalloc

            str x0,[sp,#104]
            ldr w0,[sp,#132]
            add w1,w0,#1
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            ldr x2,[sp,#112]
            mov x1,x0
            ldr x0,[sp,#104]
            bl strlcpy

            ldr x2,[sp,#112]
            adrp x0, .L_41a0a0
            add x1,x0, :lo12:.L_41a0a0
            ldr x0,[sp,#104]
            bl strlcat

            ldr w0,[sp,#132]
            add w1,w0,#2
            add x0,sp,#64
            sxtw x1,w1
            ldr x0,[x0,x1,lsl #3]
            ldr x2,[sp,#112]
            mov x1,x0
            ldr x0,[sp,#104]
            bl strlcat

            ldr x0,[sp,#96]
            ldr x2,[sp,#104]
            mov x1,x0
            ldr x0,[sp,#56]
            bl so_listen

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#0
            b.le .L_408e88

            ldr x2,[sp,#104]
            adrp x0, .L_41a0a8
            add x1,x0, :lo12:.L_41a0a8
            mov w0,#6
            bl syslog

            b .L_408eb8
.L_408e88:

            adrp x0, .L_41a0c0
            add x1,x0, :lo12:.L_41a0c0
            mov w0,#3
            bl syslog

            ldr x0,[sp,#104]
            bl free

            b .L_408eb8
.L_408ea4:

            adrp x0, .L_41a0d8
            add x0,x0, :lo12:.L_41a0d8
            bl puts

            mov w0,#1
            bl myexit
.L_408eb8:

            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#96]
            bl freeaddrinfo

            nop
            nop
            nop
            nop
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#144
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size tunnel_add, . - tunnel_add
.align 3
#-----------------------------------
.globl noproxy_add
.type noproxy_add, @function
#-----------------------------------
noproxy_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            add x0,sp,#32
            mov x2,x0
            adrp x0, .L_41a120
            add x1,x0, :lo12:.L_41a120
            ldr x0,[sp,#16]
            bl strtok_r

            str x0,[sp,#40]
            b .L_408f64
.L_408f08:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408f2c

            ldr x1,[sp,#40]
            adrp x0, .L_41a128
            add x0,x0, :lo12:.L_41a128
            bl printf
.L_408f2c:

            ldr x0,[sp,#40]
            bl strdup

            mov x2,x0
            mov x1,#0
            ldr x0,[sp,#24]
            bl plist_add

            str x0,[sp,#24]
            add x0,sp,#32
            mov x2,x0
            adrp x0, .L_41a120
            add x1,x0, :lo12:.L_41a120
            mov x0,#0
            bl strtok_r

            str x0,[sp,#40]
.L_408f64:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_408f08

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size noproxy_add, . - noproxy_add
.align 2
#-----------------------------------
.globl noproxy_match
.type noproxy_match, @function
#-----------------------------------
noproxy_match:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            ldr x0,[x0]
            str x0,[sp,#40]
            b .L_409050
.L_408f9c:

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_409014

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_409014

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            mov w2,#0
            ldr x1,[sp,#24]
            bl fnmatch

            cmp w0,#0
            b.ne .L_409014

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40900c

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            mov x2,x0
            ldr x1,[sp,#24]
            adrp x0, .L_41a148
            add x0,x0, :lo12:.L_41a148
            bl printf
.L_40900c:

            mov w0,#1
            b .L_409060
.L_409014:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_409044

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            mov x2,x0
            ldr x1,[sp,#24]
            adrp x0, .L_41a158
            add x0,x0, :lo12:.L_41a158
            bl printf
.L_409044:

            ldr x0,[sp,#40]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
.L_409050:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_408f9c

            mov w0,#0
.L_409060:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size noproxy_match, . - noproxy_match
.align 3
#-----------------------------------
.globl proxy_thread
.type proxy_thread, @function
#-----------------------------------
proxy_thread:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0]
            str w0,[sp,#52]
.L_409080:

            str xzr,[sp,#56]
            str wzr,[sp,#48]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4090bc

            ldr w1,[sp,#52]
            adrp x0, .L_41a168
            add x0,x0, :lo12:.L_41a168
            bl printf

            ldr w1,[sp,#52]
            adrp x0, .L_41a188
            add x0,x0, :lo12:.L_41a188
            bl printf
.L_4090bc:

            bl new_rr_data

            str x0,[sp,#32]
            ldr x0,[sp,#32]
            mov x1,x0
            ldr w0,[sp,#52]
            bl headers_recv

            cmp w0,#0
            b.ne .L_4090e8

            add x0,sp,#32
            bl free_rr_data

            b .L_4091f8
.L_4090e8:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_409104

            add x0,sp,#32
            bl free_rr_data

            ldr x0,[sp,#56]
            str x0,[sp,#32]
.L_409104:

            ldr x0,[sp,#32]
            ldr x3,[x0,#8]
            adrp x0, .L_41a1a8
            add x2,x0, :lo12:.L_41a1a8
            adrp x0, .L_41a1b8
            add x1,x0, :lo12:.L_41a1b8
            mov x0,x3
            bl hlist_subcmp

            str w0,[sp,#48]
            ldr x0,[sp,#32]
            ldr x0,[x0,#64]
            bl noproxy_match

            cmp w0,#0
            b.eq .L_409154

            ldr x0,[sp,#32]
            mov x1,x0
            ldr x0,[sp,#24]
            bl direct_request

            str x0,[sp,#56]
            b .L_409188
.L_409154:

            ldr x0,[sp,#32]
            mov x1,x0
            ldr x0,[sp,#24]
            bl forward_request

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmn x0,#2
            b.ne .L_409188

            ldr x0,[sp,#32]
            mov x1,x0
            ldr x0,[sp,#24]
            bl direct_request

            str x0,[sp,#56]
.L_409188:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4091ac

            ldr x1,[sp,#56]
            adrp x0, .L_41a1d0
            add x0,x0, :lo12:.L_41a1d0
            bl printf
.L_4091ac:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_4091c4

            ldr x0,[sp,#56]
            cmn x0,#1
            b.ne .L_4090e8
.L_4091c4:

            add x0,sp,#32
            bl free_rr_data

            ldr w0,[sp,#48]
            cmp w0,#0
            b.eq .L_4091f8

            ldr x0,[sp,#56]
            cmn x0,#1
            b.eq .L_4091f8

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_409080
.L_4091f8:

            ldr x0,[sp,#24]
            bl free

            ldr w0,[sp,#52]
            bl close

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409264

            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_lock

            bl pthread_self

            str x0,[sp,#40]
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            ldr x0,[x0]
            mov x2,#0
            ldr x1,[sp,#40]
            bl plist_add

            mov x1,x0
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            str x1,[x0]
            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_unlock
.L_409264:

            mov x0,#0
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxy_thread, . - proxy_thread
.align 4
#-----------------------------------
.globl tunnel_thread
.type tunnel_thread, @function
#-----------------------------------
tunnel_thread:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4092a8

            adrp x0, .L_41b978
            add x3,x0, :lo12:.L_41b978
            mov w2,#360
            adrp x0, .L_41a1f0
            add x1,x0, :lo12:.L_41a1f0
            adrp x0, .L_41a200
            add x0,x0, :lo12:.L_41a200
            bl __assert_fail
.L_4092a8:

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            str x0,[sp,#56]
            ldr x0,[sp,#56]
            bl strdup

            str x0,[sp,#48]
            mov w1,#58
            ldr x0,[sp,#48]
            bl strchr

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_4092e4

            ldr x0,[sp,#40]
            strb wzr,[x0]
.L_4092e4:

            ldr x0,[sp,#48]
            bl noproxy_match

            cmp w0,#0
            b.eq .L_409300

            ldr x0,[sp,#24]
            bl direct_tunnel

            b .L_409318
.L_409300:

            ldr x0,[sp,#24]
            bl forward_tunnel

            cmn w0,#2
            b.ne .L_409318

            ldr x0,[sp,#24]
            bl direct_tunnel
.L_409318:

            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#24]
            bl free

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409384

            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_lock

            bl pthread_self

            str x0,[sp,#32]
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            ldr x0,[x0]
            mov x2,#0
            ldr x1,[sp,#32]
            bl plist_add

            mov x1,x0
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            str x1,[x0]
            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_unlock
.L_409384:

            mov x0,#0
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size tunnel_thread, . - tunnel_thread
.align 4
#-----------------------------------
.globl socks5_thread
.type socks5_thread, @function
#-----------------------------------
socks5_thread:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-224]!
.cfi_def_cfa_offset 224
.cfi_offset 29, -224
.cfi_offset 30, -216
            mov fp,sp
            str x0,[sp,#24]
            str xzr,[sp,#200]
            str xzr,[sp,#168]
            str xzr,[sp,#192]
            str xzr,[sp,#184]
            mov w0,#-1
            str w0,[sp,#180]
            mov w0,#-1
            str w0,[sp,#176]
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x0,[x0]
            bl hlist_count

            cmp w0,#0
            cset w0,eq
            and w0,w0,#255
            str w0,[sp,#164]
            ldr x0,[sp,#24]
            ldr w0,[x0]
            str w0,[sp,#160]
            add x0,sp,#48
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#24]
            add x0,x0,#16
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_409430

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#4
            b .L_40943c
.L_409430:

            ldr x0,[sp,#24]
            add x0,x0,#16
            add x0,x0,#8
.L_40943c:

            add x1,sp,#48
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            ldr x0,[sp,#24]
            bl free

            mov x0,#10
            bl zmalloc

            str x0,[sp,#168]
            mov x0,#260
            bl zmalloc

            str x0,[sp,#152]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#144]
            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#2
            b.ne .L_409ce8

            ldr x0,[sp,#168]
            ldrb w0,[x0]
            cmp w0,#5
            b.ne .L_409ce8

            ldr x0,[sp,#168]
            add x0,x0,#1
            ldrb w0,[x0]
            str w0,[sp,#216]
            ldr w0,[sp,#216]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#192]
            ldrsw x0,[sp,#216]
            mov x2,x0
            ldr x1,[sp,#192]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#216]
            cmp w1,w0
            b.ne .L_409cf0

            ldr w0,[sp,#164]
            cmp w0,#0
            b.eq .L_409570

            str wzr,[sp,#212]
            b .L_409554
.L_409510:

            ldrsw x0,[sp,#212]
            ldr x1,[sp,#192]
            add x0,x1,x0
            ldrb w1,[x0]
            adrp x0, SOCKS5_AUTH_NO_AUTHENTICATION_REQUIRED.2
            add x0,x0, :lo12:SOCKS5_AUTH_NO_AUTHENTICATION_REQUIRED.2
            ldrb w0,[x0]
            cmp w1,w0
            b.ne .L_409548

            ldrsw x0,[sp,#212]
            ldr x1,[sp,#192]
            add x0,x1,x0
            ldrb w0,[x0]
            str w0,[sp,#180]
.L_409548:

            ldr w0,[sp,#212]
            add w0,w0,#1
            str w0,[sp,#212]
.L_409554:

            ldr w1,[sp,#212]
            ldr w0,[sp,#216]
            cmp w1,w0
            b.ge .L_409570

            ldr w0,[sp,#180]
            cmp w0,#0
            b.lt .L_409510
.L_409570:

            ldr w0,[sp,#180]
            cmp w0,#0
            b.ge .L_4095e4

            str wzr,[sp,#212]
            b .L_4095c8
.L_409584:

            ldrsw x0,[sp,#212]
            ldr x1,[sp,#192]
            add x0,x1,x0
            ldrb w1,[x0]
            adrp x0, SOCKS5_AUTH_USERNAME_PASSWORD.1
            add x0,x0, :lo12:SOCKS5_AUTH_USERNAME_PASSWORD.1
            ldrb w0,[x0]
            cmp w1,w0
            b.ne .L_4095bc

            ldrsw x0,[sp,#212]
            ldr x1,[sp,#192]
            add x0,x1,x0
            ldrb w0,[x0]
            str w0,[sp,#180]
.L_4095bc:

            ldr w0,[sp,#212]
            add w0,w0,#1
            str w0,[sp,#212]
.L_4095c8:

            ldr w1,[sp,#212]
            ldr w0,[sp,#216]
            cmp w1,w0
            b.ge .L_4095e4

            ldr w0,[sp,#180]
            cmp w0,#0
            b.lt .L_409584
.L_4095e4:

            ldr w0,[sp,#180]
            cmp w0,#0
            b.ge .L_409628

            ldr x0,[sp,#168]
            mov w1,#5
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            adrp x1, SOCKS5_AUTH_NO_ACCEPTABLE_METHODS.0
            add x1,x1, :lo12:SOCKS5_AUTH_NO_ACCEPTABLE_METHODS.0
            ldrb w1,[x1]
            strb w1,[x0]
            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            b .L_409d24
.L_409628:

            ldr x0,[sp,#168]
            mov w1,#5
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            ldr w1,[sp,#180]
            and w1,w1,#255
            strb w1,[x0]
            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            str w0,[sp,#136]
            ldr w0,[sp,#136]
            cmp w0,#2
            b.eq .L_409678

            adrp x0, .L_41a218
            add x1,x0, :lo12:.L_41a218
            mov w0,#3
            bl syslog
.L_409678:

            ldr w0,[sp,#180]
            cmp w0,#0
            b.eq .L_4098a0

            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#2
            b.eq .L_4096d4

            ldr x0,[sp,#168]
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            mov w1,#-1
            strb w1,[x0]
            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            b .L_409d24
.L_4096d4:

            ldr x0,[sp,#168]
            add x0,x0,#1
            ldrb w0,[x0]
            str w0,[sp,#216]
            ldr w0,[sp,#216]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#128]
            ldr w0,[sp,#216]
            add w0,w0,#1
            sxtw x0,w0
            mov x2,x0
            ldr x1,[sp,#128]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#216]
            add w0,w0,#1
            ldr w1,[sp,#140]
            cmp w1,w0
            b.eq .L_409738

            ldr x0,[sp,#128]
            bl free

            b .L_409d24
.L_409738:

            ldrsw x0,[sp,#216]
            ldr x1,[sp,#128]
            add x0,x1,x0
            ldrb w0,[x0]
            str w0,[sp,#212]
            ldrsw x0,[sp,#216]
            ldr x1,[sp,#128]
            add x0,x1,x0
            strb wzr,[x0]
            ldr w0,[sp,#212]
            str w0,[sp,#216]
            ldr w0,[sp,#216]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#120]
            ldrsw x0,[sp,#216]
            mov x2,x0
            ldr x1,[sp,#120]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#216]
            cmp w1,w0
            b.eq .L_4097b4

            ldr x0,[sp,#120]
            bl free

            ldr x0,[sp,#128]
            bl free

            b .L_409d24
.L_4097b4:

            ldrsw x0,[sp,#216]
            ldr x1,[sp,#120]
            add x0,x1,x0
            strb wzr,[x0]
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x0,[x0]
            ldr x1,[sp,#128]
            bl hlist_get

            str x0,[sp,#112]
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x0,[x0]
            bl hlist_count

            cmp w0,#0
            b.eq .L_409814

            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_409830

            ldr x1,[sp,#120]
            ldr x0,[sp,#112]
            bl strcmp

            cmp w0,#0
            b.ne .L_409830
.L_409814:

            ldr x0,[sp,#168]
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            strb wzr,[x0]
            b .L_40984c
.L_409830:

            ldr x0,[sp,#168]
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            mov w1,#-1
            strb w1,[x0]
.L_40984c:

            mov x2,#2
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            str w0,[sp,#136]
            ldr w0,[sp,#136]
            cmp w0,#2
            b.eq .L_40987c

            adrp x0, .L_41a250
            add x1,x0, :lo12:.L_41a250
            mov w0,#3
            bl syslog
.L_40987c:

            ldr x0,[sp,#120]
            bl free

            ldr x0,[sp,#128]
            bl free

            ldr x0,[sp,#168]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_409cf8
.L_4098a0:

            mov x2,#4
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#4
            b.ne .L_409d00

            ldr x0,[sp,#168]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#1
            b.ne .L_4098fc

            ldr x0,[sp,#168]
            add x0,x0,#3
            ldrb w0,[x0]
            cmp w0,#1
            b.eq .L_40995c

            ldr x0,[sp,#168]
            add x0,x0,#3
            ldrb w0,[x0]
            cmp w0,#3
            b.eq .L_40995c
.L_4098fc:

            ldr x0,[sp,#168]
            mov w1,#5
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            mov w1,#2
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#2
            strb wzr,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#3
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#4
            mov x2,#6
            mov w1,#0
            bl memset

            mov x2,#10
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            b .L_409d24
.L_40995c:

            ldr x0,[sp,#168]
            add x0,x0,#3
            ldrb w0,[x0]
            cmp w0,#1
            b.ne .L_409984

            mov w0,#1
            str w0,[sp,#220]
            mov w0,#4
            str w0,[sp,#216]
            b .L_4099cc
.L_409984:

            ldr x0,[sp,#168]
            add x0,x0,#3
            ldrb w0,[x0]
            cmp w0,#3
            b.ne .L_409d08

            mov w0,#2
            str w0,[sp,#220]
            add x0,sp,#47
            mov x2,#1
            mov x1,x0
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#1
            b.ne .L_409d10

            ldrb w0,[sp,#47]
            str w0,[sp,#216]
.L_4099cc:

            ldr w0,[sp,#216]
            add w0,w0,#11
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#184]
            ldrsw x0,[sp,#216]
            mov x2,x0
            ldr x1,[sp,#184]
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#216]
            cmp w1,w0
            b.ne .L_409d18

            ldrsw x0,[sp,#216]
            ldr x1,[sp,#184]
            add x0,x1,x0
            strb wzr,[x0]
            ldr w0,[sp,#220]
            cmp w0,#1
            b.ne .L_409a84

            ldr x0,[sp,#184]
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#184]
            add x0,x0,#1
            ldrb w0,[x0]
            mov w2,w0
            ldr x0,[sp,#184]
            add x0,x0,#2
            ldrb w0,[x0]
            mov w3,w0
            ldr x0,[sp,#184]
            add x0,x0,#3
            ldrb w0,[x0]
            mov w6,w0
            mov w5,w3
            mov w4,w2
            mov w3,w1
            adrp x0, .L_41a290
            add x2,x0, :lo12:.L_41a290
            mov x1,#260
            ldr x0,[sp,#152]
            bl snprintf

            b .L_409a94
.L_409a84:

            mov x2,#260
            ldr x1,[sp,#184]
            ldr x0,[sp,#152]
            bl strlcpy
.L_409a94:

            add x0,sp,#94
            mov x2,#2
            mov x1,x0
            ldr w0,[sp,#160]
            bl read

            str w0,[sp,#140]
            ldr w0,[sp,#140]
            cmp w0,#2
            b.ne .L_409d20

            str wzr,[sp,#212]
            ldr x0,[sp,#152]
            bl noproxy_match

            cmp w0,#0
            b.eq .L_409b00

            ldrh w0,[sp,#94]
            bl ntohs

            and w0,w0,#65535
            mov w1,w0
            ldr x0,[sp,#152]
            bl host_connect

            str w0,[sp,#176]
            ldr w0,[sp,#176]
            mvn w0,w0
            lsr w0,w0,#31
            and w0,w0,#255
            str w0,[sp,#212]
            b .L_409bd8
.L_409b00:

            ldrh w0,[sp,#94]
            bl ntohs

            and w0,w0,#65535
            mov w3,w0
            adrp x0, .L_41a2a0
            add x2,x0, :lo12:.L_41a2a0
            mov x1,#50
            ldr x0,[sp,#144]
            bl snprintf

            ldr x0,[sp,#152]
            bl strdup

            str x0,[sp,#104]
            mov x2,#260
            adrp x0, .L_41a0a0
            add x1,x0, :lo12:.L_41a0a0
            ldr x0,[sp,#152]
            bl strlcat

            mov x2,#260
            ldr x1,[sp,#144]
            ldr x0,[sp,#152]
            bl strlcat

            bl new_auth

            str x0,[sp,#200]
            ldr x2,[sp,#104]
            ldr x1,[sp,#152]
            ldr x0,[sp,#200]
            bl proxy_connect

            str w0,[sp,#176]
            ldr w0,[sp,#176]
            cmn w0,#2
            b.ne .L_409bb0

            ldrh w0,[sp,#94]
            bl ntohs

            and w0,w0,#65535
            mov w1,w0
            ldr x0,[sp,#104]
            bl host_connect

            str w0,[sp,#176]
            ldr w0,[sp,#176]
            mvn w0,w0
            lsr w0,w0,#31
            and w0,w0,#255
            str w0,[sp,#212]
            b .L_409bd0
.L_409bb0:

            ldr w0,[sp,#176]
            cmp w0,#0
            b.lt .L_409bd0

            ldr x2,[sp,#152]
            ldr x1,[sp,#200]
            ldr w0,[sp,#176]
            bl prepare_http_connect

            str w0,[sp,#212]
.L_409bd0:

            ldr x0,[sp,#104]
            bl free
.L_409bd8:

            ldr w0,[sp,#212]
            cmp w0,#0
            b.ne .L_409c44

            ldr x0,[sp,#168]
            mov w1,#5
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#2
            strb wzr,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#3
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#4
            mov x2,#6
            mov w1,#0
            bl memset

            mov x2,#10
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            b .L_409d24
.L_409c44:

            ldr x0,[sp,#168]
            mov w1,#5
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#1
            strb wzr,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#2
            strb wzr,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#3
            mov w1,#1
            strb w1,[x0]
            ldr x0,[sp,#168]
            add x0,x0,#4
            mov x2,#6
            mov w1,#0
            bl memset

            mov x2,#10
            ldr x1,[sp,#168]
            ldr w0,[sp,#160]
            bl write_wrapper

            str w0,[sp,#136]
            ldr w0,[sp,#136]
            cmp w0,#10
            b.eq .L_409cbc

            adrp x0, .L_41a2a8
            add x1,x0, :lo12:.L_41a2a8
            mov w0,#3
            bl syslog
.L_409cbc:

            add x0,sp,#48
            ldr x3,[sp,#152]
            mov x2,x0
            adrp x0, .L_41a2e8
            add x1,x0, :lo12:.L_41a2e8
            mov w0,#7
            bl syslog

            ldr w1,[sp,#176]
            ldr w0,[sp,#160]
            bl tunnel

            b .L_409d24
.L_409ce8:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409cf0:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409cf8:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409d00:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409d08:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409d10:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409d18:

            nop
            nop
            nop
            nop
            b .L_409d24
.L_409d20:

            nop
            nop
            nop
            nop
.L_409d24:

            ldr x0,[sp,#184]
            cmp x0,#0
            b.eq .L_409d38

            ldr x0,[sp,#184]
            bl free
.L_409d38:

            ldr x0,[sp,#192]
            cmp x0,#0
            b.eq .L_409d4c

            ldr x0,[sp,#192]
            bl free
.L_409d4c:

            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_409d60

            ldr x0,[sp,#152]
            bl free
.L_409d60:

            ldr x0,[sp,#144]
            cmp x0,#0
            b.eq .L_409d74

            ldr x0,[sp,#144]
            bl free
.L_409d74:

            ldr x0,[sp,#168]
            cmp x0,#0
            b.eq .L_409d88

            ldr x0,[sp,#168]
            bl free
.L_409d88:

            ldr x0,[sp,#200]
            cmp x0,#0
            b.eq .L_409d9c

            ldr x0,[sp,#200]
            bl free
.L_409d9c:

            ldr w0,[sp,#176]
            cmp w0,#0
            b.lt .L_409db0

            ldr w0,[sp,#176]
            bl close
.L_409db0:

            ldr w0,[sp,#160]
            bl close

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409e14

            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_lock

            bl pthread_self

            str x0,[sp,#96]
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            ldr x0,[x0]
            mov x2,#0
            ldr x1,[sp,#96]
            bl plist_add

            mov x1,x0
            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            str x1,[x0]
            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_unlock
.L_409e14:

            mov x0,#0
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size socks5_thread, . - socks5_thread
.align 4
#-----------------------------------
.globl main
.type main, @function
#-----------------------------------
main:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#912
.cfi_def_cfa_offset 912
            stp fp,lr,[sp]
.cfi_offset 29, -912
.cfi_offset 30, -904
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -896
.cfi_offset 20, -888
            str w0,[sp,#44]
            str x1,[sp,#32]
            str wzr,[sp,#788]
            str wzr,[sp,#896]
            str wzr,[sp,#892]
            str wzr,[sp,#888]
            str wzr,[sp,#884]
            str wzr,[sp,#880]
            str wzr,[sp,#876]
            str wzr,[sp,#872]
            str wzr,[sp,#868]
            str wzr,[sp,#784]
            str wzr,[sp,#864]
            mov w0,#1
            str w0,[sp,#860]
            str xzr,[sp,#848]
            str xzr,[sp,#312]
            str xzr,[sp,#304]
            str xzr,[sp,#296]
            str xzr,[sp,#288]
            str xzr,[sp,#840]
            str xzr,[sp,#832]
            str wzr,[sp,#828]
            mov x0,#4096
            bl zmalloc

            str x0,[sp,#776]
            bl new_auth

            mov x1,x0
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            str x1,[x0]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#768]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#760]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#752]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#744]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#736]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#728]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#720]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#712]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#704]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#696]
            str wzr,[sp,#824]
            mov w2,#24
            mov w1,#34
            adrp x0, .L_41a2f8
            add x0,x0, :lo12:.L_41a2f8
            bl openlog

            adrp x0, .L_41a300
            add x1,x0, :lo12:.L_41a300
            mov w0,#6
            bl syslog

            b .L_40a698
.L_409f50:

            ldr w0,[sp,#900]
            sub w0,w0,#65
            cmp w0,#54
            b.hi .L_40a678

            adrp x1, .L_41b89c
            add x1,x1, :lo12:.L_41b89c
            ldr w0,[x1,w0,uxtw #2]
            adr x1, .L_409f78
            add x0,x1,w0, sxtw #2
            br x0
.L_409f78:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            ldr w0,[sp,#900]
            cmp w0,#65
            cset w0,ne
            and w0,w0,#255
            mov w2,w0
            add x0,sp,#288
            bl acl_add

            cmp w0,#0
            b.ne .L_40a684

            mov w0,#1
            bl myexit
.L_409fb0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#696]
            bl strlcpy

            b .L_40a698
.L_409fd0:

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            mov w1,#1
            str w1,[x0]
            b .L_40a698
.L_409fe4:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strdup

            str x0,[sp,#848]
            b .L_40a698
.L_409ffc:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#760]
            bl strlcpy

            b .L_40a698
.L_40a01c:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            add x1,sp,#520
            mov w2,#0
            bl strtoul

            lsl w19,w0,#24
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            add x1,sp,#520
            mov w2,#0
            bl strtoul

            lsl w0,w0,#8
            and w0,w0,#16711680
            orr w19,w19,w0
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            add x1,sp,#520
            mov w2,#0
            bl strtoul

            lsr w0,w0,#8
            and w0,w0,#65280
            orr w19,w19,w0
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            add x1,sp,#520
            mov w2,#0
            bl strtoul

            lsr w0,w0,#24
            and w0,w0,#255
            orr w0,w19,w0
            str w0,[sp,#864]
            b .L_40a698
.L_40a0ac:

            str wzr,[sp,#860]
            b .L_40a698
.L_40a0b4:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40a68c

            adrp x0, scanner_plugin
            add x0,x0, :lo12:scanner_plugin
            mov w1,#1
            str w1,[x0]
            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40a100

            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            mov x1,#1
            str x1,[x0]
.L_40a100:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strlen

            add w0,w0,#3
            str w0,[sp,#900]
            ldrsw x0,[sp,#900]
            bl zmalloc

            str x0,[sp,#520]
            ldr x4,[sp,#520]
            ldrsw x1,[sp,#900]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x3,x0
            adrp x0, .L_41a338
            add x2,x0, :lo12:.L_41a338
            mov x0,x4
            bl snprintf

            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            ldr x0,[x0]
            ldr x1,[sp,#520]
            mov x2,x1
            mov x1,#0
            bl plist_add

            mov x1,x0
            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            str x1,[x0]
            b .L_40a68c
.L_40a17c:

            mov w0,#1
            str w0,[sp,#884]
            b .L_40a698
.L_40a188:

            mov w0,#1
            str w0,[sp,#868]
            b .L_40a698
.L_40a194:

            mov w0,#1
            str w0,[sp,#872]
            b .L_40a698
.L_40a1a0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            add x0,sp,#312
            ldr w2,[sp,#884]
            bl tunnel_add

            b .L_40a698
.L_40a1bc:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            add x0,sp,#304
            ldr w3,[sp,#884]
            mov x2,x1
            mov x1,x0
            adrp x0, .L_41a340
            add x0,x0, :lo12:.L_41a340
            bl listen_add

            b .L_40a698
.L_40a1e8:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strdup

            str x0,[sp,#832]
            b .L_40a698
.L_40a200:

            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            ldr x19,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strdup

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            mov x1,x0
            mov x0,x19
            bl noproxy_add

            mov x1,x0
            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            str x1,[x0]
            ldr x0,[sp,#520]
            bl free

            b .L_40a698
.L_40a24c:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            add x0,sp,#296
            ldr w3,[sp,#884]
            mov x2,x1
            mov x1,x0
            adrp x0, .L_41a348
            add x0,x0, :lo12:.L_41a348
            bl listen_add

            b .L_40a698
.L_40a278:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#712]
            bl strlcpy

            b .L_40a698
.L_40a298:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#752]
            bl strlcpy

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strlen

            sub w0,w0,#1
            str w0,[sp,#900]
            b .L_40a2f8
.L_40a2d0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            ldrsw x0,[sp,#900]
            add x0,x1,x0
            mov w1,#42
            strb w1,[x0]
            ldr w0,[sp,#900]
            sub w0,w0,#1
            str w0,[sp,#900]
.L_40a2f8:

            ldr w0,[sp,#900]
            cmp w0,#0
            b.ge .L_40a2d0

            b .L_40a698
.L_40a308:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strdup

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            mov w1,#58
            bl strchr

            str x0,[sp,#592]
            ldr x0,[sp,#592]
            cmp x0,#0
            b.ne .L_40a360

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            ldr x0,[sp,#520]
            mov x2,x0
            adrp x0, .L_41a358
            add x1,x0, :lo12:.L_41a358
            mov x0,x3
            bl fprintf

            b .L_40a698
.L_40a360:

            ldr x0,[sp,#592]
            strb wzr,[x0]
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x5,[x0]
            ldr x1,[sp,#520]
            ldr x0,[sp,#592]
            add x0,x0,#1
            mov w4,#1
            mov w3,#1
            mov x2,x0
            mov x0,x5
            bl hlist_add

            mov x1,x0
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            str x1,[x0]
            b .L_40a698
.L_40a3a8:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl is_http_header

            cmp w0,#0
            b.eq .L_40a694

            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x19,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl get_http_header_name

            mov x20,x0
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl get_http_header_value

            mov w4,#0
            mov w3,#0
            mov x2,x0
            mov x1,x20
            mov x0,x19
            bl hlist_add

            mov x1,x0
            adrp x0, header_list
            add x0,x0, :lo12:header_list
            str x1,[x0]
            b .L_40a694
.L_40a41c:

            adrp x0, scanner_plugin
            add x0,x0, :lo12:scanner_plugin
            mov w1,#1
            str w1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl atol

            mov x1,x0
            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            str x1,[x0]
            b .L_40a698
.L_40a450:

            adrp x0, serialize
            add x0,x0, :lo12:serialize
            mov w1,#1
            str w1,[x0]
            b .L_40a698
.L_40a464:

            adrp x0, debug
            add x0,x0, :lo12:debug
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            str w0,[sp,#824]
            str wzr,[sp,#860]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov w2,#384
            mov w1,#577
            bl open

            str w0,[sp,#784]
            ldr w0,[sp,#784]
            cmp w0,#0
            b.ge .L_40a4d4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#26
            mov x1,#1
            adrp x0, .L_41a388
            add x0,x0, :lo12:.L_41a388
            bl fwrite

            mov w0,#1
            bl myexit
.L_40a4d4:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x1,x0
            adrp x0, .L_41a3a8
            add x0,x0, :lo12:.L_41a3a8
            bl printf

            mov w1,#1
            ldr w0,[sp,#784]
            bl dup2

            mov w1,#2
            ldr w0,[sp,#784]
            bl dup2

            b .L_40a698
.L_40a50c:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#704]
            bl strlcpy

            b .L_40a698
.L_40a52c:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x2,[x0]
            adrp x0, .L_41a3c8
            add x1,x0, :lo12:.L_41a3c8
            mov x0,x2
            bl strcspn

            str w0,[sp,#900]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strlen

            mov w1,w0
            ldr w0,[sp,#900]
            cmp w0,w1
            b.eq .L_40a5d0

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x3,[x0]
            ldr w2,[sp,#900]
            ldr w1,[sp,#900]
            mov w0,#49
            cmp w2,#49
            csel w0,w1,w0,le
            add w0,w0,#1
            sxtw x0,w0
            mov x2,x0
            mov x1,x3
            ldr x0,[sp,#768]
            bl strlcpy

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            ldrsw x0,[sp,#900]
            add x0,x0,#1
            add x0,x1,x0
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#760]
            bl strlcpy

            b .L_40a698
.L_40a5d0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#768]
            bl strlcpy

            b .L_40a698
.L_40a5f0:

            adrp x0, debug
            add x0,x0, :lo12:debug
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            str w0,[sp,#824]
            str wzr,[sp,#860]
            b .L_40a698
.L_40a610:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            mov x2,#50
            mov x1,x0
            ldr x0,[sp,#720]
            bl strlcpy

            b .L_40a698
.L_40a630:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#46
            mov x1,#1
            adrp x0, .L_41a3d0
            add x0,x0, :lo12:.L_41a3d0
            bl fwrite

            mov w0,#1
            str w0,[sp,#896]
            b .L_40a698
.L_40a660:

            mov w0,#1
            str w0,[sp,#824]
            b .L_40a698
.L_40a66c:

            mov w0,#1
            str w0,[sp,#896]
            b .L_40a698
.L_40a678:

            mov w0,#2
            str w0,[sp,#896]
            b .L_40a698
.L_40a684:

            nop
            nop
            nop
            nop
            b .L_40a698
.L_40a68c:

            nop
            nop
            nop
            nop
            b .L_40a698
.L_40a694:

            nop
            nop
            nop
            nop
.L_40a698:

            adrp x0, .L_41a400
            add x2,x0, :lo12:.L_41a400
            ldr x1,[sp,#32]
            ldr w0,[sp,#44]
            bl __posix_getopt

            str w0,[sp,#900]
            ldr w0,[sp,#900]
            cmn w0,#1
            b.ne .L_409f50

            ldr w0,[sp,#896]
            cmp w0,#0
            b.le .L_40aa30

            adrp x0, .L_41a440
            add x0,x0, :lo12:.L_41a440
            bl puts

            adrp x0, .L_41a488
            add x0,x0, :lo12:.L_41a488
            bl puts

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
            str x0,[sp,#816]
            str wzr,[sp,#812]
            ldr w0,[sp,#896]
            cmp w0,#1
            b.le .L_40a718

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            str x0,[sp,#816]
            mov w0,#1
            str w0,[sp,#812]
.L_40a718:

            ldr x0,[sp,#32]
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_41a5d0
            add x1,x0, :lo12:.L_41a5d0
            ldr x0,[sp,#816]
            bl fprintf

            ldr x3,[sp,#816]
            mov x2,#97
            mov x1,#1
            adrp x0, .L_41a620
            add x0,x0, :lo12:.L_41a620
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#165
            mov x1,#1
            adrp x0, .L_41a688
            add x0,x0, :lo12:.L_41a688
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#42
            mov x1,#1
            adrp x0, .L_41a730
            add x0,x0, :lo12:.L_41a730
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#119
            mov x1,#1
            adrp x0, .L_41a760
            add x0,x0, :lo12:.L_41a760
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#62
            mov x1,#1
            adrp x0, .L_41a7d8
            add x0,x0, :lo12:.L_41a7d8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#59
            mov x1,#1
            adrp x0, .L_41a818
            add x0,x0, :lo12:.L_41a818
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#45
            mov x1,#1
            adrp x0, .L_41a858
            add x0,x0, :lo12:.L_41a858
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#54
            mov x1,#1
            adrp x0, .L_41a888
            add x0,x0, :lo12:.L_41a888
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#71
            mov x1,#1
            adrp x0, .L_41a8c0
            add x0,x0, :lo12:.L_41a8c0
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#65
            mov x1,#1
            adrp x0, .L_41a908
            add x0,x0, :lo12:.L_41a908
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#76
            mov x1,#1
            adrp x0, .L_41a950
            add x0,x0, :lo12:.L_41a950
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#53
            mov x1,#1
            adrp x0, .L_41a9a0
            add x0,x0, :lo12:.L_41a9a0
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#44
            mov x1,#1
            adrp x0, .L_41a9d8
            add x0,x0, :lo12:.L_41a9d8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#238
            mov x1,#1
            adrp x0, .L_41aa08
            add x0,x0, :lo12:.L_41aa08
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#68
            mov x1,#1
            adrp x0, .L_41aaf8
            add x0,x0, :lo12:.L_41aaf8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#65
            mov x1,#1
            adrp x0, .L_41ab40
            add x0,x0, :lo12:.L_41ab40
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#126
            mov x1,#1
            adrp x0, .L_41ab88
            add x0,x0, :lo12:.L_41ab88
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#89
            mov x1,#1
            adrp x0, .L_41ac08
            add x0,x0, :lo12:.L_41ac08
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#61
            mov x1,#1
            adrp x0, .L_41ac68
            add x0,x0, :lo12:.L_41ac68
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#80
            mov x1,#1
            adrp x0, .L_41aca8
            add x0,x0, :lo12:.L_41aca8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#69
            mov x1,#1
            adrp x0, .L_41ad00
            add x0,x0, :lo12:.L_41ad00
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#156
            mov x1,#1
            adrp x0, .L_41ad48
            add x0,x0, :lo12:.L_41ad48
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#128
            mov x1,#1
            adrp x0, .L_41ade8
            add x0,x0, :lo12:.L_41ade8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#95
            mov x1,#1
            adrp x0, .L_41ae70
            add x0,x0, :lo12:.L_41ae70
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#70
            mov x1,#1
            adrp x0, .L_41aed0
            add x0,x0, :lo12:.L_41aed0
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#155
            mov x1,#1
            adrp x0, .L_41af18
            add x0,x0, :lo12:.L_41af18
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#84
            mov x1,#1
            adrp x0, .L_41afb8
            add x0,x0, :lo12:.L_41afb8
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#67
            mov x1,#1
            adrp x0, .L_41b010
            add x0,x0, :lo12:.L_41b010
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#34
            mov x1,#1
            adrp x0, .L_41b058
            add x0,x0, :lo12:.L_41b058
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#71
            mov x1,#1
            adrp x0, .L_41b080
            add x0,x0, :lo12:.L_41b080
            bl fwrite

            ldr x3,[sp,#816]
            mov x2,#119
            mov x1,#1
            adrp x0, .L_41b0c8
            add x0,x0, :lo12:.L_41b0c8
            bl fwrite

            ldr x1,[sp,#816]
            mov w0,#10
            bl fputc

            ldr w0,[sp,#812]
            bl exit
.L_40aa30:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40aaac

            adrp x0, .L_41b140
            add x0,x0, :lo12:.L_41b140
            bl printf

            adrp x0, .L_41b168
            add x0,x0, :lo12:.L_41b168
            bl printf

            str wzr,[sp,#900]
            b .L_40aa94
.L_40aa64:

            ldrsw x0,[sp,#900]
            lsl x0,x0,#3
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldr x0,[x0]
            mov x1,x0
            adrp x0, .L_41b180
            add x0,x0, :lo12:.L_41b180
            bl printf

            ldr w0,[sp,#900]
            add w0,w0,#1
            str w0,[sp,#900]
.L_40aa94:

            ldr w1,[sp,#900]
            ldr w0,[sp,#44]
            cmp w1,w0
            b.lt .L_40aa64

            mov w0,#10
            bl putchar
.L_40aaac:

            ldr x0,[sp,#848]
            cmp x0,#0
            b.eq .L_40aaf4

            ldr x0,[sp,#848]
            bl config_open

            str x0,[sp,#840]
            ldr x0,[sp,#840]
            cmp x0,#0
            b.ne .L_40aaec

            ldr x2,[sp,#848]
            adrp x0, .L_41b188
            add x1,x0, :lo12:.L_41b188
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40aaec:

            ldr x0,[sp,#848]
            bl free
.L_40aaf4:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            str w0,[sp,#900]
            b .L_40abb0
.L_40ab08:

            ldrsw x0,[sp,#900]
            lsl x0,x0,#3
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldr x0,[x0]
            mov w1,#58
            bl strchr

            str x0,[sp,#520]
            ldrsw x0,[sp,#900]
            lsl x0,x0,#3
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldr x19,[x0]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40ab7c

            ldr w0,[sp,#900]
            add w0,w0,#1
            ldr w1,[sp,#44]
            cmp w1,w0
            b.le .L_40ab7c

            ldrsw x0,[sp,#900]
            add x0,x0,#1
            lsl x0,x0,#3
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldr x0,[x0]
            bl atoi

            b .L_40ab80
.L_40ab7c:

            mov w0,#0
.L_40ab80:

            mov w1,w0
            mov x0,x19
            bl parent_add

            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40aba0

            mov w0,#2
            b .L_40aba4
.L_40aba0:

            mov w0,#1
.L_40aba4:

            ldr w1,[sp,#900]
            add w0,w1,w0
            str w0,[sp,#900]
.L_40abb0:

            ldr w1,[sp,#900]
            ldr w0,[sp,#44]
            cmp w1,w0
            b.lt .L_40ab08

            ldr x0,[sp,#840]
            cmp x0,#0
            b.eq .L_40b648

            mov x0,#50
            bl zmalloc

            str x0,[sp,#520]
            str xzr,[sp,#688]
            adrp x0, .L_41b1b8
            add x1,x0, :lo12:.L_41b1b8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#688]
            ldr x0,[sp,#688]
            cmp x0,#0
            b.eq .L_40ac1c

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40ac1c

            ldr x0,[sp,#520]
            mov x2,#50
            ldr x1,[sp,#688]
            bl strlcpy
.L_40ac1c:

            ldr x0,[sp,#688]
            cmp x0,#0
            b.eq .L_40ac30

            ldr x0,[sp,#688]
            bl free
.L_40ac30:

            ldr x0,[sp,#520]
            mov x1,x0
            adrp x0, .L_41b1c0
            add x0,x0, :lo12:.L_41b1c0
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40ac54

            mov w0,#1
            str w0,[sp,#884]
.L_40ac54:

            ldr x0,[sp,#520]
            bl free

            mov x0,#50
            bl zmalloc

            str x0,[sp,#520]
            str xzr,[sp,#680]
            adrp x0, .L_41b1c8
            add x1,x0, :lo12:.L_41b1c8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#680]
            ldr x0,[sp,#680]
            cmp x0,#0
            b.eq .L_40acac

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40acac

            ldr x0,[sp,#520]
            mov x2,#50
            ldr x1,[sp,#680]
            bl strlcpy
.L_40acac:

            ldr x0,[sp,#680]
            cmp x0,#0
            b.eq .L_40acc0

            ldr x0,[sp,#680]
            bl free
.L_40acc0:

            ldr x0,[sp,#520]
            mov x1,x0
            adrp x0, .L_41b1c0
            add x0,x0, :lo12:.L_41b1c0
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40acec

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            mov w1,#1
            str w1,[x0]
.L_40acec:

            ldr x0,[sp,#520]
            bl free

            b .L_40ad10
.L_40acf8:

            ldr x1,[sp,#520]
            add x0,sp,#312
            ldr w2,[sp,#884]
            bl tunnel_add

            ldr x0,[sp,#520]
            bl free
.L_40ad10:

            adrp x0, .L_41b1d8
            add x1,x0, :lo12:.L_41b1d8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40acf8

            b .L_40ad5c
.L_40ad34:

            ldr x1,[sp,#520]
            add x0,sp,#304
            ldr w3,[sp,#884]
            mov x2,x1
            mov x1,x0
            adrp x0, .L_41a340
            add x0,x0, :lo12:.L_41a340
            bl listen_add

            ldr x0,[sp,#520]
            bl free
.L_40ad5c:

            adrp x0, .L_41b1e0
            add x1,x0, :lo12:.L_41b1e0
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40ad34

            b .L_40ada8
.L_40ad80:

            ldr x1,[sp,#520]
            add x0,sp,#296
            ldr w3,[sp,#884]
            mov x2,x1
            mov x1,x0
            adrp x0, .L_41a348
            add x0,x0, :lo12:.L_41a348
            bl listen_add

            ldr x0,[sp,#520]
            bl free
.L_40ada8:

            adrp x0, .L_41b1e8
            add x1,x0, :lo12:.L_41b1e8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40ad80

            b .L_40ae6c
.L_40adcc:

            ldr x0,[sp,#520]
            bl is_http_header

            cmp w0,#0
            b.eq .L_40ae4c

            ldr x0,[sp,#520]
            bl get_http_header_name

            str x0,[sp,#592]
            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x0,[x0]
            ldr x1,[sp,#592]
            bl hlist_in

            cmp w0,#0
            b.ne .L_40ae40

            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x19,[x0]
            ldr x0,[sp,#520]
            bl get_http_header_value

            mov w4,#0
            mov w3,#1
            mov x2,x0
            ldr x1,[sp,#592]
            mov x0,x19
            bl hlist_add

            mov x1,x0
            adrp x0, header_list
            add x0,x0, :lo12:header_list
            str x1,[x0]
.L_40ae40:

            ldr x0,[sp,#592]
            bl free

            b .L_40ae64
.L_40ae4c:

            ldr x0,[sp,#520]
            mov x2,x0
            adrp x0, .L_41b1f8
            add x1,x0, :lo12:.L_41b1f8
            mov w0,#3
            bl syslog
.L_40ae64:

            ldr x0,[sp,#520]
            bl free
.L_40ae6c:

            adrp x0, .L_41b218
            add x1,x0, :lo12:.L_41b218
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40adcc

            str wzr,[sp,#828]
            b .L_40aea8
.L_40ae94:

            ldr x0,[sp,#520]
            mov w1,#0
            bl parent_add

            ldr x0,[sp,#520]
            bl free
.L_40aea8:

            adrp x0, .L_41a340
            add x1,x0, :lo12:.L_41a340
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40ae94

            ldr x0,[sp,#288]
            cmp x0,#0
            b.ne .L_40afd0

            ldr x0,[sp,#840]
            ldr x0,[x0]
            str x0,[sp,#904]
            b .L_40af6c
.L_40aee4:

            ldr x0,[sp,#904]
            ldr x0,[x0]
            mov x1,x0
            adrp x0, .L_41b220
            add x0,x0, :lo12:.L_41b220
            bl strcasecmp

            str w0,[sp,#900]
            ldr w0,[sp,#900]
            cmp w0,#0
            b.eq .L_40af2c

            ldr x0,[sp,#904]
            ldr x0,[x0]
            mov x1,x0
            adrp x0, .L_41b228
            add x0,x0, :lo12:.L_41b228
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40af60
.L_40af2c:

            ldr x0,[sp,#904]
            ldr x1,[x0,#8]
            ldr w0,[sp,#900]
            cmp w0,#0
            cset w0,ne
            and w0,w0,#255
            mov w2,w0
            add x0,sp,#288
            bl acl_add

            cmp w0,#0
            b.ne .L_40af60

            mov w0,#1
            bl myexit
.L_40af60:

            ldr x0,[sp,#904]
            ldr x0,[x0,#24]
            str x0,[sp,#904]
.L_40af6c:

            ldr x0,[sp,#904]
            cmp x0,#0
            b.ne .L_40aee4

            b .L_40af84
.L_40af7c:

            ldr x0,[sp,#520]
            bl free
.L_40af84:

            adrp x0, .L_41b220
            add x1,x0, :lo12:.L_41b220
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40af7c

            b .L_40afb0
.L_40afa8:

            ldr x0,[sp,#520]
            bl free
.L_40afb0:

            adrp x0, .L_41b228
            add x1,x0, :lo12:.L_41b228
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40afa8
.L_40afd0:

            str xzr,[sp,#672]
            adrp x0, .L_41b230
            add x1,x0, :lo12:.L_41b230
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#672]
            ldr x0,[sp,#672]
            cmp x0,#0
            b.eq .L_40b014

            ldr x0,[sp,#696]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b014

            mov x2,#50
            ldr x1,[sp,#672]
            ldr x0,[sp,#696]
            bl strlcpy
.L_40b014:

            ldr x0,[sp,#672]
            cmp x0,#0
            b.eq .L_40b028

            ldr x0,[sp,#672]
            bl free
.L_40b028:

            str xzr,[sp,#664]
            adrp x0, .L_41b238
            add x1,x0, :lo12:.L_41b238
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#664]
            ldr x0,[sp,#664]
            cmp x0,#0
            b.eq .L_40b06c

            ldr x0,[sp,#760]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b06c

            mov x2,#50
            ldr x1,[sp,#664]
            ldr x0,[sp,#760]
            bl strlcpy
.L_40b06c:

            ldr x0,[sp,#664]
            cmp x0,#0
            b.eq .L_40b080

            ldr x0,[sp,#664]
            bl free
.L_40b080:

            str xzr,[sp,#656]
            adrp x0, .L_41b240
            add x1,x0, :lo12:.L_41b240
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#656]
            ldr x0,[sp,#656]
            cmp x0,#0
            b.eq .L_40b0c4

            ldr x0,[sp,#752]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b0c4

            mov x2,#50
            ldr x1,[sp,#656]
            ldr x0,[sp,#752]
            bl strlcpy
.L_40b0c4:

            ldr x0,[sp,#656]
            cmp x0,#0
            b.eq .L_40b0d8

            ldr x0,[sp,#656]
            bl free
.L_40b0d8:

            str xzr,[sp,#648]
            adrp x0, .L_41b250
            add x1,x0, :lo12:.L_41b250
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#648]
            ldr x0,[sp,#648]
            cmp x0,#0
            b.eq .L_40b11c

            ldr x0,[sp,#744]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b11c

            mov x2,#50
            ldr x1,[sp,#648]
            ldr x0,[sp,#744]
            bl strlcpy
.L_40b11c:

            ldr x0,[sp,#648]
            cmp x0,#0
            b.eq .L_40b130

            ldr x0,[sp,#648]
            bl free
.L_40b130:

            str xzr,[sp,#640]
            adrp x0, .L_41b260
            add x1,x0, :lo12:.L_41b260
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#640]
            ldr x0,[sp,#640]
            cmp x0,#0
            b.eq .L_40b174

            ldr x0,[sp,#736]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b174

            mov x2,#50
            ldr x1,[sp,#640]
            ldr x0,[sp,#736]
            bl strlcpy
.L_40b174:

            ldr x0,[sp,#640]
            cmp x0,#0
            b.eq .L_40b188

            ldr x0,[sp,#640]
            bl free
.L_40b188:

            str xzr,[sp,#632]
            adrp x0, .L_41b268
            add x1,x0, :lo12:.L_41b268
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#632]
            ldr x0,[sp,#632]
            cmp x0,#0
            b.eq .L_40b1cc

            ldr x0,[sp,#728]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b1cc

            mov x2,#50
            ldr x1,[sp,#632]
            ldr x0,[sp,#728]
            bl strlcpy
.L_40b1cc:

            ldr x0,[sp,#632]
            cmp x0,#0
            b.eq .L_40b1e0

            ldr x0,[sp,#632]
            bl free
.L_40b1e0:

            str xzr,[sp,#624]
            adrp x0, .L_41b270
            add x1,x0, :lo12:.L_41b270
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#624]
            ldr x0,[sp,#624]
            cmp x0,#0
            b.eq .L_40b224

            ldr x0,[sp,#768]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b224

            mov x2,#50
            ldr x1,[sp,#624]
            ldr x0,[sp,#768]
            bl strlcpy
.L_40b224:

            ldr x0,[sp,#624]
            cmp x0,#0
            b.eq .L_40b238

            ldr x0,[sp,#624]
            bl free
.L_40b238:

            str xzr,[sp,#616]
            adrp x0, .L_41b280
            add x1,x0, :lo12:.L_41b280
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#616]
            ldr x0,[sp,#616]
            cmp x0,#0
            b.eq .L_40b27c

            ldr x0,[sp,#720]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b27c

            mov x2,#50
            ldr x1,[sp,#616]
            ldr x0,[sp,#720]
            bl strlcpy
.L_40b27c:

            ldr x0,[sp,#616]
            cmp x0,#0
            b.eq .L_40b290

            ldr x0,[sp,#616]
            bl free
.L_40b290:

            mov x0,#50
            bl zmalloc

            str x0,[sp,#520]
            str xzr,[sp,#608]
            adrp x0, .L_41b290
            add x1,x0, :lo12:.L_41b290
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#608]
            ldr x0,[sp,#608]
            cmp x0,#0
            b.eq .L_40b2e0

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b2e0

            ldr x0,[sp,#520]
            mov x2,#50
            ldr x1,[sp,#608]
            bl strlcpy
.L_40b2e0:

            ldr x0,[sp,#608]
            cmp x0,#0
            b.eq .L_40b2f4

            ldr x0,[sp,#608]
            bl free
.L_40b2f4:

            ldr w0,[sp,#864]
            cmp w0,#0
            b.ne .L_40b36c

            ldr x0,[sp,#520]
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsl w19,w0,#24
            ldr x0,[sp,#520]
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsl w0,w0,#8
            and w0,w0,#16711680
            orr w19,w19,w0
            ldr x0,[sp,#520]
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsr w0,w0,#8
            and w0,w0,#65280
            orr w19,w19,w0
            ldr x0,[sp,#520]
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsr w0,w0,#24
            and w0,w0,#255
            orr w0,w19,w0
            str w0,[sp,#864]
.L_40b36c:

            ldr x0,[sp,#520]
            bl free

            mov x0,#50
            bl zmalloc

            str x0,[sp,#520]
            str xzr,[sp,#600]
            adrp x0, .L_41b298
            add x1,x0, :lo12:.L_41b298
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#600]
            ldr x0,[sp,#600]
            cmp x0,#0
            b.eq .L_40b3c4

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b3c4

            ldr x0,[sp,#520]
            mov x2,#50
            ldr x1,[sp,#600]
            bl strlcpy
.L_40b3c4:

            ldr x0,[sp,#600]
            cmp x0,#0
            b.eq .L_40b3d8

            ldr x0,[sp,#600]
            bl free
.L_40b3d8:

            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40b424

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40b424

            adrp x0, scanner_plugin
            add x0,x0, :lo12:scanner_plugin
            mov w1,#1
            str w1,[x0]
            ldr x0,[sp,#520]
            bl atoi

            sxtw x1,w0
            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            str x1,[x0]
.L_40b424:

            ldr x0,[sp,#520]
            bl free

            b .L_40b46c
.L_40b430:

            ldr x0,[sp,#520]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40b464

            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            ldr x0,[x0]
            ldr x1,[sp,#520]
            bl noproxy_add

            mov x1,x0
            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            str x1,[x0]
.L_40b464:

            ldr x0,[sp,#520]
            bl free
.L_40b46c:

            adrp x0, .L_41b2a8
            add x1,x0, :lo12:.L_41b2a8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40b430

            b .L_40b50c
.L_40b490:

            ldr x0,[sp,#520]
            mov w1,#58
            bl strchr

            str x0,[sp,#592]
            ldr x0,[sp,#592]
            cmp x0,#0
            b.ne .L_40b4c8

            ldr x0,[sp,#520]
            mov x2,x0
            adrp x0, .L_41b2b0
            add x1,x0, :lo12:.L_41b2b0
            mov w0,#3
            bl syslog

            b .L_40b50c
.L_40b4c8:

            ldr x0,[sp,#592]
            strb wzr,[x0]
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x5,[x0]
            ldr x1,[sp,#520]
            ldr x0,[sp,#592]
            add x0,x0,#1
            mov w4,#1
            mov w3,#1
            mov x2,x0
            mov x0,x5
            bl hlist_add

            mov x1,x0
            adrp x0, users_list
            add x0,x0, :lo12:users_list
            str x1,[x0]
.L_40b50c:

            adrp x0, .L_41b2e8
            add x1,x0, :lo12:.L_41b2e8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40b490

            b .L_40b5e4
.L_40b530:

            adrp x0, scanner_plugin
            add x0,x0, :lo12:scanner_plugin
            mov w1,#1
            str w1,[x0]
            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40b564

            adrp x0, scanner_plugin_maxsize
            add x0,x0, :lo12:scanner_plugin_maxsize
            mov x1,#1
            str x1,[x0]
.L_40b564:

            ldr x0,[sp,#520]
            bl strlen

            str w0,[sp,#900]
            ldr w0,[sp,#900]
            cmp w0,#0
            b.eq .L_40b5dc

            ldr w0,[sp,#900]
            add w0,w0,#3
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#592]
            ldr w0,[sp,#900]
            add w0,w0,#3
            sxtw x1,w0
            ldr x0,[sp,#520]
            mov x3,x0
            adrp x0, .L_41a338
            add x2,x0, :lo12:.L_41a338
            ldr x0,[sp,#592]
            bl snprintf

            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            ldr x0,[x0]
            ldr x2,[sp,#592]
            mov x1,#0
            bl plist_add

            mov x1,x0
            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            str x1,[x0]
.L_40b5dc:

            ldr x0,[sp,#520]
            bl free
.L_40b5e4:

            adrp x0, .L_41b2f8
            add x1,x0, :lo12:.L_41b2f8
            ldr x0,[sp,#840]
            bl config_pop

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40b530

            ldr x0,[sp,#840]
            ldr x0,[x0]
            str x0,[sp,#904]
            b .L_40b63c
.L_40b614:

            ldr x0,[sp,#904]
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_41b308
            add x1,x0, :lo12:.L_41b308
            mov w0,#6
            bl syslog

            ldr x0,[sp,#904]
            ldr x0,[x0,#24]
            str x0,[sp,#904]
.L_40b63c:

            ldr x0,[sp,#904]
            cmp x0,#0
            b.ne .L_40b614
.L_40b648:

            ldr x0,[sp,#840]
            bl config_close

            ldr w0,[sp,#828]
            cmp w0,#0
            b.eq .L_40b6b0

            str xzr,[sp,#584]
            adrp x0, .L_41b330
            add x1,x0, :lo12:.L_41b330
            ldr x0,[sp,#776]
            bl fopen

            str x0,[sp,#584]
            ldr x0,[sp,#584]
            cmp x0,#0
            b.ne .L_40b69c

            ldr x2,[sp,#776]
            adrp x0, .L_41b338
            add x1,x0, :lo12:.L_41b338
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40b69c:

            ldr x0,[sp,#584]
            bl fclose

            adrp x0, pac_initialized
            add x0,x0, :lo12:pac_initialized
            str wzr,[x0]
.L_40b6b0:

            ldr w0,[sp,#868]
            cmp w0,#0
            b.ne .L_40b708

            bl parent_available

            cmp w0,#0
            b.ne .L_40b708

            ldr w0,[sp,#828]
            cmp w0,#0
            b.ne .L_40b708

            ldr w0,[sp,#872]
            cmp w0,#0
            b.ne .L_40b6ec

            ldr x0,[sp,#832]
            cmp x0,#0
            b.eq .L_40b6f4
.L_40b6ec:

            mov w0,#1
            b .L_40b6f8
.L_40b6f4:

            mov w0,#0
.L_40b6f8:

            mov w1,w0
            adrp x0, .L_41b360
            add x0,x0, :lo12:.L_41b360
            bl croak
.L_40b708:

            ldr w0,[sp,#868]
            cmp w0,#0
            b.ne .L_40b73c

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40b73c

            ldr x0,[sp,#304]
            cmp x0,#0
            b.ne .L_40b73c

            ldr w1,[sp,#872]
            adrp x0, .L_41b380
            add x0,x0, :lo12:.L_41b380
            bl croak
.L_40b73c:

            ldr x0,[sp,#720]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b790

            mov x1,#50
            ldr x0,[sp,#720]
            bl gethostname

            ldr x0,[sp,#720]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40b77c

            mov x2,#50
            adrp x0, .L_41a2f8
            add x1,x0, :lo12:.L_41a2f8
            ldr x0,[sp,#720]
            bl strlcpy
.L_40b77c:

            ldr x2,[sp,#720]
            adrp x0, .L_41b3b8
            add x1,x0, :lo12:.L_41b3b8
            mov w0,#6
            bl syslog
.L_40b790:

            ldr x0,[sp,#696]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40b94c

            ldr x1,[sp,#696]
            adrp x0, .L_41b3d8
            add x0,x0, :lo12:.L_41b3d8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40b7f4

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            str w1,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            str w1,[x0,#308]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#300]
            b .L_40b94c
.L_40b7f4:

            ldr x1,[sp,#696]
            adrp x0, .L_41b3e0
            add x0,x0, :lo12:.L_41b3e0
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40b844

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            str w1,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#308]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#300]
            b .L_40b94c
.L_40b844:

            ldr x1,[sp,#696]
            adrp x0, .L_41b3e8
            add x0,x0, :lo12:.L_41b3e8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40b894

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            str w1,[x0,#308]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#300]
            b .L_40b94c
.L_40b894:

            ldr x1,[sp,#696]
            adrp x0, .L_41b3f0
            add x0,x0, :lo12:.L_41b3f0
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40b8e4

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#308]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#1
            str w1,[x0,#300]
            b .L_40b94c
.L_40b8e4:

            ldr x1,[sp,#696]
            adrp x0, .L_41b3f8
            add x0,x0, :lo12:.L_41b3f8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40b934

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov w1,#2
            str w1,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#308]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            str wzr,[x0,#300]
            b .L_40b94c
.L_40b934:

            adrp x0, .L_41b400
            add x1,x0, :lo12:.L_41b400
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40b94c:

            ldr x0,[sp,#296]
            cmp x0,#0
            b.eq .L_40b97c

            adrp x0, users_list
            add x0,x0, :lo12:users_list
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40b97c

            adrp x0, .L_41b420
            add x1,x0, :lo12:.L_41b420
            mov w0,#4
            bl syslog
.L_40b97c:

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40b9d4

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w1,[x0,#300]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w2,[x0,#304]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#308]
            mov w4,w0
            mov w3,w2
            mov w2,w1
            adrp x0, .L_41b458
            add x1,x0, :lo12:.L_41b458
            mov w0,#6
            bl syslog
.L_40b9d4:

            ldr w0,[sp,#864]
            cmp w0,#0
            b.eq .L_40ba3c

            ldr w0,[sp,#864]
            lsl w1,w0,#24
            ldr w0,[sp,#864]
            lsl w0,w0,#8
            and w0,w0,#16711680
            orr w1,w1,w0
            ldr w0,[sp,#864]
            lsr w0,w0,#8
            and w0,w0,#65280
            orr w1,w1,w0
            ldr w0,[sp,#864]
            lsr w0,w0,#24
            orr w0,w1,w0
            mov w2,w0
            adrp x0, .L_41b490
            add x1,x0, :lo12:.L_41b490
            mov w0,#6
            bl syslog

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w1,[sp,#864]
            str w1,[x0,#312]
.L_40ba3c:

            ldr w0,[sp,#868]
            cmp w0,#0
            b.ne .L_40ba74

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40ba74

            ldr w0,[sp,#872]
            cmp w0,#0
            b.eq .L_40bb80

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40bb80
.L_40ba74:

            adrp x0, .L_41b4b0
            add x0,x0, :lo12:.L_41b4b0
            bl printf

            add x0,sp,#456
            mov x1,x0
            mov w0,#0
            bl tcgetattr

            add x0,sp,#392
            add x1,sp,#456
            ldr q28,[x1]
            ldr q29,[x1,#16]
            ldr q30,[x1,#32]
            ldur q31,[x1,#44]
            str q28,[x0]
            str q29,[x0,#16]
            str q30,[x0,#32]
            stur q31,[x0,#44]
            ldr w1,[sp,#404]
            mov w0,#-10
            and w0,w1,w0
            str w0,[sp,#404]
            add x0,sp,#392
            mov x2,x0
            mov w1,#1
            mov w0,#0
            bl tcsetattr

            adrp x0, stdin
            add x0,x0, :lo12:stdin
            ldr x0,[x0]
            mov x2,x0
            mov w1,#50
            ldr x0,[sp,#752]
            bl fgets

            str x0,[sp,#520]
            add x0,sp,#456
            mov x2,x0
            mov w1,#1
            mov w0,#0
            bl tcsetattr

            ldr x0,[sp,#752]
            bl strlen

            sub w0,w0,#1
            str w0,[sp,#900]
            ldrsw x0,[sp,#900]
            ldr x1,[sp,#752]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#10
            b.ne .L_40bb78

            ldrsw x0,[sp,#900]
            ldr x1,[sp,#752]
            add x0,x1,x0
            strb wzr,[x0]
            ldrsw x0,[sp,#900]
            sub x0,x0,#1
            ldr x1,[sp,#752]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#13
            b.ne .L_40bb78

            ldrsw x0,[sp,#900]
            sub x0,x0,#1
            ldr x1,[sp,#752]
            add x0,x1,x0
            strb wzr,[x0]
.L_40bb78:

            mov w0,#10
            bl putchar
.L_40bb80:

            ldr x0,[sp,#752]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40bd2c

            ldr x0,[sp,#744]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40bc18

            mov w1,#8
            ldr x0,[sp,#744]
            bl scanmem

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40bbd4

            adrp x0, .L_41b4c0
            add x1,x0, :lo12:.L_41b4c0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_40bbd4:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bc10

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40bc10

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x2,x0,#250
            ldr x0,[sp,#520]
            ldp x0,x1,[x0]
            stp x0,x1,[x2]
.L_40bc10:

            ldr x0,[sp,#520]
            bl free
.L_40bc18:

            ldr x0,[sp,#736]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40bca0

            mov w1,#8
            ldr x0,[sp,#736]
            bl scanmem

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40bc5c

            adrp x0, .L_41b4e8
            add x1,x0, :lo12:.L_41b4e8
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_40bc5c:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bc98

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40bc98

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x2,x0,#200
            ldr x0,[sp,#520]
            ldp x0,x1,[x0]
            stp x0,x1,[x2]
.L_40bc98:

            ldr x0,[sp,#520]
            bl free
.L_40bca0:

            ldr x0,[sp,#728]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40becc

            mov w1,#8
            ldr x0,[sp,#728]
            bl scanmem

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            cmp x0,#0
            b.ne .L_40bce4

            adrp x0, .L_41b510
            add x1,x0, :lo12:.L_41b510
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_40bce4:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bd20

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40bd20

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x2,x0,#150
            ldr x0,[sp,#520]
            ldp x0,x1,[x0]
            stp x0,x1,[x2]
.L_40bd20:

            ldr x0,[sp,#520]
            bl free

            b .L_40becc
.L_40bd2c:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.ne .L_40bd5c

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40bd5c

            ldr w0,[sp,#868]
            cmp w0,#0
            b.eq .L_40bdac
.L_40bd5c:

            ldr x0,[sp,#752]
            bl ntlm_hash_nt_password

            str x0,[sp,#520]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bda4

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40bda4

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#200
            ldr x1,[sp,#520]
            mov x2,#21
            bl memcpy
.L_40bda4:

            ldr x0,[sp,#520]
            bl free
.L_40bdac:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.ne .L_40bddc

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40bddc

            ldr w0,[sp,#868]
            cmp w0,#0
            b.eq .L_40be2c
.L_40bddc:

            ldr x0,[sp,#752]
            bl ntlm_hash_lm_password

            str x0,[sp,#520]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40be24

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40be24

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#150
            ldr x1,[sp,#520]
            mov x2,#21
            bl memcpy
.L_40be24:

            ldr x0,[sp,#520]
            bl free
.L_40be2c:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.ne .L_40be5c

            ldr x0,[sp,#832]
            cmp x0,#0
            b.ne .L_40be5c

            ldr w0,[sp,#868]
            cmp w0,#0
            b.eq .L_40beb4
.L_40be5c:

            ldr x2,[sp,#752]
            ldr x1,[sp,#760]
            ldr x0,[sp,#768]
            bl ntlm2_hash_password

            str x0,[sp,#520]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40beac

            ldr x0,[sp,#520]
            cmp x0,#0
            b.eq .L_40beac

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x2,x0,#250
            ldr x0,[sp,#520]
            ldp x0,x1,[x0]
            stp x0,x1,[x2]
.L_40beac:

            ldr x0,[sp,#520]
            bl free
.L_40beb4:

            ldr x0,[sp,#752]
            bl strlen

            mov x2,x0
            mov w1,#0
            ldr x0,[sp,#752]
            bl memset
.L_40becc:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bf04

            ldr x0,[sp,#768]
            cmp x0,#0
            b.eq .L_40bf04

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov x2,#50
            ldr x1,[sp,#768]
            bl strlcpy
.L_40bf04:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bf40

            ldr x0,[sp,#760]
            cmp x0,#0
            b.eq .L_40bf40

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#50
            mov x2,#50
            ldr x1,[sp,#760]
            bl strlcpy
.L_40bf40:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40bf7c

            ldr x0,[sp,#720]
            cmp x0,#0
            b.eq .L_40bf7c

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#100
            mov x2,#50
            ldr x1,[sp,#720]
            bl strlcpy
.L_40bf7c:

            ldr x0,[sp,#768]
            bl free

            ldr x0,[sp,#760]
            bl free

            ldr x0,[sp,#720]
            bl free

            ldr x0,[sp,#752]
            bl free

            ldr x0,[sp,#744]
            bl free

            ldr x0,[sp,#736]
            bl free

            ldr x0,[sp,#728]
            bl free

            ldr x0,[sp,#696]
            bl free

            ldr x0,[sp,#832]
            cmp x0,#0
            b.eq .L_40bfd4

            ldr x0,[sp,#832]
            bl magic_auth_detect

            b .L_40cce0
.L_40bfd4:

            ldr w0,[sp,#868]
            cmp w0,#0
            b.eq .L_40c118

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#150
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_40c03c

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#150
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            mov x1,x0
            adrp x0, .L_41b538
            add x0,x0, :lo12:.L_41b538
            bl printf

            ldr x0,[sp,#520]
            bl free
.L_40c03c:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#200
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_40c098

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#200
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#520]
            ldr x0,[sp,#520]
            mov x1,x0
            adrp x0, .L_41b550
            add x0,x0, :lo12:.L_41b550
            bl printf

            ldr x0,[sp,#520]
            bl free
.L_40c098:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#250
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_40ccd4

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#250
            mov w2,#8
            mov x1,#16
            bl printmem

            str x0,[sp,#520]
            ldr x1,[sp,#520]
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            mov x2,x0
            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#50
            mov x3,x0
            adrp x0, .L_41b568
            add x0,x0, :lo12:.L_41b568
            bl printf

            ldr x0,[sp,#520]
            bl free

            b .L_40ccd4
.L_40c118:

            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40c1ec

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.eq .L_40c164

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#200
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_40c1d4
.L_40c164:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.eq .L_40c19c

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#150
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.ne .L_40c1d4
.L_40c19c:

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.eq .L_40c1ec

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            add x0,x0,#250
            mov x1,#50
            bl is_memory_all_zero

            cmp w0,#0
            b.eq .L_40c1ec
.L_40c1d4:

            adrp x0, .L_41b5a8
            add x1,x0, :lo12:.L_41b5a8
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c1ec:

            ldr w0,[sp,#860]
            cmp w0,#0
            b.eq .L_40c2e0

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40c218

            adrp x0, .L_41b5e8
            add x0,x0, :lo12:.L_41b5e8
            bl puts
.L_40c218:

            bl fork

            str w0,[sp,#900]
            ldr w0,[sp,#900]
            cmn w0,#1
            b.ne .L_40c240

            adrp x0, .L_41b610
            add x0,x0, :lo12:.L_41b610
            bl perror

            mov w0,#1
            bl myexit
.L_40c240:

            ldr w0,[sp,#900]
            cmp w0,#0
            b.eq .L_40c254

            mov w0,#0
            bl myexit
.L_40c254:

            bl setsid

            mov w0,#0
            bl umask

            adrp x0, .L_41b630
            add x0,x0, :lo12:.L_41b630
            bl chdir

            str w0,[sp,#580]
            ldr w0,[sp,#580]
            cmp w0,#0
            b.eq .L_40c288

            adrp x0, .L_41b638
            add x0,x0, :lo12:.L_41b638
            bl perror
.L_40c288:

            mov w1,#2
            adrp x0, .L_41b650
            add x0,x0, :lo12:.L_41b650
            bl open

            str w0,[sp,#900]
            ldr w0,[sp,#900]
            cmp w0,#0
            b.lt .L_40c2e0

            mov w1,#0
            ldr w0,[sp,#900]
            bl dup2

            mov w1,#1
            ldr w0,[sp,#900]
            bl dup2

            mov w1,#2
            ldr w0,[sp,#900]
            bl dup2

            ldr w0,[sp,#900]
            cmp w0,#2
            b.le .L_40c2e0

            ldr w0,[sp,#900]
            bl close
.L_40c2e0:

            ldr w0,[sp,#860]
            cmp w0,#0
            b.eq .L_40c314

            mov w2,#24
            mov w1,#3
            adrp x0, .L_41a2f8
            add x0,x0, :lo12:.L_41a2f8
            bl openlog

            adrp x0, .L_41b660
            add x1,x0, :lo12:.L_41b660
            mov w0,#6
            bl syslog

            b .L_40c338
.L_40c314:

            mov w2,#24
            mov w1,#35
            adrp x0, .L_41a2f8
            add x0,x0, :lo12:.L_41a2f8
            bl openlog

            adrp x0, .L_41b670
            add x1,x0, :lo12:.L_41b670
            mov w0,#6
            bl syslog
.L_40c338:

            ldr w0,[sp,#824]
            cmp w0,#0
            b.eq .L_40c350

            mov w0,#255
            bl setlogmask

            b .L_40c358
.L_40c350:

            mov w0,#127
            bl setlogmask
.L_40c358:

            ldr x0,[sp,#704]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40c508

            bl getuid

            cmp w0,#0
            b.eq .L_40c3a8

            bl geteuid

            cmp w0,#0
            b.eq .L_40c3a8

            bl getuid

            mov w19,w0
            bl getgid

            mov w3,w0
            mov w2,w19
            adrp x0, .L_41b698
            add x1,x0, :lo12:.L_41b698
            mov w0,#4
            bl syslog

            b .L_40c508
.L_40c3a8:

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#704]
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_40c40c

            ldr x0,[sp,#704]
            bl atoi

            str w0,[sp,#892]
            ldr w0,[sp,#892]
            str w0,[sp,#888]
            ldr w0,[sp,#892]
            cmp w0,#0
            b.gt .L_40c468

            adrp x0, .L_41b6c8
            add x1,x0, :lo12:.L_41b6c8
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c40c:

            ldr x0,[sp,#704]
            bl getpwnam

            str x0,[sp,#568]
            ldr x0,[sp,#568]
            cmp x0,#0
            b.eq .L_40c434

            ldr x0,[sp,#568]
            ldr w0,[x0,#16]
            cmp w0,#0
            b.ne .L_40c450
.L_40c434:

            ldr x2,[sp,#704]
            adrp x0, .L_41b6f0
            add x1,x0, :lo12:.L_41b6f0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c450:

            ldr x0,[sp,#568]
            ldr w0,[x0,#16]
            str w0,[sp,#892]
            ldr x0,[sp,#568]
            ldr w0,[x0,#20]
            str w0,[sp,#888]
.L_40c468:

            ldr w0,[sp,#888]
            bl setgid

            cmp w0,#0
            b.eq .L_40c4b0

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41b710
            add x1,x0, :lo12:.L_41b710
            mov w0,#3
            bl syslog

            adrp x0, .L_41b738
            add x1,x0, :lo12:.L_41b738
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c4b0:

            ldr w0,[sp,#892]
            bl setuid

            str w0,[sp,#900]
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x4,x0
            ldr w3,[sp,#888]
            ldr w2,[sp,#892]
            adrp x0, .L_41b748
            add x1,x0, :lo12:.L_41b748
            mov w0,#6
            bl syslog

            ldr w0,[sp,#900]
            cmp w0,#0
            b.eq .L_40c508

            adrp x0, .L_41b738
            add x1,x0, :lo12:.L_41b738
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c508:

            ldr x0,[sp,#712]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40c5f4

            mov w0,#0
            bl umask

            mov w2,#420
            mov w1,#577
            ldr x0,[sp,#712]
            bl open

            str w0,[sp,#788]
            ldr w0,[sp,#788]
            cmp w0,#0
            b.ge .L_40c568

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41b768
            add x1,x0, :lo12:.L_41b768
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c568:

            mov x0,#50
            bl zmalloc

            str x0,[sp,#520]
            ldr x19,[sp,#520]
            bl getpid

            mov w3,w0
            adrp x0, .L_41b790
            add x2,x0, :lo12:.L_41b790
            mov x1,#50
            mov x0,x19
            bl snprintf

            ldr x19,[sp,#520]
            ldr x0,[sp,#520]
            bl strlen

            str w0,[sp,#564]
            ldrsw x0,[sp,#564]
            mov x2,x0
            mov x1,x19
            ldr w0,[sp,#788]
            bl write_wrapper

            str w0,[sp,#580]
            ldr w1,[sp,#580]
            ldr w0,[sp,#564]
            cmp w1,w0
            b.eq .L_40c5e4

            adrp x0, .L_41b798
            add x1,x0, :lo12:.L_41b798
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40c5e4:

            ldr x0,[sp,#520]
            bl free

            ldr w0,[sp,#788]
            bl close
.L_40c5f4:

            mov x1,#1
            mov w0,#13
            bl signal

            adrp x0, sighandler
            add x1,x0, :lo12:sighandler
            mov w0,#2
            bl signal

            adrp x0, sighandler
            add x1,x0, :lo12:sighandler
            mov w0,#15
            bl signal

            adrp x0, sighandler
            add x1,x0, :lo12:sighandler
            mov w0,#1
            bl signal

            mov x0,#0
            bl time

            bl srandom

            b .L_40cc98
.L_40c640:

            str wzr,[sp,#796]
            add x0,sp,#104
            str x0,[sp,#552]
            str wzr,[sp,#792]
            b .L_40c66c
.L_40c654:

            ldr x0,[sp,#552]
            ldr w1,[sp,#792]
            str xzr,[x0,x1,lsl #3]
            ldr w0,[sp,#792]
            add w0,w0,#1
            str w0,[sp,#792]
.L_40c66c:

            ldr w0,[sp,#792]
            cmp w0,#15
            b.ls .L_40c654

            ldr x0,[sp,#304]
            str x0,[sp,#800]
            b .L_40c6cc
.L_40c684:

            ldr x0,[sp,#800]
            ldr x0,[x0]
            lsr x0,x0,#6
            lsl x1,x0,#3
            add x2,sp,#104
            ldr x1,[x2,x1]
            ldr x2,[sp,#800]
            ldr x2,[x2]
            and w2,w2,#63
            mov x3,#1
            lsl x2,x3,x2
            orr x2,x1,x2
            lsl x0,x0,#3
            add x1,sp,#104
            str x2,[x1,x0]
            ldr x0,[sp,#800]
            ldr x0,[x0,#16]
            str x0,[sp,#800]
.L_40c6cc:

            ldr x0,[sp,#800]
            cmp x0,#0
            b.ne .L_40c684

            ldr x0,[sp,#296]
            str x0,[sp,#800]
            b .L_40c72c
.L_40c6e4:

            ldr x0,[sp,#800]
            ldr x0,[x0]
            lsr x0,x0,#6
            lsl x1,x0,#3
            add x2,sp,#104
            ldr x1,[x2,x1]
            ldr x2,[sp,#800]
            ldr x2,[x2]
            and w2,w2,#63
            mov x3,#1
            lsl x2,x3,x2
            orr x2,x1,x2
            lsl x0,x0,#3
            add x1,sp,#104
            str x2,[x1,x0]
            ldr x0,[sp,#800]
            ldr x0,[x0,#16]
            str x0,[sp,#800]
.L_40c72c:

            ldr x0,[sp,#800]
            cmp x0,#0
            b.ne .L_40c6e4

            ldr x0,[sp,#312]
            str x0,[sp,#800]
            b .L_40c78c
.L_40c744:

            ldr x0,[sp,#800]
            ldr x0,[x0]
            lsr x0,x0,#6
            lsl x1,x0,#3
            add x2,sp,#104
            ldr x1,[x2,x1]
            ldr x2,[sp,#800]
            ldr x2,[x2]
            and w2,w2,#63
            mov x3,#1
            lsl x2,x3,x2
            orr x2,x1,x2
            lsl x0,x0,#3
            add x1,sp,#104
            str x2,[x1,x0]
            ldr x0,[sp,#800]
            ldr x0,[x0,#16]
            str x0,[sp,#800]
.L_40c78c:

            ldr x0,[sp,#800]
            cmp x0,#0
            b.ne .L_40c744

            mov x0,#1
            str x0,[sp,#240]
            str xzr,[sp,#248]
            add x1,sp,#240
            add x0,sp,#104
            mov x4,x1
            mov x3,#0
            mov x2,#0
            mov x1,x0
            mov w0,#1024
            bl select

            str w0,[sp,#788]
            ldr w0,[sp,#788]
            cmp w0,#0
            b.le .L_40cba8

            str wzr,[sp,#900]
            b .L_40cb98
.L_40c7dc:

            ldr w0,[sp,#900]
            add w1,w0,#63
            cmp w0,#0
            csel w0,w1,w0,lt
            asr w0,w0,#6
            sxtw x0,w0
            lsl x0,x0,#3
            add x1,sp,#104
            ldr x0,[x1,x0]
            ldr w1,[sp,#900]
            and w1,w1,#63
            mov x2,#1
            lsl x1,x2,x1
            and x0,x0,x1
            cmp x0,#0
            b.eq .L_40cb88

            mov w0,#28
            str w0,[sp,#236]
            add x1,sp,#236
            add x0,sp,#256
            mov x2,x1
            mov x1,x0
            ldr w0,[sp,#900]
            bl accept

            str w0,[sp,#788]
            ldr w0,[sp,#788]
            cmp w0,#0
            b.ge .L_40c870

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41b7b8
            add x1,x0, :lo12:.L_41b7b8
            mov w0,#3
            bl syslog

            b .L_40cb8c
.L_40c870:

            ldr x0,[sp,#288]
            add x1,sp,#256
            bl acl_check

            cmp w0,#0
            b.eq .L_40c970

            add x0,sp,#56
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            add x0,sp,#256
            ldrh w0,[x0]
            mov w4,w0
            add x0,sp,#256
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_40c8c0

            add x0,sp,#256
            add x0,x0,#4
            b .L_40c8c8
.L_40c8c0:

            add x0,sp,#256
            add x0,x0,#8
.L_40c8c8:

            add x1,sp,#56
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            add x0,sp,#256
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_40c8fc

            add x0,sp,#256
            ldrh w0,[x0,#2]
            b .L_40c904
.L_40c8fc:

            add x0,sp,#256
            ldrh w0,[x0,#2]
.L_40c904:

            strh w0,[sp,#542]
            ldrh w0,[sp,#542]
            bl ntohs

            and w0,w0,#65535
            mov w1,w0
            add x0,sp,#56
            mov w3,w1
            mov x2,x0
            adrp x0, .L_41b7e0
            add x1,x0, :lo12:.L_41b7e0
            mov w0,#4
            bl syslog

            add x0,sp,#56
            bl gen_denied_page

            str x0,[sp,#520]
            ldr x19,[sp,#520]
            ldr x0,[sp,#520]
            bl strlen

            mov x2,x0
            mov x1,x19
            ldr w0,[sp,#788]
            bl write_wrapper

            ldr x0,[sp,#520]
            bl free

            ldr w0,[sp,#788]
            bl close

            b .L_40cb8c
.L_40c970:

            add x0,sp,#328
            bl pthread_attr_init

            add x0,sp,#328
            mov x1,#131072
            bl pthread_attr_setstacksize

            add x0,sp,#328
            mov w1,#1
            bl pthread_attr_setdetachstate

            add x0,sp,#328
            mov x1,#256
            bl pthread_attr_setguardsize

            ldr x0,[sp,#304]
            ldrsw x1,[sp,#900]
            bl plist_in

            cmp w0,#0
            b.eq .L_40ca2c

            mov x0,#48
            bl zmalloc

            str x0,[sp,#544]
            ldr x0,[sp,#544]
            ldr w1,[sp,#788]
            str w1,[x0]
            ldr x0,[sp,#544]
            add x0,x0,#16
            mov x1,x0
            add x0,sp,#256
            ldr q30,[x0]
            ldur q31,[x0,#12]
            str q30,[x1]
            stur q31,[x1,#12]
            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40ca20

            add x1,sp,#328
            add x4,sp,#320
            ldr x3,[sp,#544]
            adrp x0, proxy_thread
            add x2,x0, :lo12:proxy_thread
            mov x0,x4
            bl pthread_create

            str w0,[sp,#796]
            b .L_40cb4c
.L_40ca20:

            ldr x0,[sp,#544]
            bl proxy_thread

            b .L_40cb4c
.L_40ca2c:

            ldr x0,[sp,#296]
            ldrsw x1,[sp,#900]
            bl plist_in

            cmp w0,#0
            b.eq .L_40cabc

            mov x0,#48
            bl zmalloc

            str x0,[sp,#544]
            ldr x0,[sp,#544]
            ldr w1,[sp,#788]
            str w1,[x0]
            ldr x0,[sp,#544]
            add x0,x0,#16
            mov x1,x0
            add x0,sp,#256
            ldr q30,[x0]
            ldur q31,[x0,#12]
            str q30,[x1]
            stur q31,[x1,#12]
            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40cab0

            add x1,sp,#328
            add x4,sp,#320
            ldr x3,[sp,#544]
            adrp x0, socks5_thread
            add x2,x0, :lo12:socks5_thread
            mov x0,x4
            bl pthread_create

            str w0,[sp,#796]
            b .L_40cb4c
.L_40cab0:

            ldr x0,[sp,#544]
            bl socks5_thread

            b .L_40cb4c
.L_40cabc:

            mov x0,#48
            bl zmalloc

            str x0,[sp,#544]
            ldr x0,[sp,#544]
            ldr w1,[sp,#788]
            str w1,[x0]
            ldr x0,[sp,#544]
            add x0,x0,#16
            mov x1,x0
            add x0,sp,#256
            ldr q30,[x0]
            ldur q31,[x0,#12]
            str q30,[x1]
            stur q31,[x1,#12]
            ldr x0,[sp,#312]
            ldrsw x1,[sp,#900]
            bl plist_get

            mov x1,x0
            ldr x0,[sp,#544]
            str x1,[x0,#8]
            adrp x0, serialize
            add x0,x0, :lo12:serialize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40cb44

            add x1,sp,#328
            add x4,sp,#320
            ldr x3,[sp,#544]
            adrp x0, tunnel_thread
            add x2,x0, :lo12:tunnel_thread
            mov x0,x4
            bl pthread_create

            str w0,[sp,#796]
            b .L_40cb4c
.L_40cb44:

            ldr x0,[sp,#544]
            bl tunnel_thread
.L_40cb4c:

            add x0,sp,#328
            bl pthread_attr_destroy

            ldr w0,[sp,#796]
            cmp w0,#0
            b.eq .L_40cb78

            ldr w2,[sp,#796]
            adrp x0, .L_41b800
            add x1,x0, :lo12:.L_41b800
            mov w0,#3
            bl syslog

            b .L_40cb8c
.L_40cb78:

            ldr w0,[sp,#880]
            add w0,w0,#1
            str w0,[sp,#880]
            b .L_40cb8c
.L_40cb88:

            nop
            nop
            nop
            nop
.L_40cb8c:

            ldr w0,[sp,#900]
            add w0,w0,#1
            str w0,[sp,#900]
.L_40cb98:

            ldr w0,[sp,#900]
            cmp w0,#1023
            b.le .L_40c7dc

            b .L_40cbe8
.L_40cba8:

            ldr w0,[sp,#788]
            cmp w0,#0
            b.ge .L_40cbe8

            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40cbe8

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41b830
            add x1,x0, :lo12:.L_41b830
            mov w0,#3
            bl syslog
.L_40cbe8:

            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_40cc98

            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_lock

            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            ldr x0,[x0]
            str x0,[sp,#800]
            b .L_40cc74
.L_40cc1c:

            ldr x0,[sp,#800]
            ldr x0,[x0,#16]
            str x0,[sp,#528]
            ldr w0,[sp,#876]
            add w0,w0,#1
            str w0,[sp,#876]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40cc64

            ldr x0,[sp,#800]
            ldr x0,[x0]
            ldr w2,[sp,#900]
            mov x1,x0
            adrp x0, .L_41b858
            add x0,x0, :lo12:.L_41b858
            bl printf
.L_40cc64:

            ldr x0,[sp,#800]
            bl free

            ldr x0,[sp,#528]
            str x0,[sp,#800]
.L_40cc74:

            ldr x0,[sp,#800]
            cmp x0,#0
            b.ne .L_40cc1c

            adrp x0, threads_list
            add x0,x0, :lo12:threads_list
            str xzr,[x0]
            adrp x0, threads_mtx
            add x0,x0, :lo12:threads_mtx
            bl pthread_mutex_unlock
.L_40cc98:

            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40c640

            ldr w1,[sp,#880]
            ldr w0,[sp,#876]
            cmp w1,w0
            b.eq .L_40ccdc

            adrp x0, quit
            add x0,x0, :lo12:quit
            ldr w0,[x0]
            cmp w0,#1
            b.le .L_40c640

            b .L_40ccdc
.L_40ccd4:

            nop
            nop
            nop
            nop
            b .L_40cce0
.L_40ccdc:

            nop
            nop
            nop
            nop
.L_40cce0:

            ldr x0,[sp,#776]
            bl free

            ldr w1,[sp,#880]
            ldr w0,[sp,#876]
            sub w0,w1,w0
            mov w2,w0
            adrp x0, .L_41b878
            add x1,x0, :lo12:.L_41b878
            mov w0,#6
            bl syslog

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_lock

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            bl plist_free

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_unlock

            adrp x0, header_list
            add x0,x0, :lo12:header_list
            ldr x0,[x0]
            bl hlist_free

            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            ldr x0,[x0]
            bl plist_free

            adrp x0, noproxy_list
            add x0,x0, :lo12:noproxy_list
            ldr x0,[x0]
            bl plist_free

            ldr x0,[sp,#312]
            bl plist_free

            ldr x0,[sp,#304]
            bl plist_free

            ldr x0,[sp,#296]
            bl plist_free

            ldr x0,[sp,#288]
            bl plist_free

            ldr x0,[sp,#712]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40cd98

            ldr x0,[sp,#712]
            bl unlink
.L_40cd98:

            ldr x0,[sp,#704]
            bl free

            ldr x0,[sp,#712]
            bl free

            ldr x0,[sp,#832]
            bl free

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x0,[x0]
            bl free

            bl parent_free

            mov w0,#0
            bl exit
.cfi_endproc 
.size main, . - main
#-----------------------------------
.type ntlm_set_key, @function
#-----------------------------------
ntlm_set_key:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            ldrb w0,[x0]
            strb w0,[sp,#40]
            ldr x0,[sp,#24]
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#7,#1
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#1
            ldrb w0,[x0]
            lsr w0,w0,#1
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#41]
            ldr x0,[sp,#24]
            add x0,x0,#1
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#6,#2
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#2
            ldrb w0,[x0]
            lsr w0,w0,#2
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#42]
            ldr x0,[sp,#24]
            add x0,x0,#2
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#5,#3
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#3
            ldrb w0,[x0]
            lsr w0,w0,#3
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#43]
            ldr x0,[sp,#24]
            add x0,x0,#3
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#4,#4
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#4
            ldrb w0,[x0]
            lsr w0,w0,#4
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#44]
            ldr x0,[sp,#24]
            add x0,x0,#4
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#3,#5
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#5
            ldrb w0,[x0]
            lsr w0,w0,#5
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#45]
            ldr x0,[sp,#24]
            add x0,x0,#5
            ldrb w0,[x0]
            sxtb w0,w0
            ubfiz w0,w0,#2,#6
            sxtb w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#6
            ldrb w0,[x0]
            lsr w0,w0,#6
            and w0,w0,#255
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w0,w0
            and w0,w0,#255
            strb w0,[sp,#46]
            ldr x0,[sp,#24]
            add x0,x0,#6
            ldrb w0,[x0]
            ubfiz w0,w0,#1,#7
            and w0,w0,#255
            strb w0,[sp,#47]
            add x0,sp,#40
            mov x1,x0
            ldr x0,[sp,#16]
            bl gl_des_setkey

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_set_key, . - ntlm_set_key
#-----------------------------------
.type ntlm_calc_resp, @function
#-----------------------------------
ntlm_calc_resp:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-304]!
.cfi_def_cfa_offset 304
.cfi_offset 29, -304
.cfi_offset 30, -296
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            mov x0,#25
            bl zmalloc

            mov x1,x0
            ldr x0,[sp,#40]
            str x1,[x0]
            add x0,sp,#48
            mov x1,x0
            ldr x0,[sp,#32]
            bl ntlm_set_key

            ldr x0,[sp,#40]
            ldr x1,[x0]
            add x0,sp,#48
            mov w3,#0
            mov x2,x1
            ldr x1,[sp,#24]
            bl gl_des_ecb_crypt

            ldr x0,[sp,#32]
            add x0,x0,#7
            add x1,sp,#48
            bl ntlm_set_key

            ldr x0,[sp,#40]
            ldr x0,[x0]
            add x1,x0,#8
            add x0,sp,#48
            mov w3,#0
            mov x2,x1
            ldr x1,[sp,#24]
            bl gl_des_ecb_crypt

            ldr x0,[sp,#32]
            add x0,x0,#14
            add x1,sp,#48
            bl ntlm_set_key

            ldr x0,[sp,#40]
            ldr x0,[x0]
            add x1,x0,#16
            add x0,sp,#48
            mov w3,#0
            mov x2,x1
            ldr x1,[sp,#24]
            bl gl_des_ecb_crypt

            mov w0,#24
            ldp fp,lr,[sp],#304
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_calc_resp, . - ntlm_calc_resp
#-----------------------------------
.type ntlm2_calc_resp, @function
#-----------------------------------
ntlm2_calc_resp:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#72]
            str x1,[sp,#64]
            str x2,[sp,#56]
            str x3,[sp,#48]
            str x4,[sp,#40]
            str x5,[sp,#32]
            str w6,[sp,#28]
            str w7,[sp,#24]
            mov x0,#9
            bl zmalloc

            str x0,[sp,#120]
            bl getrandom64

            mov x1,x0
            ldr x0,[sp,#120]
            str x1,[x0]
            mov x0,#0
            bl time

            mov x1,x0
            mov x0,#38528
            movk x0,#152,lsl #16
            mul x1,x1,x0
            mov x0,#32768
            movk x0,#54590,lsl #16
            movk x0,#45534,lsl #32
            movk x0,#413,lsl #48
            add x0,x1,x0
            str x0,[sp,#112]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40d110

            mov w2,#7
            mov x1,#8
            ldr x0,[sp,#120]
            bl printmem

            str x0,[sp,#104]
            ldr x2,[sp,#112]
            ldr x1,[sp,#104]
            adrp x0, .L_41b990
            add x0,x0, :lo12:.L_41b990
            bl printf

            ldr x0,[sp,#104]
            bl free
.L_40d110:

            ldr w0,[sp,#24]
            add w0,w0,#33
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#96]
            ldr x0,[sp,#96]
            mov w1,#257
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#4
            str wzr,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#8
            ldr x1,[sp,#112]
            str x1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#16
            ldr x1,[sp,#120]
            ldr x1,[x1]
            str x1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#24
            str wzr,[x0]
            ldr x0,[sp,#96]
            add x3,x0,#28
            ldrsw x0,[sp,#28]
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrsw x1,[sp,#24]
            mov x2,x1
            mov x1,x0
            mov x0,x3
            bl memcpy

            ldrsw x0,[sp,#24]
            add x0,x0,#28
            ldr x1,[sp,#96]
            add x0,x1,x0
            mov x2,#4
            mov w1,#0
            bl memset

            ldr w0,[sp,#24]
            add w0,w0,#32
            str w0,[sp,#92]
            ldr w0,[sp,#92]
            add w1,w0,#16
            ldr x0,[sp,#64]
            str w1,[x0]
            ldr x0,[sp,#64]
            ldr w0,[x0]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            mov x1,x0
            ldr x0,[sp,#72]
            str x1,[x0]
            ldr w0,[sp,#92]
            add w0,w0,#9
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#80]
            ldr x0,[sp,#32]
            add x0,x0,#24
            ldr x1,[x0]
            ldr x0,[sp,#80]
            str x1,[x0]
            ldr x0,[sp,#80]
            add x0,x0,#8
            ldrsw x1,[sp,#92]
            mov x2,x1
            ldr x1,[sp,#96]
            bl memcpy

            ldr w0,[sp,#92]
            add w0,w0,#8
            sxtw x1,w0
            ldr x0,[sp,#72]
            ldr x0,[x0]
            mov x4,x0
            mov x3,x1
            ldr x2,[sp,#80]
            mov x1,#16
            ldr x0,[sp,#40]
            bl hmac_md5

            ldr x0,[sp,#72]
            ldr x0,[x0]
            add x0,x0,#16
            ldrsw x1,[sp,#92]
            mov x2,x1
            ldr x1,[sp,#96]
            bl memcpy

            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#48]
            mov w1,#24
            str w1,[x0]
            ldr x0,[sp,#48]
            ldr w0,[x0]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            mov x1,x0
            ldr x0,[sp,#56]
            str x1,[x0]
            mov x0,#17
            bl zmalloc

            str x0,[sp,#80]
            ldr x0,[sp,#32]
            add x0,x0,#24
            ldr x1,[x0]
            ldr x0,[sp,#80]
            str x1,[x0]
            ldr x0,[sp,#80]
            add x0,x0,#8
            ldr x1,[sp,#120]
            ldr x1,[x1]
            str x1,[x0]
            ldr x0,[sp,#56]
            ldr x0,[x0]
            mov x4,x0
            mov x3,#16
            ldr x2,[sp,#80]
            mov x1,#16
            ldr x0,[sp,#40]
            bl hmac_md5

            ldr x0,[sp,#56]
            ldr x0,[x0]
            add x0,x0,#16
            ldr x1,[sp,#120]
            ldr x1,[x1]
            str x1,[x0]
            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#96]
            bl free

            ldr x0,[sp,#120]
            bl free

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm2_calc_resp, . - ntlm2_calc_resp
#-----------------------------------
.type ntlm2sr_calc_rest, @function
#-----------------------------------
ntlm2sr_calc_rest:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x0,[sp,#56]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str x3,[sp,#32]
            str x4,[sp,#24]
            str x5,[sp,#16]
            mov x0,#9
            bl zmalloc

            str x0,[sp,#88]
            bl getrandom64

            mov x1,x0
            ldr x0,[sp,#88]
            str x1,[x0]
            ldr x0,[sp,#32]
            mov w1,#24
            str w1,[x0]
            ldr x0,[sp,#32]
            ldr w0,[x0]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            mov x1,x0
            ldr x0,[sp,#40]
            str x1,[x0]
            ldr x0,[sp,#40]
            ldr x0,[x0]
            ldr x1,[sp,#88]
            ldr x1,[x1]
            str x1,[x0]
            ldr x0,[sp,#40]
            ldr x0,[x0]
            add x0,x0,#8
            mov x2,#16
            mov w1,#0
            bl memset

            mov x0,#17
            bl zmalloc

            str x0,[sp,#80]
            mov x0,#17
            bl zmalloc

            str x0,[sp,#72]
            ldr x0,[sp,#16]
            add x0,x0,#24
            ldr x1,[x0]
            ldr x0,[sp,#80]
            str x1,[x0]
            ldr x0,[sp,#80]
            add x0,x0,#8
            ldr x1,[sp,#88]
            ldr x1,[x1]
            str x1,[x0]
            ldr x2,[sp,#72]
            mov x1,#16
            ldr x0,[sp,#80]
            bl md5_buffer

            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#48]
            mov w1,#24
            str w1,[x0]
            ldr x2,[sp,#72]
            ldr x1,[sp,#24]
            ldr x0,[sp,#56]
            bl ntlm_calc_resp

            ldr x0,[sp,#72]
            bl free

            ldr x0,[sp,#88]
            bl free

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm2sr_calc_rest, . - ntlm2sr_calc_rest
.align 2
#-----------------------------------
.globl ntlm_hash_lm_password
.type ntlm_hash_lm_password, @function
#-----------------------------------
ntlm_hash_lm_password:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-320]!
.cfi_def_cfa_offset 320
.cfi_offset 29, -320
.cfi_offset 30, -312
            mov fp,sp
            str x0,[sp,#24]
            mov x0,#18251
            movk x0,#8531,lsl #16
            movk x0,#9024,lsl #32
            movk x0,#9508,lsl #48
            str x0,[sp,#296]
            mov x0,#22
            bl zmalloc

            str x0,[sp,#312]
            mov x0,#15
            bl zmalloc

            str x0,[sp,#304]
            ldr x0,[sp,#24]
            bl strlen

            cmp x0,#14
            b.hi .L_40d4b0

            ldr x0,[sp,#24]
            bl strlen

            b .L_40d4b4
.L_40d4b0:

            mov x0,#14
.L_40d4b4:

            mov x2,x0
            ldr x1,[sp,#24]
            ldr x0,[sp,#304]
            bl strncpy

            bl uppercase

            add x0,sp,#40
            mov x1,x0
            ldr x0,[sp,#304]
            bl ntlm_set_key

            add x1,sp,#296
            add x0,sp,#40
            mov w3,#0
            ldr x2,[sp,#312]
            bl gl_des_ecb_crypt

            ldr x0,[sp,#304]
            add x0,x0,#7
            add x1,sp,#40
            bl ntlm_set_key

            ldr x0,[sp,#312]
            add x2,x0,#8
            add x1,sp,#296
            add x0,sp,#40
            mov w3,#0
            bl gl_des_ecb_crypt

            ldr x0,[sp,#312]
            add x0,x0,#16
            mov x2,#5
            mov w1,#0
            bl memset

            mov x2,#14
            mov w1,#0
            ldr x0,[sp,#304]
            bl memset

            ldr x0,[sp,#304]
            bl free

            ldr x0,[sp,#312]
            ldp fp,lr,[sp],#320
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_hash_lm_password, . - ntlm_hash_lm_password
.align 2
#-----------------------------------
.globl ntlm_hash_nt_password
.type ntlm_hash_nt_password, @function
#-----------------------------------
ntlm_hash_nt_password:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            mov x0,#22
            bl zmalloc

            str x0,[sp,#56]
            add x0,sp,#40
            ldr x1,[sp,#24]
            bl unicode

            str w0,[sp,#52]
            ldr x0,[sp,#40]
            ldrsw x1,[sp,#52]
            ldr x2,[sp,#56]
            bl md4_buffer

            ldr x0,[sp,#56]
            add x0,x0,#16
            mov x2,#5
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            ldrsw x1,[sp,#52]
            mov x2,x1
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            bl free

            ldr x0,[sp,#56]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_hash_nt_password, . - ntlm_hash_nt_password
.align 4
#-----------------------------------
.globl ntlm2_hash_password
.type ntlm2_hash_password, @function
#-----------------------------------
ntlm2_hash_password:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -96
            str x0,[sp,#56]
            str x1,[sp,#48]
            str x2,[sp,#40]
            ldr x0,[sp,#40]
            bl ntlm_hash_nt_password

            str x0,[sp,#104]
            ldr x0,[sp,#56]
            bl strlen

            mov x19,x0
            ldr x0,[sp,#48]
            bl strlen

            add x0,x19,x0
            add x0,x0,#1
            str x0,[sp,#96]
            ldr x0,[sp,#96]
            bl zmalloc

            str x0,[sp,#88]
            ldr x2,[sp,#96]
            ldr x1,[sp,#56]
            ldr x0,[sp,#88]
            bl strlcat

            ldr x2,[sp,#96]
            ldr x1,[sp,#48]
            ldr x0,[sp,#88]
            bl strlcat

            ldr x0,[sp,#88]
            bl uppercase

            add x0,sp,#64
            ldr x1,[sp,#88]
            bl unicode

            str w0,[sp,#84]
            mov x0,#17
            bl zmalloc

            str x0,[sp,#72]
            ldr x0,[sp,#64]
            ldrsw x1,[sp,#84]
            ldr x4,[sp,#72]
            mov x3,x1
            mov x2,x0
            mov x1,#16
            ldr x0,[sp,#104]
            bl hmac_md5

            ldr x0,[sp,#104]
            bl free

            ldr x0,[sp,#64]
            bl free

            ldr x0,[sp,#88]
            bl free

            ldr x0,[sp,#72]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm2_hash_password, . - ntlm2_hash_password
.align 2
#-----------------------------------
.globl ntlm_request
.type ntlm_request, @function
#-----------------------------------
ntlm_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            mov w0,#45574
            str w0,[sp,#60]
            ldr x0,[sp,#24]
            str xzr,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#50
            bl strlen

            str w0,[sp,#56]
            ldr x0,[sp,#16]
            add x0,x0,#100
            bl strlen

            str w0,[sp,#52]
            ldr x0,[sp,#16]
            ldr w0,[x0,#312]
            cmp w0,#0
            b.ne .L_40d7c0

            ldr x0,[sp,#16]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.eq .L_40d70c

            mov w0,#45573
            movk w0,#41480,lsl #16
            str w0,[sp,#60]
            b .L_40d7cc
.L_40d70c:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#2
            b.ne .L_40d72c

            mov w0,#45575
            movk w0,#41480,lsl #16
            str w0,[sp,#60]
            b .L_40d7cc
.L_40d72c:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.eq .L_40d758

            ldr x0,[sp,#16]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.eq .L_40d758

            mov w0,#45575
            str w0,[sp,#60]
            b .L_40d7cc
.L_40d758:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.eq .L_40d774

            mov w0,#45573
            str w0,[sp,#60]
            b .L_40d7cc
.L_40d774:

            ldr x0,[sp,#16]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.eq .L_40d790

            mov w0,#45574
            str w0,[sp,#60]
            b .L_40d7cc
.L_40d790:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40d7b8

            adrp x0, .L_41b9b8
            add x0,x0, :lo12:.L_41b9b8
            bl puts

            ldr x0,[sp,#16]
            bl dump_auth
.L_40d7b8:

            mov w0,#0
            b .L_40d970
.L_40d7c0:

            ldr x0,[sp,#16]
            ldr w0,[x0,#312]
            str w0,[sp,#60]
.L_40d7cc:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40d830

            adrp x0, .L_41b9e0
            add x0,x0, :lo12:.L_41b9e0
            bl puts

            ldr x0,[sp,#16]
            add x0,x0,#50
            mov x1,x0
            adrp x0, .L_41b9f0
            add x0,x0, :lo12:.L_41b9f0
            bl printf

            ldr x0,[sp,#16]
            add x0,x0,#100
            mov x1,x0
            adrp x0, .L_41ba00
            add x0,x0, :lo12:.L_41ba00
            bl printf

            ldr w0,[sp,#60]
            mov w1,w0
            adrp x0, .L_41ba10
            add x0,x0, :lo12:.L_41ba10
            bl printf
.L_40d830:

            mov x0,#1024
            bl zmalloc

            str x0,[sp,#40]
            mov x2,#8
            adrp x0, .L_41ba28
            add x1,x0, :lo12:.L_41ba28
            ldr x0,[sp,#40]
            bl memcpy

            ldr x0,[sp,#40]
            add x0,x0,#8
            mov w1,#1
            str w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#12
            ldr w1,[sp,#60]
            str w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#16
            ldr w1,[sp,#56]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#18
            ldr w1,[sp,#56]
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#52]
            add w1,w0,#32
            ldr x0,[sp,#40]
            add x0,x0,#20
            str w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#24
            ldr w1,[sp,#52]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#26
            ldr w1,[sp,#52]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#28
            mov w1,#32
            str w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#100
            bl strdup

            bl uppercase

            str x0,[sp,#32]
            ldr x0,[sp,#40]
            add x0,x0,#32
            ldrsw x1,[sp,#52]
            mov x2,x1
            ldr x1,[sp,#32]
            bl memcpy

            ldr x0,[sp,#32]
            bl free

            ldr x0,[sp,#16]
            add x0,x0,#50
            bl strdup

            bl uppercase

            str x0,[sp,#32]
            ldrsw x0,[sp,#52]
            add x0,x0,#32
            ldr x1,[sp,#40]
            add x0,x1,x0
            ldrsw x1,[sp,#56]
            mov x2,x1
            ldr x1,[sp,#32]
            bl memcpy

            ldr x0,[sp,#32]
            bl free

            ldr x0,[sp,#24]
            ldr x1,[sp,#40]
            str x1,[x0]
            ldr w0,[sp,#56]
            add w1,w0,#32
            ldr w0,[sp,#52]
            add w0,w1,w0
.L_40d970:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_request, . - ntlm_request
#-----------------------------------
.type printuc, @function
#-----------------------------------
printuc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            ldr w0,[sp,#20]
            add w0,w0,#1
            lsr w1,w0,#31
            add w0,w1,w0
            asr w0,w0,#1
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#32]
            str wzr,[sp,#44]
            b .L_40d9e8
.L_40d9b4:

            ldr w0,[sp,#44]
            lsl w0,w0,#1
            sxtw x0,w0
            ldr x1,[sp,#24]
            add x1,x1,x0
            ldrsw x0,[sp,#44]
            ldr x2,[sp,#32]
            add x0,x2,x0
            ldrb w1,[x1]
            strb w1,[x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40d9e8:

            ldr w0,[sp,#20]
            lsr w1,w0,#31
            add w0,w1,w0
            asr w0,w0,#1
            mov w1,w0
            ldr w0,[sp,#44]
            cmp w0,w1
            b.lt .L_40d9b4

            ldr x0,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size printuc, . - printuc
.align 2
#-----------------------------------
.globl ntlm_response
.type ntlm_response, @function
#-----------------------------------
ntlm_response:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            str x3,[sp,#16]
            mov w0,#-1
            strh w0,[sp,#128]
            strh wzr,[sp,#126]
            strh wzr,[sp,#124]
            str xzr,[sp,#64]
            str xzr,[sp,#56]
            str wzr,[sp,#52]
            str wzr,[sp,#48]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40dabc

            adrp x0, .L_41ba38
            add x0,x0, :lo12:.L_41ba38
            bl puts

            ldr x0,[sp,#32]
            add x0,x0,#24
            mov w2,#7
            mov x1,#8
            bl printmem

            str x0,[sp,#112]
            ldr w2,[sp,#28]
            ldr x1,[sp,#112]
            adrp x0, .L_41ba48
            add x0,x0, :lo12:.L_41ba48
            bl printf

            ldr x0,[sp,#112]
            bl free

            ldr x0,[sp,#32]
            add x0,x0,#20
            ldr w0,[x0]
            mov w1,w0
            adrp x0, .L_41ba10
            add x0,x0, :lo12:.L_41ba10
            bl printf
.L_40dabc:

            ldr w0,[sp,#28]
            cmp w0,#39
            b.le .L_40dccc

            ldr x0,[sp,#32]
            ldrh w0,[x0,#44]
            strh w0,[sp,#130]
            ldrh w0,[sp,#130]
            strh w0,[sp,#126]
            b .L_40dc34
.L_40dae0:

            ldrh w0,[sp,#130]
            add x0,x0,#2
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrh w0,[x0]
            strh w0,[sp,#110]
            ldrh w0,[sp,#130]
            add w1,w0,#4
            ldrh w0,[sp,#110]
            add w0,w1,w0
            ldr w1,[sp,#28]
            cmp w1,w0
            b.lt .L_40dc6c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40dc04

            ldrh w0,[sp,#128]
            cmp w0,#5
            b.eq .L_40dbb0

            cmp w0,#5
            b.gt .L_40dbc0

            cmp w0,#4
            b.eq .L_40dba0

            cmp w0,#4
            b.gt .L_40dbc0

            cmp w0,#3
            b.eq .L_40db90

            cmp w0,#3
            b.gt .L_40dbc0

            cmp w0,#1
            b.eq .L_40db70

            cmp w0,#2
            b.eq .L_40db80

            b .L_40dbc0
.L_40db70:

            adrp x0, .L_41ba68
            add x0,x0, :lo12:.L_41ba68
            bl printf

            b .L_40dbd8
.L_40db80:

            adrp x0, .L_41ba78
            add x0,x0, :lo12:.L_41ba78
            bl printf

            b .L_40dbd8
.L_40db90:

            adrp x0, .L_41ba88
            add x0,x0, :lo12:.L_41ba88
            bl printf

            b .L_40dbd8
.L_40dba0:

            adrp x0, .L_41ba98
            add x0,x0, :lo12:.L_41ba98
            bl printf

            b .L_40dbd8
.L_40dbb0:

            adrp x0, .L_41baa8
            add x0,x0, :lo12:.L_41baa8
            bl printf

            b .L_40dbd8
.L_40dbc0:

            ldrh w0,[sp,#128]
            mov w1,w0
            adrp x0, .L_41bab8
            add x0,x0, :lo12:.L_41bab8
            bl printf

            nop
            nop
            nop
            nop
.L_40dbd8:

            ldrh w0,[sp,#130]
            add x0,x0,#4
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrh w1,[sp,#110]
            bl printuc

            str x0,[sp,#112]
            ldr x0,[sp,#112]
            bl puts

            ldr x0,[sp,#112]
            bl free
.L_40dc04:

            ldrh w0,[sp,#110]
            ldrh w1,[sp,#130]
            add w0,w0,w1
            and w0,w0,#65535
            add w0,w0,#4
            strh w0,[sp,#130]
            ldrh w0,[sp,#110]
            ldrh w1,[sp,#124]
            add w0,w0,w1
            and w0,w0,#65535
            add w0,w0,#4
            strh w0,[sp,#124]
.L_40dc34:

            ldrh w0,[sp,#130]
            add w0,w0,#3
            ldr w1,[sp,#28]
            cmp w1,w0
            b.le .L_40dc70

            ldrh w0,[sp,#130]
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrh w0,[x0]
            strh w0,[sp,#128]
            ldrh w0,[sp,#128]
            cmp w0,#0
            b.ne .L_40dae0

            b .L_40dc70
.L_40dc6c:

            nop
            nop
            nop
            nop
.L_40dc70:

            ldrh w0,[sp,#124]
            cmp w0,#0
            b.eq .L_40dc94

            ldrh w0,[sp,#128]
            cmp w0,#0
            b.ne .L_40dc94

            ldrh w0,[sp,#124]
            add w0,w0,#4
            strh w0,[sp,#124]
.L_40dc94:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40dccc

            ldrh w0,[sp,#126]
            ldrh w1,[sp,#124]
            ldrh w2,[sp,#128]
            mov w3,w2
            mov w2,w1
            mov w1,w0
            adrp x0, .L_41bac8
            add x0,x0, :lo12:.L_41bac8
            bl printf
.L_40dccc:

            ldr x0,[sp,#16]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.eq .L_40dd0c

            ldr x0,[sp,#16]
            add x4,x0,#250
            ldrh w5,[sp,#126]
            ldrh w6,[sp,#124]
            add x3,sp,#52
            add x2,sp,#64
            add x1,sp,#48
            add x0,sp,#56
            mov w7,w6
            mov w6,w5
            ldr x5,[sp,#32]
            bl ntlm2_calc_resp
.L_40dd0c:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#2
            b.ne .L_40dd3c

            ldr x0,[sp,#16]
            add x4,x0,#200
            add x3,sp,#52
            add x2,sp,#64
            add x1,sp,#48
            add x0,sp,#56
            ldr x5,[sp,#32]
            bl ntlm2sr_calc_rest
.L_40dd3c:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#1
            b.ne .L_40dd68

            ldr x0,[sp,#16]
            add x1,x0,#200
            ldr x0,[sp,#32]
            add x2,x0,#24
            add x0,sp,#56
            bl ntlm_calc_resp

            str w0,[sp,#48]
.L_40dd68:

            ldr x0,[sp,#16]
            ldr w0,[x0,#308]
            cmp w0,#0
            b.eq .L_40dd94

            ldr x0,[sp,#16]
            add x1,x0,#150
            ldr x0,[sp,#32]
            add x2,x0,#24
            add x0,sp,#64
            bl ntlm_calc_resp

            str w0,[sp,#52]
.L_40dd94:

            ldr x0,[sp,#16]
            ldr w0,[x0,#304]
            cmp w0,#0
            b.ne .L_40ddb4

            ldr x0,[sp,#16]
            ldr w0,[x0,#300]
            cmp w0,#0
            b.eq .L_40de20
.L_40ddb4:

            ldr x0,[sp,#16]
            add x0,x0,#50
            bl strdup

            bl uppercase

            str x0,[sp,#112]
            add x0,sp,#88
            ldr x1,[sp,#112]
            bl unicode

            str w0,[sp,#140]
            ldr x0,[sp,#112]
            bl free

            ldr x1,[sp,#16]
            add x0,sp,#80
            bl unicode

            str w0,[sp,#136]
            ldr x0,[sp,#16]
            add x0,x0,#100
            bl strdup

            bl uppercase

            str x0,[sp,#112]
            add x0,sp,#72
            ldr x1,[sp,#112]
            bl unicode

            str w0,[sp,#132]
            ldr x0,[sp,#112]
            bl free

            b .L_40de84
.L_40de20:

            ldr x0,[sp,#16]
            add x0,x0,#50
            bl strdup

            bl uppercase

            str x0,[sp,#88]
            ldr x0,[sp,#16]
            bl strdup

            bl uppercase

            str x0,[sp,#80]
            ldr x0,[sp,#16]
            add x0,x0,#100
            bl strdup

            bl uppercase

            str x0,[sp,#72]
            ldr x0,[sp,#16]
            add x0,x0,#50
            bl strlen

            str w0,[sp,#140]
            ldr x0,[sp,#16]
            bl strlen

            str w0,[sp,#136]
            ldr x0,[sp,#16]
            add x0,x0,#100
            bl strlen

            str w0,[sp,#132]
.L_40de84:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40df70

            adrp x0, .L_41baf8
            add x0,x0, :lo12:.L_41baf8
            bl puts

            ldr x0,[sp,#16]
            add x0,x0,#100
            mov x1,x0
            adrp x0, .L_41bb08
            add x0,x0, :lo12:.L_41bb08
            bl printf

            ldr x0,[sp,#16]
            add x0,x0,#50
            mov x1,x0
            adrp x0, .L_41bb20
            add x0,x0, :lo12:.L_41bb20
            bl printf

            ldr x0,[sp,#16]
            mov x1,x0
            adrp x0, .L_41bb38
            add x0,x0, :lo12:.L_41bb38
            bl printf

            ldr w0,[sp,#48]
            cmp w0,#0
            b.eq .L_40df2c

            ldr x0,[sp,#56]
            ldr w1,[sp,#48]
            sxtw x1,w1
            mov w2,#7
            bl printmem

            str x0,[sp,#112]
            ldr w0,[sp,#48]
            mov w2,w0
            ldr x1,[sp,#112]
            adrp x0, .L_41bb50
            add x0,x0, :lo12:.L_41bb50
            bl printf

            ldr x0,[sp,#112]
            bl free
.L_40df2c:

            ldr w0,[sp,#52]
            cmp w0,#0
            b.eq .L_40df70

            ldr x0,[sp,#64]
            ldr w1,[sp,#52]
            sxtw x1,w1
            mov w2,#7
            bl printmem

            str x0,[sp,#112]
            ldr w0,[sp,#52]
            mov w2,w0
            ldr x1,[sp,#112]
            adrp x0, .L_41bb50
            add x0,x0, :lo12:.L_41bb50
            bl printf

            ldr x0,[sp,#112]
            bl free
.L_40df70:

            mov x0,#1024
            bl zmalloc

            str x0,[sp,#96]
            mov x2,#8
            adrp x0, .L_41ba28
            add x1,x0, :lo12:.L_41ba28
            ldr x0,[sp,#96]
            bl memcpy

            ldr x0,[sp,#96]
            add x0,x0,#8
            mov w1,#3
            str w1,[x0]
            ldr w1,[sp,#52]
            ldr x0,[sp,#96]
            add x0,x0,#12
            and w1,w1,#65535
            strh w1,[x0]
            ldr w1,[sp,#52]
            ldr x0,[sp,#96]
            add x0,x0,#14
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#140]
            add w1,w0,#64
            ldr w0,[sp,#136]
            add w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr x0,[sp,#96]
            add x0,x0,#16
            str w1,[x0]
            ldr w1,[sp,#48]
            ldr x0,[sp,#96]
            add x0,x0,#20
            and w1,w1,#65535
            strh w1,[x0]
            ldr w1,[sp,#48]
            ldr x0,[sp,#96]
            add x0,x0,#22
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#140]
            add w1,w0,#64
            ldr w0,[sp,#136]
            add w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            ldr x0,[sp,#96]
            add x0,x0,#24
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#28
            ldr w1,[sp,#140]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#30
            ldr w1,[sp,#140]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#32
            mov w1,#64
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#36
            ldr w1,[sp,#136]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#38
            ldr w1,[sp,#136]
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#140]
            add w1,w0,#64
            ldr x0,[sp,#96]
            add x0,x0,#40
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#44
            ldr w1,[sp,#132]
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#46
            ldr w1,[sp,#132]
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#140]
            add w1,w0,#64
            ldr w0,[sp,#136]
            add w1,w1,w0
            ldr x0,[sp,#96]
            add x0,x0,#48
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#52
            strh wzr,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#54
            strh wzr,[x0]
            ldr w0,[sp,#140]
            and w1,w0,#65535
            ldr w0,[sp,#136]
            and w0,w0,#65535
            add w0,w1,w0
            and w1,w0,#65535
            ldr w0,[sp,#132]
            and w0,w0,#65535
            add w0,w1,w0
            and w1,w0,#65535
            ldr w0,[sp,#52]
            and w0,w0,#65535
            add w0,w1,w0
            and w1,w0,#65535
            ldr w0,[sp,#48]
            and w0,w0,#65535
            add w0,w1,w0
            and w1,w0,#65535
            ldr x0,[sp,#96]
            add x0,x0,#56
            add w1,w1,#64
            and w1,w1,#65535
            strh w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#60
            ldr x1,[sp,#32]
            ldr w1,[x1,#20]
            str w1,[x0]
            ldr x0,[sp,#96]
            add x0,x0,#64
            ldr x1,[sp,#88]
            ldrsw x2,[sp,#140]
            bl memcpy

            ldrsw x0,[sp,#140]
            add x0,x0,#64
            ldr x1,[sp,#96]
            add x0,x1,x0
            ldr x1,[sp,#80]
            ldrsw x2,[sp,#136]
            bl memcpy

            ldrsw x1,[sp,#140]
            ldrsw x0,[sp,#136]
            add x0,x1,x0
            add x0,x0,#64
            ldr x1,[sp,#96]
            add x0,x1,x0
            ldr x1,[sp,#72]
            ldrsw x2,[sp,#132]
            bl memcpy

            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_40e210

            ldrsw x1,[sp,#140]
            ldrsw x0,[sp,#136]
            add x1,x1,x0
            ldrsw x0,[sp,#132]
            add x0,x1,x0
            add x0,x0,#64
            ldr x1,[sp,#96]
            add x0,x1,x0
            ldr x1,[sp,#64]
            ldr w2,[sp,#52]
            sxtw x2,w2
            bl memcpy
.L_40e210:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_40e24c

            ldrsw x1,[sp,#140]
            ldrsw x0,[sp,#136]
            add x1,x1,x0
            ldrsw x0,[sp,#132]
            add x0,x1,x0
            add x0,x0,#88
            ldr x1,[sp,#96]
            add x0,x1,x0
            ldr x1,[sp,#56]
            ldr w2,[sp,#48]
            sxtw x2,w2
            bl memcpy
.L_40e24c:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_40e260

            ldr x0,[sp,#56]
            bl free
.L_40e260:

            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_40e274

            ldr x0,[sp,#64]
            bl free
.L_40e274:

            ldr x0,[sp,#72]
            bl free

            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#88]
            bl free

            ldr x0,[sp,#40]
            ldr x1,[sp,#96]
            str x1,[x0]
            ldr w0,[sp,#140]
            add w1,w0,#64
            ldr w0,[sp,#136]
            add w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            ldr w0,[sp,#48]
            add w0,w1,w0
            ldp fp,lr,[sp],#144
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_response, . - ntlm_response
.align 3
#-----------------------------------
.globl gen_407_page
.type gen_407_page, @function
#-----------------------------------
gen_407_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e2ec

            adrp x0, .L_41bb68
            add x0,x0, :lo12:.L_41bb68
            str x0,[sp,#24]
.L_40e2ec:

            mov x0,#4096
            bl zmalloc

            str x0,[sp,#40]
            ldr x3,[sp,#24]
            adrp x0, .L_41bb78
            add x2,x0, :lo12:.L_41bb78
            mov x1,#4095
            ldr x0,[sp,#40]
            bl snprintf

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_407_page, . - gen_407_page
.align 2
#-----------------------------------
.globl gen_401_page
.type gen_401_page, @function
#-----------------------------------
gen_401_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_40e348

            adrp x0, .L_41bb68
            add x0,x0, :lo12:.L_41bb68
            str x0,[sp,#40]
.L_40e348:

            mov x0,#4096
            bl zmalloc

            str x0,[sp,#56]
            ldr w5,[sp,#28]
            ldr x4,[sp,#32]
            ldr x3,[sp,#40]
            adrp x0, .L_41bc68
            add x2,x0, :lo12:.L_41bc68
            mov x1,#4095
            ldr x0,[sp,#56]
            bl snprintf

            ldr x0,[sp,#56]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_401_page, . - gen_401_page
.align 4
#-----------------------------------
.globl gen_denied_page
.type gen_denied_page, @function
#-----------------------------------
gen_denied_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e3a4

            adrp x0, .L_41bd58
            add x0,x0, :lo12:.L_41bd58
            str x0,[sp,#24]
.L_40e3a4:

            mov x0,#4096
            bl zmalloc

            str x0,[sp,#40]
            ldr x3,[sp,#24]
            adrp x0, .L_41bd60
            add x2,x0, :lo12:.L_41bd60
            mov x1,#4095
            ldr x0,[sp,#40]
            bl snprintf

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_denied_page, . - gen_denied_page
.align 2
#-----------------------------------
.globl gen_502_page
.type gen_502_page, @function
#-----------------------------------
gen_502_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e3fc

            adrp x0, .L_41bb68
            add x0,x0, :lo12:.L_41bb68
            str x0,[sp,#24]
.L_40e3fc:

            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_40e414

            adrp x0, .L_41be10
            add x0,x0, :lo12:.L_41be10
            str x0,[sp,#16]
.L_40e414:

            mov x0,#4096
            bl zmalloc

            str x0,[sp,#40]
            ldr x5,[sp,#16]
            ldr x4,[sp,#16]
            ldr x3,[sp,#24]
            adrp x0, .L_41be20
            add x2,x0, :lo12:.L_41be20
            mov x1,#4095
            ldr x0,[sp,#40]
            bl snprintf

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_502_page, . - gen_502_page
.align 2
#-----------------------------------
.globl proxylist_add
.type proxylist_add, @function
#-----------------------------------
proxylist_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#40]
            str x0,[sp,#56]
            mov x0,#24
            bl malloc

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            ldr x1,[sp,#32]
            str x1,[x0]
            ldr x0,[sp,#48]
            ldr x1,[sp,#24]
            str x1,[x0,#8]
            ldr x0,[sp,#48]
            str xzr,[x0,#16]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_40e4b4

            ldr x0,[sp,#48]
            b .L_40e4d4
.L_40e4a8:

            ldr x0,[sp,#56]
            ldr x0,[x0,#16]
            str x0,[sp,#56]
.L_40e4b4:

            ldr x0,[sp,#56]
            ldr x0,[x0,#16]
            cmp x0,#0
            b.ne .L_40e4a8

            ldr x0,[sp,#56]
            ldr x1,[sp,#48]
            str x1,[x0,#16]
            ldr x0,[sp,#40]
.L_40e4d4:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxylist_add, . - proxylist_add
.align 2
#-----------------------------------
.globl proxylist_get
.type proxylist_get, @function
#-----------------------------------
proxylist_get:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            b .L_40e514
.L_40e4f4:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp]
            cmp x1,x0
            b.eq .L_40e524

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#24]
.L_40e514:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e4f4

            b .L_40e528
.L_40e524:

            nop
            nop
            nop
            nop
.L_40e528:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_40e540

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            b .L_40e544
.L_40e540:

            mov x0,#0
.L_40e544:

            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxylist_get, . - proxylist_get
.align 2
#-----------------------------------
.globl proxylist_get_next
.type proxylist_get_next, @function
#-----------------------------------
proxylist_get_next:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            b .L_40e584
.L_40e564:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp]
            cmp x1,x0
            b.eq .L_40e594

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#24]
.L_40e584:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e564

            b .L_40e598
.L_40e594:

            nop
            nop
            nop
            nop
.L_40e598:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_40e5c0

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            cmp x0,#0
            b.eq .L_40e5c0

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            b .L_40e5c4
.L_40e5c0:

            ldr x0,[sp,#8]
.L_40e5c4:

            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxylist_get_next, . - proxylist_get_next
.align 2
#-----------------------------------
.globl proxylist_dump
.type proxylist_dump, @function
#-----------------------------------
proxylist_dump:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_40e650
.L_40e5e4:

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40e614

            ldr x0,[sp,#40]
            ldr x0,[x0]
            mov x1,x0
            adrp x0, .L_41bec8
            add x0,x0, :lo12:.L_41bec8
            bl printf

            b .L_40e644
.L_40e614:

            ldr x0,[sp,#40]
            ldr x1,[x0]
            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            add x2,x0,#4
            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            ldr w0,[x0,#68]
            mov w3,w0
            adrp x0, .L_41bee8
            add x0,x0, :lo12:.L_41bee8
            bl printf
.L_40e644:

            ldr x0,[sp,#40]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
.L_40e650:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_40e5e4

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxylist_dump, . - proxylist_dump
.align 2
#-----------------------------------
.globl proxylist_free
.type proxylist_free, @function
#-----------------------------------
proxylist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            b .L_40e6c8
.L_40e680:

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_40e6b8

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            str x0,[sp,#32]
            ldr x0,[sp,#32]
            ldr x0,[x0,#392]
            bl freeaddrinfo

            ldr x0,[sp,#32]
            bl free
.L_40e6b8:

            ldr x0,[sp,#24]
            bl free

            ldr x0,[sp,#40]
            str x0,[sp,#24]
.L_40e6c8:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e680

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxylist_free, . - proxylist_free
.align 2
#-----------------------------------
.globl parent_add
.type parent_add, @function
#-----------------------------------
parent_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            ldr x0,[sp,#24]
            bl strdup

            str x0,[sp,#64]
            mov w1,#58
            ldr x0,[sp,#64]
            bl strrchr

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_40e728

            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_40e7fc
.L_40e728:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_40e744

            ldr x1,[sp,#56]
            ldr x0,[sp,#64]
            sub x0,x1,x0
            b .L_40e74c
.L_40e744:

            ldr x0,[sp,#64]
            bl strlen
.L_40e74c:

            str w0,[sp,#52]
            ldr x0,[sp,#64]
            ldrb w0,[x0]
            cmp w0,#91
            b.ne .L_40e79c

            ldrsw x0,[sp,#52]
            sub x0,x0,#1
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#93
            b.ne .L_40e79c

            ldr w0,[sp,#52]
            sub w0,w0,#2
            mov w2,w0
            mov w1,#1
            ldr x0,[sp,#64]
            bl substr

            str x0,[sp,#72]
            b .L_40e7b0
.L_40e79c:

            ldr w2,[sp,#52]
            mov w1,#0
            ldr x0,[sp,#64]
            bl substr

            str x0,[sp,#72]
.L_40e7b0:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_40e7d4

            ldrsw x0,[sp,#52]
            add x0,x0,#1
            ldr x1,[sp,#64]
            add x0,x1,x0
            bl atoi

            str w0,[sp,#20]
.L_40e7d4:

            ldr w0,[sp,#20]
            cmp w0,#0
            b.ne .L_40e818

            ldr x2,[sp,#64]
            adrp x0, .L_41bf08
            add x1,x0, :lo12:.L_41bf08
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40e7fc:

            ldr x2,[sp,#64]
            adrp x0, .L_41bf30
            add x1,x0, :lo12:.L_41bf30
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40e818:

            nop
            nop
            nop
            nop
            mov x0,#408
            bl zmalloc

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            mov w1,#1
            str w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#4
            mov x2,#64
            ldr x1,[sp,#72]
            bl strlcpy

            ldr x0,[sp,#40]
            ldr w1,[sp,#20]
            str w1,[x0,#68]
            ldr x0,[sp,#40]
            str wzr,[x0,#400]
            ldr x0,[sp,#40]
            str xzr,[x0,#392]
            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x3,[x0]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            str w1,[x0]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            sxtw x0,w0
            ldr x2,[sp,#40]
            mov x1,x0
            mov x0,x3
            bl proxylist_add

            mov x1,x0
            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            str x1,[x0]
            ldr x0,[sp,#64]
            bl free

            ldr x0,[sp,#72]
            bl free

            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size parent_add, . - parent_add
.align 4
#-----------------------------------
.globl parent_available
.type parent_available, @function
#-----------------------------------
parent_available:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            cmp w0,#0
            cset w0,gt
            and w0,w0,#255
            ret 
.cfi_endproc 
.size parent_available, . - parent_available
.align 2
#-----------------------------------
.globl parent_free
.type parent_free, @function
#-----------------------------------
parent_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, pac_list
            add x0,x0, :lo12:pac_list
            ldr x0,[x0]
            bl paclist_free

            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x0,[x0]
            mov w1,#1
            bl proxylist_free

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size parent_free, . - parent_free
.align 2
#-----------------------------------
.globl paclist_create
.type paclist_create, @function
#-----------------------------------
paclist_create:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#24]
            str xzr,[sp,#120]
            str wzr,[sp,#116]
            str xzr,[sp,#40]
            str xzr,[sp,#80]
            str xzr,[sp,#32]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40e968

            mov x0,#0
            b .L_40ed54
.L_40e968:

            ldr x0,[sp,#24]
            bl strdup

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            str x0,[sp,#40]
            add x2,sp,#40
            adrp x0, .L_41bf58
            add x1,x0, :lo12:.L_41bf58
            mov x0,x2
            bl strsep

            str x0,[sp,#32]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ecd0

            adrp x0, .L_41bf60
            add x0,x0, :lo12:.L_41bf60
            bl puts

            b .L_40ecd0
.L_40e9b8:

            str wzr,[sp,#112]
            str xzr,[sp,#64]
            str xzr,[sp,#104]
            str xzr,[sp,#96]
            ldr x0,[sp,#32]
            ldrb w0,[x0]
            cmp w0,#32
            b.ne .L_40e9e4

            ldr x0,[sp,#32]
            add x0,x0,#1
            str x0,[sp,#32]
.L_40e9e4:

            add x2,sp,#32
            adrp x0, .L_41bf78
            add x1,x0, :lo12:.L_41bf78
            mov x0,x2
            bl strsep

            str x0,[sp,#64]
            adrp x0, .L_41bf80
            add x1,x0, :lo12:.L_41bf80
            ldr x0,[sp,#64]
            bl strcmp

            cmp w0,#0
            b.ne .L_40ea3c

            mov w0,#1
            str w0,[sp,#112]
            add x2,sp,#32
            adrp x0, .L_41bf88
            add x1,x0, :lo12:.L_41bf88
            mov x0,x2
            bl strsep

            str x0,[sp,#104]
            ldr x0,[sp,#32]
            str x0,[sp,#96]
.L_40ea3c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ea88

            ldr w0,[sp,#112]
            cmp w0,#0
            b.eq .L_40ea78

            ldr x3,[sp,#96]
            ldr x2,[sp,#104]
            ldr x1,[sp,#64]
            adrp x0, .L_41bf90
            add x0,x0, :lo12:.L_41bf90
            bl printf

            b .L_40ea88
.L_40ea78:

            ldr x1,[sp,#64]
            adrp x0, .L_41bfa0
            add x0,x0, :lo12:.L_41bfa0
            bl printf
.L_40ea88:

            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x0,[x0]
            str x0,[sp,#88]
            ldr w0,[sp,#112]
            cmp w0,#1
            b.ne .L_40eba8

            ldr x0,[sp,#96]
            bl atoi

            str w0,[sp,#52]
            b .L_40eac0
.L_40eab4:

            ldr x0,[sp,#88]
            ldr x0,[x0,#16]
            str x0,[sp,#88]
.L_40eac0:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_40eb18

            ldr x0,[sp,#88]
            ldr x0,[x0,#8]
            ldr w0,[x0]
            ldr w1,[sp,#112]
            cmp w1,w0
            b.ne .L_40eab4

            ldr x0,[sp,#88]
            ldr x0,[x0,#8]
            ldr w0,[x0,#68]
            ldr w1,[sp,#52]
            cmp w1,w0
            b.ne .L_40eab4

            ldr x0,[sp,#88]
            ldr x0,[x0,#8]
            add x0,x0,#4
            ldr x1,[sp,#104]
            bl strcmp

            cmp w0,#0
            b.ne .L_40eab4
.L_40eb18:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.ne .L_40ec80

            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_lock

            ldr w1,[sp,#52]
            ldr x0,[sp,#104]
            bl parent_add

            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x2,[x0]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            sxtw x0,w0
            mov x1,x0
            mov x0,x2
            bl proxylist_get

            str x0,[sp,#56]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            sxtw x0,w0
            ldr x2,[sp,#56]
            mov x1,x0
            ldr x0,[sp,#120]
            bl proxylist_add

            str x0,[sp,#120]
            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_unlock

            b .L_40ec80
.L_40eb9c:

            ldr x0,[sp,#88]
            ldr x0,[x0,#16]
            str x0,[sp,#88]
.L_40eba8:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_40ebcc

            ldr x0,[sp,#88]
            ldr x0,[x0,#8]
            ldr w0,[x0]
            ldr w1,[sp,#112]
            cmp w1,w0
            b.ne .L_40eb9c
.L_40ebcc:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.ne .L_40ec80

            mov x0,#408
            bl zmalloc

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            str wzr,[x0]
            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_lock

            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            str w1,[x0]
            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x3,[x0]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            sxtw x0,w0
            ldr x2,[sp,#56]
            mov x1,x0
            mov x0,x3
            bl proxylist_add

            mov x1,x0
            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            str x1,[x0]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            sxtw x0,w0
            ldr x2,[sp,#56]
            mov x1,x0
            ldr x0,[sp,#120]
            bl proxylist_add

            str x0,[sp,#120]
            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_unlock
.L_40ec80:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_40ecac

            ldr x0,[sp,#88]
            ldr x1,[x0]
            ldr x0,[sp,#88]
            ldr x0,[x0,#8]
            mov x2,x0
            ldr x0,[sp,#120]
            bl proxylist_add

            str x0,[sp,#120]
.L_40ecac:

            ldr w0,[sp,#116]
            add w0,w0,#1
            str w0,[sp,#116]
            add x2,sp,#40
            adrp x0, .L_41bf58
            add x1,x0, :lo12:.L_41bf58
            mov x0,x2
            bl strsep

            str x0,[sp,#32]
.L_40ecd0:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_40e9b8

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ed08

            ldr w1,[sp,#116]
            adrp x0, .L_41bfa8
            add x0,x0, :lo12:.L_41bfa8
            bl printf

            ldr x0,[sp,#120]
            bl proxylist_dump
.L_40ed08:

            ldr x0,[sp,#80]
            bl free

            mov x0,#40
            bl malloc

            str x0,[sp,#72]
            ldr x0,[sp,#72]
            ldr x1,[sp,#24]
            str x1,[x0]
            ldr x0,[sp,#72]
            ldr x1,[sp,#120]
            str x1,[x0,#8]
            ldr x0,[sp,#72]
            str xzr,[x0,#16]
            ldr x0,[sp,#72]
            ldr w1,[sp,#116]
            str w1,[x0,#24]
            ldr x0,[sp,#72]
            str xzr,[x0,#32]
            ldr x0,[sp,#72]
.L_40ed54:

            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size paclist_create, . - paclist_create
.align 2
#-----------------------------------
.globl paclist_get
.type paclist_get, @function
#-----------------------------------
paclist_get:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, pac_list
            add x0,x0, :lo12:pac_list
            ldr x0,[x0]
            str x0,[sp,#40]
            b .L_40edd0
.L_40ed7c:

            ldr x0,[sp,#40]
            ldr x0,[x0]
            mov x1,x0
            ldr x0,[sp,#24]
            bl strcmp

            cmp w0,#0
            b.ne .L_40edc4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40edbc

            ldr x1,[sp,#24]
            adrp x0, .L_41bfd0
            add x0,x0, :lo12:.L_41bfd0
            bl printf
.L_40edbc:

            ldr x0,[sp,#40]
            b .L_40ee74
.L_40edc4:

            ldr x0,[sp,#40]
            ldr x0,[x0,#32]
            str x0,[sp,#40]
.L_40edd0:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_40ed7c

            ldr x0,[sp,#24]
            bl paclist_create

            str x0,[sp,#32]
            adrp x0, pac_list
            add x0,x0, :lo12:pac_list
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40ee10

            adrp x0, pac_list
            add x0,x0, :lo12:pac_list
            ldr x1,[sp,#32]
            str x1,[x0]
            b .L_40ee4c
.L_40ee10:

            adrp x0, pac_list
            add x0,x0, :lo12:pac_list
            ldr x0,[x0]
            str x0,[sp,#40]
            b .L_40ee30
.L_40ee24:

            ldr x0,[sp,#40]
            ldr x0,[x0,#32]
            str x0,[sp,#40]
.L_40ee30:

            ldr x0,[sp,#40]
            ldr x0,[x0,#32]
            cmp x0,#0
            b.ne .L_40ee24

            ldr x0,[sp,#40]
            ldr x1,[sp,#32]
            str x1,[x0,#32]
.L_40ee4c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ee70

            ldr x1,[sp,#24]
            adrp x0, .L_41bff0
            add x0,x0, :lo12:.L_41bff0
            bl printf
.L_40ee70:

            ldr x0,[sp,#32]
.L_40ee74:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size paclist_get, . - paclist_get
.align 2
#-----------------------------------
.globl paclist_free
.type paclist_free, @function
#-----------------------------------
paclist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            b .L_40eeb8
.L_40ee8c:

            ldr x0,[sp,#24]
            ldr x0,[x0,#32]
            str x0,[sp,#40]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            mov w1,#0
            bl proxylist_free

            ldr x0,[sp,#24]
            bl free

            ldr x0,[sp,#40]
            str x0,[sp,#24]
.L_40eeb8:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_40ee8c

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size paclist_free, . - paclist_free
.align 2
#-----------------------------------
.globl proxy_connect
.type proxy_connect, @function
#-----------------------------------
proxy_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str wzr,[sp,#112]
            str wzr,[sp,#100]
            str xzr,[sp,#88]
            adrp x0, pac_initialized
            add x0,x0, :lo12:pac_initialized
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ef28

            adrp x0, .L_41c288
            add x3,x0, :lo12:.L_41c288
            mov w2,#442
            adrp x0, .L_41c008
            add x1,x0, :lo12:.L_41c008
            adrp x0, .L_41c018
            add x0,x0, :lo12:.L_41c018
            bl __assert_fail
.L_40ef28:

            adrp x0, parent_list
            add x0,x0, :lo12:parent_list
            ldr x0,[x0]
            str x0,[sp,#80]
            adrp x0, parent_curr
            add x0,x0, :lo12:parent_curr
            ldr x0,[x0]
            str x0,[sp,#120]
            adrp x0, parent_count
            add x0,x0, :lo12:parent_count
            ldr w0,[x0]
            str w0,[sp,#100]
            ldr x0,[sp,#120]
            cmp x0,#0
            b.ne .L_40ef7c

            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_40ef7c

            ldr x0,[sp,#80]
            ldr x0,[x0]
            str x0,[sp,#120]
.L_40ef7c:

            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_lock

            ldr x1,[sp,#120]
            ldr x0,[sp,#80]
            bl proxylist_get

            str x0,[sp,#72]
            ldr x0,[sp,#72]
            cmp x0,#0
            b.eq .L_40f048

            ldr x0,[sp,#72]
            ldr w0,[x0]
            cmp w0,#1
            b.ne .L_40f048

            ldr x0,[sp,#72]
            ldr w0,[x0,#400]
            cmp w0,#0
            b.ne .L_40f048

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40eff0

            ldr x0,[sp,#72]
            add x0,x0,#4
            mov x1,x0
            adrp x0, .L_41c020
            add x0,x0, :lo12:.L_41c020
            bl printf
.L_40eff0:

            ldr x0,[sp,#72]
            add x3,x0,#392
            ldr x0,[sp,#72]
            add x1,x0,#4
            ldr x0,[sp,#72]
            ldr w0,[x0,#68]
            mov w2,w0
            mov x0,x3
            bl so_resolv

            cmp w0,#0
            b.eq .L_40f02c

            ldr x0,[sp,#72]
            mov w1,#1
            str w1,[x0,#400]
            b .L_40f048
.L_40f02c:

            ldr x0,[sp,#72]
            add x0,x0,#4
            mov x2,x0
            adrp x0, .L_41c038
            add x1,x0, :lo12:.L_41c038
            mov w0,#3
            bl syslog
.L_40f048:

            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_unlock

            ldr x0,[sp,#72]
            cmp x0,#0
            b.eq .L_40f078

            ldr x0,[sp,#72]
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f078

            mov w0,#-2
            b .L_40f288
.L_40f078:

            mov w0,#-1
            str w0,[sp,#116]
            ldr x0,[sp,#72]
            cmp x0,#0
            b.eq .L_40f0ac

            ldr x0,[sp,#72]
            ldr w0,[x0,#400]
            cmp w0,#0
            b.eq .L_40f0ac

            ldr x0,[sp,#72]
            ldr x0,[x0,#392]
            bl so_connect

            str w0,[sp,#116]
.L_40f0ac:

            ldr w0,[sp,#116]
            cmp w0,#0
            b.ge .L_40f114

            ldr x1,[sp,#120]
            ldr x0,[sp,#80]
            bl proxylist_get_next

            str x0,[sp,#64]
            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_40f114

            ldr x0,[sp,#64]
            ldr x0,[x0]
            str x0,[sp,#120]
            ldr x0,[sp,#64]
            ldr x0,[x0,#8]
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            add x1,x0,#4
            ldr x0,[sp,#72]
            ldr w0,[x0,#68]
            mov w3,w0
            mov x2,x1
            adrp x0, .L_41c058
            add x1,x0, :lo12:.L_41c058
            mov w0,#3
            bl syslog
.L_40f114:

            ldr w0,[sp,#116]
            cmp w0,#0
            b.ge .L_40f13c

            ldr w0,[sp,#112]
            add w0,w0,#1
            str w0,[sp,#112]
            ldr w1,[sp,#112]
            ldr w0,[sp,#100]
            cmp w1,w0
            b.lt .L_40ef7c
.L_40f13c:

            ldr w0,[sp,#116]
            cmp w0,#0
            b.ge .L_40f168

            ldr w1,[sp,#112]
            ldr w0,[sp,#100]
            cmp w1,w0
            b.lt .L_40f168

            adrp x0, .L_41c080
            add x1,x0, :lo12:.L_41c080
            mov w0,#3
            bl syslog
.L_40f168:

            adrp x0, parent_curr
            add x0,x0, :lo12:parent_curr
            ldr x0,[x0]
            ldr x1,[sp,#120]
            cmp x1,x0
            b.eq .L_40f23c

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_lock

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            str x0,[sp,#104]
            b .L_40f1c0
.L_40f1a0:

            ldr x0,[sp,#104]
            ldr x0,[x0,#16]
            str x0,[sp,#56]
            ldr x0,[sp,#104]
            ldr x0,[x0]
            bl close

            ldr x0,[sp,#56]
            str x0,[sp,#104]
.L_40f1c0:

            ldr x0,[sp,#104]
            cmp x0,#0
            b.ne .L_40f1a0

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            bl plist_free

            adrp x0, connection_mtx
            add x0,x0, :lo12:connection_mtx
            bl pthread_mutex_unlock

            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_lock

            adrp x0, parent_curr
            add x0,x0, :lo12:parent_curr
            ldr x1,[sp,#120]
            str x1,[x0]
            adrp x0, pac_initialized
            add x0,x0, :lo12:pac_initialized
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f230

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_40f230

            ldr x0,[sp,#88]
            ldr x1,[sp,#120]
            str x1,[x0,#16]
.L_40f230:

            adrp x0, parent_mtx
            add x0,x0, :lo12:parent_mtx
            bl pthread_mutex_unlock
.L_40f23c:

            ldr w0,[sp,#116]
            cmp w0,#0
            b.lt .L_40f284

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_40f284

            adrp x0, g_creds
            add x0,x0, :lo12:g_creds
            ldr x1,[x0]
            adrp x0, ntlmbasic
            add x0,x0, :lo12:ntlmbasic
            ldr w0,[x0]
            cmp w0,#0
            cset w0,eq
            and w0,w0,#255
            mov w2,w0
            ldr x0,[sp,#40]
            bl copy_auth
.L_40f284:

            ldr w0,[sp,#116]
.L_40f288:

            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxy_connect, . - proxy_connect
.align 4
#-----------------------------------
.globl proxy_authenticate
.type proxy_authenticate, @function
#-----------------------------------
proxy_authenticate:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -112
            str x0,[sp,#56]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str x3,[sp,#32]
            str wzr,[sp,#124]
            str wzr,[sp,#120]
            mov x0,#4096
            str x0,[sp,#112]
            ldr x0,[sp,#112]
            bl zmalloc

            str x0,[sp,#104]
            ldr x2,[sp,#112]
            adrp x0, .L_41c0a8
            add x1,x0, :lo12:.L_41c0a8
            ldr x0,[sp,#104]
            bl strlcpy

            add x0,sp,#80
            ldr x1,[sp,#32]
            bl ntlm_request

            str w0,[sp,#100]
            ldr w0,[sp,#100]
            cmp w0,#0
            b.eq .L_40f324

            ldr x0,[sp,#104]
            add x4,x0,#5
            ldr x1,[sp,#80]
            ldrsw x2,[sp,#100]
            ldr x0,[sp,#112]
            sub x0,x0,#5
            mov x3,x0
            mov x0,x4
            bl to_base64

            ldr x0,[sp,#80]
            bl free
.L_40f324:

            ldr x0,[sp,#48]
            bl dup_rr_data

            str x0,[sp,#72]
            ldr x0,[sp,#72]
            ldr x4,[x0,#8]
            ldr x19,[sp,#72]
            mov w3,#1
            ldr x2,[sp,#104]
            adrp x0, .L_41c0b0
            add x1,x0, :lo12:.L_41c0b0
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_40f394

            ldr x0,[sp,#48]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f394

            ldr x0,[sp,#48]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_41c0c8
            add x0,x0, :lo12:.L_41c0c8
            bl strcasecmp

            cmp w0,#0
            b.eq .L_40f3a8
.L_40f394:

            ldr x1,[sp,#40]
            ldr x0,[sp,#48]
            bl http_has_body

            cmp x0,#0
            b.eq .L_40f3d0
.L_40f3a8:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f3c8

            adrp x0, .L_41c0d0
            add x0,x0, :lo12:.L_41c0d0
            bl puts
.L_40f3c8:

            mov w0,#1
            str w0,[sp,#124]
.L_40f3d0:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_40f42c

            ldr x0,[sp,#48]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f42c

            ldr x0,[sp,#48]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_41c0c8
            add x0,x0, :lo12:.L_41c0c8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40f42c

            ldr x0,[sp,#72]
            ldr x0,[x0,#40]
            bl free

            ldr x19,[sp,#72]
            adrp x0, .L_41c0f0
            add x0,x0, :lo12:.L_41c0f0
            bl strdup

            str x0,[x19,#40]
.L_40f42c:

            ldr x0,[sp,#72]
            ldr x4,[x0,#8]
            ldr x19,[sp,#72]
            mov w3,#1
            adrp x0, .L_41c0f8
            add x2,x0, :lo12:.L_41c0f8
            adrp x0, .L_41c100
            add x1,x0, :lo12:.L_41c100
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
            ldr x0,[sp,#72]
            ldr x2,[x0,#8]
            ldr x19,[sp,#72]
            adrp x0, .L_41c110
            add x1,x0, :lo12:.L_41c110
            mov x0,x2
            bl hlist_del

            str x0,[x19,#8]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f4cc

            adrp x0, .L_41c128
            add x0,x0, :lo12:.L_41c128
            bl puts

            ldr x0,[sp,#72]
            ldr x1,[x0,#40]
            ldr x0,[sp,#72]
            ldr x2,[x0,#48]
            ldr x0,[sp,#72]
            ldr x0,[x0,#72]
            mov x3,x0
            adrp x0, .L_41c148
            add x0,x0, :lo12:.L_41c148
            bl printf

            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_40f4cc:

            ldr x0,[sp,#56]
            ldr w0,[x0]
            ldr x1,[sp,#72]
            bl headers_send

            cmp w0,#0
            b.ne .L_40f4f4

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f4f4:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f514

            adrp x0, .L_41c158
            add x0,x0, :lo12:.L_41c158
            bl puts
.L_40f514:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_40f530

            add x0,sp,#72
            bl free_rr_data

            ldr x0,[sp,#40]
            str x0,[sp,#72]
.L_40f530:

            ldr x0,[sp,#72]
            bl reset_rr_data

            ldr x0,[sp,#56]
            ldr w0,[x0]
            ldr x1,[sp,#72]
            bl headers_recv

            cmp w0,#0
            b.ne .L_40f560

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f560:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f580

            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_40f580:

            mov w0,#1
            str w0,[sp,#120]
            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_40f730

            ldr x0,[sp,#56]
            ldr w0,[x0]
            ldr x1,[sp,#72]
            bl http_body_drop

            cmp w0,#0
            b.ne .L_40f5c4

            str wzr,[sp,#120]
            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f5c4:

            ldr x0,[sp,#72]
            ldr x2,[x0,#8]
            adrp x0, .L_41c178
            add x1,x0, :lo12:.L_41c178
            mov x0,x2
            bl hlist_get

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            cmp x0,#0
            b.eq .L_40f71c

            ldr x0,[sp,#80]
            bl strlen

            add x0,x0,#6
            bl zmalloc

            str x0,[sp,#88]
            ldr x0,[sp,#80]
            add x0,x0,#5
            mov x1,x0
            ldr x0,[sp,#88]
            bl from_base64

            str w0,[sp,#100]
            ldr w0,[sp,#100]
            cmp w0,#40
            b.le .L_40f6f4

            str xzr,[sp,#80]
            add x0,sp,#80
            ldr x3,[sp,#32]
            ldr w2,[sp,#100]
            ldr x1,[sp,#88]
            bl ntlm_response

            str w0,[sp,#100]
            ldr w0,[sp,#100]
            cmp w0,#0
            b.le .L_40f6c4

            ldr x2,[sp,#112]
            adrp x0, .L_41c0a8
            add x1,x0, :lo12:.L_41c0a8
            ldr x0,[sp,#104]
            bl strlcpy

            ldr x0,[sp,#104]
            add x4,x0,#5
            ldr x1,[sp,#80]
            ldrsw x2,[sp,#100]
            ldr x0,[sp,#112]
            sub x0,x0,#5
            mov x3,x0
            mov x0,x4
            bl to_base64

            ldr x0,[sp,#48]
            ldr x4,[x0,#8]
            mov w3,#1
            ldr x2,[sp,#104]
            adrp x0, .L_41c0b0
            add x1,x0, :lo12:.L_41c0b0
            mov x0,x4
            bl hlist_mod

            mov x1,x0
            ldr x0,[sp,#48]
            str x1,[x0,#8]
            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#88]
            bl free

            b .L_40f7f4
.L_40f6c4:

            adrp x0, .L_41c190
            add x1,x0, :lo12:.L_41c190
            mov w0,#3
            bl syslog

            ldr x0,[sp,#88]
            bl free

            ldr x0,[sp,#80]
            bl free

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f6f4:

            adrp x0, .L_41c1c0
            add x1,x0, :lo12:.L_41c1c0
            mov w0,#3
            bl syslog

            ldr x0,[sp,#88]
            bl free

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f71c:

            adrp x0, .L_41c1e8
            add x1,x0, :lo12:.L_41c1e8
            mov w0,#4
            bl syslog

            b .L_40f7f4
.L_40f730:

            ldr w0,[sp,#124]
            cmp w0,#0
            b.eq .L_40f7f4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f7b0

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_40f798

            ldr x0,[sp,#48]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f798

            ldr x0,[sp,#48]
            ldr x0,[x0,#40]
            mov x1,x0
            adrp x0, .L_41c0c8
            add x0,x0, :lo12:.L_41c0c8
            bl strcasecmp

            cmp w0,#0
            b.ne .L_40f798

            adrp x0, .L_41c220
            add x0,x0, :lo12:.L_41c220
            b .L_40f7a0
.L_40f798:

            adrp x0, .L_41c230
            add x0,x0, :lo12:.L_41c230
.L_40f7a0:

            mov x1,x0
            adrp x0, .L_41c240
            add x0,x0, :lo12:.L_41c240
            bl printf
.L_40f7b0:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_40f7c8

            ldr x0,[sp,#40]
            mov w1,#407
            str w1,[x0,#16]
.L_40f7c8:

            ldr x0,[sp,#56]
            ldr w0,[x0]
            ldr x1,[sp,#72]
            bl http_body_drop

            cmp w0,#0
            b.ne .L_40f7f4

            str wzr,[sp,#120]
            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            b .L_40f878
.L_40f7f4:

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl so_closed

            cmp w0,#0
            b.eq .L_40f874

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f828

            adrp x0, .L_41c268
            add x0,x0, :lo12:.L_41c268
            bl puts
.L_40f828:

            ldr x0,[sp,#56]
            ldr w0,[x0]
            bl close

            ldr x0,[sp,#48]
            ldr x1,[x0,#48]
            ldr x0,[sp,#48]
            ldr x0,[x0,#64]
            mov x2,x0
            ldr x0,[sp,#32]
            bl proxy_connect

            mov w1,w0
            ldr x0,[sp,#56]
            str w1,[x0]
            ldr x0,[sp,#56]
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_40f874

            str wzr,[sp,#120]
            b .L_40f878
.L_40f874:

            nop
            nop
            nop
            nop
.L_40f878:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_40f88c

            add x0,sp,#72
            bl free_rr_data
.L_40f88c:

            ldr x0,[sp,#104]
            bl free

            ldr w0,[sp,#120]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#128
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size proxy_authenticate, . - proxy_authenticate
.align 2
#-----------------------------------
.globl scanner_hook
.type scanner_hook, @function
#-----------------------------------
scanner_hook:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-256]!
.cfi_def_cfa_offset 256
.cfi_offset 29, -256
.cfi_offset 30, -248
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -240
            str x0,[sp,#72]
            str x1,[sp,#64]
            str x2,[sp,#56]
            str w3,[sp,#52]
            str x4,[sp,#40]
            str x5,[sp,#32]
            mov w0,#1
            str w0,[sp,#220]
            str wzr,[sp,#216]
            str wzr,[sp,#212]
            str xzr,[sp,#200]
            str xzr,[sp,#192]
            ldr x0,[sp,#72]
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f964

            ldr x0,[sp,#64]
            ldr w0,[x0,#16]
            cmp w0,#200
            b.ne .L_40f964

            ldr x1,[sp,#64]
            ldr x0,[sp,#72]
            bl http_has_body

            cmn x0,#1
            b.ne .L_40f964

            ldr x0,[sp,#64]
            ldr x3,[x0,#8]
            adrp x0, .L_41c298
            add x2,x0, :lo12:.L_41c298
            adrp x0, .L_41c2a0
            add x1,x0, :lo12:.L_41c2a0
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.ne .L_40f964

            ldr x0,[sp,#64]
            ldr x3,[x0,#8]
            adrp x0, .L_41c2b8
            add x2,x0, :lo12:.L_41c2b8
            adrp x0, .L_41c2c0
            add x1,x0, :lo12:.L_41c2c0
            mov x0,x3
            bl hlist_subcmp

            cmp w0,#0
            b.ne .L_40f96c
.L_40f964:

            mov w0,#3
            b .L_41053c
.L_40f96c:

            ldr x0,[sp,#72]
            ldr x2,[x0,#8]
            adrp x0, .L_41c2d8
            add x1,x0, :lo12:.L_41c2d8
            mov x0,x2
            bl hlist_get

            str x0,[sp,#176]
            ldr x0,[sp,#176]
            cmp x0,#0
            b.eq .L_40fa64

            ldr x0,[sp,#176]
            bl strdup

            bl lowercase

            str x0,[sp,#176]
            adrp x0, scanner_agent_list
            add x0,x0, :lo12:scanner_agent_list
            ldr x0,[x0]
            str x0,[sp,#224]
            b .L_40fa50
.L_40f9b8:

            ldr x0,[sp,#224]
            ldr x0,[x0,#8]
            bl strdup

            bl lowercase

            str x0,[sp,#168]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f9f4

            ldr x2,[sp,#168]
            ldr x1,[sp,#176]
            adrp x0, .L_41c2e8
            add x0,x0, :lo12:.L_41c2e8
            bl printf
.L_40f9f4:

            mov w2,#0
            ldr x1,[sp,#176]
            ldr x0,[sp,#168]
            bl fnmatch

            cmp w0,#0
            b.ne .L_40fa3c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40fa2c

            adrp x0, .L_41c318
            add x0,x0, :lo12:.L_41c318
            bl puts
.L_40fa2c:

            str xzr,[sp,#32]
            ldr x0,[sp,#168]
            bl free

            b .L_40fa5c
.L_40fa3c:

            ldr x0,[sp,#168]
            bl free

            ldr x0,[sp,#224]
            ldr x0,[x0,#16]
            str x0,[sp,#224]
.L_40fa50:

            ldr x0,[sp,#224]
            cmp x0,#0
            b.ne .L_40f9b8
.L_40fa5c:

            ldr x0,[sp,#176]
            bl free
.L_40fa64:

            mov w0,#4096
            str w0,[sp,#244]
            ldrsw x0,[sp,#244]
            bl zmalloc

            str x0,[sp,#248]
            str wzr,[sp,#240]
.L_40fa7c:

            ldr x0,[sp,#40]
            ldr w3,[x0]
            ldrsw x0,[sp,#240]
            ldr x1,[sp,#248]
            add x4,x1,x0
            mov w1,#4095
            ldr w0,[sp,#240]
            sub w0,w1,w0
            sxtw x0,w0
            mov x2,x0
            mov x1,x4
            mov w0,w3
            bl read

            str w0,[sp,#164]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40fae8

            mov w1,#4096
            ldr w0,[sp,#240]
            sub w0,w1,w0
            mov w2,w0
            ldr w1,[sp,#164]
            adrp x0, .L_41c338
            add x0,x0, :lo12:.L_41c338
            bl printf
.L_40fae8:

            ldr w0,[sp,#164]
            cmp w0,#0
            b.le .L_40fb04

            ldr w1,[sp,#240]
            ldr w0,[sp,#164]
            add w0,w1,w0
            str w0,[sp,#240]
.L_40fb04:

            ldr w0,[sp,#164]
            cmp w0,#0
            b.le .L_40fb1c

            ldr w0,[sp,#240]
            cmp w0,#4094
            b.le .L_40fa7c
.L_40fb1c:

            adrp x0, .L_41c358
            add x1,x0, :lo12:.L_41c358
            ldr x0,[sp,#248]
            bl strstr

            cmp x0,#0
            b.eq .L_410454

            adrp x0, .L_41c380
            add x1,x0, :lo12:.L_41c380
            ldr x0,[sp,#248]
            bl strstr

            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_410454

            mov w1,#34
            ldr x0,[sp,#152]
            bl strchr

            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_410454

            ldr x0,[sp,#152]
            add x0,x0,#1
            str x0,[sp,#152]
            ldr x0,[sp,#152]
            bl strlen

            str x0,[sp,#144]
            str wzr,[sp,#236]
            b .L_40fb9c
.L_40fb90:

            ldr w0,[sp,#236]
            add w0,w0,#1
            str w0,[sp,#236]
.L_40fb9c:

            ldrsw x0,[sp,#236]
            ldr x1,[sp,#144]
            cmp x1,x0
            b.le .L_40fbc4

            ldrsw x0,[sp,#236]
            ldr x1,[sp,#152]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#34
            b.ne .L_40fb90
.L_40fbc4:

            ldrsw x0,[sp,#236]
            ldr x1,[sp,#152]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#34
            b.ne .L_410434

            ldr w2,[sp,#236]
            mov w1,#0
            ldr x0,[sp,#152]
            bl substr

            str x0,[sp,#136]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40fc14

            ldr x1,[sp,#136]
            adrp x0, .L_41c398
            add x0,x0, :lo12:.L_41c398
            bl printf
.L_40fc14:

            mov w0,#4096
            str w0,[sp,#100]
            ldr w0,[sp,#100]
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#104]
.L_40fc2c:

            ldr x0,[sp,#40]
            ldr w0,[x0]
            add x2,sp,#100
            add x1,sp,#104
            bl so_recvln

            str w0,[sp,#236]
            ldr x0,[sp,#104]
            bl strlen

            str x0,[sp,#144]
            ldrsw x1,[sp,#240]
            ldr x0,[sp,#144]
            add x1,x1,x0
            ldrsw x0,[sp,#244]
            cmp x1,x0
            b.lt .L_40fc9c

            ldr w0,[sp,#244]
            lsl w0,w0,#1
            str w0,[sp,#244]
            ldrsw x0,[sp,#244]
            mov x1,x0
            ldr x0,[sp,#248]
            bl realloc

            str x0,[sp,#176]
            ldr x0,[sp,#176]
            cmp x0,#0
            b.eq .L_410004

            ldr x0,[sp,#176]
            str x0,[sp,#248]
.L_40fc9c:

            ldr x0,[sp,#104]
            ldrsw x1,[sp,#244]
            mov x2,x1
            mov x1,x0
            ldr x0,[sp,#248]
            bl strlcat

            ldr x0,[sp,#144]
            mov w1,w0
            ldr w0,[sp,#240]
            add w0,w1,w0
            str w0,[sp,#240]
            ldr w0,[sp,#236]
            cmp w0,#0
            b.lt .L_40ffe8

            str wzr,[sp,#188]
            str wzr,[sp,#184]
            ldr x2,[sp,#104]
            adrp x0, .L_41c3b8
            add x1,x0, :lo12:.L_41c3b8
            mov x0,x2
            bl strstr

            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_40fd3c

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#152]
            add x0,x0,#11
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_40fd3c

            mov w0,#1
            str w0,[sp,#188]
            b .L_40fd98
.L_40fd3c:

            ldr x2,[sp,#104]
            adrp x0, .L_41c3c8
            add x1,x0, :lo12:.L_41c3c8
            mov x0,x2
            bl strstr

            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_40fd98

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#152]
            add x0,x0,#17
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.eq .L_40fd98

            mov w0,#1
            str w0,[sp,#184]
.L_40fd98:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.ne .L_40fdb0

            ldr w0,[sp,#184]
            cmp w0,#0
            b.eq .L_40ffe8
.L_40fdb0:

            ldr w0,[sp,#184]
            cmp w0,#0
            b.eq .L_40fdc4

            mov w0,#1
            str w0,[sp,#216]
.L_40fdc4:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40fdec

            ldr x0,[sp,#104]
            mov x1,x0
            adrp x0, .L_41c3e0
            add x0,x0, :lo12:.L_41c3e0
            bl printf
.L_40fdec:

            ldr x2,[sp,#104]
            adrp x0, .L_41c3f8
            add x1,x0, :lo12:.L_41c3f8
            mov x0,x2
            bl strstr

            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_40ff0c

            ldr x0,[sp,#152]
            add x0,x0,#16
            bl atol

            str x0,[sp,#192]
            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40fe7c

            ldr x0,[sp,#192]
            cmp x0,#0
            b.le .L_40fe6c

            ldr x0,[sp,#192]
            add x1,x0,#1023
            cmp x0,#0
            csel x0,x1,x0,lt
            asr x0,x0,#10
            ldr x2,[sp,#32]
            mov x1,x0
            adrp x0, .L_41c410
            add x0,x0, :lo12:.L_41c410
            bl printf

            b .L_40fe7c
.L_40fe6c:

            adrp x0, .L_41c448
            add x0,x0, :lo12:.L_41c448
            bl puts

            b .L_410018
.L_40fe7c:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_40feb8

            ldr x0,[sp,#32]
            cmp x0,#1
            b.eq .L_410018

            ldr x0,[sp,#192]
            add x1,x0,#1023
            cmp x0,#0
            csel x0,x1,x0,lt
            asr x0,x0,#10
            mov x1,x0
            ldr x0,[sp,#32]
            cmp x0,x1
            b.lt .L_410018
.L_40feb8:

            mov w0,#1
            str w0,[sp,#212]
            mov x0,#50
            bl zmalloc

            str x0,[sp,#176]
            ldr x0,[sp,#72]
            ldr x0,[x0,#72]
            mov x3,x0
            adrp x0, .L_41c478
            add x2,x0, :lo12:.L_41c478
            mov x1,#50
            ldr x0,[sp,#176]
            bl snprintf

            ldr x0,[sp,#176]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#176]
            ldr w0,[sp,#52]
            bl write_wrapper

            ldr x0,[sp,#176]
            bl free
.L_40ff0c:

            ldr w0,[sp,#212]
            cmp w0,#0
            b.ne .L_40ff3c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_41000c

            adrp x0, .L_41c488
            add x0,x0, :lo12:.L_41c488
            bl puts

            b .L_41000c
.L_40ff3c:

            ldr w0,[sp,#216]
            cmp w0,#0
            b.ne .L_40ffa0

            mov x0,#50
            bl zmalloc

            str x0,[sp,#176]
            ldr x0,[sp,#104]
            add x0,x0,#12
            bl atol

            str x0,[sp,#200]
            ldr x4,[sp,#192]
            ldr x3,[sp,#200]
            adrp x0, .L_41c4c8
            add x2,x0, :lo12:.L_41c4c8
            mov x1,#50
            ldr x0,[sp,#176]
            bl snprintf

            ldr x0,[sp,#176]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#176]
            ldr w0,[sp,#52]
            bl write_wrapper

            ldr x0,[sp,#176]
            bl free
.L_40ffa0:

            ldr x0,[sp,#192]
            cmp x0,#0
            b.ne .L_40ffe8

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_40ffe8

            ldr x0,[sp,#32]
            cmp x0,#1
            b.eq .L_40ffe8

            ldr x0,[sp,#200]
            add x1,x0,#1023
            cmp x0,#0
            csel x0,x1,x0,lt
            asr x0,x0,#10
            mov x1,x0
            ldr x0,[sp,#32]
            cmp x0,x1
            b.lt .L_410014
.L_40ffe8:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.le .L_410018

            ldr w0,[sp,#216]
            cmp w0,#0
            b.eq .L_40fc2c

            b .L_410018
.L_410004:

            nop
            nop
            nop
            nop
            b .L_410018
.L_41000c:

            nop
            nop
            nop
            nop
            b .L_410018
.L_410014:

            nop
            nop
            nop
            nop
.L_410018:

            ldr w0,[sp,#236]
            cmp w0,#0
            b.lt .L_410420

            ldr w0,[sp,#216]
            cmp w0,#0
            b.eq .L_410420

            ldr x2,[sp,#104]
            adrp x0, .L_41c4e8
            add x1,x0, :lo12:.L_41c4e8
            mov x0,x2
            bl strstr

            add x0,x0,#3
            str x0,[sp,#152]
            ldr x0,[sp,#152]
            cmp x0,#0
            b.eq .L_410420

            mov w1,#34
            ldr x0,[sp,#152]
            bl strchr

            mov x1,x0
            ldr x0,[sp,#152]
            sub x0,x1,x0
            str x0,[sp,#144]
            ldr x0,[sp,#144]
            cmp x0,#0
            b.le .L_410420

            ldr x0,[sp,#144]
            mov w2,w0
            mov w1,#0
            ldr x0,[sp,#152]
            bl substr

            str x0,[sp,#176]
            ldr x0,[sp,#176]
            bl urlencode

            str x0,[sp,#128]
            ldr x0,[sp,#176]
            bl free

            ldr x0,[sp,#72]
            ldr x0,[x0,#48]
            bl urlencode

            str x0,[sp,#120]
            mov x0,#4096
            bl zmalloc

            str x0,[sp,#112]
            ldr x7,[sp,#120]
            ldr x6,[sp,#136]
            ldr x5,[sp,#136]
            ldr x4,[sp,#128]
            ldr x3,[sp,#136]
            adrp x0, .L_41c4f0
            add x2,x0, :lo12:.L_41c4f0
            mov x1,#4095
            ldr x0,[sp,#112]
            bl snprintf

            ldr x0,[sp,#128]
            bl free

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410124

            ldr x0,[sp,#72]
            ldr x0,[x0,#48]
            mov x1,x0
            adrp x0, .L_41c518
            add x0,x0, :lo12:.L_41c518
            bl printf
.L_410124:

            mov x0,#50
            bl zmalloc

            str x0,[sp,#176]
            ldr x0,[sp,#112]
            bl strlen

            mov w3,w0
            adrp x0, .L_41c548
            add x2,x0, :lo12:.L_41c548
            mov x1,#50
            ldr x0,[sp,#176]
            bl snprintf

            bl new_rr_data

            str x0,[sp,#80]
            ldr x0,[sp,#72]
            bl dup_rr_data

            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldr x0,[x0,#40]
            bl free

            ldr x19,[sp,#88]
            adrp x0, .L_41c550
            add x0,x0, :lo12:.L_41c550
            bl strdup

            str x0,[x19,#40]
            ldr x0,[sp,#88]
            ldr x4,[x0,#8]
            ldr x0,[sp,#72]
            ldr x0,[x0,#48]
            mov w3,#1
            mov x2,x0
            adrp x0, .L_41c558
            add x1,x0, :lo12:.L_41c558
            mov x0,x4
            bl hlist_mod

            ldr x0,[sp,#88]
            ldr x4,[x0,#8]
            mov w3,#1
            adrp x0, .L_41c560
            add x2,x0, :lo12:.L_41c560
            adrp x0, .L_41c588
            add x1,x0, :lo12:.L_41c588
            mov x0,x4
            bl hlist_mod

            ldr x0,[sp,#88]
            ldr x4,[x0,#8]
            mov w3,#1
            ldr x2,[sp,#176]
            adrp x0, .L_41c598
            add x1,x0, :lo12:.L_41c598
            mov x0,x4
            bl hlist_mod

            ldr x0,[sp,#176]
            bl free

            ldr x0,[sp,#88]
            ldr x1,[x0,#48]
            ldr x0,[sp,#88]
            ldr x0,[x0,#64]
            mov x2,x0
            ldr x0,[sp,#56]
            bl proxy_connect

            str w0,[sp,#96]
            ldr x1,[sp,#88]
            ldr x2,[sp,#80]
            add x0,sp,#96
            ldr x3,[sp,#56]
            bl proxy_authenticate

            sxtw x0,w0
            str x0,[sp,#144]
            ldr x0,[sp,#144]
            cmp x0,#0
            b.eq .L_410274

            ldr x0,[sp,#80]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.ne .L_410274

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4102a0

            adrp x0, .L_41c5a8
            add x0,x0, :lo12:.L_41c5a8
            bl puts

            b .L_4102a0
.L_410274:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410294

            adrp x0, .L_41c5e0
            add x0,x0, :lo12:.L_41c5e0
            bl puts
.L_410294:

            ldr w0,[sp,#96]
            bl close

            str wzr,[sp,#96]
.L_4102a0:

            ldr x0,[sp,#80]
            bl reset_rr_data

            ldr w0,[sp,#96]
            cmp w0,#0
            b.eq .L_4103e0

            ldr w0,[sp,#96]
            ldr x1,[sp,#88]
            bl headers_send

            cmp w0,#0
            b.eq .L_4103e0

            ldr w19,[sp,#96]
            ldr x0,[sp,#112]
            bl strlen

            mov x2,x0
            ldr x1,[sp,#112]
            mov w0,w19
            bl write_wrapper

            cmp x0,#0
            b.eq .L_4103e0

            ldr w0,[sp,#96]
            ldr x1,[sp,#80]
            bl headers_recv

            cmp w0,#0
            b.eq .L_4103e0

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410320

            ldr x0,[sp,#80]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_410320:

            ldr x0,[sp,#192]
            cmp x0,#0
            b.ne .L_410338

            ldr x0,[sp,#200]
            cmp x0,#0
            b.eq .L_41039c
.L_410338:

            mov x0,#20
            bl zmalloc

            str x0,[sp,#176]
            ldr x0,[sp,#192]
            cmp x0,#0
            b.eq .L_410358

            ldr x0,[sp,#192]
            b .L_41035c
.L_410358:

            ldr x0,[sp,#200]
.L_41035c:

            mov x3,x0
            adrp x0, .L_41c610
            add x2,x0, :lo12:.L_41c610
            mov x1,#20
            ldr x0,[sp,#176]
            bl snprintf

            ldr x0,[sp,#80]
            ldr x4,[x0,#8]
            ldr x19,[sp,#80]
            mov w3,#1
            ldr x2,[sp,#176]
            adrp x0, .L_41c598
            add x1,x0, :lo12:.L_41c598
            mov x0,x4
            bl hlist_mod

            str x0,[x19,#8]
.L_41039c:

            ldr x0,[sp,#80]
            ldr w1,[sp,#212]
            str w1,[x0,#20]
            ldr x0,[sp,#80]
            mov x1,x0
            ldr x0,[sp,#64]
            bl copy_rr_data

            ldr x0,[sp,#40]
            ldr w0,[x0]
            bl close

            ldr w1,[sp,#96]
            ldr x0,[sp,#40]
            str w1,[x0]
            str wzr,[sp,#240]
            mov w0,#3
            str w0,[sp,#220]
            b .L_410400
.L_4103e0:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410400

            adrp x0, .L_41c618
            add x0,x0, :lo12:.L_41c618
            bl puts
.L_410400:

            add x0,sp,#88
            bl free_rr_data

            add x0,sp,#80
            bl free_rr_data

            ldr x0,[sp,#112]
            bl free

            ldr x0,[sp,#120]
            bl free
.L_410420:

            ldr x0,[sp,#104]
            bl free

            ldr x0,[sp,#136]
            bl free

            b .L_410454
.L_410434:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410454

            adrp x0, .L_41c640
            add x0,x0, :lo12:.L_41c640
            bl puts
.L_410454:

            ldr w0,[sp,#240]
            cmp w0,#0
            b.eq .L_41050c

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410490

            ldr w1,[sp,#240]
            adrp x0, .L_41c660
            add x0,x0, :lo12:.L_41c660
            bl printf

            ldr x0,[sp,#64]
            ldr x0,[x0,#8]
            bl hlist_dump
.L_410490:

            ldr x1,[sp,#64]
            ldr w0,[sp,#52]
            bl headers_send

            cmp w0,#0
            b.ne .L_4104d4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4104c4

            adrp x0, .L_41c690
            add x0,x0, :lo12:.L_41c690
            bl puts
.L_4104c4:

            ldr x0,[sp,#248]
            bl free

            mov w0,#32768
            b .L_41053c
.L_4104d4:

            ldrsw x0,[sp,#240]
            mov x2,x0
            ldr x1,[sp,#248]
            ldr w0,[sp,#52]
            bl write_wrapper

            str w0,[sp,#164]
            ldr w0,[sp,#164]
            cmp w0,#0
            b.le .L_410504

            mov w0,#2
            str w0,[sp,#220]
            b .L_41050c
.L_410504:

            mov w0,#32768
            str w0,[sp,#220]
.L_41050c:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410530

            ldr w1,[sp,#220]
            adrp x0, .L_41c6b8
            add x0,x0, :lo12:.L_41c6b8
            bl printf
.L_410530:

            ldr x0,[sp,#248]
            bl free

            ldr w0,[sp,#220]
.L_41053c:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#256
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size scanner_hook, . - scanner_hook
.align 3
#-----------------------------------
.globl so_resolv
.type so_resolv, @function
#-----------------------------------
so_resolv:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            add x0,sp,#112
            mov x2,#48
            mov w1,#0
            bl memset

            mov w0,#1
            str w0,[sp,#120]
            add x4,sp,#104
            ldr w3,[sp,#28]
            adrp x0, .L_41c6d8
            add x2,x0, :lo12:.L_41c6d8
            mov x1,#6
            mov x0,x4
            bl snprintf

            add x1,sp,#112
            add x0,sp,#104
            ldr x3,[sp,#40]
            mov x2,x1
            mov x1,x0
            ldr x0,[sp,#32]
            bl getaddrinfo

            str w0,[sp,#164]
            ldr w0,[sp,#164]
            cmp w0,#0
            b.eq .L_4105f8

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4105f0

            ldr w0,[sp,#164]
            bl gai_strerror

            ldr w3,[sp,#164]
            mov x2,x0
            ldr x1,[sp,#32]
            adrp x0, .L_41c6e0
            add x0,x0, :lo12:.L_41c6e0
            bl printf
.L_4105f0:

            mov w0,#0
            b .L_4106c8
.L_4105f8:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4106c4

            add x0,sp,#56
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x1,[sp,#32]
            adrp x0, .L_41c700
            add x0,x0, :lo12:.L_41c700
            bl printf

            ldr x0,[sp,#40]
            ldr x0,[x0]
            str x0,[sp,#168]
            b .L_4106b8
.L_410640:

            ldr x0,[sp,#168]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#168]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_410674

            ldr x0,[sp,#168]
            ldr x0,[x0,#24]
            add x0,x0,#4
            b .L_410680
.L_410674:

            ldr x0,[sp,#168]
            ldr x0,[x0,#24]
            add x0,x0,#8
.L_410680:

            add x1,sp,#56
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            add x0,sp,#56
            mov x1,x0
            adrp x0, .L_41c710
            add x0,x0, :lo12:.L_41c710
            bl printf

            ldr x0,[sp,#168]
            ldr x0,[x0,#40]
            str x0,[sp,#168]
.L_4106b8:

            ldr x0,[sp,#168]
            cmp x0,#0
            b.ne .L_410640
.L_4106c4:

            mov w0,#1
.L_4106c8:

            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_resolv, . - so_resolv
.align 4
#-----------------------------------
.globl so_resolv_wildcard
.type so_resolv_wildcard, @function
#-----------------------------------
so_resolv_wildcard:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            str w2,[sp,#16]
            add x4,sp,#40
            ldr w3,[sp,#20]
            adrp x0, .L_41c6d8
            add x2,x0, :lo12:.L_41c6d8
            mov x1,#6
            mov x0,x4
            bl snprintf

            add x0,sp,#48
            mov x2,#48
            mov w1,#0
            bl memset

            mov w0,#1
            str w0,[sp,#56]
            ldr w0,[sp,#16]
            cmp w0,#0
            b.eq .L_41072c

            mov w0,#1
            str w0,[sp,#48]
.L_41072c:

            add x1,sp,#48
            add x0,sp,#40
            ldr x3,[sp,#24]
            mov x2,x1
            mov x1,x0
            mov x0,#0
            bl getaddrinfo

            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_resolv_wildcard, . - so_resolv_wildcard
.align 4
#-----------------------------------
.globl so_connect
.type so_connect, @function
#-----------------------------------
so_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            str x0,[sp,#24]
            mov w0,#-1
            str w0,[sp,#108]
            add x0,sp,#32
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            ldr x0,[sp,#24]
            str x0,[sp,#96]
            b .L_4109e4
.L_410784:

            ldr x0,[sp,#96]
            ldr w0,[x0,#4]
            mov w2,#0
            mov w1,#1
            bl socket

            str w0,[sp,#108]
            ldr w0,[sp,#108]
            cmp w0,#0
            b.ge .L_4107e0

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4107d8

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41c720
            add x0,x0, :lo12:.L_41c720
            bl printf
.L_4107d8:

            mov w0,#-1
            b .L_4109fc
.L_4107e0:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4108a8

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_410828

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            add x0,x0,#4
            b .L_410834
.L_410828:

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            add x0,x0,#8
.L_410834:

            add x1,sp,#32
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_410870

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            ldrh w0,[x0,#2]
            b .L_41087c
.L_410870:

            ldr x0,[sp,#96]
            ldr x0,[x0,#24]
            ldrh w0,[x0,#2]
.L_41087c:

            strh w0,[sp,#94]
            ldrh w0,[sp,#94]
            bl ntohs

            and w0,w0,#65535
            mov w1,w0
            add x0,sp,#32
            mov w2,w1
            mov x1,x0
            adrp x0, .L_41c738
            add x0,x0, :lo12:.L_41c738
            bl printf
.L_4108a8:

            mov w2,#0
            mov w1,#3
            ldr w0,[sp,#108]
            bl fcntl

            str w0,[sp,#88]
            ldr w0,[sp,#88]
            cmp w0,#0
            b.ge .L_410904

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4108f8

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41c750
            add x0,x0, :lo12:.L_41c750
            bl printf
.L_4108f8:

            ldr w0,[sp,#108]
            bl close

            b .L_4109d8
.L_410904:

            ldr x0,[sp,#96]
            ldr x1,[x0,#24]
            ldr x0,[sp,#96]
            ldr w0,[x0,#16]
            mov w2,w0
            ldr w0,[sp,#108]
            bl connect

            str w0,[sp,#84]
            ldr w0,[sp,#84]
            cmp w0,#0
            b.ge .L_410974

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410960

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41c770
            add x0,x0, :lo12:.L_41c770
            bl printf
.L_410960:

            ldr w0,[sp,#108]
            bl close

            mov w0,#-1
            str w0,[sp,#108]
            b .L_4109d8
.L_410974:

            ldr w0,[sp,#88]
            and w0,w0,#4294965247
            mov w2,w0
            mov w1,#4
            ldr w0,[sp,#108]
            bl fcntl

            cmp w0,#0
            b.ge .L_4109f4

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4109c4

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41c780
            add x0,x0, :lo12:.L_41c780
            bl printf
.L_4109c4:

            ldr w0,[sp,#108]
            bl close

            mov w0,#-1
            str w0,[sp,#108]
            nop
            nop
            nop
            nop
.L_4109d8:

            ldr x0,[sp,#96]
            ldr x0,[x0,#40]
            str x0,[sp,#96]
.L_4109e4:

            ldr x0,[sp,#96]
            cmp x0,#0
            b.ne .L_410784

            b .L_4109f8
.L_4109f4:

            nop
            nop
            nop
            nop
.L_4109f8:

            ldr w0,[sp,#108]
.L_4109fc:

            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_connect, . - so_connect
.align 2
#-----------------------------------
.globl so_listen
.type so_listen, @function
#-----------------------------------
so_listen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -128
            str x0,[sp,#56]
            str x1,[sp,#48]
            str x2,[sp,#40]
            add x0,sp,#72
            movi v31.4s,#0
            str q31,[x0]
            str q31,[x0,#16]
            stur q31,[x0,#30]
            str wzr,[sp,#132]
            ldr x0,[sp,#48]
            str x0,[sp,#136]
            b .L_410cc8
.L_410a40:

            ldr x0,[sp,#136]
            ldr w0,[x0,#4]
            mov w2,#0
            mov w1,#1
            bl socket

            str w0,[sp,#128]
            ldr w0,[sp,#128]
            cmp w0,#0
            b.ge .L_410aa0

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410a94

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41c7a0
            add x0,x0, :lo12:.L_41c7a0
            bl printf
.L_410a94:

            ldr w0,[sp,#128]
            bl close

            b .L_410cbc
.L_410aa0:

            mov w0,#1
            str w0,[sp,#120]
            add x0,sp,#120
            mov w4,#4
            mov x3,x0
            mov w2,#2
            mov w1,#1
            ldr w0,[sp,#128]
            bl setsockopt

            cmp w0,#0
            b.eq .L_410aec

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41c7c0
            add x1,x0, :lo12:.L_41c7c0
            mov w0,#4
            bl syslog
.L_410aec:

            ldr x0,[sp,#136]
            ldr w0,[x0,#4]
            cmp w0,#10
            b.ne .L_410b48

            mov w0,#1
            str w0,[sp,#120]
            add x0,sp,#120
            mov w4,#4
            mov x3,x0
            mov w2,#26
            mov w1,#41
            ldr w0,[sp,#128]
            bl setsockopt

            cmp w0,#0
            b.eq .L_410b48

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x0, .L_41c800
            add x1,x0, :lo12:.L_41c800
            mov w0,#4
            bl syslog
.L_410b48:

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            mov w4,w0
            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_410b7c

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            add x0,x0,#4
            b .L_410b88
.L_410b7c:

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            add x0,x0,#8
.L_410b88:

            add x1,sp,#72
            mov w3,#46
            mov x2,x1
            mov x1,x0
            mov w0,w4
            bl inet_ntop

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            ldrh w0,[x0]
            cmp w0,#2
            b.ne .L_410bc4

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            ldrh w0,[x0,#2]
            b .L_410bd0
.L_410bc4:

            ldr x0,[sp,#136]
            ldr x0,[x0,#24]
            ldrh w0,[x0,#2]
.L_410bd0:

            strh w0,[sp,#126]
            ldr x0,[sp,#136]
            ldr x1,[x0,#24]
            ldr x0,[sp,#136]
            ldr w0,[x0,#16]
            mov w2,w0
            ldr w0,[sp,#128]
            bl bind

            cmp w0,#0
            b.eq .L_410c44

            ldrh w0,[sp,#126]
            bl ntohs

            and w0,w0,#65535
            mov w19,w0
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            add x0,sp,#72
            mov x4,x1
            mov w3,w19
            mov x2,x0
            adrp x0, .L_41c840
            add x1,x0, :lo12:.L_41c840
            mov w0,#3
            bl syslog

            ldr w0,[sp,#128]
            bl close

            b .L_410cbc
.L_410c44:

            mov w1,#4096
            ldr w0,[sp,#128]
            bl listen

            cmp w0,#0
            b.eq .L_410c64

            ldr w0,[sp,#128]
            bl close

            b .L_410cbc
.L_410c64:

            ldr x0,[sp,#56]
            ldr x0,[x0]
            ldrsw x1,[sp,#128]
            ldr x2,[sp,#40]
            bl plist_add

            mov x1,x0
            ldr x0,[sp,#56]
            str x1,[x0]
            ldrh w0,[sp,#126]
            bl ntohs

            and w0,w0,#65535
            mov w1,w0
            add x0,sp,#72
            mov w3,w1
            mov x2,x0
            adrp x0, .L_41c868
            add x1,x0, :lo12:.L_41c868
            mov w0,#6
            bl syslog

            ldr w0,[sp,#132]
            add w0,w0,#1
            str w0,[sp,#132]
.L_410cbc:

            ldr x0,[sp,#136]
            ldr x0,[x0,#40]
            str x0,[sp,#136]
.L_410cc8:

            ldr x0,[sp,#136]
            cmp x0,#0
            b.ne .L_410a40

            ldr w0,[sp,#132]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#144
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_listen, . - so_listen
.align 2
#-----------------------------------
.globl so_recvtest
.type so_recvtest, @function
#-----------------------------------
so_recvtest:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#28]
            add x0,sp,#43
            mov w3,#66
            mov x2,#1
            mov x1,x0
            ldr w0,[sp,#28]
            bl recv

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_recvtest, . - so_recvtest
.align 3
#-----------------------------------
.globl so_dataready
.type so_dataready, @function
#-----------------------------------
so_dataready:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str w0,[sp,#28]
            ldr w0,[sp,#28]
            bl so_recvtest

            cmp w0,#0
            cset w0,gt
            and w0,w0,#255
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_dataready, . - so_dataready
.align 4
#-----------------------------------
.globl so_closed
.type so_closed, @function
#-----------------------------------
so_closed:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#28]
            ldr w0,[sp,#28]
            cmn w0,#1
            b.ne .L_410d60

            mov w0,#1
            b .L_410db0
.L_410d60:

            ldr w0,[sp,#28]
            bl so_recvtest

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_410da4

            ldr w0,[sp,#44]
            cmn w0,#1
            b.ne .L_410dac

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#11
            b.eq .L_410dac

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#2
            b.eq .L_410dac
.L_410da4:

            mov w0,#1
            b .L_410db0
.L_410dac:

            mov w0,#0
.L_410db0:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_closed, . - so_closed
.align 3
#-----------------------------------
.globl so_recvln
.type so_recvln, @function
#-----------------------------------
so_recvln:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str w0,[sp,#44]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str wzr,[sp,#76]
            mov w0,#1
            str w0,[sp,#72]
            strb wzr,[sp,#63]
            b .L_410ed8
.L_410de0:

            add x0,sp,#63
            mov x2,#1
            mov x1,x0
            ldr w0,[sp,#44]
            bl read

            str w0,[sp,#72]
            ldr w0,[sp,#72]
            cmp w0,#0
            b.le .L_410f00

            ldr x0,[sp,#32]
            ldr x1,[x0]
            ldr w0,[sp,#76]
            add w2,w0,#1
            str w2,[sp,#76]
            sxtw x0,w0
            add x0,x1,x0
            ldrb w1,[sp,#63]
            strb w1,[x0]
            ldr x0,[sp,#24]
            ldr w0,[x0]
            sub w0,w0,#1
            ldr w1,[sp,#76]
            cmp w1,w0
            b.ne .L_410ed8

            ldrb w0,[sp,#63]
            cmp w0,#10
            b.eq .L_410ed8

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410e80

            ldr x0,[sp,#24]
            ldr w0,[x0]
            lsl w0,w0,#1
            mov w2,w0
            ldr w1,[sp,#44]
            adrp x0, .L_41c888
            add x0,x0, :lo12:.L_41c888
            bl printf
.L_410e80:

            ldr x0,[sp,#24]
            ldr w0,[x0]
            lsl w1,w0,#1
            ldr x0,[sp,#24]
            str w1,[x0]
            ldr x0,[sp,#32]
            ldr x2,[x0]
            ldr x0,[sp,#24]
            ldr w0,[x0]
            sxtw x0,w0
            mov x1,x0
            mov x0,x2
            bl realloc

            str x0,[sp,#64]
            ldr x0,[sp,#64]
            cmp x0,#0
            b.ne .L_410ecc

            mov w0,#-1
            b .L_410f1c
.L_410ecc:

            ldr x0,[sp,#32]
            ldr x1,[sp,#64]
            str x1,[x0]
.L_410ed8:

            ldr x0,[sp,#24]
            ldr w0,[x0]
            sub w0,w0,#1
            ldr w1,[sp,#76]
            cmp w1,w0
            b.ge .L_410f04

            ldrb w0,[sp,#63]
            cmp w0,#10
            b.ne .L_410de0

            b .L_410f04
.L_410f00:

            nop
            nop
            nop
            nop
.L_410f04:

            ldr x0,[sp,#32]
            ldr x1,[x0]
            ldrsw x0,[sp,#76]
            add x0,x1,x0
            strb wzr,[x0]
            ldr w0,[sp,#72]
.L_410f1c:

            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_recvln, . - so_recvln
.align 2
#-----------------------------------
.globl myexit
.type myexit, @function
#-----------------------------------
myexit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str w0,[sp,#28]
            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_410f60

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#54
            mov x1,#1
            adrp x0, .L_41cac0
            add x0,x0, :lo12:.L_41cac0
            bl fwrite
.L_410f60:

            ldr w0,[sp,#28]
            bl exit
.cfi_endproc 
.size myexit, . - myexit
.align 3
#-----------------------------------
.globl croak
.type croak, @function
#-----------------------------------
croak:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_410f98

            ldr x1,[sp,#24]
            adrp x0, .L_41caf8
            add x0,x0, :lo12:.L_41caf8
            bl printf

            b .L_410fac
.L_410f98:

            ldr x2,[sp,#24]
            adrp x0, .L_41caf8
            add x1,x0, :lo12:.L_41caf8
            mov w0,#3
            bl syslog
.L_410fac:

            mov w0,#1
            bl myexit
.cfi_endproc 
.size croak, . - croak
.align 2
#-----------------------------------
.globl plist_add
.type plist_add, @function
#-----------------------------------
plist_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#40]
            str x0,[sp,#56]
            mov x0,#24
            bl malloc

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            ldr x1,[sp,#32]
            str x1,[x0]
            ldr x0,[sp,#48]
            ldr x1,[sp,#24]
            str x1,[x0,#8]
            ldr x0,[sp,#48]
            str xzr,[x0,#16]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_41101c

            ldr x0,[sp,#48]
            b .L_41103c
.L_411010:

            ldr x0,[sp,#56]
            ldr x0,[x0,#16]
            str x0,[sp,#56]
.L_41101c:

            ldr x0,[sp,#56]
            ldr x0,[x0,#16]
            cmp x0,#0
            b.ne .L_411010

            ldr x0,[sp,#56]
            ldr x1,[sp,#48]
            str x1,[x0,#16]
            ldr x0,[sp,#40]
.L_41103c:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_add, . - plist_add
.align 2
#-----------------------------------
.globl plist_del
.type plist_del, @function
#-----------------------------------
plist_del:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            str xzr,[sp,#56]
            ldr x0,[sp,#24]
            str x0,[sp,#48]
            b .L_41108c
.L_411064:

            ldr x0,[sp,#48]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            cmp x1,x0
            b.eq .L_41109c

            ldr x0,[sp,#48]
            str x0,[sp,#56]
            ldr x0,[sp,#48]
            ldr x0,[x0,#16]
            str x0,[sp,#48]
.L_41108c:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.ne .L_411064

            b .L_4110a0
.L_41109c:

            nop
            nop
            nop
            nop
.L_4110a0:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_4110fc

            ldr x0,[sp,#48]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
            ldr x0,[sp,#48]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_4110d4

            ldr x0,[sp,#48]
            ldr x0,[x0,#8]
            bl free
.L_4110d4:

            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_4110f0

            ldr x0,[sp,#40]
            b .L_411100
.L_4110f0:

            ldr x0,[sp,#56]
            ldr x1,[sp,#40]
            str x1,[x0,#16]
.L_4110fc:

            ldr x0,[sp,#24]
.L_411100:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_del, . - plist_del
.align 3
#-----------------------------------
.globl plist_in
.type plist_in, @function
#-----------------------------------
plist_in:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            b .L_411140
.L_411120:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp]
            cmp x1,x0
            b.eq .L_411150

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#24]
.L_411140:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411120

            b .L_411154
.L_411150:

            nop
            nop
            nop
            nop
.L_411154:

            ldr x0,[sp,#24]
            cmp x0,#0
            cset w0,ne
            and w0,w0,#255
            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_in, . - plist_in
.align 2
#-----------------------------------
.globl plist_dump
.type plist_dump, @function
#-----------------------------------
plist_dump:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_4111b0
.L_411184:

            ldr x0,[sp,#40]
            ldr x1,[x0]
            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            mov x2,x0
            adrp x0, .L_41cb00
            add x0,x0, :lo12:.L_41cb00
            bl printf

            ldr x0,[sp,#40]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
.L_4111b0:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_411184

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_dump, . - plist_dump
.align 2
#-----------------------------------
.globl plist_get
.type plist_get, @function
#-----------------------------------
plist_get:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            b .L_411204
.L_4111e4:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            ldr x1,[sp]
            cmp x1,x0
            b.eq .L_411214

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#24]
.L_411204:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4111e4

            b .L_411218
.L_411214:

            nop
            nop
            nop
            nop
.L_411218:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_411230

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            b .L_411234
.L_411230:

            mov x0,#0
.L_411234:

            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_get, . - plist_get
.align 2
#-----------------------------------
.globl plist_pop
.type plist_pop, @function
#-----------------------------------
plist_pop:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            str wzr,[sp,#52]
            str wzr,[sp,#48]
            str xzr,[sp,#40]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_411274

            ldr x0,[sp,#24]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_41127c
.L_411274:

            mov w0,#0
            b .L_411354
.L_41127c:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            str x0,[sp,#56]
            b .L_411300
.L_41128c:

            ldr x0,[sp,#56]
            ldr x0,[x0]
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            ldr x0,[x0,#8]
            str x0,[sp,#40]
            ldr x0,[sp,#56]
            ldr x0,[x0,#16]
            str x0,[sp,#32]
            ldr w0,[sp,#52]
            bl so_closed

            cmp w0,#0
            b.eq .L_4112e8

            ldr w0,[sp,#52]
            bl close

            ldr x0,[sp,#56]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_4112f0

            ldr x0,[sp,#56]
            ldr x0,[x0,#8]
            bl free

            b .L_4112f0
.L_4112e8:

            mov w0,#1
            str w0,[sp,#48]
.L_4112f0:

            ldr x0,[sp,#56]
            bl free

            ldr x0,[sp,#32]
            str x0,[sp,#56]
.L_411300:

            ldr w0,[sp,#48]
            cmp w0,#0
            b.ne .L_411318

            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_41128c
.L_411318:

            ldr x0,[sp,#24]
            ldr x1,[sp,#56]
            str x1,[x0]
            ldr w0,[sp,#48]
            cmp w0,#0
            b.eq .L_411350

            ldr x0,[sp,#16]
            cmp x0,#0
            b.eq .L_411348

            ldr x0,[sp,#16]
            ldr x1,[sp,#40]
            str x1,[x0]
.L_411348:

            ldr w0,[sp,#52]
            b .L_411354
.L_411350:

            mov w0,#0
.L_411354:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_pop, . - plist_pop
.align 2
#-----------------------------------
.globl plist_count
.type plist_count, @function
#-----------------------------------
plist_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            str wzr,[sp,#20]
            b .L_41138c
.L_411374:

            ldr w0,[sp,#20]
            add w0,w0,#1
            str w0,[sp,#20]
            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#24]
.L_41138c:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411374

            ldr w0,[sp,#20]
            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_count, . - plist_count
.align 2
#-----------------------------------
.globl plist_free
.type plist_free, @function
#-----------------------------------
plist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_4113f4
.L_4113bc:

            ldr x0,[sp,#24]
            ldr x0,[x0,#16]
            str x0,[sp,#40]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_4113e4

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            bl free
.L_4113e4:

            ldr x0,[sp,#24]
            bl free

            ldr x0,[sp,#40]
            str x0,[sp,#24]
.L_4113f4:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4113bc

            mov x0,#0
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size plist_free, . - plist_free
.align 2
#-----------------------------------
.globl hlist_add
.type hlist_add, @function
#-----------------------------------
hlist_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str w3,[sp,#20]
            str w4,[sp,#16]
            ldr x0,[sp,#40]
            str x0,[sp,#56]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_411448

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411450
.L_411448:

            ldr x0,[sp,#40]
            b .L_4114fc
.L_411450:

            mov x0,#32
            bl malloc

            str x0,[sp,#48]
            ldr w0,[sp,#20]
            cmp w0,#1
            b.ne .L_411478

            ldr x0,[sp,#32]
            bl strdup

            mov x1,x0
            b .L_41147c
.L_411478:

            ldr x1,[sp,#32]
.L_41147c:

            ldr x0,[sp,#48]
            str x1,[x0]
            ldr w0,[sp,#16]
            cmp w0,#1
            b.ne .L_4114a0

            ldr x0,[sp,#24]
            bl strdup

            mov x1,x0
            b .L_4114a4
.L_4114a0:

            ldr x1,[sp,#24]
.L_4114a4:

            ldr x0,[sp,#48]
            str x1,[x0,#8]
            ldr x0,[sp,#48]
            str xzr,[x0,#24]
            ldr x0,[sp,#48]
            str wzr,[x0,#16]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_4114dc

            ldr x0,[sp,#48]
            b .L_4114fc
.L_4114d0:

            ldr x0,[sp,#56]
            ldr x0,[x0,#24]
            str x0,[sp,#56]
.L_4114dc:

            ldr x0,[sp,#56]
            ldr x0,[x0,#24]
            cmp x0,#0
            b.ne .L_4114d0

            ldr x0,[sp,#56]
            ldr x1,[sp,#48]
            str x1,[x0,#24]
            ldr x0,[sp,#40]
.L_4114fc:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_add, . - hlist_add
.align 2
#-----------------------------------
.globl hlist_dup
.type hlist_dup, @function
#-----------------------------------
hlist_dup:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str xzr,[sp,#40]
            ldr x0,[sp,#24]
            str x0,[sp,#32]
            b .L_411554
.L_411520:

            ldr x0,[sp,#32]
            ldr x1,[x0]
            ldr x0,[sp,#32]
            ldr x0,[x0,#8]
            mov w4,#1
            mov w3,#1
            mov x2,x0
            ldr x0,[sp,#40]
            bl hlist_add

            str x0,[sp,#40]
            ldr x0,[sp,#32]
            ldr x0,[x0,#24]
            str x0,[sp,#32]
.L_411554:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_411520

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_dup, . - hlist_dup
.align 2
#-----------------------------------
.globl hlist_del
.type hlist_del, @function
#-----------------------------------
hlist_del:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            str xzr,[sp,#56]
            ldr x0,[sp,#24]
            str x0,[sp,#48]
            b .L_4115b8
.L_41158c:

            ldr x0,[sp,#48]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            bl strcasecmp

            cmp w0,#0
            b.eq .L_4115c8

            ldr x0,[sp,#48]
            str x0,[sp,#56]
            ldr x0,[sp,#48]
            ldr x0,[x0,#24]
            str x0,[sp,#48]
.L_4115b8:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.ne .L_41158c

            b .L_4115cc
.L_4115c8:

            nop
            nop
            nop
            nop
.L_4115cc:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_411624

            ldr x0,[sp,#48]
            ldr x0,[x0,#24]
            str x0,[sp,#40]
            ldr x0,[sp,#48]
            ldr x0,[x0]
            bl free

            ldr x0,[sp,#48]
            ldr x0,[x0,#8]
            bl free

            ldr x0,[sp,#48]
            bl free

            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_411618

            ldr x0,[sp,#40]
            b .L_411628
.L_411618:

            ldr x0,[sp,#56]
            ldr x1,[sp,#40]
            str x1,[x0,#24]
.L_411624:

            ldr x0,[sp,#24]
.L_411628:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_del, . - hlist_del
.align 4
#-----------------------------------
.globl hlist_mod
.type hlist_mod, @function
#-----------------------------------
hlist_mod:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str w3,[sp,#20]
            ldr x0,[sp,#40]
            str x0,[sp,#56]
            b .L_411678
.L_411654:

            ldr x0,[sp,#56]
            ldr x0,[x0]
            ldr x1,[sp,#32]
            bl strcasecmp

            cmp w0,#0
            b.eq .L_411688

            ldr x0,[sp,#56]
            ldr x0,[x0,#24]
            str x0,[sp,#56]
.L_411678:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_411654

            b .L_41168c
.L_411688:

            nop
            nop
            nop
            nop
.L_41168c:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_4116bc

            ldr x0,[sp,#56]
            ldr x0,[x0,#8]
            bl free

            ldr x0,[sp,#24]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#56]
            str x1,[x0,#8]
            b .L_4116e4
.L_4116bc:

            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_4116e4

            mov w4,#1
            mov w3,#1
            ldr x2,[sp,#24]
            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl hlist_add

            str x0,[sp,#40]
.L_4116e4:

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_mod, . - hlist_mod
.align 4
#-----------------------------------
.globl hlist_in
.type hlist_in, @function
#-----------------------------------
hlist_in:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_411730
.L_41170c:

            ldr x0,[sp,#40]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            bl strcasecmp

            cmp w0,#0
            b.eq .L_411740

            ldr x0,[sp,#40]
            ldr x0,[x0,#24]
            str x0,[sp,#40]
.L_411730:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_41170c

            b .L_411744
.L_411740:

            nop
            nop
            nop
            nop
.L_411744:

            ldr x0,[sp,#40]
            cmp x0,#0
            cset w0,ne
            and w0,w0,#255
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_in, . - hlist_in
.align 2
#-----------------------------------
.globl hlist_count
.type hlist_count, @function
#-----------------------------------
hlist_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            str wzr,[sp,#20]
            b .L_41178c
.L_411774:

            ldr w0,[sp,#20]
            add w0,w0,#1
            str w0,[sp,#20]
            ldr x0,[sp,#24]
            ldr x0,[x0,#24]
            str x0,[sp,#24]
.L_41178c:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411774

            ldr w0,[sp,#20]
            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_count, . - hlist_count
.align 2
#-----------------------------------
.globl hlist_get
.type hlist_get, @function
#-----------------------------------
hlist_get:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_4117e4
.L_4117c0:

            ldr x0,[sp,#40]
            ldr x0,[x0]
            ldr x1,[sp,#16]
            bl strcasecmp

            cmp w0,#0
            b.eq .L_4117f4

            ldr x0,[sp,#40]
            ldr x0,[x0,#24]
            str x0,[sp,#40]
.L_4117e4:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_4117c0

            b .L_4117f8
.L_4117f4:

            nop
            nop
            nop
            nop
.L_4117f8:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_411810

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            b .L_411814
.L_411810:

            mov x0,#0
.L_411814:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_get, . - hlist_get
.align 2
#-----------------------------------
.globl hlist_subcmp
.type hlist_subcmp, @function
#-----------------------------------
hlist_subcmp:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            str wzr,[sp,#76]
            ldr x0,[sp,#24]
            bl strdup

            str x0,[sp,#64]
            ldr x0,[sp,#64]
            bl lowercase

            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl hlist_get

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_41189c

            ldr x0,[sp,#56]
            bl strdup

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            bl lowercase

            ldr x1,[sp,#64]
            ldr x0,[sp,#56]
            bl strstr

            cmp x0,#0
            b.eq .L_411894

            mov w0,#1
            str w0,[sp,#76]
.L_411894:

            ldr x0,[sp,#56]
            bl free
.L_41189c:

            ldr x0,[sp,#64]
            bl free

            ldr w0,[sp,#76]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_subcmp, . - hlist_subcmp
.align 4
#-----------------------------------
.globl hlist_subcmp_all
.type hlist_subcmp_all, @function
#-----------------------------------
hlist_subcmp_all:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#40]
            str x0,[sp,#72]
            str wzr,[sp,#68]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_4118fc

            adrp x0, __PRETTY_FUNCTION__.9
            add x3,x0, :lo12:__PRETTY_FUNCTION__.9
            mov w2,#442
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cb30
            add x0,x0, :lo12:.L_41cb30
            bl __assert_fail
.L_4118fc:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411928

            adrp x0, __PRETTY_FUNCTION__.9
            add x3,x0, :lo12:__PRETTY_FUNCTION__.9
            mov w2,#443
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cb40
            add x0,x0, :lo12:.L_41cb40
            bl __assert_fail
.L_411928:

            ldr x0,[sp,#24]
            bl strdup

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            bl lowercase

            b .L_4119a0
.L_411940:

            ldr x0,[sp,#72]
            ldr x0,[x0]
            ldr x1,[sp,#32]
            bl strcasecmp

            cmp w0,#0
            b.ne .L_411994

            ldr x0,[sp,#72]
            ldr x0,[x0,#8]
            bl strdup

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            bl lowercase

            ldr x1,[sp,#56]
            ldr x0,[sp,#48]
            bl strstr

            cmp x0,#0
            b.eq .L_41198c

            mov w0,#1
            str w0,[sp,#68]
.L_41198c:

            ldr x0,[sp,#48]
            bl free
.L_411994:

            ldr x0,[sp,#72]
            ldr x0,[x0,#24]
            str x0,[sp,#72]
.L_4119a0:

            ldr x0,[sp,#72]
            cmp x0,#0
            b.ne .L_411940

            ldr x0,[sp,#56]
            bl free

            ldr w0,[sp,#68]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_subcmp_all, . - hlist_subcmp_all
.align 4
#-----------------------------------
.globl hlist_free
.type hlist_free, @function
#-----------------------------------
hlist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_411a0c
.L_4119d8:

            ldr x0,[sp,#24]
            ldr x0,[x0,#24]
            str x0,[sp,#40]
            ldr x0,[sp,#24]
            ldr x0,[x0]
            bl free

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            bl free

            ldr x0,[sp,#24]
            bl free

            ldr x0,[sp,#40]
            str x0,[sp,#24]
.L_411a0c:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4119d8

            mov x0,#0
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_free, . - hlist_free
.align 2
#-----------------------------------
.globl hlist_dump
.type hlist_dump, @function
#-----------------------------------
hlist_dump:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_411a68
.L_411a3c:

            ldr x0,[sp,#40]
            ldr x1,[x0]
            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            mov x2,x0
            adrp x0, .L_41cb50
            add x0,x0, :lo12:.L_41cb50
            bl printf

            ldr x0,[sp,#40]
            ldr x0,[x0,#24]
            str x0,[sp,#40]
.L_411a68:

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_411a3c

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hlist_dump, . - hlist_dump
.align 2
#-----------------------------------
.globl substr
.type substr, @function
#-----------------------------------
substr:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            str w2,[sp,#16]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411ac4

            adrp x0, __PRETTY_FUNCTION__.8
            add x3,x0, :lo12:__PRETTY_FUNCTION__.8
            mov w2,#502
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cb60
            add x0,x0, :lo12:.L_41cb60
            bl __assert_fail
.L_411ac4:

            ldr w0,[sp,#20]
            cmp w0,#0
            b.ge .L_411af0

            adrp x0, __PRETTY_FUNCTION__.8
            add x3,x0, :lo12:__PRETTY_FUNCTION__.8
            mov w2,#503
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cb70
            add x0,x0, :lo12:.L_41cb70
            bl __assert_fail
.L_411af0:

            ldr w0,[sp,#16]
            cmp w0,#0
            b.ge .L_411b1c

            adrp x0, __PRETTY_FUNCTION__.8
            add x3,x0, :lo12:__PRETTY_FUNCTION__.8
            mov w2,#504
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cb80
            add x0,x0, :lo12:.L_41cb80
            bl __assert_fail
.L_411b1c:

            ldr w0,[sp,#16]
            cmp w0,#0
            b.ne .L_411b34

            ldr x0,[sp,#24]
            bl strlen

            str w0,[sp,#16]
.L_411b34:

            ldr x0,[sp,#24]
            bl strlen

            mov w1,w0
            ldr w0,[sp,#20]
            sub w0,w1,w0
            ldr w1,[sp,#16]
            cmp w1,w0
            b.lt .L_411b6c

            ldr x0,[sp,#24]
            bl strlen

            mov w1,w0
            ldr w0,[sp,#20]
            sub w0,w1,w0
            b .L_411b70
.L_411b6c:

            ldr w0,[sp,#16]
.L_411b70:

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.gt .L_411b8c

            mov x0,#1
            bl zmalloc

            b .L_411bc8
.L_411b8c:

            ldr w0,[sp,#44]
            add w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#32]
            ldrsw x0,[sp,#20]
            ldr x1,[sp,#24]
            add x1,x1,x0
            ldr w0,[sp,#44]
            add w0,w0,#1
            sxtw x0,w0
            mov x2,x0
            ldr x0,[sp,#32]
            bl strlcpy

            ldr x0,[sp,#32]
.L_411bc8:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size substr, . - substr
.align 4
#-----------------------------------
.globl new_rr_data
.type new_rr_data, @function
#-----------------------------------
new_rr_data:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            mov x0,#104
            bl malloc

            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str wzr,[x0]
            ldr x0,[sp,#24]
            str wzr,[x0,#16]
            ldr x0,[sp,#24]
            str wzr,[x0,#20]
            ldr x0,[sp,#24]
            str wzr,[x0,#24]
            ldr x0,[sp,#24]
            mov w1,#1
            str w1,[x0,#28]
            ldr x0,[sp,#24]
            str wzr,[x0,#32]
            ldr x0,[sp,#24]
            mov w1,#-1
            str w1,[x0,#36]
            ldr x0,[sp,#24]
            str xzr,[x0,#8]
            ldr x0,[sp,#24]
            str xzr,[x0,#40]
            ldr x0,[sp,#24]
            str xzr,[x0,#48]
            ldr x0,[sp,#24]
            str xzr,[x0,#56]
            ldr x0,[sp,#24]
            str xzr,[x0,#64]
            ldr x0,[sp,#24]
            str xzr,[x0,#72]
            ldr x0,[sp,#24]
            str xzr,[x0,#80]
            ldr x0,[sp,#24]
            str xzr,[x0,#88]
            ldr x0,[sp,#24]
            str xzr,[x0,#96]
            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size new_rr_data, . - new_rr_data
.align 3
#-----------------------------------
.globl copy_rr_data
.type copy_rr_data, @function
#-----------------------------------
copy_rr_data:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411cd8

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#52
            mov x1,#1
            adrp x0, .L_41cb90
            add x0,x0, :lo12:.L_41cb90
            bl fwrite

            adrp x0, __PRETTY_FUNCTION__.7
            add x3,x0, :lo12:__PRETTY_FUNCTION__.7
            mov w2,#552
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cbc8
            add x0,x0, :lo12:.L_41cbc8
            bl __assert_fail
.L_411cd8:

            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_411d28

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#52
            mov x1,#1
            adrp x0, .L_41cbd0
            add x0,x0, :lo12:.L_41cbd0
            bl fwrite

            adrp x0, __PRETTY_FUNCTION__.7
            add x3,x0, :lo12:__PRETTY_FUNCTION__.7
            mov w2,#557
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cbc8
            add x0,x0, :lo12:.L_41cbc8
            bl __assert_fail
.L_411d28:

            ldr x0,[sp,#24]
            bl reset_rr_data

            ldr x0,[sp,#16]
            ldr w1,[x0]
            ldr x0,[sp,#24]
            str w1,[x0]
            ldr x0,[sp,#16]
            ldr w1,[x0,#16]
            ldr x0,[sp,#24]
            str w1,[x0,#16]
            ldr x0,[sp,#16]
            ldr w1,[x0,#20]
            ldr x0,[sp,#24]
            str w1,[x0,#20]
            ldr x0,[sp,#16]
            ldr w1,[x0,#24]
            ldr x0,[sp,#24]
            str w1,[x0,#24]
            ldr x0,[sp,#16]
            ldr w1,[x0,#28]
            ldr x0,[sp,#24]
            str w1,[x0,#28]
            ldr x0,[sp,#16]
            ldr w1,[x0,#32]
            ldr x0,[sp,#24]
            str w1,[x0,#32]
            ldr x0,[sp,#16]
            ldr w1,[x0,#36]
            ldr x0,[sp,#24]
            str w1,[x0,#36]
            ldr x0,[sp,#16]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_411dc8

            ldr x0,[sp,#16]
            ldr x0,[x0,#8]
            bl hlist_dup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#8]
.L_411dc8:

            ldr x0,[sp,#16]
            ldr x0,[x0,#40]
            cmp x0,#0
            b.eq .L_411df0

            ldr x0,[sp,#16]
            ldr x0,[x0,#40]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#40]
.L_411df0:

            ldr x0,[sp,#16]
            ldr x0,[x0,#48]
            cmp x0,#0
            b.eq .L_411e18

            ldr x0,[sp,#16]
            ldr x0,[x0,#48]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#48]
.L_411e18:

            ldr x0,[sp,#16]
            ldr x0,[x0,#56]
            cmp x0,#0
            b.eq .L_411e40

            ldr x0,[sp,#16]
            ldr x0,[x0,#56]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#56]
.L_411e40:

            ldr x0,[sp,#16]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_411e68

            ldr x0,[sp,#16]
            ldr x0,[x0,#64]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#64]
.L_411e68:

            ldr x0,[sp,#16]
            ldr x0,[x0,#72]
            cmp x0,#0
            b.eq .L_411e90

            ldr x0,[sp,#16]
            ldr x0,[x0,#72]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#72]
.L_411e90:

            ldr x0,[sp,#16]
            ldr x0,[x0,#80]
            cmp x0,#0
            b.eq .L_411eb8

            ldr x0,[sp,#16]
            ldr x0,[x0,#80]
            bl strdup

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#80]
.L_411eb8:

            ldr x0,[sp,#16]
            ldr x0,[x0,#88]
            cmp x0,#0
            b.eq .L_411f1c

            ldr x0,[sp,#16]
            ldr w0,[x0,#24]
            cmp w0,#0
            b.le .L_411f1c

            ldr x0,[sp,#16]
            ldr w0,[x0,#24]
            sxtw x0,w0
            bl zmalloc

            mov x1,x0
            ldr x0,[sp,#24]
            str x1,[x0,#88]
            ldr x0,[sp,#24]
            ldr x3,[x0,#88]
            ldr x0,[sp,#16]
            ldr x1,[x0,#88]
            ldr x0,[sp,#16]
            ldr w0,[x0,#24]
            sxtw x0,w0
            mov x2,x0
            mov x0,x3
            bl memcpy
.L_411f1c:

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size copy_rr_data, . - copy_rr_data
.align 3
#-----------------------------------
.globl dup_rr_data
.type dup_rr_data, @function
#-----------------------------------
dup_rr_data:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411f84

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#52
            mov x1,#1
            adrp x0, .L_41cc08
            add x0,x0, :lo12:.L_41cc08
            bl fwrite

            adrp x0, __PRETTY_FUNCTION__.6
            add x3,x0, :lo12:__PRETTY_FUNCTION__.6
            mov w2,#600
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cbc8
            add x0,x0, :lo12:.L_41cbc8
            bl __assert_fail
.L_411f84:

            bl new_rr_data

            str x0,[sp,#40]
            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            bl copy_rr_data

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size dup_rr_data, . - dup_rr_data
.align 4
#-----------------------------------
.globl reset_rr_data
.type reset_rr_data, @function
#-----------------------------------
reset_rr_data:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_411ffc

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#54
            mov x1,#1
            adrp x0, .L_41cc40
            add x0,x0, :lo12:.L_41cc40
            bl fwrite

            adrp x0, __PRETTY_FUNCTION__.5
            add x3,x0, :lo12:__PRETTY_FUNCTION__.5
            mov w2,#614
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cbc8
            add x0,x0, :lo12:.L_41cbc8
            bl __assert_fail
.L_411ffc:

            ldr x0,[sp,#24]
            str wzr,[x0]
            ldr x0,[sp,#24]
            str wzr,[x0,#16]
            ldr x0,[sp,#24]
            str wzr,[x0,#20]
            ldr x0,[sp,#24]
            str wzr,[x0,#24]
            ldr x0,[sp,#24]
            mov w1,#1
            str w1,[x0,#28]
            ldr x0,[sp,#24]
            str wzr,[x0,#32]
            ldr x0,[sp,#24]
            mov w1,#-1
            str w1,[x0,#36]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_412058

            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            bl hlist_free
.L_412058:

            ldr x0,[sp,#24]
            ldr x0,[x0,#40]
            cmp x0,#0
            b.eq .L_412074

            ldr x0,[sp,#24]
            ldr x0,[x0,#40]
            bl free
.L_412074:

            ldr x0,[sp,#24]
            ldr x0,[x0,#48]
            cmp x0,#0
            b.eq .L_412090

            ldr x0,[sp,#24]
            ldr x0,[x0,#48]
            bl free
.L_412090:

            ldr x0,[sp,#24]
            ldr x0,[x0,#56]
            cmp x0,#0
            b.eq .L_4120ac

            ldr x0,[sp,#24]
            ldr x0,[x0,#56]
            bl free
.L_4120ac:

            ldr x0,[sp,#24]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_4120c8

            ldr x0,[sp,#24]
            ldr x0,[x0,#64]
            bl free
.L_4120c8:

            ldr x0,[sp,#24]
            ldr x0,[x0,#72]
            cmp x0,#0
            b.eq .L_4120e4

            ldr x0,[sp,#24]
            ldr x0,[x0,#72]
            bl free
.L_4120e4:

            ldr x0,[sp,#24]
            ldr x0,[x0,#80]
            cmp x0,#0
            b.eq .L_412100

            ldr x0,[sp,#24]
            ldr x0,[x0,#80]
            bl free
.L_412100:

            ldr x0,[sp,#24]
            ldr x0,[x0,#88]
            cmp x0,#0
            b.eq .L_41211c

            ldr x0,[sp,#24]
            ldr x0,[x0,#88]
            bl free
.L_41211c:

            ldr x0,[sp,#24]
            str xzr,[x0,#8]
            ldr x0,[sp,#24]
            str xzr,[x0,#40]
            ldr x0,[sp,#24]
            str xzr,[x0,#48]
            ldr x0,[sp,#24]
            str xzr,[x0,#56]
            ldr x0,[sp,#24]
            str xzr,[x0,#64]
            ldr x0,[sp,#24]
            str xzr,[x0,#72]
            ldr x0,[sp,#24]
            str xzr,[x0,#80]
            ldr x0,[sp,#24]
            str xzr,[x0,#88]
            ldr x0,[sp,#24]
            str xzr,[x0,#96]
            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size reset_rr_data, . - reset_rr_data
.align 4
#-----------------------------------
.globl free_rr_data
.type free_rr_data, @function
#-----------------------------------
free_rr_data:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4121cc

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#54
            mov x1,#1
            adrp x0, .L_41cc78
            add x0,x0, :lo12:.L_41cc78
            bl fwrite

            adrp x0, __PRETTY_FUNCTION__.4
            add x3,x0, :lo12:__PRETTY_FUNCTION__.4
            mov w2,#655
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41cbc8
            add x0,x0, :lo12:.L_41cbc8
            bl __assert_fail
.L_4121cc:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_4122e4

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            cmp x0,#0
            b.eq .L_412200

            ldr x0,[sp,#40]
            ldr x0,[x0,#8]
            bl hlist_free
.L_412200:

            ldr x0,[sp,#40]
            ldr x0,[x0,#40]
            cmp x0,#0
            b.eq .L_41221c

            ldr x0,[sp,#40]
            ldr x0,[x0,#40]
            bl free
.L_41221c:

            ldr x0,[sp,#40]
            ldr x0,[x0,#48]
            cmp x0,#0
            b.eq .L_412238

            ldr x0,[sp,#40]
            ldr x0,[x0,#48]
            bl free
.L_412238:

            ldr x0,[sp,#40]
            ldr x0,[x0,#56]
            cmp x0,#0
            b.eq .L_412254

            ldr x0,[sp,#40]
            ldr x0,[x0,#56]
            bl free
.L_412254:

            ldr x0,[sp,#40]
            ldr x0,[x0,#64]
            cmp x0,#0
            b.eq .L_412270

            ldr x0,[sp,#40]
            ldr x0,[x0,#64]
            bl free
.L_412270:

            ldr x0,[sp,#40]
            ldr x0,[x0,#72]
            cmp x0,#0
            b.eq .L_41228c

            ldr x0,[sp,#40]
            ldr x0,[x0,#72]
            bl free
.L_41228c:

            ldr x0,[sp,#40]
            ldr x0,[x0,#80]
            cmp x0,#0
            b.eq .L_4122a8

            ldr x0,[sp,#40]
            ldr x0,[x0,#80]
            bl free
.L_4122a8:

            ldr x0,[sp,#40]
            ldr x0,[x0,#88]
            cmp x0,#0
            b.eq .L_4122c4

            ldr x0,[sp,#40]
            ldr x0,[x0,#88]
            bl free
.L_4122c4:

            mov x2,#104
            mov w1,#0
            ldr x0,[sp,#40]
            bl memset

            ldr x0,[sp,#40]
            bl free

            str xzr,[sp,#40]
            b .L_4122e8
.L_4122e4:

            nop
            nop
            nop
            nop
.L_4122e8:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size free_rr_data, . - free_rr_data
.align 4
#-----------------------------------
.globl trimr
.type trimr, @function
#-----------------------------------
trimr:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_412328

            adrp x0, .L_41d050
            add x3,x0, :lo12:.L_41d050
            mov w2,#681
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41ccb0
            add x0,x0, :lo12:.L_41ccb0
            bl __assert_fail
.L_412328:

            ldr x0,[sp,#24]
            bl strlen

            sub w0,w0,#1
            str w0,[sp,#44]
            b .L_412348
.L_41233c:

            ldr w0,[sp,#44]
            sub w0,w0,#1
            str w0,[sp,#44]
.L_412348:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.lt .L_412388

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#44]
            ldr x2,[sp,#24]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_41233c
.L_412388:

            ldrsw x0,[sp,#44]
            add x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            strb wzr,[x0]
            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size trimr, . - trimr
.align 3
#-----------------------------------
.globl zmalloc
.type zmalloc, @function
#-----------------------------------
zmalloc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x1,[sp,#24]
            mov x0,#1
            bl calloc

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size zmalloc, . - zmalloc
.align 4
#-----------------------------------
.globl lowercase
.type lowercase, @function
#-----------------------------------
lowercase:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_412408

            adrp x0, .L_41d058
            add x3,x0, :lo12:.L_41d058
            mov w2,#792
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41ccc0
            add x0,x0, :lo12:.L_41ccc0
            bl __assert_fail
.L_412408:

            str xzr,[sp,#40]
            b .L_412448
.L_412410:

            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            add x0,x1,x0
            ldrb w0,[x0]
            bl tolower

            mov w2,w0
            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            add x0,x1,x0
            and w1,w2,#255
            strb w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_412448:

            ldr x0,[sp,#24]
            bl strlen

            mov x1,x0
            ldr x0,[sp,#40]
            cmp x0,x1
            b.lo .L_412410

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size lowercase, . - lowercase
.align 2
#-----------------------------------
.globl uppercase
.type uppercase, @function
#-----------------------------------
uppercase:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4124a4

            adrp x0, .L_41d068
            add x3,x0, :lo12:.L_41d068
            mov w2,#806
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41ccc0
            add x0,x0, :lo12:.L_41ccc0
            bl __assert_fail
.L_4124a4:

            str xzr,[sp,#40]
            b .L_4124e4
.L_4124ac:

            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            add x0,x1,x0
            ldrb w0,[x0]
            bl toupper

            mov w2,w0
            ldr x1,[sp,#24]
            ldr x0,[sp,#40]
            add x0,x1,x0
            and w1,w2,#255
            strb w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_4124e4:

            ldr x0,[sp,#24]
            bl strlen

            mov x1,x0
            ldr x0,[sp,#40]
            cmp x0,x1
            b.lo .L_4124ac

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size uppercase, . - uppercase
.align 3
#-----------------------------------
.globl unicode
.type unicode, @function
#-----------------------------------
unicode:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_412534

            ldr x0,[sp,#24]
            str xzr,[x0]
            mov w0,#0
            b .L_4125cc
.L_412534:

            ldr x0,[sp,#16]
            bl strlen

            cmp x0,#64
            b.hi .L_412550

            ldr x0,[sp,#16]
            bl strlen

            b .L_412554
.L_412550:

            mov w0,#64
.L_412554:

            str w0,[sp,#40]
            ldr w0,[sp,#40]
            lsl w0,w0,#1
            sxtw x0,w0
            bl zmalloc

            str x0,[sp,#32]
            str wzr,[sp,#44]
            b .L_4125a8
.L_412574:

            ldrsw x0,[sp,#44]
            ldr x1,[sp,#16]
            add x1,x1,x0
            ldr w0,[sp,#44]
            lsl w0,w0,#1
            sxtw x0,w0
            ldr x2,[sp,#32]
            add x0,x2,x0
            ldrb w1,[x1]
            strb w1,[x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_4125a8:

            ldr w1,[sp,#44]
            ldr w0,[sp,#40]
            cmp w1,w0
            b.lt .L_412574

            ldr x0,[sp,#24]
            ldr x1,[sp,#32]
            str x1,[x0]
            ldr w0,[sp,#40]
            lsl w0,w0,#1
.L_4125cc:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unicode, . - unicode
.align 2
#-----------------------------------
.globl urlencode
.type urlencode, @function
#-----------------------------------
urlencode:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_41260c

            adrp x0, .L_41d078
            add x3,x0, :lo12:.L_41d078
            mov w2,#838
            adrp x0, .L_41cb20
            add x1,x0, :lo12:.L_41cb20
            adrp x0, .L_41ccc0
            add x0,x0, :lo12:.L_41ccc0
            bl __assert_fail
.L_41260c:

            ldr x0,[sp,#24]
            bl strlen

            str x0,[sp,#56]
            ldr x1,[sp,#56]
            mov x0,x1
            lsl x0,x0,#1
            add x0,x0,x1
            add x0,x0,#1
            str x0,[sp,#48]
            ldr x0,[sp,#48]
            bl zmalloc

            str x0,[sp,#40]
            str xzr,[sp,#64]
            str xzr,[sp,#72]
            b .L_41279c
.L_412648:

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x2,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x2,x0
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#2048
            cmp w0,#0
            b.ne .L_412714

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            bl tolower

            cmp w0,#96
            b.le .L_4126b4

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            bl tolower

            cmp w0,#122
            b.le .L_412714
.L_4126b4:

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#46
            b.eq .L_412714

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#45
            b.eq .L_412714

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#95
            b.eq .L_412714

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#126
            b.ne .L_412744
.L_412714:

            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x1,x1,x0
            ldr x2,[sp,#40]
            ldr x0,[sp,#64]
            add x0,x2,x0
            ldrb w1,[x1]
            strb w1,[x0]
            ldr x0,[sp,#64]
            add x0,x0,#1
            str x0,[sp,#64]
            b .L_412790
.L_412744:

            ldr x1,[sp,#40]
            ldr x0,[sp,#64]
            add x4,x1,x0
            ldr x1,[sp,#48]
            ldr x0,[sp,#64]
            sub x5,x1,x0
            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldrb w0,[x0]
            mov w3,w0
            adrp x0, .L_41ccd0
            add x2,x0, :lo12:.L_41ccd0
            mov x1,x5
            mov x0,x4
            bl snprintf

            ldr x0,[sp,#64]
            add x0,x0,#3
            str x0,[sp,#64]
.L_412790:

            ldr x0,[sp,#72]
            add x0,x0,#1
            str x0,[sp,#72]
.L_41279c:

            ldr x1,[sp,#72]
            ldr x0,[sp,#56]
            cmp x1,x0
            b.lo .L_412648

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size urlencode, . - urlencode
.align 3
#-----------------------------------
.globl printmem
.type printmem, @function
#-----------------------------------
printmem:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            ldr x0,[sp,#32]
            lsl x0,x0,#1
            add x0,x0,#1
            bl zmalloc

            str x0,[sp,#48]
            str xzr,[sp,#56]
            b .L_4128a8
.L_4127e8:

            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            ldrb w1,[x0]
            ldr w0,[sp,#28]
            and w0,w0,#255
            mov w2,#7
            sub w0,w2,w0
            and w0,w0,#255
            eor w0,w1,w0
            and w0,w0,#255
            lsr w0,w0,#4
            and w0,w0,#255
            mov w3,w0
            ldr x0,[sp,#56]
            lsl x0,x0,#1
            ldr x1,[sp,#48]
            add x0,x1,x0
            adrp x1, hextab
            add x2,x1, :lo12:hextab
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            ldrb w1,[x0]
            ldr w0,[sp,#28]
            and w0,w0,#255
            mov w2,#7
            sub w0,w2,w0
            and w0,w0,#255
            eor w0,w1,w0
            and w0,w0,#255
            and w3,w0,#15
            ldr x0,[sp,#56]
            lsl x0,x0,#1
            add x0,x0,#1
            ldr x1,[sp,#48]
            add x0,x1,x0
            adrp x1, hextab
            add x2,x1, :lo12:hextab
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#56]
            add x0,x0,#1
            str x0,[sp,#56]
.L_4128a8:

            ldr x1,[sp,#56]
            ldr x0,[sp,#32]
            cmp x1,x0
            b.lo .L_4127e8

            ldr x0,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size printmem, . - printmem
.align 2
#-----------------------------------
.globl scanmem
.type scanmem, @function
#-----------------------------------
scanmem:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str w1,[sp,#20]
            ldr x0,[sp,#24]
            bl strlen

            and x0,x0,#1
            cmp x0,#0
            b.eq .L_4128f0

            mov x0,#0
            b .L_412a24
.L_4128f0:

            ldr x0,[sp,#24]
            bl strlen

            lsr x0,x0,#1
            str x0,[sp,#48]
            ldr x0,[sp,#48]
            add x0,x0,#1
            bl zmalloc

            str x0,[sp,#40]
            str xzr,[sp,#56]
            b .L_412a00
.L_412918:

            ldr x0,[sp,#56]
            lsl x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            mov w1,w0
            adrp x0, hexindex
            add x0,x0, :lo12:hexindex
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#36]
            ldr x0,[sp,#56]
            lsl x0,x0,#1
            add x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            mov w1,w0
            adrp x0, hexindex
            add x0,x0, :lo12:hexindex
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#32]
            ldr w0,[sp,#36]
            cmp w0,#0
            b.lt .L_41298c

            ldr w0,[sp,#32]
            cmp w0,#0
            b.ge .L_41299c
.L_41298c:

            ldr x0,[sp,#40]
            bl free

            mov x0,#0
            b .L_412a24
.L_41299c:

            ldr w0,[sp,#36]
            and w0,w0,#255
            ubfiz w0,w0,#4,#4
            and w1,w0,#255
            ldr w0,[sp,#32]
            and w0,w0,#255
            add w0,w1,w0
            and w0,w0,#255
            sxtb w1,w0
            ldr w0,[sp,#20]
            and w0,w0,#255
            mov w2,#7
            sub w0,w2,w0
            and w0,w0,#255
            sxtb w0,w0
            eor w0,w1,w0
            sxtb w2,w0
            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            and w1,w2,#255
            strb w1,[x0]
            ldr x0,[sp,#56]
            add x0,x0,#1
            str x0,[sp,#56]
.L_412a00:

            ldr x1,[sp,#56]
            ldr x0,[sp,#48]
            cmp x1,x0
            b.lo .L_412918

            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            strb wzr,[x0]
            ldr x0,[sp,#40]
.L_412a24:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size scanmem, . - scanmem
.align 2
#-----------------------------------
.globl is_memory_all_zero
.type is_memory_all_zero, @function
#-----------------------------------
is_memory_all_zero:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str x1,[sp]
            str xzr,[sp,#24]
            b .L_412a6c
.L_412a40:

            ldr x1,[sp,#8]
            ldr x0,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_412a60

            mov w0,#0
            b .L_412a80
.L_412a60:

            ldr x0,[sp,#24]
            add x0,x0,#1
            str x0,[sp,#24]
.L_412a6c:

            ldr x1,[sp,#24]
            ldr x0,[sp]
            cmp x1,x0
            b.lo .L_412a40

            mov w0,#1
.L_412a80:

            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size is_memory_all_zero, . - is_memory_all_zero
.align 3
#-----------------------------------
.globl to_base64
.type to_base64, @function
#-----------------------------------
to_base64:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str x0,[sp,#24]
            str x1,[sp,#16]
            str x2,[sp,#8]
            str x3,[sp]
            b .L_412bbc
.L_412aa0:

            ldr x0,[sp,#16]
            ldrb w0,[x0]
            lsr w0,w0,#2
            and w0,w0,#255
            mov w3,w0
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#16]
            ldrb w0,[x0]
            lsl w0,w0,#4
            and w0,w0,#48
            ldr x1,[sp,#16]
            add x1,x1,#1
            ldrb w1,[x1]
            lsr w1,w1,#4
            and w1,w1,#255
            orr w3,w0,w1
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#1
            ldrb w0,[x0]
            lsl w0,w0,#2
            and w0,w0,#60
            ldr x1,[sp,#16]
            add x1,x1,#2
            ldrb w1,[x1]
            lsr w1,w1,#6
            and w1,w1,#255
            orr w3,w0,w1
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#2
            ldrb w0,[x0]
            and w3,w0,#63
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp]
            sub x0,x0,#4
            str x0,[sp]
            ldr x0,[sp,#8]
            sub x0,x0,#3
            str x0,[sp,#8]
            ldr x0,[sp,#16]
            add x0,x0,#3
            str x0,[sp,#16]
.L_412bbc:

            ldr x0,[sp,#8]
            cmp x0,#2
            b.ls .L_412bd4

            ldr x0,[sp]
            cmp x0,#10
            b.hi .L_412aa0
.L_412bd4:

            ldr x0,[sp,#8]
            cmp x0,#0
            b.eq .L_412ce4

            ldr x0,[sp]
            cmp x0,#4
            b.ls .L_412ce4

            ldr x0,[sp,#16]
            ldrb w0,[x0]
            lsr w0,w0,#2
            and w0,w0,#255
            mov w3,w0
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#16]
            ldrb w0,[x0]
            ubfiz w0,w0,#4,#4
            and w0,w0,#255
            and w0,w0,#48
            strb w0,[sp,#47]
            ldr x0,[sp,#8]
            cmp x0,#1
            b.ls .L_412c64

            ldr x0,[sp,#16]
            add x0,x0,#1
            ldrb w0,[x0]
            lsr w0,w0,#4
            and w1,w0,#255
            ldrb w0,[sp,#47]
            orr w0,w1,w0
            strb w0,[sp,#47]
.L_412c64:

            ldrb w3,[sp,#47]
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, base64
            add x2,x1, :lo12:base64
            sxtw x1,w3
            ldrb w1,[x2,x1]
            strb w1,[x0]
            ldr x0,[sp,#8]
            cmp x0,#1
            b.ls .L_412cbc

            ldr x0,[sp,#16]
            add x0,x0,#1
            ldrb w0,[x0]
            lsl w0,w0,#2
            and w2,w0,#60
            adrp x0, base64
            add x1,x0, :lo12:base64
            sxtw x0,w2
            ldrb w1,[x1,x0]
            b .L_412cc0
.L_412cbc:

            mov w1,#61
.L_412cc0:

            ldr x0,[sp,#24]
            add x2,x0,#1
            str x2,[sp,#24]
            strb w1,[x0]
            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            mov w1,#61
            strb w1,[x0]
.L_412ce4:

            ldr x0,[sp,#24]
            strb wzr,[x0]
            nop
            nop
            nop
            nop
            add sp,sp,#48
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size to_base64, . - to_base64
.align 3
#-----------------------------------
.globl from_base64
.type from_base64, @function
#-----------------------------------
from_base64:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp x19,x20,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 19, -64
.cfi_offset 20, -56
            stp x21,x22,[sp,#16]
.cfi_offset 21, -48
.cfi_offset 22, -40
            str x0,[sp,#40]
            str x1,[sp,#32]
            str wzr,[sp,#60]
.L_412d0c:

            ldr x0,[sp,#32]
            ldrb w22,[x0]
            sxtb w0,w22
            cmp w0,#0
            b.lt .L_412d3c

            mov w1,w22
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            cmn w0,#1
            b.ne .L_412d44
.L_412d3c:

            mov w0,#-1
            b .L_412f68
.L_412d44:

            ldr x0,[sp,#32]
            add x0,x0,#1
            ldrb w21,[x0]
            sxtb w0,w21
            cmp w0,#0
            b.lt .L_412d78

            mov w1,w21
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            cmn w0,#1
            b.ne .L_412d80
.L_412d78:

            mov w0,#-1
            b .L_412f68
.L_412d80:

            ldr x0,[sp,#32]
            add x0,x0,#2
            ldrb w20,[x0]
            sxtb w0,w20
            cmp w0,#0
            b.lt .L_412dbc

            cmp w20,#61
            b.eq .L_412dc4

            mov w1,w20
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            cmn w0,#1
            b.ne .L_412dc4
.L_412dbc:

            mov w0,#-1
            b .L_412f68
.L_412dc4:

            ldr x0,[sp,#32]
            add x0,x0,#3
            ldrb w19,[x0]
            sxtb w0,w19
            cmp w0,#0
            b.lt .L_412e00

            cmp w19,#61
            b.eq .L_412e08

            mov w1,w19
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            cmn w0,#1
            b.ne .L_412e08
.L_412e00:

            mov w0,#-1
            b .L_412f68
.L_412e08:

            ldr x0,[sp,#32]
            add x0,x0,#4
            str x0,[sp,#32]
            mov w1,w22
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtb w0,w0
            ubfiz w0,w0,#2,#6
            sxtb w1,w0
            mov w2,w21
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            asr w0,w0,#4
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w2,w0
            ldr x0,[sp,#40]
            add x1,x0,#1
            str x1,[sp,#40]
            and w1,w2,#255
            strb w1,[x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
            cmp w20,#61
            b.eq .L_412f4c

            mov w1,w21
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtb w0,w0
            ubfiz w0,w0,#4,#4
            sxtb w1,w0
            mov w2,w20
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            asr w0,w0,#2
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w2,w0
            ldr x0,[sp,#40]
            add x1,x0,#1
            str x1,[sp,#40]
            and w1,w2,#255
            strb w1,[x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
            cmp w19,#61
            b.eq .L_412f4c

            mov w1,w20
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtb w0,w0
            ubfiz w0,w0,#6,#2
            sxtb w1,w0
            mov w2,w19
            adrp x0, index64
            add x0,x0, :lo12:index64
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            sxtb w0,w0
            orr w0,w1,w0
            sxtb w2,w0
            ldr x0,[sp,#40]
            add x1,x0,#1
            str x1,[sp,#40]
            and w1,w2,#255
            strb w1,[x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_412f4c:

            ldr x0,[sp,#32]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_412f64

            cmp w19,#61
            b.ne .L_412d0c
.L_412f64:

            ldr w0,[sp,#60]
.L_412f68:

            ldp x21,x22,[sp,#16]
            ldp x19,x20,[sp],#64
.cfi_restore 20
.cfi_restore 19
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size from_base64, . - from_base64
.align 2
#-----------------------------------
.globl getrandom64
.type getrandom64, @function
#-----------------------------------
getrandom64:

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
            str xzr,[sp,#32]
            str wzr,[sp,#60]
            adrp x0, .L_41cf18
            add x1,x0, :lo12:.L_41cf18
            adrp x0, .L_41cf20
            add x0,x0, :lo12:.L_41cf20
            bl fopen

            str x0,[sp,#48]
            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_413018

            add x0,sp,#32
            ldr x3,[sp,#48]
            mov x2,#1
            mov x1,#8
            bl fread

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#1
            b.ne .L_412fdc

            mov w0,#1
            str w0,[sp,#60]
            b .L_41300c
.L_412fdc:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_41300c

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_41cf30
            add x0,x0, :lo12:.L_41cf30
            bl printf
.L_41300c:

            ldr x0,[sp,#48]
            bl fclose

            b .L_413038
.L_413018:

            adrp x0, debug
            add x0,x0, :lo12:debug
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_413038

            adrp x0, .L_41cf58
            add x0,x0, :lo12:.L_41cf58
            bl puts
.L_413038:

            ldr w0,[sp,#60]
            cmp w0,#0
            b.ne .L_413058

            bl random

            lsl x19,x0,#32
            bl random

            orr x0,x19,x0
            str x0,[sp,#32]
.L_413058:

            ldr x0,[sp,#32]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size getrandom64, . - getrandom64
.align 3
#-----------------------------------
.globl write_wrapper
.type write_wrapper, @function
#-----------------------------------
write_wrapper:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-96]!
.cfi_def_cfa_offset 96
.cfi_offset 29, -96
.cfi_offset 30, -88
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -80
            str w0,[sp,#60]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str xzr,[sp,#88]
            mov x0,#50
            str x0,[sp,#64]
            str xzr,[sp,#80]
            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_4130a8

            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_4130b0
.L_4130a8:

            mov x0,#0
            b .L_4131ac
.L_4130b0:

            str xzr,[sp,#72]
            b .L_41310c
.L_4130b8:

            ldr x1,[sp,#48]
            ldr x0,[sp,#80]
            add x3,x1,x0
            ldr x1,[sp,#40]
            ldr x0,[sp,#80]
            sub x0,x1,x0
            mov x2,x0
            mov x1,x3
            ldr w0,[sp,#60]
            bl write

            str x0,[sp,#88]
            ldr x0,[sp,#88]
            cmp x0,#0
            b.lt .L_413100

            ldr x0,[sp,#88]
            ldr x1,[sp,#80]
            add x0,x1,x0
            str x0,[sp,#80]
.L_413100:

            ldr x0,[sp,#72]
            add x0,x0,#1
            str x0,[sp,#72]
.L_41310c:

            ldr x1,[sp,#72]
            ldr x0,[sp,#64]
            cmp x1,x0
            b.hs .L_413138

            ldr x1,[sp,#80]
            ldr x0,[sp,#40]
            cmp x1,x0
            b.hs .L_413138

            ldr x0,[sp,#88]
            cmp x0,#0
            b.ge .L_4130b8
.L_413138:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.ge .L_413174

            bl __errno_location

            ldr w19,[x0]
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x3,x0
            mov w2,w19
            adrp x0, .L_41cf88
            add x1,x0, :lo12:.L_41cf88
            mov w0,#3
            bl syslog

            b .L_4131a8
.L_413174:

            ldr x0,[sp,#80]
            str x0,[sp,#88]
            ldr x1,[sp,#80]
            ldr x0,[sp,#40]
            cmp x1,x0
            b.hs .L_4131a8

            ldr x4,[sp,#64]
            ldr x3,[sp,#40]
            ldr x2,[sp,#80]
            adrp x0, .L_41cfb0
            add x1,x0, :lo12:.L_41cfb0
            mov w0,#3
            bl syslog
.L_4131a8:

            ldr x0,[sp,#88]
.L_4131ac:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size write_wrapper, . - write_wrapper
.align 3
#-----------------------------------
.globl gl_des_is_weak_key
.type gl_des_is_weak_key, @function
#-----------------------------------
gl_des_is_weak_key:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#24]
            str wzr,[sp,#60]
            b .L_4131fc
.L_4131cc:

            ldrsw x0,[sp,#60]
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            and w0,w0,#4294967294
            and w2,w0,#255
            ldrsw x0,[sp,#60]
            add x1,sp,#32
            strb w2,[x1,x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_4131fc:

            ldr w0,[sp,#60]
            cmp w0,#7
            b.le .L_4131cc

            str wzr,[sp,#56]
            mov w0,#63
            str w0,[sp,#52]
            b .L_413294
.L_413218:

            ldr w1,[sp,#56]
            ldr w0,[sp,#52]
            add w0,w1,w0
            lsr w1,w0,#31
            add w0,w1,w0
            asr w0,w0,#1
            str w0,[sp,#48]
            ldrsw x0,[sp,#48]
            lsl x1,x0,#3
            adrp x0, weak_keys
            add x0,x0, :lo12:weak_keys
            add x1,x1,x0
            add x0,sp,#32
            mov x2,#8
            bl memcmp

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.ne .L_41326c

            mov w0,#1
            b .L_4132a8
.L_41326c:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.le .L_413288

            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#56]
            b .L_413294
.L_413288:

            ldr w0,[sp,#48]
            sub w0,w0,#1
            str w0,[sp,#52]
.L_413294:

            ldr w1,[sp,#56]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.le .L_413218

            mov w0,#0
.L_4132a8:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gl_des_is_weak_key, . - gl_des_is_weak_key
#-----------------------------------
.type des_key_schedule, @function
#-----------------------------------
des_key_schedule:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            ldrb w0,[x0]
            lsl w1,w0,#24
            ldr x0,[sp,#24]
            add x0,x0,#1
            ldrb w0,[x0]
            lsl w0,w0,#16
            orr w1,w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#2
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            ldr x1,[sp,#24]
            add x1,x1,#3
            ldrb w1,[x1]
            orr w0,w0,w1
            str w0,[sp,#44]
            ldr x0,[sp,#24]
            add x0,x0,#4
            ldrb w0,[x0]
            lsl w1,w0,#24
            ldr x0,[sp,#24]
            add x0,x0,#5
            ldrb w0,[x0]
            lsl w0,w0,#16
            orr w1,w1,w0
            ldr x0,[sp,#24]
            add x0,x0,#6
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            ldr x1,[sp,#24]
            add x1,x1,#7
            ldrb w1,[x1]
            orr w0,w0,w1
            str w0,[sp,#40]
            ldr w0,[sp,#40]
            lsr w1,w0,#4
            ldr w0,[sp,#44]
            eor w0,w1,w0
            and w0,w0,#252645135
            str w0,[sp,#20]
            ldr w1,[sp,#44]
            ldr w0,[sp,#20]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#20]
            lsl w0,w0,#4
            ldr w1,[sp,#40]
            eor w0,w1,w0
            str w0,[sp,#40]
            ldr w1,[sp,#40]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            and w0,w0,#269488144
            str w0,[sp,#20]
            ldr w1,[sp,#44]
            ldr w0,[sp,#20]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w1,[sp,#40]
            ldr w0,[sp,#20]
            eor w0,w1,w0
            str w0,[sp,#40]
            ldr w0,[sp,#44]
            and w1,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            lsl w1,w0,#3
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#2
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#1
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#5
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#7
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#13
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#6
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#21
            and w2,w0,#15
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#5
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w2,w0,#29
            adrp x0, leftkey_swap
            add x0,x0, :lo12:leftkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#4
            orr w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w0,w0,#268435455
            str w0,[sp,#44]
            ldr w0,[sp,#40]
            lsr w0,w0,#1
            and w1,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            lsl w1,w0,#3
            ldr w0,[sp,#40]
            lsr w0,w0,#9
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#2
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#17
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#1
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#25
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#4
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#7
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#12
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#6
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#20
            and w2,w0,#15
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#5
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w2,w0,#28
            adrp x0, rightkey_swap
            add x0,x0, :lo12:rightkey_swap
            mov w2,w2
            ldr w0,[x0,x2,lsl #2]
            lsl w0,w0,#4
            orr w0,w1,w0
            str w0,[sp,#40]
            ldr w0,[sp,#40]
            and w0,w0,#268435455
            str w0,[sp,#40]
            str wzr,[sp,#36]
            b .L_413998
.L_413614:

            adrp x0, encrypt_rotate_tab
            add x1,x0, :lo12:encrypt_rotate_tab
            ldrsw x0,[sp,#36]
            ldrb w0,[x1,x0]
            mov w1,w0
            ldr w0,[sp,#44]
            lsl w1,w0,w1
            adrp x0, encrypt_rotate_tab
            add x2,x0, :lo12:encrypt_rotate_tab
            ldrsw x0,[sp,#36]
            ldrb w0,[x2,x0]
            mov w2,w0
            mov w0,#28
            sub w0,w0,w2
            ldr w2,[sp,#44]
            lsr w0,w2,w0
            orr w0,w1,w0
            and w0,w0,#268435455
            str w0,[sp,#44]
            adrp x0, encrypt_rotate_tab
            add x1,x0, :lo12:encrypt_rotate_tab
            ldrsw x0,[sp,#36]
            ldrb w0,[x1,x0]
            mov w1,w0
            ldr w0,[sp,#40]
            lsl w1,w0,w1
            adrp x0, encrypt_rotate_tab
            add x2,x0, :lo12:encrypt_rotate_tab
            ldrsw x0,[sp,#36]
            ldrb w0,[x2,x0]
            mov w2,w0
            mov w0,#28
            sub w0,w0,w2
            ldr w2,[sp,#40]
            lsr w0,w2,w0
            orr w0,w1,w0
            and w0,w0,#268435455
            str w0,[sp,#40]
            ldr w0,[sp,#44]
            lsl w1,w0,#4
            mov w0,#603979776
            and w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#28
            and w0,w0,#268435456
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#14
            and w0,w0,#134217728
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w2,w0,#18
            mov w0,#34078720
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#6
            and w0,w0,#16777216
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#9
            and w0,w0,#2097152
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#1
            and w0,w0,#1048576
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#10
            and w0,w0,#262144
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#2
            and w0,w0,#131072
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#10
            and w0,w0,#65536
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#13
            and w0,w0,#8192
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#4
            and w0,w0,#4096
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsl w0,w0,#6
            and w0,w0,#2048
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#1
            and w0,w0,#1024
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#14
            and w0,w0,#512
            orr w1,w1,w0
            ldr w0,[sp,#40]
            and w0,w0,#256
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#5
            and w0,w0,#32
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#10
            and w0,w0,#16
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#3
            and w0,w0,#8
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#18
            and w0,w0,#4
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#26
            and w0,w0,#2
            orr w2,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#24
            and w1,w0,#1
            ldr x0,[sp]
            add x3,x0,#4
            str x3,[sp]
            orr w1,w2,w1
            str w1,[x0]
            ldr w0,[sp,#44]
            lsl w0,w0,#15
            and w1,w0,#536870912
            ldr w0,[sp,#44]
            lsl w0,w0,#17
            and w0,w0,#268435456
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#10
            and w0,w0,#134217728
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#22
            and w0,w0,#67108864
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#2
            and w0,w0,#33554432
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#1
            and w0,w0,#16777216
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#16
            and w0,w0,#2097152
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#11
            and w0,w0,#1048576
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#3
            and w0,w0,#524288
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#6
            and w0,w0,#262144
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsl w0,w0,#15
            and w0,w0,#131072
            orr w1,w1,w0
            ldr w0,[sp,#44]
            lsr w0,w0,#4
            and w0,w0,#65536
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#2
            and w0,w0,#8192
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsl w0,w0,#8
            and w0,w0,#4096
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w2,w0,#14
            mov w0,#2056
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#9
            and w0,w0,#1024
            orr w1,w1,w0
            ldr w0,[sp,#40]
            and w0,w0,#512
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsl w0,w0,#7
            and w0,w0,#256
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#7
            and w0,w0,#32
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsr w2,w0,#3
            mov w0,#17
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#40]
            lsl w0,w0,#2
            and w0,w0,#4
            orr w2,w1,w0
            ldr w0,[sp,#40]
            lsr w0,w0,#21
            and w1,w0,#2
            ldr x0,[sp]
            add x3,x0,#4
            str x3,[sp]
            orr w1,w2,w1
            str w1,[x0]
            ldr w0,[sp,#36]
            add w0,w0,#1
            str w0,[sp,#36]
.L_413998:

            ldr w0,[sp,#36]
            cmp w0,#15
            b.le .L_413614

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            add sp,sp,#48
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size des_key_schedule, . - des_key_schedule
.align 2
#-----------------------------------
.globl gl_des_setkey
.type gl_des_setkey, @function
#-----------------------------------
gl_des_setkey:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            mov x1,x0
            ldr x0,[sp,#16]
            bl des_key_schedule

            str wzr,[sp,#44]
            b .L_413a40
.L_4139dc:

            mov w1,#30
            ldr w0,[sp,#44]
            sub w1,w1,w0
            ldr x0,[sp,#24]
            sxtw x1,w1
            ldr w2,[x0,x1,lsl #2]
            ldr x0,[sp,#24]
            ldrsw x1,[sp,#44]
            add x1,x1,#32
            str w2,[x0,x1,lsl #2]
            mov w1,#31
            ldr w0,[sp,#44]
            sub w1,w1,w0
            ldr w0,[sp,#44]
            add w3,w0,#1
            ldr x0,[sp,#24]
            sxtw x1,w1
            ldr w2,[x0,x1,lsl #2]
            ldr x0,[sp,#24]
            sxtw x1,w3
            add x1,x1,#32
            str w2,[x0,x1,lsl #2]
            ldr w0,[sp,#44]
            add w0,w0,#2
            str w0,[sp,#44]
.L_413a40:

            ldr w0,[sp,#44]
            cmp w0,#31
            b.le .L_4139dc

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gl_des_setkey, . - gl_des_setkey
.align 2
#-----------------------------------
.globl gl_des_makekey
.type gl_des_makekey, @function
#-----------------------------------
gl_des_makekey:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#8
            b.eq .L_413a84

            mov w0,#0
            b .L_413ab8
.L_413a84:

            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl gl_des_setkey

            ldr x0,[sp,#32]
            bl gl_des_is_weak_key

            and w0,w0,#255
            cmp w0,#0
            cset w0,ne
            and w0,w0,#255
            eor w0,w0,#1
            and w0,w0,#255
            and w0,w0,#1
            and w0,w0,#255
.L_413ab8:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gl_des_makekey, . - gl_des_makekey
.align 4
#-----------------------------------
.globl gl_des_ecb_crypt
.type gl_des_ecb_crypt, @function
#-----------------------------------
gl_des_ecb_crypt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#80
.cfi_def_cfa_offset 80
            str x0,[sp,#24]
            str x1,[sp,#16]
            str x2,[sp,#8]
            str w3,[sp,#4]
            ldr x0,[sp,#16]
            str x0,[sp,#72]
            ldr x0,[sp,#8]
            str x0,[sp,#64]
            ldr w0,[sp,#4]
            cmp w0,#0
            b.eq .L_413afc

            ldr x0,[sp,#24]
            add x0,x0,#128
            b .L_413b00
.L_413afc:

            ldr x0,[sp,#24]
.L_413b00:

            str x0,[sp,#56]
            ldr x0,[sp,#72]
            ldrb w0,[x0]
            lsl w1,w0,#24
            ldr x0,[sp,#72]
            add x0,x0,#1
            ldrb w0,[x0]
            lsl w0,w0,#16
            orr w1,w1,w0
            ldr x0,[sp,#72]
            add x0,x0,#2
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            ldr x1,[sp,#72]
            add x1,x1,#3
            ldrb w1,[x1]
            orr w0,w0,w1
            str w0,[sp,#52]
            ldr x0,[sp,#72]
            add x0,x0,#4
            ldrb w0,[x0]
            lsl w1,w0,#24
            ldr x0,[sp,#72]
            add x0,x0,#5
            ldrb w0,[x0]
            lsl w0,w0,#16
            orr w1,w1,w0
            ldr x0,[sp,#72]
            add x0,x0,#6
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            ldr x1,[sp,#72]
            add x1,x1,#7
            ldrb w1,[x1]
            orr w0,w0,w1
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            lsr w1,w0,#4
            ldr w0,[sp,#48]
            eor w0,w1,w0
            and w0,w0,#252645135
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsl w0,w0,#4
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            lsr w1,w0,#16
            ldr w0,[sp,#48]
            eor w0,w1,w0
            and w0,w0,#65535
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsl w0,w0,#16
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            lsr w1,w0,#2
            ldr w0,[sp,#52]
            eor w0,w1,w0
            and w0,w0,#858993459
            str w0,[sp,#44]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsl w0,w0,#2
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            lsr w1,w0,#8
            ldr w0,[sp,#52]
            eor w0,w1,w0
            and w0,w0,#16711935
            str w0,[sp,#44]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsl w0,w0,#8
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            ror w0,w0,#31
            str w0,[sp,#48]
            ldr w1,[sp,#52]
            ldr w0,[sp,#48]
            eor w0,w1,w0
            and w0,w0,#2863311530
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            ror w0,w0,#31
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr x0,[sp,#56]
            add x1,x0,#4
            str x1,[sp,#56]
            ldr w0,[x0]
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox8
            add x0,x0, :lo12:sbox8
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox6
            add x0,x0, :lo12:sbox6
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox4
            add x0,x0, :lo12:sbox4
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox2
            add x0,x0, :lo12:sbox2
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#52]
            ror w1,w0,#4
            ldr x0,[sp,#56]
            add x2,x0,#4
            str x2,[sp,#56]
            ldr w0,[x0]
            eor w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            and w1,w0,#63
            adrp x0, sbox7
            add x0,x0, :lo12:sbox7
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#8
            and w1,w0,#63
            adrp x0, sbox5
            add x0,x0, :lo12:sbox5
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#16
            and w1,w0,#63
            adrp x0, sbox3
            add x0,x0, :lo12:sbox3
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsr w0,w0,#24
            and w1,w0,#63
            adrp x0, sbox1
            add x0,x0, :lo12:sbox1
            mov w1,w1
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            ror w0,w0,#1
            str w0,[sp,#48]
            ldr w1,[sp,#48]
            ldr w0,[sp,#52]
            eor w0,w1,w0
            and w0,w0,#2863311530
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            ror w0,w0,#1
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            lsr w1,w0,#8
            ldr w0,[sp,#48]
            eor w0,w1,w0
            and w0,w0,#16711935
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsl w0,w0,#8
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            lsr w1,w0,#2
            ldr w0,[sp,#48]
            eor w0,w1,w0
            and w0,w0,#858993459
            str w0,[sp,#44]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#44]
            lsl w0,w0,#2
            ldr w1,[sp,#52]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            lsr w1,w0,#16
            ldr w0,[sp,#52]
            eor w0,w1,w0
            and w0,w0,#65535
            str w0,[sp,#44]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsl w0,w0,#16
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            lsr w1,w0,#4
            ldr w0,[sp,#52]
            eor w0,w1,w0
            and w0,w0,#252645135
            str w0,[sp,#44]
            ldr w1,[sp,#52]
            ldr w0,[sp,#44]
            eor w0,w1,w0
            str w0,[sp,#52]
            ldr w0,[sp,#44]
            lsl w0,w0,#4
            ldr w1,[sp,#48]
            eor w0,w1,w0
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            lsr w0,w0,#24
            and w1,w0,#255
            ldr x0,[sp,#64]
            strb w1,[x0]
            ldr w0,[sp,#48]
            lsr w1,w0,#16
            ldr x0,[sp,#64]
            add x0,x0,#1
            and w1,w1,#255
            strb w1,[x0]
            ldr w0,[sp,#48]
            lsr w1,w0,#8
            ldr x0,[sp,#64]
            add x0,x0,#2
            and w1,w1,#255
            strb w1,[x0]
            ldr x0,[sp,#64]
            add x0,x0,#3
            ldr w1,[sp,#48]
            and w1,w1,#255
            strb w1,[x0]
            ldr w0,[sp,#52]
            lsr w1,w0,#24
            ldr x0,[sp,#64]
            add x0,x0,#4
            and w1,w1,#255
            strb w1,[x0]
            ldr w0,[sp,#52]
            lsr w1,w0,#16
            ldr x0,[sp,#64]
            add x0,x0,#5
            and w1,w1,#255
            strb w1,[x0]
            ldr w0,[sp,#52]
            lsr w1,w0,#8
            ldr x0,[sp,#64]
            add x0,x0,#6
            and w1,w1,#255
            strb w1,[x0]
            ldr x0,[sp,#64]
            add x0,x0,#7
            ldr w1,[sp,#52]
            and w1,w1,#255
            strb w1,[x0]
            nop
            nop
            nop
            nop
            add sp,sp,#80
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gl_des_ecb_crypt, . - gl_des_ecb_crypt
.align 4
#-----------------------------------
.globl md4_process_block
.type md4_process_block, @function
#-----------------------------------
md4_process_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#144
.cfi_def_cfa_offset 144
            str x0,[sp,#24]
            str x1,[sp,#16]
            str x2,[sp,#8]
            ldr x0,[sp,#24]
            str x0,[sp,#136]
            ldr x0,[sp,#16]
            lsr x0,x0,#2
            str x0,[sp,#104]
            ldr x0,[sp,#104]
            lsl x0,x0,#2
            ldr x1,[sp,#136]
            add x0,x1,x0
            str x0,[sp,#96]
            ldr x0,[sp,#8]
            ldr w0,[x0]
            str w0,[sp,#132]
            ldr x0,[sp,#8]
            ldr w0,[x0,#4]
            str w0,[sp,#128]
            ldr x0,[sp,#8]
            ldr w0,[x0,#8]
            str w0,[sp,#124]
            ldr x0,[sp,#8]
            ldr w0,[x0,#12]
            str w0,[sp,#120]
            ldr x0,[sp,#8]
            ldr w0,[x0,#16]
            ldr x1,[sp,#16]
            add w1,w0,w1
            ldr x0,[sp,#8]
            str w1,[x0,#16]
            ldr x0,[sp,#8]
            ldr w0,[x0,#16]
            mov w0,w0
            ldr x1,[sp,#16]
            cmp x1,x0
            b.ls .L_4162d4

            ldr x0,[sp,#8]
            ldr w0,[x0,#20]
            add w1,w0,#1
            ldr x0,[sp,#8]
            str w1,[x0,#20]
            b .L_4162d4
.L_4156c0:

            str wzr,[sp,#116]
            b .L_4156f8
.L_4156c8:

            ldr x0,[sp,#136]
            ldr w2,[x0]
            ldrsw x0,[sp,#116]
            lsl x0,x0,#2
            add x1,sp,#32
            str w2,[x1,x0]
            ldr x0,[sp,#136]
            add x0,x0,#4
            str x0,[sp,#136]
            ldr w0,[sp,#116]
            add w0,w0,#1
            str w0,[sp,#116]
.L_4156f8:

            ldr w0,[sp,#116]
            cmp w0,#15
            b.le .L_4156c8

            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#32]
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#36]
            add w0,w1,w0
            ror w0,w0,#25
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#40]
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#44]
            add w0,w1,w0
            ror w0,w0,#13
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#48]
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#52]
            add w0,w1,w0
            ror w0,w0,#25
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#56]
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#60]
            add w0,w1,w0
            ror w0,w0,#13
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#64]
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#68]
            add w0,w1,w0
            ror w0,w0,#25
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#72]
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#76]
            add w0,w1,w0
            ror w0,w0,#13
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#80]
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#84]
            add w0,w1,w0
            ror w0,w0,#25
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#88]
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#92]
            add w0,w1,w0
            ror w0,w0,#13
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            orr w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w2,[sp,#124]
            ldr w0,[sp,#120]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#32]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            orr w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w2,[sp,#128]
            ldr w0,[sp,#124]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#48]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#27
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            orr w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w2,[sp,#132]
            ldr w0,[sp,#128]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#64]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            orr w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w2,[sp,#120]
            ldr w0,[sp,#132]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#80]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#19
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            orr w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w2,[sp,#124]
            ldr w0,[sp,#120]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#36]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            orr w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w2,[sp,#128]
            ldr w0,[sp,#124]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#27
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            orr w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w2,[sp,#132]
            ldr w0,[sp,#128]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#68]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            orr w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w2,[sp,#120]
            ldr w0,[sp,#132]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#84]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#19
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            orr w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w2,[sp,#124]
            ldr w0,[sp,#120]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#40]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            orr w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w2,[sp,#128]
            ldr w0,[sp,#124]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#56]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#27
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            orr w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w2,[sp,#132]
            ldr w0,[sp,#128]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#72]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            orr w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w2,[sp,#120]
            ldr w0,[sp,#132]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#88]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#19
            str w0,[sp,#128]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            orr w1,w1,w0
            ldr w0,[sp,#128]
            and w1,w1,w0
            ldr w2,[sp,#124]
            ldr w0,[sp,#120]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#44]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            orr w1,w1,w0
            ldr w0,[sp,#132]
            and w1,w1,w0
            ldr w2,[sp,#128]
            ldr w0,[sp,#124]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#60]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#27
            str w0,[sp,#120]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            orr w1,w1,w0
            ldr w0,[sp,#120]
            and w1,w1,w0
            ldr w2,[sp,#132]
            ldr w0,[sp,#128]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#76]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#124]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            orr w1,w1,w0
            ldr w0,[sp,#124]
            and w1,w1,w0
            ldr w2,[sp,#120]
            ldr w0,[sp,#132]
            and w0,w2,w0
            orr w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#92]
            add w1,w1,w0
            mov w0,#31129
            movk w0,#23170,lsl #16
            add w0,w1,w0
            ror w0,w0,#19
            str w0,[sp,#128]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#32]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#64]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#120]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#48]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#80]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#17
            str w0,[sp,#128]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#40]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#72]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#120]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#56]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#88]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#17
            str w0,[sp,#128]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#36]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#68]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#120]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#84]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#17
            str w0,[sp,#128]
            ldr w1,[sp,#128]
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr w0,[sp,#44]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#29
            str w0,[sp,#132]
            ldr w1,[sp,#132]
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            eor w1,w1,w0
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr w0,[sp,#76]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#23
            str w0,[sp,#120]
            ldr w1,[sp,#120]
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            eor w1,w1,w0
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr w0,[sp,#60]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#21
            str w0,[sp,#124]
            ldr w1,[sp,#124]
            ldr w0,[sp,#120]
            eor w1,w1,w0
            ldr w0,[sp,#132]
            eor w1,w1,w0
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr w0,[sp,#92]
            add w1,w1,w0
            mov w0,#60321
            movk w0,#28377,lsl #16
            add w0,w1,w0
            ror w0,w0,#17
            str w0,[sp,#128]
            ldr x0,[sp,#8]
            ldr w1,[x0]
            ldr w0,[sp,#132]
            add w1,w1,w0
            ldr x0,[sp,#8]
            str w1,[x0]
            ldr x0,[sp,#8]
            ldr w0,[x0]
            str w0,[sp,#132]
            ldr x0,[sp,#8]
            ldr w1,[x0,#4]
            ldr w0,[sp,#128]
            add w1,w1,w0
            ldr x0,[sp,#8]
            str w1,[x0,#4]
            ldr x0,[sp,#8]
            ldr w0,[x0,#4]
            str w0,[sp,#128]
            ldr x0,[sp,#8]
            ldr w1,[x0,#8]
            ldr w0,[sp,#124]
            add w1,w1,w0
            ldr x0,[sp,#8]
            str w1,[x0,#8]
            ldr x0,[sp,#8]
            ldr w0,[x0,#8]
            str w0,[sp,#124]
            ldr x0,[sp,#8]
            ldr w1,[x0,#12]
            ldr w0,[sp,#120]
            add w1,w1,w0
            ldr x0,[sp,#8]
            str w1,[x0,#12]
            ldr x0,[sp,#8]
            ldr w0,[x0,#12]
            str w0,[sp,#120]
.L_4162d4:

            ldr x1,[sp,#136]
            ldr x0,[sp,#96]
            cmp x1,x0
            b.lo .L_4156c0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            add sp,sp,#144
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_process_block, . - md4_process_block
.align 2
#-----------------------------------
.globl md4_init_ctx
.type md4_init_ctx, @function
#-----------------------------------
md4_init_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str x0,[sp,#8]
            ldr x0,[sp,#8]
            mov w1,#8961
            movk w1,#26437,lsl #16
            str w1,[x0]
            ldr x0,[sp,#8]
            mov w1,#43913
            movk w1,#61389,lsl #16
            str w1,[x0,#4]
            ldr x0,[sp,#8]
            mov w1,#56574
            movk w1,#39098,lsl #16
            str w1,[x0,#8]
            ldr x0,[sp,#8]
            mov w1,#21622
            movk w1,#4146,lsl #16
            str w1,[x0,#12]
            ldr x0,[sp,#8]
            str wzr,[x0,#20]
            ldr x0,[sp,#8]
            ldr w1,[x0,#20]
            ldr x0,[sp,#8]
            str w1,[x0,#16]
            ldr x0,[sp,#8]
            str wzr,[x0,#24]
            nop
            nop
            nop
            nop
            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_init_ctx, . - md4_init_ctx
.align 3
#-----------------------------------
.globl md4_read_ctx
.type md4_read_ctx, @function
#-----------------------------------
md4_read_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            ldr w1,[x0]
            ldr x0,[sp]
            str w1,[x0]
            ldr x0,[sp]
            add x0,x0,#4
            ldr x1,[sp,#8]
            ldr w1,[x1,#4]
            str w1,[x0]
            ldr x0,[sp]
            add x0,x0,#8
            ldr x1,[sp,#8]
            ldr w1,[x1,#8]
            str w1,[x0]
            ldr x0,[sp]
            add x0,x0,#12
            ldr x1,[sp,#8]
            ldr w1,[x1,#12]
            str w1,[x0]
            ldr x0,[sp]
            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_read_ctx, . - md4_read_ctx
.align 2
#-----------------------------------
.globl md4_finish_ctx
.type md4_finish_ctx, @function
#-----------------------------------
md4_finish_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            str w0,[sp,#44]
            ldr x0,[sp,#24]
            ldr w1,[x0,#16]
            ldr w0,[sp,#44]
            add w1,w1,w0
            ldr x0,[sp,#24]
            str w1,[x0,#16]
            ldr x0,[sp,#24]
            ldr w0,[x0,#16]
            ldr w1,[sp,#44]
            cmp w1,w0
            b.ls .L_416428

            ldr x0,[sp,#24]
            ldr w0,[x0,#20]
            add w1,w0,#1
            ldr x0,[sp,#24]
            str w1,[x0,#20]
.L_416428:

            ldr w0,[sp,#44]
            cmp w0,#55
            b.ls .L_416448

            mov w1,#120
            ldr w0,[sp,#44]
            sub w0,w1,w0
            mov w0,w0
            b .L_416458
.L_416448:

            mov w1,#56
            ldr w0,[sp,#44]
            sub w0,w1,w0
            mov w0,w0
.L_416458:

            str x0,[sp,#32]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr w0,[sp,#44]
            add x3,x1,x0
            ldr x2,[sp,#32]
            adrp x0, fillbuf
            add x1,x0, :lo12:fillbuf
            mov x0,x3
            bl memcpy

            ldr x0,[sp,#24]
            ldr w1,[x0,#16]
            ldr w2,[sp,#44]
            ldr x0,[sp,#32]
            add x0,x2,x0
            lsr x0,x0,#2
            lsl w2,w1,#3
            ldr x1,[sp,#24]
            add x0,x0,#4
            lsl x0,x0,#2
            add x0,x1,x0
            str w2,[x0,#12]
            ldr x0,[sp,#24]
            ldr w0,[x0,#20]
            lsl w2,w0,#3
            ldr x0,[sp,#24]
            ldr w0,[x0,#16]
            lsr w1,w0,#29
            ldr w3,[sp,#44]
            ldr x0,[sp,#32]
            add x0,x3,x0
            lsr x0,x0,#2
            add x0,x0,#1
            orr w2,w2,w1
            ldr x1,[sp,#24]
            add x0,x0,#4
            lsl x0,x0,#2
            add x0,x1,x0
            str w2,[x0,#12]
            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr w1,[sp,#44]
            ldr x0,[sp,#32]
            add x0,x1,x0
            add x0,x0,#8
            ldr x2,[sp,#24]
            mov x1,x0
            mov x0,x3
            bl md4_process_block

            ldr x1,[sp,#16]
            ldr x0,[sp,#24]
            bl md4_read_ctx

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_finish_ctx, . - md4_finish_ctx
.align 4
#-----------------------------------
.globl md4_process_bytes
.type md4_process_bytes, @function
#-----------------------------------
md4_process_bytes:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            cmp w0,#0
            b.eq .L_416660

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            str x0,[sp,#64]
            mov x1,#128
            ldr x0,[sp,#64]
            sub x0,x1,x0
            ldr x2,[sp,#32]
            ldr x1,[sp,#32]
            cmp x2,x0
            csel x0,x1,x0,ls
            str x0,[sp,#56]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x0,[sp,#64]
            add x0,x1,x0
            ldr x2,[sp,#56]
            ldr x1,[sp,#40]
            bl memcpy

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            ldr x1,[sp,#56]
            add w1,w0,w1
            ldr x0,[sp,#24]
            str w1,[x0,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            cmp w0,#64
            b.ls .L_416640

            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            and x0,x0,#4294967232
            ldr x2,[sp,#24]
            mov x1,x0
            mov x0,x3
            bl md4_process_block

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            and w1,w0,#63
            ldr x0,[sp,#24]
            str w1,[x0,#24]
            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x2,[sp,#64]
            ldr x0,[sp,#56]
            add x0,x2,x0
            and x0,x0,#-64
            add x1,x1,x0
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            mov x2,x0
            mov x0,x3
            bl memcpy
.L_416640:

            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr x1,[sp,#32]
            ldr x0,[sp,#56]
            sub x0,x1,x0
            str x0,[sp,#32]
.L_416660:

            ldr x0,[sp,#32]
            cmp x0,#63
            b.ls .L_416700

            ldr x0,[sp,#40]
            and x0,x0,#3
            cmp x0,#0
            b.eq .L_4166c8

            b .L_4166b8
.L_416680:

            ldr x0,[sp,#24]
            add x0,x0,#28
            mov x2,#64
            ldr x1,[sp,#40]
            bl memcpy

            ldr x2,[sp,#24]
            mov x1,#64
            bl md4_process_block

            ldr x0,[sp,#40]
            add x0,x0,#64
            str x0,[sp,#40]
            ldr x0,[sp,#32]
            sub x0,x0,#64
            str x0,[sp,#32]
.L_4166b8:

            ldr x0,[sp,#32]
            cmp x0,#64
            b.hi .L_416680

            b .L_416700
.L_4166c8:

            ldr x0,[sp,#32]
            and x0,x0,#-64
            ldr x2,[sp,#24]
            mov x1,x0
            ldr x0,[sp,#40]
            bl md4_process_block

            ldr x0,[sp,#32]
            and x0,x0,#-64
            ldr x1,[sp,#40]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr x0,[sp,#32]
            and x0,x0,#63
            str x0,[sp,#32]
.L_416700:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_4167a4

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            str x0,[sp,#72]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldr x2,[sp,#32]
            ldr x1,[sp,#40]
            bl memcpy

            ldr x1,[sp,#72]
            ldr x0,[sp,#32]
            add x0,x1,x0
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            cmp x0,#63
            b.ls .L_416794

            ldr x0,[sp,#24]
            add x0,x0,#28
            ldr x2,[sp,#24]
            mov x1,#64
            bl md4_process_block

            ldr x0,[sp,#72]
            sub x0,x0,#64
            str x0,[sp,#72]
            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            add x0,x0,#92
            ldr x2,[sp,#72]
            mov x1,x0
            mov x0,x3
            bl memcpy
.L_416794:

            ldr x0,[sp,#72]
            mov w1,w0
            ldr x0,[sp,#24]
            str w1,[x0,#24]
.L_4167a4:

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_process_bytes, . - md4_process_bytes
.align 4
#-----------------------------------
.globl md4_stream
.type md4_stream, @function
#-----------------------------------
md4_stream:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x12,#4384
            sub sp,sp,x12
.cfi_def_cfa_offset 4384
            stp fp,lr,[sp]
.cfi_offset 29, -4384
.cfi_offset 30, -4376
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            add x0,sp,#1,lsl #12
            add x0,x0,#112
            bl md4_init_ctx
.L_4167d4:

            str xzr,[sp,#4376]
.L_4167d8:

            add x1,sp,#40
            ldr x0,[sp,#4376]
            add x4,x1,x0
            mov x1,#4096
            ldr x0,[sp,#4376]
            sub x0,x1,x0
            ldr x3,[sp,#24]
            mov x2,x0
            mov x1,#1
            mov x0,x4
            bl fread

            str x0,[sp,#4368]
            ldr x1,[sp,#4376]
            ldr x0,[sp,#4368]
            add x0,x1,x0
            str x0,[sp,#4376]
            ldr x0,[sp,#4376]
            cmp x0,#1,lsl #12
            b.eq .L_41685c

            ldr x0,[sp,#4368]
            cmp x0,#0
            b.ne .L_416848

            ldr x0,[sp,#24]
            bl ferror

            cmp w0,#0
            b.eq .L_41687c

            mov w0,#1
            b .L_4168c0
.L_416848:

            ldr x0,[sp,#24]
            bl feof

            cmp w0,#0
            b.ne .L_416884

            b .L_4167d8
.L_41685c:

            nop
            nop
            nop
            nop
            add x1,sp,#1,lsl #12
            add x1,x1,#112
            add x0,sp,#40
            mov x2,x1
            mov x1,#4096
            bl md4_process_block

            b .L_4167d4
.L_41687c:

            nop
            nop
            nop
            nop
            b .L_416888
.L_416884:

            nop
            nop
            nop
            nop
.L_416888:

            ldr x0,[sp,#4376]
            cmp x0,#0
            b.eq .L_4168ac

            add x1,sp,#1,lsl #12
            add x1,x1,#112
            add x0,sp,#40
            mov x2,x1
            ldr x1,[sp,#4376]
            bl md4_process_bytes
.L_4168ac:

            add x0,sp,#1,lsl #12
            add x0,x0,#112
            ldr x1,[sp,#16]
            bl md4_finish_ctx

            mov w0,#0
.L_4168c0:

            ldp fp,lr,[sp]
            mov x12,#4384
            add sp,sp,x12
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_stream, . - md4_stream
.align 4
#-----------------------------------
.globl md4_buffer
.type md4_buffer, @function
#-----------------------------------
md4_buffer:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            add x0,sp,#48
            bl md4_init_ctx

            add x0,sp,#48
            mov x2,x0
            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl md4_process_bytes

            add x0,sp,#48
            ldr x1,[sp,#24]
            bl md4_finish_ctx

            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_buffer, . - md4_buffer
.align 2
#-----------------------------------
.globl memxor
.type memxor, @function
#-----------------------------------
memxor:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#32]
            str x0,[sp,#56]
            ldr x0,[sp,#40]
            str x0,[sp,#48]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_416950

            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_4169b4
.L_416950:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4169b4

            adrp x0, .L_41dbb0
            add x3,x0, :lo12:.L_41dbb0
            mov w2,#837
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41db68
            add x0,x0, :lo12:.L_41db68
            bl __assert_fail
.L_41697c:

            ldr x0,[sp,#56]
            add x1,x0,#1
            str x1,[sp,#56]
            ldrb w2,[x0]
            ldr x0,[sp,#48]
            add x1,x0,#1
            str x1,[sp,#48]
            ldrb w1,[x0]
            eor w1,w2,w1
            and w1,w1,#255
            strb w1,[x0]
            ldr x0,[sp,#24]
            sub x0,x0,#1
            str x0,[sp,#24]
.L_4169b4:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_41697c

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size memxor, . - memxor
.align 2
#-----------------------------------
.globl hmac_md5
.type hmac_md5, @function
#-----------------------------------
hmac_md5:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#640
.cfi_def_cfa_offset 640
            stp fp,lr,[sp]
.cfi_offset 29, -640
.cfi_offset 30, -632
            mov fp,sp
            str x0,[sp,#56]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str x3,[sp,#32]
            str x4,[sp,#24]
            ldr x0,[sp,#48]
            cmp x0,#64
            b.ls .L_416a30

            add x0,sp,#64
            bl md5_init_ctx

            add x0,sp,#64
            mov x2,x0
            ldr x1,[sp,#48]
            ldr x0,[sp,#56]
            bl md5_process_bytes

            add x1,sp,#304
            add x0,sp,#64
            bl md5_finish_ctx

            add x0,sp,#304
            str x0,[sp,#56]
            mov x0,#16
            str x0,[sp,#48]
.L_416a30:

            add x0,sp,#480
            bl md5_init_ctx

            add x0,sp,#240
            mov x2,#64
            mov w1,#54
            bl memset

            add x0,sp,#240
            ldr x2,[sp,#48]
            ldr x1,[sp,#56]
            bl memxor

            add x1,sp,#480
            add x0,sp,#240
            mov x2,x1
            mov x1,#64
            bl md5_process_block

            add x0,sp,#480
            mov x2,x0
            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl md5_process_bytes

            add x1,sp,#224
            add x0,sp,#480
            bl md5_finish_ctx

            add x0,sp,#320
            bl md5_init_ctx

            add x0,sp,#240
            mov x2,#64
            mov w1,#92
            bl memset

            add x0,sp,#240
            ldr x2,[sp,#48]
            ldr x1,[sp,#56]
            bl memxor

            add x1,sp,#320
            add x0,sp,#240
            mov x2,x1
            mov x1,#64
            bl md5_process_block

            add x1,sp,#320
            add x0,sp,#224
            mov x2,x1
            mov x1,#16
            bl md5_process_bytes

            add x0,sp,#320
            ldr x1,[sp,#24]
            bl md5_finish_ctx

            mov w0,#0
            ldp fp,lr,[sp]
            add sp,sp,#640
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size hmac_md5, . - hmac_md5
.align 3
#-----------------------------------
.globl md5_init_ctx
.type md5_init_ctx, @function
#-----------------------------------
md5_init_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_416b30

            adrp x0, .L_41dbb8
            add x3,x0, :lo12:.L_41dbb8
            mov w2,#901
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41db90
            add x0,x0, :lo12:.L_41db90
            bl __assert_fail
.L_416b30:

            ldr x0,[sp,#24]
            mov w1,#8961
            movk w1,#26437,lsl #16
            str w1,[x0]
            ldr x0,[sp,#24]
            mov w1,#43913
            movk w1,#61389,lsl #16
            str w1,[x0,#4]
            ldr x0,[sp,#24]
            mov w1,#56574
            movk w1,#39098,lsl #16
            str w1,[x0,#8]
            ldr x0,[sp,#24]
            mov w1,#21622
            movk w1,#4146,lsl #16
            str w1,[x0,#12]
            ldr x0,[sp,#24]
            str wzr,[x0,#20]
            ldr x0,[sp,#24]
            ldr w1,[x0,#20]
            ldr x0,[sp,#24]
            str w1,[x0,#16]
            ldr x0,[sp,#24]
            str wzr,[x0,#24]
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_init_ctx, . - md5_init_ctx
.align 2
#-----------------------------------
.globl md5_read_ctx
.type md5_read_ctx, @function
#-----------------------------------
md5_read_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_416bd8

            adrp x0, .L_41dbc8
            add x3,x0, :lo12:.L_41dbc8
            mov w2,#919
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41db90
            add x0,x0, :lo12:.L_41db90
            bl __assert_fail
.L_416bd8:

            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_416c04

            adrp x0, .L_41dbc8
            add x3,x0, :lo12:.L_41dbc8
            mov w2,#920
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41dba0
            add x0,x0, :lo12:.L_41dba0
            bl __assert_fail
.L_416c04:

            ldr x0,[sp,#24]
            ldr w1,[x0]
            ldr x0,[sp,#16]
            str w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#4
            ldr x1,[sp,#24]
            ldr w1,[x1,#4]
            str w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#8
            ldr x1,[sp,#24]
            ldr w1,[x1,#8]
            str w1,[x0]
            ldr x0,[sp,#16]
            add x0,x0,#12
            ldr x1,[sp,#24]
            ldr w1,[x1,#12]
            str w1,[x0]
            ldr x0,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_read_ctx, . - md5_read_ctx
.align 2
#-----------------------------------
.globl md5_finish_ctx
.type md5_finish_ctx, @function
#-----------------------------------
md5_finish_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_416c98

            adrp x0, .L_41dbd8
            add x3,x0, :lo12:.L_41dbd8
            mov w2,#937
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41db90
            add x0,x0, :lo12:.L_41db90
            bl __assert_fail
.L_416c98:

            ldr x0,[sp,#16]
            cmp x0,#0
            b.ne .L_416cc4

            adrp x0, .L_41dbd8
            add x3,x0, :lo12:.L_41dbd8
            mov w2,#938
            adrp x0, .L_41db58
            add x1,x0, :lo12:.L_41db58
            adrp x0, .L_41dba0
            add x0,x0, :lo12:.L_41dba0
            bl __assert_fail
.L_416cc4:

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#55
            b.hi .L_416ce4

            mov x0,#16
            b .L_416ce8
.L_416ce4:

            mov x0,#32
.L_416ce8:

            str x0,[sp,#32]
            ldr x0,[sp,#24]
            ldr w1,[x0,#16]
            ldr w0,[sp,#44]
            add w1,w1,w0
            ldr x0,[sp,#24]
            str w1,[x0,#16]
            ldr x0,[sp,#24]
            ldr w0,[x0,#16]
            ldr w1,[sp,#44]
            cmp w1,w0
            b.ls .L_416d2c

            ldr x0,[sp,#24]
            ldr w0,[x0,#20]
            add w1,w0,#1
            ldr x0,[sp,#24]
            str w1,[x0,#20]
.L_416d2c:

            ldr x0,[sp,#24]
            ldr w1,[x0,#16]
            ldr x0,[sp,#32]
            sub x0,x0,#2
            lsl w2,w1,#3
            ldr x1,[sp,#24]
            add x0,x0,#4
            lsl x0,x0,#2
            add x0,x1,x0
            str w2,[x0,#12]
            ldr x0,[sp,#24]
            ldr w0,[x0,#20]
            lsl w2,w0,#3
            ldr x0,[sp,#24]
            ldr w0,[x0,#16]
            lsr w1,w0,#29
            ldr x0,[sp,#32]
            sub x0,x0,#1
            orr w2,w2,w1
            ldr x1,[sp,#24]
            add x0,x0,#4
            lsl x0,x0,#2
            add x0,x1,x0
            str w2,[x0,#12]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr w0,[sp,#44]
            add x3,x1,x0
            ldr x0,[sp,#32]
            sub x0,x0,#2
            lsl x1,x0,#2
            ldr w0,[sp,#44]
            sub x0,x1,x0
            mov x2,x0
            adrp x0, fillbuf
            add x1,x0, :lo12:fillbuf
            mov x0,x3
            bl memcpy

            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#32]
            lsl x0,x0,#2
            ldr x2,[sp,#24]
            mov x1,x0
            mov x0,x3
            bl md5_process_block

            ldr x1,[sp,#16]
            ldr x0,[sp,#24]
            bl md5_read_ctx

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_finish_ctx, . - md5_finish_ctx
.align 3
#-----------------------------------
.globl md5_stream
.type md5_stream, @function
#-----------------------------------
md5_stream:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x12,#4384
            sub sp,sp,x12
.cfi_def_cfa_offset 4384
            stp fp,lr,[sp]
.cfi_offset 29, -4384
.cfi_offset 30, -4376
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            add x0,sp,#1,lsl #12
            add x0,x0,#112
            bl md5_init_ctx
.L_416e1c:

            str xzr,[sp,#4376]
.L_416e20:

            add x1,sp,#40
            ldr x0,[sp,#4376]
            add x4,x1,x0
            mov x1,#4096
            ldr x0,[sp,#4376]
            sub x0,x1,x0
            ldr x3,[sp,#24]
            mov x2,x0
            mov x1,#1
            mov x0,x4
            bl fread

            str x0,[sp,#4368]
            ldr x1,[sp,#4376]
            ldr x0,[sp,#4368]
            add x0,x1,x0
            str x0,[sp,#4376]
            ldr x0,[sp,#4376]
            cmp x0,#1,lsl #12
            b.eq .L_416ea4

            ldr x0,[sp,#4368]
            cmp x0,#0
            b.ne .L_416e90

            ldr x0,[sp,#24]
            bl ferror

            cmp w0,#0
            b.eq .L_416ec4

            mov w0,#1
            b .L_416f08
.L_416e90:

            ldr x0,[sp,#24]
            bl feof

            cmp w0,#0
            b.ne .L_416ecc

            b .L_416e20
.L_416ea4:

            nop
            nop
            nop
            nop
            add x1,sp,#1,lsl #12
            add x1,x1,#112
            add x0,sp,#40
            mov x2,x1
            mov x1,#4096
            bl md5_process_block

            b .L_416e1c
.L_416ec4:

            nop
            nop
            nop
            nop
            b .L_416ed0
.L_416ecc:

            nop
            nop
            nop
            nop
.L_416ed0:

            ldr x0,[sp,#4376]
            cmp x0,#0
            b.eq .L_416ef4

            add x1,sp,#1,lsl #12
            add x1,x1,#112
            add x0,sp,#40
            mov x2,x1
            ldr x1,[sp,#4376]
            bl md5_process_bytes
.L_416ef4:

            add x0,sp,#1,lsl #12
            add x0,x0,#112
            ldr x1,[sp,#16]
            bl md5_finish_ctx

            mov w0,#0
.L_416f08:

            ldp fp,lr,[sp]
            mov x12,#4384
            add sp,sp,x12
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_stream, . - md5_stream
.align 3
#-----------------------------------
.globl md5_buffer
.type md5_buffer, @function
#-----------------------------------
md5_buffer:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            add x0,sp,#48
            bl md5_init_ctx

            add x0,sp,#48
            mov x2,x0
            ldr x1,[sp,#32]
            ldr x0,[sp,#40]
            bl md5_process_bytes

            add x0,sp,#48
            ldr x1,[sp,#24]
            bl md5_finish_ctx

            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_buffer, . - md5_buffer
.align 2
#-----------------------------------
.globl md5_process_bytes
.type md5_process_bytes, @function
#-----------------------------------
md5_process_bytes:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            cmp w0,#0
            b.eq .L_41708c

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            str x0,[sp,#64]
            mov x1,#128
            ldr x0,[sp,#64]
            sub x0,x1,x0
            ldr x2,[sp,#32]
            ldr x1,[sp,#32]
            cmp x2,x0
            csel x0,x1,x0,ls
            str x0,[sp,#56]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x0,[sp,#64]
            add x0,x1,x0
            ldr x2,[sp,#56]
            ldr x1,[sp,#40]
            bl memcpy

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            ldr x1,[sp,#56]
            add w1,w0,w1
            ldr x0,[sp,#24]
            str w1,[x0,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            cmp w0,#64
            b.ls .L_41706c

            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            and x0,x0,#4294967232
            ldr x2,[sp,#24]
            mov x1,x0
            mov x0,x3
            bl md5_process_block

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            and w1,w0,#63
            ldr x0,[sp,#24]
            str w1,[x0,#24]
            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x2,[sp,#64]
            ldr x0,[sp,#56]
            add x0,x2,x0
            and x0,x0,#-64
            add x1,x1,x0
            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            mov x2,x0
            mov x0,x3
            bl memcpy
.L_41706c:

            ldr x1,[sp,#40]
            ldr x0,[sp,#56]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr x1,[sp,#32]
            ldr x0,[sp,#56]
            sub x0,x1,x0
            str x0,[sp,#32]
.L_41708c:

            ldr x0,[sp,#32]
            cmp x0,#63
            b.ls .L_41712c

            ldr x0,[sp,#40]
            and x0,x0,#3
            cmp x0,#0
            b.eq .L_4170f4

            b .L_4170e4
.L_4170ac:

            ldr x0,[sp,#24]
            add x0,x0,#28
            mov x2,#64
            ldr x1,[sp,#40]
            bl memcpy

            ldr x2,[sp,#24]
            mov x1,#64
            bl md5_process_block

            ldr x0,[sp,#40]
            add x0,x0,#64
            str x0,[sp,#40]
            ldr x0,[sp,#32]
            sub x0,x0,#64
            str x0,[sp,#32]
.L_4170e4:

            ldr x0,[sp,#32]
            cmp x0,#64
            b.hi .L_4170ac

            b .L_41712c
.L_4170f4:

            ldr x0,[sp,#32]
            and x0,x0,#-64
            ldr x2,[sp,#24]
            mov x1,x0
            ldr x0,[sp,#40]
            bl md5_process_block

            ldr x0,[sp,#32]
            and x0,x0,#-64
            ldr x1,[sp,#40]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr x0,[sp,#32]
            and x0,x0,#63
            str x0,[sp,#32]
.L_41712c:

            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_4171d0

            ldr x0,[sp,#24]
            ldr w0,[x0,#24]
            mov w0,w0
            str x0,[sp,#72]
            ldr x0,[sp,#24]
            add x1,x0,#28
            ldr x0,[sp,#72]
            add x0,x1,x0
            ldr x2,[sp,#32]
            ldr x1,[sp,#40]
            bl memcpy

            ldr x1,[sp,#72]
            ldr x0,[sp,#32]
            add x0,x1,x0
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            cmp x0,#63
            b.ls .L_4171c0

            ldr x0,[sp,#24]
            add x0,x0,#28
            ldr x2,[sp,#24]
            mov x1,#64
            bl md5_process_block

            ldr x0,[sp,#72]
            sub x0,x0,#64
            str x0,[sp,#72]
            ldr x0,[sp,#24]
            add x3,x0,#28
            ldr x0,[sp,#24]
            add x0,x0,#92
            ldr x2,[sp,#72]
            mov x1,x0
            mov x0,x3
            bl memcpy
.L_4171c0:

            ldr x0,[sp,#72]
            mov w1,w0
            ldr x0,[sp,#24]
            str w1,[x0,#24]
.L_4171d0:

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_process_bytes, . - md5_process_bytes
.align 2
#-----------------------------------
.globl md5_process_block
.type md5_process_block, @function
#-----------------------------------
md5_process_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#160
.cfi_def_cfa_offset 160
            str x0,[sp,#24]
            str x1,[sp,#16]
            str x2,[sp,#8]
            ldr x0,[sp,#24]
            str x0,[sp,#152]
            ldr x0,[sp,#16]
            lsr x0,x0,#2
            str x0,[sp,#128]
            ldr x0,[sp,#128]
            lsl x0,x0,#2
            ldr x1,[sp,#152]
            add x0,x1,x0
            str x0,[sp,#120]
            ldr x0,[sp,#8]
            ldr w0,[x0]
            str w0,[sp,#148]
            ldr x0,[sp,#8]
            ldr w0,[x0,#4]
            str w0,[sp,#144]
            ldr x0,[sp,#8]
            ldr w0,[x0,#8]
            str w0,[sp,#140]
            ldr x0,[sp,#8]
            ldr w0,[x0,#12]
            str w0,[sp,#136]
            ldr x0,[sp,#8]
            ldr w0,[x0,#16]
            ldr x1,[sp,#16]
            add w1,w0,w1
            ldr x0,[sp,#8]
            str w1,[x0,#16]
            ldr x0,[sp,#8]
            ldr w0,[x0,#16]
            mov w0,w0
            ldr x1,[sp,#16]
            cmp x1,x0
            b.ls .L_418a70

            ldr x0,[sp,#8]
            ldr w0,[x0,#20]
            add w1,w0,#1
            ldr x0,[sp,#8]
            str w1,[x0,#20]
            b .L_418a70
.L_41728c:

            add x0,sp,#32
            str x0,[sp,#112]
            ldr w0,[sp,#148]
            str w0,[sp,#108]
            ldr w0,[sp,#144]
            str w0,[sp,#104]
            ldr w0,[sp,#140]
            str w0,[sp,#100]
            ldr w0,[sp,#136]
            str w0,[sp,#96]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#42104
            movk w0,#55146,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#148]
            ror w0,w0,#25
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#46934
            movk w0,#59591,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#136]
            ror w0,w0,#20
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#28891
            movk w0,#9248,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#140]
            ror w0,w0,#15
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#52974
            movk w0,#49597,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#144]
            ror w0,w0,#10
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#4015
            movk w0,#62844,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#148]
            ror w0,w0,#25
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#50730
            movk w0,#18311,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#136]
            ror w0,w0,#20
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#17939
            movk w0,#43056,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#140]
            ror w0,w0,#15
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#38145
            movk w0,#64838,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#144]
            ror w0,w0,#10
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#39128
            movk w0,#27008,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#148]
            ror w0,w0,#25
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#63407
            movk w0,#35652,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#136]
            ror w0,w0,#20
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#-42063
            add w0,w1,w0
            ldr w1,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#140]
            ror w0,w0,#15
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#55230
            movk w0,#35164,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#144]
            ror w0,w0,#10
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#4386
            movk w0,#27536,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#148]
            ror w0,w0,#25
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#29075
            movk w0,#64920,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#136]
            ror w0,w0,#20
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#17294
            movk w0,#42617,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#140]
            ror w0,w0,#15
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr x0,[sp,#112]
            add x2,x0,#4
            str x2,[sp,#112]
            ldr x2,[sp,#152]
            ldr w2,[x2]
            str w2,[x0]
            ldr w0,[x0]
            add w1,w1,w0
            mov w0,#2081
            movk w0,#18868,lsl #16
            add w0,w1,w0
            ldr w1,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr x0,[sp,#152]
            add x0,x0,#4
            str x0,[sp,#152]
            ldr w0,[sp,#144]
            ror w0,w0,#10
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#36]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#9570
            movk w0,#63006,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#27
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#56]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#45888
            movk w0,#49216,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#23
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#76]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#23121
            movk w0,#9822,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#18
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#32]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#51114
            movk w0,#59830,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#12
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#4189
            movk w0,#54831,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#27
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#72]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#5203
            movk w0,#580,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#23
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#92]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#59009
            movk w0,#55457,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#18
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#48]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#64456
            movk w0,#59347,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#12
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#68]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#52710
            movk w0,#8673,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#27
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#88]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#2006
            movk w0,#49975,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#23
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#44]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#3463
            movk w0,#62677,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#18
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#64]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#5357
            movk w0,#17754,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#12
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            and w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#84]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#59653
            movk w0,#43491,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#27
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            and w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#40]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#41976
            movk w0,#64751,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#23
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            and w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#60]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#729
            movk w0,#26479,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#18
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            and w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#80]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#19594
            movk w0,#36138,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#12
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#14658
            movk w0,#65530,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#28
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#64]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#63105
            movk w0,#34673,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#21
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#76]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#24866
            movk w0,#28061,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#16
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#88]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#14348
            movk w0,#64997,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#9
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#36]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#59972
            movk w0,#42174,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#28
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#48]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#53161
            movk w0,#19422,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#21
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#60]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#19296
            movk w0,#63163,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#16
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#72]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#48240
            movk w0,#48831,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#9
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#84]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#32454
            movk w0,#10395,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#28
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#32]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#10234
            movk w0,#60065,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#21
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#44]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#12421
            movk w0,#54511,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#16
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#56]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#7429
            movk w0,#1160,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#9
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#68]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#53305
            movk w0,#55764,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#28
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#80]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#39397
            movk w0,#59099,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#21
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#92]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#31992
            movk w0,#8098,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#16
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#40]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#22117
            movk w0,#50348,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#9
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#136]
            mvn w1,w0
            ldr w0,[sp,#144]
            orr w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#32]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#8772
            movk w0,#62505,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#26
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#140]
            mvn w1,w0
            ldr w0,[sp,#148]
            orr w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#60]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#65431
            movk w0,#17194,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#22
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#144]
            mvn w1,w0
            ldr w0,[sp,#136]
            orr w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#88]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#9127
            movk w0,#43924,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#17
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#148]
            mvn w1,w0
            ldr w0,[sp,#140]
            orr w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#52]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#41017
            movk w0,#64659,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#11
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#136]
            mvn w1,w0
            ldr w0,[sp,#144]
            orr w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#80]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#22979
            movk w0,#25947,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#26
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#140]
            mvn w1,w0
            ldr w0,[sp,#148]
            orr w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#44]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#52370
            movk w0,#36620,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#22
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#144]
            mvn w1,w0
            ldr w0,[sp,#136]
            orr w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#72]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#62589
            movk w0,#65519,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#17
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#148]
            mvn w1,w0
            ldr w0,[sp,#140]
            orr w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#36]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#24017
            movk w0,#34180,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#11
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#136]
            mvn w1,w0
            ldr w0,[sp,#144]
            orr w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#64]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#32335
            movk w0,#28584,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#26
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#140]
            mvn w1,w0
            ldr w0,[sp,#148]
            orr w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#92]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#59104
            movk w0,#65068,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#22
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#144]
            mvn w1,w0
            ldr w0,[sp,#136]
            orr w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#56]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#17172
            movk w0,#41729,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#17
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#148]
            mvn w1,w0
            ldr w0,[sp,#140]
            orr w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#84]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#4513
            movk w0,#19976,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#11
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#136]
            mvn w1,w0
            ldr w0,[sp,#144]
            orr w1,w1,w0
            ldr w0,[sp,#140]
            eor w1,w1,w0
            ldr w0,[sp,#48]
            add w1,w1,w0
            ldr w0,[sp,#148]
            add w1,w1,w0
            mov w0,#32386
            movk w0,#63315,lsl #16
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#148]
            ror w0,w0,#26
            str w0,[sp,#148]
            ldr w1,[sp,#148]
            ldr w0,[sp,#144]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w0,[sp,#140]
            mvn w1,w0
            ldr w0,[sp,#148]
            orr w1,w1,w0
            ldr w0,[sp,#144]
            eor w1,w1,w0
            ldr w0,[sp,#76]
            add w1,w1,w0
            ldr w0,[sp,#136]
            add w1,w1,w0
            mov w0,#62005
            movk w0,#48442,lsl #16
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#136]
            ror w0,w0,#22
            str w0,[sp,#136]
            ldr w1,[sp,#136]
            ldr w0,[sp,#148]
            add w0,w1,w0
            str w0,[sp,#136]
            ldr w0,[sp,#144]
            mvn w1,w0
            ldr w0,[sp,#136]
            orr w1,w1,w0
            ldr w0,[sp,#148]
            eor w1,w1,w0
            ldr w0,[sp,#40]
            add w1,w1,w0
            ldr w0,[sp,#140]
            add w1,w1,w0
            mov w0,#53947
            movk w0,#10967,lsl #16
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#140]
            ror w0,w0,#17
            str w0,[sp,#140]
            ldr w1,[sp,#140]
            ldr w0,[sp,#136]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w0,[sp,#148]
            mvn w1,w0
            ldr w0,[sp,#140]
            orr w1,w1,w0
            ldr w0,[sp,#136]
            eor w1,w1,w0
            ldr w0,[sp,#68]
            add w1,w1,w0
            ldr w0,[sp,#144]
            add w1,w1,w0
            mov w0,#54161
            movk w0,#60294,lsl #16
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w0,[sp,#144]
            ror w0,w0,#11
            str w0,[sp,#144]
            ldr w1,[sp,#144]
            ldr w0,[sp,#140]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#148]
            ldr w0,[sp,#108]
            add w0,w1,w0
            str w0,[sp,#148]
            ldr w1,[sp,#144]
            ldr w0,[sp,#104]
            add w0,w1,w0
            str w0,[sp,#144]
            ldr w1,[sp,#140]
            ldr w0,[sp,#100]
            add w0,w1,w0
            str w0,[sp,#140]
            ldr w1,[sp,#136]
            ldr w0,[sp,#96]
            add w0,w1,w0
            str w0,[sp,#136]
.L_418a70:

            ldr x1,[sp,#152]
            ldr x0,[sp,#120]
            cmp x1,x0
            b.lo .L_41728c

            ldr x0,[sp,#8]
            ldr w1,[sp,#148]
            str w1,[x0]
            ldr x0,[sp,#8]
            ldr w1,[sp,#144]
            str w1,[x0,#4]
            ldr x0,[sp,#8]
            ldr w1,[sp,#140]
            str w1,[x0,#8]
            ldr x0,[sp,#8]
            ldr w1,[sp,#136]
            str w1,[x0,#12]
            nop
            nop
            nop
            nop
            add sp,sp,#160
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_process_block, . - md5_process_block
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
.L_418ac8:

            ldp fp,lr,[sp],#16
            ret 
.size _fini, . - _fini
#===================================
# end section .fini
#===================================

#===================================
.section .rodata ,"a",@progbits
#===================================

.align 3
.L_418ad0:
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
.L_418ad8:
          .string "/"
          .zero 6
.L_418ae0:
          .string "ACL netmask for %s is invalid\n"
          .zero 1
.L_418b00:
          .string "*"
          .zero 6
.L_418b08:
          .string "0"
          .zero 6
.L_418b10:
          .string "ACL source address %s is invalid\n"
          .zero 6
.L_418b38:
          .string "ACL only ipv4 source addresses are supported (%s)\n"
          .zero 5
.L_418b70:
          .string "Subnet definition might be incorrect: %s/%d\n"
          .zero 3
.L_418ba0:
          .string "allow"
          .zero 2
.L_418ba8:
          .string "deny"
          .zero 3
.L_418bb0:
          .string "New ACL rule: %s %s/%d\n"
.L_418bc8:
          .string "Credentials structure dump:"
          .zero 4
.L_418be8:
          .string "Struct is not allocated!"
          .zero 7
.L_418c08:
          .string "User:       %s\n"
.L_418c18:
          .string "Domain:     %s\n"
.L_418c28:
          .string "Wks:        %s\n"
.L_418c38:
          .string "HashNTLMv2: %d\n"
.L_418c48:
          .string "HashNT:     %d\n"
.L_418c58:
          .string "HashLM:     %d\n"
.L_418c68:
          .string "Flags:      %X\n"
.L_418c78:
          .string "PassNTLMv2: %s\n"
.L_418c88:
          .string "PassNT:     %s\n"
.L_418c98:
          .string "PassLM:     %s\n\n"
          .zero 7
.L_418cb0:
          .string "r"
          .zero 6
.L_418cb8:
          .string "#"
          .zero 6
.L_418cc0:
          .string "section: %s, %s = '%s'\n"
.L_418cd8:
          .string "NTLM "
          .zero 2
.L_418ce0:
          .string "keep-alive"
          .zero 5
.L_418cf0:
          .string "Connection"
          .zero 5
.L_418d00:
          .string "Authorization"
          .zero 2
.L_418d10:
          .string "0"
          .zero 6
.L_418d18:
          .string "Content-Length"
          .zero 1
.L_418d28:
          .string "Transfer-Encoding"
          .zero 6
.L_418d40:
          .string "\nSending WWW auth request..."
          .zero 3
.L_418d60:
          .string "\nReading WWW auth response..."
          .zero 2
.L_418d80:
          .string "WWW-Authenticate"
          .zero 7
.L_418d98:
          .string "No target info block. Cannot do NTLMv2!\n"
          .zero 7
.L_418dc8:
          .string "Invalid NTLM challenge from web server"
          .zero 1
.L_418df0:
          .string "Server returning invalid challenge!\n"
          .zero 3
.L_418e18:
          .string "No challenge in WWW-Authenticate!\n"
          .zero 5
.L_418e40:
          .string "Web server reply missing NTLM challenge"
.L_418e68:
          .string "\nSending WWW auth..."
          .zero 3
.L_418e80:
          .string "\nReading final server response..."
          .zero 6
.L_418ea8:
          .string "Direct thread processing..."
          .zero 4
.L_418ec8:
          .string "Connection failed for %s:%d (%s)"
          .zero 7
.L_418ef0:
          .string "Invalid request URL"
          .zero 4
.L_418f08:
          .string "CONNECT"
.L_418f10:
          .string "\n******* Round %d C: %d, S: %d *******\n"
.L_418f38:
          .string "Reading headers (%d)...\n"
          .zero 7
.L_418f58:
          .string "\n******* D RETURN: %s *******\n"
          .zero 1
.L_418f78:
          .string "%s %s %s"
          .zero 7
.L_418f88:
          .string "Proxy-Authorization"
          .zero 4
.L_418fa0:
          .string "NTLM-to-basic: Credentials parsed: %s\\%s at %s\n"
.L_418fd0:
          .string "CONNECTing..."
          .zero 2
.L_418fe0:
          .string "Connection established"
          .zero 1
.L_418ff8:
          .string "NTLM"
          .zero 3
.L_419000:
          .string "close"
          .zero 2
.L_419008:
          .string "Reconnect before WWW auth"
          .zero 6
.L_419028:
          .string "WWW authentication reconnect failed"
          .zero 4
.L_419050:
          .string "WWW auth connection error."
          .zero 5
.L_419070:
          .string "Error during WWW-Authenticate"
          .zero 2
.L_419090:
          .string "Connection to remote server failed"
          .zero 5
.L_4190b8:
          .string "server reconnect after probe"
          .zero 3
.L_4190d8:
          .string "Proxy-Connection"
          .zero 7
.L_4190f0:
          .string "Sending headers (%d)...\n"
          .zero 7
.L_419110:
          .string "HEAD: %s %s %s\n"
.L_419120:
          .string "HEAD"
          .zero 3
.L_419128:
          .string "%s FORWARD %s"
          .zero 2
.L_419138:
          .string "Portforwarding to %s for client %d...\n"
          .zero 1
.L_419160:
          .string "src/forward.c"
          .zero 2
.L_419170:
          .string "thread_data != NULL"
          .zero 4
.L_419188:
          .string " (retry)"
          .zero 7
.L_419198:
          .zero 8
.L_4191a0:
          .string "Thread processing%s...\n"
.L_4191b8:
          .string "Found authenticated connection %d!\n"
          .zero 4
.L_4191e0:
          .string "Parent proxy unreachable"
          .zero 7
.L_419200:
          .string "\n******* Round %d C: %d, S: %d (authok=%d, noauth=%d) *******\n"
          .zero 1
.L_419240:
          .string "Reading headers (%d)...\n"
          .zero 7
.L_419260:
          .string "\n******* F RETURN: %s *******\n"
          .zero 1
.L_419280:
          .string "keep-alive"
          .zero 5
.L_419290:
          .string "Proxy-Connection"
          .zero 7
.L_4192a8:
          .string "Connection"
          .zero 5
.L_4192b8:
          .string "%s %s %s"
          .zero 7
.L_4192c8:
          .string "Proxy-Authorization"
          .zero 4
.L_4192e0:
          .string "NTLM-to-basic: Credentials parsed: %s\\%s at %s\n"
.L_419310:
          .string "NTLM-to-basic: Returning client auth request."
          .zero 2
.L_419340:
          .string "Proxy auth connection error."
          .zero 3
.L_419360:
          .string "Proxy auth not requested - just forwarding."
          .zero 4
.L_419390:
          .string "\nFinal reply is 407 - retrying (cached=%d, noauth=%d).\n"
.L_4193c8:
          .string "CONNECT"
.L_4193d0:
          .string "close"
          .zero 2
.L_4193d8:
          .string "Proxy-Authenticate"
          .zero 5
.L_4193f0:
          .string "Basic realm=\"Auth failed, you can try other credentials\""
          .zero 7
.L_419430:
          .string "Sending headers (%d)...\n"
          .zero 7
.L_419450:
          .string "HEAD: %s %s %s\n"
.L_419460:
          .string "Ok CONNECT response. Tunneling..."
          .zero 6
.L_419488:
          .string "PROXY CLOSING CONNECTION"
          .zero 7
.L_4194a8:
          .string "forward_request: palive=%d, authok=%d, ntlm=%d, closed=%d\n"
          .zero 5
.L_4194e8:
          .string "\nThread finished."
          .zero 6
.L_419500:
          .string "Storing the connection for reuse (%d:%d).\n"
          .zero 5
.L_419530:
          .string "HTTP/1.1"
          .zero 7
.L_419540:
          .string "Starting authentication..."
          .zero 5
.L_419560:
          .string "Sending real request:"
          .zero 2
.L_419578:
          .string "Sending request failed!"
.L_419590:
          .string "\nReading real response:"
.L_4195a8:
          .string "Reading response failed!"
          .zero 7
.L_4195c8:
          .string "Authentication for tunnel %s failed!\n"
          .zero 2
.L_4195f0:
          .string "Request for CONNECT to %s denied!\n"
          .zero 5
.L_419618:
          .string "Tunnel requests failed!\n"
          .zero 7
.L_419638:
          .string "%s TUNNEL %s"
          .zero 3
.L_419648:
          .string "Tunneling to %s for client %d...\n"
          .zero 6
.L_419670:
          .string "Cannot detect NTLM dialect - password or all its hashes must be defined, try -I"
.L_4196c0:
          .string "url != NULL"
          .zero 4
.L_4196d0:
          .string "://"
          .zero 4
.L_4196d8:
          .string "Invalid URL (%s)\n"
          .zero 6
.L_4196f0:
          .string "GET"
          .zero 4
.L_4196f8:
          .string "Host"
          .zero 3
.L_419700:
          .string "Config profile %2d/%d... "
          .zero 6
.L_419720:
          .string "\nConnection to proxy failed, bailing out"
          .zero 7
.L_419750:
          .string "Auth not required (HTTP code: %d)\n"
          .zero 5
.L_419778:
          .string "Connection closed!? Proxy doesn't talk to us."
          .zero 2
.L_4197a8:
          .string "NTLM"
          .zero 3
.L_4197b0:
          .string "Credentials rejected (NTLM allowed)"
          .zero 4
.L_4197d8:
          .string "BASIC"
          .zero 2
.L_4197e0:
          .string "Proxy allows BASIC, Cntlm not required so it's not supported"
          .zero 3
.L_419820:
          .string "Proxy doesn't allow NTLM, Cntlm won't help"
          .zero 5
.L_419850:
          .string "OK (HTTP code: %d)\n"
          .zero 4
.L_419868:
          .string "----------------------------[ Profile %2d ]------\n"
          .zero 5
.L_4198a0:
          .string "Auth            %s\n"
          .zero 4
.L_4198b8:
          .string "Flags           0x%x\n"
          .zero 2
.L_4198d0:
          .string "PassNT          %s\n"
          .zero 4
.L_4198e8:
          .string "PassLM          %s\n"
          .zero 4
.L_419900:
          .string "PassNTLMv2      %s\n"
          .zero 4
.L_419918:
          .string "------------------------------------------------"
          .zero 7
.L_419950:
          .string "\nYour proxy is open, you don't need another proxy."
          .zero 5
.L_419988:
          .string "\nWrong credentials, invalid URL or proxy doesn't support NTLM."
          .zero 1
.L_4199c8:
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
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_419a30:
          .string "NTLMv2"
          .zero 1
.L_419a38:
          .string "LM"
          .zero 5
.L_419a40:
          .string "NT"
          .zero 5
.L_419a48:
          .string "NTLM2SR"
.L_419a50:
          .quad .L_419a30
          .quad .L_4197a8
          .quad .L_419a38
          .quad .L_419a40
          .quad .L_419a48
.L_419a78:
#-----------------------------------
.type __PRETTY_FUNCTION__.2, @object
.size __PRETTY_FUNCTION__.2, 16
#-----------------------------------
__PRETTY_FUNCTION__.2:
          .string "forward_request"
.L_419a88:
#-----------------------------------
.type __PRETTY_FUNCTION__.1, @object
.size __PRETTY_FUNCTION__.1, 15
#-----------------------------------
__PRETTY_FUNCTION__.1:
          .string "forward_tunnel"
          .zero 1
.L_419a98:
#-----------------------------------
.type __PRETTY_FUNCTION__.0, @object
.size __PRETTY_FUNCTION__.0, 18
#-----------------------------------
__PRETTY_FUNCTION__.0:
          .string "magic_auth_detect"
          .zero 6
.L_419ab0:
          .string ":"
          .zero 6
.L_419ab8:
          .string "HEAD: %s"
          .zero 7
.L_419ac8:
          .string " "
          .zero 6
.L_419ad0:
          .string "HTTP/"
          .zero 2
.L_419ad8:
          .string "ICY"
          .zero 4
.L_419ae0:
          .zero 8
.L_419ae8:
          .string " HTTP/"
          .zero 1
.L_419af0:
          .string "://"
          .zero 4
.L_419af8:
          .string "/"
          .zero 6
.L_419b00:
          .string "headers_recv: Unknown header (%s).\n"
          .zero 4
.L_419b28:
          .string "Host"
          .zero 3
.L_419b30:
          .string "headers_recv: no host name (%s)\n"
          .zero 7
.L_419b58:
          .string "https"
          .zero 2
.L_419b60:
          .string "src/http.c"
          .zero 5
.L_419b70:
          .string "data != NULL"
          .zero 3
.L_419b80:
          .string "data->hostname != NULL"
          .zero 1
.L_419b98:
          .string "headers_recv: fd %d error %d\n"
          .zero 2
.L_419bb8:
          .string "%s %s %s\r\n"
          .zero 5
.L_419bc8:
          .string "%s %03d %s\r\n"
          .zero 3
.L_419bd8:
          .string "%s: %s\r\n"
          .zero 7
.L_419be8:
          .string "\r\n"
          .zero 5
.L_419bf0:
          .string "headers_send: fd %d warning %d (connection closed)\n"
          .zero 4
.L_419c28:
          .string "ok"
          .zero 5
.L_419c30:
          .string "data_send: read %d of %d / %d of %lld (errno = %s)\n"
          .zero 4
.L_419c68:
          .string "data_send: wrote %d of %d\n"
          .zero 5
.L_419c88:
          .string "data_send: fds %d:%d warning %d (connection closed)\n"
          .zero 3
.L_419cc0:
          .string "chunked_data_send: aborting, read error"
.L_419ce8:
          .string "chunked_data_send: aborting, chunk size format error"
          .zero 3
.L_419d20:
          .string "chunked_data_send: aborting, data_send failed"
          .zero 2
.L_419d50:
          .string "tunnel: select cli: %d, srv: %d\n"
          .zero 7
.L_419d78:
          .string "Internal error in function http_has_body(): Both arguments to function seem to be invalid/NULL: request: %p response: %p\n"
          .zero 6
.L_419df8:
          .string "HEAD"
          .zero 3
.L_419e00:
          .string "GET"
          .zero 4
.L_419e08:
          .string "Content-Length"
          .zero 1
.L_419e18:
          .string "Content-Type"
          .zero 3
.L_419e28:
          .string "Transfer-Encoding"
          .zero 6
.L_419e40:
          .string "close"
          .zero 2
.L_419e48:
          .string "Connection"
          .zero 5
.L_419e58:
          .string "chunked"
.L_419e60:
          .string "Chunked body included."
          .zero 1
.L_419e78:
          .string "Chunked body sent.\n"
          .zero 4
.L_419e90:
          .string "Could not chunk send whole body\n"
          .zero 7
.L_419eb8:
          .string "%s"
          .zero 5
.L_419ec0:
          .string "Body included. Length: %lld\n"
          .zero 3
.L_419ee0:
          .string "Body sent.\n"
          .zero 4
.L_419ef0:
          .string "Could not send whole body\n"
          .zero 5
.L_419f10:
          .string "No body."
          .zero 7
.L_419f20:
          .string "Discarding chunked body."
          .zero 7
.L_419f40:
          .string "Discarding %lld bytes.\n"
.L_419f58:
          .string "basic"
          .zero 2
.L_419f60:
          .string "tmp != NULL"
          .zero 4
.L_419f70:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x419f70_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x419f70_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x419f70_0:
          .string "headers_recv"
          .zero 3
.L_419f80:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x419f80_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x419f80_0, 17
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x419f80_0:
          .string "http_parse_basic"
          .zero 7
.L_419f98:
          .string "Signal %d received, issuing clean shutdown\n"
          .zero 4
.L_419fc8:
          .string "Signal %d received, forcing shutdown\n"
          .zero 2
.L_419ff0:
          .string "Cannot resolve listen address %s\n"
          .zero 6
.L_41a018:
          .string "New %s service on %s\n"
          .zero 2
.L_41a030:
          .string "Cannot resolve tunnel bind address: %s:%s\n"
          .zero 5
.L_41a060:
          .string "Invalid tunnel local port: %s\n"
          .zero 1
.L_41a080:
          .string "Invalid tunnel target: %s:%s\n"
          .zero 2
.L_41a0a0:
          .string ":"
          .zero 6
.L_41a0a8:
          .string "New tunnel to %s\n"
          .zero 6
.L_41a0c0:
          .string "Unable to bind tunnel"
          .zero 2
.L_41a0d8:
          .string "Tunnel specification incorrect ([laddress:]lport:rserver:rport)."
          .zero 7
.L_41a120:
          .string ", "
          .zero 5
.L_41a128:
          .string "Adding no-proxy for: '%s'\n"
          .zero 5
.L_41a148:
          .string "MATCH: %s (%s)\n"
.L_41a158:
          .string "   NO: %s (%s)\n"
.L_41a168:
          .string "\n******* Round 1 C: %d *******\n"
.L_41a188:
          .string "Reading headers (%d)...\n"
          .zero 7
.L_41a1a8:
          .string "keep-alive"
          .zero 5
.L_41a1b8:
          .string "Proxy-Connection"
          .zero 7
.L_41a1d0:
          .string "proxy_thread: request rc = %p\n"
          .zero 1
.L_41a1f0:
          .string "src/main.c"
          .zero 5
.L_41a200:
          .string "thread_data != NULL"
          .zero 4
.L_41a218:
          .string "SOCKS5: write() for accepting AUTH method failed.\n"
          .zero 5
.L_41a250:
          .string "SOCKS5: write() for response of credentials check failed.\n"
          .zero 5
.L_41a290:
          .string "%d.%d.%d.%d"
          .zero 4
.L_41a2a0:
          .string "%d"
          .zero 5
.L_41a2a8:
          .string "SOCKS5: write() for reporting success for connect failed.\n"
          .zero 5
.L_41a2e8:
          .string "%s SOCKS %s"
          .zero 4
.L_41a2f8:
          .string "cntlm"
          .zero 2
.L_41a300:
          .string "Starting cntlm version 0.94beta1 for LITTLE endian\n"
          .zero 4
.L_41a338:
          .string "*%s*"
          .zero 3
.L_41a340:
          .string "Proxy"
          .zero 2
.L_41a348:
          .string "SOCKS5 proxy"
          .zero 3
.L_41a358:
          .string "Invalid username:password format for -R: %s\n"
          .zero 3
.L_41a388:
          .string "Cannot create trace file.\n"
          .zero 5
.L_41a3a8:
          .string "Redirecting all output to %s\n"
          .zero 2
.L_41a3c8:
          .string "@"
          .zero 6
.L_41a3d0:
          .string "This feature is available under Windows only!\n"
          .zero 1
.L_41a400:
          .string ":-:T:a:c:d:fghIl:p:r:su:vw:x:A:BD:F:G:HL:M:N:O:P:R:S:U:X:q"
          .zero 5
.L_41a440:
          .string "CNTLM - Accelerating NTLM Authentication Proxy version 0.94beta1"
          .zero 7
.L_41a488:
          .string "Copyright (c) 2oo7-2o1o David Kubicek\n\nThis program comes with NO WARRANTY, to the extent permitted by law. You\nmay redistribute copies of it under the terms of the GNU GPL Version 2 or\nnewer. For more information about these matters, see the file LICENSE.\nFor copyright holders of included encryption routines see headers.\n"
          .zero 3
.L_41a5d0:
          .string "Usage: %s [-AaBcDdFfGgHhILlMNOPpqRrSsTUuvwXx] <proxy_host>[:]<proxy_port> ...\n"
          .zero 1
.L_41a620:
          .string "\t-A  <address>[/<net>]\n\t    ACL allow rule. IP or hostname, net must be a number (CIDR notation)\n"
          .zero 6
.L_41a688:
          .string "\t-a  ntlm | nt | lm\n\t    Authentication type - combined NTLM, just LM, or just NT. Default NTLM.\n\t    NTLM is the most versatile setting and likely to work for you.\n"
          .zero 2
.L_41a730:
          .string "\t-B  Enable NTLM-to-basic authentication.\n"
          .zero 5
.L_41a760:
          .string "\t-c  <config_file>\n\t    Configuration file. Other arguments can be used as well, overriding\n\t    config file settings.\n"
.L_41a7d8:
          .string "\t-D  <address>[/<net>]\n\t    ACL deny rule. Syntax same as -A.\n"
          .zero 1
.L_41a818:
          .string "\t-d  <domain>\n\t    Domain/workgroup can be set separately.\n"
          .zero 4
.L_41a858:
          .string "\t-F  <flags>\n\t    NTLM authentication flags.\n"
          .zero 2
.L_41a888:
          .string "\t-f  Run in foreground, do not fork into daemon mode.\n"
          .zero 1
.L_41a8c0:
          .string "\t-G  <pattern>\n\t    User-Agent matching for the trans-isa-scan plugin.\n"
.L_41a908:
          .string "\t-g  Gateway mode - listen on all interfaces, not only loopback.\n"
          .zero 6
.L_41a950:
          .string "\t-H  Print password hashes for use in config file (NTLMv2 needs -u and -d).\n"
          .zero 3
.L_41a9a0:
          .string "\t-h  Print this help info along with version number.\n"
          .zero 2
.L_41a9d8:
          .string "\t-I  Prompt for the password interactively.\n"
          .zero 3
.L_41aa08:
          .string "\t-L  [<saddr>:]<lport>:<rhost>:<rport>\n\t    Forwarding/tunneling a la OpenSSH. Same syntax - listen on lport\n\t    and forward all connections through the proxy to rhost:rport.\n\t    Can be used for direct tunneling without corkscrew, etc.\n"
          .zero 1
.L_41aaf8:
          .string "\t-l  [<saddr>:]<lport>\n\t    Main listening port for the NTLM proxy.\n"
          .zero 3
.L_41ab40:
          .string "\t-M  <testurl>\n\t    Magic autodetection of proxy's NTLM dialect.\n"
          .zero 6
.L_41ab88:
          .string "\t-N  \"<hostname_wildcard1>[, <hostname_wildcardN>\"\n\t    List of URL's to serve directly as stand-alone proxy (e.g. '*.local')\n"
          .zero 1
.L_41ac08:
          .string "\t-O  [<saddr>:]<lport>\n\t    Enable SOCKS5 proxy on port lport (binding to address saddr)\n"
          .zero 6
.L_41ac68:
          .string "\t-P  <pidfile>\n\t    Create a PID file upon successful start.\n"
          .zero 2
.L_41aca8:
          .string "\t-p  <password>\n\t    Account password. Will not be visible in \"ps\", /proc, etc.\n"
          .zero 7
.L_41ad00:
          .string "\t-q  Sets the Syslog logging level to DEBUG (default level is INFO).\n"
          .zero 2
.L_41ad48:
          .string "\t-R  <username>:<password>\n\t    Enable authorization for SOCKS5 proxy, when enabled.\n\t    It can be used several times, to create a whole list of accounts.\n"
          .zero 3
.L_41ade8:
          .string "\t-r  \"HeaderName: value\"\n\t    Add a header substitution. All such headers will be added/replaced\n\t    in the client's requests.\n"
          .zero 7
.L_41ae70:
          .string "\t-S  <size_in_kb>\n\t    Enable automation of GFI WebMonitor ISA scanner for files < size_in_kb.\n"
.L_41aed0:
          .string "\t-s  Do not use threads, serialize all requests - for debugging only.\n"
          .zero 1
.L_41af18:
          .string "\t-T  <file.log>\n\t    Redirect all debug information into a trace file for support upload.\n\t    MUST be the first argument on the command line, implies -v.\n"
          .zero 4
.L_41afb8:
          .string "\t-U  <uid>\n\t    Run as uid. It is an important security measure not to run as root.\n"
          .zero 3
.L_41b010:
          .string "\t-u  <user>[@<domain]\n\t    Domain/workgroup can be set separately.\n"
          .zero 4
.L_41b058:
          .string "\t-v  Print debugging information.\n"
          .zero 5
.L_41b080:
          .string "\t-w  <workstation>\n\t    Some proxies require correct NetBIOS hostname.\n"
.L_41b0c8:
          .string "\t-X  <sspi_handle_type>\n\t    Use SSPI with specified handle type. Works only under Windows.\n\t    Default is negotiate.\n"
.L_41b140:
          .string "Cntlm debug trace, version 0.94beta1"
          .zero 3
.L_41b168:
          .string ".\nCommand line: "
          .zero 7
.L_41b180:
          .string "%s "
          .zero 4
.L_41b188:
          .string "Cannot access specified config file: %s\n"
          .zero 7
.L_41b1b8:
          .string "Gateway"
.L_41b1c0:
          .string "yes"
          .zero 4
.L_41b1c8:
          .string "NTLMToBasic"
          .zero 4
.L_41b1d8:
          .string "Tunnel"
          .zero 1
.L_41b1e0:
          .string "Listen"
          .zero 1
.L_41b1e8:
          .string "SOCKS5Proxy"
          .zero 4
.L_41b1f8:
          .string "Invalid header format: %s\n"
          .zero 5
.L_41b218:
          .string "Header"
          .zero 1
.L_41b220:
          .string "Allow"
          .zero 2
.L_41b228:
          .string "Deny"
          .zero 3
.L_41b230:
          .string "Auth"
          .zero 3
.L_41b238:
          .string "Domain"
          .zero 1
.L_41b240:
          .string "Password"
          .zero 7
.L_41b250:
          .string "PassNTLMv2"
          .zero 5
.L_41b260:
          .string "PassNT"
          .zero 1
.L_41b268:
          .string "PassLM"
          .zero 1
.L_41b270:
          .string "Username"
          .zero 7
.L_41b280:
          .string "Workstation"
          .zero 4
.L_41b290:
          .string "Flags"
          .zero 2
.L_41b298:
          .string "ISAScannerSize"
          .zero 1
.L_41b2a8:
          .string "NoProxy"
.L_41b2b0:
          .string "Invalid username:password format for SOCKS5User: %s\n"
          .zero 3
.L_41b2e8:
          .string "SOCKS5Users"
          .zero 4
.L_41b2f8:
          .string "ISAScannerAgent"
.L_41b308:
          .string "Ignoring config file option: %s\n"
          .zero 7
.L_41b330:
          .string "r"
          .zero 6
.L_41b338:
          .string "Cannot access specified PAC file: '%s'\n"
.L_41b360:
          .string "Parent proxy address missing.\n"
          .zero 1
.L_41b380:
          .string "No proxy service ports were successfully opened.\n"
          .zero 6
.L_41b3b8:
          .string "Workstation name used: %s\n"
          .zero 5
.L_41b3d8:
          .string "ntlm"
          .zero 3
.L_41b3e0:
          .string "nt"
          .zero 5
.L_41b3e8:
          .string "lm"
          .zero 5
.L_41b3f0:
          .string "ntlmv2"
          .zero 1
.L_41b3f8:
          .string "ntlm2sr"
.L_41b400:
          .string "Unknown NTLM auth combination.\n"
.L_41b420:
          .string "SOCKS5 proxy will NOT require any authentication\n"
          .zero 6
.L_41b458:
          .string "Using following NTLM hashes: NTLMv2(%d) NT(%d) LM(%d)\n"
          .zero 1
.L_41b490:
          .string "Using manual NTLM flags: 0x%X\n"
          .zero 1
.L_41b4b0:
          .string "Password: "
          .zero 5
.L_41b4c0:
          .string "Invalid PassNTLMv2 hash, terminating\n"
          .zero 2
.L_41b4e8:
          .string "Invalid PassNT hash, terminating\n"
          .zero 6
.L_41b510:
          .string "Invalid PassLM hash, terminating\n"
          .zero 6
.L_41b538:
          .string "PassLM          %s\n"
          .zero 4
.L_41b550:
          .string "PassNT          %s\n"
          .zero 4
.L_41b568:
          .string "PassNTLMv2      %s    # Only for user '%s', domain '%s'\n"
          .zero 7
.L_41b5a8:
          .string "Parent proxy account password (or required hashes) missing.\n"
          .zero 3
.L_41b5e8:
          .string "Forking into background as requested."
          .zero 2
.L_41b610:
          .string "Fork into background failed"
          .zero 4
.L_41b630:
          .string "/"
          .zero 6
.L_41b638:
          .string "chdir(\"/\") failed"
          .zero 6
.L_41b650:
          .string "/dev/null"
          .zero 6
.L_41b660:
          .string "Daemon ready"
          .zero 3
.L_41b670:
          .string "Cntlm ready, staying in the foreground"
          .zero 1
.L_41b698:
          .string "No root privileges; keeping identity %d:%d\n"
          .zero 4
.L_41b6c8:
          .string "Numerical uid parameter invalid\n"
          .zero 7
.L_41b6f0:
          .string "Username %s in -U is invalid\n"
          .zero 2
.L_41b710:
          .string "Setting group identity failed: %s\n"
          .zero 5
.L_41b738:
          .string "Terminating\n"
          .zero 3
.L_41b748:
          .string "Changing uid:gid to %d:%d - %s\n"
.L_41b768:
          .string "Error creating a new PID file (%s)\n"
          .zero 4
.L_41b790:
          .string "%d\n"
          .zero 4
.L_41b798:
          .string "Error writing to the PID file\n"
          .zero 1
.L_41b7b8:
          .string "Serious error during accept: %s\n"
          .zero 7
.L_41b7e0:
          .string "Connection denied for %s:%d\n"
          .zero 3
.L_41b800:
          .string "Serious error during pthread_create: %d\n"
          .zero 7
.L_41b830:
          .string "Serious error during select: %s\n"
          .zero 7
.L_41b858:
          .string "Terminated thread %lu; rc: %d\n"
          .zero 1
.L_41b878:
          .string "Terminating with %u active threads\n"
.L_41b89c:
          .long (.L_409f78-.L_409f78)/4
          .long (.L_409fd0-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_409f78-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a01c-.L_409f78)/4
          .long (.L_40a0b4-.L_409f78)/4
          .long (.L_40a188-.L_409f78)/4
          .long (.L_40a194-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a1a0-.L_409f78)/4
          .long (.L_40a1e8-.L_409f78)/4
          .long (.L_40a200-.L_409f78)/4
          .long (.L_40a24c-.L_409f78)/4
          .long (.L_40a278-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a308-.L_409f78)/4
          .long (.L_40a41c-.L_409f78)/4
          .long (.L_40a464-.L_409f78)/4
          .long (.L_40a50c-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a630-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_409fb0-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_409fe4-.L_409f78)/4
          .long (.L_409ffc-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a0ac-.L_409f78)/4
          .long (.L_40a17c-.L_409f78)/4
          .long (.L_40a66c-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a1bc-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a298-.L_409f78)/4
          .long (.L_40a660-.L_409f78)/4
          .long (.L_40a3a8-.L_409f78)/4
          .long (.L_40a450-.L_409f78)/4
          .long (.L_40a678-.L_409f78)/4
          .long (.L_40a52c-.L_409f78)/4
          .long (.L_40a5f0-.L_409f78)/4
          .long (.L_40a610-.L_409f78)/4
.L_41b978:
#-----------------------------------
.type __PRETTY_FUNCTION__.3, @object
.size __PRETTY_FUNCTION__.3, 14
#-----------------------------------
__PRETTY_FUNCTION__.3:
          .string "tunnel_thread"
#-----------------------------------
.type SOCKS5_AUTH_NO_AUTHENTICATION_REQUIRED.2, @object
.size SOCKS5_AUTH_NO_AUTHENTICATION_REQUIRED.2, 1
#-----------------------------------
SOCKS5_AUTH_NO_AUTHENTICATION_REQUIRED.2:
          .zero 1
#-----------------------------------
.type SOCKS5_AUTH_USERNAME_PASSWORD.1, @object
.size SOCKS5_AUTH_USERNAME_PASSWORD.1, 1
#-----------------------------------
SOCKS5_AUTH_USERNAME_PASSWORD.1:
          .byte 0x2
#-----------------------------------
.type SOCKS5_AUTH_NO_ACCEPTABLE_METHODS.0, @object
.size SOCKS5_AUTH_NO_ACCEPTABLE_METHODS.0, 1
#-----------------------------------
SOCKS5_AUTH_NO_ACCEPTABLE_METHODS.0:
          .byte 0xff
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_41b990:
          .string "NTLMv2:\n\t    Nonce: %s\n\tTimestamp: %ld\n"
.L_41b9b8:
          .string "You're requesting with empty auth_s?!"
          .zero 2
.L_41b9e0:
          .string "NTLM Request:"
          .zero 2
.L_41b9f0:
          .string "\t   Domain: %s\n"
.L_41ba00:
          .string "\t Hostname: %s\n"
.L_41ba10:
          .string "\t    Flags: 0x%X\n"
          .zero 6
.L_41ba28:
          .string "NTLMSSP"
          .zero 8
.L_41ba38:
          .string "NTLM Challenge:"
.L_41ba48:
          .string "\tChallenge: %s (len: %d)\n"
          .zero 6
.L_41ba68:
          .string "\t   Server: "
          .zero 3
.L_41ba78:
          .string "\tNT domain: "
          .zero 3
.L_41ba88:
          .string "\t     FQDN: "
          .zero 3
.L_41ba98:
          .string "\t   Domain: "
          .zero 3
.L_41baa8:
          .string "\t      TLD: "
          .zero 3
.L_41bab8:
          .string "\t      %3d: "
          .zero 3
.L_41bac8:
          .string "\t    TBofs: %d\n\t    TBlen: %d\n\t    ttype: %d\n"
          .zero 2
.L_41baf8:
          .string "NTLM Response:"
          .zero 1
.L_41bb08:
          .string "\t Hostname: '%s'\n"
          .zero 6
.L_41bb20:
          .string "\t   Domain: '%s'\n"
          .zero 6
.L_41bb38:
          .string "\t Username: '%s'\n"
          .zero 6
.L_41bb50:
          .string "\t Response: '%s' (%d)\n"
          .zero 1
.L_41bb68:
          .string "HTTP/1.0"
          .zero 7
.L_41bb78:
          .string "%s 407 Access denied\r\nProxy-Authenticate: Basic realm=\"Cntlm Proxy\"\r\nContent-Type: text/html\r\n\r\n<html><body><h1>407 Access denied</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> requests your credentials for proxy access.</p></body></html>"
.L_41bc68:
          .string "%s 401 Access denied\r\nWWW-Authenticate: Basic realm=\"%s:%d\"\r\nContent-Type: text/html\r\n\r\n<html><body><h1>401 Access denied</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> proxy requests your credentials for this URL.</p></body></html>"
          .zero 6
.L_41bd58:
          .string "client"
          .zero 1
.L_41bd60:
          .string "HTTP/1.0 407 Access denied\r\nContent-Type: text/html\r\n\r\n<html><body><h1>Access denied</h1><p>Your request has been declined, %s is not allowed to connect.</p></body></html>"
          .zero 4
.L_41be10:
          .string "Proxy error"
          .zero 4
.L_41be20:
          .string "%s 502 %s\r\nContent-Type: text/html\r\n\r\n<html><body><h1>502 %s</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> proxy failed to complete the request.</p></body></html>"
          .zero 3
.L_41bec8:
          .string "List data: %lu => DIRECT\n"
          .zero 6
.L_41bee8:
          .string "List data: %lu => %s:%d\n"
          .zero 7
.L_41bf08:
          .string "Invalid port in proxy address %s\n"
          .zero 6
.L_41bf30:
          .string "Port not found in proxy address %s\n"
          .zero 4
.L_41bf58:
          .string ";"
          .zero 6
.L_41bf60:
          .string "Parsed PAC Proxies:"
          .zero 4
.L_41bf78:
          .string " "
          .zero 6
.L_41bf80:
          .string "PROXY"
          .zero 2
.L_41bf88:
          .string ":"
          .zero 6
.L_41bf90:
          .string "   %s %s %s\n"
          .zero 3
.L_41bfa0:
          .string "   %s\n"
          .zero 1
.L_41bfa8:
          .string "Created PAC list with %d item(s):\n"
          .zero 5
.L_41bfd0:
          .string "Found PAC list for [%s]\n"
          .zero 7
.L_41bff0:
          .string "New PAC list for [%s]\n"
          .zero 1
.L_41c008:
          .string "src/proxy.c"
          .zero 4
.L_41c018:
          .string "false"
          .zero 2
.L_41c020:
          .string "Resolving proxy %s...\n"
          .zero 1
.L_41c038:
          .string "Cannot resolve proxy %s\n"
          .zero 7
.L_41c058:
          .string "Proxy connect failed, will try %s:%d\n"
          .zero 2
.L_41c080:
          .string "No proxy on the list works. You lose.\n"
          .zero 1
.L_41c0a8:
          .string "NTLM "
          .zero 2
.L_41c0b0:
          .string "Proxy-Authorization"
          .zero 4
.L_41c0c8:
          .string "HEAD"
          .zero 3
.L_41c0d0:
          .string "Will send just a probe request."
.L_41c0f0:
          .string "GET"
          .zero 4
.L_41c0f8:
          .string "0"
          .zero 6
.L_41c100:
          .string "Content-Length"
          .zero 1
.L_41c110:
          .string "Transfer-Encoding"
          .zero 6
.L_41c128:
          .string "\nSending PROXY auth request..."
          .zero 1
.L_41c148:
          .string "HEAD: %s %s %s\n"
.L_41c158:
          .string "\nReading PROXY auth response..."
.L_41c178:
          .string "Proxy-Authenticate"
          .zero 5
.L_41c190:
          .string "No target info block. Cannot do NTLMv2!\n"
          .zero 7
.L_41c1c0:
          .string "Proxy returning invalid challenge!\n"
          .zero 4
.L_41c1e8:
          .string "No Proxy-Authenticate, NTLM/Negotiate not supported?\n"
          .zero 2
.L_41c220:
          .string "sent HEAD"
          .zero 6
.L_41c230:
          .string "has a body"
          .zero 5
.L_41c240:
          .string "Client %s - forcing second request.\n"
          .zero 3
.L_41c268:
          .string "Proxy closed on us, reconnect."
          .zero 1
.L_41c288:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x41c288_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x41c288_0, 14
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x41c288_0:
          .string "proxy_connect"
          .zero 2
.L_41c298:
          .string "chunked"
.L_41c2a0:
          .string "Transfer-Encoding"
          .zero 6
.L_41c2b8:
          .string "close"
          .zero 2
.L_41c2c0:
          .string "Proxy-Connection"
          .zero 7
.L_41c2d8:
          .string "User-Agent"
          .zero 5
.L_41c2e8:
          .string "scanner_hook: matching U-A header (%s) to %s\n"
          .zero 2
.L_41c318:
          .string "scanner_hook: positive match!"
          .zero 2
.L_41c338:
          .string "scanner_hook: read %d of %d\n"
          .zero 3
.L_41c358:
          .string "<title>Downloading status</title>"
          .zero 6
.L_41c380:
          .string "ISAServerUniqueID="
          .zero 5
.L_41c398:
          .string "scanner_hook: ISA id = %s\n"
          .zero 5
.L_41c3b8:
          .string "UpdatePage("
          .zero 4
.L_41c3c8:
          .string "DownloadFinished("
          .zero 6
.L_41c3e0:
          .string "scanner_hook: %s"
          .zero 7
.L_41c3f8:
          .string "To be downloaded"
          .zero 7
.L_41c410:
          .string "scanner_hook: file size detected: %ld KiBs (max: %ld)\n"
          .zero 1
.L_41c448:
          .string "scanner_hook: file size unknown -- quitting"
          .zero 4
.L_41c478:
          .string "%s 200 OK\r\n"
          .zero 4
.L_41c488:
          .string "scanner_hook: Giving up, \"To be downloaded\" line not found!"
          .zero 4
.L_41c4c8:
          .string "ISA-Scanner: %ld of %ld\r\n"
          .zero 6
.L_41c4e8:
          .string "\",\""
          .zero 4
.L_41c4f0:
          .string "%surl=%s&%sSaveToDisk=YES&%sOrig=%s"
          .zero 4
.L_41c518:
          .string "scanner_hook: Getting file with URL data = %s\n"
          .zero 1
.L_41c548:
          .string "%d"
          .zero 5
.L_41c550:
          .string "POST"
          .zero 3
.L_41c558:
          .string "Referer"
.L_41c560:
          .string "application/x-www-form-urlencoded"
          .zero 6
.L_41c588:
          .string "Content-Type"
          .zero 3
.L_41c598:
          .string "Content-Length"
          .zero 1
.L_41c5a8:
          .string "scanner_hook: Authentication OK, getting the file..."
          .zero 3
.L_41c5e0:
          .string "scanner_hook: Authentication failed or refused!"
.L_41c610:
          .string "%ld"
          .zero 4
.L_41c618:
          .string "scanner_hook: New request failed"
          .zero 7
.L_41c640:
          .string "scanner_hook: ISA id not found"
          .zero 1
.L_41c660:
          .string "scanner_hook: flushing %d original bytes\n"
          .zero 6
.L_41c690:
          .string "scanner_hook: failed to send headers"
          .zero 3
.L_41c6b8:
          .string "scanner_hook: ending with %d\n"
          .zero 2
.L_41c6d8:
          .string "%d"
          .zero 5
.L_41c6e0:
          .string "so_resolv: %s failed: %s (%d)\n"
          .zero 1
.L_41c700:
          .string "Resolve %s:\n"
          .zero 3
.L_41c710:
          .string "     %s\n"
          .zero 7
.L_41c720:
          .string "so_connect: create: %s\n"
.L_41c738:
          .string "so_connect: %s : %i \n"
          .zero 2
.L_41c750:
          .string "so_connect: get flags: %s\n"
          .zero 5
.L_41c770:
          .string "so_connect: %s\n"
.L_41c780:
          .string "so_connect: set blocking: %s\n"
          .zero 2
.L_41c7a0:
          .string "so_listen: new socket: %s\n"
          .zero 5
.L_41c7c0:
          .string "setsockopt() (option: SO_REUSEADDR, value: 1) failed: %s\n"
          .zero 6
.L_41c800:
          .string "setsockopt() (option: IPV6_V6ONLY, value: 1) failed: %s\n"
          .zero 7
.L_41c840:
          .string "Cannot bind address %s port %d: %s!\n"
          .zero 3
.L_41c868:
          .string "so_listen: listening on %s:%d\n"
          .zero 1
.L_41c888:
          .string "so_recvln(%d): realloc %d\n"
          .zero 5
#-----------------------------------
.type hextab, @object
.size hextab, 17
#-----------------------------------
hextab:
          .string "0123456789ABCDEF"
          .zero 7
#-----------------------------------
.type hexindex, @object
.size hexindex, 512
#-----------------------------------
hexindex:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x0
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
          .byte 0x3
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
          .byte 0x6
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
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xa
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
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xa
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
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_41cac0:
          .string "Exiting with error. Check daemon logs or run with -v.\n"
          .zero 1
.L_41caf8:
          .string "%s"
          .zero 5
.L_41cb00:
          .string "List data: %lu => 0x%8p\n"
          .zero 7
.L_41cb20:
          .string "src/utils.c"
          .zero 4
.L_41cb30:
          .string "key != NULL"
          .zero 4
.L_41cb40:
          .string "substr != NULL"
          .zero 1
.L_41cb50:
          .string "%-30s => %s\n"
          .zero 3
.L_41cb60:
          .string "src != NULL"
          .zero 4
.L_41cb70:
          .string "pos >= 0"
          .zero 7
.L_41cb80:
          .string "len >= 0"
          .zero 7
.L_41cb90:
          .string "Internal error in copy_rr_data: Pointer dst is NULL\n"
          .zero 3
.L_41cbc8:
          .string "0"
          .zero 6
.L_41cbd0:
          .string "Internal error in copy_rr_data: Pointer src is NULL\n"
          .zero 3
.L_41cc08:
          .string "Internal error in dup_rr_data: Pointer data is NULL\n"
          .zero 3
.L_41cc40:
          .string "Internal error in reset_rr_data: Pointer data is NULL\n"
          .zero 1
.L_41cc78:
          .string "Internal error in free_rr_data: Pointer pdata is NULL\n"
          .zero 1
.L_41ccb0:
          .string "buf != NULL"
          .zero 4
.L_41ccc0:
          .string "str != NULL"
          .zero 4
.L_41ccd0:
          .string "%%%X"
          .zero 3
#-----------------------------------
.type base64, @object
.size base64, 64
#-----------------------------------
base64:
          .byte 0x41
          .byte 0x42
          .byte 0x43
          .byte 0x44
          .byte 0x45
          .byte 0x46
          .byte 0x47
          .byte 0x48
          .byte 0x49
          .byte 0x4a
          .byte 0x4b
          .byte 0x4c
          .byte 0x4d
          .byte 0x4e
          .byte 0x4f
          .byte 0x50
          .byte 0x51
          .byte 0x52
          .byte 0x53
          .byte 0x54
          .byte 0x55
          .byte 0x56
          .byte 0x57
          .byte 0x58
          .byte 0x59
          .byte 0x5a
          .byte 0x61
          .byte 0x62
          .byte 0x63
          .byte 0x64
          .byte 0x65
          .byte 0x66
          .byte 0x67
          .byte 0x68
          .byte 0x69
          .byte 0x6a
          .byte 0x6b
          .byte 0x6c
          .byte 0x6d
          .byte 0x6e
          .byte 0x6f
          .byte 0x70
          .byte 0x71
          .byte 0x72
          .byte 0x73
          .byte 0x74
          .byte 0x75
          .byte 0x76
          .byte 0x77
          .byte 0x78
          .byte 0x79
          .byte 0x7a
          .byte 0x30
          .byte 0x31
          .byte 0x32
          .byte 0x33
          .byte 0x34
          .byte 0x35
          .byte 0x36
          .byte 0x37
          .byte 0x38
          .byte 0x39
          .byte 0x2b
          .byte 0x2f
#-----------------------------------
.type index64, @object
.size index64, 512
#-----------------------------------
index64:
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x3e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x3f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x34
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x35
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x36
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x37
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x38
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x39
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x0
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
          .byte 0x3
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
          .byte 0x6
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
          .byte 0x9
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
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x14
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x15
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x16
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x18
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x19
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x21
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x22
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x23
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x24
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x25
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x26
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x27
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x28
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x29
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x30
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x31
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x32
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x33
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
          .byte 0xff
.L_41cf18:
          .string "rb"
          .zero 5
.L_41cf20:
          .string "/dev/urandom"
          .zero 3
.L_41cf30:
          .string "fread for /dev/urandom failed: %s\n"
          .zero 5
.L_41cf58:
          .string "/dev/urandom can not be opened for reading"
          .zero 5
.L_41cf88:
          .string "write() failed with error %d: %s\n"
          .zero 6
.L_41cfb0:
          .string "ERROR: write() only wrote %zu of %zu bytes after %zu retries.\n"
          .zero 1
#-----------------------------------
.type __PRETTY_FUNCTION__.9, @object
.size __PRETTY_FUNCTION__.9, 17
#-----------------------------------
__PRETTY_FUNCTION__.9:
          .string "hlist_subcmp_all"
          .zero 7
#-----------------------------------
.type __PRETTY_FUNCTION__.8, @object
.size __PRETTY_FUNCTION__.8, 7
#-----------------------------------
__PRETTY_FUNCTION__.8:
          .string "substr"
          .zero 1
#-----------------------------------
.type __PRETTY_FUNCTION__.7, @object
.size __PRETTY_FUNCTION__.7, 13
#-----------------------------------
__PRETTY_FUNCTION__.7:
          .string "copy_rr_data"
          .zero 3
#-----------------------------------
.type __PRETTY_FUNCTION__.6, @object
.size __PRETTY_FUNCTION__.6, 12
#-----------------------------------
__PRETTY_FUNCTION__.6:
          .string "dup_rr_data"
          .zero 4
#-----------------------------------
.type __PRETTY_FUNCTION__.5, @object
.size __PRETTY_FUNCTION__.5, 14
#-----------------------------------
__PRETTY_FUNCTION__.5:
          .string "reset_rr_data"
          .zero 2
#-----------------------------------
.type __PRETTY_FUNCTION__.4, @object
.size __PRETTY_FUNCTION__.4, 13
#-----------------------------------
__PRETTY_FUNCTION__.4:
          .string "free_rr_data"
          .zero 3
.L_41d050:
#-----------------------------------
.type __PRETTY_FUNCTION__.3_disambig_0x41d050_0, @object
.size __PRETTY_FUNCTION__.3_disambig_0x41d050_0, 6
#-----------------------------------
__PRETTY_FUNCTION__.3_disambig_0x41d050_0:
          .string "trimr"
          .zero 2
.L_41d058:
#-----------------------------------
.type __PRETTY_FUNCTION__.2_disambig_0x41d058_0, @object
.size __PRETTY_FUNCTION__.2_disambig_0x41d058_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.2_disambig_0x41d058_0:
          .string "lowercase"
          .zero 6
.L_41d068:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x41d068_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x41d068_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x41d068_0:
          .string "uppercase"
          .zero 6
.L_41d078:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x41d078_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x41d078_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x41d078_0:
          .string "urlencode"
          .zero 6
#-----------------------------------
.type fillbuf, @object
.size fillbuf, 64
#-----------------------------------
fillbuf:
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
.type sbox1, @object
.size sbox1, 256
#-----------------------------------
sbox1:
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x1
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
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x1
          .byte 0x4
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x1
          .byte 0x1
#-----------------------------------
.type sbox2, @object
.size sbox2, 256
#-----------------------------------
sbox2:
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x10
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x10
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x10
          .byte 0x0
#-----------------------------------
.type sbox3, @object
.size sbox3, 256
#-----------------------------------
sbox3:
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x8
          .byte 0x2
          .byte 0x2
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x2
          .byte 0x2
          .byte 0x0
#-----------------------------------
.type sbox4, @object
.size sbox4, 256
#-----------------------------------
sbox4:
          .byte 0x1
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x81
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x81
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x1
          .byte 0x20
          .byte 0x80
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x20
          .byte 0x80
          .byte 0x0
#-----------------------------------
.type sbox5, @object
.size sbox5, 256
#-----------------------------------
sbox5:
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x42
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x40
          .byte 0x0
          .byte 0x1
          .byte 0x8
          .byte 0x2
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x40
#-----------------------------------
.type sbox6, @object
.size sbox6, 256
#-----------------------------------
sbox6:
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x20
          .byte 0x10
          .byte 0x40
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x40
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x10
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x20
#-----------------------------------
.type sbox7, @object
.size sbox7, 256
#-----------------------------------
sbox7:
          .zero 1
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x8
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x20
          .byte 0x0
#-----------------------------------
.type sbox8, @object
.size sbox8, 256
#-----------------------------------
sbox8:
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x4
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x10
          .byte 0x0
          .byte 0x10
          .byte 0x4
          .byte 0x10
#-----------------------------------
.type leftkey_swap, @object
.size leftkey_swap, 64
#-----------------------------------
leftkey_swap:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
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
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
#-----------------------------------
.type rightkey_swap, @object
.size rightkey_swap, 64
#-----------------------------------
rightkey_swap:
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
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x1
          .byte 0x1
          .byte 0x1
          .byte 0x1
#-----------------------------------
.type encrypt_rotate_tab, @object
.size encrypt_rotate_tab, 16
#-----------------------------------
encrypt_rotate_tab:
          .byte 0x1
          .byte 0x1
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x1
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x2
          .byte 0x1
#-----------------------------------
.type weak_keys, @object
.size weak_keys, 512
#-----------------------------------
weak_keys:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xe0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0xf0
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x1e
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0xe0
          .byte 0xfe
          .byte 0x0
          .byte 0xe
          .byte 0xf0
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0xfe
          .byte 0xe0
          .byte 0x0
          .byte 0xe
          .byte 0xfe
          .byte 0xf0
          .byte 0x0
          .byte 0xe0
          .byte 0x0
          .byte 0xe0
          .byte 0x0
          .byte 0xf0
          .byte 0x0
          .byte 0xf0
          .byte 0x0
          .byte 0xe0
          .byte 0x1e
          .byte 0xfe
          .byte 0x0
          .byte 0xf0
          .byte 0xe
          .byte 0xfe
          .byte 0x0
          .byte 0xe0
          .byte 0xe0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0xf0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xfe
          .byte 0x1e
          .byte 0x0
          .byte 0xf0
          .byte 0xfe
          .byte 0xe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x1e
          .byte 0xe0
          .byte 0x0
          .byte 0xfe
          .byte 0xe
          .byte 0xf0
          .byte 0x0
          .byte 0xfe
          .byte 0xe0
          .byte 0x1e
          .byte 0x0
          .byte 0xfe
          .byte 0xf0
          .byte 0xe
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x1e
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x1e
          .byte 0x0
          .byte 0xe0
          .byte 0xfe
          .byte 0xe
          .byte 0x0
          .byte 0xf0
          .byte 0xfe
          .byte 0x1e
          .byte 0x0
          .byte 0xfe
          .byte 0xe0
          .byte 0xe
          .byte 0x0
          .byte 0xfe
          .byte 0xf0
          .byte 0x1e
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x1e
          .byte 0x1e
          .byte 0x1e
          .byte 0x1e
          .byte 0xe
          .byte 0xe
          .byte 0xe
          .byte 0xe
          .byte 0x1e
          .byte 0x1e
          .byte 0xe0
          .byte 0xe0
          .byte 0xe
          .byte 0xe
          .byte 0xf0
          .byte 0xf0
          .byte 0x1e
          .byte 0x1e
          .byte 0xfe
          .byte 0xfe
          .byte 0xe
          .byte 0xe
          .byte 0xfe
          .byte 0xfe
          .byte 0x1e
          .byte 0xe0
          .byte 0x0
          .byte 0xfe
          .byte 0xe
          .byte 0xf0
          .byte 0x0
          .byte 0xfe
          .byte 0x1e
          .byte 0xe0
          .byte 0x1e
          .byte 0xe0
          .byte 0xe
          .byte 0xf0
          .byte 0xe
          .byte 0xf0
          .byte 0x1e
          .byte 0xe0
          .byte 0xe0
          .byte 0x1e
          .byte 0xe
          .byte 0xf0
          .byte 0xf0
          .byte 0xe
          .byte 0x1e
          .byte 0xe0
          .byte 0xfe
          .byte 0x0
          .byte 0xe
          .byte 0xf0
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0xfe
          .byte 0x0
          .byte 0xe0
          .byte 0xe
          .byte 0xfe
          .byte 0x0
          .byte 0xf0
          .byte 0x1e
          .byte 0xfe
          .byte 0x1e
          .byte 0xfe
          .byte 0xe
          .byte 0xfe
          .byte 0xe
          .byte 0xfe
          .byte 0x1e
          .byte 0xfe
          .byte 0xe0
          .byte 0x0
          .byte 0xe
          .byte 0xfe
          .byte 0xf0
          .byte 0x0
          .byte 0x1e
          .byte 0xfe
          .byte 0xfe
          .byte 0x1e
          .byte 0xe
          .byte 0xfe
          .byte 0xfe
          .byte 0xe
          .byte 0xe0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xf0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0xe0
          .byte 0x0
          .byte 0x1e
          .byte 0xfe
          .byte 0xf0
          .byte 0x0
          .byte 0xe
          .byte 0xfe
          .byte 0xe0
          .byte 0x0
          .byte 0xe0
          .byte 0x0
          .byte 0xf0
          .byte 0x0
          .byte 0xf0
          .byte 0x0
          .byte 0xe0
          .byte 0x0
          .byte 0xfe
          .byte 0x1e
          .byte 0xf0
          .byte 0x0
          .byte 0xfe
          .byte 0xe
          .byte 0xe0
          .byte 0x1e
          .byte 0x0
          .byte 0xfe
          .byte 0xf0
          .byte 0xe
          .byte 0x0
          .byte 0xfe
          .byte 0xe0
          .byte 0x1e
          .byte 0x1e
          .byte 0xe0
          .byte 0xf0
          .byte 0xe
          .byte 0xe
          .byte 0xf0
          .byte 0xe0
          .byte 0x1e
          .byte 0xe0
          .byte 0x1e
          .byte 0xf0
          .byte 0xe
          .byte 0xf0
          .byte 0xe
          .byte 0xe0
          .byte 0x1e
          .byte 0xfe
          .byte 0x0
          .byte 0xf0
          .byte 0xe
          .byte 0xfe
          .byte 0x0
          .byte 0xe0
          .byte 0xe0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0xf0
          .byte 0x0
          .byte 0x0
          .byte 0xe0
          .byte 0xe0
          .byte 0x1e
          .byte 0x1e
          .byte 0xf0
          .byte 0xf0
          .byte 0xe
          .byte 0xe
          .byte 0xe0
          .byte 0xe0
          .byte 0xe0
          .byte 0xe0
          .byte 0xf0
          .byte 0xf0
          .byte 0xf0
          .byte 0xf0
          .byte 0xe0
          .byte 0xe0
          .byte 0xfe
          .byte 0xfe
          .byte 0xf0
          .byte 0xf0
          .byte 0xfe
          .byte 0xfe
          .byte 0xe0
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0xf0
          .byte 0xfe
          .byte 0x0
          .byte 0xe
          .byte 0xe0
          .byte 0xfe
          .byte 0x1e
          .byte 0x0
          .byte 0xf0
          .byte 0xfe
          .byte 0xe
          .byte 0x0
          .byte 0xe0
          .byte 0xfe
          .byte 0xe0
          .byte 0xfe
          .byte 0xf0
          .byte 0xfe
          .byte 0xf0
          .byte 0xfe
          .byte 0xe0
          .byte 0xfe
          .byte 0xfe
          .byte 0xe0
          .byte 0xf0
          .byte 0xfe
          .byte 0xfe
          .byte 0xf0
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x1e
          .byte 0xe0
          .byte 0xfe
          .byte 0x0
          .byte 0xe
          .byte 0xf0
          .byte 0xfe
          .byte 0x0
          .byte 0xe0
          .byte 0x1e
          .byte 0xfe
          .byte 0x0
          .byte 0xf0
          .byte 0xe
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x0
          .byte 0xfe
          .byte 0x1e
          .byte 0x0
          .byte 0xe0
          .byte 0xfe
          .byte 0xe
          .byte 0x0
          .byte 0xf0
          .byte 0xfe
          .byte 0x1e
          .byte 0x1e
          .byte 0xfe
          .byte 0xfe
          .byte 0xe
          .byte 0xe
          .byte 0xfe
          .byte 0xfe
          .byte 0x1e
          .byte 0xe0
          .byte 0x0
          .byte 0xfe
          .byte 0xe
          .byte 0xf0
          .byte 0x0
          .byte 0xfe
          .byte 0x1e
          .byte 0xfe
          .byte 0x1e
          .byte 0xfe
          .byte 0xe
          .byte 0xfe
          .byte 0xe
          .byte 0xfe
          .byte 0xe0
          .byte 0x0
          .byte 0x1e
          .byte 0xfe
          .byte 0xf0
          .byte 0x0
          .byte 0xe
          .byte 0xfe
          .byte 0xe0
          .byte 0x1e
          .byte 0x0
          .byte 0xfe
          .byte 0xf0
          .byte 0xe
          .byte 0x0
          .byte 0xfe
          .byte 0xe0
          .byte 0xe0
          .byte 0xfe
          .byte 0xfe
          .byte 0xf0
          .byte 0xf0
          .byte 0xfe
          .byte 0xfe
          .byte 0xe0
          .byte 0xfe
          .byte 0xe0
          .byte 0xfe
          .byte 0xf0
          .byte 0xfe
          .byte 0xf0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x0
          .byte 0x0
          .byte 0xfe
          .byte 0xfe
          .byte 0x1e
          .byte 0x1e
          .byte 0xfe
          .byte 0xfe
          .byte 0xe
          .byte 0xe
          .byte 0xfe
          .byte 0xfe
          .byte 0xe0
          .byte 0xe0
          .byte 0xfe
          .byte 0xfe
          .byte 0xf0
          .byte 0xf0
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
          .byte 0xfe
.L_41db58:
          .string "src/xcrypt.c"
          .zero 3
.L_41db68:
          .string "(dest != NULL && src != NULL) || n == 0"
.L_41db90:
          .string "ctx != NULL"
          .zero 4
.L_41dba0:
          .string "resbuf != NULL"
          .zero 1
.L_41dbb0:
#-----------------------------------
.type __PRETTY_FUNCTION__.3_disambig_0x41dbb0_0, @object
.size __PRETTY_FUNCTION__.3_disambig_0x41dbb0_0, 7
#-----------------------------------
__PRETTY_FUNCTION__.3_disambig_0x41dbb0_0:
          .string "memxor"
          .zero 1
.L_41dbb8:
#-----------------------------------
.type __PRETTY_FUNCTION__.2_disambig_0x41dbb8_0, @object
.size __PRETTY_FUNCTION__.2_disambig_0x41dbb8_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.2_disambig_0x41dbb8_0:
          .string "md5_init_ctx"
          .zero 3
.L_41dbc8:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x41dbc8_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x41dbc8_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x41dbc8_0:
          .string "md5_read_ctx"
          .zero 3
.L_41dbd8:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x41dbd8_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x41dbd8_0, 15
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x41dbd8_0:
          .string "md5_finish_ctx"
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

.align 3
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
.L_430340:
#-----------------------------------
.globl __dso_handle
.hidden __dso_handle
.type __dso_handle, @object
#-----------------------------------
__dso_handle:
          .zero 8
#-----------------------------------
.globl __TMC_END__
.hidden __TMC_END__
.type __TMC_END__, @object
#-----------------------------------
__TMC_END__:
#-----------------------------------
.globl _edata
.type _edata, @notype
#-----------------------------------
_edata:
.L_430348:
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
.globl __bss_start__
.type __bss_start__, @notype
#-----------------------------------
__bss_start__:
#-----------------------------------
.globl __bss_start
.type __bss_start, @notype
#-----------------------------------
__bss_start:
          .zero 16
#-----------------------------------
.globl optarg_copy
.type optarg_copy, @object
.size optarg_copy, 8
#-----------------------------------
optarg_copy:
          .zero 8
#-----------------------------------
.globl optind_copy
.type optind_copy, @object
.size optind_copy, 4
#-----------------------------------
optind_copy:
          .zero 8
#-----------------------------------
.globl stdout_copy
.type stdout_copy, @object
.size stdout_copy, 8
#-----------------------------------
stdout_copy:
          .zero 16
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
.globl debug
.type debug, @object
.size debug, 4
#-----------------------------------
debug:
          .zero 8
#-----------------------------------
.globl g_creds
.type g_creds, @object
.size g_creds, 8
#-----------------------------------
g_creds:
          .zero 8
#-----------------------------------
.globl quit
.type quit, @object
.size quit, 4
#-----------------------------------
quit:
          .zero 4
#-----------------------------------
.globl ntlmbasic
.type ntlmbasic, @object
.size ntlmbasic, 4
#-----------------------------------
ntlmbasic:
          .zero 4
#-----------------------------------
.globl serialize
.type serialize, @object
.size serialize, 4
#-----------------------------------
serialize:
          .zero 4
#-----------------------------------
.globl scanner_plugin
.type scanner_plugin, @object
.size scanner_plugin, 4
#-----------------------------------
scanner_plugin:
          .zero 4
#-----------------------------------
.globl scanner_plugin_maxsize
.type scanner_plugin_maxsize, @object
.size scanner_plugin_maxsize, 8
#-----------------------------------
scanner_plugin_maxsize:
          .zero 8
#-----------------------------------
.globl threads_list
.type threads_list, @object
.size threads_list, 8
#-----------------------------------
threads_list:
          .zero 8
#-----------------------------------
.globl threads_mtx
.type threads_mtx, @object
.size threads_mtx, 48
#-----------------------------------
threads_mtx:
          .zero 48
#-----------------------------------
.globl connection_list
.type connection_list, @object
.size connection_list, 8
#-----------------------------------
connection_list:
          .zero 8
#-----------------------------------
.globl connection_mtx
.type connection_mtx, @object
.size connection_mtx, 48
#-----------------------------------
connection_mtx:
          .zero 48
#-----------------------------------
.globl header_list
.type header_list, @object
.size header_list, 8
#-----------------------------------
header_list:
          .zero 8
#-----------------------------------
.globl users_list
.type users_list, @object
.size users_list, 8
#-----------------------------------
users_list:
          .zero 8
#-----------------------------------
.globl scanner_agent_list
.type scanner_agent_list, @object
.size scanner_agent_list, 8
#-----------------------------------
scanner_agent_list:
          .zero 8
#-----------------------------------
.globl noproxy_list
.type noproxy_list, @object
.size noproxy_list, 8
#-----------------------------------
noproxy_list:
          .zero 8
#-----------------------------------
.globl pac_initialized
.type pac_initialized, @object
.size pac_initialized, 4
#-----------------------------------
pac_initialized:
          .zero 8
#-----------------------------------
.globl pac_list
.type pac_list, @object
.size pac_list, 8
#-----------------------------------
pac_list:
          .zero 8
#-----------------------------------
.globl pac_mtx
.type pac_mtx, @object
.size pac_mtx, 48
#-----------------------------------
pac_mtx:
          .zero 48
#-----------------------------------
.globl parent_count
.type parent_count, @object
.size parent_count, 4
#-----------------------------------
parent_count:
          .zero 8
#-----------------------------------
.globl parent_list
.type parent_list, @object
.size parent_list, 8
#-----------------------------------
parent_list:
          .zero 8
#-----------------------------------
.globl parent_curr
.type parent_curr, @object
.size parent_curr, 8
#-----------------------------------
parent_curr:
          .zero 8
#-----------------------------------
.globl parent_mtx
.type parent_mtx, @object
.size parent_mtx, 48
#-----------------------------------
parent_mtx:
          .zero 48
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
.L_4304d0:
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
.symver __assert_fail,__assert_fail@GLIBC_2.17
.globl __assert_fail
.type __assert_fail, @function
#-----------------------------------
#-----------------------------------
.symver __ctype_b_loc,__ctype_b_loc@GLIBC_2.17
.globl __ctype_b_loc
.type __ctype_b_loc, @function
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
.symver __posix_getopt,__posix_getopt@GLIBC_2.17
.globl __posix_getopt
.type __posix_getopt, @function
#-----------------------------------
#-----------------------------------
.symver abort,abort@GLIBC_2.17
.globl abort
.type abort, @function
#-----------------------------------
#-----------------------------------
.symver accept,accept@GLIBC_2.17
.globl accept
.type accept, @function
#-----------------------------------
#-----------------------------------
.symver atoi,atoi@GLIBC_2.17
.globl atoi
.type atoi, @function
#-----------------------------------
#-----------------------------------
.symver atol,atol@GLIBC_2.17
.globl atol
.type atol, @function
#-----------------------------------
#-----------------------------------
.symver atoll,atoll@GLIBC_2.17
.globl atoll
.type atoll, @function
#-----------------------------------
#-----------------------------------
.symver bind,bind@GLIBC_2.17
.globl bind
.type bind, @function
#-----------------------------------
#-----------------------------------
.symver calloc,calloc@GLIBC_2.17
.globl calloc
.type calloc, @function
#-----------------------------------
#-----------------------------------
.symver chdir,chdir@GLIBC_2.17
.globl chdir
.type chdir, @function
#-----------------------------------
#-----------------------------------
.symver close,close@GLIBC_2.17
.globl close
.type close, @function
#-----------------------------------
#-----------------------------------
.symver connect,connect@GLIBC_2.17
.globl connect
.type connect, @function
#-----------------------------------
#-----------------------------------
.symver dup2,dup2@GLIBC_2.17
.globl dup2
.type dup2, @function
#-----------------------------------
#-----------------------------------
.symver exit,exit@GLIBC_2.17
.globl exit
.type exit, @function
#-----------------------------------
#-----------------------------------
.symver fclose,fclose@GLIBC_2.17
.globl fclose
.type fclose, @function
#-----------------------------------
#-----------------------------------
.symver fcntl,fcntl@GLIBC_2.17
.globl fcntl
.type fcntl, @function
#-----------------------------------
#-----------------------------------
.symver feof,feof@GLIBC_2.17
.globl feof
.type feof, @function
#-----------------------------------
#-----------------------------------
.symver ferror,ferror@GLIBC_2.17
.globl ferror
.type ferror, @function
#-----------------------------------
#-----------------------------------
.symver fgets,fgets@GLIBC_2.17
.globl fgets
.type fgets, @function
#-----------------------------------
#-----------------------------------
.symver fnmatch,fnmatch@GLIBC_2.17
.globl fnmatch
.type fnmatch, @function
#-----------------------------------
#-----------------------------------
.symver fopen,fopen@GLIBC_2.17
.globl fopen
.type fopen, @function
#-----------------------------------
#-----------------------------------
.symver fork,fork@GLIBC_2.17
.globl fork
.type fork, @function
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
.symver fread,fread@GLIBC_2.17
.globl fread
.type fread, @function
#-----------------------------------
#-----------------------------------
.symver free,free@GLIBC_2.17
.globl free
.type free, @function
#-----------------------------------
#-----------------------------------
.symver freeaddrinfo,freeaddrinfo@GLIBC_2.17
.globl freeaddrinfo
.type freeaddrinfo, @function
#-----------------------------------
#-----------------------------------
.symver fwrite,fwrite@GLIBC_2.17
.globl fwrite
.type fwrite, @function
#-----------------------------------
#-----------------------------------
.symver gai_strerror,gai_strerror@GLIBC_2.17
.globl gai_strerror
.type gai_strerror, @function
#-----------------------------------
#-----------------------------------
.symver getaddrinfo,getaddrinfo@GLIBC_2.17
.globl getaddrinfo
.type getaddrinfo, @function
#-----------------------------------
#-----------------------------------
.symver geteuid,geteuid@GLIBC_2.17
.globl geteuid
.type geteuid, @function
#-----------------------------------
#-----------------------------------
.symver getgid,getgid@GLIBC_2.17
.globl getgid
.type getgid, @function
#-----------------------------------
#-----------------------------------
.symver gethostname,gethostname@GLIBC_2.17
.globl gethostname
.type gethostname, @function
#-----------------------------------
#-----------------------------------
.symver getpid,getpid@GLIBC_2.17
.globl getpid
.type getpid, @function
#-----------------------------------
#-----------------------------------
.symver getpwnam,getpwnam@GLIBC_2.17
.globl getpwnam
.type getpwnam, @function
#-----------------------------------
#-----------------------------------
.symver getuid,getuid@GLIBC_2.17
.globl getuid
.type getuid, @function
#-----------------------------------
#-----------------------------------
.symver inet_ntoa,inet_ntoa@GLIBC_2.17
.globl inet_ntoa
.type inet_ntoa, @function
#-----------------------------------
#-----------------------------------
.symver inet_ntop,inet_ntop@GLIBC_2.17
.globl inet_ntop
.type inet_ntop, @function
#-----------------------------------
#-----------------------------------
.symver listen,listen@GLIBC_2.17
.globl listen
.type listen, @function
#-----------------------------------
#-----------------------------------
.symver malloc,malloc@GLIBC_2.17
.globl malloc
.type malloc, @function
#-----------------------------------
#-----------------------------------
.symver memcmp,memcmp@GLIBC_2.17
.globl memcmp
.type memcmp, @function
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
.symver ntohs,ntohs@GLIBC_2.17
.globl ntohs
.type ntohs, @function
#-----------------------------------
#-----------------------------------
.symver open,open@GLIBC_2.17
.globl open
.type open, @function
#-----------------------------------
#-----------------------------------
.symver openlog,openlog@GLIBC_2.17
.globl openlog
.type openlog, @function
#-----------------------------------
#-----------------------------------
.symver optarg,optarg@GLIBC_2.17
.globl optarg
.type optarg, @object
.size optarg, 8
#-----------------------------------
#-----------------------------------
.symver optind,optind@GLIBC_2.17
.globl optind
.type optind, @object
.size optind, 4
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
.symver pthread_attr_destroy,pthread_attr_destroy@GLIBC_2.17
.globl pthread_attr_destroy
.type pthread_attr_destroy, @function
#-----------------------------------
#-----------------------------------
.symver pthread_attr_init,pthread_attr_init@GLIBC_2.17
.globl pthread_attr_init
.type pthread_attr_init, @function
#-----------------------------------
#-----------------------------------
.symver pthread_attr_setdetachstate,pthread_attr_setdetachstate@GLIBC_2.17
.globl pthread_attr_setdetachstate
.type pthread_attr_setdetachstate, @function
#-----------------------------------
#-----------------------------------
.symver pthread_attr_setguardsize,pthread_attr_setguardsize@GLIBC_2.34
.globl pthread_attr_setguardsize
.type pthread_attr_setguardsize, @function
#-----------------------------------
#-----------------------------------
.symver pthread_attr_setstacksize,pthread_attr_setstacksize@GLIBC_2.34
.globl pthread_attr_setstacksize
.type pthread_attr_setstacksize, @function
#-----------------------------------
#-----------------------------------
.symver pthread_create,pthread_create@GLIBC_2.34
.globl pthread_create
.type pthread_create, @function
#-----------------------------------
#-----------------------------------
.symver pthread_mutex_lock,pthread_mutex_lock@GLIBC_2.17
.globl pthread_mutex_lock
.type pthread_mutex_lock, @function
#-----------------------------------
#-----------------------------------
.symver pthread_mutex_unlock,pthread_mutex_unlock@GLIBC_2.17
.globl pthread_mutex_unlock
.type pthread_mutex_unlock, @function
#-----------------------------------
#-----------------------------------
.symver pthread_self,pthread_self@GLIBC_2.17
.globl pthread_self
.type pthread_self, @function
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
.symver random,random@GLIBC_2.17
.globl random
.type random, @function
#-----------------------------------
#-----------------------------------
.symver read,read@GLIBC_2.17
.globl read
.type read, @function
#-----------------------------------
#-----------------------------------
.symver realloc,realloc@GLIBC_2.17
.globl realloc
.type realloc, @function
#-----------------------------------
#-----------------------------------
.symver recv,recv@GLIBC_2.17
.globl recv
.type recv, @function
#-----------------------------------
#-----------------------------------
.symver select,select@GLIBC_2.17
.globl select
.type select, @function
#-----------------------------------
#-----------------------------------
.symver setgid,setgid@GLIBC_2.17
.globl setgid
.type setgid, @function
#-----------------------------------
#-----------------------------------
.symver setlogmask,setlogmask@GLIBC_2.17
.globl setlogmask
.type setlogmask, @function
#-----------------------------------
#-----------------------------------
.symver setsid,setsid@GLIBC_2.17
.globl setsid
.type setsid, @function
#-----------------------------------
#-----------------------------------
.symver setsockopt,setsockopt@GLIBC_2.17
.globl setsockopt
.type setsockopt, @function
#-----------------------------------
#-----------------------------------
.symver setuid,setuid@GLIBC_2.17
.globl setuid
.type setuid, @function
#-----------------------------------
#-----------------------------------
.symver signal,signal@GLIBC_2.17
.globl signal
.type signal, @function
#-----------------------------------
#-----------------------------------
.symver snprintf,snprintf@GLIBC_2.17
.globl snprintf
.type snprintf, @function
#-----------------------------------
#-----------------------------------
.symver socket,socket@GLIBC_2.17
.globl socket
.type socket, @function
#-----------------------------------
#-----------------------------------
.symver srandom,srandom@GLIBC_2.17
.globl srandom
.type srandom, @function
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
.symver strcasecmp,strcasecmp@GLIBC_2.17
.globl strcasecmp
.type strcasecmp, @function
#-----------------------------------
#-----------------------------------
.symver strchr,strchr@GLIBC_2.17
.globl strchr
.type strchr, @function
#-----------------------------------
#-----------------------------------
.symver strcmp,strcmp@GLIBC_2.17
.globl strcmp
.type strcmp, @function
#-----------------------------------
#-----------------------------------
.symver strcspn,strcspn@GLIBC_2.17
.globl strcspn
.type strcspn, @function
#-----------------------------------
#-----------------------------------
.symver strdup,strdup@GLIBC_2.17
.globl strdup
.type strdup, @function
#-----------------------------------
#-----------------------------------
.symver strerror,strerror@GLIBC_2.17
.globl strerror
.type strerror, @function
#-----------------------------------
#-----------------------------------
.symver strlcat,strlcat@GLIBC_2.38
.globl strlcat
.type strlcat, @function
#-----------------------------------
#-----------------------------------
.symver strlcpy,strlcpy@GLIBC_2.38
.globl strlcpy
.type strlcpy, @function
#-----------------------------------
#-----------------------------------
.symver strlen,strlen@GLIBC_2.17
.globl strlen
.type strlen, @function
#-----------------------------------
#-----------------------------------
.symver strncasecmp,strncasecmp@GLIBC_2.17
.globl strncasecmp
.type strncasecmp, @function
#-----------------------------------
#-----------------------------------
.symver strncpy,strncpy@GLIBC_2.17
.globl strncpy
.type strncpy, @function
#-----------------------------------
#-----------------------------------
.symver strrchr,strrchr@GLIBC_2.17
.globl strrchr
.type strrchr, @function
#-----------------------------------
#-----------------------------------
.symver strsep,strsep@GLIBC_2.17
.globl strsep
.type strsep, @function
#-----------------------------------
#-----------------------------------
.symver strstr,strstr@GLIBC_2.17
.globl strstr
.type strstr, @function
#-----------------------------------
#-----------------------------------
.symver strtok_r,strtok_r@GLIBC_2.17
.globl strtok_r
.type strtok_r, @function
#-----------------------------------
#-----------------------------------
.symver strtol,strtol@GLIBC_2.17
.globl strtol
.type strtol, @function
#-----------------------------------
#-----------------------------------
.symver strtoul,strtoul@GLIBC_2.17
.globl strtoul
.type strtoul, @function
#-----------------------------------
#-----------------------------------
.symver syslog,syslog@GLIBC_2.17
.globl syslog
.type syslog, @function
#-----------------------------------
#-----------------------------------
.symver tcgetattr,tcgetattr@GLIBC_2.17
.globl tcgetattr
.type tcgetattr, @function
#-----------------------------------
#-----------------------------------
.symver tcsetattr,tcsetattr@GLIBC_2.17
.globl tcsetattr
.type tcsetattr, @function
#-----------------------------------
#-----------------------------------
.symver time,time@GLIBC_2.17
.globl time
.type time, @function
#-----------------------------------
#-----------------------------------
.symver tolower,tolower@GLIBC_2.17
.globl tolower
.type tolower, @function
#-----------------------------------
#-----------------------------------
.symver toupper,toupper@GLIBC_2.17
.globl toupper
.type toupper, @function
#-----------------------------------
#-----------------------------------
.symver umask,umask@GLIBC_2.17
.globl umask
.type umask, @function
#-----------------------------------
#-----------------------------------
.symver unlink,unlink@GLIBC_2.17
.globl unlink
.type unlink, @function
#-----------------------------------
#-----------------------------------
.symver write,write@GLIBC_2.17
.globl write
.type write, @function
#-----------------------------------
