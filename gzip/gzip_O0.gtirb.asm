[INFO]  Reading GTIRB file:     "basilbench/gzip/gzip_O0.gtirb"
[INFO]  Module gzip_O0 has integral symbols; attempting to assign referents...
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
.L_401548:

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
            cbz x0,.L_401914

            b __gmon_start__
.L_401914:

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
            b.eq .L_40194c

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_40194c

            mov x16,x1
            br x16
.L_40194c:

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
            cbz x1,.L_401988

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_401988

            mov x16,x2
            br x16
.L_401988:

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
            tbnz w0,#0,.L_4019b0

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_4019b0:

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
.globl bi_init
.type bi_init, @function
#-----------------------------------
bi_init:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str w0,[sp,#12]
            adrp x0, zfile
            add x0,x0, :lo12:zfile
            ldr w1,[sp,#12]
            str w1,[x0]
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            strh wzr,[x0]
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            str wzr,[x0]
            adrp x0, zfile
            add x0,x0, :lo12:zfile
            ldr w0,[x0]
            cmn w0,#1
            b.eq .L_401a1c

            adrp x0, read_buf
            add x0,x0, :lo12:read_buf
            adrp x1, file_read
            add x1,x1, :lo12:file_read
            str x1,[x0]
.L_401a1c:

            nop
            nop
            nop
            nop
            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size bi_init, . - bi_init
.align 3
#-----------------------------------
.globl send_bits
.type send_bits, @function
#-----------------------------------
send_bits:

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
            str w1,[sp,#24]
            mov w1,#16
            ldr w0,[sp,#24]
            sub w1,w1,w0
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            cmp w1,w0
            b.ge .L_401c4c

            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            ldr w1,[sp,#28]
            lsl w0,w1,w0
            sxth w1,w0
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            sxth w0,w0
            orr w0,w1,w0
            sxth w0,w0
            and w1,w0,#65535
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            strh w1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_401b34

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_401be4
.L_401b34:

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_401b88

            bl flush_outbuf
.L_401b88:

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_401be4

            bl flush_outbuf
.L_401be4:

            ldr w0,[sp,#28]
            and w0,w0,#65535
            mov w1,w0
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            mov w2,w0
            mov w0,#16
            sub w0,w0,w2
            asr w0,w1,w0
            and w1,w0,#65535
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            strh w1,[x0]
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            mov w1,w0
            ldr w0,[sp,#24]
            add w0,w1,w0
            sub w0,w0,#16
            mov w1,w0
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            str w1,[x0]
            b .L_401cac
.L_401c4c:

            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            ldr w1,[sp,#28]
            lsl w0,w1,w0
            sxth w1,w0
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            sxth w0,w0
            orr w0,w1,w0
            sxth w0,w0
            and w1,w0,#65535
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            strh w1,[x0]
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w1,[x0]
            ldr w0,[sp,#24]
            add w1,w1,w0
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            str w1,[x0]
.L_401cac:

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
.size send_bits, . - send_bits
.align 3
#-----------------------------------
.globl bi_reverse
.type bi_reverse, @function
#-----------------------------------
bi_reverse:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            str x19,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 19, -32
            str w0,[sp,#28]
            str w1,[sp,#24]
            mov w19,#0
.L_401cc8:

            ldr w0,[sp,#28]
            and w0,w0,#1
            orr w19,w19,w0
            ldr w0,[sp,#28]
            lsr w0,w0,#1
            str w0,[sp,#28]
            lsl w19,w19,#1
            ldr w0,[sp,#24]
            sub w0,w0,#1
            str w0,[sp,#24]
            ldr w0,[sp,#24]
            cmp w0,#0
            b.gt .L_401cc8

            lsr w0,w19,#1
            ldr x19,[sp],#32
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size bi_reverse, . - bi_reverse
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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            cmp w0,#8
            b.le .L_401e74

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_401dc0

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_401edc
.L_401dc0:

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_401e14

            bl flush_outbuf
.L_401e14:

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_401edc

            bl flush_outbuf

            b .L_401edc
.L_401e74:

            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            ldr w0,[x0]
            cmp w0,#0
            b.le .L_401edc

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            ldrh w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_401edc

            bl flush_outbuf
.L_401edc:

            adrp x0, bi_buf
            add x0,x0, :lo12:bi_buf
            strh wzr,[x0]
            adrp x0, bi_valid
            add x0,x0, :lo12:bi_valid
            str wzr,[x0]
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
.size bi_windup, . - bi_windup
.align 4
#-----------------------------------
.globl copy_block
.type copy_block, @function
#-----------------------------------
copy_block:

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
            str w2,[sp,#16]
            bl bi_windup

            ldr w0,[sp,#16]
            cmp w0,#0
            b.eq .L_402208

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_401fb4

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            ldr w1,[sp,#20]
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#20]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_402058
.L_401fb4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            ldr w1,[sp,#20]
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_402000

            bl flush_outbuf
.L_402000:

            ldr w0,[sp,#20]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_402058

            bl flush_outbuf
.L_402058:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_4020f8

            ldr w0,[sp,#20]
            and w1,w0,#255
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w3,w0,#1
            adrp x2, outcnt
            add x2,x2, :lo12:outcnt
            str w3,[x2]
            mvn w1,w1
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#20]
            and w0,w0,#65535
            mvn w0,w0
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_402208
.L_4020f8:

            ldr w0,[sp,#20]
            and w1,w0,#255
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w3,w0,#1
            adrp x2, outcnt
            add x2,x2, :lo12:outcnt
            str w3,[x2]
            mvn w1,w1
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_40214c

            bl flush_outbuf
.L_40214c:

            ldr w0,[sp,#20]
            and w0,w0,#65535
            mvn w0,w0
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_402208

            bl flush_outbuf

            b .L_402208
.L_4021b0:

            ldr x0,[sp,#24]
            add x1,x0,#1
            str x1,[sp,#24]
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            ldr w1,[x1]
            add w3,w1,#1
            adrp x2, outcnt
            add x2,x2, :lo12:outcnt
            str w3,[x2]
            ldrb w3,[x0]
            adrp x0, outbuf
            add x2,x0, :lo12:outbuf
            mov w0,w1
            mov w1,w3
            strb w1,[x2,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_402208

            bl flush_outbuf
.L_402208:

            ldr w0,[sp,#20]
            sub w1,w0,#1
            str w1,[sp,#20]
            cmp w0,#0
            b.ne .L_4021b0

            nop
            nop
            nop
            nop
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
.size copy_block, . - copy_block
.align 2
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
            str x19,[sp,#16]
.cfi_offset 19, -32
            str w0,[sp,#44]
            str x1,[sp,#32]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.le .L_402258

            ldr w0,[sp,#44]
            cmp w0,#9
            b.le .L_402264
.L_402258:

            adrp x0, .L_412b48
            add x0,x0, :lo12:.L_412b48
            bl error
.L_402264:

            adrp x0, compr_level
            add x0,x0, :lo12:compr_level
            ldr w1,[sp,#44]
            str w1,[x0]
            adrp x0, prev+65536
            add x0,x0, :lo12:prev+65536
            mov x2,#65536
            mov w1,#0
            bl memset

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            mov x1,#4294967295
            str x1,[x0]
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            str xzr,[x0]
            adrp x0, configuration_table
            add x1,x0, :lo12:configuration_table
            ldrsw x0,[sp,#44]
            lsl x0,x0,#3
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            adrp x0, max_lazy_match
            add x0,x0, :lo12:max_lazy_match
            str w1,[x0]
            adrp x0, configuration_table
            add x1,x0, :lo12:configuration_table
            ldrsw x0,[sp,#44]
            lsl x0,x0,#3
            add x0,x1,x0
            ldrh w0,[x0]
            mov w1,w0
            adrp x0, good_match
            add x0,x0, :lo12:good_match
            str w1,[x0]
            adrp x0, configuration_table
            add x1,x0, :lo12:configuration_table
            ldrsw x0,[sp,#44]
            lsl x0,x0,#3
            add x0,x1,x0
            ldrh w0,[x0,#4]
            mov w1,w0
            adrp x0, nice_match
            add x0,x0, :lo12:nice_match
            str w1,[x0]
            adrp x0, configuration_table
            add x1,x0, :lo12:configuration_table
            ldrsw x0,[sp,#44]
            lsl x0,x0,#3
            add x0,x1,x0
            ldrh w0,[x0,#6]
            mov w1,w0
            adrp x0, max_chain_length
            add x0,x0, :lo12:max_chain_length
            str w1,[x0]
            ldr w0,[sp,#44]
            cmp w0,#1
            b.ne .L_40236c

            ldr x0,[sp,#32]
            ldrh w0,[x0]
            orr w0,w0,#4
            and w1,w0,#65535
            ldr x0,[sp,#32]
            strh w1,[x0]
            b .L_402390
.L_40236c:

            ldr w0,[sp,#44]
            cmp w0,#9
            b.ne .L_402390

            ldr x0,[sp,#32]
            ldrh w0,[x0]
            orr w0,w0,#2
            and w1,w0,#65535
            ldr x0,[sp,#32]
            strh w1,[x0]
.L_402390:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str wzr,[x0]
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str xzr,[x0]
            adrp x0, read_buf
            add x0,x0, :lo12:read_buf
            ldr x2,[x0]
            mov w1,#65536
            adrp x0, window
            add x0,x0, :lo12:window
            blr x2

            mov w1,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4023fc

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_40241c
.L_4023fc:

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            mov w1,#1
            str w1,[x0]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str wzr,[x0]
            b .L_4024ac
.L_40241c:

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            str wzr,[x0]
            b .L_402430
.L_40242c:

            bl fill_window
.L_402430:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#261
            b.hi .L_402458

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40242c
.L_402458:

            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str wzr,[x0]
            mov w19,#0
            b .L_4024a4
.L_40246c:

            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w19
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            add w19,w19,#1
.L_4024a4:

            cmp w19,#1
            b.ls .L_40246c
.L_4024ac:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size lm_init, . - lm_init
.align 3
#-----------------------------------
.globl longest_match
.type longest_match, @function
#-----------------------------------
longest_match:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp x19,x20,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 19, -80
.cfi_offset 20, -72
            stp x21,x22,[sp,#16]
            str x23,[sp,#32]
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 23, -48
            str w0,[sp,#60]
            adrp x0, max_chain_length
            add x0,x0, :lo12:max_chain_length
            ldr w0,[x0]
            str w0,[sp,#76]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x19,x1,x0
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            str w0,[sp,#72]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w2,#32506
            mov w1,#32506
            cmp w0,w2
            csel w1,w0,w1,hs
            mov w0,#-32506
            add w0,w1,w0
            str w0,[sp,#68]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w0,w0
            add x1,x0,#258
            adrp x0, window
            add x0,x0, :lo12:window
            add x21,x1,x0
            ldrsw x0,[sp,#72]
            sub x0,x0,#1
            add x0,x19,x0
            ldrb w22,[x0]
            ldrsw x0,[sp,#72]
            add x0,x19,x0
            ldrb w23,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w1,[x0]
            adrp x0, good_match
            add x0,x0, :lo12:good_match
            ldr w0,[x0]
            cmp w1,w0
            b.lo .L_402594

            ldr w0,[sp,#76]
            lsr w0,w0,#2
            str w0,[sp,#76]
.L_402594:

            ldr w1,[sp,#60]
            adrp x0, window
            add x0,x0, :lo12:window
            add x20,x1,x0
            ldrsw x0,[sp,#72]
            add x0,x20,x0
            ldrb w0,[x0]
            cmp w23,w0
            b.ne .L_402730

            ldrsw x0,[sp,#72]
            sub x0,x0,#1
            add x0,x20,x0
            ldrb w0,[x0]
            cmp w22,w0
            b.ne .L_402730

            ldrb w1,[x20]
            ldrb w0,[x19]
            cmp w1,w0
            b.ne .L_402730

            add x20,x20,#1
            ldrb w1,[x20]
            add x0,x19,#1
            ldrb w0,[x0]
            cmp w1,w0
            b.ne .L_402730

            add x19,x19,#2
            add x20,x20,#1
.L_402600:

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            add x19,x19,#1
            ldrb w1,[x19]
            add x20,x20,#1
            ldrb w0,[x20]
            cmp w1,w0
            b.ne .L_4026c8

            cmp x19,x21
            b.lo .L_402600
.L_4026c8:

            sub x0,x21,x19
            mov w1,w0
            mov w0,#258
            sub w20,w0,w1
            sub x19,x21,#258
            ldr w0,[sp,#72]
            cmp w20,w0
            b.le .L_402734

            adrp x0, match_start
            add x0,x0, :lo12:match_start
            ldr w1,[sp,#60]
            str w1,[x0]
            str w20,[sp,#72]
            adrp x0, nice_match
            add x0,x0, :lo12:nice_match
            ldr w0,[x0]
            cmp w20,w0
            b.ge .L_40277c

            ldrsw x0,[sp,#72]
            sub x0,x0,#1
            add x0,x19,x0
            ldrb w22,[x0]
            ldrsw x0,[sp,#72]
            add x0,x19,x0
            ldrb w23,[x0]
            b .L_402734
.L_402730:

            nop
            nop
            nop
            nop
.L_402734:

            ldr w0,[sp,#60]
            and w1,w0,#32767
            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w1
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#60]
            ldr w1,[sp,#60]
            ldr w0,[sp,#68]
            cmp w1,w0
            b.ls .L_402780

            ldr w0,[sp,#76]
            sub w0,w0,#1
            str w0,[sp,#76]
            ldr w0,[sp,#76]
            cmp w0,#0
            b.ne .L_402594

            b .L_402780
.L_40277c:

            nop
            nop
            nop
            nop
.L_402780:

            ldr w0,[sp,#72]
            ldp x21,x22,[sp,#16]
            ldr x23,[sp,#32]
            ldp x19,x20,[sp],#80
.cfi_restore 20
.cfi_restore 19
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size longest_match, . - longest_match
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
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x0, window_size
            add x0,x0, :lo12:window_size
            ldr x0,[x0]
            mov w1,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            sub w1,w1,w0
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            sub w0,w1,w0
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmn w0,#1
            b.ne .L_4027f0

            ldr w0,[sp,#44]
            sub w0,w0,#1
            str w0,[sp,#44]
            b .L_402984
.L_4027f0:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            mov w0,#65273
            cmp w1,w0
            b.ls .L_402984

            adrp x0, window+32768
            add x0,x0, :lo12:window+32768
            mov x2,#32768
            mov x1,x0
            adrp x0, window
            add x0,x0, :lo12:window
            bl memcpy

            adrp x0, match_start
            add x0,x0, :lo12:match_start
            ldr w0,[x0]
            sub w1,w0,#8,lsl #12
            adrp x0, match_start
            add x0,x0, :lo12:match_start
            str w1,[x0]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            sub w1,w0,#8,lsl #12
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x1,[x0]
            mov x0,#4294967295
            cmp x1,x0
            b.eq .L_402890

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x0,[x0]
            sub x1,x0,#8,lsl #12
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            str x1,[x0]
.L_402890:

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            sub x1,x0,#8,lsl #12
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str x1,[x0]
            mov w19,#0
            b .L_402914
.L_4028b4:

            mov w0,w19
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            mov w20,w0
            mov w0,#32767
            cmp w20,w0
            b.ls .L_4028ec

            sub w0,w20,#8,lsl #12
            and w2,w0,#65535
            b .L_4028f0
.L_4028ec:

            mov w2,#0
.L_4028f0:

            mov w0,w19
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
            add w19,w19,#1
.L_402914:

            mov w0,#32767
            cmp w19,w0
            b.ls .L_4028b4

            mov w19,#0
            b .L_40296c
.L_402928:

            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w19
            ldrh w0,[x0,x1,lsl #1]
            mov w20,w0
            mov w0,#32767
            cmp w20,w0
            b.ls .L_402954

            sub w0,w20,#8,lsl #12
            and w2,w0,#65535
            b .L_402958
.L_402954:

            mov w2,#0
.L_402958:

            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w19
            strh w2,[x0,x1,lsl #1]
            add w19,w19,#1
.L_40296c:

            mov w0,#32767
            cmp w19,w0
            b.ls .L_402928

            ldr w0,[sp,#44]
            add w0,w0,#8,lsl #12
            str w0,[sp,#44]
.L_402984:

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_402a20

            adrp x0, read_buf
            add x0,x0, :lo12:read_buf
            ldr x2,[x0]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            mov w0,w0
            add x1,x1,x0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            ldr w1,[sp,#44]
            blr x2

            mov w19,w0
            cmp w19,#0
            b.eq .L_4029f0

            cmn w19,#1
            b.ne .L_402a04
.L_4029f0:

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            mov w1,#1
            str w1,[x0]
            b .L_402a20
.L_402a04:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            add w1,w19,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
.L_402a20:

            nop
            nop
            nop
            nop
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size fill_window, . - fill_window
#-----------------------------------
.type rsync_roll, @function
#-----------------------------------
rsync_roll:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str w0,[sp,#12]
            str w1,[sp,#8]
            ldr w0,[sp,#12]
            cmp w0,#4095
            b.hi .L_402ad0

            ldr w0,[sp,#12]
            str w0,[sp,#28]
            b .L_402aa8
.L_402a54:

            ldr w1,[sp,#12]
            ldr w0,[sp,#8]
            add w0,w1,w0
            ldr w1,[sp,#28]
            cmp w1,w0
            b.eq .L_402bac

            adrp x0, window
            add x1,x0, :lo12:window
            ldr w0,[sp,#28]
            ldrb w0,[x1,x0]
            and x1,x0,#255
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            str x1,[x0]
            ldr w0,[sp,#28]
            add w0,w0,#1
            str w0,[sp,#28]
.L_402aa8:

            ldr w0,[sp,#28]
            cmp w0,#4095
            b.ls .L_402a54

            ldr w1,[sp,#12]
            ldr w0,[sp,#8]
            add w0,w1,w0
            sub w0,w0,#1,lsl #12
            str w0,[sp,#8]
            mov w0,#4096
            str w0,[sp,#12]
.L_402ad0:

            ldr w0,[sp,#12]
            str w0,[sp,#28]
            b .L_402b90
.L_402adc:

            adrp x0, window
            add x1,x0, :lo12:window
            ldr w0,[sp,#28]
            ldrb w0,[x1,x0]
            and x1,x0,#255
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            str x1,[x0]
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            ldr x1,[x0]
            ldr w0,[sp,#28]
            sub w3,w0,#1,lsl #12
            adrp x0, window
            add x2,x0, :lo12:window
            mov w0,w3
            ldrb w0,[x2,x0]
            and x0,x0,#255
            sub x1,x1,x0
            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            str x1,[x0]
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x1,[x0]
            mov x0,#4294967295
            cmp x1,x0
            b.ne .L_402b84

            adrp x0, rsync_sum
            add x0,x0, :lo12:rsync_sum
            ldr x0,[x0]
            and x0,x0,#4095
            cmp x0,#0
            b.ne .L_402b84

            ldr w1,[sp,#28]
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            str x1,[x0]
.L_402b84:

            ldr w0,[sp,#28]
            add w0,w0,#1
            str w0,[sp,#28]
.L_402b90:

            ldr w1,[sp,#12]
            ldr w0,[sp,#8]
            add w0,w1,w0
            ldr w1,[sp,#28]
            cmp w1,w0
            b.lo .L_402adc

            b .L_402bb0
.L_402bac:

            nop
            nop
            nop
            nop
.L_402bb0:

            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size rsync_roll, . - rsync_roll
#-----------------------------------
.type deflate_fast, @function
#-----------------------------------
deflate_fast:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str wzr,[sp,#24]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            mov w1,#2
            str w1,[x0]
            b .L_403144
.L_402bd8:

            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            add w3,w1,#2
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w3
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#20]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            and w1,w0,#32767
            ldr w0,[sp,#20]
            and w2,w0,#65535
            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w1
            strh w2,[x0,x1,lsl #1]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            and w1,w2,#65535
            strh w1,[x0]
            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_402d30

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            ldr w0,[sp,#20]
            sub w1,w1,w0
            mov w0,#32506
            cmp w1,w0
            b.hi .L_402d30

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, window_size
            add x0,x0, :lo12:window_size
            ldr x0,[x0]
            sub x0,x0,#262
            cmp x1,x0
            b.hi .L_402d30

            ldr w0,[sp,#20]
            bl longest_match

            str w0,[sp,#24]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            ldr w1,[sp,#24]
            cmp w1,w0
            b.ls .L_402d30

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            str w0,[sp,#24]
.L_402d30:

            ldr w0,[sp,#24]
            cmp w0,#2
            b.ls .L_402f9c

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            adrp x0, match_start
            add x0,x0, :lo12:match_start
            ldr w0,[x0]
            sub w0,w1,w0
            mov w2,w0
            ldr w0,[sp,#24]
            sub w0,w0,#3
            mov w1,w0
            mov w0,w2
            bl ct_tally

            str w0,[sp,#28]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w1,[x0]
            ldr w0,[sp,#24]
            sub w1,w1,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_402dbc

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            ldr w1,[sp,#24]
            bl rsync_roll
.L_402dbc:

            adrp x0, max_lazy_match
            add x0,x0, :lo12:max_lazy_match
            ldr w0,[x0]
            ldr w1,[sp,#24]
            cmp w1,w0
            b.hi .L_402f04

            ldr w0,[sp,#24]
            sub w0,w0,#1
            str w0,[sp,#24]
.L_402de0:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            add w3,w1,#2
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w3
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#20]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            and w1,w0,#32767
            ldr w0,[sp,#20]
            and w2,w0,#65535
            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w1
            strh w2,[x0,x1,lsl #1]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            and w1,w2,#65535
            strh w1,[x0]
            ldr w0,[sp,#24]
            sub w0,w0,#1
            str w0,[sp,#24]
            ldr w0,[sp,#24]
            cmp w0,#0
            b.ne .L_402de0

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            b .L_403028
.L_402f04:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            ldr w0,[sp,#24]
            add w1,w1,w0
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            str wzr,[sp,#24]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,w2
            ldrb w0,[x1,x0]
            mov w1,w0
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            add w3,w1,#1
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w3
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            b .L_403028
.L_402f9c:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,w2
            ldrb w0,[x1,x0]
            mov w1,w0
            mov w0,#0
            bl ct_tally

            str w0,[sp,#28]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_402ff0

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,#1
            bl rsync_roll
.L_402ff0:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
.L_403028:

            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403078

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x0,[x0]
            cmp x1,x0
            b.ls .L_403078

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            mov x1,#4294967295
            str x1,[x0]
            mov w0,#2
            str w0,[sp,#28]
.L_403078:

            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_40311c

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_4030b8

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_4030bc
.L_4030b8:

            mov x0,#0
.L_4030bc:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#28]
            sub w1,w1,#1
            mov w3,#0
            mov w2,w1
            mov x1,x4
            bl flush_block

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str x1,[x0]
            b .L_40311c
.L_403118:

            bl fill_window
.L_40311c:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#261
            b.hi .L_403144

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403118
.L_403144:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_402bd8

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_40318c

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_403190
.L_40318c:

            mov x0,#0
.L_403190:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#28]
            sub w1,w1,#1
            mov w3,#1
            mov w2,w1
            mov x1,x4
            bl flush_block

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size deflate_fast, . - deflate_fast
.align 2
#-----------------------------------
.globl deflate
.type deflate, @function
#-----------------------------------
deflate:

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
            str wzr,[sp,#40]
            mov w19,#2
            adrp x0, compr_level
            add x0,x0, :lo12:compr_level
            ldr w0,[x0]
            cmp w0,#3
            b.gt .L_4039e0

            bl deflate_fast

            b .L_403aa0
.L_403204:

            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            add w3,w1,#2
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w3
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#36]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            and w1,w0,#32767
            ldr w0,[sp,#36]
            and w2,w0,#65535
            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w1
            strh w2,[x0,x1,lsl #1]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            and w1,w2,#65535
            strh w1,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            str w19,[x0]
            adrp x0, match_start
            add x0,x0, :lo12:match_start
            ldr w0,[x0]
            str w0,[sp,#32]
            mov w19,#2
            ldr w0,[sp,#36]
            cmp w0,#0
            b.eq .L_4033c4

            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w1,[x0]
            adrp x0, max_lazy_match
            add x0,x0, :lo12:max_lazy_match
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_4033c4

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            ldr w0,[sp,#36]
            sub w1,w1,w0
            mov w0,#32506
            cmp w1,w0
            b.hi .L_4033c4

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, window_size
            add x0,x0, :lo12:window_size
            ldr x0,[x0]
            sub x0,x0,#262
            cmp x1,x0
            b.hi .L_4033c4

            ldr w0,[sp,#36]
            bl longest_match

            mov w19,w0
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w19,w0
            b.ls .L_403394

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w19,[x0]
.L_403394:

            cmp w19,#3
            b.ne .L_4033c4

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            adrp x0, match_start
            add x0,x0, :lo12:match_start
            ldr w0,[x0]
            sub w0,w1,w0
            cmp w0,#1,lsl #12
            b.ls .L_4033c4

            sub w19,w19,#1
.L_4033c4:

            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            cmp w0,#2
            b.ls .L_4036dc

            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            cmp w19,w0
            b.hi .L_4036dc

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w1,[x0]
            ldr w0,[sp,#32]
            sub w0,w1,w0
            sub w0,w0,#1
            mov w2,w0
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            sub w0,w0,#3
            mov w1,w0
            mov w0,w2
            bl ct_tally

            str w0,[sp,#44]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w1,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            sub w0,w1,w0
            add w1,w0,#1
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            sub w1,w0,#2
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            str w1,[x0]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4034ac

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            add w0,w0,#1
            mov w1,w0
            mov w0,w2
            bl rsync_roll
.L_4034ac:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            lsl w0,w0,#5
            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            add w3,w1,#2
            adrp x1, window
            add x2,x1, :lo12:window
            mov w1,w3
            ldrb w1,[x2,x1]
            eor w0,w0,w1
            and w1,w0,#32767
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            str w1,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#36]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            and w1,w0,#32767
            ldr w0,[sp,#36]
            and w2,w0,#65535
            adrp x0, prev
            add x0,x0, :lo12:prev
            mov w1,w1
            strh w2,[x0,x1,lsl #1]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w2,[x0]
            adrp x0, ins_h
            add x0,x0, :lo12:ins_h
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            and w1,w2,#65535
            strh w1,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            str w1,[x0]
            adrp x0, prev_length
            add x0,x0, :lo12:prev_length
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4034ac

            str wzr,[sp,#40]
            mov w19,#2
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40363c

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x0,[x0]
            cmp x1,x0
            b.ls .L_40363c

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            mov x1,#4294967295
            str x1,[x0]
            mov w0,#2
            str w0,[sp,#44]
.L_40363c:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_4039b0

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_40367c

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_403680
.L_40367c:

            mov x0,#0
.L_403680:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#44]
            sub w1,w1,#1
            mov w3,#0
            mov w2,w1
            mov x1,x4
            bl flush_block

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str x1,[x0]
            b .L_4039b0
.L_4036dc:

            ldr w0,[sp,#40]
            cmp w0,#0
            b.eq .L_403868

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            sub w2,w0,#1
            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,w2
            ldrb w0,[x1,x0]
            mov w1,w0
            mov w0,#0
            bl ct_tally

            str w0,[sp,#44]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403768

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x0,[x0]
            cmp x1,x0
            b.ls .L_403768

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            mov x1,#4294967295
            str x1,[x0]
            mov w0,#2
            str w0,[sp,#44]
.L_403768:

            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_403804

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_4037a8

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_4037ac
.L_4037a8:

            mov x0,#0
.L_4037ac:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#44]
            sub w1,w1,#1
            mov w3,#0
            mov w2,w1
            mov x1,x4
            bl flush_block

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str x1,[x0]
.L_403804:

            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40382c

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,#1
            bl rsync_roll
.L_40382c:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
            b .L_4039b8
.L_403868:

            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403948

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            ldr x0,[x0]
            cmp x1,x0
            b.ls .L_403948

            adrp x0, rsync_chunk_end
            add x0,x0, :lo12:rsync_chunk_end
            mov x1,#4294967295
            str x1,[x0]
            mov w0,#2
            str w0,[sp,#44]
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_4038ec

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_4038f0
.L_4038ec:

            mov x0,#0
.L_4038f0:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#44]
            sub w1,w1,#1
            mov w3,#0
            mov w2,w1
            mov x1,x4
            bl flush_block

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,w0
            adrp x0, block_start
            add x0,x0, :lo12:block_start
            str x1,[x0]
.L_403948:

            mov w0,#1
            str w0,[sp,#40]
            adrp x0, rsync
            add x0,x0, :lo12:rsync
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403978

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w1,#1
            bl rsync_roll
.L_403978:

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            str w1,[x0]
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            str w1,[x0]
.L_4039b0:

            b .L_4039b8
.L_4039b4:

            bl fill_window
.L_4039b8:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#261
            b.hi .L_4039e0

            adrp x0, eofile
            add x0,x0, :lo12:eofile
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4039b4
.L_4039e0:

            adrp x0, lookahead
            add x0,x0, :lo12:lookahead
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_403204

            ldr w0,[sp,#40]
            cmp w0,#0
            b.eq .L_403a2c

            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            sub w2,w0,#1
            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,w2
            ldrb w0,[x1,x0]
            mov w1,w0
            mov w0,#0
            bl ct_tally
.L_403a2c:

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_403a60

            adrp x0, block_start
            add x0,x0, :lo12:block_start
            ldr x0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            b .L_403a64
.L_403a60:

            mov x0,#0
.L_403a64:

            adrp x1, strstart
            add x1,x1, :lo12:strstart
            ldr w1,[x1]
            mov w2,w1
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x1,x2,x1
            mov x4,x1
            ldr w1,[sp,#44]
            sub w1,w1,#1
            mov w3,#1
            mov w2,w1
            mov x1,x4
            bl flush_block
.L_403aa0:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size deflate, . - deflate
#-----------------------------------
.type my_index, @function
#-----------------------------------
my_index:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str x0,[sp,#8]
            str w1,[sp,#4]
            b .L_403ae8
.L_403abc:

            ldr x0,[sp,#8]
            ldrb w0,[x0]
            mov w1,w0
            ldr w0,[sp,#4]
            cmp w0,w1
            b.ne .L_403adc

            ldr x0,[sp,#8]
            b .L_403afc
.L_403adc:

            ldr x0,[sp,#8]
            add x0,x0,#1
            str x0,[sp,#8]
.L_403ae8:

            ldr x0,[sp,#8]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_403abc

            mov x0,#0
.L_403afc:

            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size my_index, . - my_index
#-----------------------------------
.type exchange, @function
#-----------------------------------
exchange:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            str x19,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 19, -64
            str x0,[sp,#24]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w0,[x0]
            str w0,[sp,#60]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            str w0,[sp,#52]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            str w0,[sp,#56]
            b .L_403ce4
.L_403b40:

            ldr w1,[sp,#56]
            ldr w0,[sp,#52]
            sub w1,w1,w0
            ldr w2,[sp,#52]
            ldr w0,[sp,#60]
            sub w0,w2,w0
            cmp w1,w0
            b.le .L_403c34

            ldr w1,[sp,#52]
            ldr w0,[sp,#60]
            sub w0,w1,w0
            str w0,[sp,#36]
            mov w19,#0
            b .L_403c14
.L_403b78:

            ldr w0,[sp,#60]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldr x0,[x0]
            str x0,[sp,#40]
            ldr w1,[sp,#52]
            ldr w0,[sp,#60]
            sub w0,w1,w0
            ldr w1,[sp,#56]
            sub w0,w1,w0
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x1,x1,x0
            ldr w0,[sp,#60]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x2,[sp,#24]
            add x0,x2,x0
            ldr x1,[x1]
            str x1,[x0]
            ldr w1,[sp,#52]
            ldr w0,[sp,#60]
            sub w0,w1,w0
            ldr w1,[sp,#56]
            sub w0,w1,w0
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldr x1,[sp,#40]
            str x1,[x0]
            add w19,w19,#1
.L_403c14:

            ldr w0,[sp,#36]
            cmp w19,w0
            b.lt .L_403b78

            ldr w1,[sp,#56]
            ldr w0,[sp,#36]
            sub w0,w1,w0
            str w0,[sp,#56]
            b .L_403ce4
.L_403c34:

            ldr w1,[sp,#56]
            ldr w0,[sp,#52]
            sub w0,w1,w0
            str w0,[sp,#48]
            mov w19,#0
            b .L_403cc8
.L_403c4c:

            ldr w0,[sp,#60]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldr x0,[x0]
            str x0,[sp,#40]
            ldr w0,[sp,#52]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x1,x1,x0
            ldr w0,[sp,#60]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x2,[sp,#24]
            add x0,x2,x0
            ldr x1,[x1]
            str x1,[x0]
            ldr w0,[sp,#52]
            add w0,w19,w0
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldr x1,[sp,#40]
            str x1,[x0]
            add w19,w19,#1
.L_403cc8:

            ldr w0,[sp,#48]
            cmp w19,w0
            b.lt .L_403c4c

            ldr w1,[sp,#60]
            ldr w0,[sp,#48]
            add w0,w1,w0
            str w0,[sp,#60]
.L_403ce4:

            ldr w1,[sp,#56]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.le .L_403d04

            ldr w1,[sp,#52]
            ldr w0,[sp,#60]
            cmp w1,w0
            b.gt .L_403b40
.L_403d04:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            sub w1,w1,w0
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w0,[x0]
            add w1,w1,w0
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            str w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            str w1,[x0]
            nop
            nop
            nop
            nop
            ldr x19,[sp],#64
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size exchange, . - exchange
#-----------------------------------
.type _getopt_initialize, @function
#-----------------------------------
_getopt_initialize:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#44]
            str x1,[sp,#32]
            str x2,[sp,#24]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            str w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[x0]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            str w1,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str xzr,[x0]
            adrp x0, .L_412b58
            add x0,x0, :lo12:.L_412b58
            bl getenv

            mov x1,x0
            adrp x0, posixly_correct
            add x0,x0, :lo12:posixly_correct
            str x1,[x0]
            ldr x0,[sp,#24]
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_403dfc

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            mov w1,#2
            str w1,[x0]
            ldr x0,[sp,#24]
            add x0,x0,#1
            str x0,[sp,#24]
            b .L_403e5c
.L_403dfc:

            ldr x0,[sp,#24]
            ldrb w0,[x0]
            cmp w0,#43
            b.ne .L_403e28

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            str wzr,[x0]
            ldr x0,[sp,#24]
            add x0,x0,#1
            str x0,[sp,#24]
            b .L_403e5c
.L_403e28:

            adrp x0, posixly_correct
            add x0,x0, :lo12:posixly_correct
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_403e4c

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            str wzr,[x0]
            b .L_403e5c
.L_403e4c:

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            mov w1,#1
            str w1,[x0]
.L_403e5c:

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size _getopt_initialize, . - _getopt_initialize
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
            stp fp,lr,[sp,#-192]!
.cfi_def_cfa_offset 192
.cfi_offset 29, -192
.cfi_offset 30, -184
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -176
            str w0,[sp,#76]
            str x1,[sp,#64]
            str x2,[sp,#56]
            str x3,[sp,#48]
            str x4,[sp,#40]
            str w5,[sp,#72]
            adrp x0, opterr
            add x0,x0, :lo12:opterr
            ldr w0,[x0]
            str w0,[sp,#188]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_403eb0

            str wzr,[sp,#188]
.L_403eb0:

            ldr w0,[sp,#76]
            cmp w0,#0
            b.gt .L_403ec4

            mov w0,#-1
            b .L_4053ec
.L_403ec4:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str xzr,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_403ef8

            adrp x0, __getopt_initialized
            add x0,x0, :lo12:__getopt_initialized
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_403f40
.L_403ef8:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_403f1c

            adrp x0, optind
            add x0,x0, :lo12:optind
            mov w1,#1
            str w1,[x0]
.L_403f1c:

            ldr x2,[sp,#56]
            ldr x1,[sp,#64]
            ldr w0,[sp,#76]
            bl _getopt_initialize

            str x0,[sp,#56]
            adrp x0, __getopt_initialized
            add x0,x0, :lo12:__getopt_initialized
            mov w1,#1
            str w1,[x0]
.L_403f40:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_403f6c

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_4043c4
.L_403f6c:

            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w1,w0
            b.le .L_403fa4

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            str w1,[x0]
.L_403fa4:

            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w1,w0
            b.le .L_403fdc

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            str w1,[x0]
.L_403fdc:

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            ldr w0,[x0]
            cmp w0,#1
            b.ne .L_404120

            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_40403c

            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_40403c

            ldr x0,[sp,#64]
            bl exchange

            b .L_404074
.L_40403c:

            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_404094

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            str w1,[x0]
.L_404074:

            b .L_404094
.L_404078:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
.L_404094:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.le .L_404108

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_404078

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_404078
.L_404108:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            str w1,[x0]
.L_404120:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.eq .L_404230

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x2,[x0]
            adrp x0, .L_412b68
            add x1,x0, :lo12:.L_412b68
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_404230

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_4041d8

            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_4041d8

            ldr x0,[sp,#64]
            bl exchange

            b .L_404210
.L_4041d8:

            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            cmp w1,w0
            b.ne .L_404210

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            str w1,[x0]
.L_404210:

            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w1,[sp,#76]
            str w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[sp,#76]
            str w1,[x0]
.L_404230:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.ne .L_404288

            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, last_nonopt
            add x0,x0, :lo12:last_nonopt
            ldr w0,[x0]
            cmp w1,w0
            b.eq .L_404280

            adrp x0, first_nonopt
            add x0,x0, :lo12:first_nonopt
            ldr w1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
.L_404280:

            mov w0,#-1
            b .L_4053ec
.L_404288:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_4042e4

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_404344
.L_4042e4:

            adrp x0, ordering
            add x0,x0, :lo12:ordering
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_404300

            mov w0,#-1
            b .L_4053ec
.L_404300:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, optind
            add x1,x1, :lo12:optind
            str w2,[x1]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            mov w0,#1
            b .L_4053ec
.L_404344:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_4043a8

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x2,[sp,#64]
            add x0,x2,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_4043a8

            mov w0,#1
            b .L_4043ac
.L_4043a8:

            mov w0,#0
.L_4043ac:

            sxtw x0,w0
            add x0,x0,#1
            add x1,x1,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
.L_4043c4:

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_404b70

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#45
            b.eq .L_404478

            ldr w0,[sp,#72]
            cmp w0,#0
            b.eq .L_404b70

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#2
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_404478

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#56]
            bl my_index

            cmp x0,#0
            b.ne .L_404b70
.L_404478:

            str xzr,[sp,#160]
            str wzr,[sp,#156]
            str wzr,[sp,#152]
            mov w0,#-1
            str w0,[sp,#148]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            str x0,[sp,#176]
            b .L_4044ac
.L_4044a0:

            ldr x0,[sp,#176]
            add x0,x0,#1
            str x0,[sp,#176]
.L_4044ac:

            ldr x0,[sp,#176]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_4044cc

            ldr x0,[sp,#176]
            ldrb w0,[x0]
            cmp w0,#61
            b.ne .L_4044a0
.L_4044cc:

            ldr x0,[sp,#48]
            str x0,[sp,#168]
            str wzr,[sp,#144]
            b .L_4045f8
.L_4044dc:

            ldr x0,[sp,#168]
            ldr x3,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x4,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldr x1,[sp,#176]
            sub x0,x1,x0
            mov x2,x0
            mov x1,x4
            mov x0,x3
            bl strncmp

            cmp w0,#0
            b.ne .L_4045e0

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldr x1,[sp,#176]
            sub x0,x1,x0
            mov w19,w0
            ldr x0,[sp,#168]
            ldr x0,[x0]
            bl strlen

            cmp w19,w0
            b.ne .L_404564

            ldr x0,[sp,#168]
            str x0,[sp,#160]
            ldr w0,[sp,#144]
            str w0,[sp,#148]
            mov w0,#1
            str w0,[sp,#156]
            b .L_404608
.L_404564:

            ldr x0,[sp,#160]
            cmp x0,#0
            b.ne .L_404584

            ldr x0,[sp,#168]
            str x0,[sp,#160]
            ldr w0,[sp,#144]
            str w0,[sp,#148]
            b .L_4045e0
.L_404584:

            ldr w0,[sp,#72]
            cmp w0,#0
            b.ne .L_4045d8

            ldr x0,[sp,#160]
            ldr w1,[x0,#8]
            ldr x0,[sp,#168]
            ldr w0,[x0,#8]
            cmp w1,w0
            b.ne .L_4045d8

            ldr x0,[sp,#160]
            ldr x1,[x0,#16]
            ldr x0,[sp,#168]
            ldr x0,[x0,#16]
            cmp x1,x0
            b.ne .L_4045d8

            ldr x0,[sp,#160]
            ldr w1,[x0,#24]
            ldr x0,[sp,#168]
            ldr w0,[x0,#24]
            cmp w1,w0
            b.eq .L_4045e0
.L_4045d8:

            mov w0,#1
            str w0,[sp,#152]
.L_4045e0:

            ldr x0,[sp,#168]
            add x0,x0,#32
            str x0,[sp,#168]
            ldr w0,[sp,#144]
            add w0,w0,#1
            str w0,[sp,#144]
.L_4045f8:

            ldr x0,[sp,#168]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_4044dc
.L_404608:

            ldr w0,[sp,#152]
            cmp w0,#0
            b.eq .L_4046d0

            ldr w0,[sp,#156]
            cmp w0,#0
            b.ne .L_4046d0

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404674

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            mov x3,x0
            adrp x0, .L_412b70
            add x1,x0, :lo12:.L_412b70
            mov x0,x4
            bl fprintf
.L_404674:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str wzr,[x0]
            mov w0,#63
            b .L_4053ec
.L_4046d0:

            ldr x0,[sp,#160]
            cmp x0,#0
            b.eq .L_4049f4

            ldr w0,[sp,#148]
            str w0,[sp,#144]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            ldr x0,[sp,#176]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_404858

            ldr x0,[sp,#160]
            ldr w0,[x0,#8]
            cmp w0,#0
            b.eq .L_404738

            ldr x0,[sp,#176]
            add x1,x0,#1
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            b .L_404978
.L_404738:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404810

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            sub x0,x0,#8
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_4047b0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x1,[x0]
            ldr x0,[sp,#160]
            ldr x0,[x0]
            mov x3,x0
            mov x2,x1
            adrp x0, .L_412b90
            add x1,x0, :lo12:.L_412b90
            mov x0,x4
            bl fprintf

            b .L_404810
.L_4047b0:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            sub x0,x0,#8
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#160]
            ldr x0,[x0]
            mov x4,x0
            mov w3,w1
            adrp x0, .L_412bc0
            add x1,x0, :lo12:.L_412bc0
            mov x0,x5
            bl fprintf
.L_404810:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            ldr x0,[sp,#160]
            ldr w1,[x0,#24]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str w1,[x0]
            mov w0,#63
            b .L_4053ec
.L_404858:

            ldr x0,[sp,#160]
            ldr w0,[x0,#8]
            cmp w0,#1
            b.ne .L_404978

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.le .L_4048c0

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, optind
            add x1,x1, :lo12:optind
            str w2,[x1]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            b .L_404978
.L_4048c0:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404918

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            sub x0,x0,#8
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            mov x3,x0
            adrp x0, .L_412bf0
            add x1,x0, :lo12:.L_412bf0
            mov x0,x4
            bl fprintf
.L_404918:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            ldr x0,[sp,#160]
            ldr w1,[x0,#24]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str w1,[x0]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_404970

            mov w0,#58
            b .L_4053ec
.L_404970:

            mov w0,#63
            b .L_4053ec
.L_404978:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_4049bc

            ldr x0,[sp,#40]
            ldr w1,[sp,#144]
            str w1,[x0]
.L_4049bc:

            ldr x0,[sp,#160]
            ldr x0,[x0,#16]
            cmp x0,#0
            b.eq .L_4049e8

            ldr x0,[sp,#160]
            ldr x0,[x0,#16]
            ldr x1,[sp,#160]
            ldr w1,[x1,#24]
            str w1,[x0]
            mov w0,#0
            b .L_4053ec
.L_4049e8:

            ldr x0,[sp,#160]
            ldr w0,[x0,#24]
            b .L_4053ec
.L_4049f4:

            ldr w0,[sp,#72]
            cmp w0,#0
            b.eq .L_404a54

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#45
            b.eq .L_404a54

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#56]
            bl my_index

            cmp x0,#0
            b.ne .L_404b70
.L_404a54:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404b2c

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#45
            b.ne .L_404acc

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x1,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            mov x3,x0
            mov x2,x1
            adrp x0, .L_412c18
            add x1,x0, :lo12:.L_412c18
            mov x0,x4
            bl fprintf

            b .L_404b2c
.L_404acc:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            ldrb w0,[x0]
            mov w1,w0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            mov x4,x0
            mov w3,w1
            adrp x0, .L_412c38
            add x1,x0, :lo12:.L_412c38
            mov x0,x5
            bl fprintf
.L_404b2c:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            adrp x1, .L_412c58
            add x1,x1, :lo12:.L_412c58
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str wzr,[x0]
            mov w0,#63
            b .L_4053ec
.L_404b70:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            add x2,x0,#1
            adrp x1, nextchar
            add x1,x1, :lo12:nextchar
            str x2,[x1]
            ldrb w0,[x0]
            strb w0,[sp,#143]
            ldrb w0,[sp,#143]
            mov w1,w0
            ldr x0,[sp,#56]
            bl my_index

            str x0,[sp,#88]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_404bdc

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
.L_404bdc:

            ldr x0,[sp,#88]
            cmp x0,#0
            b.eq .L_404bf4

            ldrb w0,[sp,#143]
            cmp w0,#58
            b.ne .L_404c90
.L_404bf4:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404c78

            adrp x0, posixly_correct
            add x0,x0, :lo12:posixly_correct
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_404c48

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x0,[x0]
            ldrb w1,[sp,#143]
            mov w3,w1
            mov x2,x0
            adrp x0, .L_412c60
            add x1,x0, :lo12:.L_412c60
            mov x0,x4
            bl fprintf

            b .L_404c78
.L_404c48:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x0,[x0]
            ldrb w1,[sp,#143]
            mov w3,w1
            mov x2,x0
            adrp x0, .L_412c80
            add x1,x0, :lo12:.L_412c80
            mov x0,x4
            bl fprintf
.L_404c78:

            ldrb w1,[sp,#143]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str w1,[x0]
            mov w0,#63
            b .L_4053ec
.L_404c90:

            ldr x0,[sp,#88]
            ldrb w0,[x0]
            cmp w0,#87
            b.ne .L_405230

            ldr x0,[sp,#88]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#59
            b.ne .L_405230

            str xzr,[sp,#112]
            str wzr,[sp,#108]
            str wzr,[sp,#104]
            str wzr,[sp,#100]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_404d14

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            b .L_404de0
.L_404d14:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.ne .L_404da4

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404d68

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x0,[x0]
            ldrb w1,[sp,#143]
            mov w3,w1
            mov x2,x0
            adrp x0, .L_412ca0
            add x1,x0, :lo12:.L_412ca0
            mov x0,x4
            bl fprintf
.L_404d68:

            ldrb w1,[sp,#143]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str w1,[x0]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_404d94

            mov w0,#58
            strb w0,[sp,#143]
            b .L_404d9c
.L_404d94:

            mov w0,#63
            strb w0,[sp,#143]
.L_404d9c:

            ldrb w0,[sp,#143]
            b .L_4053ec
.L_404da4:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, optind
            add x1,x1, :lo12:optind
            str w2,[x1]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
.L_404de0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            str x0,[sp,#128]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x1,[sp,#128]
            str x1,[x0]
            b .L_404e10
.L_404e04:

            ldr x0,[sp,#128]
            add x0,x0,#1
            str x0,[sp,#128]
.L_404e10:

            ldr x0,[sp,#128]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_404e30

            ldr x0,[sp,#128]
            ldrb w0,[x0]
            cmp w0,#61
            b.ne .L_404e04
.L_404e30:

            ldr x0,[sp,#48]
            str x0,[sp,#120]
            str wzr,[sp,#96]
            b .L_404f08
.L_404e40:

            ldr x0,[sp,#120]
            ldr x3,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x4,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldr x1,[sp,#128]
            sub x0,x1,x0
            mov x2,x0
            mov x1,x4
            mov x0,x3
            bl strncmp

            cmp w0,#0
            b.ne .L_404ef0

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldr x1,[sp,#128]
            sub x0,x1,x0
            mov w19,w0
            ldr x0,[sp,#120]
            ldr x0,[x0]
            bl strlen

            cmp x19,x0
            b.ne .L_404ec8

            ldr x0,[sp,#120]
            str x0,[sp,#112]
            ldr w0,[sp,#96]
            str w0,[sp,#100]
            mov w0,#1
            str w0,[sp,#108]
            b .L_404f18
.L_404ec8:

            ldr x0,[sp,#112]
            cmp x0,#0
            b.ne .L_404ee8

            ldr x0,[sp,#120]
            str x0,[sp,#112]
            ldr w0,[sp,#96]
            str w0,[sp,#100]
            b .L_404ef0
.L_404ee8:

            mov w0,#1
            str w0,[sp,#104]
.L_404ef0:

            ldr x0,[sp,#120]
            add x0,x0,#32
            str x0,[sp,#120]
            ldr w0,[sp,#96]
            add w0,w0,#1
            str w0,[sp,#96]
.L_404f08:

            ldr x0,[sp,#120]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_404e40
.L_404f18:

            ldr w0,[sp,#104]
            cmp w0,#0
            b.eq .L_404fd4

            ldr w0,[sp,#108]
            cmp w0,#0
            b.ne .L_404fd4

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_404f84

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            mov x3,x0
            adrp x0, .L_412cc8
            add x1,x0, :lo12:.L_412cc8
            mov x0,x4
            bl fprintf
.L_404f84:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            mov w0,#63
            b .L_4053ec
.L_404fd4:

            ldr x0,[sp,#112]
            cmp x0,#0
            b.eq .L_40521c

            ldr w0,[sp,#100]
            str w0,[sp,#96]
            ldr x0,[sp,#128]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_405094

            ldr x0,[sp,#112]
            ldr w0,[x0,#8]
            cmp w0,#0
            b.eq .L_405020

            ldr x0,[sp,#128]
            add x1,x0,#1
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            b .L_4051a0
.L_405020:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_405060

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x1,[x0]
            ldr x0,[sp,#112]
            ldr x0,[x0]
            mov x3,x0
            mov x2,x1
            adrp x0, .L_412cf0
            add x1,x0, :lo12:.L_412cf0
            mov x0,x4
            bl fprintf
.L_405060:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            mov w0,#63
            b .L_4053ec
.L_405094:

            ldr x0,[sp,#112]
            ldr w0,[x0,#8]
            cmp w0,#1
            b.ne .L_4051a0

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.le .L_4050fc

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, optind
            add x1,x1, :lo12:optind
            str w2,[x1]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            b .L_4051a0
.L_4050fc:

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_405154

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x2,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sxtw x0,w0
            lsl x0,x0,#3
            sub x0,x0,#8
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x0,[x0]
            mov x3,x0
            adrp x0, .L_412bf0
            add x1,x0, :lo12:.L_412bf0
            mov x0,x4
            bl fprintf
.L_405154:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_405198

            mov w0,#58
            b .L_4053ec
.L_405198:

            mov w0,#63
            b .L_4053ec
.L_4051a0:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x19,[x0]
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            bl strlen

            add x1,x19,x0
            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str x1,[x0]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_4051e4

            ldr x0,[sp,#40]
            ldr w1,[sp,#96]
            str w1,[x0]
.L_4051e4:

            ldr x0,[sp,#112]
            ldr x0,[x0,#16]
            cmp x0,#0
            b.eq .L_405210

            ldr x0,[sp,#112]
            ldr x0,[x0,#16]
            ldr x1,[sp,#112]
            ldr w1,[x1,#24]
            str w1,[x0]
            mov w0,#0
            b .L_4053ec
.L_405210:

            ldr x0,[sp,#112]
            ldr w0,[x0,#24]
            b .L_4053ec
.L_40521c:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str xzr,[x0]
            mov w0,#87
            b .L_4053ec
.L_405230:

            ldr x0,[sp,#88]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_4053e8

            ldr x0,[sp,#88]
            add x0,x0,#2
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_4052c4

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_4052a8

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            b .L_4052b4
.L_4052a8:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str xzr,[x0]
.L_4052b4:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str xzr,[x0]
            b .L_4053e8
.L_4052c4:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_405314

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, optind
            add x0,x0, :lo12:optind
            str w1,[x0]
            b .L_4053dc
.L_405314:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.ne .L_4053a0

            ldr w0,[sp,#188]
            cmp w0,#0
            b.eq .L_405368

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            ldr x0,[sp,#64]
            ldr x0,[x0]
            ldrb w1,[sp,#143]
            mov w3,w1
            mov x2,x0
            adrp x0, .L_412ca0
            add x1,x0, :lo12:.L_412ca0
            mov x0,x4
            bl fprintf
.L_405368:

            ldrb w1,[sp,#143]
            adrp x0, optopt
            add x0,x0, :lo12:optopt
            str w1,[x0]
            ldr x0,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#58
            b.ne .L_405394

            mov w0,#58
            strb w0,[sp,#143]
            b .L_4053dc
.L_405394:

            mov w0,#63
            strb w0,[sp,#143]
            b .L_4053dc
.L_4053a0:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, optind
            add x1,x1, :lo12:optind
            str w2,[x1]
            sxtw x0,w0
            lsl x0,x0,#3
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
.L_4053dc:

            adrp x0, nextchar
            add x0,x0, :lo12:nextchar
            str xzr,[x0]
.L_4053e8:

            ldrb w0,[sp,#143]
.L_4053ec:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#192
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size _getopt_internal, . - _getopt_internal
.align 3
#-----------------------------------
.globl getopt
.type getopt, @function
#-----------------------------------
getopt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#44]
            str x1,[sp,#32]
            str x2,[sp,#24]
            mov w5,#0
            mov x4,#0
            mov x3,#0
            ldr x2,[sp,#24]
            ldr x1,[sp,#32]
            ldr w0,[sp,#44]
            bl _getopt_internal

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size getopt, . - getopt
#-----------------------------------
.type usage, @function
#-----------------------------------
usage:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, .L_412f38
            add x3,x0, :lo12:.L_412f38
            adrp x0, .L_412c58
            add x2,x0, :lo12:.L_412c58
            adrp x0, .L_412f40
            add x0,x0, :lo12:.L_412f40
            bl printf

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
.size usage, . - usage
#-----------------------------------
.type help, @function
#-----------------------------------
help:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            adrp x0, help_msg.7
            add x0,x0, :lo12:help_msg.7
            str x0,[sp,#24]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, .L_412f78
            add x3,x0, :lo12:.L_412f78
            adrp x0, .L_412f88
            add x2,x0, :lo12:.L_412f88
            adrp x0, .L_412f90
            add x0,x0, :lo12:.L_412f90
            bl printf

            bl usage

            b .L_4054c4
.L_4054b0:

            ldr x0,[sp,#24]
            add x1,x0,#8
            str x1,[sp,#24]
            ldr x0,[x0]
            bl puts
.L_4054c4:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_4054b0

            nop
            nop
            nop
            nop
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
.size help, . - help
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
            mov fp,sp
            adrp x0, license_msg
            add x0,x0, :lo12:license_msg
            str x0,[sp,#24]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, .L_412f78
            add x3,x0, :lo12:.L_412f78
            adrp x0, .L_412f88
            add x2,x0, :lo12:.L_412f88
            adrp x0, .L_412f90
            add x0,x0, :lo12:.L_412f90
            bl printf

            b .L_405538
.L_405524:

            ldr x0,[sp,#24]
            add x1,x0,#8
            str x1,[sp,#24]
            ldr x0,[x0]
            bl puts
.L_405538:

            ldr x0,[sp,#24]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_405524

            nop
            nop
            nop
            nop
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
.size license, . - license
#-----------------------------------
.type version, @function
#-----------------------------------
version:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl license

            adrp x0, .L_412fa0
            add x2,x0, :lo12:.L_412fa0
            adrp x0, .L_412fa8
            add x1,x0, :lo12:.L_412fa8
            adrp x0, .L_412fb0
            add x0,x0, :lo12:.L_412fb0
            bl printf

            adrp x0, .L_412fd0
            add x0,x0, :lo12:.L_412fd0
            bl printf

            adrp x0, .L_412fe0
            add x0,x0, :lo12:.L_412fe0
            bl printf

            adrp x0, .L_412ff0
            add x0,x0, :lo12:.L_412ff0
            bl printf

            adrp x0, .L_413000
            add x0,x0, :lo12:.L_413000
            bl printf

            adrp x0, .L_413010
            add x0,x0, :lo12:.L_413010
            bl printf

            mov w0,#10
            bl putchar

            adrp x0, .L_413020
            add x0,x0, :lo12:.L_413020
            bl puts

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
.size version, . - version
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
            str x0,[sp,#24]
            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#44]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413040
            add x1,x0, :lo12:.L_413040
            mov x0,x3
            bl fprintf

            bl __errno_location

            ldr w1,[sp,#44]
            str w1,[x0]
            ldr x0,[sp,#24]
            bl perror

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
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
.size progerror, . - progerror
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#28]
            str x1,[sp,#16]
            ldr x0,[sp,#16]
            ldr x0,[x0]
            bl base_name

            mov x1,x0
            adrp x0, progname
            add x0,x0, :lo12:progname
            str x1,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            bl strlen

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#4
            b.le .L_4056e8

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldrsw x0,[sp,#44]
            sub x0,x0,#4
            add x2,x1,x0
            adrp x0, .L_413048
            add x1,x0, :lo12:.L_413048
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_4056e8

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldrsw x0,[sp,#44]
            sub x0,x0,#4
            add x0,x1,x0
            strb wzr,[x0]
.L_4056e8:

            add x1,sp,#16
            add x3,sp,#28
            adrp x0, .L_413050
            add x2,x0, :lo12:.L_413050
            mov x0,x3
            bl add_envopt

            mov x1,x0
            adrp x0, env
            add x0,x0, :lo12:env
            str x1,[x0]
            adrp x0, env
            add x0,x0, :lo12:env
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_405734

            ldr x1,[sp,#16]
            adrp x0, args
            add x0,x0, :lo12:args
            str x1,[x0]
.L_405734:

            mov x1,#1
            mov w0,#2
            bl signal

            cmp x0,#1
            cset w0,ne
            and w0,w0,#255
            mov w1,w0
            adrp x0, foreground
            add x0,x0, :lo12:foreground
            str w1,[x0]
            adrp x0, foreground
            add x0,x0, :lo12:foreground
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405780

            adrp x0, abort_gzip_signal
            add x1,x0, :lo12:abort_gzip_signal
            mov w0,#2
            bl signal
.L_405780:

            mov x1,#1
            mov w0,#15
            bl signal

            cmp x0,#1
            b.eq .L_4057a4

            adrp x0, abort_gzip_signal
            add x1,x0, :lo12:abort_gzip_signal
            mov w0,#15
            bl signal
.L_4057a4:

            mov x1,#1
            mov w0,#1
            bl signal

            cmp x0,#1
            b.eq .L_4057c8

            adrp x0, abort_gzip_signal
            add x1,x0, :lo12:abort_gzip_signal
            mov w0,#1
            bl signal
.L_4057c8:

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x3,[x0]
            mov x2,#2
            adrp x0, .L_413058
            add x1,x0, :lo12:.L_413058
            mov x0,x3
            bl strncmp

            cmp w0,#0
            b.eq .L_405818

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x3,[x0]
            mov x2,#3
            adrp x0, .L_413060
            add x1,x0, :lo12:.L_413060
            mov x0,x3
            bl strncmp

            cmp w0,#0
            b.ne .L_40582c
.L_405818:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            mov w1,#1
            str w1,[x0]
            b .L_4058a0
.L_40582c:

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            add x2,x0,#1
            adrp x0, .L_413068
            add x1,x0, :lo12:.L_413068
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.eq .L_405878

            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x2,[x0]
            adrp x0, .L_413070
            add x1,x0, :lo12:.L_413070
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_4058a0
.L_405878:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            mov w1,#1
            str w1,[x0]
            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            str w1,[x0]
.L_4058a0:

            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            adrp x1, .L_413078
            add x1,x1, :lo12:.L_413078
            str x1,[x0]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            bl strlen

            mov x1,x0
            adrp x0, z_len
            add x0,x0, :lo12:z_len
            str x1,[x0]
            b .L_405c60
.L_4058d8:

            ldr w0,[sp,#40]
            sub w0,w0,#49
            cmp w0,#69
            b.hi .L_405c54

            adrp x1, .L_413144
            add x1,x1, :lo12:.L_413144
            ldr w0,[x1,w0,uxtw #2]
            adr x1, .L_405900
            add x0,x1,w0, sxtw #2
            br x0
.L_405900:

            adrp x0, ascii
            add x0,x0, :lo12:ascii
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_405914:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl atoi

            mov w1,w0
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            str w1,[x0]
            b .L_4059bc
.L_405938:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#47
            b.ls .L_405968

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#57
            b.ls .L_4059a0
.L_405968:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413080
            add x1,x0, :lo12:.L_413080
            mov x0,x3
            bl fprintf

            bl usage

            mov w0,#1
            bl do_exit
.L_4059a0:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            add x1,x0,#1
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            str x1,[x0]
.L_4059bc:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_405938

            b .L_405c60
.L_4059d8:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_4059ec:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_405a00:

            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, force
            add x0,x0, :lo12:force
            str w1,[x0]
            b .L_405c60
.L_405a20:

            bl help

            mov w0,#0
            bl do_exit

            b .L_405c60
.L_405a30:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            mov w1,#1
            str w1,[x0]
            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            str w1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w1,[x0]
            adrp x0, list
            add x0,x0, :lo12:list
            str w1,[x0]
            b .L_405c60
.L_405a74:

            bl license

            mov w0,#0
            bl do_exit

            b .L_405c60
.L_405a84:

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_405a98:

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            str wzr,[x0]
            b .L_405c60
.L_405aa8:

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            mov w1,#1
            str w1,[x0]
            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w1,[x0]
            adrp x0, no_name
            add x0,x0, :lo12:no_name
            str w1,[x0]
            b .L_405c60
.L_405ad4:

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            str wzr,[x0]
            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w1,[x0]
            adrp x0, no_name
            add x0,x0, :lo12:no_name
            str w1,[x0]
            b .L_405c60
.L_405afc:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            mov w1,#1
            str w1,[x0]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            str wzr,[x0]
            b .L_405c60
.L_405b1c:

            adrp x0, recursive
            add x0,x0, :lo12:recursive
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_405b30:

            adrp x0, rsync
            add x0,x0, :lo12:rsync
            mov w1,#1
            str w1,[x0]
            b .L_405c60
.L_405b44:

            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x0,[x0]
            bl strlen

            mov x1,x0
            adrp x0, z_len
            add x0,x0, :lo12:z_len
            str x1,[x0]
            adrp x0, optarg
            add x0,x0, :lo12:optarg
            ldr x1,[x0]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            str x1,[x0]
            b .L_405c60
.L_405b80:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            mov w1,#1
            str w1,[x0]
            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            str w1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w1,[x0]
            adrp x0, test
            add x0,x0, :lo12:test
            str w1,[x0]
            b .L_405c60
.L_405bc4:

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            str w1,[x0]
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            str wzr,[x0]
            b .L_405c60
.L_405bf0:

            bl version

            mov w0,#0
            bl do_exit

            b .L_405c60
.L_405c00:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_4130a8
            add x1,x0, :lo12:.L_4130a8
            mov x0,x3
            bl fprintf

            bl usage

            mov w0,#1
            bl do_exit

            b .L_405c60
.L_405c3c:

            ldr w0,[sp,#40]
            sub w1,w0,#48
            adrp x0, level
            add x0,x0, :lo12:level
            str w1,[x0]
            b .L_405c60
.L_405c54:

            bl usage

            mov w0,#1
            bl do_exit
.L_405c60:

            ldr w5,[sp,#28]
            ldr x1,[sp,#16]
            mov x4,#0
            adrp x0, longopts
            add x3,x0, :lo12:longopts
            adrp x0, .L_4130d0
            add x2,x0, :lo12:.L_4130d0
            mov w0,w5
            bl getopt_long

            str w0,[sp,#40]
            ldr w0,[sp,#40]
            cmn w0,#1
            b.ne .L_4058d8

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405ccc

            mov x1,#1
            mov w0,#13
            bl signal

            cmp x0,#1
            b.eq .L_405ccc

            adrp x0, abort_gzip_signal
            add x1,x0, :lo12:abort_gzip_signal
            mov w0,#13
            bl signal
.L_405ccc:

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_405cf8

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w1,[x0]
            adrp x0, no_time
            add x0,x0, :lo12:no_time
            str w1,[x0]
.L_405cf8:

            adrp x0, no_name
            add x0,x0, :lo12:no_name
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_405d24

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w1,[x0]
            adrp x0, no_name
            add x0,x0, :lo12:no_name
            str w1,[x0]
.L_405d24:

            ldr w1,[sp,#28]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            sub w0,w1,w0
            str w0,[sp,#36]
            adrp x0, ascii
            add x0,x0, :lo12:ascii
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405d90

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405d90

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_4130f8
            add x1,x0, :lo12:.L_4130f8
            mov x0,x3
            bl fprintf
.L_405d90:

            adrp x0, z_len
            add x0,x0, :lo12:z_len
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_405db8

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405dcc
.L_405db8:

            adrp x0, z_len
            add x0,x0, :lo12:z_len
            ldr x0,[x0]
            cmp x0,#30
            b.ls .L_405e10
.L_405dcc:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            mov x3,x0
            mov x2,x1
            adrp x0, .L_413128
            add x1,x0, :lo12:.L_413128
            mov x0,x4
            bl fprintf

            mov w0,#1
            bl do_exit
.L_405e10:

            adrp x0, do_lzw
            add x0,x0, :lo12:do_lzw
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405e4c

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405e4c

            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, lzw
            add x1,x1, :lo12:lzw
            str x1,[x0]
.L_405e4c:

            ldr w0,[sp,#36]
            cmp w0,#0
            b.eq .L_405ef8

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405edc

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405edc

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405edc

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b .L_405edc
.L_405ea8:

            ldr x1,[sp,#16]
            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w0,[x0]
            add w3,w0,#1
            adrp x2, optind
            add x2,x2, :lo12:optind
            str w3,[x2]
            sxtw x0,w0
            lsl x0,x0,#3
            add x0,x1,x0
            ldr x0,[x0]
            bl treat_file
.L_405edc:

            adrp x0, optind
            add x0,x0, :lo12:optind
            ldr w1,[x0]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.lt .L_405ea8

            b .L_405efc
.L_405ef8:

            bl treat_stdin
.L_405efc:

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405f3c

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_405f3c

            ldr w0,[sp,#36]
            cmp w0,#1
            b.le .L_405f3c

            mov w1,#-1
            mov w0,#-1
            bl do_list
.L_405f3c:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            bl do_exit

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size main, . - main
#-----------------------------------
.type input_eof, @function
#-----------------------------------
input_eof:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405f90

            adrp x0, last_member
            add x0,x0, :lo12:last_member
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_405f98
.L_405f90:

            mov w0,#1
            b .L_405ff4
.L_405f98:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.ne .L_405ff0

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w0,#8,lsl #12
            b.ne .L_405fdc

            mov w0,#1
            bl fill_inbuf

            cmn w0,#1
            b.ne .L_405fe4
.L_405fdc:

            mov w0,#1
            b .L_405ff4
.L_405fe4:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str wzr,[x0]
.L_405ff0:

            mov w0,#0
.L_405ff4:

            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size input_eof, . - input_eof
#-----------------------------------
.type treat_stdin, @function
#-----------------------------------
treat_stdin:

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
            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406124

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406124

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406054

            adrp x0, stdin
            add x0,x0, :lo12:stdin
            ldr x0,[x0]
            b .L_406060
.L_406054:

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
.L_406060:

            bl fileno

            bl isatty

            cmp w0,#0
            b.eq .L_406124

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x2,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4060a8

            adrp x0, .L_413260
            add x0,x0, :lo12:.L_413260
            b .L_4060b0
.L_4060a8:

            adrp x0, .L_413270
            add x0,x0, :lo12:.L_413270
.L_4060b0:

            adrp x1, decompress
            add x1,x1, :lo12:decompress
            ldr w1,[x1]
            cmp w1,#0
            b.eq .L_4060d0

            adrp x1, .L_413280
            add x1,x1, :lo12:.L_413280
            b .L_4060d8
.L_4060d0:

            adrp x1, .L_412c58
            add x1,x1, :lo12:.L_412c58
.L_4060d8:

            mov x4,x1
            mov x3,x0
            adrp x0, .L_413288
            add x1,x0, :lo12:.L_413288
            mov x0,x5
            bl fprintf

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_4132d0
            add x1,x0, :lo12:.L_4132d0
            mov x0,x3
            bl fprintf

            mov w0,#1
            bl do_exit
.L_406124:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40616c

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40616c

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
.L_40616c:

            adrp x0, ifname
            add x2,x0, :lo12:ifname
            adrp x0, .L_4132e8
            add x1,x0, :lo12:.L_4132e8
            mov x0,x2
            ldr w2,[x1]
            ldrh w1,[x1,#4]
            str w2,[x0]
            strh w1,[x0,#4]
            adrp x0, ofname
            add x2,x0, :lo12:ofname
            adrp x0, .L_412e68
            add x1,x0, :lo12:.L_412e68
            mov x0,x2
            ldr w2,[x1]
            ldur w1,[x1,#3]
            str w2,[x0]
            stur w1,[x0,#3]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            str xzr,[x0]
            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4061e8

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406240
.L_4061e8:

            adrp x0, stdin
            add x0,x0, :lo12:stdin
            ldr x0,[x0]
            bl fileno

            mov w2,w0
            adrp x0, istat
            add x1,x0, :lo12:istat
            mov w0,w2
            bl fstat

            cmp w0,#0
            b.eq .L_406228

            adrp x0, .L_4132f0
            add x0,x0, :lo12:.L_4132f0
            bl progerror

            mov w0,#1
            bl do_exit
.L_406228:

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr x1,[x0,#88]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            str x1,[x0]
.L_406240:

            adrp x0, ifile_size
            add x0,x0, :lo12:ifile_size
            mov x1,#-1
            str x1,[x0]
            bl clear_bufs

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            mov w1,#1
            str w1,[x0]
            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            str wzr,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4062c8

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl get_method

            mov w1,w0
            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_4062c8

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            bl do_exit
.L_4062c8:

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406304

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w2,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            mov w1,w0
            mov w0,w2
            bl do_list

            b .L_406478
.L_406304:

            adrp x0, work
            add x0,x0, :lo12:work
            ldr x19,[x0]
            adrp x0, stdin
            add x0,x0, :lo12:stdin
            ldr x0,[x0]
            bl fileno

            mov w20,w0
            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
            bl fileno

            mov w1,w0
            mov w0,w20
            blr x19

            cmp w0,#0
            b.ne .L_40646c

            bl input_eof

            cmp w0,#0
            b.ne .L_406398

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl get_method

            mov w1,w0
            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.lt .L_406474

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str xzr,[x0]
            b .L_406304
.L_406398:

            nop
            nop
            nop
            nop
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406478

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4063ec

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#4
            mov x1,#1
            adrp x0, .L_413300
            add x0,x0, :lo12:.L_413300
            bl fwrite

            b .L_406478
.L_4063ec:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406478

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x2,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            sub x0,x2,x0
            sub x3,x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x1,[x0]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x2,x0
            mov x0,x3
            bl display_ratio

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x1,x0
            mov w0,#10
            bl fputc

            b .L_406478
.L_40646c:

            nop
            nop
            nop
            nop
            b .L_406478
.L_406474:

            nop
            nop
            nop
            nop
.L_406478:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size treat_stdin, . - treat_stdin
#-----------------------------------
.type treat_file, @function
#-----------------------------------
treat_file:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, .L_413308
            add x1,x0, :lo12:.L_413308
            ldr x0,[sp,#24]
            bl strcmp

            cmp w0,#0
            b.ne .L_4064d0

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            str w0,[sp,#172]
            bl treat_stdin

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w1,[sp,#172]
            str w1,[x0]
            b .L_406d40
.L_4064d0:

            adrp x0, istat
            add x1,x0, :lo12:istat
            ldr x0,[sp,#24]
            bl get_istat

            cmp w0,#0
            b.ne .L_406d0c

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr w0,[x0,#16]
            and w0,w0,#61440
            cmp w0,#4,lsl #12
            b.ne .L_4065ec

            adrp x0, recursive
            add x0,x0, :lo12:recursive
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40657c

            adrp x0, istat
            add x1,x0, :lo12:istat
            add x0,sp,#40
            ldr q24,[x1]
            ldr q25,[x1,#16]
            ldr q26,[x1,#32]
            ldr q27,[x1,#48]
            ldr q28,[x1,#64]
            ldr q29,[x1,#80]
            ldr q30,[x1,#96]
            ldr q31,[x1,#112]
            str q24,[x0]
            str q25,[x0,#16]
            str q26,[x0,#32]
            str q27,[x0,#48]
            str q28,[x0,#64]
            str q29,[x0,#80]
            str q30,[x0,#96]
            str q31,[x0,#112]
            ldr x0,[sp,#24]
            bl treat_dir

            add x0,sp,#40
            mov x1,x0
            ldr x0,[sp,#24]
            bl reset_times

            b .L_406d14
.L_40657c:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4065c4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413310
            add x1,x0, :lo12:.L_413310
            mov x0,x4
            bl fprintf
.L_4065c4:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406d14

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
            b .L_406d14
.L_4065ec:

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr w0,[x0,#16]
            and w0,w0,#61440
            cmp w0,#8,lsl #12
            b.eq .L_406674

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40664c

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413338
            add x1,x0, :lo12:.L_413338
            mov x0,x4
            bl fprintf
.L_40664c:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406d1c

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
            b .L_406d1c
.L_406674:

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr w0,[x0,#20]
            cmp w0,#1
            b.ls .L_40675c

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40675c

            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40675c

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406734

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x6,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr w0,[x0,#20]
            mov w0,w0
            sub x2,x0,#1
            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr w0,[x0,#20]
            cmp w0,#2
            b.ls .L_40670c

            mov w0,#115
            b .L_406710
.L_40670c:

            mov w0,#32
.L_406710:

            mov w5,w0
            mov x4,x2
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413370
            add x1,x0, :lo12:.L_413370
            mov x0,x6
            bl fprintf
.L_406734:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406d24

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
            b .L_406d24
.L_40675c:

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr x1,[x0,#48]
            adrp x0, ifile_size
            add x0,x0, :lo12:ifile_size
            str x1,[x0]
            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40679c

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4067ac
.L_40679c:

            adrp x0, istat
            add x0,x0, :lo12:istat
            ldr x1,[x0,#88]
            b .L_4067b0
.L_4067ac:

            mov x1,#0
.L_4067b0:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            str x1,[x0]
            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406820

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406820

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406820

            adrp x0, ofname
            add x2,x0, :lo12:ofname
            adrp x0, .L_412e68
            add x1,x0, :lo12:.L_412e68
            mov x0,x2
            ldr w2,[x1]
            ldur w1,[x1,#3]
            str w2,[x0]
            stur w1,[x0,#3]
            b .L_40682c
.L_406820:

            bl make_ofname

            cmp w0,#0
            b.ne .L_406d2c
.L_40682c:

            mov w2,#384
            mov w1,#0
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl open

            mov w1,w0
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            str w1,[x0]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_406874

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl progerror

            b .L_406d40
.L_406874:

            bl clear_bufs

            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            str wzr,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4068e0

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl get_method

            mov w1,w0
            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_4068e0

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            b .L_406d40
.L_4068e0:

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40692c

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w2,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            mov w1,w0
            mov w0,w2
            bl do_list

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            b .L_406d40
.L_40692c:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406964

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
            bl fileno

            mov w1,w0
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            str w1,[x0]
            b .L_4069fc
.L_406964:

            bl create_outfile

            cmp w0,#0
            b.ne .L_406d34

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4069fc

            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4069fc

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4069fc

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4069fc

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ofname
            add x4,x0, :lo12:ofname
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_4133a0
            add x1,x0, :lo12:.L_4133a0
            mov x0,x5
            bl fprintf
.L_4069fc:

            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406a38

            adrp x0, no_name
            add x0,x0, :lo12:no_name
            ldr w0,[x0]
            cmp w0,#0
            cset w0,eq
            and w0,w0,#255
            mov w1,w0
            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            str w1,[x0]
.L_406a38:

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406a70

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, ifname
            add x2,x0, :lo12:ifname
            adrp x0, .L_4133c0
            add x1,x0, :lo12:.L_4133c0
            mov x0,x3
            bl fprintf
.L_406a70:

            adrp x0, work
            add x0,x0, :lo12:work
            ldr x2,[x0]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w3,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            mov w1,w0
            mov w0,w3
            blr x2

            cmp w0,#0
            b.eq .L_406abc

            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#-1
            str w1,[x0]
            b .L_406b18
.L_406abc:

            bl input_eof

            cmp w0,#0
            b.ne .L_406b0c

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl get_method

            mov w1,w0
            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.lt .L_406b14

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str xzr,[x0]
            b .L_406a70
.L_406b0c:

            nop
            nop
            nop
            nop
            b .L_406b18
.L_406b14:

            nop
            nop
            nop
            nop
.L_406b18:

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406b64

            adrp x0, istat
            add x0,x0, :lo12:istat
            bl copy_stat

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            bl close

            cmp w0,#0
            b.eq .L_406b64

            bl write_error
.L_406b64:

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_406b9c

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406d3c

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl xunlink

            b .L_406d3c
.L_406b9c:

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406d40

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406bec

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#3
            mov x1,#1
            adrp x0, .L_4133c8
            add x0,x0, :lo12:.L_4133c8
            bl fwrite

            b .L_406ca4
.L_406bec:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406c54

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x2,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            sub x0,x2,x0
            sub x3,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x2,x0
            mov x0,x3
            bl display_ratio

            b .L_406ca4
.L_406c54:

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x2,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            sub x0,x2,x0
            sub x3,x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x1,[x0]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x2,x0
            mov x0,x3
            bl display_ratio
.L_406ca4:

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406cf0

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406cf0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, ofname
            add x2,x0, :lo12:ofname
            adrp x0, .L_4133d0
            add x1,x0, :lo12:.L_4133d0
            mov x0,x3
            bl fprintf
.L_406cf0:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x1,x0
            mov w0,#10
            bl fputc

            b .L_406d40
.L_406d0c:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d14:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d1c:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d24:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d2c:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d34:

            nop
            nop
            nop
            nop
            b .L_406d40
.L_406d3c:

            nop
            nop
            nop
            nop
.L_406d40:

            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size treat_file, . - treat_file
#-----------------------------------
.type create_outfile, @function
#-----------------------------------
create_outfile:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            mov w0,#193
            str w0,[sp,#156]
            adrp x0, ascii
            add x0,x0, :lo12:ascii
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406d7c

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
.L_406d7c:

            bl check_ofname

            cmp w0,#0
            b.eq .L_406da0

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            mov w0,#1
            b .L_406f40
.L_406da0:

            adrp x0, remove_ofname
            add x0,x0, :lo12:remove_ofname
            mov w1,#1
            str w1,[x0]
            mov w2,#384
            ldr w1,[sp,#156]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl open

            mov w1,w0
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            str w1,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_406e0c

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl progerror

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            mov w0,#1
            b .L_406f40
.L_406e0c:

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            add x1,sp,#24
            bl fstat

            cmp w0,#0
            b.eq .L_406e68

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl progerror

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            bl close

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            bl close

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl xunlink

            mov w0,#1
            b .L_406f40
.L_406e68:

            add x0,sp,#24
            mov x1,x0
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl name_too_long

            cmp w0,#0
            b.ne .L_406e8c

            mov w0,#0
            b .L_406f40
.L_406e8c:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_406f14

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406ee8

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ofname
            add x3,x0, :lo12:ofname
            mov x2,x1
            adrp x0, .L_4133e8
            add x1,x0, :lo12:.L_4133e8
            mov x0,x4
            bl fprintf
.L_406ee8:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406f0c

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_406f0c:

            mov w0,#0
            b .L_406f40
.L_406f14:

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            bl close

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl xunlink

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl shorten_name

            b .L_406d7c
.L_406f40:

            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size create_outfile, . - create_outfile
#-----------------------------------
.type do_stat, @function
#-----------------------------------
do_stat:

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
            bl __errno_location

            str wzr,[x0]
            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406f98

            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_406f98

            ldr x1,[sp,#16]
            ldr x0,[sp,#24]
            bl lstat

            b .L_406fa4
.L_406f98:

            ldr x1,[sp,#16]
            ldr x0,[sp,#24]
            bl stat
.L_406fa4:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size do_stat, . - do_stat
#-----------------------------------
.type get_suffix, @function
#-----------------------------------
get_suffix:

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
            adrp x0, known_suffixes.6
            add x0,x0, :lo12:known_suffixes.6
            str x0,[sp,#88]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x1,[x0]
            ldr x0,[sp,#88]
            str x1,[x0]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x2,[x0]
            adrp x0, .L_413410
            add x1,x0, :lo12:.L_413410
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_407008

            ldr x0,[sp,#88]
            add x0,x0,#8
            str x0,[sp,#88]
.L_407008:

            ldr x0,[sp,#24]
            bl strlen

            str w0,[sp,#84]
            ldr w0,[sp,#84]
            cmp w0,#32
            b.gt .L_407030

            add x0,sp,#40
            ldr x1,[sp,#24]
            bl strcpy

            b .L_407048
.L_407030:

            ldrsw x0,[sp,#84]
            sub x0,x0,#32
            ldr x1,[sp,#24]
            add x1,x1,x0
            add x0,sp,#40
            bl strcpy
.L_407048:

            add x0,sp,#40
            bl strlwr

            add x0,sp,#40
            bl strlen

            str w0,[sp,#80]
.L_40705c:

            ldr x0,[sp,#88]
            ldr x0,[x0]
            bl strlen

            str w0,[sp,#76]
            ldr w1,[sp,#80]
            ldr w0,[sp,#76]
            cmp w1,w0
            b.le .L_4070e8

            ldr w1,[sp,#80]
            ldr w0,[sp,#76]
            sub w0,w1,w0
            sub w0,w0,#1
            sxtw x0,w0
            add x1,sp,#40
            ldrb w0,[x1,x0]
            cmp w0,#47
            b.eq .L_4070e8

            ldrsw x1,[sp,#80]
            ldrsw x0,[sp,#76]
            sub x0,x1,x0
            add x1,sp,#40
            add x2,x1,x0
            ldr x0,[sp,#88]
            ldr x0,[x0]
            mov x1,x0
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_4070e8

            ldrsw x1,[sp,#84]
            ldrsw x0,[sp,#76]
            sub x0,x1,x0
            ldr x1,[sp,#24]
            add x0,x1,x0
            b .L_407108
.L_4070e8:

            ldr x0,[sp,#88]
            add x0,x0,#8
            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_40705c

            mov x0,#0
.L_407108:

            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_suffix, . - get_suffix
#-----------------------------------
.type get_istat, @function
#-----------------------------------
get_istat:

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
            str x0,[sp,#40]
            str x1,[sp,#32]
            str wzr,[sp,#92]
            adrp x0, suffixes.5
            add x0,x0, :lo12:suffixes.5
            str x0,[sp,#80]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x1,[x0]
            ldr x0,[sp,#80]
            str x1,[x0]
            ldr x0,[sp,#40]
            bl strlen

            cmp x0,#1022
            b.hi .L_407330

            ldr x1,[sp,#40]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcpy

            ldr x1,[sp,#32]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl do_stat

            cmp w0,#0
            b.ne .L_407188

            mov w0,#0
            b .L_407380
.L_407188:

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4071ac

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#2
            b.eq .L_4071c0
.L_4071ac:

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl progerror

            mov w0,#1
            b .L_407380
.L_4071c0:

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl get_suffix

            str x0,[sp,#72]
            ldr x0,[sp,#72]
            cmp x0,#0
            b.eq .L_4071f0

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl progerror

            mov w0,#1
            b .L_407380
.L_4071f0:

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strlen

            str w0,[sp,#68]
            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x2,[x0]
            adrp x0, .L_413078
            add x1,x0, :lo12:.L_413078
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_407230

            ldr x0,[sp,#80]
            add x0,x0,#8
            str x0,[sp,#80]
.L_407230:

            ldr x0,[sp,#80]
            ldr x0,[x0]
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            str x0,[sp,#56]
            ldr x1,[sp,#40]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcpy

            ldrsw x19,[sp,#68]
            ldr x0,[sp,#72]
            bl strlen

            add x0,x19,x0
            cmp x0,#1023
            b.hi .L_407338

            ldr x1,[sp,#72]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcat

            ldr x1,[sp,#32]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl do_stat

            cmp w0,#0
            b.ne .L_40729c

            mov w0,#0
            b .L_407380
.L_40729c:

            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            mov x1,x0
            ldr x0,[sp,#56]
            bl strcmp

            cmp w0,#0
            b.ne .L_4072c8

            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#92]
.L_4072c8:

            ldr x0,[sp,#80]
            add x0,x0,#8
            str x0,[sp,#80]
            ldr x0,[sp,#80]
            ldr x0,[x0]
            cmp x0,#0
            b.ne .L_407230

            ldr x1,[sp,#40]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcpy

            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            mov x1,x0
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcat

            bl __errno_location

            ldr w1,[sp,#92]
            str w1,[x0]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl progerror

            mov w0,#1
            b .L_407380
.L_407330:

            nop
            nop
            nop
            nop
            b .L_40733c
.L_407338:

            nop
            nop
            nop
            nop
.L_40733c:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            ldr x3,[sp,#40]
            mov x2,x0
            adrp x0, .L_413418
            add x1,x0, :lo12:.L_413418
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
.L_407380:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_istat, . - get_istat
#-----------------------------------
.type make_ofname, @function
#-----------------------------------
make_ofname:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            adrp x0, ifname
            add x1,x0, :lo12:ifname
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl strcpy

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl get_suffix

            str x0,[sp,#24]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407534

            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4074cc

            adrp x0, recursive
            add x0,x0, :lo12:recursive
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40741c

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_407414

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40741c
.L_407414:

            mov w0,#0
            b .L_407688
.L_40741c:

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_407458

            adrp x0, recursive
            add x0,x0, :lo12:recursive
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4074c4

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4074c4
.L_407458:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4074a0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413438
            add x1,x0, :lo12:.L_413438
            mov x0,x4
            bl fprintf
.L_4074a0:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4074c4

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_4074c4:

            mov w0,#2
            b .L_407688
.L_4074cc:

            ldr x0,[sp,#24]
            bl strlwr

            adrp x0, .L_413460
            add x1,x0, :lo12:.L_413460
            ldr x0,[sp,#24]
            bl strcmp

            cmp w0,#0
            b.eq .L_407504

            adrp x0, .L_413468
            add x1,x0, :lo12:.L_413468
            ldr x0,[sp,#24]
            bl strcmp

            cmp w0,#0
            b.ne .L_407528
.L_407504:

            ldr x2,[sp,#24]
            adrp x0, .L_413470
            add x1,x0, :lo12:.L_413470
            mov x0,x2
            ldr w2,[x1]
            ldrb w1,[x1,#4]
            str w2,[x0]
            strb w1,[x0,#4]
            b .L_40760c
.L_407528:

            ldr x0,[sp,#24]
            strb wzr,[x0]
            b .L_40760c
.L_407534:

            ldr x0,[sp,#24]
            cmp x0,#0
            b.eq .L_4075bc

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40757c

            adrp x0, recursive
            add x0,x0, :lo12:recursive
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4075b4

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4075b4
.L_40757c:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr x4,[sp,#24]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413478
            add x1,x0, :lo12:.L_413478
            mov x0,x5
            bl fprintf
.L_4075b4:

            mov w0,#2
            b .L_407688
.L_4075bc:

            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            str wzr,[x0]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl strlen

            mov x1,x0
            adrp x0, z_len
            add x0,x0, :lo12:z_len
            ldr x0,[x0]
            add x0,x1,x0
            cmp x0,#1023
            b.hi .L_407614

            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            mov x1,x0
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl strcat
.L_40760c:

            mov w0,#0
            b .L_407688
.L_407614:

            nop
            nop
            nop
            nop
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_407660

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413418
            add x1,x0, :lo12:.L_413418
            mov x0,x4
            bl fprintf
.L_407660:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_407684

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_407684:

            mov w0,#2
.L_407688:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size make_ofname, . - make_ofname
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
            str w0,[sp,#28]
            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407790

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407790

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407714

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_407720
.L_407714:

            mov w0,#1
            bl fill_inbuf

            and w0,w0,#255
.L_407720:

            strb w0,[sp,#32]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407774

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_40777c
.L_407774:

            mov w0,#1
            bl fill_inbuf
.L_40777c:

            str w0,[sp,#92]
            ldr w0,[sp,#92]
            and w0,w0,#255
            strb w0,[sp,#33]
            b .L_407854
.L_407790:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_4077e0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_4077ec
.L_4077e0:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
.L_4077ec:

            strb w0,[sp,#32]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407840

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_40784c
.L_407840:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
.L_40784c:

            strb w0,[sp,#33]
            str wzr,[sp,#92]
.L_407854:

            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#-1
            str w1,[x0]
            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            str w1,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str xzr,[x0]
            adrp x0, last_member
            add x0,x0, :lo12:last_member
            str wzr,[x0]
            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4134a8
            add x1,x0, :lo12:.L_4134a8
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.eq .L_4078d8

            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4134b0
            add x1,x0, :lo12:.L_4134b0
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.ne .L_408330
.L_4078d8:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40792c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            mov w1,w0
            b .L_407938
.L_40792c:

            mov w0,#0
            bl fill_inbuf

            mov w1,w0
.L_407938:

            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#8
            b.eq .L_4079b4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            mov w4,w0
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_4134b8
            add x1,x0, :lo12:.L_4134b8
            mov x0,x5
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#-1
            b .L_40874c
.L_4079b4:

            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, unzip
            add x1,x1, :lo12:unzip
            str x1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407a18

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_407a24
.L_407a18:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
.L_407a24:

            strb w0,[sp,#75]
            ldrb w0,[sp,#75]
            and w0,w0,#32
            cmp w0,#0
            b.eq .L_407a84

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_4134e8
            add x1,x0, :lo12:.L_4134e8
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#-1
            b .L_40874c
.L_407a84:

            ldrb w0,[sp,#75]
            and w0,w0,#2
            cmp w0,#0
            b.eq .L_407af4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413510
            add x1,x0, :lo12:.L_413510
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#1
            b.gt .L_407af4

            mov w0,#-1
            b .L_40874c
.L_407af4:

            ldrb w0,[sp,#75]
            and w0,w0,#192
            cmp w0,#0
            b.eq .L_407b6c

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldrb w0,[sp,#75]
            mov w4,w0
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413548
            add x1,x0, :lo12:.L_413548
            mov x0,x5
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#1
            b.gt .L_407b6c

            mov w0,#-1
            b .L_40874c
.L_407b6c:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407bc0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_407bcc
.L_407bc0:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
.L_407bcc:

            str x0,[sp,#64]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407c28

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            lsl x0,x0,#8
            b .L_407c38
.L_407c28:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
            lsl x0,x0,#8
.L_407c38:

            ldr x1,[sp,#64]
            orr x0,x1,x0
            str x0,[sp,#64]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407c9c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            lsl x0,x0,#16
            b .L_407cac
.L_407c9c:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
            lsl x0,x0,#16
.L_407cac:

            ldr x1,[sp,#64]
            orr x0,x1,x0
            str x0,[sp,#64]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407d10

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            lsl x0,x0,#24
            b .L_407d20
.L_407d10:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
            lsl x0,x0,#24
.L_407d20:

            ldr x1,[sp,#64]
            orr x0,x1,x0
            str x0,[sp,#64]
            ldr x0,[sp,#64]
            cmp x0,#0
            b.eq .L_407d5c

            adrp x0, no_time
            add x0,x0, :lo12:no_time
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_407d5c

            ldr x1,[sp,#64]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            str x1,[x0]
.L_407d5c:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407d9c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str w1,[x0]
            b .L_407da4
.L_407d9c:

            mov w0,#0
            bl fill_inbuf
.L_407da4:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407de4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str w1,[x0]
            b .L_407dec
.L_407de4:

            mov w0,#0
            bl fill_inbuf
.L_407dec:

            ldrb w0,[sp,#75]
            and w0,w0,#2
            cmp w0,#0
            b.eq .L_407f10

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407e4c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_407e54
.L_407e4c:

            mov w0,#0
            bl fill_inbuf
.L_407e54:

            str w0,[sp,#60]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407eac

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            lsl w0,w0,#8
            b .L_407eb8
.L_407eac:

            mov w0,#0
            bl fill_inbuf

            lsl w0,w0,#8
.L_407eb8:

            ldr w1,[sp,#60]
            orr w0,w1,w0
            str w0,[sp,#60]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_407f10

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr w4,[sp,#60]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413570
            add x1,x0, :lo12:.L_413570
            mov x0,x5
            bl fprintf
.L_407f10:

            ldrb w0,[sp,#75]
            and w0,w0,#4
            cmp w0,#0
            b.eq .L_408094

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407f70

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_407f78
.L_407f70:

            mov w0,#0
            bl fill_inbuf
.L_407f78:

            str w0,[sp,#88]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_407fd0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            lsl w0,w0,#8
            b .L_407fdc
.L_407fd0:

            mov w0,#0
            bl fill_inbuf

            lsl w0,w0,#8
.L_407fdc:

            ldr w1,[sp,#88]
            orr w0,w1,w0
            str w0,[sp,#88]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408080

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr w4,[sp,#88]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413588
            add x1,x0, :lo12:.L_413588
            mov x0,x5
            bl fprintf

            b .L_408080
.L_408038:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_408078

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str w1,[x0]
            b .L_408080
.L_408078:

            mov w0,#0
            bl fill_inbuf
.L_408080:

            ldr w0,[sp,#88]
            sub w1,w0,#1
            str w1,[sp,#88]
            cmp w0,#0
            b.ne .L_408038
.L_408094:

            ldrb w0,[sp,#75]
            and w0,w0,#8
            cmp w0,#0
            b.eq .L_408264

            adrp x0, no_name
            add x0,x0, :lo12:no_name
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4080f4

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4080e0

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4080f4
.L_4080e0:

            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            ldr w0,[x0]
            cmp w0,#1
            b.le .L_408164
.L_4080f4:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_408144

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_408150
.L_408144:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
.L_408150:

            strb w0,[sp,#39]
            ldrb w0,[sp,#39]
            cmp w0,#0
            b.ne .L_4080f4

            b .L_408264
.L_408164:

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl base_name

            str x0,[sp,#80]
            ldr x0,[sp,#80]
            str x0,[sp,#48]
.L_40817c:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_4081cc

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w1,[x1,x0]
            b .L_4081d8
.L_4081cc:

            mov w0,#0
            bl fill_inbuf

            and w1,w0,#255
.L_4081d8:

            ldr x0,[sp,#80]
            strb w1,[x0]
            ldr x0,[sp,#80]
            add x1,x0,#1
            str x1,[sp,#80]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_40821c

            adrp x0, remove_ofname
            add x0,x0, :lo12:remove_ofname
            ldr x1,[sp,#80]
            cmp x1,x0
            b.lo .L_40817c

            adrp x0, .L_4135b8
            add x0,x0, :lo12:.L_4135b8
            bl error

            b .L_40817c
.L_40821c:

            nop
            nop
            nop
            nop
            ldr x0,[sp,#48]
            bl base_name

            str x0,[sp,#40]
            ldr x1,[sp,#40]
            ldr x0,[sp,#48]
            bl strcpy

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_408264

            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_408264

            adrp x0, list
            add x0,x0, :lo12:list
            str wzr,[x0]
.L_408264:

            ldrb w0,[sp,#75]
            and w0,w0,#16
            cmp w0,#0
            b.eq .L_4082f4

            nop
            nop
            nop
            nop
.L_408278:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_4082d4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            cmp w0,#0
            cset w0,ne
            and w0,w0,#255
            b .L_4082e8
.L_4082d4:

            mov w0,#0
            bl fill_inbuf

            cmp w0,#0
            cset w0,ne
            and w0,w0,#255
.L_4082e8:

            and w0,w0,#1
            cmp w0,#0
            b.ne .L_408278
.L_4082f4:

            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            ldr w0,[x0]
            cmp w0,#1
            b.ne .L_408540

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w0,w0
            add x0,x0,#16
            mov x1,x0
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str x1,[x0]
            b .L_408540
.L_408330:

            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4135e0
            add x1,x0, :lo12:.L_4135e0
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.ne .L_4083d0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            cmp w0,#2
            b.ne .L_4083d0

            mov x2,#4
            adrp x0, .L_4135e0
            add x1,x0, :lo12:.L_4135e0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            bl memcmp

            cmp w0,#0
            b.ne .L_4083d0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str wzr,[x0]
            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, unzip
            add x1,x1, :lo12:unzip
            str x1,[x0]
            ldr w0,[sp,#28]
            bl check_zipfile

            cmp w0,#0
            b.eq .L_4083bc

            mov w0,#-1
            b .L_40874c
.L_4083bc:

            adrp x0, last_member
            add x0,x0, :lo12:last_member
            mov w1,#1
            str w1,[x0]
            b .L_408540
.L_4083d0:

            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4135e8
            add x1,x0, :lo12:.L_4135e8
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.ne .L_408418

            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, unpack
            add x1,x1, :lo12:unpack
            str x1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#2
            str w1,[x0]
            b .L_408540
.L_408418:

            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4135f0
            add x1,x0, :lo12:.L_4135f0
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.ne .L_408470

            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, unlzw
            add x1,x1, :lo12:unlzw
            str x1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#1
            str w1,[x0]
            adrp x0, last_member
            add x0,x0, :lo12:last_member
            mov w1,#1
            str w1,[x0]
            b .L_408540
.L_408470:

            add x3,sp,#32
            mov x2,#2
            adrp x0, .L_4135f8
            add x1,x0, :lo12:.L_4135f8
            mov x0,x3
            bl memcmp

            cmp w0,#0
            b.ne .L_4084c8

            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, unlzh
            add x1,x1, :lo12:unlzh
            str x1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#3
            str w1,[x0]
            adrp x0, last_member
            add x0,x0, :lo12:last_member
            mov w1,#1
            str w1,[x0]
            b .L_408540
.L_4084c8:

            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408540

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408540

            adrp x0, list
            add x0,x0, :lo12:list
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_408540

            adrp x0, method
            add x0,x0, :lo12:method
            str wzr,[x0]
            adrp x0, work
            add x0,x0, :lo12:work
            adrp x1, copy
            add x1,x1, :lo12:copy
            str x1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str wzr,[x0]
            adrp x0, last_member
            add x0,x0, :lo12:last_member
            mov w1,#1
            str w1,[x0]
.L_408540:

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.lt .L_408564

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            b .L_40874c
.L_408564:

            adrp x0, part_nb
            add x0,x0, :lo12:part_nb
            ldr w0,[x0]
            cmp w0,#1
            b.ne .L_4085c4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413600
            add x1,x0, :lo12:.L_413600
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#-1
            b .L_40874c
.L_4085c4:

            ldrb w0,[sp,#32]
            cmp w0,#0
            b.ne .L_4086dc

            ldr w0,[sp,#92]
            str w0,[sp,#76]
            b .L_40863c
.L_4085dc:

            nop
            nop
            nop
            nop
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_408630

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_408638
.L_408630:

            mov w0,#1
            bl fill_inbuf
.L_408638:

            str w0,[sp,#76]
.L_40863c:

            ldr w0,[sp,#76]
            cmp w0,#0
            b.eq .L_4085dc

            ldr w0,[sp,#76]
            cmn w0,#1
            b.ne .L_4086dc

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4086d4

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4086b0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413620
            add x1,x0, :lo12:.L_413620
            mov x0,x4
            bl fprintf
.L_4086b0:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4086d4

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_4086d4:

            mov w0,#-3
            b .L_40874c
.L_4086dc:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_408724

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413658
            add x1,x0, :lo12:.L_413658
            mov x0,x4
            bl fprintf
.L_408724:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_408748

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_408748:

            mov w0,#-2
.L_40874c:

            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_method, . - get_method
#-----------------------------------
.type do_list, @function
#-----------------------------------
do_list:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str w0,[sp,#28]
            str w1,[sp,#24]
            mov w0,#1
            str w0,[sp,#68]
            mov x0,#9223372036854775807
            str x0,[sp,#56]
            b .L_4087a4
.L_408778:

            ldr w0,[sp,#68]
            add w0,w0,#1
            str w0,[sp,#68]
            ldr x0,[sp,#56]
            mov x1,#7378697629483820646
            movk x1,#26215
            smulh x1,x0,x1
            asr x1,x1,#2
            asr x0,x0,#63
            sub x0,x1,x0
            str x0,[sp,#56]
.L_4087a4:

            ldr x0,[sp,#56]
            cmp x0,#9
            b.gt .L_408778

            adrp x0, first_time.4
            add x0,x0, :lo12:first_time.4
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408840

            ldr w0,[sp,#24]
            cmp w0,#0
            b.lt .L_408840

            adrp x0, first_time.4
            add x0,x0, :lo12:first_time.4
            str wzr,[x0]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4087fc

            adrp x0, .L_413690
            add x0,x0, :lo12:.L_413690
            bl printf
.L_4087fc:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40897c

            adrp x0, .L_4136b0
            add x6,x0, :lo12:.L_4136b0
            ldr w5,[sp,#68]
            ldr w4,[sp,#68]
            adrp x0, .L_4136c0
            add x3,x0, :lo12:.L_4136c0
            ldr w2,[sp,#68]
            ldr w1,[sp,#68]
            adrp x0, .L_4136d0
            add x0,x0, :lo12:.L_4136d0
            bl printf

            b .L_40897c
.L_408840:

            ldr w0,[sp,#24]
            cmp w0,#0
            b.ge .L_40897c

            adrp x0, total_in
            add x0,x0, :lo12:total_in
            ldr x0,[x0]
            cmp x0,#0
            b.le .L_408d24

            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x0,[x0]
            cmp x0,#0
            b.le .L_408d24

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408894

            adrp x0, .L_4136f8
            add x0,x0, :lo12:.L_4136f8
            bl printf
.L_408894:

            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4088bc

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40891c
.L_4088bc:

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x3,[x0]
            adrp x0, total_in
            add x0,x0, :lo12:total_in
            ldr x0,[x0]
            ldr w2,[sp,#68]
            mov x1,x0
            mov x0,x3
            bl fprint_off

            mov w0,#32
            bl putchar

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x3,[x0]
            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x0,[x0]
            ldr w2,[sp,#68]
            mov x1,x0
            mov x0,x3
            bl fprint_off

            mov w0,#32
            bl putchar
.L_40891c:

            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x1,[x0]
            adrp x0, total_in
            add x0,x0, :lo12:total_in
            ldr x2,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            sub x0,x2,x0
            sub x3,x1,x0
            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x1,[x0]
            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
            mov x2,x0
            mov x0,x3
            bl display_ratio

            adrp x0, .L_413718
            add x0,x0, :lo12:.L_413718
            bl puts

            b .L_408d28
.L_40897c:

            mov x0,#-1
            str x0,[sp,#72]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            mov x1,#-1
            str x1,[x0]
            adrp x0, ifile_size
            add x0,x0, :lo12:ifile_size
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            ldr w0,[sp,#24]
            cmp w0,#8
            b.ne .L_408ac0

            adrp x0, last_member
            add x0,x0, :lo12:last_member
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_408ac0

            mov w2,#2
            mov x1,#-8
            ldr w0,[sp,#28]
            bl lseek

            mov x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            cmn x0,#1
            b.eq .L_408ac0

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            add x1,x0,#8
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            add x0,sp,#40
            mov x2,#8
            mov x1,x0
            ldr w0,[sp,#28]
            bl read

            cmp x0,#8
            b.eq .L_408a3c

            bl read_error
.L_408a3c:

            ldrb w0,[sp,#40]
            mov w1,w0
            ldrb w0,[sp,#41]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#42]
            mov w2,w0
            ldrb w0,[sp,#43]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#72]
            ldrb w0,[sp,#44]
            mov w1,w0
            ldrb w0,[sp,#45]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#46]
            mov w2,w0
            ldrb w0,[sp,#47]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            mov x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
.L_408ac0:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            bl ctime

            add x0,x0,#4
            str x0,[sp,#48]
            ldr x0,[sp,#48]
            add x0,x0,#12
            strb wzr,[x0]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408b1c

            adrp x0, methods.3
            add x0,x0, :lo12:methods.3
            ldrsw x1,[sp,#24]
            ldr x0,[x0,x1,lsl #3]
            ldr x3,[sp,#48]
            ldr x2,[sp,#72]
            mov x1,x0
            adrp x0, .L_413728
            add x0,x0, :lo12:.L_413728
            bl printf
.L_408b1c:

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x3,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            ldr w2,[sp,#68]
            mov x1,x0
            mov x0,x3
            bl fprint_off

            mov w0,#32
            bl putchar

            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x3,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            ldr w2,[sp,#68]
            mov x1,x0
            mov x0,x3
            bl fprint_off

            mov w0,#32
            bl putchar

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            cmn x0,#1
            b.ne .L_408be0

            adrp x0, total_in
            add x0,x0, :lo12:total_in
            mov x1,#-1
            str x1,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str xzr,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            b .L_408c1c
.L_408be0:

            adrp x0, total_in
            add x0,x0, :lo12:total_in
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_408c1c

            adrp x0, total_in
            add x0,x0, :lo12:total_in
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, total_in
            add x0,x0, :lo12:total_in
            str x1,[x0]
.L_408c1c:

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            cmn x0,#1
            b.ne .L_408c80

            adrp x0, total_out
            add x0,x0, :lo12:total_out
            mov x1,#-1
            str x1,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str xzr,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            b .L_408cbc
.L_408c80:

            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x0,[x0]
            cmp x0,#0
            b.lt .L_408cbc

            adrp x0, total_out
            add x0,x0, :lo12:total_out
            ldr x1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, total_out
            add x0,x0, :lo12:total_out
            str x1,[x0]
.L_408cbc:

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x2,[x0]
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            sub x0,x2,x0
            sub x3,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, stdout
            add x0,x0, :lo12:stdout
            ldr x0,[x0]
            mov x2,x0
            mov x0,x3
            bl display_ratio

            adrp x0, ofname
            add x1,x0, :lo12:ofname
            adrp x0, .L_413738
            add x0,x0, :lo12:.L_413738
            bl printf

            b .L_408d28
.L_408d24:

            nop
            nop
            nop
            nop
.L_408d28:

            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size do_list, . - do_list
#-----------------------------------
.type same_file, @function
#-----------------------------------
same_file:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str x0,[sp,#8]
            str x1,[sp]
            ldr x0,[sp,#8]
            ldr x1,[x0,#8]
            ldr x0,[sp]
            ldr x0,[x0,#8]
            cmp x1,x0
            b.ne .L_408d74

            ldr x0,[sp,#8]
            ldr x1,[x0]
            ldr x0,[sp]
            ldr x0,[x0]
            cmp x1,x0
            b.ne .L_408d74

            mov w0,#1
            b .L_408d78
.L_408d74:

            mov w0,#0
.L_408d78:

            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size same_file, . - same_file
#-----------------------------------
.type name_too_long, @function
#-----------------------------------
name_too_long:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#24]
            bl strlen

            str w0,[sp,#172]
            ldrsw x0,[sp,#172]
            sub x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w0,[x0]
            strb w0,[sp,#171]
            ldr x1,[sp,#16]
            add x0,sp,#32
            ldr q24,[x1]
            ldr q25,[x1,#16]
            ldr q26,[x1,#32]
            ldr q27,[x1,#48]
            ldr q28,[x1,#64]
            ldr q29,[x1,#80]
            ldr q30,[x1,#96]
            ldr q31,[x1,#112]
            str q24,[x0]
            str q25,[x0,#16]
            str q26,[x0,#32]
            str q27,[x0,#48]
            str q28,[x0,#64]
            str q29,[x0,#80]
            str q30,[x0,#96]
            str q31,[x0,#112]
            ldrsw x0,[sp,#172]
            sub x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            strb wzr,[x0]
            add x0,sp,#32
            mov x1,x0
            ldr x0,[sp,#24]
            bl lstat

            cmp w0,#0
            b.ne .L_408e48

            add x0,sp,#32
            mov x1,x0
            ldr x0,[sp,#16]
            bl same_file

            cmp w0,#0
            b.eq .L_408e48

            mov w0,#1
            b .L_408e4c
.L_408e48:

            mov w0,#0
.L_408e4c:

            str w0,[sp,#164]
            ldrsw x0,[sp,#172]
            sub x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrb w1,[sp,#171]
            strb w1,[x0]
            ldr w0,[sp,#164]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size name_too_long, . - name_too_long
#-----------------------------------
.type shorten_name, @function
#-----------------------------------
shorten_name:

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
            str xzr,[sp,#56]
            mov w0,#3
            str w0,[sp,#52]
            ldr x0,[sp,#24]
            bl strlen

            str w0,[sp,#36]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_408edc

            ldr w0,[sp,#36]
            cmp w0,#1
            b.gt .L_408ec4

            adrp x0, .L_413740
            add x0,x0, :lo12:.L_413740
            bl error
.L_408ec4:

            ldrsw x0,[sp,#36]
            sub x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            strb wzr,[x0]
            b .L_4090d8
.L_408edc:

            ldr x0,[sp,#24]
            bl get_suffix

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_408f00

            adrp x0, .L_413750
            add x0,x0, :lo12:.L_413750
            bl error
.L_408f00:

            ldr x0,[sp,#40]
            strb wzr,[x0]
            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            mov w1,#1
            str w1,[x0]
            ldr w0,[sp,#36]
            cmp w0,#4
            b.le .L_408f6c

            ldr x0,[sp,#40]
            sub x2,x0,#4
            adrp x0, .L_413470
            add x1,x0, :lo12:.L_413470
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_408f6c

            ldr x0,[sp,#40]
            sub x2,x0,#4
            adrp x0, .L_413460
            add x1,x0, :lo12:.L_413460
            mov x0,x2
            ldr w2,[x1]
            ldrb w1,[x1,#4]
            str w2,[x0]
            strb w1,[x0,#4]
            b .L_4090d8
.L_408f6c:

            mov w1,#47
            ldr x0,[sp,#24]
            bl strrchr

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_408f94

            ldr x0,[sp,#40]
            add x0,x0,#1
            b .L_408f98
.L_408f94:

            ldr x0,[sp,#24]
.L_408f98:

            str x0,[sp,#40]
            b .L_408ffc
.L_408fa0:

            adrp x0, .L_413768
            add x1,x0, :lo12:.L_413768
            ldr x0,[sp,#40]
            bl strcspn

            str w0,[sp,#32]
            ldrsw x0,[sp,#32]
            ldr x1,[sp,#40]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr w1,[sp,#32]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.le .L_408fe0

            ldr x0,[sp,#40]
            sub x0,x0,#1
            str x0,[sp,#56]
.L_408fe0:

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_408ffc

            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_408ffc:

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_408fa0

            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_409030

            ldr w0,[sp,#52]
            sub w0,w0,#1
            str w0,[sp,#52]
            ldr w0,[sp,#52]
            cmp w0,#0
            b.ne .L_408f6c
.L_409030:

            ldr x0,[sp,#56]
            cmp x0,#0
            b.eq .L_409074
.L_40903c:

            ldr x0,[sp,#56]
            ldrb w1,[x0,#1]
            ldr x0,[sp,#56]
            strb w1,[x0]
            ldr x0,[sp,#56]
            add x1,x0,#1
            str x1,[sp,#56]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_40903c

            ldr x0,[sp,#56]
            sub x0,x0,#1
            str x0,[sp,#56]
            b .L_4090c0
.L_409074:

            mov w0,#46
            mov w1,w0
            ldr x0,[sp,#24]
            bl strrchr

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_4090a0

            adrp x0, .L_413770
            add x0,x0, :lo12:.L_413770
            bl error
.L_4090a0:

            ldr x0,[sp,#56]
            add x0,x0,#1
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_4090c0

            ldr x0,[sp,#56]
            sub x0,x0,#1
            str x0,[sp,#56]
.L_4090c0:

            adrp x0, z_suffix
            add x0,x0, :lo12:z_suffix
            ldr x0,[x0]
            mov x1,x0
            ldr x0,[sp,#56]
            bl strcpy
.L_4090d8:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size shorten_name, . - shorten_name
#-----------------------------------
.type check_ofname, @function
#-----------------------------------
check_ofname:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            bl __errno_location

            str wzr,[x0]
            b .L_409118
.L_4090f4:

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#36
            b.eq .L_40910c

            mov w0,#0
            b .L_4093c4
.L_40910c:

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl shorten_name
.L_409118:

            add x0,sp,#24
            mov x1,x0
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl lstat

            cmp w0,#0
            b.ne .L_4090f4

            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409194

            add x0,sp,#24
            mov x1,x0
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl name_too_long

            cmp w0,#0
            b.eq .L_409194

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl shorten_name

            add x0,sp,#24
            mov x1,x0
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl lstat

            cmp w0,#0
            b.eq .L_409194

            mov w0,#0
            b .L_4093c4
.L_409194:

            add x0,sp,#24
            mov x1,x0
            adrp x0, istat
            add x0,x0, :lo12:istat
            bl same_file

            cmp w0,#0
            b.eq .L_409284

            adrp x0, ofname
            add x1,x0, :lo12:ofname
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl strcmp

            cmp w0,#0
            b.ne .L_409230

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_409204

            adrp x0, .L_413280
            add x0,x0, :lo12:.L_413280
            b .L_40920c
.L_409204:

            adrp x0, .L_412c58
            add x0,x0, :lo12:.L_412c58
.L_40920c:

            mov x4,x0
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413790
            add x1,x0, :lo12:.L_413790
            mov x0,x5
            bl fprintf

            b .L_40926c
.L_409230:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ofname
            add x4,x0, :lo12:ofname
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_4137b8
            add x1,x0, :lo12:.L_4137b8
            mov x0,x5
            bl fprintf
.L_40926c:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            b .L_4093c4
.L_409284:

            adrp x0, force
            add x0,x0, :lo12:force
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409398

            str wzr,[sp,#156]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ofname
            add x3,x0, :lo12:ofname
            mov x2,x1
            adrp x0, .L_4137e0
            add x1,x0, :lo12:.L_4137e0
            mov x0,x4
            bl fprintf

            adrp x0, foreground
            add x0,x0, :lo12:foreground
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40933c

            adrp x0, stdin
            add x0,x0, :lo12:stdin
            ldr x0,[x0]
            bl fileno

            bl isatty

            cmp w0,#0
            b.eq .L_40933c

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#36
            mov x1,#1
            adrp x0, .L_4137f8
            add x0,x0, :lo12:.L_4137f8
            bl fwrite

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            bl fflush

            bl yesno

            str w0,[sp,#156]
.L_40933c:

            ldr w0,[sp,#156]
            cmp w0,#0
            b.ne .L_409398

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#17
            mov x1,#1
            adrp x0, .L_413820
            add x0,x0, :lo12:.L_413820
            bl fwrite

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409390

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_409390:

            mov w0,#1
            b .L_4093c4
.L_409398:

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl xunlink

            cmp w0,#0
            b.eq .L_4093c0

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl progerror

            mov w0,#1
            b .L_4093c4
.L_4093c0:

            mov w0,#0
.L_4093c4:

            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size check_ofname, . - check_ofname
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
            str x0,[sp,#24]
            str x1,[sp,#16]
            ldr x0,[sp,#16]
            ldr x0,[x0,#72]
            str x0,[sp,#40]
            ldr x0,[sp,#16]
            ldr x0,[x0,#88]
            str x0,[sp,#48]
            add x0,sp,#40
            mov x1,x0
            ldr x0,[sp,#24]
            bl utime

            cmp w0,#0
            b.eq .L_4094bc

            ldr x0,[sp,#16]
            ldr w0,[x0,#16]
            and w0,w0,#61440
            cmp w0,#4,lsl #12
            b.eq .L_4094bc

            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#60]
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40946c

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413040
            add x1,x0, :lo12:.L_413040
            mov x0,x3
            bl fprintf
.L_40946c:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409490

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_409490:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4094bc

            bl __errno_location

            ldr w1,[sp,#60]
            str w1,[x0]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl perror
.L_4094bc:

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size reset_times, . - reset_times
#-----------------------------------
.type copy_stat, @function
#-----------------------------------
copy_stat:

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
            adrp x0, decompress
            add x0,x0, :lo12:decompress
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_409564

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_409564

            ldr x0,[sp,#24]
            ldr x1,[x0,#88]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            cmp x1,x0
            b.eq .L_409564

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x1,[x0]
            ldr x0,[sp,#24]
            str x1,[x0,#88]
            adrp x0, verbose
            add x0,x0, :lo12:verbose
            ldr w0,[x0]
            cmp w0,#1
            b.le .L_409564

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, ofname
            add x2,x0, :lo12:ofname
            adrp x0, .L_413838
            add x1,x0, :lo12:.L_413838
            mov x0,x3
            bl fprintf
.L_409564:

            ldr x1,[sp,#24]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl reset_times

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w2,[x0]
            ldr x0,[sp,#24]
            ldr w0,[x0,#16]
            and w0,w0,#4095
            mov w1,w0
            mov w0,w2
            bl fchmod

            cmp w0,#0
            b.eq .L_40963c

            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#44]
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4095ec

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413040
            add x1,x0, :lo12:.L_413040
            mov x0,x3
            bl fprintf
.L_4095ec:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409610

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_409610:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40963c

            bl __errno_location

            ldr w1,[sp,#44]
            str w1,[x0]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl perror
.L_40963c:

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w3,[x0]
            ldr x0,[sp,#24]
            ldr w1,[x0,#24]
            ldr x0,[sp,#24]
            ldr w0,[x0,#28]
            mov w2,w0
            mov w0,w3
            bl fchown

            adrp x0, remove_ofname
            add x0,x0, :lo12:remove_ofname
            str wzr,[x0]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl xunlink

            cmp w0,#0
            b.eq .L_409720

            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#40]
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4096d0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413040
            add x1,x0, :lo12:.L_413040
            mov x0,x3
            bl fprintf
.L_4096d0:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4096f4

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_4096f4:

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_409720

            bl __errno_location

            ldr w1,[sp,#40]
            str w1,[x0]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl perror
.L_409720:

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
.size copy_stat, . - copy_stat
#-----------------------------------
.type treat_dir, @function
#-----------------------------------
treat_dir:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1104
.cfi_def_cfa_offset 1104
            stp fp,lr,[sp]
.cfi_offset 29, -1104
.cfi_offset 30, -1096
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -1088
            str x0,[sp,#40]
            ldr x0,[sp,#40]
            bl opendir

            str x0,[sp,#1088]
            ldr x0,[sp,#1088]
            cmp x0,#0
            b.ne .L_409880

            ldr x0,[sp,#40]
            bl progerror

            b .L_4098d0
.L_409764:

            ldr x0,[sp,#1080]
            add x2,x0,#19
            adrp x0, .L_413768
            add x1,x0, :lo12:.L_413768
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.eq .L_409880

            ldr x0,[sp,#1080]
            add x2,x0,#19
            adrp x0, .L_413858
            add x1,x0, :lo12:.L_413858
            mov x0,x2
            bl strcmp

            cmp w0,#0
            b.ne .L_4097a8

            b .L_409880
.L_4097a8:

            ldr x0,[sp,#40]
            bl strlen

            str w0,[sp,#1100]
            ldrsw x19,[sp,#1100]
            ldr x0,[sp,#1080]
            add x0,x0,#19
            bl strlen

            add x0,x19,x0
            add x0,x0,#1
            cmp x0,#1022
            b.hi .L_409834

            add x0,sp,#56
            ldr x1,[sp,#40]
            bl strcpy

            ldr w0,[sp,#1100]
            cmp w0,#0
            b.eq .L_409808

            ldr w0,[sp,#1100]
            add w1,w0,#1
            str w1,[sp,#1100]
            sxtw x0,w0
            add x1,sp,#56
            mov w2,#47
            strb w2,[x1,x0]
.L_409808:

            ldrsw x0,[sp,#1100]
            add x1,sp,#56
            add x2,x1,x0
            ldr x0,[sp,#1080]
            add x0,x0,#19
            mov x1,x0
            mov x0,x2
            bl strcpy

            add x0,sp,#56
            bl treat_file

            b .L_409880
.L_409834:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr x0,[sp,#1080]
            add x0,x0,#19
            mov x4,x0
            ldr x3,[sp,#40]
            mov x2,x1
            adrp x0, .L_413860
            add x1,x0, :lo12:.L_413860
            mov x0,x5
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
.L_409880:

            bl __errno_location

            str wzr,[x0]
            ldr x0,[sp,#1088]
            bl readdir

            str x0,[sp,#1080]
            ldr x0,[sp,#1080]
            cmp x0,#0
            b.ne .L_409764

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4098b8

            ldr x0,[sp,#40]
            bl progerror
.L_4098b8:

            ldr x0,[sp,#1088]
            bl closedir

            cmp w0,#0
            b.eq .L_4098d0

            ldr x0,[sp,#40]
            bl progerror
.L_4098d0:

            ldp fp,lr,[sp]
            ldr x19,[sp,#16]
            add sp,sp,#1104
.cfi_restore 19
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size treat_dir, . - treat_dir
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
            str w0,[sp,#28]
            adrp x0, in_exit.2
            add x0,x0, :lo12:in_exit.2
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_409908

            ldr w0,[sp,#28]
            bl exit
.L_409908:

            adrp x0, in_exit.2
            add x0,x0, :lo12:in_exit.2
            mov w1,#1
            str w1,[x0]
            adrp x0, env
            add x0,x0, :lo12:env
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_409948

            adrp x0, env
            add x0,x0, :lo12:env
            ldr x0,[x0]
            bl free

            adrp x0, env
            add x0,x0, :lo12:env
            str xzr,[x0]
.L_409948:

            adrp x0, args
            add x0,x0, :lo12:args
            ldr x0,[x0]
            cmp x0,#0
            b.eq .L_409978

            adrp x0, args
            add x0,x0, :lo12:args
            ldr x0,[x0]
            bl free

            adrp x0, args
            add x0,x0, :lo12:args
            str xzr,[x0]
.L_409978:

            ldr w0,[sp,#28]
            bl exit
.cfi_endproc 
.size do_exit, . - do_exit
#-----------------------------------
.type do_remove, @function
#-----------------------------------
do_remove:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, remove_ofname
            add x0,x0, :lo12:remove_ofname
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4099b8

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w0,[x0]
            bl close

            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl xunlink
.L_4099b8:

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
.size do_remove, . - do_remove
.align 2
#-----------------------------------
.globl abort_gzip
.type abort_gzip, @function
#-----------------------------------
abort_gzip:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl do_remove

            mov w0,#1
            bl do_exit

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
.size abort_gzip, . - abort_gzip
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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl do_remove

            mov w0,#1
            bl _exit
.cfi_endproc 
.size abort_gzip_signal, . - abort_gzip_signal
.align 3
#-----------------------------------
.globl huft_build
.type huft_build, @function
#-----------------------------------
huft_build:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1584
.cfi_def_cfa_offset 1584
            stp fp,lr,[sp]
.cfi_offset 29, -1584
.cfi_offset 30, -1576
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
.cfi_offset 19, -1568
.cfi_offset 20, -1560
.cfi_offset 21, -1552
.cfi_offset 22, -1544
.cfi_offset 23, -1536
.cfi_offset 24, -1528
            str x0,[sp,#104]
            str w1,[sp,#100]
            str w2,[sp,#96]
            str x3,[sp,#88]
            str x4,[sp,#80]
            str x5,[sp,#72]
            str x6,[sp,#64]
            add x0,sp,#1480
            mov x2,#68
            mov w1,#0
            bl memset

            ldr x21,[sp,#104]
            ldr w20,[sp,#100]
.L_409a44:

            ldr w3,[x21]
            mov w0,w3
            lsl x0,x0,#2
            add x1,sp,#1480
            ldr w0,[x1,x0]
            add w2,w0,#1
            mov w0,w3
            lsl x0,x0,#2
            add x1,sp,#1480
            str w2,[x1,x0]
            add x21,x21,#4
            sub w20,w20,#1
            cmp w20,#0
            b.ne .L_409a44

            ldr w0,[sp,#1480]
            ldr w1,[sp,#100]
            cmp w1,w0
            b.ne .L_409aa4

            ldr x0,[sp,#72]
            str xzr,[x0]
            ldr x0,[sp,#64]
            str wzr,[x0]
            mov w0,#0
            b .L_40a0e0
.L_409aa4:

            ldr x0,[sp,#64]
            ldr w0,[x0]
            str w0,[sp,#1568]
            mov w19,#1
            b .L_409ad4
.L_409ab8:

            mov w0,w19
            lsl x0,x0,#2
            add x1,sp,#1480
            ldr w0,[x1,x0]
            cmp w0,#0
            b.ne .L_409ae0

            add w19,w19,#1
.L_409ad4:

            cmp w19,#16
            b.ls .L_409ab8

            b .L_409ae4
.L_409ae0:

            nop
            nop
            nop
            nop
.L_409ae4:

            mov w23,w19
            ldr w0,[sp,#1568]
            cmp w19,w0
            b.ls .L_409af8

            str w19,[sp,#1568]
.L_409af8:

            mov w20,#16
            b .L_409b1c
.L_409b00:

            mov w0,w20
            lsl x0,x0,#2
            add x1,sp,#1480
            ldr w0,[x1,x0]
            cmp w0,#0
            b.ne .L_409b28

            sub w20,w20,#1
.L_409b1c:

            cmp w20,#0
            b.ne .L_409b00

            b .L_409b2c
.L_409b28:

            nop
            nop
            nop
            nop
.L_409b2c:

            str w20,[sp,#1548]
            ldr w0,[sp,#1568]
            cmp w20,w0
            b.hs .L_409b40

            str w20,[sp,#1568]
.L_409b40:

            ldr x0,[sp,#64]
            ldr w1,[sp,#1568]
            str w1,[x0]
            mov w0,#1
            lsl w0,w0,w19
            str w0,[sp,#1556]
            b .L_409b9c
.L_409b5c:

            ldr w1,[sp,#1556]
            mov w0,w19
            lsl x0,x0,#2
            add x2,sp,#1480
            ldr w0,[x2,x0]
            sub w0,w1,w0
            str w0,[sp,#1556]
            ldr w0,[sp,#1556]
            cmp w0,#0
            b.ge .L_409b8c

            mov w0,#2
            b .L_40a0e0
.L_409b8c:

            add w19,w19,#1
            ldr w0,[sp,#1556]
            lsl w0,w0,#1
            str w0,[sp,#1556]
.L_409b9c:

            cmp w19,w20
            b.lo .L_409b5c

            ldr w1,[sp,#1556]
            mov w0,w20
            lsl x0,x0,#2
            add x2,sp,#1480
            ldr w0,[x2,x0]
            sub w0,w1,w0
            str w0,[sp,#1556]
            ldr w0,[sp,#1556]
            cmp w0,#0
            b.ge .L_409bd4

            mov w0,#2
            b .L_40a0e0
.L_409bd4:

            mov w0,w20
            lsl x0,x0,#2
            add x1,sp,#1480
            ldr w1,[x1,x0]
            ldr w0,[sp,#1556]
            add w2,w1,w0
            mov w0,w20
            lsl x0,x0,#2
            add x1,sp,#1480
            str w2,[x1,x0]
            mov w19,#0
            str w19,[sp,#116]
            add x21,sp,#1480
            add x21,x21,#4
            add x0,sp,#112
            add x0,x0,#8
            str x0,[sp,#1560]
            b .L_409c3c
.L_409c1c:

            mov x0,x21
            add x21,x0,#4
            ldr w0,[x0]
            add w19,w19,w0
            ldr x0,[sp,#1560]
            add x1,x0,#4
            str x1,[sp,#1560]
            str w19,[x0]
.L_409c3c:

            sub w20,w20,#1
            cmp w20,#0
            b.ne .L_409c1c

            ldr x21,[sp,#104]
            mov w20,#0
.L_409c50:

            mov x0,x21
            add x21,x0,#4
            ldr w19,[x0]
            cmp w19,#0
            b.eq .L_409c98

            mov w0,w19
            lsl x0,x0,#2
            add x1,sp,#112
            ldr w0,[x1,x0]
            add w3,w0,#1
            mov w1,w19
            lsl x1,x1,#2
            add x2,sp,#112
            str w3,[x2,x1]
            mov w0,w0
            lsl x0,x0,#2
            add x1,sp,#184
            str w20,[x1,x0]
.L_409c98:

            add w20,w20,#1
            ldr w0,[sp,#100]
            cmp w20,w0
            b.lo .L_409c50

            ldrsw x0,[sp,#1548]
            lsl x0,x0,#2
            add x1,sp,#112
            ldr w0,[x1,x0]
            str w0,[sp,#100]
            mov w20,#0
            str w20,[sp,#112]
            add x21,sp,#184
            mov w0,#-1
            str w0,[sp,#1572]
            ldr w0,[sp,#1568]
            neg w22,w0
            str xzr,[sp,#1336]
            mov x24,#0
            str wzr,[sp,#1552]
            b .L_40a0b0
.L_409ce8:

            sxtw x0,w23
            lsl x0,x0,#2
            add x1,sp,#1480
            ldr w0,[x1,x0]
            str w0,[sp,#1580]
            b .L_40a098
.L_409d00:

            ldr w0,[sp,#1572]
            add w0,w0,#1
            str w0,[sp,#1572]
            ldr w0,[sp,#1568]
            add w22,w22,w0
            ldr w0,[sp,#1548]
            sub w0,w0,w22
            str w0,[sp,#1552]
            ldr w0,[sp,#1568]
            ldr w1,[sp,#1552]
            cmp w1,w0
            b.ls .L_409d38

            ldr w0,[sp,#1568]
            b .L_409d3c
.L_409d38:

            ldr w0,[sp,#1552]
.L_409d3c:

            str w0,[sp,#1552]
            sub w0,w23,w22
            mov w19,w0
            mov w0,#1
            lsl w0,w0,w19
            str w0,[sp,#1576]
            ldr w0,[sp,#1580]
            add w0,w0,#1
            ldr w1,[sp,#1576]
            cmp w1,w0
            b.ls .L_409df8

            ldr w1,[sp,#1576]
            ldr w0,[sp,#1580]
            sub w0,w1,w0
            sub w0,w0,#1
            str w0,[sp,#1576]
            sxtw x0,w23
            lsl x0,x0,#2
            add x1,sp,#1480
            add x0,x1,x0
            str x0,[sp,#1560]
            ldr w0,[sp,#1552]
            cmp w19,w0
            b.hs .L_409df8

            b .L_409de0
.L_409da0:

            ldr w0,[sp,#1576]
            lsl w0,w0,#1
            str w0,[sp,#1576]
            ldr x0,[sp,#1560]
            add x0,x0,#4
            str x0,[sp,#1560]
            ldr x0,[sp,#1560]
            ldr w0,[x0]
            ldr w1,[sp,#1576]
            cmp w1,w0
            b.ls .L_409df4

            ldr x0,[sp,#1560]
            ldr w0,[x0]
            ldr w1,[sp,#1576]
            sub w0,w1,w0
            str w0,[sp,#1576]
.L_409de0:

            add w19,w19,#1
            ldr w0,[sp,#1552]
            cmp w19,w0
            b.lo .L_409da0

            b .L_409df8
.L_409df4:

            nop
            nop
            nop
            nop
.L_409df8:

            mov w0,#1
            lsl w0,w0,w19
            str w0,[sp,#1552]
            ldr w0,[sp,#1552]
            add w0,w0,#1
            mov w0,w0
            lsl x0,x0,#4
            bl malloc

            mov x24,x0
            cmp x24,#0
            b.ne .L_409e40

            ldr w0,[sp,#1572]
            cmp w0,#0
            b.eq .L_409e38

            ldr x0,[sp,#1336]
            bl huft_free
.L_409e38:

            mov w0,#3
            b .L_40a0e0
.L_409e40:

            adrp x0, hufts
            add x0,x0, :lo12:hufts
            ldr w1,[x0]
            ldr w0,[sp,#1552]
            add w0,w1,w0
            add w1,w0,#1
            adrp x0, hufts
            add x0,x0, :lo12:hufts
            str w1,[x0]
            add x1,x24,#16
            ldr x0,[sp,#72]
            str x1,[x0]
            add x0,x24,#8
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            str xzr,[x0]
            add x24,x24,#16
            ldrsw x0,[sp,#1572]
            lsl x0,x0,#3
            add x1,sp,#1336
            str x24,[x1,x0]
            ldr w0,[sp,#1572]
            cmp w0,#0
            b.eq .L_409f0c

            ldrsw x0,[sp,#1572]
            lsl x0,x0,#2
            add x1,sp,#112
            str w20,[x1,x0]
            ldr w0,[sp,#1568]
            and w0,w0,#255
            strb w0,[sp,#1465]
            and w0,w19,#255
            add w0,w0,#16
            and w0,w0,#255
            strb w0,[sp,#1464]
            str x24,[sp,#1472]
            ldr w0,[sp,#1568]
            sub w0,w22,w0
            lsr w19,w20,w0
            ldr w0,[sp,#1572]
            sub w0,w0,#1
            sxtw x0,w0
            lsl x0,x0,#3
            add x1,sp,#1336
            ldr x1,[x1,x0]
            mov w0,w19
            lsl x0,x0,#4
            add x2,x1,x0
            add x0,sp,#1536
            ldp x0,x1,[x0,#-72]
            stp x0,x1,[x2]
.L_409f0c:

            ldr w0,[sp,#1568]
            add w0,w22,w0
            cmp w23,w0
            b.gt .L_409d00

            and w1,w23,#255
            and w0,w22,#255
            sub w0,w1,w0
            and w0,w0,#255
            strb w0,[sp,#1465]
            ldr w0,[sp,#100]
            lsl x0,x0,#2
            add x1,sp,#184
            add x0,x1,x0
            cmp x21,x0
            b.lo .L_409f54

            mov w0,#99
            strb w0,[sp,#1464]
            b .L_409fe8
.L_409f54:

            ldr w0,[x21]
            ldr w1,[sp,#96]
            cmp w1,w0
            b.ls .L_409f94

            ldr w0,[x21]
            cmp w0,#255
            b.hi .L_409f78

            mov w0,#16
            b .L_409f7c
.L_409f78:

            mov w0,#15
.L_409f7c:

            strb w0,[sp,#1464]
            ldr w0,[x21]
            and w0,w0,#65535
            strh w0,[sp,#1472]
            add x21,x21,#4
            b .L_409fe8
.L_409f94:

            ldr w1,[x21]
            ldr w0,[sp,#96]
            sub w0,w1,w0
            mov w0,w0
            lsl x0,x0,#1
            ldr x1,[sp,#80]
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#255
            strb w0,[sp,#1464]
            mov x0,x21
            add x21,x0,#4
            ldr w1,[x0]
            ldr w0,[sp,#96]
            sub w0,w1,w0
            mov w0,w0
            lsl x0,x0,#1
            ldr x1,[sp,#88]
            add x0,x1,x0
            ldrh w0,[x0]
            strh w0,[sp,#1472]
.L_409fe8:

            sub w0,w23,w22
            mov w1,#1
            lsl w0,w1,w0
            str w0,[sp,#1576]
            lsr w19,w20,w22
            b .L_40a020
.L_40a000:

            mov w0,w19
            lsl x0,x0,#4
            add x2,x24,x0
            add x0,sp,#1536
            ldp x0,x1,[x0,#-72]
            stp x0,x1,[x2]
            ldr w0,[sp,#1576]
            add w19,w19,w0
.L_40a020:

            ldr w0,[sp,#1552]
            cmp w19,w0
            b.lo .L_40a000

            sub w0,w23,#1
            mov w1,#1
            lsl w0,w1,w0
            mov w19,w0
            b .L_40a048
.L_40a040:

            eor w20,w20,w19
            lsr w19,w19,#1
.L_40a048:

            and w0,w20,w19
            cmp w0,#0
            b.ne .L_40a040

            eor w20,w20,w19
            b .L_40a070
.L_40a05c:

            ldr w0,[sp,#1572]
            sub w0,w0,#1
            str w0,[sp,#1572]
            ldr w0,[sp,#1568]
            sub w22,w22,w0
.L_40a070:

            mov w0,#1
            lsl w0,w0,w22
            sub w0,w0,#1
            and w1,w20,w0
            ldrsw x0,[sp,#1572]
            lsl x0,x0,#2
            add x2,sp,#112
            ldr w0,[x2,x0]
            cmp w1,w0
            b.ne .L_40a05c
.L_40a098:

            ldr w0,[sp,#1580]
            sub w1,w0,#1
            str w1,[sp,#1580]
            cmp w0,#0
            b.ne .L_409f0c

            add w23,w23,#1
.L_40a0b0:

            ldr w0,[sp,#1548]
            cmp w23,w0
            b.le .L_409ce8

            ldr w0,[sp,#1556]
            cmp w0,#0
            b.eq .L_40a0dc

            ldr w0,[sp,#1548]
            cmp w0,#1
            b.eq .L_40a0dc

            mov w0,#1
            b .L_40a0e0
.L_40a0dc:

            mov w0,#0
.L_40a0e0:

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            add sp,sp,#1584
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size huft_build, . - huft_build
.align 3
#-----------------------------------
.globl huft_free
.type huft_free, @function
#-----------------------------------
huft_free:

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
            str x0,[sp,#40]
            ldr x19,[sp,#40]
            b .L_40a124
.L_40a110:

            sub x19,x19,#16
            ldr x20,[x19,#8]
            mov x0,x19
            bl free

            mov x19,x20
.L_40a124:

            cmp x19,#0
            b.ne .L_40a110

            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size huft_free, . - huft_free
.align 2
#-----------------------------------
.globl inflate_codes
.type inflate_codes, @function
#-----------------------------------
inflate_codes:

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
            str x21,[sp,#32]
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
            str x0,[sp,#72]
            str x1,[sp,#64]
            str w2,[sp,#60]
            str w3,[sp,#56]
            adrp x0, bb
            add x0,x0, :lo12:bb
            ldr x21,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w19,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            str w0,[sp,#100]
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            ldrsw x1,[sp,#60]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#84]
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            ldrsw x1,[sp,#56]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#80]
            b .L_40a230
.L_40a1b0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a204

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a224
.L_40a204:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a224:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a230:

            ldr w0,[sp,#60]
            cmp w19,w0
            b.lo .L_40a1b0

            mov w1,w21
            ldr w0,[sp,#84]
            and w0,w1,w0
            mov w0,w0
            lsl x0,x0,#4
            ldr x1,[sp,#72]
            add x0,x1,x0
            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldrb w0,[x0]
            mov w20,w0
            cmp w20,#16
            b.ls .L_40a36c
.L_40a270:

            cmp w20,#99
            b.ne .L_40a280

            mov w0,#1
            b .L_40a8b8
.L_40a280:

            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            lsr x21,x21,x0
            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            sub w19,w19,w0
            sub w20,w20,#16
            b .L_40a320
.L_40a2a0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a2f4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a314
.L_40a2f4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a314:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a320:

            cmp w19,w20
            b.lo .L_40a2a0

            ldr x0,[sp,#88]
            ldr x1,[x0,#8]
            mov w3,w21
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            mov w2,w20
            ldrh w0,[x0,x2,lsl #1]
            and w0,w3,w0
            mov w0,w0
            lsl x0,x0,#4
            add x0,x1,x0
            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldrb w0,[x0]
            mov w20,w0
            cmp w20,#16
            b.hi .L_40a270
.L_40a36c:

            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            lsr x21,x21,x0
            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            sub w19,w19,w0
            cmp w20,#16
            b.ne .L_40a3dc

            ldr x0,[sp,#88]
            ldrh w2,[x0,#8]
            ldr w0,[sp,#100]
            add w1,w0,#1
            str w1,[sp,#100]
            and w2,w2,#255
            adrp x1, window
            add x1,x1, :lo12:window
            mov w0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#100]
            cmp w0,#8,lsl #12
            b.ne .L_40a230

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            bl flush_window

            str wzr,[sp,#100]
            b .L_40a230
.L_40a3dc:

            cmp w20,#15
            b.eq .L_40a888

            b .L_40a468
.L_40a3e8:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a43c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a45c
.L_40a43c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a45c:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a468:

            cmp w19,w20
            b.lo .L_40a3e8

            ldr x0,[sp,#88]
            ldrh w0,[x0,#8]
            mov w2,w0
            mov w3,w21
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            mov w1,w20
            ldrh w0,[x0,x1,lsl #1]
            and w0,w3,w0
            add w0,w2,w0
            str w0,[sp,#108]
            lsr x21,x21,x20
            sub w19,w19,w20
            b .L_40a528
.L_40a4a8:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a4fc

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a51c
.L_40a4fc:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a51c:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a528:

            ldr w0,[sp,#56]
            cmp w19,w0
            b.lo .L_40a4a8

            mov w1,w21
            ldr w0,[sp,#80]
            and w0,w1,w0
            mov w0,w0
            lsl x0,x0,#4
            ldr x1,[sp,#64]
            add x0,x1,x0
            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldrb w0,[x0]
            mov w20,w0
            cmp w20,#16
            b.ls .L_40a664
.L_40a568:

            cmp w20,#99
            b.ne .L_40a578

            mov w0,#1
            b .L_40a8b8
.L_40a578:

            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            lsr x21,x21,x0
            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            sub w19,w19,w0
            sub w20,w20,#16
            b .L_40a618
.L_40a598:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a5ec

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a60c
.L_40a5ec:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a60c:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a618:

            cmp w19,w20
            b.lo .L_40a598

            ldr x0,[sp,#88]
            ldr x1,[x0,#8]
            mov w3,w21
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            mov w2,w20
            ldrh w0,[x0,x2,lsl #1]
            and w0,w3,w0
            mov w0,w0
            lsl x0,x0,#4
            add x0,x1,x0
            str x0,[sp,#88]
            ldr x0,[sp,#88]
            ldrb w0,[x0]
            mov w20,w0
            cmp w20,#16
            b.hi .L_40a568
.L_40a664:

            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            lsr x21,x21,x0
            ldr x0,[sp,#88]
            ldrb w0,[x0,#1]
            sub w19,w19,w0
            b .L_40a700
.L_40a680:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a6d4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a6f4
.L_40a6d4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a6f4:

            lsl x0,x0,x19
            orr x21,x21,x0
            add w19,w19,#8
.L_40a700:

            cmp w19,w20
            b.lo .L_40a680

            ldr x0,[sp,#88]
            ldrh w0,[x0,#8]
            mov w1,w0
            ldr w0,[sp,#100]
            sub w1,w0,w1
            mov w3,w21
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            mov w2,w20
            ldrh w0,[x0,x2,lsl #1]
            and w0,w3,w0
            sub w0,w1,w0
            str w0,[sp,#104]
            lsr x21,x21,x20
            sub w19,w19,w20
.L_40a744:

            ldr w0,[sp,#104]
            and w0,w0,#32767
            str w0,[sp,#104]
            ldr w1,[sp,#104]
            ldr w0,[sp,#100]
            cmp w1,w0
            b.ls .L_40a770

            mov w1,#32768
            ldr w0,[sp,#104]
            sub w0,w1,w0
            b .L_40a77c
.L_40a770:

            mov w1,#32768
            ldr w0,[sp,#100]
            sub w0,w1,w0
.L_40a77c:

            mov w20,w0
            ldr w0,[sp,#108]
            cmp w20,w0
            b.ls .L_40a794

            ldr w0,[sp,#108]
            b .L_40a798
.L_40a794:

            mov w0,w20
.L_40a798:

            mov w20,w0
            mov w1,w20
            ldr w0,[sp,#108]
            sub w0,w0,w1
            str w0,[sp,#108]
            ldr w1,[sp,#100]
            ldr w0,[sp,#104]
            sub w0,w1,w0
            cmp w20,w0
            b.hi .L_40a810

            ldr w1,[sp,#100]
            adrp x0, window
            add x0,x0, :lo12:window
            add x3,x1,x0
            ldr w1,[sp,#104]
            adrp x0, window
            add x0,x0, :lo12:window
            add x0,x1,x0
            mov w1,w20
            mov x2,x1
            mov x1,x0
            mov x0,x3
            bl memcpy

            ldr w0,[sp,#100]
            add w0,w0,w20
            str w0,[sp,#100]
            ldr w0,[sp,#104]
            add w0,w0,w20
            str w0,[sp,#104]
            b .L_40a854
.L_40a810:

            ldr w1,[sp,#104]
            add w0,w1,#1
            str w0,[sp,#104]
            ldr w0,[sp,#100]
            add w2,w0,#1
            str w2,[sp,#100]
            adrp x2, window
            add x2,x2, :lo12:window
            mov w1,w1
            ldrb w2,[x2,x1]
            adrp x1, window
            add x1,x1, :lo12:window
            mov w0,w0
            strb w2,[x1,x0]
            sub w20,w20,#1
            cmp w20,#0
            b.ne .L_40a810
.L_40a854:

            ldr w0,[sp,#100]
            cmp w0,#8,lsl #12
            b.ne .L_40a878

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            bl flush_window

            str wzr,[sp,#100]
.L_40a878:

            ldr w0,[sp,#108]
            cmp w0,#0
            b.ne .L_40a744

            b .L_40a230
.L_40a888:

            nop
            nop
            nop
            nop
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#100]
            str w1,[x0]
            adrp x0, bb
            add x0,x0, :lo12:bb
            str x21,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            str w19,[x0]
            mov w0,#0
.L_40a8b8:

            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_codes, . - inflate_codes
.align 3
#-----------------------------------
.globl inflate_stored
.type inflate_stored, @function
#-----------------------------------
inflate_stored:

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
            adrp x0, bb
            add x0,x0, :lo12:bb
            ldr x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w19,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            str w0,[sp,#40]
            and w0,w19,#7
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            lsr x20,x20,x0
            ldr w0,[sp,#44]
            sub w19,w19,w0
            b .L_40a998
.L_40a918:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40a96c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40a98c
.L_40a96c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#40]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40a98c:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40a998:

            cmp w19,#15
            b.ls .L_40a918

            mov w0,w20
            and w0,w0,#65535
            str w0,[sp,#44]
            lsr x20,x20,#16
            sub w19,w19,#16
            b .L_40aa38
.L_40a9b8:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40aa0c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40aa2c
.L_40aa0c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#40]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40aa2c:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40aa38:

            cmp w19,#15
            b.ls .L_40a9b8

            mov w0,w20
            mvn w0,w0
            and w0,w0,#65535
            ldr w1,[sp,#44]
            cmp w1,w0
            b.eq .L_40aa60

            mov w0,#1
            b .L_40ab80
.L_40aa60:

            lsr x20,x20,#16
            sub w19,w19,#16
            b .L_40ab40
.L_40aa6c:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40aac0

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40aae0
.L_40aac0:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#40]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40aae0:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40aaec:

            cmp w19,#7
            b.ls .L_40aa6c

            ldr w0,[sp,#40]
            add w1,w0,#1
            str w1,[sp,#40]
            and w2,w20,#255
            adrp x1, window
            add x1,x1, :lo12:window
            mov w0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#40]
            cmp w0,#8,lsl #12
            b.ne .L_40ab38

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#40]
            str w1,[x0]
            bl flush_window

            str wzr,[sp,#40]
.L_40ab38:

            lsr x20,x20,#8
            sub w19,w19,#8
.L_40ab40:

            ldr w0,[sp,#44]
            sub w1,w0,#1
            str w1,[sp,#44]
            cmp w0,#0
            b.ne .L_40aaec

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#40]
            str w1,[x0]
            adrp x0, bb
            add x0,x0, :lo12:bb
            str x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            str w19,[x0]
            mov w0,#0
.L_40ab80:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_stored, . - inflate_stored
.align 2
#-----------------------------------
.globl inflate_fixed
.type inflate_fixed, @function
#-----------------------------------
inflate_fixed:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1200
.cfi_def_cfa_offset 1200
            stp fp,lr,[sp]
.cfi_offset 29, -1200
.cfi_offset 30, -1192
            mov fp,sp
            str wzr,[sp,#1196]
            b .L_40abc0
.L_40aba0:

            ldrsw x0,[sp,#1196]
            lsl x0,x0,#2
            add x1,sp,#16
            mov w2,#8
            str w2,[x1,x0]
            ldr w0,[sp,#1196]
            add w0,w0,#1
            str w0,[sp,#1196]
.L_40abc0:

            ldr w0,[sp,#1196]
            cmp w0,#143
            b.le .L_40aba0

            b .L_40abf0
.L_40abd0:

            ldrsw x0,[sp,#1196]
            lsl x0,x0,#2
            add x1,sp,#16
            mov w2,#9
            str w2,[x1,x0]
            ldr w0,[sp,#1196]
            add w0,w0,#1
            str w0,[sp,#1196]
.L_40abf0:

            ldr w0,[sp,#1196]
            cmp w0,#255
            b.le .L_40abd0

            b .L_40ac20
.L_40ac00:

            ldrsw x0,[sp,#1196]
            lsl x0,x0,#2
            add x1,sp,#16
            mov w2,#7
            str w2,[x1,x0]
            ldr w0,[sp,#1196]
            add w0,w0,#1
            str w0,[sp,#1196]
.L_40ac20:

            ldr w0,[sp,#1196]
            cmp w0,#279
            b.le .L_40ac00

            b .L_40ac50
.L_40ac30:

            ldrsw x0,[sp,#1196]
            lsl x0,x0,#2
            add x1,sp,#16
            mov w2,#8
            str w2,[x1,x0]
            ldr w0,[sp,#1196]
            add w0,w0,#1
            str w0,[sp,#1196]
.L_40ac50:

            ldr w0,[sp,#1196]
            cmp w0,#287
            b.le .L_40ac30

            mov w0,#7
            str w0,[sp,#1172]
            add x1,sp,#1172
            add x0,sp,#1184
            add x7,sp,#16
            mov x6,x1
            mov x5,x0
            adrp x0, cplext
            add x4,x0, :lo12:cplext
            adrp x0, cplens
            add x3,x0, :lo12:cplens
            mov w2,#257
            mov w1,#288
            mov x0,x7
            bl huft_build

            str w0,[sp,#1196]
            ldr w0,[sp,#1196]
            cmp w0,#0
            b.eq .L_40acb0

            ldr w0,[sp,#1196]
            b .L_40ad78
.L_40acb0:

            str wzr,[sp,#1196]
            b .L_40acd8
.L_40acb8:

            ldrsw x0,[sp,#1196]
            lsl x0,x0,#2
            add x1,sp,#16
            mov w2,#5
            str w2,[x1,x0]
            ldr w0,[sp,#1196]
            add w0,w0,#1
            str w0,[sp,#1196]
.L_40acd8:

            ldr w0,[sp,#1196]
            cmp w0,#29
            b.le .L_40acb8

            mov w0,#5
            str w0,[sp,#1168]
            add x1,sp,#1168
            add x0,sp,#1176
            add x7,sp,#16
            mov x6,x1
            mov x5,x0
            adrp x0, cpdext
            add x4,x0, :lo12:cpdext
            adrp x0, cpdist
            add x3,x0, :lo12:cpdist
            mov w2,#0
            mov w1,#30
            mov x0,x7
            bl huft_build

            str w0,[sp,#1196]
            ldr w0,[sp,#1196]
            cmp w0,#1
            b.le .L_40ad40

            ldr x0,[sp,#1184]
            bl huft_free

            ldr w0,[sp,#1196]
            b .L_40ad78
.L_40ad40:

            ldr x0,[sp,#1184]
            ldr x1,[sp,#1176]
            ldr w2,[sp,#1172]
            ldr w3,[sp,#1168]
            bl inflate_codes

            cmp w0,#0
            b.eq .L_40ad64

            mov w0,#1
            b .L_40ad78
.L_40ad64:

            ldr x0,[sp,#1184]
            bl huft_free

            ldr x0,[sp,#1176]
            bl huft_free

            mov w0,#0
.L_40ad78:

            ldp fp,lr,[sp]
            add sp,sp,#1200
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_fixed, . - inflate_fixed
.align 2
#-----------------------------------
.globl inflate_dynamic
.type inflate_dynamic, @function
#-----------------------------------
inflate_dynamic:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1360
.cfi_def_cfa_offset 1360
            stp fp,lr,[sp]
.cfi_offset 29, -1360
.cfi_offset 30, -1352
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -1344
.cfi_offset 20, -1336
            adrp x0, bb
            add x0,x0, :lo12:bb
            ldr x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w19,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            str w0,[sp,#1344]
            b .L_40ae40
.L_40adc0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40ae14

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40ae34
.L_40ae14:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40ae34:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40ae40:

            cmp w19,#4
            b.ls .L_40adc0

            mov w0,w20
            and w0,w0,#31
            add w0,w0,#257
            str w0,[sp,#1340]
            lsr x20,x20,#5
            sub w19,w19,#5
            b .L_40aee4
.L_40ae64:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40aeb8

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40aed8
.L_40aeb8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40aed8:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40aee4:

            cmp w19,#4
            b.ls .L_40ae64

            mov w0,w20
            and w0,w0,#31
            add w0,w0,#1
            str w0,[sp,#1336]
            lsr x20,x20,#5
            sub w19,w19,#5
            b .L_40af88
.L_40af08:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40af5c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40af7c
.L_40af5c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40af7c:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40af88:

            cmp w19,#3
            b.ls .L_40af08

            mov w0,w20
            and w0,w0,#15
            add w0,w0,#4
            str w0,[sp,#1332]
            lsr x20,x20,#4
            sub w19,w19,#4
            ldr w0,[sp,#1340]
            cmp w0,#286
            b.hi .L_40afc0

            ldr w0,[sp,#1336]
            cmp w0,#30
            b.ls .L_40afc8
.L_40afc0:

            mov w0,#1
            b .L_40b738
.L_40afc8:

            str wzr,[sp,#1352]
            b .L_40b094
.L_40afd0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b024

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b044
.L_40b024:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b044:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b050:

            cmp w19,#2
            b.ls .L_40afd0

            mov w2,w20
            adrp x0, border
            add x0,x0, :lo12:border
            ldr w1,[sp,#1352]
            ldr w0,[x0,x1,lsl #2]
            and w2,w2,#7
            mov w0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            str w2,[x1,x0]
            lsr x20,x20,#3
            sub w19,w19,#3
            ldr w0,[sp,#1352]
            add w0,w0,#1
            str w0,[sp,#1352]
.L_40b094:

            ldr w1,[sp,#1352]
            ldr w0,[sp,#1332]
            cmp w1,w0
            b.lo .L_40b050

            b .L_40b0d4
.L_40b0a8:

            adrp x0, border
            add x0,x0, :lo12:border
            ldr w1,[sp,#1352]
            ldr w0,[x0,x1,lsl #2]
            mov w0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            str wzr,[x1,x0]
            ldr w0,[sp,#1352]
            add w0,w0,#1
            str w0,[sp,#1352]
.L_40b0d4:

            ldr w0,[sp,#1352]
            cmp w0,#18
            b.ls .L_40b0a8

            mov w0,#7
            str w0,[sp,#1300]
            add x2,sp,#1300
            add x1,sp,#1312
            add x0,sp,#32
            mov x6,x2
            mov x5,x1
            mov x4,#0
            mov x3,#0
            mov w2,#19
            mov w1,#19
            bl huft_build

            str w0,[sp,#1356]
            ldr w0,[sp,#1356]
            cmp w0,#0
            b.eq .L_40b13c

            ldr w0,[sp,#1356]
            cmp w0,#1
            b.ne .L_40b134

            ldr x0,[sp,#1312]
            bl huft_free
.L_40b134:

            ldr w0,[sp,#1356]
            b .L_40b738
.L_40b13c:

            ldr x0,[sp,#1312]
            cmp x0,#0
            b.ne .L_40b150

            mov w0,#2
            b .L_40b738
.L_40b150:

            ldr w1,[sp,#1340]
            ldr w0,[sp,#1336]
            add w0,w1,w0
            str w0,[sp,#1328]
            ldr w1,[sp,#1300]
            adrp x0, mask_bits
            add x0,x0, :lo12:mask_bits
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#1324]
            str wzr,[sp,#1348]
            str wzr,[sp,#1356]
            b .L_40b594
.L_40b184:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b1d8

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b1f8
.L_40b1d8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b1f8:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b204:

            ldr w0,[sp,#1300]
            cmp w19,w0
            b.lo .L_40b184

            ldr x1,[sp,#1312]
            mov w2,w20
            ldr w0,[sp,#1324]
            and w0,w2,w0
            mov w0,w0
            lsl x0,x0,#4
            add x0,x1,x0
            str x0,[sp,#1304]
            ldr x0,[sp,#1304]
            ldrb w0,[x0,#1]
            str w0,[sp,#1352]
            ldr w0,[sp,#1352]
            lsr x20,x20,x0
            ldr w0,[sp,#1352]
            sub w19,w19,w0
            ldr x0,[sp,#1304]
            ldrh w0,[x0,#8]
            str w0,[sp,#1352]
            ldr w0,[sp,#1352]
            cmp w0,#15
            b.hi .L_40b290

            ldr w0,[sp,#1352]
            str w0,[sp,#1348]
            ldr w0,[sp,#1356]
            add w1,w0,#1
            str w1,[sp,#1356]
            sxtw x0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            ldr w2,[sp,#1348]
            str w2,[x1,x0]
            b .L_40b594
.L_40b290:

            ldr w0,[sp,#1352]
            cmp w0,#16
            b.ne .L_40b398

            b .L_40b320
.L_40b2a0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b2f4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b314
.L_40b2f4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b314:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b320:

            cmp w19,#1
            b.ls .L_40b2a0

            mov w0,w20
            and w0,w0,#3
            add w0,w0,#3
            str w0,[sp,#1352]
            lsr x20,x20,#2
            sub w19,w19,#2
            ldr w1,[sp,#1356]
            ldr w0,[sp,#1352]
            add w0,w1,w0
            ldr w1,[sp,#1328]
            cmp w1,w0
            b.hs .L_40b380

            mov w0,#1
            b .L_40b738
.L_40b360:

            ldr w0,[sp,#1356]
            add w1,w0,#1
            str w1,[sp,#1356]
            sxtw x0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            ldr w2,[sp,#1348]
            str w2,[x1,x0]
.L_40b380:

            ldr w0,[sp,#1352]
            sub w1,w0,#1
            str w1,[sp,#1352]
            cmp w0,#0
            b.ne .L_40b360

            b .L_40b594
.L_40b398:

            ldr w0,[sp,#1352]
            cmp w0,#17
            b.ne .L_40b520

            b .L_40b428
.L_40b3a8:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b3fc

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b41c
.L_40b3fc:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b41c:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b428:

            cmp w19,#2
            b.ls .L_40b3a8

            mov w0,w20
            and w0,w0,#7
            add w0,w0,#3
            str w0,[sp,#1352]
            lsr x20,x20,#3
            sub w19,w19,#3
            ldr w1,[sp,#1356]
            ldr w0,[sp,#1352]
            add w0,w1,w0
            ldr w1,[sp,#1328]
            cmp w1,w0
            b.hs .L_40b484

            mov w0,#1
            b .L_40b738
.L_40b468:

            ldr w0,[sp,#1356]
            add w1,w0,#1
            str w1,[sp,#1356]
            sxtw x0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            str wzr,[x1,x0]
.L_40b484:

            ldr w0,[sp,#1352]
            sub w1,w0,#1
            str w1,[sp,#1352]
            cmp w0,#0
            b.ne .L_40b468

            str wzr,[sp,#1348]
            b .L_40b594
.L_40b4a0:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b4f4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b514
.L_40b4f4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#1344]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b514:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b520:

            cmp w19,#6
            b.ls .L_40b4a0

            mov w0,w20
            and w0,w0,#127
            add w0,w0,#11
            str w0,[sp,#1352]
            lsr x20,x20,#7
            sub w19,w19,#7
            ldr w1,[sp,#1356]
            ldr w0,[sp,#1352]
            add w0,w1,w0
            ldr w1,[sp,#1328]
            cmp w1,w0
            b.hs .L_40b57c

            mov w0,#1
            b .L_40b738
.L_40b560:

            ldr w0,[sp,#1356]
            add w1,w0,#1
            str w1,[sp,#1356]
            sxtw x0,w0
            lsl x0,x0,#2
            add x1,sp,#32
            str wzr,[x1,x0]
.L_40b57c:

            ldr w0,[sp,#1352]
            sub w1,w0,#1
            str w1,[sp,#1352]
            cmp w0,#0
            b.ne .L_40b560

            str wzr,[sp,#1348]
.L_40b594:

            ldr w0,[sp,#1356]
            ldr w1,[sp,#1328]
            cmp w1,w0
            b.hi .L_40b204

            ldr x0,[sp,#1312]
            bl huft_free

            adrp x0, bb
            add x0,x0, :lo12:bb
            str x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            str w19,[x0]
            adrp x0, lbits
            add x0,x0, :lo12:lbits
            ldr w0,[x0]
            str w0,[sp,#1300]
            add x1,sp,#1300
            add x0,sp,#1312
            add x7,sp,#32
            mov x6,x1
            mov x5,x0
            adrp x0, cplext
            add x4,x0, :lo12:cplext
            adrp x0, cplens
            add x3,x0, :lo12:cplens
            mov w2,#257
            ldr w1,[sp,#1340]
            mov x0,x7
            bl huft_build

            str w0,[sp,#1356]
            ldr w0,[sp,#1356]
            cmp w0,#0
            b.eq .L_40b658

            ldr w0,[sp,#1356]
            cmp w0,#1
            b.ne .L_40b650

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#25
            mov x1,#1
            adrp x0, .L_413880
            add x0,x0, :lo12:.L_413880
            bl fwrite

            ldr x0,[sp,#1312]
            bl huft_free
.L_40b650:

            ldr w0,[sp,#1356]
            b .L_40b738
.L_40b658:

            adrp x0, dbits
            add x0,x0, :lo12:dbits
            ldr w0,[x0]
            str w0,[sp,#1296]
            ldr w0,[sp,#1340]
            lsl x0,x0,#2
            add x1,sp,#32
            add x7,x1,x0
            add x1,sp,#1296
            add x0,sp,#1304
            mov x6,x1
            mov x5,x0
            adrp x0, cpdext
            add x4,x0, :lo12:cpdext
            adrp x0, cpdist
            add x3,x0, :lo12:cpdist
            mov w2,#0
            ldr w1,[sp,#1336]
            mov x0,x7
            bl huft_build

            str w0,[sp,#1356]
            ldr w0,[sp,#1356]
            cmp w0,#0
            b.eq .L_40b700

            ldr w0,[sp,#1356]
            cmp w0,#1
            b.ne .L_40b6f0

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#26
            mov x1,#1
            adrp x0, .L_4138a0
            add x0,x0, :lo12:.L_4138a0
            bl fwrite

            ldr x0,[sp,#1304]
            bl huft_free
.L_40b6f0:

            ldr x0,[sp,#1312]
            bl huft_free

            ldr w0,[sp,#1356]
            b .L_40b738
.L_40b700:

            ldr x0,[sp,#1312]
            ldr x1,[sp,#1304]
            ldr w2,[sp,#1300]
            ldr w3,[sp,#1296]
            bl inflate_codes

            cmp w0,#0
            b.eq .L_40b724

            mov w0,#1
            b .L_40b738
.L_40b724:

            ldr x0,[sp,#1312]
            bl huft_free

            ldr x0,[sp,#1304]
            bl huft_free

            mov w0,#0
.L_40b738:

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            add sp,sp,#1360
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_dynamic, . - inflate_dynamic
.align 3
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
            str x0,[sp,#40]
            adrp x0, bb
            add x0,x0, :lo12:bb
            ldr x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w19,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            str w0,[sp,#60]
            b .L_40b804
.L_40b784:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b7d8

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b7f8
.L_40b7d8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#60]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b7f8:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b804:

            cmp w19,#0
            b.eq .L_40b784

            mov w0,w20
            and w1,w0,#1
            ldr x0,[sp,#40]
            str w1,[x0]
            lsr x20,x20,#1
            sub w19,w19,#1
            b .L_40b8a8
.L_40b828:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40b87c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40b89c
.L_40b87c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[sp,#60]
            str w1,[x0]
            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
            and x0,x0,#255
.L_40b89c:

            lsl x0,x0,x19
            orr x20,x20,x0
            add w19,w19,#8
.L_40b8a8:

            cmp w19,#1
            b.ls .L_40b828

            mov w0,w20
            and w0,w0,#3
            str w0,[sp,#56]
            lsr x20,x20,#2
            sub w19,w19,#2
            adrp x0, bb
            add x0,x0, :lo12:bb
            str x20,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            str w19,[x0]
            ldr w0,[sp,#56]
            cmp w0,#2
            b.ne .L_40b8f0

            bl inflate_dynamic

            b .L_40b91c
.L_40b8f0:

            ldr w0,[sp,#56]
            cmp w0,#0
            b.ne .L_40b904

            bl inflate_stored

            b .L_40b91c
.L_40b904:

            ldr w0,[sp,#56]
            cmp w0,#1
            b.ne .L_40b918

            bl inflate_fixed

            b .L_40b91c
.L_40b918:

            mov w0,#2
.L_40b91c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate_block, . - inflate_block
.align 3
#-----------------------------------
.globl inflate
.type inflate, @function
#-----------------------------------
inflate:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str wzr,[x0]
            adrp x0, bk
            add x0,x0, :lo12:bk
            str wzr,[x0]
            adrp x0, bb
            add x0,x0, :lo12:bb
            str xzr,[x0]
            str wzr,[sp,#28]
.L_40b958:

            adrp x0, hufts
            add x0,x0, :lo12:hufts
            str wzr,[x0]
            add x0,sp,#20
            bl inflate_block

            str w0,[sp,#24]
            ldr w0,[sp,#24]
            cmp w0,#0
            b.eq .L_40b984

            ldr w0,[sp,#24]
            b .L_40ba28
.L_40b984:

            adrp x0, hufts
            add x0,x0, :lo12:hufts
            ldr w0,[x0]
            ldr w1,[sp,#28]
            cmp w1,w0
            b.hs .L_40b9ac

            adrp x0, hufts
            add x0,x0, :lo12:hufts
            ldr w0,[x0]
            str w0,[sp,#28]
.L_40b9ac:

            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_40b958

            b .L_40b9f4
.L_40b9bc:

            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w0,[x0]
            sub w1,w0,#8
            adrp x0, bk
            add x0,x0, :lo12:bk
            str w1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str w1,[x0]
.L_40b9f4:

            adrp x0, bk
            add x0,x0, :lo12:bk
            ldr w0,[x0]
            cmp w0,#7
            b.hi .L_40b9bc

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str w1,[x0]
            bl flush_window

            mov w0,#0
.L_40ba28:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size inflate, . - inflate
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
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str w0,[sp,#28]
            str w1,[sp,#24]
            adrp x0, msg_done
            add x0,x0, :lo12:msg_done
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ba5c

            mov w0,#1
            b .L_40bab4
.L_40ba5c:

            adrp x0, msg_done
            add x0,x0, :lo12:msg_done
            mov w1,#1
            str w1,[x0]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x0,[x0]
            mov x3,x0
            mov x2,#43
            mov x1,#1
            adrp x0, .L_4138c0
            add x0,x0, :lo12:.L_4138c0
            bl fwrite

            ldr w1,[sp,#28]
            ldr w0,[sp,#24]
            cmp w1,w0
            b.eq .L_40bab0

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
.L_40bab0:

            mov w0,#1
.L_40bab4:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size lzw, . - lzw
.align 2
#-----------------------------------
.globl ct_init
.type ct_init, @function
#-----------------------------------
ct_init:

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
            adrp x0, file_type
            add x0,x0, :lo12:file_type
            ldr x1,[sp,#24]
            str x1,[x0]
            adrp x0, file_method
            add x0,x0, :lo12:file_method
            ldr x1,[sp,#16]
            str x1,[x0]
            adrp x0, input_len
            add x0,x0, :lo12:input_len
            str xzr,[x0]
            adrp x0, input_len
            add x0,x0, :lo12:input_len
            ldr x1,[x0]
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            adrp x0, static_dtree
            add x0,x0, :lo12:static_dtree
            ldrh w0,[x0,#2]
            cmp w0,#0
            b.ne .L_40bf24

            str wzr,[sp,#52]
            str wzr,[sp,#48]
            b .L_40bbac
.L_40bb30:

            adrp x0, base_length
            add x0,x0, :lo12:base_length
            ldrsw x1,[sp,#48]
            ldr w2,[sp,#52]
            str w2,[x0,x1,lsl #2]
            str wzr,[sp,#60]
            b .L_40bb7c
.L_40bb4c:

            ldr w0,[sp,#52]
            add w1,w0,#1
            str w1,[sp,#52]
            ldr w1,[sp,#48]
            and w2,w1,#255
            adrp x1, length_code
            add x1,x1, :lo12:length_code
            sxtw x0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_40bb7c:

            adrp x0, extra_lbits
            add x0,x0, :lo12:extra_lbits
            ldrsw x1,[sp,#48]
            ldr w0,[x0,x1,lsl #2]
            mov w1,#1
            lsl w0,w1,w0
            ldr w1,[sp,#60]
            cmp w1,w0
            b.lt .L_40bb4c

            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#48]
.L_40bbac:

            ldr w0,[sp,#48]
            cmp w0,#27
            b.le .L_40bb30

            ldr w0,[sp,#52]
            sub w3,w0,#1
            ldr w0,[sp,#48]
            and w2,w0,#255
            adrp x0, length_code
            add x1,x0, :lo12:length_code
            sxtw x0,w3
            strb w2,[x1,x0]
            str wzr,[sp,#44]
            str wzr,[sp,#48]
            b .L_40bc60
.L_40bbe4:

            adrp x0, base_dist
            add x0,x0, :lo12:base_dist
            ldrsw x1,[sp,#48]
            ldr w2,[sp,#44]
            str w2,[x0,x1,lsl #2]
            str wzr,[sp,#60]
            b .L_40bc30
.L_40bc00:

            ldr w0,[sp,#44]
            add w1,w0,#1
            str w1,[sp,#44]
            ldr w1,[sp,#48]
            and w2,w1,#255
            adrp x1, dist_code
            add x1,x1, :lo12:dist_code
            sxtw x0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_40bc30:

            adrp x0, extra_dbits
            add x0,x0, :lo12:extra_dbits
            ldrsw x1,[sp,#48]
            ldr w0,[x0,x1,lsl #2]
            mov w1,#1
            lsl w0,w1,w0
            ldr w1,[sp,#60]
            cmp w1,w0
            b.lt .L_40bc00

            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#48]
.L_40bc60:

            ldr w0,[sp,#48]
            cmp w0,#15
            b.le .L_40bbe4

            ldr w0,[sp,#44]
            asr w0,w0,#7
            str w0,[sp,#44]
            b .L_40bd04
.L_40bc7c:

            ldr w0,[sp,#44]
            lsl w2,w0,#7
            adrp x0, base_dist
            add x0,x0, :lo12:base_dist
            ldrsw x1,[sp,#48]
            str w2,[x0,x1,lsl #2]
            str wzr,[sp,#60]
            b .L_40bcd0
.L_40bc9c:

            ldr w0,[sp,#44]
            add w1,w0,#1
            str w1,[sp,#44]
            add w3,w0,#256
            ldr w0,[sp,#48]
            and w2,w0,#255
            adrp x0, dist_code
            add x1,x0, :lo12:dist_code
            sxtw x0,w3
            strb w2,[x1,x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_40bcd0:

            adrp x0, extra_dbits
            add x0,x0, :lo12:extra_dbits
            ldrsw x1,[sp,#48]
            ldr w0,[x0,x1,lsl #2]
            sub w0,w0,#7
            mov w1,#1
            lsl w0,w1,w0
            ldr w1,[sp,#60]
            cmp w1,w0
            b.lt .L_40bc9c

            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#48]
.L_40bd04:

            ldr w0,[sp,#48]
            cmp w0,#29
            b.le .L_40bc7c

            str wzr,[sp,#56]
            b .L_40bd34
.L_40bd18:

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#56]
            strh wzr,[x0,x1,lsl #1]
            ldr w0,[sp,#56]
            add w0,w0,#1
            str w0,[sp,#56]
.L_40bd34:

            ldr w0,[sp,#56]
            cmp w0,#15
            b.le .L_40bd18

            str wzr,[sp,#60]
            b .L_40bd90
.L_40bd48:

            ldr w0,[sp,#60]
            add w1,w0,#1
            str w1,[sp,#60]
            adrp x1, static_ltree
            add x1,x1, :lo12:static_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,#8
            strh w1,[x0,#2]
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrh w0,[x0,#16]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            strh w1,[x0,#16]
.L_40bd90:

            ldr w0,[sp,#60]
            cmp w0,#143
            b.le .L_40bd48

            b .L_40bde8
.L_40bda0:

            ldr w0,[sp,#60]
            add w1,w0,#1
            str w1,[sp,#60]
            adrp x1, static_ltree
            add x1,x1, :lo12:static_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,#9
            strh w1,[x0,#2]
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrh w0,[x0,#18]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            strh w1,[x0,#18]
.L_40bde8:

            ldr w0,[sp,#60]
            cmp w0,#255
            b.le .L_40bda0

            b .L_40be40
.L_40bdf8:

            ldr w0,[sp,#60]
            add w1,w0,#1
            str w1,[sp,#60]
            adrp x1, static_ltree
            add x1,x1, :lo12:static_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,#7
            strh w1,[x0,#2]
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrh w0,[x0,#14]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            strh w1,[x0,#14]
.L_40be40:

            ldr w0,[sp,#60]
            cmp w0,#279
            b.le .L_40bdf8

            b .L_40be98
.L_40be50:

            ldr w0,[sp,#60]
            add w1,w0,#1
            str w1,[sp,#60]
            adrp x1, static_ltree
            add x1,x1, :lo12:static_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,#8
            strh w1,[x0,#2]
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrh w0,[x0,#16]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            strh w1,[x0,#16]
.L_40be98:

            ldr w0,[sp,#60]
            cmp w0,#287
            b.le .L_40be50

            mov w1,#287
            adrp x0, static_ltree
            add x0,x0, :lo12:static_ltree
            bl gen_codes

            str wzr,[sp,#60]
            b .L_40bf10
.L_40bebc:

            adrp x0, static_dtree
            add x1,x0, :lo12:static_dtree
            ldrsw x0,[sp,#60]
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,#5
            strh w1,[x0,#2]
            ldr w0,[sp,#60]
            mov w1,#5
            bl bi_reverse

            and w2,w0,#65535
            adrp x0, static_dtree
            add x1,x0, :lo12:static_dtree
            ldrsw x0,[sp,#60]
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_40bf10:

            ldr w0,[sp,#60]
            cmp w0,#29
            b.le .L_40bebc

            bl init_block

            b .L_40bf28
.L_40bf24:

            nop
            nop
            nop
            nop
.L_40bf28:

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ct_init, . - ct_init
#-----------------------------------
.type init_block, @function
#-----------------------------------
init_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str wzr,[sp,#12]
            b .L_40bf60
.L_40bf3c:

            adrp x0, dyn_ltree
            add x1,x0, :lo12:dyn_ltree
            ldrsw x0,[sp,#12]
            lsl x0,x0,#2
            add x0,x1,x0
            strh wzr,[x0]
            ldr w0,[sp,#12]
            add w0,w0,#1
            str w0,[sp,#12]
.L_40bf60:

            ldr w0,[sp,#12]
            cmp w0,#285
            b.le .L_40bf3c

            str wzr,[sp,#12]
            b .L_40bf98
.L_40bf74:

            adrp x0, dyn_dtree
            add x1,x0, :lo12:dyn_dtree
            ldrsw x0,[sp,#12]
            lsl x0,x0,#2
            add x0,x1,x0
            strh wzr,[x0]
            ldr w0,[sp,#12]
            add w0,w0,#1
            str w0,[sp,#12]
.L_40bf98:

            ldr w0,[sp,#12]
            cmp w0,#29
            b.le .L_40bf74

            str wzr,[sp,#12]
            b .L_40bfd0
.L_40bfac:

            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#12]
            lsl x0,x0,#2
            add x0,x1,x0
            strh wzr,[x0]
            ldr w0,[sp,#12]
            add w0,w0,#1
            str w0,[sp,#12]
.L_40bfd0:

            ldr w0,[sp,#12]
            cmp w0,#18
            b.le .L_40bfac

            adrp x0, dyn_ltree
            add x0,x0, :lo12:dyn_ltree
            mov w1,#1
            strh w1,[x0,#1024]
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            str xzr,[x0]
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            ldr x1,[x0]
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            str x1,[x0]
            adrp x0, last_flags
            add x0,x0, :lo12:last_flags
            str wzr,[x0]
            adrp x0, last_flags
            add x0,x0, :lo12:last_flags
            ldr w1,[x0]
            adrp x0, last_dist
            add x0,x0, :lo12:last_dist
            str w1,[x0]
            adrp x0, last_dist
            add x0,x0, :lo12:last_dist
            ldr w1,[x0]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            str w1,[x0]
            adrp x0, flags
            add x0,x0, :lo12:flags
            strb wzr,[x0]
            adrp x0, flag_bit
            add x0,x0, :lo12:flag_bit
            mov w1,#1
            strb w1,[x0]
            nop
            nop
            nop
            nop
            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size init_block, . - init_block
#-----------------------------------
.type pqdownheap, @function
#-----------------------------------
pqdownheap:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str x0,[sp,#8]
            str w1,[sp,#4]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#4]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#24]
            ldr w0,[sp,#4]
            lsl w0,w0,#1
            str w0,[sp,#28]
            b .L_40c2b4
.L_40c0a4:

            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            ldr w1,[sp,#28]
            cmp w1,w0
            b.ge .L_40c1c8

            ldr w0,[sp,#28]
            add w1,w0,#1
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            ldrh w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w0,[x0,x2,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x2,[sp,#8]
            add x0,x2,x0
            ldrh w0,[x0]
            cmp w1,w0
            b.lo .L_40c1bc

            ldr w0,[sp,#28]
            add w1,w0,#1
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            ldrh w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w0,[x0,x2,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x2,[sp,#8]
            add x0,x2,x0
            ldrh w0,[x0]
            cmp w1,w0
            b.ne .L_40c1c8

            ldr w0,[sp,#28]
            add w1,w0,#1
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w2,[x0,x1,lsl #2]
            adrp x0, depth
            add x1,x0, :lo12:depth
            sxtw x0,w2
            ldrb w1,[x1,x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w3,[x0,x2,lsl #2]
            adrp x0, depth
            add x2,x0, :lo12:depth
            sxtw x0,w3
            ldrb w0,[x2,x0]
            cmp w1,w0
            b.hi .L_40c1c8
.L_40c1bc:

            ldr w0,[sp,#28]
            add w0,w0,#1
            str w0,[sp,#28]
.L_40c1c8:

            ldrsw x0,[sp,#24]
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            ldrh w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w0,[x0,x2,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x2,[sp,#8]
            add x0,x2,x0
            ldrh w0,[x0]
            cmp w1,w0
            b.lo .L_40c2cc

            ldrsw x0,[sp,#24]
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            ldrh w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w0,[x0,x2,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x2,[sp,#8]
            add x0,x2,x0
            ldrh w0,[x0]
            cmp w1,w0
            b.ne .L_40c280

            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#24]
            ldrb w1,[x1,x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x2,[sp,#28]
            ldr w3,[x0,x2,lsl #2]
            adrp x0, depth
            add x2,x0, :lo12:depth
            sxtw x0,w3
            ldrb w0,[x2,x0]
            cmp w1,w0
            b.ls .L_40c2cc
.L_40c280:

            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#28]
            ldr w2,[x0,x1,lsl #2]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#4]
            str w2,[x0,x1,lsl #2]
            ldr w0,[sp,#28]
            str w0,[sp,#4]
            ldr w0,[sp,#28]
            lsl w0,w0,#1
            str w0,[sp,#28]
.L_40c2b4:

            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            ldr w1,[sp,#28]
            cmp w1,w0
            b.le .L_40c0a4
.L_40c2cc:

            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#4]
            ldr w2,[sp,#24]
            str w2,[x0,x1,lsl #2]
            nop
            nop
            nop
            nop
            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size pqdownheap, . - pqdownheap
#-----------------------------------
.type gen_bitlen, @function
#-----------------------------------
gen_bitlen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#96
.cfi_def_cfa_offset 96
            str x0,[sp,#8]
            ldr x0,[sp,#8]
            ldr x0,[x0]
            str x0,[sp,#64]
            ldr x0,[sp,#8]
            ldr x0,[x0,#16]
            str x0,[sp,#56]
            ldr x0,[sp,#8]
            ldr w0,[x0,#24]
            str w0,[sp,#52]
            ldr x0,[sp,#8]
            ldr w0,[x0,#36]
            str w0,[sp,#48]
            ldr x0,[sp,#8]
            ldr w0,[x0,#32]
            str w0,[sp,#44]
            ldr x0,[sp,#8]
            ldr x0,[x0,#8]
            str x0,[sp,#32]
            str wzr,[sp,#76]
            str wzr,[sp,#84]
            b .L_40c364
.L_40c348:

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            strh wzr,[x0,x1,lsl #1]
            ldr w0,[sp,#84]
            add w0,w0,#1
            str w0,[sp,#84]
.L_40c364:

            ldr w0,[sp,#84]
            cmp w0,#15
            b.le .L_40c348

            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            strh wzr,[x0,#2]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w0,[x0]
            add w0,w0,#1
            str w0,[sp,#92]
            b .L_40c560
.L_40c3b8:

            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#92]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#88]
            ldrsw x0,[sp,#88]
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            and x0,x0,#65535
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            add w0,w0,#1
            str w0,[sp,#84]
            ldr w1,[sp,#84]
            ldr w0,[sp,#44]
            cmp w1,w0
            b.le .L_40c420

            ldr w0,[sp,#44]
            str w0,[sp,#84]
            ldr w0,[sp,#76]
            add w0,w0,#1
            str w0,[sp,#76]
.L_40c420:

            ldrsw x0,[sp,#88]
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr w1,[sp,#84]
            and w1,w1,#65535
            strh w1,[x0,#2]
            ldr w1,[sp,#88]
            ldr w0,[sp,#48]
            cmp w1,w0
            b.gt .L_40c550

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            ldrh w0,[x0,x1,lsl #1]
            add w0,w0,#1
            and w2,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            strh w2,[x0,x1,lsl #1]
            str wzr,[sp,#80]
            ldr w1,[sp,#88]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.lt .L_40c4ac

            ldr w1,[sp,#88]
            ldr w0,[sp,#52]
            sub w0,w1,w0
            sxtw x0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            ldr w0,[x0]
            str w0,[sp,#80]
.L_40c4ac:

            ldrsw x0,[sp,#88]
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldrh w0,[x0]
            strh w0,[sp,#26]
            ldrh w1,[sp,#26]
            ldr w2,[sp,#84]
            ldr w0,[sp,#80]
            add w0,w2,w0
            sxtw x0,w0
            mul x1,x1,x0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            str x1,[x0]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_40c554

            ldrh w1,[sp,#26]
            ldrsw x0,[sp,#88]
            lsl x0,x0,#2
            ldr x2,[sp,#32]
            add x0,x2,x0
            ldrh w0,[x0,#2]
            mov w2,w0
            ldr w0,[sp,#80]
            add w0,w2,w0
            sxtw x0,w0
            mul x1,x1,x0
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            str x1,[x0]
            b .L_40c554
.L_40c550:

            nop
            nop
            nop
            nop
.L_40c554:

            ldr w0,[sp,#92]
            add w0,w0,#1
            str w0,[sp,#92]
.L_40c560:

            ldr w0,[sp,#92]
            cmp w0,#572
            b.le .L_40c3b8

            ldr w0,[sp,#76]
            cmp w0,#0
            b.eq .L_40c774
.L_40c578:

            ldr w0,[sp,#44]
            sub w0,w0,#1
            str w0,[sp,#84]
            b .L_40c594
.L_40c588:

            ldr w0,[sp,#84]
            sub w0,w0,#1
            str w0,[sp,#84]
.L_40c594:

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            ldrh w0,[x0,x1,lsl #1]
            cmp w0,#0
            b.eq .L_40c588

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            ldrh w0,[x0,x1,lsl #1]
            sub w0,w0,#1
            and w2,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            strh w2,[x0,x1,lsl #1]
            ldr w0,[sp,#84]
            add w1,w0,#1
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            ldr w1,[sp,#84]
            add w1,w1,#1
            add w0,w0,#2
            and w2,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            sxtw x1,w1
            strh w2,[x0,x1,lsl #1]
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#44]
            ldrh w0,[x0,x1,lsl #1]
            sub w0,w0,#1
            and w2,w0,#65535
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#44]
            strh w2,[x0,x1,lsl #1]
            ldr w0,[sp,#76]
            sub w0,w0,#2
            str w0,[sp,#76]
            ldr w0,[sp,#76]
            cmp w0,#0
            b.gt .L_40c578

            ldr w0,[sp,#44]
            str w0,[sp,#84]
            b .L_40c764
.L_40c658:

            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            ldrsw x1,[sp,#84]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#88]
            b .L_40c74c
.L_40c670:

            ldr w0,[sp,#92]
            sub w0,w0,#1
            str w0,[sp,#92]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldrsw x1,[sp,#92]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#28]
            ldr w1,[sp,#28]
            ldr w0,[sp,#48]
            cmp w1,w0
            b.le .L_40c6a4

            b .L_40c74c
.L_40c6a4:

            ldrsw x0,[sp,#28]
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            ldr w0,[sp,#84]
            cmp w1,w0
            b.eq .L_40c740

            ldrsw x1,[sp,#84]
            ldrsw x0,[sp,#28]
            lsl x0,x0,#2
            ldr x2,[sp,#64]
            add x0,x2,x0
            ldrh w0,[x0,#2]
            and x0,x0,#65535
            sub x1,x1,x0
            ldrsw x0,[sp,#28]
            lsl x0,x0,#2
            ldr x2,[sp,#64]
            add x0,x2,x0
            ldrh w0,[x0]
            and x0,x0,#65535
            mul x0,x1,x0
            mov x1,x0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            str x1,[x0]
            ldrsw x0,[sp,#28]
            lsl x0,x0,#2
            ldr x1,[sp,#64]
            add x0,x1,x0
            ldr w1,[sp,#84]
            and w1,w1,#65535
            strh w1,[x0,#2]
.L_40c740:

            ldr w0,[sp,#88]
            sub w0,w0,#1
            str w0,[sp,#88]
.L_40c74c:

            ldr w0,[sp,#88]
            cmp w0,#0
            b.ne .L_40c670

            ldr w0,[sp,#84]
            sub w0,w0,#1
            str w0,[sp,#84]
.L_40c764:

            ldr w0,[sp,#84]
            cmp w0,#0
            b.ne .L_40c658

            b .L_40c778
.L_40c774:

            nop
            nop
            nop
            nop
.L_40c778:

            add sp,sp,#96
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_bitlen, . - gen_bitlen
#-----------------------------------
.type gen_codes, @function
#-----------------------------------
gen_codes:

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
            strh wzr,[sp,#78]
            mov w0,#1
            str w0,[sp,#72]
            b .L_40c7ec
.L_40c7a0:

            ldr w0,[sp,#72]
            sub w1,w0,#1
            adrp x0, bl_count
            add x0,x0, :lo12:bl_count
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            ldrh w1,[sp,#78]
            add w0,w0,w1
            and w0,w0,#65535
            ubfiz w0,w0,#1,#15
            strh w0,[sp,#78]
            ldrsw x0,[sp,#72]
            lsl x0,x0,#1
            add x1,sp,#32
            ldrh w2,[sp,#78]
            strh w2,[x1,x0]
            ldr w0,[sp,#72]
            add w0,w0,#1
            str w0,[sp,#72]
.L_40c7ec:

            ldr w0,[sp,#72]
            cmp w0,#15
            b.le .L_40c7a0

            str wzr,[sp,#68]
            b .L_40c884
.L_40c800:

            ldrsw x0,[sp,#68]
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            str w0,[sp,#64]
            ldr w0,[sp,#64]
            cmp w0,#0
            b.eq .L_40c874

            ldrsw x0,[sp,#64]
            lsl x0,x0,#1
            add x1,sp,#32
            ldrh w0,[x1,x0]
            add w1,w0,#1
            and w3,w1,#65535
            ldrsw x1,[sp,#64]
            lsl x1,x1,#1
            add x2,sp,#32
            strh w3,[x2,x1]
            ldr w1,[sp,#64]
            bl bi_reverse

            mov w2,w0
            ldrsw x0,[sp,#68]
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            and w1,w2,#65535
            strh w1,[x0]
            b .L_40c878
.L_40c874:

            nop
            nop
            nop
            nop
.L_40c878:

            ldr w0,[sp,#68]
            add w0,w0,#1
            str w0,[sp,#68]
.L_40c884:

            ldr w1,[sp,#68]
            ldr w0,[sp,#20]
            cmp w1,w0
            b.le .L_40c800

            nop
            nop
            nop
            nop
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
.size gen_codes, . - gen_codes
#-----------------------------------
.type build_tree_1, @function
#-----------------------------------
build_tree_1:

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
            ldr x0,[x0]
            str x0,[sp,#56]
            ldr x0,[sp,#24]
            ldr x0,[x0,#8]
            str x0,[sp,#48]
            ldr x0,[sp,#24]
            ldr w0,[x0,#28]
            str w0,[sp,#44]
            mov w0,#-1
            str w0,[sp,#72]
            ldr w0,[sp,#44]
            str w0,[sp,#68]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            str wzr,[x0]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            mov w1,#573
            str w1,[x0]
            str wzr,[sp,#76]
            b .L_40c99c
.L_40c908:

            ldrsw x0,[sp,#76]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            ldrh w0,[x0]
            cmp w0,#0
            b.eq .L_40c97c

            ldr w0,[sp,#76]
            str w0,[sp,#72]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            str w1,[x0]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w2,[sp,#72]
            str w2,[x0,x1,lsl #2]
            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#76]
            strb wzr,[x1,x0]
            b .L_40c990
.L_40c97c:

            ldrsw x0,[sp,#76]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            strh wzr,[x0,#2]
.L_40c990:

            ldr w0,[sp,#76]
            add w0,w0,#1
            str w0,[sp,#76]
.L_40c99c:

            ldr w1,[sp,#76]
            ldr w0,[sp,#44]
            cmp w1,w0
            b.lt .L_40c908

            b .L_40caa4
.L_40c9b0:

            ldr w0,[sp,#72]
            cmp w0,#1
            b.gt .L_40c9d0

            ldr w0,[sp,#72]
            add w0,w0,#1
            str w0,[sp,#72]
            ldr w2,[sp,#72]
            b .L_40c9d4
.L_40c9d0:

            mov w2,#0
.L_40c9d4:

            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            add w1,w0,#1
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            str w1,[x0]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w3,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w3
            str w2,[x0,x1,lsl #2]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w3
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#36]
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            mov w1,#1
            strh w1,[x0]
            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#36]
            strb wzr,[x1,x0]
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            sub x1,x0,#1
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            str x1,[x0]
            ldr x0,[sp,#48]
            cmp x0,#0
            b.eq .L_40caa4

            adrp x0, static_len
            add x0,x0, :lo12:static_len
            ldr x1,[x0]
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            ldr x2,[sp,#48]
            add x0,x2,x0
            ldrh w0,[x0,#2]
            and x0,x0,#65535
            sub x1,x1,x0
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            str x1,[x0]
.L_40caa4:

            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            cmp w0,#1
            b.le .L_40c9b0

            ldr x0,[sp,#24]
            ldr w1,[sp,#72]
            str w1,[x0,#36]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            lsr w1,w0,#31
            add w0,w1,w0
            asr w0,w0,#1
            str w0,[sp,#76]
            b .L_40cafc
.L_40cae4:

            ldr w1,[sp,#76]
            ldr x0,[sp,#56]
            bl pqdownheap

            ldr w0,[sp,#76]
            sub w0,w0,#1
            str w0,[sp,#76]
.L_40cafc:

            ldr w0,[sp,#76]
            cmp w0,#0
            b.gt .L_40cae4
.L_40cb08:

            adrp x0, heap
            add x0,x0, :lo12:heap
            ldr w0,[x0,#4]
            str w0,[sp,#76]
            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            sub w2,w0,#1
            adrp x1, heap_len
            add x1,x1, :lo12:heap_len
            str w2,[x1]
            adrp x1, heap
            add x1,x1, :lo12:heap
            sxtw x0,w0
            ldr w1,[x1,x0,lsl #2]
            adrp x0, heap
            add x0,x0, :lo12:heap
            str w1,[x0,#4]
            mov w1,#1
            ldr x0,[sp,#56]
            bl pqdownheap

            adrp x0, heap
            add x0,x0, :lo12:heap
            ldr w0,[x0,#4]
            str w0,[sp,#40]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            str w1,[x0]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w2,[sp,#76]
            str w2,[x0,x1,lsl #2]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            str w1,[x0]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            ldr w2,[sp,#40]
            str w2,[x0,x1,lsl #2]
            ldrsw x0,[sp,#76]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            ldrh w2,[x0]
            ldrsw x0,[sp,#40]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            ldrh w1,[x0]
            ldrsw x0,[sp,#68]
            lsl x0,x0,#2
            ldr x3,[sp,#56]
            add x0,x3,x0
            add w1,w2,w1
            and w1,w1,#65535
            strh w1,[x0]
            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#76]
            ldrb w1,[x1,x0]
            adrp x0, depth
            add x2,x0, :lo12:depth
            ldrsw x0,[sp,#40]
            ldrb w0,[x2,x0]
            cmp w1,w0
            b.lo .L_40cc6c

            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#76]
            ldrb w0,[x1,x0]
            add w0,w0,#1
            and w2,w0,#255
            b .L_40cc84
.L_40cc6c:

            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#40]
            ldrb w0,[x1,x0]
            add w0,w0,#1
            and w2,w0,#255
.L_40cc84:

            adrp x0, depth
            add x1,x0, :lo12:depth
            ldrsw x0,[sp,#68]
            strb w2,[x1,x0]
            ldrsw x0,[sp,#40]
            lsl x0,x0,#2
            ldr x1,[sp,#56]
            add x0,x1,x0
            ldr w1,[sp,#68]
            and w1,w1,#65535
            strh w1,[x0,#2]
            ldrsw x1,[sp,#76]
            lsl x1,x1,#2
            ldr x2,[sp,#56]
            add x1,x2,x1
            ldrh w0,[x0,#2]
            strh w0,[x1,#2]
            ldr w0,[sp,#68]
            add w1,w0,#1
            str w1,[sp,#68]
            adrp x1, heap
            add x1,x1, :lo12:heap
            str w0,[x1,#4]
            mov w1,#1
            ldr x0,[sp,#56]
            bl pqdownheap

            adrp x0, heap_len
            add x0,x0, :lo12:heap_len
            ldr w0,[x0]
            cmp w0,#1
            b.gt .L_40cb08

            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            str w1,[x0]
            adrp x0, heap_max
            add x0,x0, :lo12:heap_max
            ldr w1,[x0]
            adrp x0, heap
            add x0,x0, :lo12:heap
            ldr w2,[x0,#4]
            adrp x0, heap
            add x0,x0, :lo12:heap
            sxtw x1,w1
            str w2,[x0,x1,lsl #2]
            ldr x0,[sp,#24]
            bl gen_bitlen

            ldr w1,[sp,#72]
            ldr x0,[sp,#56]
            bl gen_codes

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
.size build_tree_1, . - build_tree_1
#-----------------------------------
.type scan_tree, @function
#-----------------------------------
scan_tree:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str x0,[sp,#8]
            str w1,[sp,#4]
            mov w0,#-1
            str w0,[sp,#40]
            ldr x0,[sp,#8]
            ldrh w0,[x0,#2]
            str w0,[sp,#36]
            str wzr,[sp,#32]
            mov w0,#7
            str w0,[sp,#28]
            mov w0,#4
            str w0,[sp,#24]
            ldr w0,[sp,#36]
            cmp w0,#0
            b.ne .L_40cdb4

            mov w0,#138
            str w0,[sp,#28]
            mov w0,#3
            str w0,[sp,#24]
.L_40cdb4:

            ldrsw x0,[sp,#4]
            add x0,x0,#1
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            mov w1,#-1
            strh w1,[x0,#2]
            str wzr,[sp,#44]
            b .L_40cfc0
.L_40cdd8:

            ldr w0,[sp,#36]
            str w0,[sp,#20]
            ldrsw x0,[sp,#44]
            add x0,x0,#1
            lsl x0,x0,#2
            ldr x1,[sp,#8]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            str w0,[sp,#36]
            ldr w0,[sp,#32]
            add w0,w0,#1
            str w0,[sp,#32]
            ldr w1,[sp,#32]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.ge .L_40ce28

            ldr w1,[sp,#20]
            ldr w0,[sp,#36]
            cmp w1,w0
            b.eq .L_40cfb0
.L_40ce28:

            ldr w1,[sp,#32]
            ldr w0,[sp,#24]
            cmp w1,w0
            b.ge .L_40ce80

            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#20]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w1,[x0]
            ldr w0,[sp,#32]
            and w0,w0,#65535
            add w0,w1,w0
            and w2,w0,#65535
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#20]
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
            b .L_40cf4c
.L_40ce80:

            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_40cefc

            ldr w1,[sp,#20]
            ldr w0,[sp,#40]
            cmp w1,w0
            b.eq .L_40ced8

            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#20]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            add w0,w0,#1
            and w2,w0,#65535
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#20]
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
.L_40ced8:

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#64]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            strh w1,[x0,#64]
            b .L_40cf4c
.L_40cefc:

            ldr w0,[sp,#32]
            cmp w0,#10
            b.gt .L_40cf2c

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#68]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            strh w1,[x0,#68]
            b .L_40cf4c
.L_40cf2c:

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#72]
            add w0,w0,#1
            and w1,w0,#65535
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            strh w1,[x0,#72]
.L_40cf4c:

            str wzr,[sp,#32]
            ldr w0,[sp,#20]
            str w0,[sp,#40]
            ldr w0,[sp,#36]
            cmp w0,#0
            b.ne .L_40cf78

            mov w0,#138
            str w0,[sp,#28]
            mov w0,#3
            str w0,[sp,#24]
            b .L_40cfb4
.L_40cf78:

            ldr w1,[sp,#20]
            ldr w0,[sp,#36]
            cmp w1,w0
            b.ne .L_40cf9c

            mov w0,#6
            str w0,[sp,#28]
            mov w0,#3
            str w0,[sp,#24]
            b .L_40cfb4
.L_40cf9c:

            mov w0,#7
            str w0,[sp,#28]
            mov w0,#4
            str w0,[sp,#24]
            b .L_40cfb4
.L_40cfb0:

            nop
            nop
            nop
            nop
.L_40cfb4:

            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40cfc0:

            ldr w1,[sp,#44]
            ldr w0,[sp,#4]
            cmp w1,w0
            b.le .L_40cdd8

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
.size scan_tree, . - scan_tree
#-----------------------------------
.type send_tree, @function
#-----------------------------------
send_tree:

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
            mov w0,#-1
            str w0,[sp,#56]
            ldr x0,[sp,#24]
            ldrh w0,[x0,#2]
            str w0,[sp,#52]
            str wzr,[sp,#48]
            mov w0,#7
            str w0,[sp,#44]
            mov w0,#4
            str w0,[sp,#40]
            ldr w0,[sp,#52]
            cmp w0,#0
            b.ne .L_40d034

            mov w0,#138
            str w0,[sp,#44]
            mov w0,#3
            str w0,[sp,#40]
.L_40d034:

            str wzr,[sp,#60]
            b .L_40d290
.L_40d03c:

            ldr w0,[sp,#52]
            str w0,[sp,#36]
            ldrsw x0,[sp,#60]
            add x0,x0,#1
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            str w0,[sp,#52]
            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#48]
            ldr w1,[sp,#48]
            ldr w0,[sp,#44]
            cmp w1,w0
            b.ge .L_40d08c

            ldr w1,[sp,#36]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.eq .L_40d280
.L_40d08c:

            ldr w1,[sp,#48]
            ldr w0,[sp,#40]
            cmp w1,w0
            b.ge .L_40d0f8
.L_40d09c:

            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            mov w2,w0
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            ldr w0,[sp,#48]
            sub w0,w0,#1
            str w0,[sp,#48]
            ldr w0,[sp,#48]
            cmp w0,#0
            b.ne .L_40d09c

            b .L_40d21c
.L_40d0f8:

            ldr w0,[sp,#36]
            cmp w0,#0
            b.eq .L_40d19c

            ldr w1,[sp,#36]
            ldr w0,[sp,#56]
            cmp w1,w0
            b.eq .L_40d160

            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            mov w2,w0
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            ldr w0,[sp,#48]
            sub w0,w0,#1
            str w0,[sp,#48]
.L_40d160:

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#64]
            mov w2,w0
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#66]
            mov w1,w0
            mov w0,w2
            bl send_bits

            ldr w0,[sp,#48]
            sub w0,w0,#3
            mov w1,#2
            bl send_bits

            b .L_40d21c
.L_40d19c:

            ldr w0,[sp,#48]
            cmp w0,#10
            b.gt .L_40d1e4

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#68]
            mov w2,w0
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#70]
            mov w1,w0
            mov w0,w2
            bl send_bits

            ldr w0,[sp,#48]
            sub w0,w0,#3
            mov w1,#3
            bl send_bits

            b .L_40d21c
.L_40d1e4:

            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#72]
            mov w2,w0
            adrp x0, bl_tree
            add x0,x0, :lo12:bl_tree
            ldrh w0,[x0,#74]
            mov w1,w0
            mov w0,w2
            bl send_bits

            ldr w0,[sp,#48]
            sub w0,w0,#11
            mov w1,#7
            bl send_bits
.L_40d21c:

            str wzr,[sp,#48]
            ldr w0,[sp,#36]
            str w0,[sp,#56]
            ldr w0,[sp,#52]
            cmp w0,#0
            b.ne .L_40d248

            mov w0,#138
            str w0,[sp,#44]
            mov w0,#3
            str w0,[sp,#40]
            b .L_40d284
.L_40d248:

            ldr w1,[sp,#36]
            ldr w0,[sp,#52]
            cmp w1,w0
            b.ne .L_40d26c

            mov w0,#6
            str w0,[sp,#44]
            mov w0,#3
            str w0,[sp,#40]
            b .L_40d284
.L_40d26c:

            mov w0,#7
            str w0,[sp,#44]
            mov w0,#4
            str w0,[sp,#40]
            b .L_40d284
.L_40d280:

            nop
            nop
            nop
            nop
.L_40d284:

            ldr w0,[sp,#60]
            add w0,w0,#1
            str w0,[sp,#60]
.L_40d290:

            ldr w1,[sp,#60]
            ldr w0,[sp,#20]
            cmp w1,w0
            b.le .L_40d03c

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size send_tree, . - send_tree
#-----------------------------------
.type build_bl_tree, @function
#-----------------------------------
build_bl_tree:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            adrp x0, l_desc
            add x0,x0, :lo12:l_desc
            ldr w0,[x0,#36]
            mov w1,w0
            adrp x0, dyn_ltree
            add x0,x0, :lo12:dyn_ltree
            bl scan_tree

            adrp x0, d_desc
            add x0,x0, :lo12:d_desc
            ldr w0,[x0,#36]
            mov w1,w0
            adrp x0, dyn_dtree
            add x0,x0, :lo12:dyn_dtree
            bl scan_tree

            adrp x0, bl_desc
            add x0,x0, :lo12:bl_desc
            bl build_tree_1

            mov w0,#18
            str w0,[sp,#28]
            b .L_40d348
.L_40d308:

            adrp x0, bl_order
            add x1,x0, :lo12:bl_order
            ldrsw x0,[sp,#28]
            ldrb w0,[x1,x0]
            mov w2,w0
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            sxtw x0,w2
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0,#2]
            cmp w0,#0
            b.ne .L_40d358

            ldr w0,[sp,#28]
            sub w0,w0,#1
            str w0,[sp,#28]
.L_40d348:

            ldr w0,[sp,#28]
            cmp w0,#2
            b.gt .L_40d308

            b .L_40d35c
.L_40d358:

            nop
            nop
            nop
            nop
.L_40d35c:

            ldr w0,[sp,#28]
            add w1,w0,#1
            mov w0,w1
            lsl w0,w0,#1
            add w0,w0,w1
            add w0,w0,#14
            sxtw x1,w0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            str x1,[x0]
            ldr w0,[sp,#28]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size build_bl_tree, . - build_bl_tree
#-----------------------------------
.type send_all_trees, @function
#-----------------------------------
send_all_trees:

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
            str w1,[sp,#24]
            str w2,[sp,#20]
            ldr w0,[sp,#28]
            sub w0,w0,#257
            mov w1,#5
            bl send_bits

            ldr w0,[sp,#24]
            sub w0,w0,#1
            mov w1,#5
            bl send_bits

            ldr w0,[sp,#20]
            sub w0,w0,#4
            mov w1,#4
            bl send_bits

            str wzr,[sp,#44]
            b .L_40d42c
.L_40d3ec:

            adrp x0, bl_order
            add x1,x0, :lo12:bl_order
            ldrsw x0,[sp,#44]
            ldrb w0,[x1,x0]
            mov w2,w0
            adrp x0, bl_tree
            add x1,x0, :lo12:bl_tree
            sxtw x0,w2
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,#3
            bl send_bits

            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40d42c:

            ldr w1,[sp,#44]
            ldr w0,[sp,#20]
            cmp w1,w0
            b.lt .L_40d3ec

            ldr w0,[sp,#28]
            sub w0,w0,#1
            mov w1,w0
            adrp x0, dyn_ltree
            add x0,x0, :lo12:dyn_ltree
            bl send_tree

            ldr w0,[sp,#24]
            sub w0,w0,#1
            mov w1,w0
            adrp x0, dyn_dtree
            add x0,x0, :lo12:dyn_dtree
            bl send_tree

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
.size send_all_trees, . - send_all_trees
.align 3
#-----------------------------------
.globl flush_block
.type flush_block, @function
#-----------------------------------
flush_block:

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
            str w2,[sp,#28]
            str w3,[sp,#24]
            adrp x0, last_flags
            add x0,x0, :lo12:last_flags
            ldr w3,[x0]
            adrp x0, flags
            add x0,x0, :lo12:flags
            ldrb w2,[x0]
            adrp x0, flag_buf
            add x1,x0, :lo12:flag_buf
            mov w0,w3
            strb w2,[x1,x0]
            adrp x0, file_type
            add x0,x0, :lo12:file_type
            ldr x0,[x0]
            ldrh w1,[x0]
            mov w0,#65535
            cmp w1,w0
            b.ne .L_40d4d8

            bl set_file_type
.L_40d4d8:

            adrp x0, l_desc
            add x0,x0, :lo12:l_desc
            bl build_tree_1

            adrp x0, d_desc
            add x0,x0, :lo12:d_desc
            bl build_tree_1

            bl build_bl_tree

            str w0,[sp,#68]
            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            add x0,x0,#10
            lsr x0,x0,#3
            str x0,[sp,#72]
            adrp x0, static_len
            add x0,x0, :lo12:static_len
            ldr x0,[x0]
            add x0,x0,#10
            lsr x0,x0,#3
            str x0,[sp,#56]
            adrp x0, input_len
            add x0,x0, :lo12:input_len
            ldr x0,[x0]
            mov x1,x0
            ldr x0,[sp,#32]
            add x0,x1,x0
            mov x1,x0
            adrp x0, input_len
            add x0,x0, :lo12:input_len
            str x1,[x0]
            ldr x1,[sp,#56]
            ldr x0,[sp,#72]
            cmp x1,x0
            b.hi .L_40d568

            ldr x0,[sp,#56]
            str x0,[sp,#72]
.L_40d568:

            ldr x0,[sp,#32]
            add x0,x0,#4
            ldr x1,[sp,#72]
            cmp x1,x0
            b.lo .L_40d5f8

            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_40d5f8

            mov w1,#3
            ldr w0,[sp,#24]
            bl send_bits

            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            ldr x0,[x0]
            add x0,x0,#10
            and x1,x0,#-8
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            ldr x0,[sp,#32]
            add x0,x0,#4
            lsl x0,x0,#3
            adrp x1, compressed_len
            add x1,x1, :lo12:compressed_len
            ldr x1,[x1]
            add x0,x0,x1
            mov x1,x0
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            ldr x0,[sp,#32]
            mov w2,#1
            mov w1,w0
            ldr x0,[sp,#40]
            bl copy_block

            b .L_40d6e8
.L_40d5f8:

            ldr x1,[sp,#56]
            ldr x0,[sp,#72]
            cmp x1,x0
            b.ne .L_40d660

            ldr w0,[sp,#24]
            add w0,w0,#2
            mov w1,#3
            bl send_bits

            adrp x0, static_dtree
            add x1,x0, :lo12:static_dtree
            adrp x0, static_ltree
            add x0,x0, :lo12:static_ltree
            bl compress_block

            adrp x0, static_len
            add x0,x0, :lo12:static_len
            ldr x0,[x0]
            adrp x1, compressed_len
            add x1,x1, :lo12:compressed_len
            ldr x1,[x1]
            add x0,x0,x1
            add x0,x0,#3
            mov x1,x0
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            b .L_40d6e8
.L_40d660:

            ldr w0,[sp,#24]
            add w0,w0,#4
            mov w1,#3
            bl send_bits

            adrp x0, l_desc
            add x0,x0, :lo12:l_desc
            ldr w0,[x0,#36]
            add w3,w0,#1
            adrp x0, d_desc
            add x0,x0, :lo12:d_desc
            ldr w0,[x0,#36]
            add w1,w0,#1
            ldr w0,[sp,#68]
            add w0,w0,#1
            mov w2,w0
            mov w0,w3
            bl send_all_trees

            adrp x0, dyn_dtree
            add x1,x0, :lo12:dyn_dtree
            adrp x0, dyn_ltree
            add x0,x0, :lo12:dyn_ltree
            bl compress_block

            adrp x0, opt_len
            add x0,x0, :lo12:opt_len
            ldr x0,[x0]
            adrp x1, compressed_len
            add x1,x1, :lo12:compressed_len
            ldr x1,[x1]
            add x0,x0,x1
            add x0,x0,#3
            mov x1,x0
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
.L_40d6e8:

            bl init_block

            ldr w0,[sp,#24]
            cmp w0,#0
            b.eq .L_40d71c

            bl bi_windup

            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            ldr x0,[x0]
            add x1,x0,#7
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            b .L_40d77c
.L_40d71c:

            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_40d77c

            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            ldr x0,[x0]
            and x0,x0,#7
            cmp x0,#0
            b.eq .L_40d77c

            mov w1,#3
            ldr w0,[sp,#24]
            bl send_bits

            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            ldr x0,[x0]
            add x0,x0,#10
            and x1,x0,#-8
            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            str x1,[x0]
            mov w2,#1
            mov w1,#0
            ldr x0,[sp,#40]
            bl copy_block
.L_40d77c:

            adrp x0, compressed_len
            add x0,x0, :lo12:compressed_len
            ldr x0,[x0]
            asr x0,x0,#3
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size flush_block, . - flush_block
.align 2
#-----------------------------------
.globl ct_tally
.type ct_tally, @function
#-----------------------------------
ct_tally:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#48
.cfi_def_cfa_offset 48
            str w0,[sp,#12]
            str w1,[sp,#8]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, last_lit
            add x1,x1, :lo12:last_lit
            str w2,[x1]
            ldr w1,[sp,#8]
            and w2,w1,#255
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#12]
            cmp w0,#0
            b.ne .L_40d820

            adrp x0, dyn_ltree
            add x1,x0, :lo12:dyn_ltree
            ldrsw x0,[sp,#8]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            add w0,w0,#1
            and w2,w0,#65535
            adrp x0, dyn_ltree
            add x1,x0, :lo12:dyn_ltree
            ldrsw x0,[sp,#8]
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
            b .L_40d954
.L_40d820:

            ldr w0,[sp,#12]
            sub w0,w0,#1
            str w0,[sp,#12]
            adrp x0, length_code
            add x1,x0, :lo12:length_code
            ldrsw x0,[sp,#8]
            ldrb w0,[x1,x0]
            add w2,w0,#257
            adrp x0, dyn_ltree
            add x1,x0, :lo12:dyn_ltree
            sxtw x0,w2
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            add w0,w0,#1
            and w3,w0,#65535
            adrp x0, dyn_ltree
            add x1,x0, :lo12:dyn_ltree
            sxtw x0,w2
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w3
            strh w1,[x0]
            ldr w0,[sp,#12]
            cmp w0,#255
            b.gt .L_40d89c

            adrp x0, dist_code
            add x1,x0, :lo12:dist_code
            ldrsw x0,[sp,#12]
            ldrb w0,[x1,x0]
            b .L_40d8b8
.L_40d89c:

            ldr w0,[sp,#12]
            asr w0,w0,#7
            add w2,w0,#256
            adrp x0, dist_code
            add x1,x0, :lo12:dist_code
            sxtw x0,w2
            ldrb w0,[x1,x0]
.L_40d8b8:

            adrp x1, dyn_dtree
            add x2,x1, :lo12:dyn_dtree
            sxtw x1,w0
            lsl x1,x1,#2
            add x1,x2,x1
            ldrh w1,[x1]
            add w1,w1,#1
            and w2,w1,#65535
            adrp x1, dyn_dtree
            add x1,x1, :lo12:dyn_dtree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            mov w1,w2
            strh w1,[x0]
            adrp x0, last_dist
            add x0,x0, :lo12:last_dist
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, last_dist
            add x1,x1, :lo12:last_dist
            str w2,[x1]
            ldr w1,[sp,#12]
            and w2,w1,#65535
            adrp x1, d_buf
            add x1,x1, :lo12:d_buf
            mov w0,w0
            strh w2,[x1,x0,lsl #1]
            adrp x0, flags
            add x0,x0, :lo12:flags
            ldrb w1,[x0]
            adrp x0, flag_bit
            add x0,x0, :lo12:flag_bit
            ldrb w0,[x0]
            orr w0,w1,w0
            and w1,w0,#255
            adrp x0, flags
            add x0,x0, :lo12:flags
            strb w1,[x0]
.L_40d954:

            adrp x0, flag_bit
            add x0,x0, :lo12:flag_bit
            ldrb w0,[x0]
            ubfiz w0,w0,#1,#7
            and w1,w0,#255
            adrp x0, flag_bit
            add x0,x0, :lo12:flag_bit
            strb w1,[x0]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            and w0,w0,#7
            cmp w0,#0
            b.ne .L_40d9e0

            adrp x0, last_flags
            add x0,x0, :lo12:last_flags
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, last_flags
            add x1,x1, :lo12:last_flags
            str w2,[x1]
            adrp x1, flags
            add x1,x1, :lo12:flags
            ldrb w2,[x1]
            adrp x1, flag_buf
            add x1,x1, :lo12:flag_buf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, flags
            add x0,x0, :lo12:flags
            strb wzr,[x0]
            adrp x0, flag_bit
            add x0,x0, :lo12:flag_bit
            mov w1,#1
            strb w1,[x0]
.L_40d9e0:

            adrp x0, level
            add x0,x0, :lo12:level
            ldr w0,[x0]
            cmp w0,#2
            b.le .L_40daf8

            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            and w0,w0,#4095
            cmp w0,#0
            b.ne .L_40daf8

            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            mov w0,w0
            lsl x0,x0,#3
            str x0,[sp,#40]
            adrp x0, strstart
            add x0,x0, :lo12:strstart
            ldr w0,[x0]
            mov w0,w0
            adrp x1, block_start
            add x1,x1, :lo12:block_start
            ldr x1,[x1]
            sub x0,x0,x1
            str x0,[sp,#24]
            str wzr,[sp,#36]
            b .L_40daa0
.L_40da50:

            adrp x0, dyn_dtree
            add x1,x0, :lo12:dyn_dtree
            ldrsw x0,[sp,#36]
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            and x0,x0,#65535
            adrp x1, extra_dbits
            add x1,x1, :lo12:extra_dbits
            ldrsw x2,[sp,#36]
            ldr w1,[x1,x2,lsl #2]
            sxtw x1,w1
            add x1,x1,#5
            mul x0,x0,x1
            ldr x1,[sp,#40]
            add x0,x1,x0
            str x0,[sp,#40]
            ldr w0,[sp,#36]
            add w0,w0,#1
            str w0,[sp,#36]
.L_40daa0:

            ldr w0,[sp,#36]
            cmp w0,#29
            b.le .L_40da50

            ldr x0,[sp,#40]
            lsr x0,x0,#3
            str x0,[sp,#40]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            lsr w1,w0,#1
            adrp x0, last_dist
            add x0,x0, :lo12:last_dist
            ldr w0,[x0]
            cmp w1,w0
            b.ls .L_40daf8

            ldr x0,[sp,#24]
            lsr x0,x0,#1
            ldr x1,[sp,#40]
            cmp x1,x0
            b.hs .L_40daf8

            mov w0,#1
            b .L_40db30
.L_40daf8:

            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w1,[x0]
            mov w0,#32767
            cmp w1,w0
            b.eq .L_40db24

            adrp x0, last_dist
            add x0,x0, :lo12:last_dist
            ldr w0,[x0]
            cmp w0,#8,lsl #12
            b.ne .L_40db2c
.L_40db24:

            mov w0,#1
            b .L_40db30
.L_40db2c:

            mov w0,#0
.L_40db30:

            add sp,sp,#48
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ct_tally, . - ct_tally
#-----------------------------------
.type compress_block, @function
#-----------------------------------
compress_block:

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
            str wzr,[sp,#60]
            str wzr,[sp,#56]
            str wzr,[sp,#52]
            strb wzr,[sp,#51]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40ddb4
.L_40db6c:

            ldr w0,[sp,#60]
            and w0,w0,#7
            cmp w0,#0
            b.ne .L_40db9c

            ldr w0,[sp,#52]
            add w1,w0,#1
            str w1,[sp,#52]
            adrp x1, flag_buf
            add x1,x1, :lo12:flag_buf
            mov w0,w0
            ldrb w0,[x1,x0]
            strb w0,[sp,#51]
.L_40db9c:

            ldr w0,[sp,#60]
            add w1,w0,#1
            str w1,[sp,#60]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            str w0,[sp,#44]
            ldrb w0,[sp,#51]
            and w0,w0,#1
            cmp w0,#0
            b.ne .L_40dc08

            ldrsw x0,[sp,#44]
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0]
            mov w2,w0
            ldrsw x0,[sp,#44]
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            b .L_40dd90
.L_40dc08:

            adrp x0, length_code
            add x1,x0, :lo12:length_code
            ldrsw x0,[sp,#44]
            ldrb w0,[x1,x0]
            str w0,[sp,#40]
            ldr w0,[sp,#40]
            add w0,w0,#257
            mov w0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0]
            mov w2,w0
            ldr w0,[sp,#40]
            add w0,w0,#257
            mov w0,w0
            lsl x0,x0,#2
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            adrp x0, extra_lbits
            add x0,x0, :lo12:extra_lbits
            ldr w1,[sp,#40]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#36]
            ldr w0,[sp,#36]
            cmp w0,#0
            b.eq .L_40dcac

            adrp x0, base_length
            add x0,x0, :lo12:base_length
            ldr w1,[sp,#40]
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#44]
            sub w0,w1,w0
            str w0,[sp,#44]
            ldr w1,[sp,#36]
            ldr w0,[sp,#44]
            bl send_bits
.L_40dcac:

            ldr w0,[sp,#56]
            add w1,w0,#1
            str w1,[sp,#56]
            adrp x1, d_buf
            add x1,x1, :lo12:d_buf
            mov w0,w0
            ldrh w0,[x1,x0,lsl #1]
            str w0,[sp,#32]
            ldr w0,[sp,#32]
            cmp w0,#255
            b.hi .L_40dcec

            adrp x0, dist_code
            add x1,x0, :lo12:dist_code
            ldr w0,[sp,#32]
            ldrb w0,[x1,x0]
            b .L_40dd08
.L_40dcec:

            ldr w0,[sp,#32]
            lsr w0,w0,#7
            add w2,w0,#256
            adrp x0, dist_code
            add x1,x0, :lo12:dist_code
            mov w0,w2
            ldrb w0,[x1,x0]
.L_40dd08:

            str w0,[sp,#40]
            ldr w0,[sp,#40]
            lsl x0,x0,#2
            ldr x1,[sp,#16]
            add x0,x1,x0
            ldrh w0,[x0]
            mov w2,w0
            ldr w0,[sp,#40]
            lsl x0,x0,#2
            ldr x1,[sp,#16]
            add x0,x1,x0
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            adrp x0, extra_dbits
            add x0,x0, :lo12:extra_dbits
            ldr w1,[sp,#40]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#36]
            ldr w0,[sp,#36]
            cmp w0,#0
            b.eq .L_40dd90

            adrp x0, base_dist
            add x0,x0, :lo12:base_dist
            ldr w1,[sp,#40]
            ldr w0,[x0,x1,lsl #2]
            mov w1,w0
            ldr w0,[sp,#32]
            sub w0,w0,w1
            str w0,[sp,#32]
            ldr w0,[sp,#32]
            ldr w1,[sp,#36]
            bl send_bits
.L_40dd90:

            ldrb w0,[sp,#51]
            lsr w0,w0,#1
            strb w0,[sp,#51]
            adrp x0, last_lit
            add x0,x0, :lo12:last_lit
            ldr w0,[x0]
            ldr w1,[sp,#60]
            cmp w1,w0
            b.lo .L_40db6c
.L_40ddb4:

            ldr x0,[sp,#24]
            add x0,x0,#1024
            ldrh w0,[x0]
            mov w2,w0
            ldr x0,[sp,#24]
            add x0,x0,#1024
            ldrh w0,[x0,#2]
            mov w1,w0
            mov w0,w2
            bl send_bits

            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size compress_block, . - compress_block
#-----------------------------------
.type set_file_type, @function
#-----------------------------------
set_file_type:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str wzr,[sp,#12]
            str wzr,[sp,#8]
            str wzr,[sp,#4]
            b .L_40de30
.L_40ddfc:

            ldr w0,[sp,#12]
            add w1,w0,#1
            str w1,[sp,#12]
            adrp x1, dyn_ltree
            add x1,x1, :lo12:dyn_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#4]
            add w0,w0,w1
            str w0,[sp,#4]
.L_40de30:

            ldr w0,[sp,#12]
            cmp w0,#6
            b.le .L_40ddfc

            b .L_40de74
.L_40de40:

            ldr w0,[sp,#12]
            add w1,w0,#1
            str w1,[sp,#12]
            adrp x1, dyn_ltree
            add x1,x1, :lo12:dyn_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#8]
            add w0,w0,w1
            str w0,[sp,#8]
.L_40de74:

            ldr w0,[sp,#12]
            cmp w0,#127
            b.le .L_40de40

            b .L_40deb8
.L_40de84:

            ldr w0,[sp,#12]
            add w1,w0,#1
            str w1,[sp,#12]
            adrp x1, dyn_ltree
            add x1,x1, :lo12:dyn_ltree
            sxtw x0,w0
            lsl x0,x0,#2
            add x0,x1,x0
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#4]
            add w0,w0,w1
            str w0,[sp,#4]
.L_40deb8:

            ldr w0,[sp,#12]
            cmp w0,#255
            b.le .L_40de84

            ldr w0,[sp,#8]
            lsr w0,w0,#2
            ldr w1,[sp,#4]
            cmp w1,w0
            cset w0,ls
            and w1,w0,#255
            adrp x0, file_type
            add x0,x0, :lo12:file_type
            ldr x0,[x0]
            strh w1,[x0]
            nop
            nop
            nop
            nop
            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size set_file_type, . - set_file_type
#-----------------------------------
.type fillbuf, @function
#-----------------------------------
fillbuf:

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
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#28]
            lsl w0,w1,w0
            and w1,w0,#65535
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            strh w1,[x0]
            b .L_40e01c
.L_40df30:

            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            ldr w1,[x0]
            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            ldr w0,[x0]
            ldr w2,[sp,#28]
            sub w0,w2,w0
            str w0,[sp,#28]
            ldr w0,[sp,#28]
            lsl w0,w1,w0
            and w1,w0,#65535
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            orr w0,w1,w0
            and w1,w0,#65535
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            strh w1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40dfd4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            mov w1,w0
            b .L_40dfe0
.L_40dfd4:

            mov w0,#1
            bl fill_inbuf

            mov w1,w0
.L_40dfe0:

            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            str w1,[x0]
            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_40e00c

            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            str wzr,[x0]
.L_40e00c:

            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            mov w1,#8
            str w1,[x0]
.L_40e01c:

            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            ldr w0,[x0]
            ldr w1,[sp,#28]
            cmp w1,w0
            b.gt .L_40df30

            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            ldr w1,[x0]
            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            ldr w2,[x0]
            ldr w0,[sp,#28]
            sub w2,w2,w0
            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            str w2,[x0]
            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            ldr w0,[x0]
            lsr w0,w1,w0
            and w1,w0,#65535
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            orr w0,w1,w0
            and w1,w0,#65535
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            strh w1,[x0]
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
.size fillbuf, . - fillbuf
#-----------------------------------
.type getbits, @function
#-----------------------------------
getbits:

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
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w2,w0
            ldr w0,[sp,#28]
            mov w1,#16
            sub w0,w1,w0
            asr w0,w2,w0
            str w0,[sp,#44]
            ldr w0,[sp,#28]
            bl fillbuf

            ldr w0,[sp,#44]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size getbits, . - getbits
#-----------------------------------
.type init_getbits, @function
#-----------------------------------
init_getbits:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            strh wzr,[x0]
            adrp x0, subbitbuf
            add x0,x0, :lo12:subbitbuf
            str wzr,[x0]
            adrp x0, bitcount
            add x0,x0, :lo12:bitcount
            str wzr,[x0]
            mov w0,#16
            bl fillbuf

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
.size init_getbits, . - init_getbits
#-----------------------------------
.type make_table, @function
#-----------------------------------
make_table:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov fp,sp
            str w0,[sp,#44]
            str x1,[sp,#32]
            str w2,[sp,#40]
            str x3,[sp,#24]
            mov w0,#1
            str w0,[sp,#196]
            b .L_40e164
.L_40e148:

            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#128
            strh wzr,[x1,x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e164:

            ldr w0,[sp,#196]
            cmp w0,#16
            b.ls .L_40e148

            str wzr,[sp,#196]
            b .L_40e1c0
.L_40e178:

            ldr w0,[sp,#196]
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrb w0,[x0]
            mov w3,w0
            sxtw x0,w3
            lsl x0,x0,#1
            add x1,sp,#128
            ldrh w0,[x1,x0]
            add w0,w0,#1
            and w2,w0,#65535
            sxtw x0,w3
            lsl x0,x0,#1
            add x1,sp,#128
            strh w2,[x1,x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e1c0:

            ldr w0,[sp,#44]
            ldr w1,[sp,#196]
            cmp w1,w0
            b.lo .L_40e178

            strh wzr,[sp,#50]
            mov w0,#1
            str w0,[sp,#196]
            b .L_40e244
.L_40e1e0:

            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w1,[x1,x0]
            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x2,sp,#128
            ldrh w0,[x2,x0]
            mov w3,w0
            mov w2,#16
            ldr w0,[sp,#196]
            sub w0,w2,w0
            lsl w0,w3,w0
            and w0,w0,#65535
            ldr w2,[sp,#196]
            add w3,w2,#1
            add w0,w1,w0
            and w2,w0,#65535
            mov w0,w3
            lsl x0,x0,#1
            add x1,sp,#48
            strh w2,[x1,x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e244:

            ldr w0,[sp,#196]
            cmp w0,#16
            b.ls .L_40e1e0

            ldrh w0,[sp,#82]
            cmp w0,#0
            b.eq .L_40e268

            adrp x0, .L_4138f0
            add x0,x0, :lo12:.L_4138f0
            bl error
.L_40e268:

            mov w1,#16
            ldr w0,[sp,#40]
            sub w0,w1,w0
            str w0,[sp,#180]
            mov w0,#1
            str w0,[sp,#196]
            b .L_40e2e8
.L_40e284:

            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w0,[x1,x0]
            mov w1,w0
            ldr w0,[sp,#180]
            asr w0,w1,w0
            and w2,w0,#65535
            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#48
            strh w2,[x1,x0]
            ldr w1,[sp,#40]
            ldr w0,[sp,#196]
            sub w0,w1,w0
            mov w1,#1
            lsl w0,w1,w0
            and w2,w0,#65535
            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#88
            strh w2,[x1,x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e2e8:

            ldr w0,[sp,#40]
            ldr w1,[sp,#196]
            cmp w1,w0
            b.ls .L_40e284

            b .L_40e330
.L_40e2fc:

            mov w1,#16
            ldr w0,[sp,#196]
            sub w0,w1,w0
            mov w1,#1
            lsl w0,w1,w0
            and w2,w0,#65535
            ldr w0,[sp,#196]
            lsl x0,x0,#1
            add x1,sp,#88
            strh w2,[x1,x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e330:

            ldr w0,[sp,#196]
            cmp w0,#16
            b.ls .L_40e2fc

            ldr w0,[sp,#40]
            add w0,w0,#1
            sxtw x0,w0
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w0,[x1,x0]
            mov w1,w0
            ldr w0,[sp,#180]
            asr w0,w1,w0
            str w0,[sp,#196]
            ldr w0,[sp,#196]
            cmp w0,#0
            b.eq .L_40e3b4

            ldr w0,[sp,#40]
            mov w1,#1
            lsl w0,w1,w0
            str w0,[sp,#192]
            b .L_40e3a4
.L_40e384:

            ldr w0,[sp,#196]
            add w1,w0,#1
            str w1,[sp,#196]
            mov w0,w0
            lsl x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            strh wzr,[x0]
.L_40e3a4:

            ldr w1,[sp,#196]
            ldr w0,[sp,#192]
            cmp w1,w0
            b.ne .L_40e384
.L_40e3b4:

            ldr w0,[sp,#44]
            str w0,[sp,#184]
            mov w1,#15
            ldr w0,[sp,#40]
            sub w0,w1,w0
            mov w1,#1
            lsl w0,w1,w0
            str w0,[sp,#176]
            str wzr,[sp,#188]
            b .L_40e5f4
.L_40e3dc:

            ldr w0,[sp,#188]
            ldr x1,[sp,#32]
            add x0,x1,x0
            ldrb w0,[x0]
            str w0,[sp,#172]
            ldr w0,[sp,#172]
            cmp w0,#0
            b.eq .L_40e5e4

            ldr w0,[sp,#172]
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w0,[x1,x0]
            mov w2,w0
            ldr w0,[sp,#172]
            lsl x0,x0,#1
            add x1,sp,#88
            ldrh w0,[x1,x0]
            add w0,w2,w0
            str w0,[sp,#168]
            ldr w0,[sp,#40]
            ldr w1,[sp,#172]
            cmp w1,w0
            b.hi .L_40e48c

            ldr w0,[sp,#172]
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w0,[x1,x0]
            str w0,[sp,#196]
            b .L_40e478
.L_40e450:

            ldr w0,[sp,#196]
            lsl x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            ldr w1,[sp,#188]
            and w1,w1,#65535
            strh w1,[x0]
            ldr w0,[sp,#196]
            add w0,w0,#1
            str w0,[sp,#196]
.L_40e478:

            ldr w1,[sp,#196]
            ldr w0,[sp,#168]
            cmp w1,w0
            b.lo .L_40e450

            b .L_40e5c8
.L_40e48c:

            ldr w0,[sp,#172]
            lsl x0,x0,#1
            add x1,sp,#48
            ldrh w0,[x1,x0]
            str w0,[sp,#192]
            ldr w0,[sp,#180]
            ldr w1,[sp,#192]
            lsr w0,w1,w0
            mov w0,w0
            lsl x0,x0,#1
            ldr x1,[sp,#24]
            add x0,x1,x0
            str x0,[sp,#200]
            ldr w0,[sp,#40]
            ldr w1,[sp,#172]
            sub w0,w1,w0
            str w0,[sp,#196]
            b .L_40e5ac
.L_40e4d4:

            ldr x0,[sp,#200]
            ldrh w0,[x0]
            cmp w0,#0
            b.ne .L_40e538

            adrp x0, prev
            add x0,x0, :lo12:prev
            ldr w1,[sp,#184]
            strh wzr,[x0,x1,lsl #1]
            ldr w0,[sp,#184]
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            adrp x1, prev
            add x1,x1, :lo12:prev
            ldr w2,[sp,#184]
            ldrh w1,[x1,x2,lsl #1]
            strh w1,[x0]
            ldr w0,[sp,#184]
            add w1,w0,#1
            str w1,[sp,#184]
            and w1,w0,#65535
            ldr x0,[sp,#200]
            strh w1,[x0]
.L_40e538:

            ldr w1,[sp,#192]
            ldr w0,[sp,#176]
            and w0,w1,w0
            cmp w0,#0
            b.eq .L_40e574

            ldr x0,[sp,#200]
            ldrh w0,[x0]
            and x0,x0,#65535
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            str x0,[sp,#200]
            b .L_40e594
.L_40e574:

            ldr x0,[sp,#200]
            ldrh w0,[x0]
            sxtw x0,w0
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            str x0,[sp,#200]
.L_40e594:

            ldr w0,[sp,#192]
            lsl w0,w0,#1
            str w0,[sp,#192]
            ldr w0,[sp,#196]
            sub w0,w0,#1
            str w0,[sp,#196]
.L_40e5ac:

            ldr w0,[sp,#196]
            cmp w0,#0
            b.ne .L_40e4d4

            ldr w0,[sp,#188]
            and w1,w0,#65535
            ldr x0,[sp,#200]
            strh w1,[x0]
.L_40e5c8:

            ldr w0,[sp,#168]
            and w2,w0,#65535
            ldr w0,[sp,#172]
            lsl x0,x0,#1
            add x1,sp,#48
            strh w2,[x1,x0]
            b .L_40e5e8
.L_40e5e4:

            nop
            nop
            nop
            nop
.L_40e5e8:

            ldr w0,[sp,#188]
            add w0,w0,#1
            str w0,[sp,#188]
.L_40e5f4:

            ldr w0,[sp,#44]
            ldr w1,[sp,#188]
            cmp w1,w0
            b.lo .L_40e3dc

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size make_table, . - make_table
#-----------------------------------
.type read_pt_len, @function
#-----------------------------------
read_pt_len:

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
            str w1,[sp,#24]
            str w2,[sp,#20]
            ldr w0,[sp,#24]
            bl getbits

            str w0,[sp,#32]
            ldr w0,[sp,#32]
            cmp w0,#0
            b.ne .L_40e6bc

            ldr w0,[sp,#24]
            bl getbits

            str w0,[sp,#40]
            str wzr,[sp,#44]
            b .L_40e670
.L_40e654:

            adrp x0, pt_len
            add x1,x0, :lo12:pt_len
            ldrsw x0,[sp,#44]
            strb wzr,[x1,x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40e670:

            ldr w1,[sp,#44]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.lt .L_40e654

            str wzr,[sp,#44]
            b .L_40e6ac
.L_40e688:

            ldr w0,[sp,#40]
            and w2,w0,#65535
            adrp x0, pt_table
            add x0,x0, :lo12:pt_table
            ldrsw x1,[sp,#44]
            strh w2,[x0,x1,lsl #1]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40e6ac:

            ldr w0,[sp,#44]
            cmp w0,#255
            b.le .L_40e688

            b .L_40e81c
.L_40e6bc:

            str wzr,[sp,#44]
            b .L_40e7c0
.L_40e6c4:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            lsr w0,w0,#13
            and w0,w0,#65535
            str w0,[sp,#40]
            ldr w0,[sp,#40]
            cmp w0,#7
            b.ne .L_40e72c

            mov w0,#4096
            str w0,[sp,#36]
            b .L_40e70c
.L_40e6f4:

            ldr w0,[sp,#36]
            lsr w0,w0,#1
            str w0,[sp,#36]
            ldr w0,[sp,#40]
            add w0,w0,#1
            str w0,[sp,#40]
.L_40e70c:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#36]
            and w0,w1,w0
            cmp w0,#0
            b.ne .L_40e6f4
.L_40e72c:

            ldr w2,[sp,#40]
            ldr w1,[sp,#40]
            mov w0,#6
            cmp w2,#6
            csel w0,w1,w0,ge
            sub w0,w0,#3
            bl fillbuf

            ldr w0,[sp,#44]
            add w1,w0,#1
            str w1,[sp,#44]
            ldr w1,[sp,#40]
            and w2,w1,#255
            adrp x1, pt_len
            add x1,x1, :lo12:pt_len
            sxtw x0,w0
            strb w2,[x1,x0]
            ldr w1,[sp,#44]
            ldr w0,[sp,#20]
            cmp w1,w0
            b.ne .L_40e7c0

            mov w0,#2
            bl getbits

            str w0,[sp,#40]
            b .L_40e7a8
.L_40e78c:

            ldr w0,[sp,#44]
            add w1,w0,#1
            str w1,[sp,#44]
            adrp x1, pt_len
            add x1,x1, :lo12:pt_len
            sxtw x0,w0
            strb wzr,[x1,x0]
.L_40e7a8:

            ldr w0,[sp,#40]
            sub w0,w0,#1
            str w0,[sp,#40]
            ldr w0,[sp,#40]
            cmp w0,#0
            b.ge .L_40e78c
.L_40e7c0:

            ldr w1,[sp,#44]
            ldr w0,[sp,#32]
            cmp w1,w0
            b.lt .L_40e6c4

            b .L_40e7f0
.L_40e7d4:

            ldr w0,[sp,#44]
            add w1,w0,#1
            str w1,[sp,#44]
            adrp x1, pt_len
            add x1,x1, :lo12:pt_len
            sxtw x0,w0
            strb wzr,[x1,x0]
.L_40e7f0:

            ldr w1,[sp,#44]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.lt .L_40e7d4

            adrp x0, pt_table
            add x3,x0, :lo12:pt_table
            mov w2,#8
            adrp x0, pt_len
            add x1,x0, :lo12:pt_len
            ldr w0,[sp,#28]
            bl make_table
.L_40e81c:

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
.size read_pt_len, . - read_pt_len
#-----------------------------------
.type read_c_len, @function
#-----------------------------------
read_c_len:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            mov w0,#9
            bl getbits

            str w0,[sp,#16]
            ldr w0,[sp,#16]
            cmp w0,#0
            b.ne .L_40e8c0

            mov w0,#9
            bl getbits

            str w0,[sp,#24]
            str wzr,[sp,#28]
            b .L_40e878
.L_40e85c:

            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            ldrsw x0,[sp,#28]
            strb wzr,[x1,x0]
            ldr w0,[sp,#28]
            add w0,w0,#1
            str w0,[sp,#28]
.L_40e878:

            ldr w0,[sp,#28]
            cmp w0,#509
            b.le .L_40e85c

            str wzr,[sp,#28]
            b .L_40e8b0
.L_40e88c:

            ldr w0,[sp,#24]
            and w2,w0,#65535
            adrp x0, d_buf
            add x0,x0, :lo12:d_buf
            ldrsw x1,[sp,#28]
            strh w2,[x0,x1,lsl #1]
            ldr w0,[sp,#28]
            add w0,w0,#1
            str w0,[sp,#28]
.L_40e8b0:

            ldr w0,[sp,#28]
            cmp w0,#4095
            b.le .L_40e88c

            b .L_40eaa0
.L_40e8c0:

            str wzr,[sp,#28]
            b .L_40ea48
.L_40e8c8:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w0,w0,#65535
            mov w1,w0
            adrp x0, pt_table
            add x0,x0, :lo12:pt_table
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#24]
            ldr w0,[sp,#24]
            cmp w0,#18
            b.le .L_40e978

            mov w0,#128
            str w0,[sp,#20]
.L_40e908:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#20]
            and w0,w1,w0
            cmp w0,#0
            b.eq .L_40e94c

            ldrsw x0,[sp,#24]
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#24]
            b .L_40e960
.L_40e94c:

            adrp x0, prev
            add x0,x0, :lo12:prev
            ldrsw x1,[sp,#24]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#24]
.L_40e960:

            ldr w0,[sp,#20]
            lsr w0,w0,#1
            str w0,[sp,#20]
            ldr w0,[sp,#24]
            cmp w0,#18
            b.gt .L_40e908
.L_40e978:

            adrp x0, pt_len
            add x1,x0, :lo12:pt_len
            ldrsw x0,[sp,#24]
            ldrb w0,[x1,x0]
            bl fillbuf

            ldr w0,[sp,#24]
            cmp w0,#2
            b.gt .L_40ea1c

            ldr w0,[sp,#24]
            cmp w0,#0
            b.ne .L_40e9b0

            mov w0,#1
            str w0,[sp,#24]
            b .L_40ea00
.L_40e9b0:

            ldr w0,[sp,#24]
            cmp w0,#1
            b.ne .L_40e9d0

            mov w0,#4
            bl getbits

            add w0,w0,#3
            str w0,[sp,#24]
            b .L_40ea00
.L_40e9d0:

            mov w0,#9
            bl getbits

            add w0,w0,#20
            str w0,[sp,#24]
            b .L_40ea00
.L_40e9e4:

            ldr w0,[sp,#28]
            add w1,w0,#1
            str w1,[sp,#28]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            sxtw x0,w0
            strb wzr,[x1,x0]
.L_40ea00:

            ldr w0,[sp,#24]
            sub w0,w0,#1
            str w0,[sp,#24]
            ldr w0,[sp,#24]
            cmp w0,#0
            b.ge .L_40e9e4

            b .L_40ea48
.L_40ea1c:

            ldr w0,[sp,#24]
            and w1,w0,#255
            ldr w0,[sp,#28]
            add w2,w0,#1
            str w2,[sp,#28]
            sub w1,w1,#2
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            sxtw x0,w0
            strb w2,[x1,x0]
.L_40ea48:

            ldr w1,[sp,#28]
            ldr w0,[sp,#16]
            cmp w1,w0
            b.lt .L_40e8c8

            b .L_40ea78
.L_40ea5c:

            ldr w0,[sp,#28]
            add w1,w0,#1
            str w1,[sp,#28]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            sxtw x0,w0
            strb wzr,[x1,x0]
.L_40ea78:

            ldr w0,[sp,#28]
            cmp w0,#509
            b.le .L_40ea5c

            adrp x0, d_buf
            add x3,x0, :lo12:d_buf
            mov w2,#12
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            mov w0,#510
            bl make_table
.L_40eaa0:

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
.size read_c_len, . - read_c_len
#-----------------------------------
.type decode_c, @function
#-----------------------------------
decode_c:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40eb20

            mov w0,#16
            bl getbits

            mov w1,w0
            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            str w1,[x0]
            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40eafc

            mov w0,#510
            b .L_40ec04
.L_40eafc:

            mov w2,#3
            mov w1,#5
            mov w0,#19
            bl read_pt_len

            bl read_c_len

            mov w2,#-1
            mov w1,#4
            mov w0,#14
            bl read_pt_len
.L_40eb20:

            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            str w1,[x0]
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            lsr w0,w0,#4
            and w0,w0,#65535
            mov w1,w0
            adrp x0, d_buf
            add x0,x0, :lo12:d_buf
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#28]
            ldr w0,[sp,#28]
            cmp w0,#509
            b.ls .L_40ebec

            mov w0,#8
            str w0,[sp,#24]
.L_40eb7c:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#24]
            and w0,w1,w0
            cmp w0,#0
            b.eq .L_40ebc0

            ldr w0,[sp,#28]
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#28]
            b .L_40ebd4
.L_40ebc0:

            adrp x0, prev
            add x0,x0, :lo12:prev
            ldr w1,[sp,#28]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#28]
.L_40ebd4:

            ldr w0,[sp,#24]
            lsr w0,w0,#1
            str w0,[sp,#24]
            ldr w0,[sp,#28]
            cmp w0,#509
            b.hi .L_40eb7c
.L_40ebec:

            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            ldr w0,[sp,#28]
            ldrb w0,[x1,x0]
            bl fillbuf

            ldr w0,[sp,#28]
.L_40ec04:

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size decode_c, . - decode_c
#-----------------------------------
.type decode_p, @function
#-----------------------------------
decode_p:

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
            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            lsr w0,w0,#8
            and w0,w0,#65535
            mov w1,w0
            adrp x0, pt_table
            add x0,x0, :lo12:pt_table
            sxtw x1,w1
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#13
            b.ls .L_40ecc8

            mov w0,#128
            str w0,[sp,#40]
.L_40ec58:

            adrp x0, io_bitbuf
            add x0,x0, :lo12:io_bitbuf
            ldrh w0,[x0]
            mov w1,w0
            ldr w0,[sp,#40]
            and w0,w1,w0
            cmp w0,#0
            b.eq .L_40ec9c

            ldr w0,[sp,#44]
            add x0,x0,#8,lsl #12
            lsl x1,x0,#1
            adrp x0, prev
            add x0,x0, :lo12:prev
            add x0,x1,x0
            ldrh w0,[x0]
            str w0,[sp,#44]
            b .L_40ecb0
.L_40ec9c:

            adrp x0, prev
            add x0,x0, :lo12:prev
            ldr w1,[sp,#44]
            ldrh w0,[x0,x1,lsl #1]
            str w0,[sp,#44]
.L_40ecb0:

            ldr w0,[sp,#40]
            lsr w0,w0,#1
            str w0,[sp,#40]
            ldr w0,[sp,#44]
            cmp w0,#13
            b.hi .L_40ec58
.L_40ecc8:

            adrp x0, pt_len
            add x1,x0, :lo12:pt_len
            ldr w0,[sp,#44]
            ldrb w0,[x1,x0]
            bl fillbuf

            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_40ed0c

            ldr w0,[sp,#44]
            sub w0,w0,#1
            mov w1,#1
            lsl w19,w1,w0
            ldr w0,[sp,#44]
            sub w0,w0,#1
            bl getbits

            add w0,w19,w0
            str w0,[sp,#44]
.L_40ed0c:

            ldr w0,[sp,#44]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size decode_p, . - decode_p
#-----------------------------------
.type huf_decode_start, @function
#-----------------------------------
huf_decode_start:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl init_getbits

            adrp x0, blocksize
            add x0,x0, :lo12:blocksize
            str wzr,[x0]
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
.size huf_decode_start, . - huf_decode_start
#-----------------------------------
.type decode_start, @function
#-----------------------------------
decode_start:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl huf_decode_start

            adrp x0, j
            add x0,x0, :lo12:j
            str wzr,[x0]
            adrp x0, done
            add x0,x0, :lo12:done
            str wzr,[x0]
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
.size decode_start, . - decode_start
#-----------------------------------
.type decode, @function
#-----------------------------------
decode:

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
            str wzr,[sp,#44]
            b .L_40edf8
.L_40ed88:

            adrp x0, i.1
            add x0,x0, :lo12:i.1
            ldr w0,[x0]
            mov w0,w0
            ldr x1,[sp,#16]
            add x1,x1,x0
            ldr w0,[sp,#44]
            ldr x2,[sp,#16]
            add x0,x2,x0
            ldrb w1,[x1]
            strb w1,[x0]
            adrp x0, i.1
            add x0,x0, :lo12:i.1
            ldr w0,[x0]
            add w0,w0,#1
            and w1,w0,#8191
            adrp x0, i.1
            add x0,x0, :lo12:i.1
            str w1,[x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
            ldr w1,[sp,#44]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.ne .L_40edf8

            ldr w0,[sp,#44]
            b .L_40ef80
.L_40edf8:

            adrp x0, j
            add x0,x0, :lo12:j
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, j
            add x0,x0, :lo12:j
            str w1,[x0]
            adrp x0, j
            add x0,x0, :lo12:j
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_40ed88
.L_40ee28:

            bl decode_c

            str w0,[sp,#40]
            ldr w0,[sp,#40]
            cmp w0,#510
            b.ne .L_40ee54

            adrp x0, done
            add x0,x0, :lo12:done
            mov w1,#1
            str w1,[x0]
            ldr w0,[sp,#44]
            b .L_40ef80
.L_40ee54:

            ldr w0,[sp,#40]
            cmp w0,#255
            b.hi .L_40ee9c

            ldr w0,[sp,#44]
            ldr x1,[sp,#16]
            add x0,x1,x0
            ldr w1,[sp,#40]
            and w1,w1,#255
            strb w1,[x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
            ldr w1,[sp,#44]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.ne .L_40ee28

            ldr w0,[sp,#44]
            b .L_40ef80
.L_40ee9c:

            ldr w0,[sp,#40]
            sub w0,w0,#253
            mov w1,w0
            adrp x0, j
            add x0,x0, :lo12:j
            str w1,[x0]
            bl decode_p

            mov w1,w0
            ldr w0,[sp,#44]
            sub w0,w0,w1
            sub w0,w0,#1
            and w1,w0,#8191
            adrp x0, i.1
            add x0,x0, :lo12:i.1
            str w1,[x0]
            b .L_40ef4c
.L_40eedc:

            adrp x0, i.1
            add x0,x0, :lo12:i.1
            ldr w0,[x0]
            mov w0,w0
            ldr x1,[sp,#16]
            add x1,x1,x0
            ldr w0,[sp,#44]
            ldr x2,[sp,#16]
            add x0,x2,x0
            ldrb w1,[x1]
            strb w1,[x0]
            adrp x0, i.1
            add x0,x0, :lo12:i.1
            ldr w0,[x0]
            add w0,w0,#1
            and w1,w0,#8191
            adrp x0, i.1
            add x0,x0, :lo12:i.1
            str w1,[x0]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
            ldr w1,[sp,#44]
            ldr w0,[sp,#28]
            cmp w1,w0
            b.ne .L_40ef4c

            ldr w0,[sp,#44]
            b .L_40ef80
.L_40ef4c:

            adrp x0, j
            add x0,x0, :lo12:j
            ldr w0,[x0]
            sub w1,w0,#1
            adrp x0, j
            add x0,x0, :lo12:j
            str w1,[x0]
            adrp x0, j
            add x0,x0, :lo12:j
            ldr w0,[x0]
            cmp w0,#0
            b.ge .L_40eedc

            b .L_40ee28
.L_40ef80:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size decode, . - decode
.align 3
#-----------------------------------
.globl unlzh
.type unlzh, @function
#-----------------------------------
unlzh:

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
            str w1,[sp,#24]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w1,[sp,#28]
            str w1,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w1,[sp,#24]
            str w1,[x0]
            bl decode_start

            b .L_40f008
.L_40efc0:

            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,#8192
            bl decode

            str w0,[sp,#44]
            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f008

            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_40f008

            ldr w2,[sp,#44]
            adrp x0, window
            add x1,x0, :lo12:window
            ldr w0,[sp,#24]
            bl write_buf
.L_40f008:

            adrp x0, done
            add x0,x0, :lo12:done
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40efc0

            mov w0,#0
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unlzh, . - unlzh
.align 3
#-----------------------------------
.globl unlzw
.type unlzw, @function
#-----------------------------------
unlzw:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -128
.cfi_offset 20, -120
            str w0,[sp,#44]
            str w1,[sp,#40]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40f090

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            mov w1,w0
            b .L_40f09c
.L_40f090:

            mov w0,#0
            bl fill_inbuf

            mov w1,w0
.L_40f09c:

            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            str w1,[x0]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            and w1,w0,#128
            adrp x0, block_mode
            add x0,x0, :lo12:block_mode
            str w1,[x0]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            and w0,w0,#96
            cmp w0,#0
            b.eq .L_40f15c

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f138

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            and w0,w0,#96
            mov w4,w0
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413900
            add x1,x0, :lo12:.L_413900
            mov x0,x5
            bl fprintf
.L_40f138:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f15c

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_40f15c:

            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            and w1,w0,#31
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            str w1,[x0]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            mov x1,#1
            lsl x0,x1,x0
            str x0,[sp,#72]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            cmp w0,#16
            b.le .L_40f204

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x6,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            mov w5,#16
            mov w4,w0
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413928
            add x1,x0, :lo12:.L_413928
            mov x0,x6
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            b .L_40f9ec
.L_40f204:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            str w0,[sp,#80]
            mov w0,#9
            str w0,[sp,#84]
            ldr w0,[sp,#84]
            mov x1,#1
            lsl x0,x1,x0
            sub x0,x0,#1
            str x0,[sp,#88]
            ldr w0,[sp,#84]
            mov w1,#1
            lsl w0,w1,w0
            sub w0,w0,#1
            str w0,[sp,#104]
            mov x0,#-1
            str x0,[sp,#120]
            str wzr,[sp,#132]
            str wzr,[sp,#108]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            lsl w0,w0,#3
            mov w0,w0
            str x0,[sp,#112]
            adrp x0, block_mode
            add x0,x0, :lo12:block_mode
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f288

            mov x0,#257
            b .L_40f28c
.L_40f288:

            mov x0,#256
.L_40f28c:

            str x0,[sp,#96]
            mov x2,#256
            mov w1,#0
            adrp x0, prev
            add x0,x0, :lo12:prev
            bl memset

            mov x0,#255
            str x0,[sp,#136]
            b .L_40f2dc
.L_40f2b0:

            ldr x0,[sp,#136]
            and w2,w0,#255
            adrp x0, window
            add x1,x0, :lo12:window
            ldr x0,[sp,#136]
            add x0,x1,x0
            mov w1,w2
            strb w1,[x0]
            ldr x0,[sp,#136]
            sub x0,x0,#1
            str x0,[sp,#136]
.L_40f2dc:

            ldr x0,[sp,#136]
            cmp x0,#0
            b.ge .L_40f2b0
.L_40f2e8:

            nop
            nop
            nop
            nop
.L_40f2ec:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w1,[x0]
            ldr x0,[sp,#112]
            asr x0,x0,#3
            str w0,[sp,#68]
            ldr w0,[sp,#68]
            sub w0,w1,w0
            str w0,[sp,#64]
            mov w19,#0
            b .L_40f344
.L_40f318:

            ldr w0,[sp,#68]
            add w2,w19,w0
            adrp x0, inbuf
            add x1,x0, :lo12:inbuf
            sxtw x0,w2
            ldrb w2,[x1,x0]
            adrp x0, inbuf
            add x1,x0, :lo12:inbuf
            sxtw x0,w19
            strb w2,[x1,x0]
            add w19,w19,#1
.L_40f344:

            ldr w0,[sp,#64]
            cmp w19,w0
            b.lt .L_40f318

            ldr w1,[sp,#64]
            adrp x0, insize
            add x0,x0, :lo12:insize
            str w1,[x0]
            str xzr,[sp,#112]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w0,#63
            b.hi .L_40f3f8

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x1,x0
            mov x2,#32768
            mov x1,x0
            ldr w0,[sp,#44]
            bl read

            str w0,[sp,#80]
            ldr w0,[sp,#80]
            cmn w0,#1
            b.ne .L_40f3b8

            bl read_error
.L_40f3b8:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w1,[x0]
            ldr w0,[sp,#80]
            add w1,w1,w0
            adrp x0, insize
            add x0,x0, :lo12:insize
            str w1,[x0]
            ldrsw x1,[sp,#80]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
.L_40f3f8:

            ldr w0,[sp,#80]
            cmp w0,#0
            b.eq .L_40f440

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w2,w0
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            ldr w1,[sp,#84]
            udiv w3,w0,w1
            mul w1,w3,w1
            sub w0,w0,w1
            mov w0,w0
            sub x0,x2,x0
            lsl x0,x0,#3
            b .L_40f464
.L_40f440:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w0,w0
            lsl x1,x0,#3
            ldr w0,[sp,#84]
            sub w0,w0,#1
            sxtw x0,w0
            sub x0,x1,x0
.L_40f464:

            str x0,[sp,#56]
            b .L_40f974
.L_40f46c:

            ldr x1,[sp,#96]
            ldr x0,[sp,#88]
            cmp x1,x0
            b.le .L_40f528

            ldr x0,[sp,#112]
            sub x2,x0,#1
            ldr w0,[sp,#84]
            lsl w0,w0,#3
            sxtw x3,w0
            ldr x0,[sp,#112]
            sub x1,x0,#1
            ldr w0,[sp,#84]
            lsl w0,w0,#3
            sxtw x0,w0
            add x0,x1,x0
            ldr w1,[sp,#84]
            lsl w1,w1,#3
            sxtw x1,w1
            sdiv x4,x0,x1
            mul x1,x4,x1
            sub x0,x0,x1
            sub x0,x3,x0
            add x0,x2,x0
            str x0,[sp,#112]
            ldr w0,[sp,#84]
            add w0,w0,#1
            str w0,[sp,#84]
            adrp x0, maxbits
            add x0,x0, :lo12:maxbits
            ldr w0,[x0]
            ldr w1,[sp,#84]
            cmp w1,w0
            b.ne .L_40f4fc

            ldr x0,[sp,#72]
            str x0,[sp,#88]
            b .L_40f510
.L_40f4fc:

            ldr w0,[sp,#84]
            mov x1,#1
            lsl x0,x1,x0
            sub x0,x0,#1
            str x0,[sp,#88]
.L_40f510:

            ldr w0,[sp,#84]
            mov w1,#1
            lsl w0,w1,w0
            sub w0,w0,#1
            str w0,[sp,#104]
            b .L_40f2ec
.L_40f528:

            ldr x0,[sp,#112]
            asr x1,x0,#3
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x19,x1,x0
            ldrb w0,[x19]
            and x1,x0,#255
            add x0,x19,#1
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#8
            orr x1,x1,x0
            add x0,x19,#2
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#16
            orr x1,x1,x0
            ldr x0,[sp,#112]
            and w0,w0,#7
            asr x1,x1,x0
            ldr w0,[sp,#104]
            and x0,x1,x0
            str x0,[sp,#136]
            ldrsw x0,[sp,#84]
            ldr x1,[sp,#112]
            add x0,x1,x0
            str x0,[sp,#112]
            ldr x0,[sp,#120]
            cmn x0,#1
            b.ne .L_40f5f0

            ldr x0,[sp,#136]
            cmp x0,#255
            b.le .L_40f5b8

            adrp x0, .L_413968
            add x0,x0, :lo12:.L_413968
            bl error
.L_40f5b8:

            ldr x0,[sp,#136]
            str x0,[sp,#120]
            ldr x0,[sp,#120]
            str w0,[sp,#132]
            ldr w0,[sp,#108]
            add w1,w0,#1
            str w1,[sp,#108]
            ldr w1,[sp,#132]
            and w2,w1,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            sxtw x0,w0
            strb w2,[x1,x0]
            b .L_40f974
.L_40f5f0:

            ldr x0,[sp,#136]
            cmp x0,#256
            b.ne .L_40f6b0

            adrp x0, block_mode
            add x0,x0, :lo12:block_mode
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f6b0

            mov x2,#256
            mov w1,#0
            adrp x0, prev
            add x0,x0, :lo12:prev
            bl memset

            mov x0,#256
            str x0,[sp,#96]
            ldr x0,[sp,#112]
            sub x2,x0,#1
            ldr w0,[sp,#84]
            lsl w0,w0,#3
            sxtw x3,w0
            ldr x0,[sp,#112]
            sub x1,x0,#1
            ldr w0,[sp,#84]
            lsl w0,w0,#3
            sxtw x0,w0
            add x0,x1,x0
            ldr w1,[sp,#84]
            lsl w1,w1,#3
            sxtw x1,w1
            sdiv x4,x0,x1
            mul x1,x4,x1
            sub x0,x0,x1
            sub x0,x3,x0
            add x0,x2,x0
            str x0,[sp,#112]
            mov w0,#9
            str w0,[sp,#84]
            ldr w0,[sp,#84]
            mov x1,#1
            lsl x0,x1,x0
            sub x0,x0,#1
            str x0,[sp,#88]
            ldr w0,[sp,#84]
            mov w1,#1
            lsl w0,w1,w0
            sub w0,w0,#1
            str w0,[sp,#104]
            b .L_40f2ec
.L_40f6b0:

            ldr x0,[sp,#136]
            str x0,[sp,#48]
            adrp x0, d_buf+65534
            add x19,x0, :lo12:d_buf+65534
            ldr x1,[sp,#136]
            ldr x0,[sp,#96]
            cmp x1,x0
            b.lt .L_40f7b4

            ldr x1,[sp,#136]
            ldr x0,[sp,#96]
            cmp x1,x0
            b.le .L_40f764

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f738

            ldr w0,[sp,#108]
            cmp w0,#0
            b.le .L_40f738

            ldr w0,[sp,#108]
            mov w2,w0
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            ldr w0,[sp,#40]
            bl write_buf

            ldrsw x1,[sp,#108]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
.L_40f738:

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_40f758

            adrp x0, .L_413968
            add x0,x0, :lo12:.L_413968
            b .L_40f760
.L_40f758:

            adrp x0, .L_413978
            add x0,x0, :lo12:.L_413978
.L_40f760:

            bl error
.L_40f764:

            sub x19,x19,#1
            ldr w0,[sp,#132]
            and w0,w0,#255
            strb w0,[x19]
            ldr x0,[sp,#120]
            str x0,[sp,#136]
            b .L_40f7b4
.L_40f780:

            sub x19,x19,#1
            adrp x0, window
            add x1,x0, :lo12:window
            ldr x0,[sp,#136]
            add x0,x1,x0
            ldrb w0,[x0]
            strb w0,[x19]
            adrp x0, prev
            add x0,x0, :lo12:prev
            ldr x1,[sp,#136]
            ldrh w0,[x0,x1,lsl #1]
            and x0,x0,#65535
            str x0,[sp,#136]
.L_40f7b4:

            ldr x0,[sp,#136]
            cmp x0,#255
            b.hi .L_40f780

            adrp x0, window
            add x1,x0, :lo12:window
            ldr x0,[sp,#136]
            add x0,x1,x0
            ldrb w0,[x0]
            str w0,[sp,#132]
            sub x19,x19,#1
            ldr w0,[sp,#132]
            and w0,w0,#255
            strb w0,[x19]
            adrp x0, d_buf+65534
            add x0,x0, :lo12:d_buf+65534
            sub x0,x0,x19
            mov w20,w0
            ldr w0,[sp,#108]
            add w1,w20,w0
            mov w0,#16383
            cmp w1,w0
            b.le .L_40f8e4
.L_40f80c:

            mov w1,#16384
            ldr w0,[sp,#108]
            sub w0,w1,w0
            cmp w20,w0
            b.le .L_40f82c

            mov w1,#16384
            ldr w0,[sp,#108]
            sub w20,w1,w0
.L_40f82c:

            cmp w20,#0
            b.le .L_40f860

            ldrsw x1,[sp,#108]
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            add x0,x1,x0
            sxtw x1,w20
            mov x2,x1
            mov x1,x19
            bl memcpy

            ldr w0,[sp,#108]
            add w0,w0,w20
            str w0,[sp,#108]
.L_40f860:

            ldr w1,[sp,#108]
            mov w0,#16383
            cmp w1,w0
            b.le .L_40f8c0

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f8bc

            ldr w0,[sp,#108]
            mov w2,w0
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            ldr w0,[sp,#40]
            bl write_buf

            ldrsw x1,[sp,#108]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
.L_40f8bc:

            str wzr,[sp,#108]
.L_40f8c0:

            sxtw x0,w20
            add x19,x19,x0
            adrp x0, d_buf+65534
            add x0,x0, :lo12:d_buf+65534
            sub x0,x0,x19
            mov w20,w0
            cmp w20,#0
            b.gt .L_40f80c

            b .L_40f910
.L_40f8e4:

            ldrsw x1,[sp,#108]
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            add x0,x1,x0
            sxtw x1,w20
            mov x2,x1
            mov x1,x19
            bl memcpy

            ldr w0,[sp,#108]
            add w0,w0,w20
            str w0,[sp,#108]
.L_40f910:

            ldr x0,[sp,#96]
            str x0,[sp,#136]
            ldr x1,[sp,#136]
            ldr x0,[sp,#72]
            cmp x1,x0
            b.ge .L_40f96c

            ldr x0,[sp,#120]
            and w2,w0,#65535
            adrp x0, prev
            add x0,x0, :lo12:prev
            ldr x1,[sp,#136]
            strh w2,[x0,x1,lsl #1]
            ldr w0,[sp,#132]
            and w2,w0,#255
            adrp x0, window
            add x1,x0, :lo12:window
            ldr x0,[sp,#136]
            add x0,x1,x0
            mov w1,w2
            strb w1,[x0]
            ldr x0,[sp,#136]
            add x0,x0,#1
            str x0,[sp,#96]
.L_40f96c:

            ldr x0,[sp,#48]
            str x0,[sp,#120]
.L_40f974:

            ldr x1,[sp,#56]
            ldr x0,[sp,#112]
            cmp x1,x0
            b.gt .L_40f46c

            ldr w0,[sp,#80]
            cmp w0,#0
            b.ne .L_40f2e8

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_40f9e8

            ldr w0,[sp,#108]
            cmp w0,#0
            b.le .L_40f9e8

            ldr w0,[sp,#108]
            mov w2,w0
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            ldr w0,[sp,#40]
            bl write_buf

            ldrsw x1,[sp,#108]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
.L_40f9e8:

            mov w0,#0
.L_40f9ec:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#144
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unlzw, . - unlzw
#-----------------------------------
.type read_tree, @function
#-----------------------------------
read_tree:

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
            adrp x0, orig_len
            add x0,x0, :lo12:orig_len
            str xzr,[x0]
            mov w0,#1
            str w0,[sp,#36]
            b .L_40faa8
.L_40fa1c:

            adrp x0, orig_len
            add x0,x0, :lo12:orig_len
            ldr x0,[x0]
            lsl x19,x0,#8
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40fa80

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_40fa8c
.L_40fa80:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
.L_40fa8c:

            orr x1,x0,x19
            adrp x0, orig_len
            add x0,x0, :lo12:orig_len
            str x1,[x0]
            ldr w0,[sp,#36]
            add w0,w0,#1
            str w0,[sp,#36]
.L_40faa8:

            ldr w0,[sp,#36]
            cmp w0,#4
            b.le .L_40fa1c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40fb08

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            mov w1,w0
            b .L_40fb14
.L_40fb08:

            mov w0,#0
            bl fill_inbuf

            mov w1,w0
.L_40fb14:

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            str w1,[x0]
            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            cmp w0,#25
            b.le .L_40fb40

            adrp x0, .L_4139a8
            add x0,x0, :lo12:.L_4139a8
            bl error
.L_40fb40:

            str wzr,[sp,#36]
            mov w0,#1
            str w0,[sp,#44]
            b .L_40fbe8
.L_40fb50:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40fba4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            mov w2,w0
            b .L_40fbb0
.L_40fba4:

            mov w0,#0
            bl fill_inbuf

            mov w2,w0
.L_40fbb0:

            adrp x0, leaves
            add x0,x0, :lo12:leaves
            ldrsw x1,[sp,#44]
            str w2,[x0,x1,lsl #2]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            ldrsw x1,[sp,#44]
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#36]
            add w0,w1,w0
            str w0,[sp,#36]
            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40fbe8:

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            ldr w1,[sp,#44]
            cmp w1,w0
            b.le .L_40fb50

            ldr w0,[sp,#36]
            cmp w0,#256
            b.le .L_40fc18

            adrp x0, .L_4139e0
            add x0,x0, :lo12:.L_4139e0
            bl error
.L_40fc18:

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w3,[x0]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            sxtw x1,w3
            ldr w0,[x0,x1,lsl #2]
            add w2,w0,#1
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            sxtw x1,w3
            str w2,[x0,x1,lsl #2]
            str wzr,[sp,#40]
            mov w0,#1
            str w0,[sp,#44]
            b .L_40fd20
.L_40fc58:

            adrp x0, lit_base
            add x0,x0, :lo12:lit_base
            ldrsw x1,[sp,#44]
            ldr w2,[sp,#40]
            str w2,[x0,x1,lsl #2]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            ldrsw x1,[sp,#44]
            ldr w0,[x0,x1,lsl #2]
            str w0,[sp,#36]
            b .L_40fd08
.L_40fc84:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_40fcd4

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w2,[x1,x0]
            b .L_40fce0
.L_40fcd4:

            mov w0,#0
            bl fill_inbuf

            and w2,w0,#255
.L_40fce0:

            ldr w0,[sp,#40]
            add w1,w0,#1
            str w1,[sp,#40]
            adrp x1, literal
            add x1,x1, :lo12:literal
            sxtw x0,w0
            strb w2,[x1,x0]
            ldr w0,[sp,#36]
            sub w0,w0,#1
            str w0,[sp,#36]
.L_40fd08:

            ldr w0,[sp,#36]
            cmp w0,#0
            b.gt .L_40fc84

            ldr w0,[sp,#44]
            add w0,w0,#1
            str w0,[sp,#44]
.L_40fd20:

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            ldr w1,[sp,#44]
            cmp w1,w0
            b.le .L_40fc58

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w3,[x0]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            sxtw x1,w3
            ldr w0,[x0,x1,lsl #2]
            add w2,w0,#1
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            sxtw x1,w3
            str w2,[x0,x1,lsl #2]
            nop
            nop
            nop
            nop
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size read_tree, . - read_tree
#-----------------------------------
.type build_tree, @function
#-----------------------------------
build_tree:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#32
.cfi_def_cfa_offset 32
            str wzr,[sp,#28]
            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            str w0,[sp,#24]
            b .L_40fe04
.L_40fd94:

            ldr w0,[sp,#28]
            asr w0,w0,#1
            str w0,[sp,#28]
            adrp x0, parents
            add x0,x0, :lo12:parents
            ldrsw x1,[sp,#24]
            ldr w2,[sp,#28]
            str w2,[x0,x1,lsl #2]
            adrp x0, lit_base
            add x0,x0, :lo12:lit_base
            ldrsw x1,[sp,#24]
            ldr w1,[x0,x1,lsl #2]
            ldr w0,[sp,#28]
            sub w2,w1,w0
            adrp x0, lit_base
            add x0,x0, :lo12:lit_base
            ldrsw x1,[sp,#24]
            str w2,[x0,x1,lsl #2]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            ldrsw x1,[sp,#24]
            ldr w0,[x0,x1,lsl #2]
            ldr w1,[sp,#28]
            add w0,w1,w0
            str w0,[sp,#28]
            ldr w0,[sp,#24]
            sub w0,w0,#1
            str w0,[sp,#24]
.L_40fe04:

            ldr w0,[sp,#24]
            cmp w0,#0
            b.gt .L_40fd94

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            mov w1,#12
            cmp w0,#12
            csel w1,w0,w1,le
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            str w1,[x0]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            mov w1,#1
            lsl w0,w1,w0
            sxtw x1,w0
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            add x0,x1,x0
            str x0,[sp,#16]
            mov w0,#1
            str w0,[sp,#24]
            b .L_40fed4
.L_40fe68:

            adrp x0, leaves
            add x0,x0, :lo12:leaves
            ldrsw x1,[sp,#24]
            ldr w1,[x0,x1,lsl #2]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w2,[x0]
            ldr w0,[sp,#24]
            sub w0,w2,w0
            lsl w0,w1,w0
            str w0,[sp,#12]
            b .L_40feb4
.L_40fe98:

            ldr x0,[sp,#16]
            sub x0,x0,#1
            str x0,[sp,#16]
            ldr w0,[sp,#24]
            and w1,w0,#255
            ldr x0,[sp,#16]
            strb w1,[x0]
.L_40feb4:

            ldr w0,[sp,#12]
            sub w1,w0,#1
            str w1,[sp,#12]
            cmp w0,#0
            b.ne .L_40fe98

            ldr w0,[sp,#24]
            add w0,w0,#1
            str w0,[sp,#24]
.L_40fed4:

            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            ldr w1,[sp,#24]
            cmp w1,w0
            b.le .L_40fe68

            b .L_40ff04
.L_40fef0:

            ldr x0,[sp,#16]
            sub x0,x0,#1
            str x0,[sp,#16]
            ldr x0,[sp,#16]
            strb wzr,[x0]
.L_40ff04:

            ldr x1,[sp,#16]
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            cmp x1,x0
            b.hi .L_40fef0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            add sp,sp,#32
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size build_tree, . - build_tree
.align 3
#-----------------------------------
.globl unpack
.type unpack, @function
#-----------------------------------
unpack:

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
            str w1,[sp,#40]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w1,[sp,#44]
            str w1,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w1,[sp,#40]
            str w1,[x0]
            bl read_tree

            bl build_tree

            adrp x0, valid
            add x0,x0, :lo12:valid
            str wzr,[x0]
            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            str xzr,[x0]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            mov w1,#1
            lsl w0,w1,w0
            sub w0,w0,#1
            str w0,[sp,#60]
            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w1,[x0]
            adrp x0, leaves
            add x0,x0, :lo12:leaves
            sxtw x1,w1
            ldr w0,[x0,x1,lsl #2]
            sub w0,w0,#1
            str w0,[sp,#56]
            b .L_41005c
.L_40ffc0:

            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            ldr x0,[x0]
            lsl x19,x0,#8
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_410024

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_410030
.L_410024:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
.L_410030:

            orr x1,x0,x19
            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            str x1,[x0]
            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w0,[x0]
            add w1,w0,#8
            adrp x0, valid
            add x0,x0, :lo12:valid
            str w1,[x0]
.L_41005c:

            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w1,[x0]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            cmp w1,w0
            b.lt .L_40ffc0

            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            ldr x1,[x0]
            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w2,[x0]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            sub w0,w2,w0
            lsr x0,x1,x0
            mov w1,w0
            ldr w0,[sp,#60]
            and w19,w1,w0
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            mov w0,w19
            ldrb w0,[x1,x0]
            str w0,[sp,#76]
            ldr w0,[sp,#76]
            cmp w0,#0
            b.le .L_4100f0

            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w1,[x0]
            ldr w0,[sp,#76]
            sub w0,w1,w0
            lsr w19,w19,w0
            b .L_410224
.L_4100f0:

            ldr w0,[sp,#60]
            str x0,[sp,#64]
            adrp x0, peek_bits
            add x0,x0, :lo12:peek_bits
            ldr w0,[x0]
            str w0,[sp,#76]
.L_410108:

            ldr w0,[sp,#76]
            add w0,w0,#1
            str w0,[sp,#76]
            ldr x0,[sp,#64]
            lsl x0,x0,#1
            add x0,x0,#1
            str x0,[sp,#64]
            b .L_4101c4
.L_410128:

            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            ldr x0,[x0]
            lsl x19,x0,#8
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_41018c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            and x0,x0,#255
            b .L_410198
.L_41018c:

            mov w0,#0
            bl fill_inbuf

            sxtw x0,w0
.L_410198:

            orr x1,x0,x19
            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            str x1,[x0]
            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w0,[x0]
            add w1,w0,#8
            adrp x0, valid
            add x0,x0, :lo12:valid
            str w1,[x0]
.L_4101c4:

            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.gt .L_410128

            adrp x0, bitbuf
            add x0,x0, :lo12:bitbuf
            ldr x1,[x0]
            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w2,[x0]
            ldr w0,[sp,#76]
            sub w0,w2,w0
            lsr x0,x1,x0
            mov w1,w0
            ldr x0,[sp,#64]
            and w19,w1,w0
            adrp x0, parents
            add x0,x0, :lo12:parents
            ldrsw x1,[sp,#76]
            ldr w0,[x0,x1,lsl #2]
            cmp w19,w0
            b.lo .L_410108
.L_410224:

            ldr w0,[sp,#56]
            cmp w19,w0
            b.ne .L_410248

            adrp x0, max_len
            add x0,x0, :lo12:max_len
            ldr w0,[x0]
            ldr w1,[sp,#76]
            cmp w1,w0
            b.eq .L_4102d4
.L_410248:

            adrp x0, lit_base
            add x0,x0, :lo12:lit_base
            ldrsw x1,[sp,#76]
            ldr w0,[x0,x1,lsl #2]
            add w3,w19,w0
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, literal
            add x2,x1, :lo12:literal
            mov w1,w3
            ldrb w2,[x2,x1]
            adrp x1, window
            add x1,x1, :lo12:window
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#8,lsl #12
            b.ne .L_4102b0

            bl flush_window
.L_4102b0:

            adrp x0, valid
            add x0,x0, :lo12:valid
            ldr w1,[x0]
            ldr w0,[sp,#76]
            sub w1,w1,w0
            adrp x0, valid
            add x0,x0, :lo12:valid
            str w1,[x0]
            b .L_41005c
.L_4102d4:

            nop
            nop
            nop
            nop
            bl flush_window

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            and x1,x0,#4294967295
            adrp x0, orig_len
            add x0,x0, :lo12:orig_len
            ldr x0,[x0]
            cmp x1,x0
            b.eq .L_41030c

            adrp x0, .L_413a00
            add x0,x0, :lo12:.L_413a00
            bl error
.L_41030c:

            mov w0,#0
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unpack, . - unpack
.align 2
#-----------------------------------
.globl check_zipfile
.type check_zipfile, @function
#-----------------------------------
check_zipfile:

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
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x1,x0
            str x0,[sp,#40]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w1,[sp,#28]
            str w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#26
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#40]
            add x0,x0,#27
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            add w1,w0,#30
            ldr x0,[sp,#40]
            add x0,x0,#28
            ldrb w0,[x0]
            mov w2,w0
            ldr x0,[sp,#40]
            add x0,x0,#29
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w2,w0
            add w0,w1,w0
            mov w1,w0
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w1,w1,w0
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str w1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hi .L_41044c

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            mov w1,w0
            ldr x0,[sp,#40]
            add x0,x0,#1
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldr x0,[sp,#40]
            add x0,x0,#2
            ldrb w0,[x0]
            mov w2,w0
            ldr x0,[sp,#40]
            add x0,x0,#3
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x1,x1,x0
            mov x0,#19280
            movk x0,#1027,lsl #16
            cmp x1,x0
            b.eq .L_410498
.L_41044c:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413a28
            add x1,x0, :lo12:.L_413a28
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            b .L_4105e4
.L_410498:

            ldr x0,[sp,#40]
            add x0,x0,#8
            ldrb w0,[x0]
            mov w1,w0
            adrp x0, method
            add x0,x0, :lo12:method
            str w1,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410528

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#8
            b.eq .L_410528

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413a48
            add x1,x0, :lo12:.L_413a48
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            b .L_4105e4
.L_410528:

            ldr x0,[sp,#40]
            add x0,x0,#6
            ldrb w0,[x0]
            and w1,w0,#1
            adrp x0, decrypt
            add x0,x0, :lo12:decrypt
            str w1,[x0]
            adrp x0, decrypt
            add x0,x0, :lo12:decrypt
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4105a4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413a88
            add x1,x0, :lo12:.L_413a88
            mov x0,x4
            bl fprintf

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            mov w0,#1
            b .L_4105e4
.L_4105a4:

            ldr x0,[sp,#40]
            add x0,x0,#6
            ldrb w0,[x0]
            and w0,w0,#8
            cmp w0,#0
            cset w0,ne
            and w0,w0,#255
            mov w1,w0
            adrp x0, ext_header
            add x0,x0, :lo12:ext_header
            str w1,[x0]
            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            mov w1,#1
            str w1,[x0]
            mov w0,#0
.L_4105e4:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size check_zipfile, . - check_zipfile
.align 2
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
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -80
            str w0,[sp,#44]
            str w1,[sp,#40]
            str xzr,[sp,#88]
            str xzr,[sp,#80]
            str wzr,[sp,#72]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w1,[sp,#44]
            str w1,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w1,[sp,#40]
            str w1,[x0]
            mov w1,#0
            mov x0,#0
            bl updcrc

            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410718

            adrp x0, ext_header
            add x0,x0, :lo12:ext_header
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_410718

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#14]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#15]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#16]
            mov w2,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#17]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#88]
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#22]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#23]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#24]
            mov w2,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#25]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#80]
.L_410718:

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#8
            b.ne .L_41076c

            bl inflate

            str w0,[sp,#64]
            ldr w0,[sp,#64]
            cmp w0,#3
            b.ne .L_410750

            adrp x0, .L_413ab0
            add x0,x0, :lo12:.L_413ab0
            bl error

            b .L_4109c8
.L_410750:

            ldr w0,[sp,#64]
            cmp w0,#0
            b.eq .L_4109c8

            adrp x0, .L_413ac0
            add x0,x0, :lo12:.L_413ac0
            bl error

            b .L_4109c8
.L_41076c:

            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4109bc

            adrp x0, method
            add x0,x0, :lo12:method
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4109bc

            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#22]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#23]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#24]
            mov w2,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#25]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x19,x1,x0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#18]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#19]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#20]
            mov w2,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#21]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x1,x1,x0
            adrp x0, decrypt
            add x0,x0, :lo12:decrypt
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410860

            mov x0,#12
            b .L_410864
.L_410860:

            mov x0,#0
.L_410864:

            sub x0,x1,x0
            cmp x19,x0
            b.eq .L_4109a4

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#18]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#19]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#20]
            mov w2,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0,#21]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            mov x3,x0
            mov x2,x19
            adrp x0, .L_413af0
            add x1,x0, :lo12:.L_413af0
            mov x0,x4
            bl fprintf

            adrp x0, .L_413b08
            add x0,x0, :lo12:.L_413b08
            bl error

            b .L_4109a4
.L_4108fc:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_41094c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w0,[x1,x0]
            b .L_410958
.L_41094c:

            mov w0,#0
            bl fill_inbuf

            and w0,w0,#255
.L_410958:

            strb w0,[sp,#71]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, window
            add x1,x1, :lo12:window
            mov w0,w0
            ldrb w2,[sp,#71]
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#8,lsl #12
            b.ne .L_4109a4

            bl flush_window
.L_4109a4:

            mov x0,x19
            sub x19,x0,#1
            cmp x0,#0
            b.ne .L_4108fc

            bl flush_window

            b .L_4109c8
.L_4109bc:

            adrp x0, .L_413b38
            add x0,x0, :lo12:.L_413b38
            bl error
.L_4109c8:

            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_410ae0

            str wzr,[sp,#76]
            b .L_410a58
.L_4109e4:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_410a34

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w2,[x1,x0]
            b .L_410a40
.L_410a34:

            mov w0,#0
            bl fill_inbuf

            and w2,w0,#255
.L_410a40:

            ldrsw x0,[sp,#76]
            add x1,sp,#48
            strb w2,[x1,x0]
            ldr w0,[sp,#76]
            add w0,w0,#1
            str w0,[sp,#76]
.L_410a58:

            ldr w0,[sp,#76]
            cmp w0,#7
            b.le .L_4109e4

            ldrb w0,[sp,#48]
            mov w1,w0
            ldrb w0,[sp,#49]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#50]
            mov w2,w0
            ldrb w0,[sp,#51]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#88]
            ldrb w0,[sp,#52]
            mov w1,w0
            ldrb w0,[sp,#53]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#54]
            mov w2,w0
            ldrb w0,[sp,#55]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#80]
            b .L_410bf4
.L_410ae0:

            adrp x0, ext_header
            add x0,x0, :lo12:ext_header
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410bf4

            str wzr,[sp,#76]
            b .L_410b70
.L_410afc:

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_410b4c

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, inptr
            add x1,x1, :lo12:inptr
            str w2,[x1]
            adrp x1, inbuf
            add x1,x1, :lo12:inbuf
            mov w0,w0
            ldrb w2,[x1,x0]
            b .L_410b58
.L_410b4c:

            mov w0,#0
            bl fill_inbuf

            and w2,w0,#255
.L_410b58:

            ldrsw x0,[sp,#76]
            add x1,sp,#48
            strb w2,[x1,x0]
            ldr w0,[sp,#76]
            add w0,w0,#1
            str w0,[sp,#76]
.L_410b70:

            ldr w0,[sp,#76]
            cmp w0,#15
            b.le .L_410afc

            ldrb w0,[sp,#52]
            mov w1,w0
            ldrb w0,[sp,#53]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#54]
            mov w2,w0
            ldrb w0,[sp,#55]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#88]
            ldrb w0,[sp,#60]
            mov w1,w0
            ldrb w0,[sp,#61]
            lsl w0,w0,#8
            orr w0,w1,w0
            sxtw x1,w0
            ldrb w0,[sp,#62]
            mov w2,w0
            ldrb w0,[sp,#63]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x0,x1,x0
            str x0,[sp,#80]
.L_410bf4:

            mov w1,#0
            adrp x0, outbuf
            add x0,x0, :lo12:outbuf
            bl updcrc

            mov x1,x0
            ldr x0,[sp,#88]
            cmp x0,x1
            b.eq .L_410c50

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413b58
            add x1,x0, :lo12:.L_413b58
            mov x0,x4
            bl fprintf

            mov w0,#1
            str w0,[sp,#72]
.L_410c50:

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            and x0,x0,#4294967295
            ldr x1,[sp,#80]
            cmp x1,x0
            b.eq .L_410ca8

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413b88
            add x1,x0, :lo12:.L_413b88
            mov x0,x4
            bl fprintf

            mov w0,#1
            str w0,[sp,#72]
.L_410ca8:

            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410e64

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            add w1,w0,#4
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w1,w0
            b.hs .L_410e64

            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x1,x0
            ldrb w0,[x0]
            mov w2,w0
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w0,w0
            add x1,x0,#1
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x1,x0
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w2,w0
            sxtw x1,w0
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w0,w0
            add x2,x0,#2
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x2,x0
            ldrb w0,[x0]
            mov w3,w0
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w0,[x0]
            mov w0,w0
            add x2,x0,#3
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x0,x2,x0
            ldrb w0,[x0]
            lsl w0,w0,#8
            orr w0,w3,w0
            sxtw x0,w0
            lsl x0,x0,#16
            orr x1,x1,x0
            mov x0,#19280
            movk x0,#1027,lsl #16
            cmp x1,x0
            b.ne .L_410e64

            adrp x0, to_stdout
            add x0,x0, :lo12:to_stdout
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410e28

            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_410e00

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413bb8
            add x1,x0, :lo12:.L_413bb8
            mov x0,x4
            bl fprintf
.L_410e00:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_410e64

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
            b .L_410e64
.L_410e28:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x4,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413be8
            add x1,x0, :lo12:.L_413be8
            mov x0,x4
            bl fprintf

            mov w0,#1
            str w0,[sp,#72]
.L_410e64:

            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            str wzr,[x0]
            adrp x0, pkzip
            add x0,x0, :lo12:pkzip
            ldr w1,[x0]
            adrp x0, ext_header
            add x0,x0, :lo12:ext_header
            str w1,[x0]
            ldr w0,[sp,#72]
            cmp w0,#0
            b.ne .L_410e9c

            mov w0,#0
            b .L_410ec8
.L_410e9c:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#1
            str w1,[x0]
            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_410ec4

            bl abort_gzip
.L_410ec4:

            ldr w0,[sp,#72]
.L_410ec8:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unzip, . - unzip
.align 2
#-----------------------------------
.globl copy
.type copy, @function
#-----------------------------------
copy:

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
            str w1,[sp,#24]
            bl __errno_location

            str wzr,[x0]
            b .L_410f60
.L_410ef0:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w2,w0
            adrp x0, inbuf
            add x1,x0, :lo12:inbuf
            ldr w0,[sp,#24]
            bl write_buf

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w1,w0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
            mov x2,#32768
            adrp x0, inbuf
            add x1,x0, :lo12:inbuf
            ldr w0,[sp,#28]
            bl read

            mov w1,w0
            adrp x0, insize
            add x0,x0, :lo12:insize
            str w1,[x0]
.L_410f60:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_410f88

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_410ef0
.L_410f88:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmn w0,#1
            b.ne .L_410fa0

            bl read_error
.L_410fa0:

            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            mov w0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size copy, . - copy
.align 2
#-----------------------------------
.globl updcrc
.type updcrc, @function
#-----------------------------------
updcrc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            str x19,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 19, -32
            str x0,[sp,#24]
            str w1,[sp,#20]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_410fe4

            mov x19,#4294967295
            b .L_411048
.L_410fe4:

            adrp x0, crc.0
            add x0,x0, :lo12:crc.0
            ldr x19,[x0]
            ldr w0,[sp,#20]
            cmp w0,#0
            b.eq .L_411048
.L_410ffc:

            mov w1,w19
            ldr x0,[sp,#24]
            add x2,x0,#1
            str x2,[sp,#24]
            ldrb w0,[x0]
            eor w0,w1,w0
            and w1,w0,#255
            adrp x0, crc_32_tab
            add x0,x0, :lo12:crc_32_tab
            sxtw x1,w1
            ldr x1,[x0,x1,lsl #3]
            lsr x0,x19,#8
            eor x19,x1,x0
            ldr w0,[sp,#20]
            sub w0,w0,#1
            str w0,[sp,#20]
            ldr w0,[sp,#20]
            cmp w0,#0
            b.ne .L_410ffc
.L_411048:

            adrp x0, crc.0
            add x0,x0, :lo12:crc.0
            str x19,[x0]
            eor x0,x19,#4294967295
            ldr x19,[sp],#32
.cfi_restore 19
.cfi_def_cfa_offset 0
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
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str wzr,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            str wzr,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            ldr w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            str w1,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str xzr,[x0]
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x1,[x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            nop
            nop
            nop
            nop
            ret 
.cfi_endproc 
.size clear_bufs, . - clear_bufs
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str w0,[sp,#28]
            adrp x0, insize
            add x0,x0, :lo12:insize
            str wzr,[x0]
.L_4110d4:

            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w3,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w1,w0
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            add x4,x1,x0
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w1,#32768
            sub w0,w1,w0
            mov w0,w0
            mov x2,x0
            mov x1,x4
            mov w0,w3
            bl read

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.eq .L_411184

            ldr w0,[sp,#44]
            cmn w0,#1
            b.ne .L_411148

            bl read_error

            b .L_411188
.L_411148:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w1,[x0]
            ldr w0,[sp,#44]
            add w1,w1,w0
            adrp x0, insize
            add x0,x0, :lo12:insize
            str w1,[x0]
            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w1,[x0]
            mov w0,#32767
            cmp w1,w0
            b.ls .L_4110d4

            b .L_411188
.L_411184:

            nop
            nop
            nop
            nop
.L_411188:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4111c0

            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_4111b0

            mov w0,#-1
            b .L_411208
.L_4111b0:

            bl flush_window

            bl __errno_location

            str wzr,[x0]
            bl read_error
.L_4111c0:

            adrp x0, insize
            add x0,x0, :lo12:insize
            ldr w0,[x0]
            mov w1,w0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            adrp x0, inptr
            add x0,x0, :lo12:inptr
            mov w1,#1
            str w1,[x0]
            adrp x0, inbuf
            add x0,x0, :lo12:inbuf
            ldrb w0,[x0]
.L_411208:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size fill_inbuf, . - fill_inbuf
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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_411294

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w2,w0
            adrp x0, outbuf
            add x1,x0, :lo12:outbuf
            mov w0,w3
            bl write_buf

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w1,w0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str wzr,[x0]
            b .L_411298
.L_411294:

            nop
            nop
            nop
            nop
.L_411298:

            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size flush_outbuf, . - flush_outbuf
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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_411354

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w1,w0
            adrp x0, window
            add x0,x0, :lo12:window
            bl updcrc

            adrp x0, test
            add x0,x0, :lo12:test
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_411318

            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w2,w0
            adrp x0, window
            add x1,x0, :lo12:window
            mov w0,w3
            bl write_buf
.L_411318:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w1,w0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_out
            add x0,x0, :lo12:bytes_out
            str x1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str wzr,[x0]
            b .L_411358
.L_411354:

            nop
            nop
            nop
            nop
.L_411358:

            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size flush_window, . - flush_window
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
            str w0,[sp,#28]
            str x1,[sp,#16]
            str w2,[sp,#24]
            b .L_4113a8
.L_411378:

            ldr w0,[sp,#44]
            cmn w0,#1
            b.ne .L_411388

            bl write_error
.L_411388:

            ldr w1,[sp,#24]
            ldr w0,[sp,#44]
            sub w0,w1,w0
            str w0,[sp,#24]
            ldr w0,[sp,#44]
            ldr x1,[sp,#16]
            add x0,x1,x0
            str x0,[sp,#16]
.L_4113a8:

            ldr w0,[sp,#24]
            mov x2,x0
            ldr x1,[sp,#16]
            ldr w0,[sp,#28]
            bl write

            str w0,[sp,#44]
            ldr w1,[sp,#44]
            ldr w0,[sp,#24]
            cmp w1,w0
            b.ne .L_411378

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
.size write_buf, . - write_buf
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#40]
            b .L_411454
.L_4113f8:

            bl __ctype_b_loc

            ldr x1,[x0]
            ldr x0,[sp,#40]
            ldrb w0,[x0]
            and x0,x0,#255
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#256
            cmp w0,#0
            b.eq .L_411438

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            bl tolower

            and w1,w0,#255
            b .L_411440
.L_411438:

            ldr x0,[sp,#40]
            ldrb w1,[x0]
.L_411440:

            ldr x0,[sp,#40]
            strb w1,[x0]
            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_411454:

            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_4113f8

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size strlwr, . - strlwr
.align 4
#-----------------------------------
.globl base_name
.type base_name, @function
#-----------------------------------
base_name:

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
            mov w1,#47
            ldr x0,[sp,#24]
            bl strrchr

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_4114a4

            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#24]
.L_4114a4:

            ldr x0,[sp,#24]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            ldr x0,[sp,#24]
            bl unlink

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x0,[sp,#24]
            mov w1,#46
            ldr x0,[sp,#24]
            bl strrchr

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.eq .L_411554

            ldr x1,[sp,#40]
            ldr x0,[sp,#24]
            cmp x1,x0
            b.ne .L_411518

            ldr x0,[sp,#40]
            add x0,x0,#1
            str x0,[sp,#40]
.L_411518:

            ldr x0,[sp,#40]
            sub x0,x0,#1
            str x0,[sp,#40]
            ldr x0,[sp,#40]
            ldrb w0,[x0]
            cmp w0,#46
            b.ne .L_411540

            ldr x0,[sp,#40]
            mov w1,#95
            strb w1,[x0]
.L_411540:

            ldr x1,[sp,#40]
            ldr x0,[sp,#24]
            cmp x1,x0
            b.ne .L_411518

            b .L_411558
.L_411554:

            nop
            nop
            nop
            nop
.L_411558:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size make_simple_name, . - make_simple_name
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
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str x2,[sp,#24]
            ldr x0,[sp,#40]
            ldr w0,[x0]
            str w0,[sp,#52]
            str wzr,[sp,#48]
            ldr x0,[sp,#24]
            bl getenv

            str x0,[sp,#24]
            ldr x0,[sp,#24]
            cmp x0,#0
            b.ne .L_4115a4

            mov x0,#0
            b .L_4117e0
.L_4115a4:

            ldr x0,[sp,#24]
            bl strlen

            add w0,w0,#1
            bl xmalloc

            str x0,[sp,#72]
            ldr x1,[sp,#24]
            ldr x0,[sp,#72]
            bl strcpy

            str x0,[sp,#24]
            ldr x0,[sp,#24]
            str x0,[sp,#72]
            b .L_411650
.L_4115d4:

            adrp x0, .L_413c18
            add x1,x0, :lo12:.L_413c18
            ldr x0,[sp,#72]
            bl strspn

            mov x1,x0
            ldr x0,[sp,#72]
            add x0,x0,x1
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_411664

            adrp x0, .L_413c18
            add x1,x0, :lo12:.L_413c18
            ldr x0,[sp,#72]
            bl strcspn

            mov x1,x0
            ldr x0,[sp,#72]
            add x0,x0,x1
            str x0,[sp,#72]
            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#0
            b.eq .L_411644

            ldr x0,[sp,#72]
            add x1,x0,#1
            str x1,[sp,#72]
            strb wzr,[x0]
.L_411644:

            ldr w0,[sp,#48]
            add w0,w0,#1
            str w0,[sp,#48]
.L_411650:

            ldr x0,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_4115d4

            b .L_411668
.L_411664:

            nop
            nop
            nop
            nop
.L_411668:

            ldr w0,[sp,#48]
            cmp w0,#0
            b.ne .L_411684

            ldr x0,[sp,#24]
            bl free

            mov x0,#0
            b .L_4117e0
.L_411684:

            ldr x0,[sp,#40]
            ldr w1,[x0]
            ldr w0,[sp,#48]
            add w1,w1,w0
            ldr x0,[sp,#40]
            str w1,[x0]
            ldr x0,[sp,#40]
            ldr w0,[x0]
            add w0,w0,#1
            sxtw x0,w0
            mov x1,#8
            bl calloc

            str x0,[sp,#56]
            ldr x0,[sp,#56]
            cmp x0,#0
            b.ne .L_4116d0

            adrp x0, .L_413ab0
            add x0,x0, :lo12:.L_413ab0
            bl error
.L_4116d0:

            ldr x0,[sp,#32]
            ldr x0,[x0]
            str x0,[sp,#64]
            ldr x0,[sp,#32]
            ldr x1,[sp,#56]
            str x1,[x0]
            ldr w0,[sp,#52]
            sub w1,w0,#1
            str w1,[sp,#52]
            cmp w0,#0
            b.ge .L_411708

            adrp x0, .L_413c20
            add x0,x0, :lo12:.L_413c20
            bl error
.L_411708:

            ldr x1,[sp,#64]
            add x0,x1,#8
            str x0,[sp,#64]
            ldr x0,[sp,#56]
            add x2,x0,#8
            str x2,[sp,#56]
            ldr x1,[x1]
            str x1,[x0]
            ldr x0,[sp,#24]
            str x0,[sp,#72]
            b .L_411790
.L_411734:

            adrp x0, .L_413c18
            add x1,x0, :lo12:.L_413c18
            ldr x0,[sp,#72]
            bl strspn

            mov x1,x0
            ldr x0,[sp,#72]
            add x0,x0,x1
            str x0,[sp,#72]
            ldr x0,[sp,#56]
            add x1,x0,#8
            str x1,[sp,#56]
            ldr x1,[sp,#72]
            str x1,[x0]
            nop
            nop
            nop
            nop
.L_41176c:

            ldr x0,[sp,#72]
            add x1,x0,#1
            str x1,[sp,#72]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_41176c

            ldr w0,[sp,#48]
            sub w0,w0,#1
            str w0,[sp,#48]
.L_411790:

            ldr w0,[sp,#48]
            cmp w0,#0
            b.gt .L_411734

            b .L_4117c0
.L_4117a0:

            ldr x1,[sp,#64]
            add x0,x1,#8
            str x0,[sp,#64]
            ldr x0,[sp,#56]
            add x2,x0,#8
            str x2,[sp,#56]
            ldr x1,[x1]
            str x1,[x0]
.L_4117c0:

            ldr w0,[sp,#52]
            sub w1,w0,#1
            str w1,[sp,#52]
            cmp w0,#0
            b.ne .L_4117a0

            ldr x0,[sp,#56]
            str xzr,[x0]
            ldr x0,[sp,#24]
.L_4117e0:

            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size add_envopt, . - add_envopt
.align 3
#-----------------------------------
.globl error
.type error, @function
#-----------------------------------
error:

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
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr x4,[sp,#24]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413c28
            add x1,x0, :lo12:.L_413c28
            mov x0,x5
            bl fprintf

            bl abort_gzip

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
.size error, . - error
.align 2
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
            mov fp,sp
            str x0,[sp,#24]
            adrp x0, quiet
            add x0,x0, :lo12:quiet
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_411894

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x5,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x1,[x0]
            ldr x4,[sp,#24]
            adrp x0, ifname
            add x3,x0, :lo12:ifname
            mov x2,x1
            adrp x0, .L_413c38
            add x1,x0, :lo12:.L_413c38
            mov x0,x5
            bl fprintf
.L_411894:

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            ldr w0,[x0]
            cmp w0,#0
            b.ne .L_4118b8

            adrp x0, exit_code
            add x0,x0, :lo12:exit_code
            mov w1,#2
            str w1,[x0]
.L_4118b8:

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
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#28]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413c50
            add x1,x0, :lo12:.L_413c50
            mov x0,x3
            bl fprintf

            ldr w0,[sp,#28]
            cmp w0,#0
            b.eq .L_41192c

            bl __errno_location

            ldr w1,[sp,#28]
            str w1,[x0]
            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl perror

            b .L_411950
.L_41192c:

            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, ifname
            add x2,x0, :lo12:ifname
            adrp x0, .L_413c58
            add x1,x0, :lo12:.L_413c58
            mov x0,x3
            bl fprintf
.L_411950:

            bl abort_gzip

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
.size read_error, . - read_error
.align 4
#-----------------------------------
.globl write_error
.type write_error, @function
#-----------------------------------
write_error:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            bl __errno_location

            ldr w0,[x0]
            str w0,[sp,#28]
            adrp x0, stderr
            add x0,x0, :lo12:stderr
            ldr x3,[x0]
            adrp x0, progname
            add x0,x0, :lo12:progname
            ldr x0,[x0]
            mov x2,x0
            adrp x0, .L_413c50
            add x1,x0, :lo12:.L_413c50
            mov x0,x3
            bl fprintf

            bl __errno_location

            ldr w1,[sp,#28]
            str w1,[x0]
            adrp x0, ofname
            add x0,x0, :lo12:ofname
            bl perror

            bl abort_gzip

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
.size write_error, . - write_error
.align 3
#-----------------------------------
.globl display_ratio
.type display_ratio, @function
#-----------------------------------
display_ratio:

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
            ldr x0,[sp,#32]
            cmp x0,#0
            b.eq .L_411a0c

            ldr d31,[sp,#40]
            scvtf d31,d31
            mov x0,#4636737291354636288
            fmov d30,x0
            fmul d30,d31,d30
            ldr d31,[sp,#32]
            scvtf d31,d31
            fdiv d31,d30,d31
            b .L_411a10
.L_411a0c:

            movi d31,#0
.L_411a10:

            fmov d0,d31
            adrp x0, .L_413c78
            add x1,x0, :lo12:.L_413c78
            ldr x0,[sp,#24]
            bl fprintf

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
            stp fp,lr,[sp,#-128]!
.cfi_def_cfa_offset 128
.cfi_offset 29, -128
.cfi_offset 30, -120
            mov fp,sp
            str x0,[sp,#40]
            str x1,[sp,#32]
            str w2,[sp,#28]
            add x0,sp,#56
            add x0,x0,#64
            str x0,[sp,#120]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.ge .L_411af8
.L_411a5c:

            ldr x1,[sp,#32]
            mov x0,#7378697629483820646
            movk x0,#26215
            smulh x0,x1,x0
            asr x2,x0,#2
            asr x0,x1,#63
            sub x2,x2,x0
            mov x0,x2
            lsl x0,x0,#2
            add x0,x0,x2
            lsl x0,x0,#1
            sub x2,x1,x0
            and w0,w2,#255
            ldr x1,[sp,#120]
            sub x1,x1,#1
            str x1,[sp,#120]
            mov w1,#48
            sub w0,w1,w0
            and w1,w0,#255
            ldr x0,[sp,#120]
            strb w1,[x0]
            ldr x0,[sp,#32]
            mov x1,#7378697629483820646
            movk x1,#26215
            smulh x1,x0,x1
            asr x1,x1,#2
            asr x0,x0,#63
            sub x0,x1,x0
            str x0,[sp,#32]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_411a5c

            ldr x0,[sp,#120]
            sub x0,x0,#1
            str x0,[sp,#120]
            ldr x0,[sp,#120]
            mov w1,#45
            strb w1,[x0]
            b .L_411b74
.L_411af8:

            ldr x1,[sp,#32]
            mov x0,#7378697629483820646
            movk x0,#26215
            smulh x0,x1,x0
            asr x2,x0,#2
            asr x0,x1,#63
            sub x2,x2,x0
            mov x0,x2
            lsl x0,x0,#2
            add x0,x0,x2
            lsl x0,x0,#1
            sub x2,x1,x0
            and w0,w2,#255
            ldr x1,[sp,#120]
            sub x1,x1,#1
            str x1,[sp,#120]
            add w0,w0,#48
            and w1,w0,#255
            ldr x0,[sp,#120]
            strb w1,[x0]
            ldr x0,[sp,#32]
            mov x1,#7378697629483820646
            movk x1,#26215
            smulh x1,x0,x1
            asr x1,x1,#2
            asr x0,x0,#63
            sub x0,x1,x0
            str x0,[sp,#32]
            ldr x0,[sp,#32]
            cmp x0,#0
            b.ne .L_411af8
.L_411b74:

            ldr w1,[sp,#28]
            add x0,sp,#56
            add x0,x0,#64
            ldr x2,[sp,#120]
            sub x0,x0,x2
            sub w0,w1,w0
            str w0,[sp,#28]
            b .L_411ba0
.L_411b94:

            ldr x1,[sp,#40]
            mov w0,#32
            bl putc
.L_411ba0:

            ldr w0,[sp,#28]
            sub w1,w0,#1
            str w1,[sp,#28]
            cmp w0,#0
            b.gt .L_411b94

            b .L_411bd4
.L_411bb8:

            ldr x0,[sp,#120]
            ldrb w0,[x0]
            ldr x1,[sp,#40]
            bl putc

            ldr x0,[sp,#120]
            add x0,x0,#1
            str x0,[sp,#120]
.L_411bd4:

            add x0,sp,#56
            add x0,x0,#64
            ldr x1,[sp,#120]
            cmp x1,x0
            b.lo .L_411bb8

            nop
            nop
            nop
            nop
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
.size fprint_off, . - fprint_off
.align 3
#-----------------------------------
.globl xmalloc
.type xmalloc, @function
#-----------------------------------
xmalloc:

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
            bl malloc

            str x0,[sp,#40]
            ldr x0,[sp,#40]
            cmp x0,#0
            b.ne .L_411c28

            adrp x0, .L_413ab0
            add x0,x0, :lo12:.L_413ab0
            bl error
.L_411c28:

            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size xmalloc, . - xmalloc
.align 2
#-----------------------------------
.globl yesno
.type yesno, @function
#-----------------------------------
yesno:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            str wzr,[sp,#156]
            b .L_411cac
.L_411c44:

            ldr w0,[sp,#156]
            cmp w0,#0
            b.le .L_411c5c

            ldr w0,[sp,#156]
            cmp w0,#126
            b.le .L_411c8c
.L_411c5c:

            ldr w0,[sp,#156]
            cmp w0,#0
            b.ne .L_411cac

            bl __ctype_b_loc

            ldr x1,[x0]
            ldrsw x0,[sp,#152]
            lsl x0,x0,#1
            add x0,x1,x0
            ldrh w0,[x0]
            and w0,w0,#8192
            cmp w0,#0
            b.ne .L_411cac
.L_411c8c:

            ldr w0,[sp,#156]
            add w1,w0,#1
            str w1,[sp,#156]
            ldr w1,[sp,#152]
            and w2,w1,#255
            sxtw x0,w0
            add x1,sp,#24
            strb w2,[x1,x0]
.L_411cac:

            bl getchar

            str w0,[sp,#152]
            ldr w0,[sp,#152]
            cmn w0,#1
            b.eq .L_411ccc

            ldr w0,[sp,#152]
            cmp w0,#10
            b.ne .L_411c44
.L_411ccc:

            ldrsw x0,[sp,#156]
            add x1,sp,#24
            strb wzr,[x1,x0]
            add x0,sp,#24
            bl rpmatch

            cmp w0,#1
            cset w0,eq
            and w0,w0,#255
            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size yesno, . - yesno
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
            mov fp,sp
            str w0,[sp,#28]
            str w1,[sp,#24]
            strb wzr,[sp,#63]
            strh wzr,[sp,#46]
            strh wzr,[sp,#44]
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w1,[sp,#28]
            str w1,[x0]
            adrp x0, ofd
            add x0,x0, :lo12:ofd
            ldr w1,[sp,#24]
            str w1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            str wzr,[x0]
            adrp x0, method
            add x0,x0, :lo12:method
            mov w1,#8
            str w1,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            mov w2,#31
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_411d94

            bl flush_outbuf
.L_411d94:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            mov w2,#139
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_411ddc

            bl flush_outbuf
.L_411ddc:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,#8
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_411e24

            bl flush_outbuf
.L_411e24:

            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_411e44

            ldrb w0,[sp,#63]
            orr w0,w0,#8
            strb w0,[sp,#63]
.L_411e44:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            ldrb w2,[sp,#63]
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_411e8c

            bl flush_outbuf
.L_411e8c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_411f78

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_411ed4

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            and w3,w0,#255
            b .L_411ed8
.L_411ed4:

            mov w3,#0
.L_411ed8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_411f40

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            and w0,w0,#65535
            asr w0,w0,#8
            and w3,w0,#255
            b .L_411f44
.L_411f40:

            mov w3,#0
.L_411f44:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            b .L_412078
.L_411f78:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_411fa8

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            and w3,w0,#255
            b .L_411fac
.L_411fa8:

            mov w3,#0
.L_411fac:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_411ff4

            bl flush_outbuf
.L_411ff4:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_41202c

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            and w0,w0,#65535
            asr w0,w0,#8
            and w3,w0,#255
            b .L_412030
.L_41202c:

            mov w3,#0
.L_412030:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412078

            bl flush_outbuf
.L_412078:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_412170

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_4120c4

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            lsr x0,x0,#16
            and w3,w0,#255
            b .L_4120c8
.L_4120c4:

            mov w3,#0
.L_4120c8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_412138

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w0,w0,#65535
            and w3,w0,#255
            b .L_41213c
.L_412138:

            mov w3,#0
.L_41213c:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            b .L_41227c
.L_412170:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_4121a4

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            lsr x0,x0,#16
            and w3,w0,#255
            b .L_4121a8
.L_4121a4:

            mov w3,#0
.L_4121a8:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_4121f0

            bl flush_outbuf
.L_4121f0:

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            mov x1,x0
            mov x0,#4294967295
            cmp x1,x0
            b.hi .L_412230

            adrp x0, time_stamp
            add x0,x0, :lo12:time_stamp
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w0,w0,#65535
            and w3,w0,#255
            b .L_412234
.L_412230:

            mov w3,#0
.L_412234:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,w3
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_41227c

            bl flush_outbuf
.L_41227c:

            mov w1,#0
            mov x0,#0
            bl updcrc

            mov x1,x0
            adrp x0, crc
            add x0,x0, :lo12:crc
            str x1,[x0]
            ldr w0,[sp,#24]
            bl bi_init

            add x2,sp,#46
            adrp x0, method
            add x1,x0, :lo12:method
            mov x0,x2
            bl ct_init

            adrp x0, level
            add x0,x0, :lo12:level
            ldr w0,[x0]
            add x1,sp,#44
            bl lm_init

            ldrh w3,[sp,#44]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412314

            bl flush_outbuf
.L_412314:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            mov w2,#3
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_41235c

            bl flush_outbuf
.L_41235c:

            adrp x0, save_orig_name
            add x0,x0, :lo12:save_orig_name
            ldr w0,[x0]
            cmp w0,#0
            b.eq .L_4123e4

            adrp x0, ifname
            add x0,x0, :lo12:ifname
            bl base_name

            str x0,[sp,#48]
.L_412380:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            ldr x1,[sp,#48]
            ldrb w2,[x1]
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_4123cc

            bl flush_outbuf
.L_4123cc:

            ldr x0,[sp,#48]
            add x1,x0,#1
            str x1,[sp,#48]
            ldrb w0,[x0]
            cmp w0,#0
            b.ne .L_412380
.L_4123e4:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            mov w1,w0
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str x1,[x0]
            bl deflate

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_4124a4

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_412558
.L_4124a4:

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_4124f8

            bl flush_outbuf
.L_4124f8:

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412558

            bl flush_outbuf
.L_412558:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_412600

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            lsr x3,x0,#16
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_4126bc
.L_412600:

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            lsr x3,x0,#16
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412658

            bl flush_outbuf
.L_412658:

            adrp x0, crc
            add x0,x0, :lo12:crc
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_4126bc

            bl flush_outbuf
.L_4126bc:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_41275c

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_412810
.L_41275c:

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x3,[x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_4127b0

            bl flush_outbuf
.L_4127b0:

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412810

            bl flush_outbuf
.L_412810:

            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w1,[x0]
            mov w0,#16381
            cmp w1,w0
            b.hi .L_4128b8

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            lsr x3,x0,#16
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            b .L_412974
.L_4128b8:

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            lsr x3,x0,#16
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412910

            bl flush_outbuf
.L_412910:

            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            lsr x0,x0,#16
            and w0,w0,#65535
            lsr w0,w0,#8
            and w3,w0,#65535
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            add w2,w0,#1
            adrp x1, outcnt
            add x1,x1, :lo12:outcnt
            str w2,[x1]
            and w2,w3,#255
            adrp x1, outbuf
            add x1,x1, :lo12:outbuf
            mov w0,w0
            strb w2,[x1,x0]
            adrp x0, outcnt
            add x0,x0, :lo12:outcnt
            ldr w0,[x0]
            cmp w0,#4,lsl #12
            b.ne .L_412974

            bl flush_outbuf
.L_412974:

            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            ldr x0,[x0]
            add x0,x0,#16
            mov x1,x0
            adrp x0, header_bytes
            add x0,x0, :lo12:header_bytes
            str x1,[x0]
            bl flush_outbuf

            mov w0,#0
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size zip, . - zip
.align 2
#-----------------------------------
.globl file_read
.type file_read, @function
#-----------------------------------
file_read:

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
            adrp x0, ifd
            add x0,x0, :lo12:ifd
            ldr w0,[x0]
            ldr w1,[sp,#20]
            mov x2,x1
            ldr x1,[sp,#24]
            bl read

            str w0,[sp,#44]
            ldr w0,[sp,#44]
            cmp w0,#0
            b.ne .L_4129e8

            ldr w0,[sp,#44]
            b .L_412a40
.L_4129e8:

            ldr w0,[sp,#44]
            cmn w0,#1
            b.ne .L_412a00

            bl read_error

            mov w0,#-1
            b .L_412a40
.L_412a00:

            ldr w1,[sp,#44]
            ldr x0,[sp,#24]
            bl updcrc

            mov x1,x0
            adrp x0, crc
            add x0,x0, :lo12:crc
            str x1,[x0]
            ldr w1,[sp,#44]
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            ldr x0,[x0]
            add x1,x1,x0
            adrp x0, bytes_in
            add x0,x0, :lo12:bytes_in
            str x1,[x0]
            ldr w0,[sp,#44]
.L_412a40:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size file_read, . - file_read
.align 3
#-----------------------------------
.globl rpmatch
.type rpmatch, @function
#-----------------------------------
rpmatch:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#16
.cfi_def_cfa_offset 16
            str x0,[sp,#8]
            ldr x0,[sp,#8]
            ldrb w0,[x0]
            cmp w0,#121
            b.eq .L_412aa0

            ldr x0,[sp,#8]
            ldrb w0,[x0]
            cmp w0,#89
            b.eq .L_412aa0

            ldr x0,[sp,#8]
            ldrb w0,[x0]
            cmp w0,#110
            b.eq .L_412a90

            ldr x0,[sp,#8]
            ldrb w0,[x0]
            cmp w0,#78
            b.ne .L_412a98
.L_412a90:

            mov w0,#0
            b .L_412aa4
.L_412a98:

            mov w0,#-1
            b .L_412aa4
.L_412aa0:

            mov w0,#1
.L_412aa4:

            add sp,sp,#16
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size rpmatch, . - rpmatch
.align 2
#-----------------------------------
.globl getopt_long
.type getopt_long, @function
#-----------------------------------
getopt_long:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str w0,[sp,#60]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str x3,[sp,#32]
            str x4,[sp,#24]
            mov w5,#0
            ldr x4,[sp,#24]
            ldr x3,[sp,#32]
            ldr x2,[sp,#40]
            ldr x1,[sp,#48]
            ldr w0,[sp,#60]
            bl _getopt_internal

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size getopt_long, . - getopt_long
.align 2
#-----------------------------------
.globl getopt_long_only
.type getopt_long_only, @function
#-----------------------------------
getopt_long_only:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str w0,[sp,#60]
            str x1,[sp,#48]
            str x2,[sp,#40]
            str x3,[sp,#32]
            str x4,[sp,#24]
            mov w5,#1
            ldr x4,[sp,#24]
            ldr x3,[sp,#32]
            ldr x2,[sp,#40]
            ldr x1,[sp,#48]
            ldr w0,[sp,#60]
            bl _getopt_internal

            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
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
.L_412b38:

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
.L_412b40:
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
.L_412b48:
          .string "bad pack level"
          .zero 1
.L_412b58:
          .string "POSIXLY_CORRECT"
.L_412b68:
          .string "--"
          .zero 5
.L_412b70:
          .string "%s: option `%s' is ambiguous\n"
          .zero 2
.L_412b90:
          .string "%s: option `--%s' doesn't allow an argument\n"
          .zero 3
.L_412bc0:
          .string "%s: option `%c%s' doesn't allow an argument\n"
          .zero 3
.L_412bf0:
          .string "%s: option `%s' requires an argument\n"
          .zero 2
.L_412c18:
          .string "%s: unrecognized option `--%s'\n"
.L_412c38:
          .string "%s: unrecognized option `%c%s'\n"
.L_412c58:
          .zero 8
.L_412c60:
          .string "%s: illegal option -- %c\n"
          .zero 6
.L_412c80:
          .string "%s: invalid option -- %c\n"
          .zero 6
.L_412ca0:
          .string "%s: option requires an argument -- %c\n"
          .zero 1
.L_412cc8:
          .string "%s: option `-W %s' is ambiguous\n"
          .zero 7
.L_412cf0:
          .string "%s: option `-W %s' doesn't allow an argument\n"
          .zero 2
.L_412d20:
          .string "Copyright 2002 Free Software Foundation"
.L_412d48:
          .string "Copyright 1992-1993 Jean-loup Gailly"
          .zero 3
.L_412d70:
          .string "This program comes with ABSOLUTELY NO WARRANTY."
.L_412da0:
          .string "You may redistribute copies of this program"
          .zero 4
.L_412dd0:
          .string "under the terms of the GNU General Public License."
          .zero 5
.L_412e08:
          .string "For more information about these matters, see the file named COPYING."
          .zero 2
.L_412e50:
          .string "ascii"
          .zero 2
.L_412e58:
          .string "to-stdout"
          .zero 6
.L_412e68:
          .ascii "std"
          .string "out"
          .zero 1
.L_412e70:
          .string "decompress"
          .zero 5
.L_412e80:
          .string "uncompress"
          .zero 5
.L_412e90:
          .string "force"
          .zero 2
.L_412e98:
          .string "help"
          .zero 3
.L_412ea0:
          .string "list"
          .zero 3
.L_412ea8:
          .string "license"
.L_412eb0:
          .string "no-name"
.L_412eb8:
          .string "name"
          .zero 3
.L_412ec0:
          .string "quiet"
          .zero 2
.L_412ec8:
          .string "silent"
          .zero 1
.L_412ed0:
          .string "recursive"
          .zero 6
.L_412ee0:
          .string "suffix"
          .zero 1
.L_412ee8:
          .string "test"
          .zero 3
.L_412ef0:
          .string "no-time"
.L_412ef8:
          .string "verbose"
.L_412f00:
          .string "version"
.L_412f08:
          .string "fast"
          .zero 3
.L_412f10:
          .string "best"
          .zero 3
.L_412f18:
          .string "lzw"
          .zero 4
.L_412f20:
          .string "bits"
          .zero 3
.L_412f28:
          .string "rsyncable"
          .zero 6
.L_412f38:
          .string "r"
          .zero 6
.L_412f40:
          .string "usage: %s [-%scdfhlLnN%stvV19] [-S suffix] [file ...]\n"
          .zero 1
.L_412f78:
          .string "2002-09-30"
          .zero 5
.L_412f88:
          .string "1.3.5"
          .zero 2
.L_412f90:
          .string "%s %s\n(%s)\n"
          .zero 4
.L_412fa0:
          .string "UTIME"
          .zero 2
.L_412fa8:
          .string "DIRENT"
          .zero 1
.L_412fb0:
          .string "Compilation options:\n%s %s "
          .zero 4
.L_412fd0:
          .string "STDC_HEADERS "
          .zero 2
.L_412fe0:
          .string "HAVE_UNISTD_H "
          .zero 1
.L_412ff0:
          .string "HAVE_MEMORY_H "
          .zero 1
.L_413000:
          .string "HAVE_STRING_H "
          .zero 1
.L_413010:
          .string "HAVE_LSTAT "
          .zero 4
.L_413020:
          .string "Written by Jean-loup Gailly."
          .zero 3
.L_413040:
          .string "%s: "
          .zero 3
.L_413048:
          .string ".exe"
          .zero 3
.L_413050:
          .string "GZIP"
          .zero 3
.L_413058:
          .string "un"
          .zero 5
.L_413060:
          .string "gun"
          .zero 4
.L_413068:
          .string "cat"
          .zero 4
.L_413070:
          .string "gzcat"
          .zero 2
.L_413078:
          .string ".gz"
          .zero 4
.L_413080:
          .string "%s: -b operand is not an integer\n"
          .zero 6
.L_4130a8:
          .string "%s: -Z not supported in this version\n"
          .zero 2
.L_4130d0:
          .string "ab:cdfhH?lLmMnNqrS:tvVZ123456789"
          .zero 7
.L_4130f8:
          .string "%s: option --ascii ignored on this system\n"
          .zero 5
.L_413128:
          .string "%s: incorrect suffix '%s'\n"
          .zero 1
.L_413144:
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c3c-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a20-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a20-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a74-.L_405900)/4
          .long (.L_405a98-.L_405900)/4
          .long (.L_405ad4-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405b30-.L_405900)/4
          .long (.L_405b44-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405bf0-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c00-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405900-.L_405900)/4
          .long (.L_405914-.L_405900)/4
          .long (.L_4059d8-.L_405900)/4
          .long (.L_4059ec-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a00-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a20-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405a30-.L_405900)/4
          .long (.L_405a84-.L_405900)/4
          .long (.L_405aa8-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405afc-.L_405900)/4
          .long (.L_405b1c-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405b80-.L_405900)/4
          .long (.L_405c54-.L_405900)/4
          .long (.L_405bc4-.L_405900)/4
          .zero 4
.L_413260:
          .string "read from"
          .zero 6
.L_413270:
          .string "written to"
          .zero 5
.L_413280:
          .string "de"
          .zero 5
.L_413288:
          .string "%s: compressed data not %s a terminal. Use -f to force %scompression.\n"
          .zero 1
.L_4132d0:
          .string "For help, type: %s -h\n"
          .zero 1
.L_4132e8:
          .ascii "stdi"
          .string "n"
          .zero 2
.L_4132f0:
          .string "standard input"
          .zero 1
.L_413300:
          .string " OK\n"
          .zero 3
.L_413308:
          .string "-"
          .zero 6
.L_413310:
          .string "%s: %s is a directory -- ignored\n"
          .zero 6
.L_413338:
          .string "%s: %s is not a directory or a regular file - ignored\n"
          .zero 1
.L_413370:
          .string "%s: %s has %lu other link%c -- unchanged\n"
          .zero 6
.L_4133a0:
          .string "%s: %s compressed to %s\n"
          .zero 7
.L_4133c0:
          .string "%s:\t"
          .zero 3
.L_4133c8:
          .string " OK"
          .zero 4
.L_4133d0:
          .string " -- replaced with %s"
          .zero 3
.L_4133e8:
          .string "%s: %s: warning, name truncated\n"
          .zero 7
.L_413410:
          .string "z"
          .zero 6
.L_413418:
          .string "%s: %s: file name too long\n"
          .zero 4
.L_413438:
          .string "%s: %s: unknown suffix -- ignored\n"
          .zero 5
.L_413460:
          .ascii ".tgz"
          .zero 4
.L_413468:
          .string ".taz"
          .zero 3
.L_413470:
          .byte 0x2e
          .byte 0x74
          .byte 0x61
          .byte 0x72
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413478:
          .string "%s: %s already has %s suffix -- unchanged\n"
          .zero 5
.L_4134a8:
          .byte 0x1f
          .byte 0x8b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4134b0:
          .byte 0x1f
          .byte 0x9e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4134b8:
          .string "%s: %s: unknown method %d -- not supported\n"
          .zero 4
.L_4134e8:
          .string "%s: %s is encrypted -- not supported\n"
          .zero 2
.L_413510:
          .string "%s: %s is a a multi-part gzip file -- not supported\n"
          .zero 3
.L_413548:
          .string "%s: %s has flags 0x%x -- not supported\n"
.L_413570:
          .string "%s: %s: part number %u\n"
.L_413588:
          .string "%s: %s: extra field of %u bytes ignored\n"
          .zero 7
.L_4135b8:
          .string "corrupted input -- file name too large"
          .zero 1
.L_4135e0:
          .byte 0x50
          .byte 0x4b
          .byte 0x3
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4135e8:
          .byte 0x1f
          .byte 0x1e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4135f0:
          .byte 0x1f
          .byte 0x9d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_4135f8:
          .byte 0x1f
          .byte 0xa0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_413600:
          .string "\n%s: %s: not in gzip format\n"
          .zero 3
.L_413620:
          .string "\n%s: %s: decompression OK, trailing zero bytes ignored\n"
.L_413658:
          .string "\n%s: %s: decompression OK, trailing garbage ignored\n"
          .zero 3
.L_413690:
          .string "method  crc     date  time  "
          .zero 3
.L_4136b0:
          .string "uncompressed"
          .zero 3
.L_4136c0:
          .string "compressed"
          .zero 5
.L_4136d0:
          .string "%*.*s %*.*s  ratio uncompressed_name\n"
          .zero 2
.L_4136f8:
          .string "                            "
          .zero 3
.L_413718:
          .string " (totals)"
          .zero 6
.L_413728:
          .string "%5s %08lx %11s "
.L_413738:
          .string " %s\n"
          .zero 3
.L_413740:
          .string "name too short"
          .zero 1
.L_413750:
          .string "can't recover suffix\n"
          .zero 2
.L_413768:
          .string "."
          .zero 6
.L_413770:
          .string "internal error in shorten_name"
          .zero 1
.L_413790:
          .string "%s: %s: cannot %scompress onto itself\n"
          .zero 1
.L_4137b8:
          .string "%s: %s and %s are the same file\n"
          .zero 7
.L_4137e0:
          .string "%s: %s already exists;"
          .zero 1
.L_4137f8:
          .string " do you wish to overwrite (y or n)? "
          .zero 3
.L_413820:
          .string "\tnot overwritten\n"
          .zero 6
.L_413838:
          .string "%s: time stamp restored\n"
          .zero 7
.L_413858:
          .string ".."
          .zero 5
.L_413860:
          .string "%s: %s/%s: pathname too long\n"
          .zero 2
.L_413880:
          .string " incomplete literal tree\n"
          .zero 6
.L_4138a0:
          .string " incomplete distance tree\n"
          .zero 5
.L_4138c0:
          .string "output in compress .Z format not supported\n"
          .zero 4
.L_4138f0:
          .string "Bad table\n"
          .zero 5
.L_413900:
          .string "\n%s: %s: warning, unknown flags 0x%x\n"
          .zero 2
.L_413928:
          .string "\n%s: %s: compressed with %d bits, can only handle %d bits\n"
          .zero 5
.L_413968:
          .string "corrupt input."
          .zero 1
.L_413978:
          .string "corrupt input. Use zcat to recover some data."
          .zero 2
.L_4139a8:
          .string "invalid compressed data -- Huffman code > 32 bits"
          .zero 6
.L_4139e0:
          .string "too many leaves in Huffman tree"
.L_413a00:
          .string "invalid compressed data--length error"
          .zero 2
.L_413a28:
          .string "\n%s: %s: not a valid zip file\n"
          .zero 1
.L_413a48:
          .string "\n%s: %s: first entry not deflated or stored -- use unzip\n"
          .zero 6
.L_413a88:
          .string "\n%s: %s: encrypted file -- use unzip\n"
          .zero 2
.L_413ab0:
          .string "out of memory"
          .zero 2
.L_413ac0:
          .string "invalid compressed data--format violated"
          .zero 7
.L_413af0:
          .string "len %ld, siz %ld\n"
          .zero 6
.L_413b08:
          .string "invalid compressed data--length mismatch"
          .zero 7
.L_413b38:
          .string "internal error, invalid method"
          .zero 1
.L_413b58:
          .string "\n%s: %s: invalid compressed data--crc error\n"
          .zero 3
.L_413b88:
          .string "\n%s: %s: invalid compressed data--length error\n"
.L_413bb8:
          .string "%s: %s has more than one entry--rest ignored\n"
          .zero 2
.L_413be8:
          .string "%s: %s has more than one entry -- unchanged\n"
          .zero 3
.L_413c18:
          .string " \t"
          .zero 5
.L_413c20:
          .string "argc<=0"
.L_413c28:
          .string "\n%s: %s: %s\n"
          .zero 3
.L_413c38:
          .string "%s: %s: warning: %s\n"
          .zero 3
.L_413c50:
          .string "\n%s: "
          .zero 2
.L_413c58:
          .string "%s: unexpected end of file\n"
          .zero 4
.L_413c78:
          .string "%5.1f%%"
.L_413c80:
          .string " -c --stdout      write on standard output, keep original files unchanged"
          .zero 6
.L_413cd0:
          .string " -d --decompress  decompress"
          .zero 3
.L_413cf0:
          .string " -f --force       force overwrite of output file and compress links"
          .zero 4
.L_413d38:
          .string " -h --help        give this help"
          .zero 7
.L_413d60:
          .string " -l --list        list compressed file contents"
.L_413d90:
          .string " -L --license     display software license"
          .zero 5
.L_413dc0:
          .string " -n --no-name     do not save or restore the original name and time stamp"
          .zero 6
.L_413e10:
          .string " -N --name        save or restore the original name and time stamp"
          .zero 5
.L_413e58:
          .string " -q --quiet       suppress all warnings"
.L_413e80:
          .string " -r --recursive   operate recursively on directories"
          .zero 3
.L_413eb8:
          .string " -S .suf  --suffix .suf     use suffix .suf on compressed files"
.L_413ef8:
          .string " -t --test        test compressed file integrity"
          .zero 7
.L_413f30:
          .string " -v --verbose     verbose mode"
          .zero 1
.L_413f50:
          .string " -V --version     display version number"
          .zero 7
.L_413f80:
          .string " -1 --fast        compress faster"
          .zero 6
.L_413fa8:
          .string " -9 --best        compress better"
          .zero 6
.L_413fd0:
          .string "    --rsyncable   Make rsync-friendly archive"
          .zero 2
.L_414000:
          .string " file...          files to (de)compress. If none given, use standard input."
          .zero 4
.L_414050:
          .string "Report bugs to <bug-gzip@gnu.org>."
          .zero 5
.L_414078:
          .string ".z"
          .zero 5
.L_414080:
          .string "-gz"
          .zero 4
.L_414088:
          .string "-z"
          .zero 5
.L_414090:
          .string "_z"
          .zero 5
.L_414098:
          .string ".Z"
          .zero 5
.L_4140a0:
          .string "store"
          .zero 2
.L_4140a8:
          .string "compr"
          .zero 2
.L_4140b0:
          .string "pack "
          .zero 2
.L_4140b8:
          .string "lzh  "
          .zero 2
.L_4140c0:
          .string "defla"
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
.L_4301b0:
#-----------------------------------
.globl __dso_handle
.hidden __dso_handle
.type __dso_handle, @object
#-----------------------------------
__dso_handle:
          .zero 8
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
.globl optind
.type optind, @object
.size optind, 4
#-----------------------------------
optind:
          .byte 0x1
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
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type license_msg, @object
.size license_msg, 56
#-----------------------------------
license_msg:
          .quad .L_412d20
          .quad .L_412d48
          .quad .L_412d70
          .quad .L_412da0
          .quad .L_412dd0
          .quad .L_412e08
          .zero 8
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
.globl level
.type level, @object
.size level, 4
#-----------------------------------
level:
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl longopts
.type longopts, @object
.size longopts, 800
#-----------------------------------
longopts:
          .quad .L_412e50
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e58
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e68
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e70
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e80
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e90
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412e98
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ea0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ea8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412eb0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412eb8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ec0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ec8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ed0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ee0
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
          .quad .L_412ee8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ef0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412ef8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412f00
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412f08
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412f10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412f18
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_412f20
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
          .quad .L_412f28
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
.globl work
.type work, @object
.size work, 8
#-----------------------------------
work:
          .quad zip
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
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
.type help_msg.7, @object
.size help_msg.7, 160
#-----------------------------------
help_msg.7:
          .quad .L_413c80
          .quad .L_413cd0
          .quad .L_413cf0
          .quad .L_413d38
          .quad .L_413d60
          .quad .L_413d90
          .quad .L_413dc0
          .quad .L_413e10
          .quad .L_413e58
          .quad .L_413e80
          .quad .L_413eb8
          .quad .L_413ef8
          .quad .L_413f30
          .quad .L_413f50
          .quad .L_413f80
          .quad .L_413fa8
          .quad .L_413fd0
          .quad .L_414000
          .quad .L_414050
          .zero 8
#-----------------------------------
.type known_suffixes.6, @object
.size known_suffixes.6, 72
#-----------------------------------
known_suffixes.6:
          .zero 8
          .quad .L_413078
          .quad .L_414078
          .quad .L_413468
          .quad .L_413460
          .quad .L_414080
          .quad .L_414088
          .quad .L_414090
          .zero 8
#-----------------------------------
.type suffixes.5, @object
.size suffixes.5, 48
#-----------------------------------
suffixes.5:
          .zero 8
          .quad .L_413078
          .quad .L_414078
          .quad .L_414088
          .quad .L_414098
          .zero 8
#-----------------------------------
.type first_time.4, @object
.size first_time.4, 4
#-----------------------------------
first_time.4:
          .byte 0x1
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
          .quad .L_4140a0
          .quad .L_4140a8
          .quad .L_4140b0
          .quad .L_4140b8
          .quad .L_412c58
          .quad .L_412c58
          .quad .L_412c58
          .quad .L_412c58
          .quad .L_4140c0
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
.L_431258:
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
.globl read_buf
.type read_buf, @object
.size read_buf, 8
#-----------------------------------
read_buf:
          .zero 8
#-----------------------------------
.globl block_start
.type block_start, @object
.size block_start, 8
#-----------------------------------
block_start:
          .zero 8
#-----------------------------------
.globl prev_length
.type prev_length, @object
.size prev_length, 4
#-----------------------------------
prev_length:
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
          .zero 4
#-----------------------------------
.globl max_chain_length
.type max_chain_length, @object
.size max_chain_length, 4
#-----------------------------------
max_chain_length:
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
.globl inbuf
.type inbuf, @object
.size inbuf, 32832
#-----------------------------------
inbuf:
          .zero 32832
#-----------------------------------
.globl outbuf
.type outbuf, @object
.size outbuf, 18432
#-----------------------------------
outbuf:
          .zero 18432
#-----------------------------------
.globl d_buf
.type d_buf, @object
.size d_buf, 65536
#-----------------------------------
d_buf:
          .zero 65536
#-----------------------------------
.globl window
.type window, @object
.size window, 65536
#-----------------------------------
window:
          .zero 65536
#-----------------------------------
.globl prev
.type prev, @object
.size prev, 131072
#-----------------------------------
prev:
          .zero 131072
#-----------------------------------
.globl ascii
.type ascii, @object
.size ascii, 4
#-----------------------------------
ascii:
          .zero 4
#-----------------------------------
.globl to_stdout
.type to_stdout, @object
.size to_stdout, 4
#-----------------------------------
to_stdout:
          .zero 4
#-----------------------------------
.globl decompress
.type decompress, @object
.size decompress, 4
#-----------------------------------
decompress:
          .zero 4
#-----------------------------------
.globl force
.type force, @object
.size force, 4
#-----------------------------------
force:
          .zero 4
#-----------------------------------
.globl recursive
.type recursive, @object
.size recursive, 4
#-----------------------------------
recursive:
          .zero 4
#-----------------------------------
.globl list
.type list, @object
.size list, 4
#-----------------------------------
list:
          .zero 4
#-----------------------------------
.globl verbose
.type verbose, @object
.size verbose, 4
#-----------------------------------
verbose:
          .zero 4
#-----------------------------------
.globl quiet
.type quiet, @object
.size quiet, 4
#-----------------------------------
quiet:
          .zero 4
#-----------------------------------
.globl do_lzw
.type do_lzw, @object
.size do_lzw, 4
#-----------------------------------
do_lzw:
          .zero 4
#-----------------------------------
.globl test
.type test, @object
.size test, 4
#-----------------------------------
test:
          .zero 4
#-----------------------------------
.globl foreground
.type foreground, @object
.size foreground, 4
#-----------------------------------
foreground:
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
.globl save_orig_name
.type save_orig_name, @object
.size save_orig_name, 4
#-----------------------------------
save_orig_name:
          .zero 4
#-----------------------------------
.globl last_member
.type last_member, @object
.size last_member, 4
#-----------------------------------
last_member:
          .zero 4
#-----------------------------------
.globl part_nb
.type part_nb, @object
.size part_nb, 4
#-----------------------------------
part_nb:
          .zero 4
#-----------------------------------
.globl time_stamp
.type time_stamp, @object
.size time_stamp, 8
#-----------------------------------
time_stamp:
          .zero 8
#-----------------------------------
.globl ifile_size
.type ifile_size, @object
.size ifile_size, 8
#-----------------------------------
ifile_size:
          .zero 8
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
.globl z_suffix
.type z_suffix, @object
.size z_suffix, 8
#-----------------------------------
z_suffix:
          .zero 8
#-----------------------------------
.globl z_len
.type z_len, @object
.size z_len, 8
#-----------------------------------
z_len:
          .zero 8
#-----------------------------------
.globl bytes_in
.type bytes_in, @object
.size bytes_in, 8
#-----------------------------------
bytes_in:
          .zero 8
#-----------------------------------
.globl bytes_out
.type bytes_out, @object
.size bytes_out, 8
#-----------------------------------
bytes_out:
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
.globl ifname
.type ifname, @object
.size ifname, 1024
#-----------------------------------
ifname:
          .zero 1024
#-----------------------------------
.globl ofname
.type ofname, @object
.size ofname, 1024
#-----------------------------------
ofname:
          .zero 1024
#-----------------------------------
.globl remove_ofname
.type remove_ofname, @object
.size remove_ofname, 4
#-----------------------------------
remove_ofname:
          .zero 8
#-----------------------------------
.globl istat
.type istat, @object
.size istat, 128
#-----------------------------------
istat:
          .zero 128
#-----------------------------------
.globl ifd
.type ifd, @object
.size ifd, 4
#-----------------------------------
ifd:
          .zero 4
#-----------------------------------
.globl ofd
.type ofd, @object
.size ofd, 4
#-----------------------------------
ofd:
          .zero 4
#-----------------------------------
.globl insize
.type insize, @object
.size insize, 4
#-----------------------------------
insize:
          .zero 4
#-----------------------------------
.globl inptr
.type inptr, @object
.size inptr, 4
#-----------------------------------
inptr:
          .zero 4
#-----------------------------------
.globl outcnt
.type outcnt, @object
.size outcnt, 4
#-----------------------------------
outcnt:
          .zero 4
#-----------------------------------
.globl rsync
.type rsync, @object
.size rsync, 4
#-----------------------------------
rsync:
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
.globl decrypt
.type decrypt, @object
.size decrypt, 4
#-----------------------------------
decrypt:
          .zero 8
#-----------------------------------
.globl key
.type key, @object
.size key, 8
#-----------------------------------
key:
          .zero 8
#-----------------------------------
.globl pkzip
.type pkzip, @object
.size pkzip, 4
#-----------------------------------
pkzip:
          .zero 4
#-----------------------------------
.globl ext_header
.type ext_header, @object
.size ext_header, 4
#-----------------------------------
ext_header:
          .zero 4
#-----------------------------------
.globl header_bytes
.type header_bytes, @object
.size header_bytes, 8
#-----------------------------------
header_bytes:
          .zero 8
#-----------------------------------
.type zfile, @object
.size zfile, 4
#-----------------------------------
zfile:
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
.type ins_h, @object
.size ins_h, 4
#-----------------------------------
ins_h:
          .zero 4
#-----------------------------------
.type eofile, @object
.size eofile, 4
#-----------------------------------
eofile:
          .zero 4
#-----------------------------------
.type lookahead, @object
.size lookahead, 4
#-----------------------------------
lookahead:
          .zero 4
#-----------------------------------
.type max_lazy_match, @object
.size max_lazy_match, 4
#-----------------------------------
max_lazy_match:
          .zero 4
#-----------------------------------
.type compr_level, @object
.size compr_level, 4
#-----------------------------------
compr_level:
          .zero 4
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
.type nextchar, @object
.size nextchar, 8
#-----------------------------------
nextchar:
          .zero 8
#-----------------------------------
.type ordering, @object
.size ordering, 4
#-----------------------------------
ordering:
          .zero 8
#-----------------------------------
.type posixly_correct, @object
.size posixly_correct, 8
#-----------------------------------
posixly_correct:
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
          .zero 4
#-----------------------------------
.type msg_done, @object
.size msg_done, 4
#-----------------------------------
msg_done:
          .zero 8
#-----------------------------------
.type dyn_ltree, @object
.size dyn_ltree, 2292
#-----------------------------------
dyn_ltree:
          .zero 2296
#-----------------------------------
.type dyn_dtree, @object
.size dyn_dtree, 244
#-----------------------------------
dyn_dtree:
          .zero 248
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
.type bl_tree, @object
.size bl_tree, 156
#-----------------------------------
bl_tree:
          .zero 160
#-----------------------------------
.type bl_count, @object
.size bl_count, 32
#-----------------------------------
bl_count:
          .zero 32
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
          .zero 4
#-----------------------------------
.type heap_max, @object
.size heap_max, 4
#-----------------------------------
heap_max:
          .zero 8
#-----------------------------------
.type depth, @object
.size depth, 573
#-----------------------------------
depth:
          .zero 576
#-----------------------------------
.type length_code, @object
.size length_code, 256
#-----------------------------------
length_code:
          .zero 256
#-----------------------------------
.type dist_code, @object
.size dist_code, 512
#-----------------------------------
dist_code:
          .zero 512
#-----------------------------------
.type base_length, @object
.size base_length, 116
#-----------------------------------
base_length:
          .zero 120
#-----------------------------------
.type base_dist, @object
.size base_dist, 120
#-----------------------------------
base_dist:
          .zero 120
#-----------------------------------
.type flag_buf, @object
.size flag_buf, 4096
#-----------------------------------
flag_buf:
          .zero 4096
#-----------------------------------
.type last_lit, @object
.size last_lit, 4
#-----------------------------------
last_lit:
          .zero 4
#-----------------------------------
.type last_dist, @object
.size last_dist, 4
#-----------------------------------
last_dist:
          .zero 4
#-----------------------------------
.type last_flags, @object
.size last_flags, 4
#-----------------------------------
last_flags:
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
.type opt_len, @object
.size opt_len, 8
#-----------------------------------
opt_len:
          .zero 8
#-----------------------------------
.type static_len, @object
.size static_len, 8
#-----------------------------------
static_len:
          .zero 8
#-----------------------------------
.type compressed_len, @object
.size compressed_len, 8
#-----------------------------------
compressed_len:
          .zero 8
#-----------------------------------
.type input_len, @object
.size input_len, 8
#-----------------------------------
input_len:
          .zero 8
#-----------------------------------
.type pt_len, @object
.size pt_len, 19
#-----------------------------------
pt_len:
          .zero 20
#-----------------------------------
.type blocksize, @object
.size blocksize, 4
#-----------------------------------
blocksize:
          .zero 4
#-----------------------------------
.type pt_table, @object
.size pt_table, 512
#-----------------------------------
pt_table:
          .zero 512
#-----------------------------------
.type io_bitbuf, @object
.size io_bitbuf, 2
#-----------------------------------
io_bitbuf:
          .zero 4
#-----------------------------------
.type subbitbuf, @object
.size subbitbuf, 4
#-----------------------------------
subbitbuf:
          .zero 4
#-----------------------------------
.type bitcount, @object
.size bitcount, 4
#-----------------------------------
bitcount:
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
.type literal, @object
.size literal, 256
#-----------------------------------
literal:
          .zero 256
#-----------------------------------
.type lit_base, @object
.size lit_base, 104
#-----------------------------------
lit_base:
          .zero 104
#-----------------------------------
.type leaves, @object
.size leaves, 104
#-----------------------------------
leaves:
          .zero 104
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
          .zero 8
#-----------------------------------
.type bitbuf, @object
.size bitbuf, 8
#-----------------------------------
bitbuf:
          .zero 8
#-----------------------------------
.type valid, @object
.size valid, 4
#-----------------------------------
valid:
          .zero 8
#-----------------------------------
.type crc, @object
.size crc, 8
#-----------------------------------
crc:
          .zero 8
#-----------------------------------
.type in_exit.2, @object
.size in_exit.2, 4
#-----------------------------------
in_exit.2:
          .zero 4
#-----------------------------------
.type i.1, @object
.size i.1, 4
#-----------------------------------
i.1:
          .zero 4
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
.L_481870:
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
.symver atoi,atoi@GLIBC_2.17
.globl atoi
.type atoi, @function
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
.symver getchar,getchar@GLIBC_2.17
.globl getchar
.type getchar, @function
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
.symver strcat,strcat@GLIBC_2.17
.globl strcat
.type strcat, @function
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
.symver tolower,tolower@GLIBC_2.17
.globl tolower
.type tolower, @function
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
