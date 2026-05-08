[INFO]  Reading GTIRB file:     "basilbench/9base-6/strings/strings.gtirb"
[INFO]  Module strings has integral symbols; attempting to assign referents...
#===================================
.arch armv8-a
#===================================


#===================================
.section .interp ,"a",@progbits
#===================================

.align 0
          .string "/nix/store/27sw51q03wwl5pv23n9i9qyak2gf3pgn-glibc-aarch64-unknown-linux-gnu-2.40-36/lib/ld-linux-aarch64.so.1"
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
.L_400cd8:

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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl p9main

            adrp x0, .L_406a70
            add x0,x0, :lo12:.L_406a70
            bl exits

            mov w0,#99
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
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
            cbz x0,.L_400f94

            b __gmon_start__
.L_400f94:

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
            adrp x0, completed.0
            add x0,x0, :lo12:completed.0
            adrp x1, completed.0
            add x1,x1, :lo12:completed.0
            cmp x1,x0
            b.eq .L_400fcc

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_400fcc

            mov x16,x1
            br x16
.L_400fcc:

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
            adrp x0, completed.0
            add x0,x0, :lo12:completed.0
            adrp x1, completed.0
            add x1,x1, :lo12:completed.0
            sub x1,x1,x0
            lsr x2,x1,#63
            add x1,x2,x1, asr #3
            asr x1,x1,#1
            cbz x1,.L_401008

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_401008

            mov x16,x2
            br x16
.L_401008:

            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
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
            tbnz w0,#0,.L_401034

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_401034:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
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
.size frame_dummy, . - frame_dummy
.align 4
#-----------------------------------
.globl stringit
.type stringit, @function
#-----------------------------------
stringit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-224]!
.cfi_def_cfa_offset 224
.cfi_offset 29, -224
.cfi_offset 30, -216
            mov w1,#0
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -176
.cfi_offset 24, -168
            adrp x24, fin
            bl Bopen

            str x0,[x24,:lo12:fin]
            cbz x0,.L_4011b0

            mov w23,#160
            stp x19,x20,[sp,#16]
.cfi_offset 20, -200
.cfi_offset 19, -208
            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -184
.cfi_offset 21, -192
            add x21,x24, :lo12:fin
            mov x22,#0
            stp x25,x26,[sp,#64]
.cfi_offset 26, -152
.cfi_offset 25, -160
            adrp x26, .L_4069b0
            adrp x25, fout
            bl Boffset

            add x26,x26, :lo12:.L_4069b0
            mov x19,x0
            add x25,x25, :lo12:fout
            b .L_4010d0
.L_4010a8:

            add x0,sp,#80
            cmp x22,#0
            csel x22,x22,x19,ne
            strh w1,[x0,w20,sxtw #1]
            add w20,w20,#1
            cmp w20,#69
            b.eq .L_40114c
.L_4010c4:

            ldr x0,[x21]
            bl Boffset

            mov x19,x0
.L_4010d0:

            ldr x0,[x21]
            bl Bgetrune

            and w1,w0,#65535
            tbnz x0,#63,.L_401124

            sub w0,w1,#32
            and w0,w0,#65535
            cmp w0,#94
            ccmp w1,w23,#2,hi
            b.hi .L_4010a8

            cmp w20,#5
            b.gt .L_401108
.L_4010fc:

            mov w20,#0
            mov x22,#0
            b .L_4010c4
.L_401108:

            add x3,sp,#80
            mov x2,x22
            mov x1,x26
            mov x0,x25
            strh wzr,[x3,w20,sxtw #1]
            bl Bprint

            b .L_4010fc
.L_401124:

            cmp w20,#5
            b.gt .L_401170

            ldr x0,[x24,:lo12:fin]
            bl Bterm

            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.L_40114c:

.cfi_restore_state 
            add x3,sp,#80
            mov x2,x22
            adrp x1, .L_4069a0
            adrp x0, fout
            add x1,x1, :lo12:.L_4069a0
            add x0,x0, :lo12:fout
            strh wzr,[sp,#218]
            bl Bprint

            b .L_4010fc
.L_401170:

            add x3,sp,#80
            mov x2,x22
            adrp x1, .L_4069b0
            adrp x0, fout
            add x1,x1, :lo12:.L_4069b0
            add x0,x0, :lo12:fout
            strh wzr,[x3,w20,sxtw #1]
            bl Bprint

            ldr x0,[x24,:lo12:fin]
            bl Bterm

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.L_4011b0:

.cfi_def_cfa_offset 224
.cfi_offset 23, -176
.cfi_offset 24, -168
.cfi_offset 29, -224
.cfi_offset 30, -216
            ldp x23,x24,[sp,#48]
            adrp x0, .L_406998
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            add x0,x0, :lo12:.L_406998
            b perror
.cfi_endproc 
.size stringit, . - stringit
.align 2
#-----------------------------------
.globl p9main
.type p9main, @function
#-----------------------------------
p9main:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov w2,#1
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x1
            mov w1,w2
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov w21,w0
            adrp x0, fout
            add x0,x0, :lo12:fout
            bl Binit

            cmp w21,#1
            b.le .L_401220

            ldr x1,[x20,#8]
            cmp w21,#2
            b.ne .L_401248

            mov x0,x1
            bl stringit
.L_40120c:

            ldp x19,x20,[sp,#16]
            mov x0,#0
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
            b exits
.L_401220:

.cfi_restore_state 
            adrp x0, .L_4069c0
            add x0,x0, :lo12:.L_4069c0
            bl stringit

            mov x0,#0
            bl exits

            ldp x19,x20,[sp,#16]
            mov x0,#0
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
            b exits
.L_401248:

.cfi_restore_state 
            adrp x22, .L_4069d0
            mov x19,#1
            add x22,x22, :lo12:.L_4069d0
            b .L_40125c
.L_401258:

            ldr x1,[x20,x19,lsl #3]
.L_40125c:

            mov x0,x22
            bl print

            ldr x0,[x20,x19,lsl #3]
            add x19,x19,#1
            bl stringit

            cmp x21,x19
            b.ne .L_401258

            b .L_40120c
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9main, . - p9main
.align 4
#-----------------------------------
.globl risprint
.type risprint, @function
#-----------------------------------
risprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            and w0,w0,#65535
            mov w2,#160
            sub w1,w0,#32
            and w1,w1,#65535
            cmp w1,#94
            ccmp w0,w2,#2,hi
            cset w0,hi
            ret 
.cfi_endproc 
.size risprint, . - risprint
.align 4
#-----------------------------------
.globl print
.type print, @function
#-----------------------------------
print:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-272]!
.cfi_def_cfa_offset 272
.cfi_offset 29, -272
.cfi_offset 30, -264
            mov w10,#-56
            mov w9,#-128
            mov fp,sp
            add x11,sp,#272
            add x8,sp,#208
            stp x11,x11,[sp,#48]
            str x8,[sp,#64]
            mov x8,x0
            stp w10,w9,[sp,#72]
            mov w0,#1
            str q0,[sp,#80]
            ldp q0,q16,[sp,#48]
            str q1,[sp,#96]
            str q2,[sp,#112]
            stp q0,q16,[sp,#16]
            str q3,[sp,#128]
            str q4,[sp,#144]
            str q5,[sp,#160]
            str q6,[sp,#176]
            str q7,[sp,#192]
            stp x1,x2,[sp,#216]
            add x2,sp,#16
            mov x1,x8
            stp x3,x4,[sp,#232]
            stp x5,x6,[sp,#248]
            str x7,[sp,#264]
            bl vfprint

            ldp fp,lr,[sp],#272
.cfi_restore 30
.cfi_restore 29
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
.size print, . - print
.align 4
#-----------------------------------
.globl vfprint
.type vfprint, @function
#-----------------------------------
vfprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-432]!
.cfi_def_cfa_offset 432
.cfi_offset 29, -432
.cfi_offset 30, -424
            mov w3,#256
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -416
.cfi_offset 20, -408
            mov x19,x2
            mov x20,x1
            add x2,sp,#176
            mov w1,w0
            add x0,sp,#40
            bl fmtfdinit

            ldp q0,q1,[x19]
            mov x1,x20
            add x0,sp,#40
            stp q0,q1,[sp,#96]
            bl dofmt

            mov w19,w0
            cmp w0,#0
            b.le .L_401378

            add x0,sp,#40
            bl __fmtFdFlush

            cmp w0,#0
            csinv w19,w19,wzr,ne
.L_401378:

            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#432
.cfi_restore 30
.cfi_restore 29
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
.size vfprint, . - vfprint
.align 4
#-----------------------------------
.globl Bgetrune
.type Bgetrune, @function
#-----------------------------------
Bgetrune:

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
            mov x20,x0
            bl Bgetc

            cmp w0,#127
            b.le .L_401404

            mov x19,#2
            str x21,[sp,#32]
.cfi_offset 21, -32
            strb w0,[sp,#56]
            b .L_4013d8
.L_4013bc:

            mov w1,w19
            mov w21,w19
            add x0,sp,#56
            add x19,x19,#1
            sturb w2,[x3,#-1]
            bl fullrune

            cbnz w0,.L_40141c
.L_4013d8:

            mov x0,x20
            bl Bgetc

            add x1,sp,#56
            mov w2,w0
            add x3,x19,x1
            tbz w0,#31,.L_4013bc

            ldp x19,x20,[sp,#16]
            sxtw x0,w0
            ldr x21,[sp,#32]
.cfi_restore 21
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401404:

.cfi_def_cfa_offset 64
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov w1,#1
            str w1,[x20,#12]
            ldp x19,x20,[sp,#16]
            sxtw x0,w0
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40141c:

.cfi_def_cfa_offset 64
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 29, -64
.cfi_offset 30, -56
            add x1,sp,#56
            add x0,sp,#54
            bl chartorune

            str w0,[x20,#12]
            cmp w0,w21
            b.ge .L_401450

            nop
            nop
            nop
            nop
.L_401438:

            mov x0,x20
            bl Bungetc

            ldr w0,[x20,#12]
            sub w21,w21,#1
            cmp w0,w21
            b.lt .L_401438
.L_401450:

            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
.cfi_restore 21
            ldrh w0,[sp,#54]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size Bgetrune, . - Bgetrune
.align 2
#-----------------------------------
.globl Bungetrune
.type Bungetrune, @function
#-----------------------------------
Bungetrune:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w2,[x0,#16]
            mov x1,x0
            cmp w2,#3
            b.eq .L_401484

            mov w0,#-1
            cmp w2,#1
            b.eq .L_40148c

            ret 
.L_401484:

            mov w0,#1
            str w0,[x1,#16]
.L_40148c:

            ldr w2,[x1]
            mov w0,#1
            ldr w3,[x1,#12]
            str wzr,[x1,#12]
            sub w2,w2,w3
            str w2,[x1]
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
.size Bungetrune, . - Bungetrune
#-----------------------------------
.type batexit, @function
#-----------------------------------
batexit:

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
            adrp x19, wbufs
            add x19,x19, :lo12:wbufs
            add x20,x19,#160
.L_4014c8:

            ldr x0,[x19]
            cbz x0,.L_4014d8

            str xzr,[x19]
            bl Bflush
.L_4014d8:

            add x19,x19,#8
            cmp x19,x20
            b.ne .L_4014c8

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size batexit, . - batexit
.align 4
#-----------------------------------
.globl Binits
.type Binits, @function
#-----------------------------------
Binits:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            ands w5,w2,#4294967183
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            mov w20,w4
            b.eq .L_4015a8

            cmp w5,#1
            b.ne .L_401588

            adrp x4, wbufs
            add x4,x4, :lo12:wbufs
            mov x2,x4
            add x5,x4,#160
            b .L_401534
.L_401528:

            add x2,x2,#8
            cmp x2,x5
            b.eq .L_401550
.L_401534:

            ldr x0,[x2]
            cmp x19,x0
            b.ne .L_401528

            add x2,x2,#8
            stur xzr,[x2,#-8]
            cmp x2,x5
            b.ne .L_401534
.L_401550:

            mov x0,#0
            b .L_401564
.L_401558:

            add x0,x0,#1
            cmp x0,#20
            b.eq .L_401570
.L_401564:

            ldr x2,[x4,x0,lsl #3]
            cbnz x2,.L_401558

            str x19,[x4,w0,sxtw #3]
.L_401570:

            ldr w0,[x4,#160]
            cbz w0,.L_4015e8
.L_401578:

            mov w2,#4
            mov w6,#2
            sub w5,w2,w20
            b .L_4015ac
.L_401588:

            adrp x1, .L_4069d8
            mov w0,#2
            add x1,x1, :lo12:.L_4069d8
            bl fprint

            ldp x19,x20,[sp,#16]
            mov w0,#-1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4015a8:

.cfi_restore_state 
            mov w6,#1
.L_4015ac:

            sub w2,w20,#4
            add x3,x3,#4
            stp wzr,w5,[x19]
            mov w0,#0
            add x4,x3,w2, sxtw
            str xzr,[x19,#8]
            stp w6,w1,[x19,#16]
            str wzr,[x19,#24]
            str xzr,[x19,#32]
            str w2,[x19,#40]
            stp x3,x4,[x19,#48]
            str x4,[x19,#64]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4015e8:

.cfi_restore_state 
            mov w2,#1
            adrp x0, batexit
            add x0,x0, :lo12:batexit
            str w1,[sp,#36]
            str x3,[sp,#40]
            str w2,[x4,#160]
            bl p9atexit

            ldr x3,[sp,#40]
            ldr w1,[sp,#36]
            b .L_401578
.cfi_endproc 
.size Binits, . - Binits
.align 4
#-----------------------------------
.globl Binit
.type Binit, @function
#-----------------------------------
Binit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            add x3,x0,#72
            mov w4,#8196
            b Binits
.cfi_endproc 

            nop
            nop
            nop
            nop
.size Binit, . - Binit
.align 4
#-----------------------------------
.globl Bfdopen
.type Bfdopen, @function
#-----------------------------------
Bfdopen:

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
            mov w20,w0
            mov x0,#8272
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov w21,w1
            bl p9malloc

            mov x19,x0
            cbz x0,.L_401668

            mov w2,w21
            mov w1,w20
            add x3,x0,#72
            mov w4,#8196
            bl Binits

            mov w0,#16729
            movk w0,#49,lsl #16
            str w0,[x19,#24]
.L_401668:

            ldr x21,[sp,#32]
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size Bfdopen, . - Bfdopen
.align 4
#-----------------------------------
.globl Bopen
.type Bopen, @function
#-----------------------------------
Bopen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            ands w2,w1,#4294967183
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov w19,w1
            str x21,[sp,#32]
.cfi_offset 21, -16
            b.eq .L_401714

            cmp w2,#1
            b.ne .L_4016f8

            mov x2,#438
            bl p9create

            mov w21,w0
            tbnz w0,#31,.L_40170c

            mov x0,#8272
            bl p9malloc

            mov x20,x0
            cbz x0,.L_401730
.L_4016c4:

            mov w2,w19
            mov w1,w21
            add x3,x0,#72
            mov w4,#8196
            bl Binits

            mov w0,#16729
            movk w0,#49,lsl #16
            str w0,[x20,#24]
.L_4016e4:

            ldr x21,[sp,#32]
            mov x0,x20
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
.L_4016f8:

.cfi_restore_state 
            mov w2,w1
            mov w0,#2
            adrp x1, .L_4069d8
            add x1,x1, :lo12:.L_4069d8
            bl fprint
.L_40170c:

            mov x20,#0
            b .L_4016e4
.L_401714:

            bl p9open

            mov w21,w0
            tbnz w0,#31,.L_40170c

            mov x0,#8272
            bl p9malloc

            mov x20,x0
            cbnz x0,.L_4016c4
.L_401730:

            mov w0,w21
            mov x20,#0
            bl close

            b .L_4016e4
.cfi_endproc 
.size Bopen, . - Bopen
.align 4
#-----------------------------------
.globl Bterm
.type Bterm, @function
#-----------------------------------
Bterm:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, wbufs
            add x1,x1, :lo12:wbufs
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            add x0,x1,#160
            b .L_40176c
.L_401760:

            add x1,x1,#8
            cmp x1,x0
            b.eq .L_401788
.L_40176c:

            ldr x2,[x1]
            cmp x19,x2
            b.ne .L_401760

            add x1,x1,#8
            stur xzr,[x1,#-8]
            cmp x1,x0
            b.ne .L_40176c
.L_401788:

            mov x0,x19
            bl Bflush

            ldr w1,[x19,#24]
            mov w0,#16729
            movk w0,#49,lsl #16
            cmp w1,w0
            b.eq .L_4017b4

            ldr x19,[sp,#16]
            mov w0,#0
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_4017b4:

.cfi_restore_state 
            ldr w0,[x19,#20]
            str wzr,[x19,#24]
            bl close

            mov x0,x19
            bl p9free

            ldr x19,[sp,#16]
            mov w0,#0
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
.size Bterm, . - Bterm
.align 4
#-----------------------------------
.globl Boffset
.type Boffset, @function
#-----------------------------------
Boffset:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w2,[x0,#16]
            cmp w2,#2
            b.eq .L_40182c

            and w1,w2,#4294967293
            cmp w1,#1
            b.eq .L_40181c

            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            adrp x1, .L_4069f0
            mov w0,#2
            mov fp,sp
            add x1,x1, :lo12:.L_4069f0
            bl fprint

            mov x0,#-1
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40181c:

            ldr x1,[x0,#32]
            ldrsw x0,[x0]
            add x0,x0,x1
            ret 
.L_40182c:

            ldr x1,[x0,#32]
            ldr w2,[x0,#4]
            ldr w0,[x0,#40]
            add w0,w0,w2
            add x0,x1,w0, sxtw
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
.size Boffset, . - Boffset
.align 4
#-----------------------------------
.globl Bprint
.type Bprint, @function
#-----------------------------------
Bprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-256]!
.cfi_def_cfa_offset 256
.cfi_offset 29, -256
.cfi_offset 30, -248
            mov w9,#-48
            mov w8,#-128
            mov fp,sp
            add x10,sp,#208
            add x11,sp,#256
            stp x11,x11,[sp,#48]
            str x10,[sp,#64]
            stp w9,w8,[sp,#72]
            str q0,[sp,#80]
            ldp q0,q16,[sp,#48]
            str q1,[sp,#96]
            str q2,[sp,#112]
            stp q0,q16,[sp,#16]
            str q3,[sp,#128]
            str q4,[sp,#144]
            str q5,[sp,#160]
            str q6,[sp,#176]
            str q7,[sp,#192]
            stp x2,x3,[sp,#208]
            add x2,sp,#16
            stp x4,x5,[sp,#224]
            stp x6,x7,[sp,#240]
            bl Bvprint

            ldp fp,lr,[sp],#256
.cfi_restore 30
.cfi_restore 29
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
.size Bprint, . - Bprint
#-----------------------------------
.type fmtBflush, @function
#-----------------------------------
fmtBflush:

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
            mov x19,x0
            ldr x1,[x0,#16]
            ldr x2,[x19,#24]
            ldr x20,[x0,#40]
            sub x1,x1,x2
            mov x0,x20
            str w1,[x20,#4]
            bl Bflush

            tbnz w0,#31,.L_401914

            ldr x1,[x20,#56]
            mov w0,#1
            ldrsw x2,[x20,#4]
            str x1,[x19,#24]
            add x1,x1,x2
            stp x1,x1,[x19,#8]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401914:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size fmtBflush, . - fmtBflush
.align 2
#-----------------------------------
.globl Bvprint
.type Bvprint, @function
#-----------------------------------
Bvprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-224]!
.cfi_def_cfa_offset 224
.cfi_offset 29, -224
.cfi_offset 30, -216
            adrp x5, fmtBflush
            add x5,x5, :lo12:fmtBflush
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -208
.cfi_offset 20, -200
            mov x19,x0
            mov x20,x2
            add x0,sp,#88
            mov x3,#0
            ldr x6,[x19,#56]
            mov x2,#0
            ldrsw x4,[x19,#4]
            str x21,[sp,#32]
.cfi_offset 21, -192
            mov x21,x1
            add x4,x6,x4
            mov x1,#0
            strb wzr,[sp,#88]
            stp x4,x4,[sp,#96]
            stp x6,x5,[sp,#112]
            str x19,[sp,#128]
            str wzr,[sp,#136]
            bl fmtlocaleinit

            ldp q0,q1,[x20]
            mov x1,x21
            add x2,sp,#48
            add x0,sp,#88
            stp q0,q1,[sp,#48]
            bl fmtvprint

            ldr w2,[sp,#136]
            ldp x1,x3,[sp,#104]
            cmp w0,#0
            ldr x21,[sp,#32]
            csel w0,w2,w0,eq
            sub x1,x1,x3
            str w1,[x19,#4]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size Bvprint, . - Bvprint
.align 4
#-----------------------------------
.globl p9atexit
.type p9atexit, @function
#-----------------------------------
p9atexit:

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
            adrp x20, onexlock
            add x20,x20, :lo12:onexlock
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x0
            mov x0,x20
            bl lock

            add x1,x20,#8
            mov w19,#0
            b .L_4019fc
.L_4019f0:

            add w19,w19,#1
            cmp w19,#33
            b.eq .L_401a40
.L_4019fc:

            ldr x2,[x1]
            add x1,x1,#16
            cbnz x2,.L_4019f0

            bl getpid

            sbfiz x19,x19,#4,#32
            add x1,x20,#8
            mov w3,w0
            add x2,x1,x19
            mov x0,x20
            str x21,[x1,x19]
            str w3,[x2,#8]
            bl unlock

            ldp x19,x20,[sp,#16]
            mov w0,#1
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401a40:

.cfi_restore_state 
            mov x0,x20
            bl unlock

            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9atexit, . - p9atexit
.align 4
#-----------------------------------
.globl p9atexitdont
.type p9atexitdont, @function
#-----------------------------------
p9atexitdont:

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
            mov x19,x0
            bl getpid

            adrp x3, onexlock
            add x3,x3, :lo12:onexlock
            add x1,x3,#8
            add x3,x3,#536
            b .L_401a94
.L_401a88:

            add x1,x1,#16
            cmp x3,x1
            b.eq .L_401abc
.L_401a94:

            ldr x2,[x1]
            cmp x2,x19
            b.ne .L_401a88

            ldr w2,[x1,#8]
            cmp w2,w0
            b.ne .L_401a88

            add x1,x1,#16
            stur xzr,[x1,#-16]
            cmp x3,x1
            b.ne .L_401a94
.L_401abc:

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
.size p9atexitdont, . - p9atexitdont
.align 4
#-----------------------------------
.globl exits
.type exits, @function
#-----------------------------------
exits:

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
            adrp x19, onexlock
            add x19,x19, :lo12:onexlock
            add x20,x19,#8
            add x19,x19,#520
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov x22,x0
            bl getpid

            mov w21,w0
            b .L_401b04
.L_401b00:

            mov x19,x1
.L_401b04:

            ldr x1,[x19]
            cbz x1,.L_401b20

            ldr w2,[x19,#8]
            cmp w2,w21
            b.ne .L_401b20

            str xzr,[x19]
            blr x1
.L_401b20:

            sub x1,x19,#16
            cmp x19,x20
            b.ne .L_401b00

            cbz x22,.L_401b38

            ldrb w0,[x22]
            cbnz w0,.L_401b40
.L_401b38:

            mov w0,#0
            bl exit
.L_401b40:

            mov x0,x22
            bl exitcode

            bl exit
.cfi_endproc 

            nop
            nop
            nop
            nop
.size exits, . - exits
.align 4
#-----------------------------------
.globl p9create
.type p9create, @function
#-----------------------------------
p9create:

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
            mov w19,w1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            and w22,w1,#3
            mov x21,x0
            tbz w2,#31,.L_401bbc

            mov w1,#-8289
            tst w19,w1
            b.ne .L_401c84

            and w1,w2,#511
            bl mkdir

            tbnz w0,#31,.L_401c4c

            mov x0,x21
            mov w1,#0
            bl open64

            mov w20,w0
.L_401b98:

            tbnz w20,#31,.L_401ba8

            tbnz w19,#13,.L_401c10
.L_401ba0:

            tbnz w19,#5,.L_401c54

            tbnz w19,#6,.L_401c68
.L_401ba8:

            ldp x21,x22,[sp,#32]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401bbc:

.cfi_restore_state 
            mov w1,#576
            tbnz w19,#7,.L_401bfc

            mov w0,#-8308
            orr w1,w22,w1
            and w0,w19,w0
.L_401bd0:

            tbz w0,#12,.L_401bdc

            orr w1,w1,#128
            and w0,w0,#4294963199
.L_401bdc:

            tbz w0,#14,.L_401be8

            orr w1,w1,#1024
            and w0,w0,#4294950911
.L_401be8:

            cbnz w0,.L_401c98

            mov x0,x21
            bl open64

            mov w20,w0
            b .L_401b98
.L_401bfc:

            movk w1,#1,lsl #16
            mov w0,#-8436
            orr w1,w22,w1
            and w0,w19,w0
            b .L_401bd0
.L_401c10:

            cmp w22,#0
            add x2,sp,#48
            cset w3,ne
            mov w0,w20
            mov w1,#6
            strh w3,[sp,#48]
            strh wzr,[sp,#50]
            stp xzr,xzr,[sp,#56]
            bl fcntl64

            tbz w0,#31,.L_401ba0

            mov w0,w20
            bl close

            adrp x0, .L_406a50
            add x0,x0, :lo12:.L_406a50
            bl werrstr
.L_401c4c:

            mov w20,#-1
            b .L_401ba8
.L_401c54:

            mov w0,w20
            mov w2,#1
            mov w1,#4
            bl fcntl64

            tbz w19,#6,.L_401ba8
.L_401c68:

            mov x0,x21
            bl remove

            ldp x21,x22,[sp,#32]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401c84:

.cfi_restore_state 
            adrp x0, .L_406a10
            mov w20,#-1
            add x0,x0, :lo12:.L_406a10
            bl werrstr

            b .L_401ba8
.L_401c98:

            adrp x0, .L_406a30
            mov w20,#-1
            add x0,x0, :lo12:.L_406a30
            bl werrstr

            b .L_401ba8
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9create, . - p9create
.align 4
#-----------------------------------
.globl rerrstr
.type rerrstr, @function
#-----------------------------------
rerrstr:

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
            adrp x20, xsyserr
            add x20,x20, :lo12:xsyserr
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov x21,x0
            mov w22,w1
            ldr x2,[x20,#128]
            cbz x2,.L_401d20

            blr x2

            mov x19,x0
            cbz x0,.L_401d20

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#4
            b.eq .L_401d34
.L_401cf4:

            mov w1,#14149
            movk w1,#6440,lsl #16
            cmp w0,w1
            b.ne .L_401d68

            mov x2,x19
            add x1,x21,w22, uxtw
            ldp x19,x20,[sp,#16]
            mov x0,x21
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
            b strecpy
.L_401d20:

.cfi_restore_state 
            bl __errno_location

            ldr w0,[x0]
            mov x19,x20
            cmp w0,#4
            b.ne .L_401cf4
.L_401d34:

            adrp x0, .L_406a60
            add x0,x0, :lo12:.L_406a60
            mov x2,x19
            ldr x1,[x0]
            str x1,[x19]
            ldr w0,[x0,#8]
            add x1,x21,w22, uxtw
            str w0,[x19,#8]
            mov x0,x21
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
            b strecpy
.L_401d68:

.cfi_restore_state 
            bl strerror

            mov x1,x0
            mov x0,x19
            bl strcpy

            mov x2,x19
            add x1,x21,w22, uxtw
            ldp x19,x20,[sp,#16]
            mov x0,x21
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b strecpy
.cfi_endproc 
.size rerrstr, . - rerrstr
.align 2
#-----------------------------------
.globl errstr
.type errstr, @function
#-----------------------------------
errstr:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov x2,x0
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -144
.cfi_offset 20, -136
            mov x19,x0
            mov w20,w1
            add x0,sp,#32
            add x1,sp,#160
            bl strecpy

            mov x0,x19
            adrp x19, xsyserr
            add x19,x19, :lo12:xsyserr
            mov w1,w20
            bl rerrstr

            ldr x0,[x19,#128]
            cbz x0,.L_401e0c

            blr x0

            cbz x0,.L_401e0c
.L_401ddc:

            add x2,sp,#32
            add x1,x0,#128
            bl strecpy

            bl __errno_location

            mov x1,x0
            mov w2,#14149
            mov w0,#0
            ldp x19,x20,[sp,#16]
            movk w2,#6440,lsl #16
            str w2,[x1]
            ldp fp,lr,[sp],#160
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401e0c:

.cfi_restore_state 
            mov x0,x19
            b .L_401ddc
.cfi_endproc 
.size errstr, . - errstr
.align 2
#-----------------------------------
.globl __errfmt
.type __errfmt, @function
#-----------------------------------
__errfmt:

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
            mov x19,x0
            bl __errno_location

            ldr w0,[x0]
            mov w1,#14149
            movk w1,#6440,lsl #16
            cmp w0,w1
            b.eq .L_401e54

            bl strerror

            mov x1,x0
.L_401e44:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b fmtstrcpy
.L_401e54:

.cfi_restore_state 
            adrp x20, xsyserr
            add x20,x20, :lo12:xsyserr
            ldr x0,[x20,#128]
            cbz x0,.L_401e70

            blr x0

            mov x1,x0
            cbnz x0,.L_401e44
.L_401e70:

            mov x1,x20
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b fmtstrcpy
.cfi_endproc 
.size __errfmt, . - __errfmt
.align 2
#-----------------------------------
.globl werrstr
.type werrstr, @function
#-----------------------------------
werrstr:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-400]!
.cfi_def_cfa_offset 400
.cfi_offset 29, -400
.cfi_offset 30, -392
            mov w10,#-56
            mov w9,#-128
            mov fp,sp
            add x11,sp,#400
            add x8,sp,#336
            stp x11,x11,[sp,#48]
            str x8,[sp,#64]
            mov x8,x0
            stp w10,w9,[sp,#72]
            add x0,sp,#80
            str q0,[sp,#208]
            ldp q0,q16,[sp,#48]
            stp x1,x2,[sp,#344]
            mov x2,x8
            stp x3,x4,[sp,#360]
            add x3,sp,#16
            add x1,sp,#208
            stp q0,q16,[sp,#16]
            str q1,[sp,#224]
            str q2,[sp,#240]
            str q3,[sp,#256]
            str q4,[sp,#272]
            str q5,[sp,#288]
            str q6,[sp,#304]
            str q7,[sp,#320]
            stp x5,x6,[sp,#376]
            str x7,[sp,#392]
            bl vseprint

            add x0,sp,#80
            mov w1,#128
            bl errstr

            ldp fp,lr,[sp],#400
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size werrstr, . - werrstr
.align 4
#-----------------------------------
.globl exitcode
.type exitcode, @function
#-----------------------------------
exitcode:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov w0,#1
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
.size exitcode, . - exitcode
.align 4
#-----------------------------------
.globl p9malloc
.type p9malloc, @function
#-----------------------------------
p9malloc:

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
            adrp x19, malloclock
            add x19,x19, :lo12:malloclock
            mov x20,x0
            mov x0,x19
            bl lock

            cmp x20,#0
            csinc x0,x20,xzr,ne
            bl malloc

            mov x1,x0
            mov x0,x19
            mov x19,x1
            bl unlock

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9malloc, . - p9malloc
.align 4
#-----------------------------------
.globl p9free
.type p9free, @function
#-----------------------------------
p9free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_401fac

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x20, malloclock
            add x20,x20, :lo12:malloclock
            mov x19,x0
            mov x0,x20
            bl lock

            mov x0,x19
            bl free

            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b unlock
.L_401fac:

            ret 
.cfi_endproc 
.size p9free, . - p9free
.align 4
#-----------------------------------
.globl p9calloc
.type p9calloc, @function
#-----------------------------------
p9calloc:

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
            mov x19,x0
            adrp x20, malloclock
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x1
            add x20,x20, :lo12:malloclock
            mov x0,x20
            bl lock

            mul x0,x19,x21
            mov x1,#1
            cmp x0,x1
            csel x0,x0,x1,hi
            bl calloc

            mov x19,x0
            mov x0,x20
            bl unlock

            ldr x21,[sp,#32]
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9calloc, . - p9calloc
.align 4
#-----------------------------------
.globl p9realloc
.type p9realloc, @function
#-----------------------------------
p9realloc:

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
            adrp x19, malloclock
            add x19,x19, :lo12:malloclock
            mov x20,x0
            mov x0,x19
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x1
            bl lock

            mov x1,x21
            mov x0,x20
            bl realloc

            mov x20,x0
            mov x0,x19
            bl unlock

            ldr x21,[sp,#32]
            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
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
.size p9realloc, . - p9realloc
.align 4
#-----------------------------------
.globl p9open
.type p9open, @function
#-----------------------------------
p9open:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov w2,#-8292
            and w2,w1,w2
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov w19,w1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            and w22,w1,#3
            mov x21,x0
            mov w1,w22
            tbz w19,#4,.L_4020a4

            eor w2,w2,#16
            orr w1,w22,#512
.L_4020a4:

            tbz w2,#7,.L_4020b0

            orr w1,w1,#65536
            eor w2,w2,#128
.L_4020b0:

            tbz w2,#8,.L_4020bc

            orr w1,w1,#2048
            eor w2,w2,#256
.L_4020bc:

            tbz w2,#14,.L_4020c8

            orr w1,w1,#1024
            eor w2,w2,#16384
.L_4020c8:

            cbnz w2,.L_40216c

            mov x0,x21
            bl open64

            mov w20,w0
            tbnz w0,#31,.L_4020e8

            tbnz w19,#13,.L_4020fc
.L_4020e0:

            tbnz w19,#5,.L_40213c

            tbnz w19,#6,.L_402150
.L_4020e8:

            ldp x21,x22,[sp,#32]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4020fc:

.cfi_restore_state 
            cmp w22,#0
            add x2,sp,#48
            cset w3,ne
            mov w1,#6
            strh w3,[sp,#48]
            strh wzr,[sp,#50]
            stp xzr,xzr,[sp,#56]
            bl fcntl64

            tbz w0,#31,.L_4020e0

            mov w0,w20
            bl close

            adrp x0, .L_406a50
            mov w20,#-1
            add x0,x0, :lo12:.L_406a50
            bl werrstr

            b .L_4020e8
.L_40213c:

            mov w0,w20
            mov w2,#1
            mov w1,#4
            bl fcntl64

            tbz w19,#6,.L_4020e8
.L_402150:

            mov x0,x21
            bl remove

            ldp x21,x22,[sp,#32]
            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40216c:

.cfi_restore_state 
            mov w1,w2
            adrp x0, .L_406a78
            mov w20,#-1
            add x0,x0, :lo12:.L_406a78
            bl werrstr

            b .L_4020e8
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
.size p9open, . - p9open
.align 4
#-----------------------------------
.globl lock
.type lock, @function
#-----------------------------------
lock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _lock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_lock]
            str x0,[sp,#40]
            cbz x20,.L_4021d4

            add x0,sp,#40
            bl getcallerpc

            mov w1,#1
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4021d4:

.cfi_restore_state 
            mov w0,#1
            str w0,[x19]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
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
.size lock, . - lock
.align 4
#-----------------------------------
.globl canlock
.type canlock, @function
#-----------------------------------
canlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _lock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_lock]
            str x0,[sp,#40]
            cbnz x20,.L_402240

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_402228

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402228:

.cfi_restore_state 
            mov w1,#1
            str w1,[x19]
            ldp x19,x20,[sp,#16]
            mov w0,w1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402240:

.cfi_restore_state 
            add x0,sp,#40
            bl getcallerpc

            mov w1,#0
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size canlock, . - canlock
.align 2
#-----------------------------------
.globl unlock
.type unlock, @function
#-----------------------------------
unlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _unlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_unlock]
            str x0,[sp,#40]
            cbz x20,.L_4022a4

            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4022a4:

.cfi_restore_state 
            str wzr,[x0]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size unlock, . - unlock
.align 2
#-----------------------------------
.globl qlock
.type qlock, @function
#-----------------------------------
qlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _qlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_qlock]
            str x0,[sp,#40]
            cbz x20,.L_4022f8

            add x0,sp,#40
            bl getcallerpc

            mov w1,#1
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4022f8:

.cfi_restore_state 
            mov w0,#1
            str w0,[x19]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size qlock, . - qlock
.align 4
#-----------------------------------
.globl canqlock
.type canqlock, @function
#-----------------------------------
canqlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _qlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_qlock]
            str x0,[sp,#40]
            cbnz x20,.L_402360

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_402348

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402348:

.cfi_restore_state 
            mov w1,#1
            str w1,[x19]
            ldp x19,x20,[sp,#16]
            mov w0,w1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402360:

.cfi_restore_state 
            add x0,sp,#40
            bl getcallerpc

            mov w1,#0
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size canqlock, . - canqlock
.align 2
#-----------------------------------
.globl qunlock
.type qunlock, @function
#-----------------------------------
qunlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _qunlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_qunlock]
            str x0,[sp,#40]
            cbz x20,.L_4023c4

            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4023c4:

.cfi_restore_state 
            str wzr,[x0]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size qunlock, . - qunlock
.align 2
#-----------------------------------
.globl rlock
.type rlock, @function
#-----------------------------------
rlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _rlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_rlock]
            str x0,[sp,#40]
            cbz x20,.L_402418

            add x0,sp,#40
            bl getcallerpc

            mov w1,#1
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402418:

.cfi_restore_state 
            ldr w0,[x0,#4]
            add w0,w0,#1
            str w0,[x19,#4]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size rlock, . - rlock
.align 4
#-----------------------------------
.globl canrlock
.type canrlock, @function
#-----------------------------------
canrlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _rlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_rlock]
            str x0,[sp,#40]
            cbnz x20,.L_402468

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_40248c

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402468:

.cfi_restore_state 
            add x0,sp,#40
            bl getcallerpc

            mov w1,#0
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40248c:

.cfi_restore_state 
            ldr w1,[x19,#4]
            mov w0,#1
            add w1,w1,w0
            str w1,[x19,#4]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
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
.size canrlock, . - canrlock
.align 4
#-----------------------------------
.globl runlock
.type runlock, @function
#-----------------------------------
runlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _runlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_runlock]
            str x0,[sp,#40]
            cbz x20,.L_4024f0

            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4024f0:

.cfi_restore_state 
            ldr w0,[x0,#4]
            sub w0,w0,#1
            str w0,[x19,#4]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
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
.size runlock, . - runlock
.align 4
#-----------------------------------
.globl wlock
.type wlock, @function
#-----------------------------------
wlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _wlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_wlock]
            str x0,[sp,#40]
            cbz x20,.L_402554

            add x0,sp,#40
            bl getcallerpc

            mov w1,#1
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402554:

.cfi_restore_state 
            mov x0,#1
            str x0,[x19,#8]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
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
.size wlock, . - wlock
.align 4
#-----------------------------------
.globl canwlock
.type canwlock, @function
#-----------------------------------
canwlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _wlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_wlock]
            str x0,[sp,#40]
            cbnz x20,.L_4025c8

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_4025a8
.L_40259c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4025a8:

.cfi_restore_state 
            ldr w1,[x19,#4]
            cbnz w1,.L_40259c

            mov x1,#1
            str x1,[x19,#8]
            ldp x19,x20,[sp,#16]
            mov w0,w1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4025c8:

.cfi_restore_state 
            add x0,sp,#40
            bl getcallerpc

            mov w1,#0
            mov x2,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size canwlock, . - canwlock
.align 4
#-----------------------------------
.globl wunlock
.type wunlock, @function
#-----------------------------------
wunlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _wunlock
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            ldr x20,[x1,:lo12:_wunlock]
            str x0,[sp,#40]
            cbz x20,.L_402630

            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x19
            blr x20

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402630:

.cfi_restore_state 
            str xzr,[x0,#8]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size wunlock, . - wunlock
.align 4
#-----------------------------------
.globl rsleep
.type rsleep, @function
#-----------------------------------
rsleep:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _rsleep
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr x19,[x1,:lo12:_rsleep]
            str x0,[sp,#40]
            cbz x19,.L_402674

            mov x20,x0
            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x20
            blr x19
.L_402674:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size rsleep, . - rsleep
.align 4
#-----------------------------------
.globl rwakeup
.type rwakeup, @function
#-----------------------------------
rwakeup:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _rwakeup
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr x19,[x1,:lo12:_rwakeup]
            str x0,[sp,#40]
            cbnz x19,.L_4026ac

            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4026ac:

.cfi_restore_state 
            mov x20,x0
            add x0,sp,#40
            bl getcallerpc

            mov x2,x0
            mov w1,#0
            mov x0,x20
            blr x19

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size rwakeup, . - rwakeup
.align 2
#-----------------------------------
.globl rwakeupall
.type rwakeupall, @function
#-----------------------------------
rwakeupall:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, _rwakeup
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr x19,[x1,:lo12:_rwakeup]
            str x0,[sp,#40]
            cbnz x19,.L_402700

            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402700:

.cfi_restore_state 
            mov x20,x0
            add x0,sp,#40
            bl getcallerpc

            mov x2,x0
            mov w1,#1
            mov x0,x20
            blr x19

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
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
.size rwakeupall, . - rwakeupall
.align 4
#-----------------------------------
.globl strecpy
.type strecpy, @function
#-----------------------------------
strecpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x0,x1
            b.lo .L_40273c

            ret 
.L_40273c:

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            sub x3,x1,x0
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x1
            mov x1,x2
            mov w2,#0
            bl memccpy

            sub x3,x0,#1
            cbz x0,.L_402774

            ldr x19,[sp,#16]
            mov x0,x3
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_402774:

.cfi_restore_state 
            sturb wzr,[x19,#-1]
            sub x3,x19,#1
            mov x0,x3
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
.size strecpy, . - strecpy
.align 4
#-----------------------------------
.globl __fmtflush
.type __fmtflush, @function
#-----------------------------------
__fmtflush:

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
            mov w20,w2
            ldr w3,[x0,#48]
            ldr x2,[x0,#16]
            str x1,[x0,#16]
            ldrb w6,[x0]
            mov x19,x0
            sub x2,x1,x2
            ldr x5,[x0,#32]
            asr x4,x2,#1
            add w4,w3,w4
            cmp w6,#0
            add w3,w3,w2
            csel w3,w3,w4,eq
            str w3,[x0,#48]
            cbz x5,.L_402814

            blr x5

            cbz w0,.L_4027fc

            ldp x0,x1,[x19,#16]
            add x20,x0,w20, sxtw
            cmp x1,x20
            b.lo .L_402800

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4027fc:

.cfi_restore_state 
            ldr x0,[x19,#16]
.L_402800:

            str x0,[x19,#24]
            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402814:

.cfi_restore_state 
            mov x0,x1
            b .L_402800
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtflush, . - __fmtflush
.align 4
#-----------------------------------
.globl dofmt
.type dofmt, @function
#-----------------------------------
dofmt:

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
            mov x20,x1
            stp x23,x24,[sp,#48]
.cfi_offset 23, -48
.cfi_offset 24, -40
            mov x23,x0
            ldr w24,[x0,#48]
            stp x21,x22,[sp,#32]
            str x25,[sp,#64]
.cfi_offset 21, -64
.cfi_offset 22, -56
.cfi_offset 25, -32
            nop
            nop
            nop
            nop
.L_402848:

            ldrb w0,[x23]
            ldrb w21,[x20]
            ldp x19,x25,[x23,#16]
            mov w22,w21
            cbz w0,.L_4028f4

            cbnz w21,.L_402888

            b .L_402a5c
.L_402864:

            add x1,x19,#2
            add x20,x20,#1
            mov x0,x19
            cmp x1,x25
            b.hi .L_4028bc
.L_402878:

            strh w22,[x0]
            mov x19,x1
            ldrb w22,[x20]
            cbz w22,.L_4028e4
.L_402888:

            cmp w22,#37
            b.eq .L_402a40

            cmp w22,#127
            b.le .L_402864

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            ldrh w22,[sp,#94]
            add x1,x19,#2
            add x20,x20,w0, sxtw
            mov x0,x19
            cmp x1,x25
            b.ls .L_402878
.L_4028bc:

            mov x1,x19
            mov x0,x23
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_402a24

            ldr x25,[x23,#24]
            strh w22,[x0]
            add x19,x0,#2
            ldrb w22,[x20]
            cbnz w22,.L_402888
.L_4028e4:

            ldr x0,[x23,#16]
            sub x0,x19,x0
            ubfx x0,x0,#1,#32
            b .L_402984
.L_4028f4:

            cbnz w21,.L_40291c

            b .L_402a5c
.L_4028fc:

            add x0,x19,#1
            cmp x0,x25
            b.hi .L_4029b0
.L_402908:

            add x20,x20,#1
            strb w21,[x19]
            mov x19,x0
.L_402914:

            ldrb w21,[x20]
            cbz w21,.L_40297c
.L_40291c:

            cmp w21,#37
            b.eq .L_4029f4

            cmp w21,#127
            b.le .L_4028fc

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            mov w21,w0
            add x0,x19,w0, sxtw
            cmp x25,x0
            b.lo .L_4029d4
.L_402948:

            mov w4,w21
            mov x3,#0
            cbz w21,.L_402914

            nop
            nop
            nop
            nop
.L_402958:

            ldrb w1,[x20,x3]
            strb w1,[x19,x3]
            add x3,x3,#1
            cmp x4,x3
            b.ne .L_402958

            add x20,x20,x4
            add x19,x19,x4
            ldrb w21,[x20]
            cbnz w21,.L_40291c
.L_40297c:

            ldr x0,[x23,#16]
            sub w0,w19,w0
.L_402984:

            ldr w1,[x23,#48]
            str x19,[x23,#16]
            add w0,w0,w1
            str w0,[x23,#48]
            ldp x19,x20,[sp,#16]
            sub w0,w0,w24
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldr x25,[sp,#64]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4029b0:

.cfi_restore_state 
            mov x1,x19
            mov x0,x23
            mov w2,#1
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_402a24

            ldr x25,[x23,#24]
            add x0,x0,#1
            b .L_402908
.L_4029d4:

            mov x1,x19
            mov w2,w21
            mov x0,x23
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_402a24

            ldr x25,[x23,#24]
            b .L_402948
.L_4029f4:

            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            add w0,w0,w2
.L_402a08:

            stp x19,x25,[x23,#16]
            mov w2,#0
            str w0,[x23,#48]
            mov x0,x23
            bl __fmtdispatch

            mov x20,x0
            cbnz x0,.L_402848
.L_402a24:

            ldp x19,x20,[sp,#16]
            mov w0,#-1
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldr x25,[sp,#64]
            ldp fp,lr,[sp],#96
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402a40:

.cfi_restore_state 
            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            asr x2,x2,#1
            add w0,w0,w2
            b .L_402a08
.L_402a5c:

            mov w0,#0
            b .L_402984
.cfi_endproc 
.size dofmt, . - dofmt
.align 2
#-----------------------------------
.globl __fmtpad
.type __fmtpad, @function
#-----------------------------------
__fmtpad:

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
            mov x19,x0
            ldp x2,x4,[x0,#16]
            cmp w1,#0
            b.le .L_402b64

            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_402aa8
.L_402a94:

            add w20,w20,#1
            strb w22,[x0]
            mov x2,x3
            cmp w21,w20
            b.eq .L_402b1c
.L_402aa8:

            add x3,x2,#1
            mov x0,x2
            cmp x3,x4
            b.ls .L_402a94

            ldr x4,[x19,#16]
            str x2,[x19,#16]
            ldr w3,[x19,#48]
            mov x0,x19
            sub x4,x2,x4
            ldrb w6,[x19]
            ldr x1,[x19,#32]
            asr x5,x4,#1
            add w5,w3,w5
            cmp w6,#0
            add w3,w3,w4
            csel w3,w3,w5,eq
            str w3,[x19,#48]
            cbz x1,.L_402b5c

            blr x1

            cbz w0,.L_402b48

            ldp x0,x4,[x19,#16]
            add x2,x0,#1
            cmp x2,x4
            b.hi .L_402b4c

            cbz x0,.L_402b50

            add w20,w20,#1
            strb w22,[x0]
            cmp w21,w20
            b.ne .L_402aa8
.L_402b1c:

            ldr x3,[x19,#16]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub w3,w2,w3
.L_402b28:

            ldr w1,[x19,#48]
            mov w0,#0
            str x2,[x19,#16]
            add w1,w1,w3
            str w1,[x19,#48]
.L_402b3c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402b48:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            ldr x0,[x19,#16]
.L_402b4c:

            str x0,[x19,#24]
.L_402b50:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_402b3c
.L_402b5c:

.cfi_restore_state 
            mov x0,x2
            b .L_402b4c
.L_402b64:

.cfi_restore 21
.cfi_restore 22
            mov w3,#0
            b .L_402b28
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtpad, . - __fmtpad
.align 4
#-----------------------------------
.globl __rfmtpad
.type __rfmtpad, @function
#-----------------------------------
__rfmtpad:

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
            mov x19,x0
            ldp x2,x6,[x0,#16]
            cmp w1,#0
            b.le .L_402c70

            ldr w4,[x0,#48]
            mov x5,x2
            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_402bbc
.L_402ba8:

            add w20,w20,#1
            strh w22,[x3]
            mov x2,x0
            cmp w21,w20
            b.eq .L_402c34
.L_402bbc:

            add x0,x2,#2
            mov x3,x2
            cmp x0,x6
            b.ls .L_402ba8

            sub x0,x2,x5
            ldrb w5,[x19]
            ldr x1,[x19,#32]
            asr x3,x0,#1
            add w3,w4,w3
            cmp w5,#0
            add w4,w4,w0
            str x2,[x19,#16]
            csel w4,w4,w3,eq
            str w4,[x19,#48]
            mov x0,x19
            cbz x1,.L_402c5c

            blr x1

            ldr x3,[x19,#16]
            cbz w0,.L_402c60

            ldr x6,[x19,#24]
            add x2,x3,#2
            mov x5,x3
            cmp x2,x6
            b.hi .L_402c60

            cbz x3,.L_402c64

            ldr w4,[x19,#48]
            add w20,w20,#1
            strh w22,[x3]
            cmp w21,w20
            b.ne .L_402bbc
.L_402c34:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub x0,x2,x5
            ubfx x0,x0,#1,#32
.L_402c40:

            add w4,w4,w0
            mov w0,#0
            str x2,[x19,#16]
            str w4,[x19,#48]
.L_402c50:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402c5c:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x3,x2
.L_402c60:

            str x3,[x19,#24]
.L_402c64:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_402c50
.L_402c70:

            ldr w4,[x19,#48]
            mov w0,#0
            b .L_402c40
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __rfmtpad, . - __rfmtpad
.align 4
#-----------------------------------
.globl __fmtcpy
.type __fmtcpy, @function
#-----------------------------------
__fmtcpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            mov w26,#0
            ldr x25,[x0,#104]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov x21,x0
            add x22,x1,w3, sxtw
            stp x23,x24,[sp,#48]
.cfi_offset 23, -64
.cfi_offset 24, -56
            mov w24,w2
            tbz w25,#0,.L_402cb8

            ldr w26,[x0,#92]
.L_402cb8:

            tbz w25,#2,.L_402cc8

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_402cc8:

            ldrb w0,[x21]
            and x25,x25,#2
            cbz w0,.L_402ddc

            cbz x25,.L_402f1c
.L_402cd8:

            ldr x20,[x21,#16]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#24]
            mov w23,w24
            mov w0,#0
            cmp w24,#0
            b.gt .L_402d20

            b .L_402d9c
.L_402cf8:

            add x1,x20,#2
            add x19,x19,#1
            mov x0,x20
            cmp x1,x27
            b.hi .L_402d64
.L_402d0c:

            mov x20,x1
            ldrh w1,[sp,#108]
            strh w1,[x0]
            subs w23,w23,#1
            b.eq .L_402d90
.L_402d20:

            ldrb w0,[x19]
            sub x1,x22,x19
            strh w0,[sp,#108]
            tbz w0,#7,.L_402cf8

            cmp x1,#2
            b.gt .L_402d44

            mov x0,x19
            bl fullrune

            cbz w0,.L_402d90
.L_402d44:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x20,#2
            mov x0,x20
            cmp x1,x27
            b.ls .L_402d0c
.L_402d64:

            mov x1,x20
            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_402f60

            ldrh w1,[sp,#108]
            add x20,x0,#2
            ldr x27,[x21,#24]
            strh w1,[x0]
            subs w23,w23,#1
            b.ne .L_402d20
.L_402d90:

            ldr x0,[x21,#16]
            sub x0,x20,x0
            ubfx x0,x0,#1,#32
.L_402d9c:

            ldr w1,[x21,#48]
            str x20,[x21,#16]
            add w0,w1,w0
            str w0,[x21,#48]
            cbz x25,.L_402e4c

            sub w1,w26,w24
            mov x0,x21
            bl __rfmtpad

            asr w0,w0,#31
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldr x27,[sp,#80]
.cfi_restore 27
            ldp fp,lr,[sp],#112
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
.L_402ddc:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 26, -40
.cfi_offset 29, -112
.cfi_offset 30, -104
            cbz x25,.L_402f04
.L_402de0:

            ldr x23,[x21,#24]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#16]
            mov w20,w24
            mov w1,#0
            cmp w24,#0
            b.le .L_402e38

            nop
            nop
            nop
            nop
.L_402e00:

            ldrb w4,[x19]
            strh w4,[sp,#108]
            mov w0,w4
            cmp w4,#127
            b.hi .L_402e6c

            add x1,x27,#3
            add x19,x19,#1
            cmp x23,x1
            b.lo .L_402ea4
.L_402e24:

            strb w4,[x27],#1
.L_402e28:

            subs w20,w20,#1
            b.ne .L_402e00
.L_402e30:

            ldr x1,[x21,#16]
            sub w1,w27,w1
.L_402e38:

            ldr w0,[x21,#48]
            str x27,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x25,.L_402f34
.L_402e4c:

            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#0
.L_402e54:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#112
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
.L_402e6c:

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
.cfi_offset 29, -112
.cfi_offset 30, -104
            sub x1,x22,x19
            cmp x1,#2
            b.gt .L_402e84

            mov x0,x19
            bl fullrune

            cbz w0,.L_402e30
.L_402e84:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x27,#3
            cmp x23,x1
            b.hs .L_402ebc

            ldrh w0,[sp,#108]
.L_402ea4:

            and x0,x0,#65535
            bl runelen

            mov w2,w0
            add x0,x27,w0, sxtw
            cmp x23,x0
            b.lo .L_402ee8
.L_402ebc:

            ldrh w4,[sp,#108]
            cmp w4,#127
            b.hi .L_402ed0

            and w4,w4,#255
            b .L_402e24
.L_402ed0:

            mov x0,x27
            add x1,sp,#110
            strh w4,[sp,#110]
            bl runetochar

            add x27,x27,w0, sxtw
            b .L_402e28
.L_402ee8:

            mov x1,x27
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_402f60

            ldr x23,[x21,#24]
            b .L_402ebc
.L_402f04:

.cfi_restore 27
            sub w1,w26,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_402de0

            mov w0,#-1
            b .L_402e54
.L_402f1c:

            sub w1,w26,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_402cd8

            mov w0,#-1
            b .L_402e54
.L_402f34:

.cfi_offset 27, -32
            sub w1,w26,w24
            mov x0,x21
            bl __fmtpad

            asr w0,w0,#31
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldr x27,[sp,#80]
.cfi_remember_state 
.cfi_restore 27
            ldp fp,lr,[sp],#112
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
.L_402f60:

.cfi_restore_state 
            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#-1
            b .L_402e54
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtcpy, . - __fmtcpy
.align 4
#-----------------------------------
.globl __fmtrcpy
.type __fmtrcpy, @function
#-----------------------------------
__fmtrcpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x23,x24,[sp,#48]
.cfi_offset 23, -64
.cfi_offset 24, -56
            mov w24,w2
            ldr x23,[x0,#104]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov x21,x0
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            mov w25,#0
            tbz w23,#0,.L_402fa4

            ldr w25,[x0,#92]
.L_402fa4:

            tbz w23,#2,.L_402fb4

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_402fb4:

            ldrb w0,[x21]
            and x23,x23,#2
            cbz w0,.L_403064

            cbz x23,.L_403128
.L_402fc4:

            add x20,x19,w24, sxtw #1
            mov w0,#0
            ldp x1,x3,[x21,#16]
            cmp x19,x20
            b.lo .L_402ff0

            b .L_403034
.L_402fdc:

            mov x1,x2
            ldrh w2,[x19],#2
            strh w2,[x0]
            cmp x20,x19
            b.ls .L_403028
.L_402ff0:

            add x2,x1,#2
            mov x0,x1
            cmp x2,x3
            b.ls .L_402fdc

            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_403138

            ldrh w2,[x19],#2
            add x1,x0,#2
            ldr x3,[x21,#24]
            strh w2,[x0]
            cmp x20,x19
            b.hi .L_402ff0
.L_403028:

            ldr x0,[x21,#16]
            sub x0,x1,x0
            ubfx x0,x0,#1,#32
.L_403034:

            ldr w2,[x21,#48]
            str x1,[x21,#16]
            add w2,w2,w0
            str w2,[x21,#48]
            cbnz x23,.L_403158
.L_403048:

            mov w0,#0
.L_40304c:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#112
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
.L_403064:

.cfi_restore_state 
            cbz x23,.L_403140
.L_403068:

            add x22,x19,w24, sxtw #1
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            mov w1,#0
            ldp x20,x28,[x21,#16]
            cmp x19,x22
            b.hs .L_4030b8
.L_403080:

            add x1,x20,#3
            ldrh w26,[x19]
            cmp x28,x1
            b.lo .L_4030d4
.L_403090:

            mov x27,x20
            mov x20,x27
            cmp w26,#127
            b.hi .L_403110
.L_4030a0:

            strb w26,[x20],#1
.L_4030a4:

            add x19,x19,#2
            cmp x22,x19
            b.hi .L_403080

            ldr x1,[x21,#16]
            sub w1,w20,w1
.L_4030b8:

            ldr w0,[x21,#48]
            str x20,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x23,.L_403180

            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            b .L_403048
.L_4030d4:

.cfi_restore_state 
            and x0,x26,#65535
            bl runelen

            mov w2,w0
            add x0,x20,w0, sxtw
            cmp x28,x0
            b.hs .L_403090

            mov x1,x20
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_4031ac

            ldr x28,[x21,#24]
            mov x20,x27
            cmp w26,#127
            b.ls .L_4030a0
.L_403110:

            add x1,sp,#110
            mov x0,x27
            strh w26,[sp,#110]
            bl runetochar

            add x20,x27,w0, sxtw
            b .L_4030a4
.L_403128:

.cfi_restore 27
.cfi_restore 28
            sub w1,w25,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_402fc4
.L_403138:

            mov w0,#-1
            b .L_40304c
.L_403140:

            sub w1,w25,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_403068

            mov w0,#-1
            b .L_40304c
.L_403158:

            sub w1,w25,w24
            mov x0,x21
            bl __rfmtpad

            asr w0,w0,#31
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#112
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
.L_403180:

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
            sub w1,w25,w24
            mov x0,x21
            bl __fmtpad

            asr w0,w0,#31
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            ldp fp,lr,[sp],#112
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
.L_4031ac:

.cfi_restore_state 
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            mov w0,#-1
            b .L_40304c
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size __fmtrcpy, . - __fmtrcpy
.align 4
#-----------------------------------
.globl __charfmt
.type __charfmt, @function
#-----------------------------------
__charfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            add x3,x0,#56
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            ldr w2,[x3,#24]
            ldr x1,[x0,#56]
            tbnz w2,#31,.L_403208
.L_4031d8:

            add x2,x1,#11
            and x2,x2,#-8
            str x2,[x0,#56]
.L_4031e4:

            ldr w4,[x1]
            mov w3,#1
            str w3,[x0,#96]
            add x1,sp,#24
            mov w2,w3
            strb w4,[sp,#24]
            bl __fmtcpy

            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_403208:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_4031d8

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            b .L_4031e4
.cfi_endproc 
.size __charfmt, . - __charfmt
.align 2
#-----------------------------------
.globl __runefmt
.type __runefmt, @function
#-----------------------------------
__runefmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            add x3,x0,#56
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            ldr w2,[x3,#24]
            ldr x1,[x0,#56]
            tbnz w2,#31,.L_403264
.L_40323c:

            ldr w3,[x1]
            add x2,x1,#11
            and x2,x2,#-8
            str x2,[x0,#56]
            add x1,sp,#24
            mov w2,#1
            strh w3,[sp,#24]
            bl __fmtrcpy

            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_403264:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_40323c

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            mov w2,#1
            ldr w3,[x1]
            add x1,sp,#24
            strh w3,[sp,#24]
            bl __fmtrcpy

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
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
.size __runefmt, . - __runefmt
.align 4
#-----------------------------------
.globl fmtstrcpy
.type fmtstrcpy, @function
#-----------------------------------
fmtstrcpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x1,.L_403364

            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x0
            mov x19,x1
            ldr x0,[x0,#104]
            str x21,[sp,#32]
.cfi_offset 21, -16
            tbz w0,#2,.L_403324

            ldr w4,[x20,#96]
            cmp w4,#0
            b.le .L_403378

            sxtw x4,w4
            mov x2,#0
            b .L_4032e8
.L_4032dc:

            cmp x3,x4
            b.eq .L_403358

            mov x2,x3
.L_4032e8:

            ldrb w1,[x19,x2]
            add x3,x2,#1
            cbnz w1,.L_4032dc

            mov w21,w2
            sxtw x1,w2
.L_4032fc:

            mov x0,x19
            bl utfnlen

            mov w3,w21
            mov w2,w0
            ldr x21,[sp,#32]
            mov x1,x19
            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b __fmtcpy
.L_403324:

.cfi_restore_state 
            mov x0,x1
            bl utflen

            mov w21,w0
            mov x0,x19
            bl strlen

            mov w3,w0
            mov w2,w21
            mov x1,x19
            ldr x21,[sp,#32]
            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b __fmtcpy
.L_403358:

.cfi_restore_state 
            add w21,w2,#1
            sxtw x1,w21
            b .L_4032fc
.L_403364:

.cfi_def_cfa_offset 0
.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 29
.cfi_restore 30
            adrp x1, .L_406a90
            mov w3,#5
            add x1,x1, :lo12:.L_406a90
            mov w2,w3
            b __fmtcpy
.L_403378:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x1,#0
            mov w21,#0
            b .L_4032fc
.cfi_endproc 
.size fmtstrcpy, . - fmtstrcpy
.align 2
#-----------------------------------
.globl __strfmt
.type __strfmt, @function
#-----------------------------------
__strfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w2,[x0,#80]
            add x3,x0,#56
            ldr x1,[x0,#56]
            tbnz w2,#31,.L_4033a8
.L_403394:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtstrcpy
.L_4033a8:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_403394

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            ldr x1,[x1]
            b fmtstrcpy
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size __strfmt, . - __strfmt
.align 4
#-----------------------------------
.globl fmtrunestrcpy
.type fmtrunestrcpy, @function
#-----------------------------------
fmtrunestrcpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x5,x0
            cbz x1,.L_403440

            ldr x0,[x0,#104]
            tbz w0,#2,.L_403418

            ldr w0,[x5,#96]
            cmp w0,#0
            b.le .L_403454

            mov x3,x1
            mov w2,#0
            b .L_403404
.L_4033f8:

            add w2,w2,#1
            cmp w0,w2
            b.eq .L_403438
.L_403404:

            ldrh w4,[x3]
            add x3,x3,#2
            cbnz w4,.L_4033f8

            mov x0,x5
            b __fmtrcpy
.L_403418:

            ldrh w0,[x1]
            mov x2,x1
            cbz w0,.L_403454

            nop
            nop
            nop
            nop
.L_403428:

            ldrh w3,[x2,#2]!
            cbnz w3,.L_403428

            sub x2,x2,x1
            ubfx x2,x2,#1,#32
.L_403438:

            mov x0,x5
            b __fmtrcpy
.L_403440:

            mov w3,#5
            adrp x1, .L_406a90
            mov w2,w3
            add x1,x1, :lo12:.L_406a90
            b __fmtcpy
.L_403454:

            mov w2,#0
            b .L_403438
.cfi_endproc 

            nop
            nop
            nop
            nop
.size fmtrunestrcpy, . - fmtrunestrcpy
.align 4
#-----------------------------------
.globl __runesfmt
.type __runesfmt, @function
#-----------------------------------
__runesfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w2,[x0,#80]
            add x3,x0,#56
            ldr x1,[x0,#56]
            tbnz w2,#31,.L_403484
.L_403470:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtrunestrcpy
.L_403484:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_403470

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            ldr x1,[x1]
            b fmtrunestrcpy
.cfi_endproc 
.size __runesfmt, . - __runesfmt
.align 2
#-----------------------------------
.globl __percentfmt
.type __percentfmt, @function
#-----------------------------------
__percentfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w2,#1
            mov fp,sp
            ldr w3,[x0,#88]
            add x1,sp,#24
            str w2,[x0,#96]
            strh w3,[sp,#24]
            bl __fmtrcpy

            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __percentfmt, . - __percentfmt
.align 4
#-----------------------------------
.globl __ifmt
.type __ifmt, @function
#-----------------------------------
__ifmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-304]!
.cfi_def_cfa_offset 304
.cfi_offset 29, -304
.cfi_offset 30, -296
            add x5,x0,#56
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -288
.cfi_offset 20, -280
            mov x19,x0
            ldr w0,[x0,#88]
            stp x21,x22,[sp,#32]
            sub w4,w0,#88
            ldr x1,[x19,#104]
            stp x25,x26,[sp,#64]
            ldr w6,[x5,#24]
            stp x27,x28,[sp,#80]
            mov w7,w1
            ldr x2,[x19,#56]
            cmp w4,#32
.cfi_offset 21, -272
.cfi_offset 22, -264
.cfi_offset 25, -240
.cfi_offset 26, -232
.cfi_offset 27, -224
.cfi_offset 28, -216
            b.hi .L_40370c

            mov x3,#4294967297
            movk x3,#8576,lsl #16
            lsr x3,x3,x4
            tbz w3,#0,.L_40370c

            and w20,w1,#4294967247
            orr w20,w20,#256
            cmp w0,#112
            b.ne .L_403a14

            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            tbnz w6,#31,.L_403ca0
.L_403538:

            add x0,x2,#15
            and x0,x0,#-8
            str x0,[x19,#56]
.L_403544:

            ldr x21,[x2]
            adrp x22, .L_406ab0
            adrp x6, .L_406a98
            add x2,x22, :lo12:.L_406ab0
            add x27,x6, :lo12:.L_406a98
            adrp x0, .L_406ad0
            mov w1,#120
            add x0,x0, :lo12:.L_406ad0
            mov w25,#0
            mov x28,#0
            str w1,[x19,#88]
            str x2,[sp,#96]
            mov w2,#16
            str w2,[sp,#112]
            str x0,[sp,#152]
.L_403580:

            tbnz w20,#8,.L_403798
.L_403584:

            lsr x0,x28,#63
            tst w25,w0
            b.eq .L_4039cc

            ldr x21,[sp,#96]
            neg x28,x28
            str wzr,[sp,#148]
            mov w25,#1
            mov x0,x21
            bl utflen

            mov w23,w0
            mov x0,x21
            str w23,[sp,#108]
            bl strlen

            str w0,[sp,#116]
.L_4035bc:

            ldrsw x3,[sp,#112]
            and w21,w20,#4096
            and w23,w20,#64
            add x22,sp,#299
            mov w24,#0
            mov w26,#0
            nop
            nop
            nop
            nop
.L_4035d8:

            udiv x0,x28,x3
            mov x7,x28
            and w1,w26,#2147483651
            msub x8,x0,x3,x28
            mov x28,x0
            cbz w21,.L_4035f8

            cmp w1,#3
            b.eq .L_403858
.L_4035f8:

            cbnz w23,.L_403870
.L_4035fc:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x3
            b.hs .L_4035d8

            cbz w26,.L_40381c
.L_403614:

            ldr w23,[x19,#96]
            and w0,w20,#8
            str w0,[sp,#120]
.L_403620:

            add x28,sp,#163
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.ge .L_403668

            ldr w0,[sp,#116]
            and w21,w20,#64
            ldr w1,[sp,#108]
            mov w27,#48
            sub w1,w0,w1
            sxtw x0,w0
            str w1,[sp,#128]
            str x0,[sp,#136]
.L_403650:

            cbnz w21,.L_4038ec
.L_403654:

            strb w27,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.lt .L_403650
.L_403668:

            and w0,w20,#48
            orr w0,w0,w25
            cmp w0,#0
            ldr w0,[sp,#120]
            cinc w26,w26,ne
            cbz w0,.L_4039a0

            ldr w0,[sp,#112]
            cmp w0,#16
            b.eq .L_403c84

            ldr w0,[sp,#112]
            cmp w0,#8
            b.eq .L_403aac
.L_403698:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_403ac0

            ldr x0,[x19,#104]
.L_4036ac:

            ldr w1,[sp,#112]
            cmp w1,#8
            b.ne .L_4039b4

            mov x4,x22
.L_4036bc:

            mov x22,x4
            mov w1,#48
            strb w1,[x22],#-1
            mov w1,#45
            cbz w25,.L_4039bc
.L_4036d0:

            strb w1,[x22]
.L_4036d4:

            and x0,x0,#-5
            str x0,[x19,#104]
            add w3,w26,w24
            mov w2,w26
            mov x1,x22
            mov x0,x19
            bl __fmtcpy

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#304
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40370c:

.cfi_def_cfa_offset 304
.cfi_offset 19, -288
.cfi_offset 20, -280
.cfi_offset 21, -272
.cfi_offset 22, -264
.cfi_offset 25, -240
.cfi_offset 26, -232
.cfi_offset 27, -224
.cfi_offset 28, -216
.cfi_offset 29, -304
.cfi_offset 30, -296
            and w25,w1,#256
            tbz w1,#11,.L_4038c4

            cbnz w25,.L_403b48

            tbnz w6,#31,.L_403ccc
.L_40371c:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403728:

            ldr x28,[x2]
            mov w20,w1
            mov w25,#1
            mov x21,#0
.L_403738:

            adrp x1, .L_406ad0
            add x1,x1, :lo12:.L_406ad0
            str x1,[sp,#152]
            ldr x1,[x19,#120]
            str x1,[sp,#96]
            cmp w0,#105
            b.eq .L_403c58

            b.gt .L_403bd4

            cmp w0,#98
            b.eq .L_403c34

            cmp w0,#100
            b.eq .L_403c58

            cmp w0,#88
            b.ne .L_403c18

            adrp x22, .L_406ab0
            add x0,x22, :lo12:.L_406ab0
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            adrp x6, .L_406ab8
            add x27,x6, :lo12:.L_406ab8
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            tbz w20,#8,.L_403584

            nop
            nop
            nop
            nop
.L_403798:

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_403c04

            add x22,sp,#299
            mov w24,#0
            cbz x21,.L_40381c
.L_4037c8:

            ldrsw x28,[sp,#112]
            and w23,w20,#4096
            and w3,w20,#64
            add x22,sp,#299
            mov w24,#0
            mov w26,#0
.L_4037e0:

            udiv x0,x21,x28
            mov x7,x21
            and w1,w26,#2147483651
            msub x8,x0,x28,x21
            mov x21,x0
            cbz w23,.L_403800

            cmp w1,#3
            b.eq .L_403924
.L_403800:

            cbnz w3,.L_403940
.L_403804:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x28
            b.hs .L_4037e0

            cbnz w26,.L_403614
.L_40381c:

            tbz w20,#2,.L_403828

            ldr w26,[x19,#96]
            cbz w26,.L_403a7c
.L_403828:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_403cbc
.L_403834:

            ldr w0,[x19,#88]
            mov w26,#1
            ldr w23,[x19,#96]
            and w0,w0,#4294967263
            cmp w0,#88
            b.ne .L_403a48
.L_40384c:

            and w20,w20,#4294967287
            str wzr,[sp,#120]
            b .L_403620
.L_403858:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w23,.L_4035fc
.L_403870:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str x3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr x3,[sp,#136]
            cbz w0,.L_4035fc

            ldr w3,[sp,#108]
            ldr w0,[sp,#116]
            add w26,w26,w3
            sub w1,w0,w3
            add w24,w24,w1
            sxtw x2,w0
            ldr x1,[sp,#96]
            sub x22,x22,x2
            add x0,x22,#1
            bl memmove

            ldp x8,x7,[sp,#120]
            ldr x3,[sp,#136]
            b .L_4035fc
.L_4038c4:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#10,.L_403a54

            cbnz w25,.L_403b6c

            tbnz w6,#31,.L_403d48
.L_4038d0:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_4038dc:

            ldr x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403738
.L_4038ec:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            cbz w0,.L_403654

            ldr x1,[sp,#96]
            ldr x2,[sp,#136]
            ldr w0,[sp,#108]
            sub x22,x22,x2
            add w26,w26,w0
            ldr w0,[sp,#128]
            add w24,w24,w0
            add x0,x22,#1
            bl memmove

            b .L_403654
.L_403924:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w3,.L_403804

            nop
            nop
            nop
            nop
.L_403940:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str w3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr w3,[sp,#136]
            cbz w0,.L_403804

            ldr w0,[sp,#116]
            str w3,[sp,#136]
            ldr w3,[sp,#108]
            sxtw x2,w0
            sub w1,w0,w3
            sub x22,x22,x2
            add w24,w24,w1
            add w26,w26,w3
            ldr x1,[sp,#96]
            add x0,x22,#1
            bl memmove

            ldp x8,x7,[sp,#120]
            ldr w3,[sp,#136]
            b .L_403804
.L_403998:

            and w20,w20,#4294967287
            nop
            nop
            nop
            nop
.L_4039a0:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_403c78

            ldr x0,[x19,#104]
.L_4039b4:

            mov w1,#45
            cbnz w25,.L_4036d0
.L_4039bc:

            tbnz w20,#5,.L_403a0c

            tbz w20,#4,.L_403aa4

            mov w1,#32
            b .L_4036d0
.L_4039cc:

            eor w0,w25,#1
            lsr x1,x21,#63
            tst w0,w1
            b.eq .L_403798

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_403c08

            neg x21,x21
            mov w25,#1
            b .L_4037c8
.L_403a0c:

            mov w1,#43
            b .L_4036d0
.L_403a14:

.cfi_restore 23
.cfi_restore 24
            tbnz w1,#11,.L_403b4c

            tbnz w1,#10,.L_403b70

            mov w7,w20
            tbnz w1,#13,.L_403d88

            tbz w1,#9,.L_403db0
.L_403a28:

            tbnz w6,#31,.L_403e50
.L_403a2c:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403a38:

            ldrh w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403738
.L_403a48:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w0,w20,#8
            str w0,[sp,#120]
            b .L_403620
.L_403a54:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#13,.L_403d04

            cbnz w25,.L_403d88

            tbnz w6,#31,.L_403dfc
.L_403a60:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403a6c:

            ldrb w21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403738
.L_403a7c:

.cfi_offset 23, -256
.cfi_offset 24, -248
            ldr w0,[x19,#88]
            cmp w0,#111
            b.eq .L_403dd0

            and w0,w0,#4294967263
            mov w23,#0
            cmp w0,#88
            b.eq .L_40384c

            and w0,w20,#8
            str w0,[sp,#120]
            b .L_403668
.L_403aa4:

            add x22,x22,#1
            b .L_4036d4
.L_403aac:

            ldrb w0,[x22,#1]
            cmp w0,#48
            b.eq .L_403998

            add w26,w26,#1
            b .L_403698
.L_403ac0:

            mov w0,#8
            str w0,[sp,#128]
.L_403ac8:

            and w27,w20,#1
            tbz w20,#0,.L_403ad4

            ldr w27,[x19,#92]
.L_403ad4:

            cmp w27,w26
            add x28,sp,#163
            ccmp x28,x22,#2,gt
            and w7,w20,#64
            b.hs .L_403b18

            ldr w0,[sp,#116]
            mov w3,#48
            ldr w1,[sp,#108]
            sxtw x21,w0
            sub w23,w0,w1
            nop
            nop
            nop
            nop
.L_403b00:

            cbnz w7,.L_403b90
.L_403b04:

            strb w3,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w27,#0,lo
            b.lt .L_403b00
.L_403b18:

            ldr x0,[x19,#104]
            ldr w1,[sp,#128]
            and x0,x0,#-2
            str x0,[x19,#104]
            cbz w1,.L_4039b4

            ldr w1,[sp,#112]
            cmp w1,#16
            b.ne .L_4036ac
.L_403b38:

            mov x4,x22
            ldr w1,[x19,#88]
            strb w1,[x4],#-1
            b .L_4036bc
.L_403b48:

.cfi_restore 23
.cfi_restore 24
            mov w20,w1
.L_403b4c:

            tbnz w6,#31,.L_403ce8
.L_403b50:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403b5c:

            ldr x28,[x2]
            mov w25,#1
            mov x21,#0
            b .L_403738
.L_403b6c:

            mov w20,w1
.L_403b70:

            tbnz w6,#31,.L_403d2c
.L_403b74:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403b80:

            ldr x21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403738
.L_403b90:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            stp w7,w3,[sp,#116]
            bl __needsep

            ldp w7,w3,[sp,#116]
            cbz w0,.L_403b04

            ldr x1,[sp,#96]
            sub x22,x22,x21
            ldr w0,[sp,#108]
            mov x2,x21
            stp w7,w3,[sp,#116]
            add w24,w24,w23
            add w26,w26,w0
            add x0,x22,#1
            bl memmove

            ldp w7,w3,[sp,#116]
            b .L_403b04
.L_403bd4:

.cfi_restore 23
.cfi_restore 24
            cmp w0,#117
            b.eq .L_403c58

            cmp w0,#120
            b.eq .L_403eac

            cmp w0,#111
            b.ne .L_403c18

            adrp x6, .L_406a98
            mov w0,#8
            add x27,x6, :lo12:.L_406a98
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w0,[sp,#112]
            b .L_403580
.L_403c04:

            mov w25,#0
.L_403c08:

            cbnz x28,.L_4035bc

            add x22,sp,#299
            mov w24,#0
            b .L_40381c
.L_403c18:

.cfi_restore 23
.cfi_restore 24
            ldp x19,x20,[sp,#16]
            mov w0,#-1
            ldp x21,x22,[sp,#32]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#304
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 25
.cfi_restore 26
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_403c34:

.cfi_restore_state 
            adrp x22, .L_406ab0
            add x0,x22, :lo12:.L_406ab0
            adrp x6, .L_406a98
            add x27,x6, :lo12:.L_406a98
            stp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#2
            str w0,[sp,#112]
            b .L_403580
.L_403c58:

.cfi_restore_state 
            ldr x0,[x19,#128]
            adrp x6, .L_406a98
            mov w1,#10
            add x27,x6, :lo12:.L_406a98
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w1,[sp,#112]
            str x0,[sp,#152]
            b .L_403580
.L_403c78:

            and w0,w20,#8
            str w0,[sp,#128]
            b .L_403ac8
.L_403c84:

            mov w0,#134
            and w0,w20,w0
            add w26,w26,#2
            cmp w0,#128
            b.eq .L_403ac0

            ldr x0,[x19,#104]
            b .L_403b38
.L_403ca0:

            add w0,w6,#8
            str w0,[x5,#24]
            cmp w0,#0
            b.gt .L_403538

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403544
.L_403cbc:

            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            b .L_403834
.L_403ccc:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_40371c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403728
.L_403ce8:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403b50

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403b5c
.L_403d04:

            tbz w1,#9,.L_403d64

            cbnz w25,.L_403ea4

            tbnz w6,#31,.L_403e6c
.L_403d10:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403d1c:

            ldrsh x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403738
.L_403d2c:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403b74

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403b80
.L_403d48:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_4038d0

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4038dc
.L_403d64:

            cbnz w25,.L_403dac

            tbnz w6,#31,.L_403e88
.L_403d6c:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403d78:

            ldrsw x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403738
.L_403d88:

            tbnz w6,#31,.L_403e18
.L_403d8c:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403d98:

            ldrb w21,[x2]
            mov w20,w7
            mov w25,#0
            mov x28,#0
            b .L_403738
.L_403dac:

            mov w20,w1
.L_403db0:

            tbnz w6,#31,.L_403e34
.L_403db4:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403dc0:

            ldr w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403738
.L_403dd0:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w26,w20,#8
            tbnz w20,#3,.L_403de0

            str wzr,[sp,#120]
            b .L_403668
.L_403de0:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_403cbc

            mov w0,#8
            mov w26,#1
            str w0,[sp,#120]
            b .L_403668
.L_403dfc:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403a60

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403a6c
.L_403e18:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403d8c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403d98
.L_403e34:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403db4

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403dc0
.L_403e50:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403a2c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403a38
.L_403e6c:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403d10

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403d1c
.L_403e88:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403d6c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403d78
.L_403ea4:

            mov w20,w1
            b .L_403a28
.L_403eac:

            adrp x22, .L_406ab0
            add x0,x22, :lo12:.L_406ab0
            adrp x6, .L_406a98
            add x27,x6, :lo12:.L_406a98
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            b .L_403580
.cfi_endproc 
.size __ifmt, . - __ifmt
.align 4
#-----------------------------------
.globl __countfmt
.type __countfmt, @function
#-----------------------------------
__countfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w3,[x0,#80]
            add x4,x0,#56
            ldr x1,[x0,#56]
            ldr x2,[x0,#104]
            tbnz w3,#31,.L_403f20
.L_403ee4:

            add x3,x1,#15
            and x3,x3,#-8
            str x3,[x0,#56]
.L_403ef0:

            ldr x1,[x1]
            ldr w0,[x0,#48]
            tbnz w2,#11,.L_403f00

            tbz w2,#10,.L_403f10
.L_403f00:

            sxtw x0,w0
            str x0,[x1]
.L_403f08:

            mov w0,#0
            ret 
.L_403f10:

            tbnz w2,#13,.L_403f3c

            tbz w2,#9,.L_403f48

            strh w0,[x1]
            b .L_403f08
.L_403f20:

            add w5,w3,#8
            str w5,[x4,#24]
            cmp w5,#0
            b.gt .L_403ee4

            ldr x1,[x4,#8]
            add x1,x1,w3, sxtw
            b .L_403ef0
.L_403f3c:

            strb w0,[x1]
            mov w0,#0
            ret 
.L_403f48:

            str w0,[x1]
            b .L_403f08
.cfi_endproc 
.size __countfmt, . - __countfmt
.align 4
#-----------------------------------
.globl __flagfmt
.type __flagfmt, @function
#-----------------------------------
__flagfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w1,[x0,#88]
            cmp w1,#45
            b.eq .L_40405c

            b.gt .L_403f8c

            cmp w1,#39
            b.eq .L_40404c

            b.gt .L_403fc4

            cmp w1,#32
            b.eq .L_404008

            cmp w1,#35
            b.ne .L_403fe0

            ldr x1,[x0,#104]
            orr x1,x1,#8
            str x1,[x0,#104]
            b .L_403fe0
.L_403f8c:

            cmp w1,#108
            b.eq .L_404030

            b.gt .L_404018

            cmp w1,#76
            b.eq .L_403ff8

            cmp w1,#104
            b.ne .L_403fe0

            ldr x1,[x0,#104]
            orr x2,x1,#8192
            tst x1,#512
            csel x1,x2,x1,ne
            orr x1,x1,#512
            str x1,[x0,#104]
            b .L_403fe0
.L_403fc4:

            cmp w1,#43
            b.eq .L_403fe8

            cmp w1,#44
            b.ne .L_403fe0

            ldr x1,[x0,#104]
            orr x1,x1,#4096
            str x1,[x0,#104]
.L_403fe0:

            mov w0,#1
            ret 
.L_403fe8:

            ldr x1,[x0,#104]
            orr x1,x1,#32
            str x1,[x0,#104]
            b .L_403fe0
.L_403ff8:

            ldr x1,[x0,#104]
            orr x1,x1,#16384
            str x1,[x0,#104]
            b .L_403fe0
.L_404008:

            ldr x1,[x0,#104]
            orr x1,x1,#16
            str x1,[x0,#104]
            b .L_403fe0
.L_404018:

            cmp w1,#117
            b.ne .L_403fe0

            ldr x1,[x0,#104]
            orr x1,x1,#256
            str x1,[x0,#104]
            b .L_403fe0
.L_404030:

            ldr x1,[x0,#104]
            orr x2,x1,#2048
            tst x1,#1024
            csel x1,x2,x1,ne
            orr x1,x1,#1024
            str x1,[x0,#104]
            b .L_403fe0
.L_40404c:

            ldr x1,[x0,#104]
            orr x1,x1,#64
            str x1,[x0,#104]
            b .L_403fe0
.L_40405c:

            ldr x1,[x0,#104]
            orr x1,x1,#2
            str x1,[x0,#104]
            b .L_403fe0
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __flagfmt, . - __flagfmt
.align 4
#-----------------------------------
.globl __badfmt
.type __badfmt, @function
#-----------------------------------
__badfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w3,#3
            mov w5,#37
            mov fp,sp
            ldr w4,[x0,#88]
            add x1,sp,#24
            str w3,[x0,#96]
            mov w2,w3
            strb w5,[sp,#24]
            strb w4,[sp,#25]
            strb w5,[sp,#26]
            bl __fmtcpy

            mov w0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __badfmt, . - __badfmt
#-----------------------------------
.type __fmtinstall, @function
#-----------------------------------
__fmtinstall:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub w3,w0,#1
            mov w2,#65534
            cmp w3,w2
            b.hi .L_404140

            adrp x6, fmtalloc
            add x5,x6, :lo12:fmtalloc
            cmp x1,#0
            adrp x3, __badfmt
            ldr w7,[x6,:lo12:fmtalloc]
            add x3,x3, :lo12:__badfmt
            add x2,x5,#8
            csel x1,x3,x1,eq
            add x4,x5,w7, sxtw #4
            add x4,x4,#8
            cmp x4,x2
            b.hi .L_404100

            b .L_404118
.L_4040f4:

            add x2,x2,#16
            cmp x4,x2
            b.ls .L_40410c
.L_404100:

            ldr w3,[x2]
            cmp w3,w0
            b.ne .L_4040f4
.L_40410c:

            add x5,x5,#1032
            cmp x2,x5
            b.eq .L_404140
.L_404118:

            str x1,[x2,#8]
            cmp x2,x4
            b.eq .L_40412c

            mov w0,#0
.L_404128:

            ret 
.L_40412c:

            add w7,w7,#1
            str w7,[x6,:lo12:fmtalloc]
            str w0,[x2]
            mov w0,#0
            b .L_404128
.L_404140:

            mov w0,#-1
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
.size __fmtinstall, . - __fmtinstall
.align 4
#-----------------------------------
.globl fmtinstall
.type fmtinstall, @function
#-----------------------------------
fmtinstall:

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
            mov w19,w0
            mov x20,x1
            bl __fmtlock

            mov x1,x20
            mov w0,w19
            bl __fmtinstall

            mov w19,w0
            bl __fmtunlock

            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size fmtinstall, . - fmtinstall
.align 4
#-----------------------------------
.globl __fmtdispatch
.type __fmtdispatch, @function
#-----------------------------------
__fmtdispatch:

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
            mov x20,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x21,x0
            mov w22,w2
            stur xzr,[x0,#92]
            str xzr,[x0,#104]
            nop
            nop
            nop
            nop
.L_4041b8:

            cbz w22,.L_404220
.L_4041bc:

            ldrh w19,[x20],#2
            str w19,[x21,#88]
            cmp w19,#46
            b.eq .L_404240
.L_4041cc:

            b.hi .L_404254

            cbz w19,.L_4043f4

            cmp w19,#42
            b.ne .L_4042ec

            ldr w1,[x21,#80]
            add x2,x21,#56
            ldr x0,[x21,#56]
            tbnz w1,#31,.L_4043c4
.L_4041ec:

            add x1,x0,#11
            and x1,x1,#-8
            str x1,[x21,#56]
.L_4041f8:

            ldr w3,[x0]
            ldr x0,[x21,#104]
            and x2,x0,#1
            tbz w3,#31,.L_4042c0

            tbz w0,#2,.L_40436c

            and x0,x0,#-5
            str wzr,[x21,#96]
            str x0,[x21,#104]
            cbnz w22,.L_4041bc

            nop
            nop
            nop
            nop
.L_404220:

            mov x1,x20
            add x0,sp,#78
            bl chartorune

            ldrh w19,[sp,#78]
            str w19,[x21,#88]
            add x20,x20,w0, sxtw
            cmp w19,#46
            b.ne .L_4041cc
.L_404240:

            ldr x0,[x21,#104]
            mov x1,#5
            orr x0,x0,x1
            str x0,[x21,#104]
            b .L_4041b8
.L_404254:

            cmp w19,#48
            b.eq .L_4042d4

            sub w0,w19,#49
            and w0,w0,#65535
            cmp w0,#8
            b.hi .L_4042ec

            ldr x0,[x21,#104]
            and x2,x0,#1
.L_404274:

            mov w3,#0
            b .L_404290
.L_40427c:

            ldrh w19,[x20],#2
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.hi .L_4042b4
.L_404290:

            add w3,w3,w3, lsl #2
            add w3,w19,w3, lsl #1
            sub w3,w3,#48
            cbnz w22,.L_40427c

            ldrb w19,[x20],#1
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.ls .L_404290
.L_4042b4:

            cmp w22,#0
            cinc x20,x20,eq
            sub x20,x20,#2
.L_4042c0:

            cbz x2,.L_40435c

            orr x0,x0,#4
            str w3,[x21,#96]
            str x0,[x21,#104]
            b .L_4041b8
.L_4042d4:

            ldr x0,[x21,#104]
            and x2,x0,#1
            tbnz w0,#0,.L_404274

            orr x0,x0,#128
            str x0,[x21,#104]
            b .L_4041b8
.L_4042ec:

            adrp x2, fmtalloc
            add x0,x2, :lo12:fmtalloc
            add x1,x0,#8
            ldr w2,[x2,:lo12:fmtalloc]
            add x2,x0,w2, sxtw #4
            add x2,x2,#8
            cmp x2,x1
            b.hi .L_40431c

            b .L_40437c
.L_404310:

            add x1,x1,#16
            cmp x2,x1
            b.ls .L_40437c
.L_40431c:

            ldr w0,[x1]
            cmp w19,w0
            b.ne .L_404310
.L_404328:

            ldr x0,[x1,#8]
            cbz x0,.L_404328

            ldr x1,[x1,#8]
.L_404334:

            mov x0,x21
            blr x1

            cmp w0,#0
            b.lt .L_4043f4

            b.ne .L_4041b8

            mov x0,x20
.L_40434c:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#80
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40435c:

.cfi_restore_state 
            orr x0,x0,#1
            str w3,[x21,#92]
            str x0,[x21,#104]
            b .L_4041b8
.L_40436c:

            and x2,x0,#1
            neg w3,w3
            orr x0,x0,#2
            b .L_4042c0
.L_40437c:

            str x23,[sp,#48]
.cfi_offset 23, -32
            bl __fmtlock

            adrp x0, knownfmt
            add x23,x0, :lo12:knownfmt
            ldr w0,[x0,:lo12:knownfmt]
            cbnz w0,.L_4043a0

            b .L_4043e0
.L_404398:

            ldr w0,[x23,#16]!
            cbz w0,.L_4043e0
.L_4043a0:

            cmp w19,w0
            b.ne .L_404398

            ldr x1,[x23,#8]
            mov w0,w19
            bl __fmtinstall

            bl __fmtunlock

            ldr x1,[x23,#8]
            ldr x23,[sp,#48]
.cfi_restore 23
            b .L_404334
.L_4043c4:

            add w3,w1,#8
            str w3,[x2,#24]
            cmp w3,#0
            b.gt .L_4041ec

            ldr x0,[x2,#8]
            add x0,x0,w1, sxtw
            b .L_4041f8
.L_4043e0:

.cfi_offset 23, -32
            bl __fmtunlock

            ldr x23,[sp,#48]
.cfi_restore 23
            adrp x1, __badfmt
            add x1,x1, :lo12:__badfmt
            b .L_404334
.L_4043f4:

            mov x0,#0
            b .L_40434c
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtdispatch, . - __fmtdispatch
.align 4
#-----------------------------------
.globl fmtfdflush
.type fmtfdflush, @function
#-----------------------------------
fmtfdflush:

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
            mov x19,x0
            bl __fmtFdFlush

            cmp w0,#0
            b.le .L_40442c

            ldr w0,[x19,#48]
.L_404420:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_40442c:

.cfi_restore_state 
            mov w0,#-1
            b .L_404420
.cfi_endproc 
.size fmtfdflush, . - fmtfdflush
.align 2
#-----------------------------------
.globl fmtfdinit
.type fmtfdinit, @function
#-----------------------------------
fmtfdinit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            add x8,x2,w3, sxtw
            mov x5,x2
            mov fp,sp
            sxtw x6,w1
            adrp x7, __fmtFdFlush
            add x7,x7, :lo12:__fmtFdFlush
            strb wzr,[x0]
            stp x5,x5,[x0,#8]
            mov x3,#0
            mov x2,#0
            stp x8,x7,[x0,#24]
            mov x1,#0
            str x6,[x0,#40]
            str wzr,[x0,#48]
            str xzr,[x0,#104]
            bl fmtlocaleinit

            mov w0,#0
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
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
.size fmtfdinit, . - fmtfdinit
.align 4
#-----------------------------------
.globl __fmtFdFlush
.type __fmtFdFlush, @function
#-----------------------------------
__fmtFdFlush:

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
            mov x19,x0
            ldp x1,x0,[x0,#8]
            sub x2,x0,x1
            cmp w0,w1
            b.ne .L_4044c4
.L_4044b0:

            mov w0,#1
            str x1,[x19,#16]
.L_4044b8:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4044c4:

.cfi_restore_state 
            ldr w0,[x19,#40]
            sxtw x20,w2
            mov x2,x20
            bl write

            mov x1,x0
            mov w0,#0
            cmp x1,x20
            b.ne .L_4044b8

            ldr x1,[x19,#8]
            b .L_4044b0
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtFdFlush, . - __fmtFdFlush
.align 4
#-----------------------------------
.globl fmtlocaleinit
.type fmtlocaleinit, @function
#-----------------------------------
fmtlocaleinit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x1,.L_404534

            ldrb w5,[x1]
            adrp x4, .L_406ad8
            add x4,x4, :lo12:.L_406ad8
            cmp w5,#0
            csel x1,x4,x1,eq
.L_404508:

            cmp x2,#0
            adrp x5, .L_406ae0
            add x5,x5, :lo12:.L_406ae0
            adrp x4, .L_406ae8
            csel x2,x5,x2,eq
            add x4,x4, :lo12:.L_406ae8
            cmp x3,#0
            stp x1,x2,[x0,#112]
            csel x3,x4,x3,eq
            str x3,[x0,#128]
            ret 
.L_404534:

            adrp x1, .L_406ad8
            add x1,x1, :lo12:.L_406ad8
            b .L_404508
.cfi_endproc 
.size fmtlocaleinit, . - fmtlocaleinit
.align 4
#-----------------------------------
.globl __needsep
.type __needsep, @function
#-----------------------------------
__needsep:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x2,x0
            ldr w0,[x0]
            ldr x4,[x1]
            add w0,w0,#1
            str w0,[x2]
            ldrb w3,[x4]
            and w5,w3,#127
            cmp w5,#127
            ccmp w3,#0,#4,ne
            cset w5,ne
            cmp w0,w3
            cset w0,gt
            tst w0,w5
            b.ne .L_404580

            mov w0,#0
            ret 
.L_404580:

            ldrb w0,[x4,#1]
            cbz w0,.L_404590

            add x4,x4,#1
            str x4,[x1]
.L_404590:

            mov w1,#1
            mov w0,w1
            str w1,[x2]
            ret 
.cfi_endproc 
.size __needsep, . - __needsep
.align 4
#-----------------------------------
.globl __fmtlock
.type __fmtlock, @function
#-----------------------------------
__fmtlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, fmtlock
            add x0,x0, :lo12:fmtlock
            b lock
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtlock, . - __fmtlock
.align 4
#-----------------------------------
.globl __fmtunlock
.type __fmtunlock, @function
#-----------------------------------
__fmtunlock:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x0, fmtlock
            add x0,x0, :lo12:fmtlock
            b unlock
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __fmtunlock, . - __fmtunlock
.align 4
#-----------------------------------
.globl fmtvprint
.type fmtvprint, @function
#-----------------------------------
fmtvprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            ldp q2,q3,[x2]
            str d8,[sp,#32]
.cfi_offset 72, -48
            movi v8.2s,#0
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            add x20,x0,#56
            mov x19,x0
            stur d8,[x0,#92]
            ldp q0,q1,[x20]
            str xzr,[x0,#104]
            stp q2,q3,[x20]
            stp q0,q1,[sp,#48]
            bl dofmt

            cmp w0,#0
            ldp q0,q1,[sp,#48]
            str xzr,[x19,#104]
            stur d8,[x19,#92]
            csel w0,w0,wzr,le
            ldr d8,[sp,#32]
            stp q0,q1,[x20]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_restore 72
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size fmtvprint, . - fmtvprint
.align 4
#-----------------------------------
.globl fprint
.type fprint, @function
#-----------------------------------
fprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-256]!
.cfi_def_cfa_offset 256
.cfi_offset 29, -256
.cfi_offset 30, -248
            mov w9,#-48
            mov w8,#-128
            mov fp,sp
            add x10,sp,#208
            add x11,sp,#256
            stp x11,x11,[sp,#48]
            str x10,[sp,#64]
            stp w9,w8,[sp,#72]
            str q0,[sp,#80]
            ldp q0,q16,[sp,#48]
            str q1,[sp,#96]
            str q2,[sp,#112]
            stp q0,q16,[sp,#16]
            str q3,[sp,#128]
            str q4,[sp,#144]
            str q5,[sp,#160]
            str q6,[sp,#176]
            str q7,[sp,#192]
            stp x2,x3,[sp,#208]
            add x2,sp,#16
            stp x4,x5,[sp,#224]
            stp x6,x7,[sp,#240]
            bl vfprint

            ldp fp,lr,[sp],#256
.cfi_restore 30
.cfi_restore 29
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
.size fprint, . - fprint
.align 4
#-----------------------------------
.globl vseprint
.type vseprint, @function
#-----------------------------------
vseprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x1,x0
            b.ls .L_404704

            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov x5,x0
            sub x4,x1,#1
            mov fp,sp
            ldp q0,q1,[x3]
            mov x3,#0
            str x19,[sp,#16]
.cfi_offset 19, -160
            mov x19,x2
            mov x2,#0
            add x0,sp,#40
            mov x1,#0
            strb wzr,[sp,#40]
            stp x5,x5,[sp,#48]
            stp x4,xzr,[sp,#64]
            str xzr,[sp,#80]
            str wzr,[sp,#88]
            stp q0,q1,[sp,#96]
            bl fmtlocaleinit

            mov x1,x19
            add x0,sp,#40
            bl dofmt

            ldr x0,[sp,#56]
            strb wzr,[x0]
            ldr x19,[sp,#16]
            ldr x0,[sp,#56]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_404704:

            mov x0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size vseprint, . - vseprint
.align 4
#-----------------------------------
.globl chartorune
.type chartorune, @function
#-----------------------------------
chartorune:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldrb w2,[x1]
            mov x3,x0
            cmp w2,#127
            b.le .L_404770

            ldrb w4,[x1,#1]
            eor w4,w4,#128
            cmp w4,#63
            b.hi .L_404760

            cmp w2,#223
            b.gt .L_404780

            cmp w2,#191
            b.le .L_404760

            orr w2,w4,w2, lsl #6
            mov w1,#65533
            mov w0,#1
            tst w2,#1920
            b.eq .L_404768

            and w1,w2,#2047
            mov w0,#2
            b .L_404768
.L_404760:

            mov w1,#65533
            mov w0,#1
.L_404768:

            strh w1,[x3]
            ret 
.L_404770:

            mov w1,w2
            mov w0,#1
            strh w1,[x3]
            ret 
.L_404780:

            ldrb w5,[x1,#2]
            mov w6,#239
            mov w1,#65533
            mov w0,#1
            eor w5,w5,#128
            cmp w5,#63
            ccmp w2,w6,#0,ls
            b.gt .L_404768

            orr w2,w4,w2, lsl #6
            orr w2,w5,w2, lsl #6
            tst w2,#63488
            b.eq .L_404768

            and w1,w2,#65535
            mov w0,#3
            b .L_404768
.cfi_endproc 

            nop
            nop
            nop
            nop
.size chartorune, . - chartorune
.align 4
#-----------------------------------
.globl runetochar
.type runetochar, @function
#-----------------------------------
runetochar:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldrh w3,[x1]
            mov x4,x0
            cmp x3,#127
            b.le .L_404820

            asr x1,x3,#6
            and w2,w3,#63
            orr w2,w2,#128
            sxtb w1,w1
            cmp x3,#2047
            b.le .L_40480c

            asr x3,x3,#12
            and w1,w1,#63
            orr w3,w3,#4294967264
            orr w1,w1,#4294967168
            mov w0,#3
            strb w3,[x4]
            strb w1,[x4,#1]
            strb w2,[x4,#2]
            ret 
.L_40480c:

            orr w1,w1,#4294967232
            mov w0,#2
            strb w1,[x4]
            strb w2,[x4,#1]
            ret 
.L_404820:

            mov w0,#1
            strb w3,[x4]
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size runetochar, . - runetochar
.align 4
#-----------------------------------
.globl runelen
.type runelen, @function
#-----------------------------------
runelen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            tst x0,#65408
            b.eq .L_404848

            tst x0,#63488
            cset w0,ne
            add w0,w0,#2
            ret 
.L_404848:

            mov w0,#1
            ret 
.cfi_endproc 
.size runelen, . - runelen
.align 4
#-----------------------------------
.globl runenlen
.type runenlen, @function
#-----------------------------------
runenlen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x2,x0
            cbz w1,.L_404894

            add x3,x0,w1, uxtw #1
            mov w0,#0
            b .L_404870
.L_404864:

            add w0,w0,#1
            cmp x3,x2
            b.eq .L_404890
.L_404870:

            ldrh w1,[x2],#2
            cmp w1,#127
            b.le .L_404864

            cmp w1,#2047
            cinc w0,w0,gt
            add w0,w0,#2
            cmp x3,x2
            b.ne .L_404870
.L_404890:

            ret 
.L_404894:

            mov w0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size runenlen, . - runenlen
.align 4
#-----------------------------------
.globl fullrune
.type fullrune, @function
#-----------------------------------
fullrune:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp w1,#0
            b.le .L_4048d4

            ldrb w2,[x0]
            mov w0,#1
            cmp w2,#127
            b.le .L_4048d0

            mov w0,#0
            cmp w1,#1
            b.eq .L_4048d0

            cmp w2,#223
            ccmp w1,#2,#0,gt
            cset w0,gt
.L_4048d0:

            ret 
.L_4048d4:

            mov w0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size fullrune, . - fullrune
.align 4
#-----------------------------------
.globl utflen
.type utflen, @function
#-----------------------------------
utflen:

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
            mov x19,x0
            mov x20,#0
            ldrb w0,[x19]
            cmp w0,#127
            b.gt .L_404918
.L_404900:

            add x19,x19,#1
            cbz w0,.L_404930

            add x20,x20,#1
.L_40490c:

            ldrb w0,[x19]
            cmp w0,#127
            b.le .L_404900
.L_404918:

            mov x1,x19
            add x0,sp,#46
            add x20,x20,#1
            bl chartorune

            add x19,x19,w0, sxtw
            b .L_40490c
.L_404930:

            mov w0,w20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size utflen, . - utflen
.align 4
#-----------------------------------
.globl utfnlen
.type utfnlen, @function
#-----------------------------------
utfnlen:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x21,[sp,#32]
.cfi_offset 21, -32
            add x21,x0,x1
            cmp x0,x21
            b.hs .L_4049c4

            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x0
            mov x20,#0
.L_404964:

            ldrb w0,[x19]
            cmp w0,#127
            b.gt .L_404988

            cbnz w0,.L_4049bc
.L_404974:

            mov w0,w20
            ldp x19,x20,[sp,#16]
.L_40497c:

.cfi_restore 20
.cfi_restore 19
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_def_cfa_offset 0
            ret 
.L_404988:

.cfi_def_cfa_offset 64
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 29, -64
.cfi_offset 30, -56
            sub w1,w21,w19
            mov x0,x19
            bl fullrune

            mov w2,w0
            mov x1,x19
            add x0,sp,#62
            cbz w2,.L_404974

            bl chartorune

            add x19,x19,w0, sxtw
.L_4049ac:

            add x20,x20,#1
            cmp x19,x21
            b.lo .L_404964

            b .L_404974
.L_4049bc:

            add x19,x19,#1
            b .L_4049ac
.L_4049c4:

.cfi_restore 19
.cfi_restore 20
            mov w0,#0
            b .L_40497c
.cfi_endproc 

            nop
            nop
            nop
            nop
.size utfnlen, . - utfnlen
.align 4
#-----------------------------------
.globl Bflush
.type Bflush, @function
#-----------------------------------
Bflush:

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
            mov x19,x0
            ldr w0,[x0,#16]
            cmp w0,#2
            b.eq .L_404a30

            cmp w0,#3
            b.eq .L_404a0c

            cmp w0,#1
            b.eq .L_404a14
.L_4049fc:

            ldp x19,x20,[sp,#16]
            mov w0,#-1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404a0c:

.cfi_restore_state 
            mov w0,#1
            str w0,[x19,#16]
.L_404a14:

            ldr x0,[x19,#56]
            str wzr,[x19]
            str x0,[x19,#64]
.L_404a20:

            mov w0,#0
.L_404a24:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404a30:

.cfi_restore_state 
            ldr w1,[x19,#4]
            ldr w0,[x19,#40]
            adds w20,w0,w1
            b.eq .L_404a20

            ldr x1,[x19,#48]
            ldr w0,[x19,#20]
            str x21,[sp,#32]
.cfi_offset 21, -16
            sxtw x21,w20
            mov x2,x21
            bl p9write

            cmp w20,w0
            b.ne .L_404a84

            ldr x1,[x19,#32]
            ldr w0,[x19,#40]
            add x1,x1,x21
            neg w0,w0
            ldr x21,[sp,#32]
.cfi_remember_state 
.cfi_restore 21
            str w0,[x19,#4]
            mov w0,#0
            str x1,[x19,#32]
            b .L_404a24
.L_404a84:

.cfi_restore_state 
            ldr x21,[sp,#32]
.cfi_restore 21
            str wzr,[x19,#4]
            str wzr,[x19,#16]
            b .L_4049fc
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
.size Bflush, . - Bflush
.align 4
#-----------------------------------
.globl Bgetc
.type Bgetc, @function
#-----------------------------------
Bgetc:

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
            mov x19,x0
            ldr w20,[x0]
            str x21,[sp,#32]
.cfi_offset 21, -16
            cbnz w20,.L_404ba0

            ldr w0,[x0,#16]
            cmp w0,#1
            b.ne .L_404b60

            ldp x0,x1,[x19,#48]
            ldur w1,[x1,#-4]
            stur w1,[x0,#-4]
            ldr x1,[x19,#48]
            ldrsw x2,[x19,#40]
            ldr w0,[x19,#20]
            bl read

            mov x20,x0
            ldr x1,[x19,#48]
            str x1,[x19,#64]
            cmp w0,#0
            b.le .L_404b7c

            ldr w2,[x19,#40]
            sxtw x21,w0
            ldr x0,[x19,#56]
            cmp w2,w20
            b.gt .L_404b38
.L_404b0c:

            ldr x1,[x19,#32]
            neg w20,w20
            add x1,x1,x21
            str x1,[x19,#32]
.L_404b1c:

            add w1,w20,#1
            str w1,[x19]
            ldr x21,[sp,#32]
            ldrb w0,[x0,w20,sxtw]
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
.L_404b38:

.cfi_restore_state 
            add w2,w20,#4
            sub x0,x0,x21
            sub x1,x1,#4
            sub x0,x0,#4
            sxtw x2,w2
            bl memmove

            ldr x0,[x19,#56]
            sub x1,x0,x21
            str x1,[x19,#64]
            b .L_404b0c
.L_404b60:

            cmp w0,#3
            b.eq .L_404b90

            mov w0,#-1
.L_404b6c:

            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404b7c:

.cfi_restore_state 
            mov w0,#3
            csel w0,w0,wzr,eq
            str w0,[x19,#16]
            mov w0,#-1
            b .L_404b6c
.L_404b90:

            mov w0,#1
            str w0,[x19,#16]
            mov w0,#-1
            b .L_404b6c
.L_404ba0:

            ldr x0,[x0,#56]
            b .L_404b1c
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size Bgetc, . - Bgetc
.align 4
#-----------------------------------
.globl Bungetc
.type Bungetc, @function
#-----------------------------------
Bungetc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr w2,[x0,#16]
            mov x1,x0
            cmp w2,#3
            b.eq .L_404bd0

            mov w0,#-1
            cmp w2,#1
            b.eq .L_404bd8

            ret 
.L_404bd0:

            mov w0,#1
            str w0,[x1,#16]
.L_404bd8:

            ldr w2,[x1]
            mov w0,#1
            sub w2,w2,#1
            str w2,[x1]
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size Bungetc, . - Bungetc
.align 4
#-----------------------------------
.globl getcallerpc
.type getcallerpc, @function
#-----------------------------------
getcallerpc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldur x0,[x0,#-16]
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
.size getcallerpc, . - getcallerpc
.align 4
#-----------------------------------
.globl p9write
.type p9write, @function
#-----------------------------------
p9write:

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
            cmp x2,#0
.cfi_offset 19, -32
.cfi_offset 20, -24
            b.le .L_404c80

            mov x20,x2
            mov x19,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w0
            mov x22,x1
            b .L_404c38
.L_404c2c:

            add x19,x19,x0
            cmp x20,x19
            b.le .L_404c6c
.L_404c38:

            sub x2,x20,x19
            add x1,x22,x19
            mov w0,w21
            bl write

            cmp x0,#0
            b.gt .L_404c2c

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            cmp x19,#0
            csel x19,x19,x0,ne
.L_404c5c:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404c6c:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404c80:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x19,#0
            b .L_404c5c
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size p9write, . - p9write
#-----------------------------------
.type fmtpow10, @function
#-----------------------------------
fmtpow10:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            tbnz w0,#31,.L_404cf0

            cmp w0,#159
            b.le .L_404ce0

            sub w0,w0,#159
            cmp w0,#159
            b.le .L_404d48

            mov w2,#0
.L_404cac:

            adrp x1, .L_406c28
            ldr d0,[x1,:lo12:.L_406c28]
            fmov d1,d0
.L_404cb8:

            sub w0,w0,#159
            fmul d0,d0,d1
            cmp w0,#159
            b.gt .L_404cb8

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d1,[x1,w0,sxtw #3]
            fmul d0,d0,d1
            cbnz w2,.L_404d08

            ret 
.L_404ce0:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
            ret 
.L_404cf0:

            cmn w0,#159
            b.lt .L_404d14

            neg w0,w0
            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
.L_404d08:

            fmov d1,#1.000000000000000000e+00
            fdiv d0,d1,d0
            ret 
.L_404d14:

            mov w1,#-159
            sub w0,w1,w0
            cmp w0,#159
            b.le .L_404d2c

            mov w2,#1
            b .L_404cac
.L_404d2c:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_406c28
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_406c28]
            fmul d0,d0,d1
            b .L_404d08
.L_404d48:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_406c28
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_406c28]
            fmul d0,d0,d1
            ret 
.cfi_endproc 
.size fmtpow10, . - fmtpow10
#-----------------------------------
.type xfmtexp, @function
#-----------------------------------
xfmtexp:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            cmp w2,#0
            mov w2,#69
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x21,x0
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov w19,w1
            mov w1,#101
            csel w1,w1,w2,eq
            strb w1,[x21],#2
            cmp w19,#0
            b.lt .L_404e48

            mov w1,#43
            strb w1,[x0,#1]
            add x20,sp,#48
            b.eq .L_404df4
.L_404da8:

            mov w5,#26215
            add x20,sp,#48
            mov x2,#1
            movk w5,#26214,lsl #16
.L_404db8:

            smull x0,w19,w5
            add x3,x20,x2
            mov x4,x2
            add x2,x2,#1
            asr x0,x0,#34
            sub w0,w0,w19, asr #31
            add w1,w0,w0, lsl #2
            sub w1,w19,w1, lsl #1
            mov w19,w0
            add w0,w1,#48
            sturb w0,[x3,#-1]
            cbnz w19,.L_404db8

            mov w19,w4
            cmp w4,#1
            b.ne .L_404e14
.L_404df4:

            eor w22,w19,#1
            add x0,x20,w19, sxtw
            add w19,w19,#1
            add w2,w22,#1
            add w19,w22,w19
            mov w1,#48
            sxtw x2,w2
            bl memset
.L_404e14:

            sxtw x0,w19
            mov x1,x21
            nop
            nop
            nop
            nop
.L_404e20:

            add x2,x20,x0
            sub x0,x0,#1
            ldurb w2,[x2,#-1]
            strb w2,[x1],#1
            cbnz w0,.L_404e20

            strb wzr,[x21,w19,sxtw]
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
.L_404e48:

.cfi_restore_state 
            mov w1,#45
            neg w19,w19
            strb w1,[x0,#1]
            b .L_404da8
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size xfmtexp, . - xfmtexp
.align 4
#-----------------------------------
.globl __efgfmt
.type __efgfmt, @function
#-----------------------------------
__efgfmt:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-224]!
.cfi_def_cfa_offset 224
.cfi_offset 29, -224
.cfi_offset 30, -216
            add x2,x0,#56
            mov fp,sp
            stp x21,x22,[sp,#32]
            ldr w1,[x2,#28]
.cfi_offset 21, -192
.cfi_offset 22, -184
            ldr x22,[x0,#104]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -208
.cfi_offset 20, -200
            mov x19,x0
            stp x23,x24,[sp,#48]
            stp x27,x28,[sp,#80]
            ldr x0,[x0,#56]
            str d8,[sp,#96]
.cfi_offset 23, -176
.cfi_offset 24, -168
.cfi_offset 27, -144
.cfi_offset 28, -136
.cfi_offset 72, -128
            tbz w22,#10,.L_404eb8

            tbnz w1,#31,.L_404f58
.L_404e98:

            add x0,x0,#15
            and x0,x0,#-16
            add x1,x0,#16
            str x1,[x19,#56]
.L_404ea8:

            ldr q0,[x0]
            bl __trunctfdf2

            fmov d8,d0
            b .L_404ecc
.L_404eb8:

            tbnz w1,#31,.L_404f74
.L_404ebc:

            add x1,x0,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_404ec8:

            ldr d8,[x0]
.L_404ecc:

            str xzr,[x19,#104]
            mov w28,#6
            tbz w22,#2,.L_404edc

            ldr w28,[x19,#96]
.L_404edc:

            ldr w21,[x19,#88]
            cmp w21,#65
            b.eq .L_404ef8

            sub w0,w21,#69
            mov x23,#0
            cmp w0,#2
            b.hi .L_404f00
.L_404ef8:

            add w21,w21,#32
            mov x23,#1
.L_404f00:

            fmov d0,d8
            bl __isNaN

            cbz w0,.L_404f90

            adrp x0, pows10
            add x0,x0, :lo12:pows10
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
.L_404f1c:

            and x22,x22,#3
            str x22,[x19,#104]
            mov x0,x20
            bl strlen

            mov x2,x0
            ldp x21,x22,[sp,#32]
            mov x1,x20
            ldp x23,x24,[sp,#48]
            mov x0,x19
            ldp x19,x20,[sp,#16]
            mov w3,w2
            ldp x27,x28,[sp,#80]
            ldr d8,[sp,#96]
            ldp fp,lr,[sp],#224
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 72
.cfi_def_cfa_offset 0
            b __fmtcpy
.L_404f58:

.cfi_restore_state 
            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_404e98

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_404ea8
.L_404f74:

            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_404ebc

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_404ec8
.L_404f90:

            fmov d0,d8
            mov w0,#1
            bl __isInf

            cbnz w0,.L_40525c

            fmov d0,d8
            mov w0,#-1
            bl __isInf

            str w0,[sp,#128]
            cbnz w0,.L_405278

            stp x25,x26,[sp,#64]
.cfi_offset 26, -152
.cfi_offset 25, -160
            bl __errno_location

            fcmpe d8,#0.000000000000000000e+00
            mov x24,x0
            ldr w0,[x0]
            str w0,[sp,#132]
            b.mi .L_405098

            fcmp d8,#0.000000000000000000e+00
            b.ne .L_405780

            mov w0,#48
            mov w27,#0
            mov w5,#1
            str wzr,[sp,#116]
            strh w0,[sp,#160]
.L_404fec:

            ldr x25,[x19,#112]
            adrp x0, .L_406ad8
            add x0,x0, :lo12:.L_406ad8
            str w5,[sp,#120]
            cmp x25,#0
            csel x25,x0,x25,eq
            mov x0,x25
            bl utflen

            mov w6,w0
            ldr w5,[sp,#120]
            cmp w21,#102
            b.eq .L_40548c

            cmp w21,#103
            b.ne .L_405294

            cbz w28,.L_4054d4

            cmp w28,w5
            b.lt .L_4058ac

            sub w1,w5,#1
            add w1,w1,w27
            cmp w28,w1
            ccmn w1,#4,#1,gt
            b.lt .L_4052a8
.L_405044:

            add w20,w5,w27
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.gt .L_405068

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
.L_405068:

            add w28,w23,w28
            cmp w28,w0
            b.ge .L_405508

            adrp x3, pows10
            add x3,x3, :lo12:pows10
            adrp x1, .L_406af0
            adrp x0, .L_406b00
            add x3,x3,#1328
            add x1,x1, :lo12:.L_406af0
            add x0,x0, :lo12:.L_406b00
            mov w2,#512
            bl __assert_fail
.L_405098:

            fneg d8,d8
            mov w0,#1
            str w0,[sp,#116]
.L_4050a4:

            fmov d0,d8
            add x0,sp,#156
            bl frexp

            ldr w0,[sp,#156]
            adrp x1, .L_406c30
            fmov d2,#1.000000000000000000e+00
            ldr d1,[x1,:lo12:.L_406c30]
            scvtf d0,w0
            fmul d0,d0,d1
            fcvtzs w27,d0
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_4050e4

            b .L_4050fc
.L_4050e4:

            sub w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_4050e4
.L_4050fc:

            fmov d2,#1.000000000000000000e+01
            fcmpe d1,d2
            b.ge .L_40510c

            b .L_405124
.L_40510c:

            add w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.ge .L_40510c
.L_405124:

            add x26,sp,#160
            add x20,sp,#177
            mov x1,x26
            fmov d2,#1.000000000000000000e+01
            nop
            nop
            nop
            nop
.L_405138:

            fcvtzs w0,d1
            scvtf d0,w0
            add w0,w0,#48
            strb w0,[x1],#1
            fsub d1,d1,d0
            fmul d1,d1,d2
            cmp x20,x1
            b.ne .L_405138

            mov w25,#10
            sub w27,w27,#16
            mov w1,w27
            mov x0,x20
            mov w2,#0
            bl xfmtexp
.L_405170:

            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmpe d0,d8
            b.mi .L_405744

            b.gt .L_405788
.L_405188:

            add x20,sp,#176
            add x25,x26,#13
            mov x2,x20
.L_405194:

            ldrb w6,[x2]
            str w6,[sp,#120]
            cmp w6,#57
            b.eq .L_4051cc

            mov w3,#57
            strb w3,[x2]
            mov x0,x26
            mov x1,#0
            str x2,[sp,#136]
            bl fmtstrtod

            fcmp d0,d8
            ldr w6,[sp,#120]
            ldr x2,[sp,#136]
            b.ne .L_405ad4
.L_4051cc:

            sub x2,x2,#1
            cmp x25,x2
            b.ne .L_405194
.L_4051d8:

            ldrb w0,[sp,#176]
            cmp w0,#57
            b.eq .L_4057e0
.L_4051e4:

            ldrb w2,[x20]
            str w2,[sp,#120]
            cmp w2,#48
            b.eq .L_405214

            mov w2,#48
            strb w2,[x20]
            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            ldr w2,[sp,#120]
            b.ne .L_405adc
.L_405214:

            sub x20,x20,#1
            cmp x25,x20
            b.ne .L_4051e4
.L_405220:

            mov x0,#17
            nop
            nop
            nop
            nop
.L_405228:

            add x1,x26,x0
            ldurb w1,[x1,#-1]
            cmp w1,#48
            b.ne .L_405248

            sub x0,x0,#1
            add w27,w27,#1
            cmp x0,#1
            b.ne .L_405228
.L_405248:

            mov w5,w0
            strb wzr,[x26,x0]
            ldr w0,[sp,#132]
            str w0,[x24]
            b .L_404fec
.L_40525c:

.cfi_restore 25
.cfi_restore 26
            add w23,w23,#2
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x23,w23
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
            b .L_404f1c
.L_405278:

            add w1,w23,#4
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x1,w1
            add x0,x0,#1280
            ldr x20,[x0,x1,lsl #3]
            b .L_404f1c
.L_405294:

.cfi_offset 25, -160
.cfi_offset 26, -152
            sub w1,w5,#1
            add w28,w28,#1
            add w1,w1,w27
            cmp w28,w5
            b.lt .L_40546c
.L_4052a8:

            sub w27,w28,w5
.L_4052ac:

            mov w2,w23
            add x0,sp,#192
            str w6,[sp,#120]
            mov w23,#0
            str w5,[sp,#136]
            bl xfmtexp

            add x0,sp,#192
            bl strlen

            ldr w5,[sp,#136]
            mov w20,#1
            ldr w6,[sp,#120]
            mov w24,w5
            str w0,[sp,#132]
.L_4052e0:

            cmp w21,#103
            b.eq .L_4056ec
.L_4052e8:

            cmp w20,w28
            b.ge .L_4056d8

            add w28,w28,w6
.L_4052f4:

            ldr w0,[sp,#132]
            add w28,w28,w0
            ldr w0,[sp,#116]
            cbnz w0,.L_4056cc

            tbnz w22,#5,.L_40573c

            and w4,w22,#16
            tbz w22,#4,.L_40531c

            mov w4,#32
            nop
            nop
            nop
            nop
.L_405318:

            add w28,w28,#1
.L_40531c:

            and w1,w22,#1
            str w1,[sp,#136]
            ldrb w0,[x19]
            tbz w22,#0,.L_4055c8

            ldr w1,[x19,#92]
            cmp w1,w28
            b.le .L_4055c4

            sub w1,w1,w28
            mov w2,#130
            and w2,w22,w2
            str w1,[sp,#136]
            cmp w2,#128
            b.eq .L_4055bc

            and w1,w22,#2
            cbz w0,.L_405574

            cbz w1,.L_405890
.L_40535c:

            ldp x1,x21,[x19,#16]
            cbz w4,.L_405378

            add x0,x1,#2
            cmp x0,x21
            b.hi .L_405940
.L_405370:

            strh w4,[x1]
            mov x1,x0
.L_405378:

            add x0,sp,#160
            str x0,[sp,#120]
            cmp w23,#0
            b.le .L_4053b4
.L_405388:

            sub w23,w23,#1
            mov w3,#48
.L_405390:

            add x26,x1,#2
            cmp x26,x21
            b.hi .L_4053d8
.L_40539c:

            strh w3,[x1]
            subs w20,w20,#1
            b.eq .L_405408
.L_4053a8:

            mov x1,x26
            cmp w23,#0
            b.gt .L_405388
.L_4053b4:

            cmp w24,#0
            b.le .L_405560

            ldr x28,[sp,#120]
            add x26,x1,#2
            sub w24,w24,#1
            ldrb w3,[x28],#1
            str x28,[sp,#120]
            cmp x26,x21
            b.ls .L_40539c
.L_4053d8:

            mov x0,x19
            mov w2,#2
            str w3,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_405590

            ldr w3,[sp,#116]
            add x26,x0,#2
            ldr x21,[x19,#24]
            strh w3,[x1]
            subs w20,w20,#1
            b.ne .L_4053a8
.L_405408:

            ldrb w0,[x25]
            cbz w0,.L_4053a8

            mov x28,x25
            b .L_405430
.L_405418:

            mov x0,x26
            mov x26,x1
.L_405420:

            ldrh w1,[sp,#156]
            strh w1,[x0]
            ldrb w0,[x28]
            cbz w0,.L_4053a8
.L_405430:

            mov x1,x28
            add x0,sp,#156
            bl chartorune

            add x28,x28,w0, sxtw
            add x1,x26,#2
            cmp x1,x21
            b.ls .L_405418

            mov x1,x26
            mov x0,x19
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_405590

            ldr x21,[x19,#24]
            add x26,x0,#2
            b .L_405420
.L_40546c:

            add x26,sp,#160
            sxtw x2,w28
            ldrb w0,[x26,w28,sxtw]
            cmp w0,#52
            b.hi .L_40551c
.L_405480:

            mov w5,w28
.L_405484:

            mov w27,#0
            b .L_4052ac
.L_40548c:

            add w20,w27,w5
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.le .L_4054f4
.L_4054a0:

            add w28,w28,w20
            cmp w28,w0
            b.ge .L_405508

            subs w24,w28,w23
            b.mi .L_40592c

            b.ne .L_405998

            ldrb w0,[sp,#160]
            mov w28,w23
            cmp w0,#52
            b.hi .L_405af4
.L_4054c8:

            mov w27,#0
            str wzr,[sp,#132]
            b .L_4052e8
.L_4054d4:

            cmp w5,#1
            b.ne .L_405858

            cmp w27,#0
            ccmn w27,#4,#1,le
            b.ge .L_405b8c

            mov w1,w27
            mov w28,w5
            b .L_4052a8
.L_4054f4:

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
            b .L_4054a0
.L_405508:

            mov w24,w5
            sub w27,w28,w0
            mov w5,w0
            str wzr,[sp,#132]
            b .L_4052e0
.L_40551c:

            cmp w28,#17
            b.hi .L_405480

            sub x2,x2,#1
            mov w3,#48
            adds x2,x26,x2
            b.lo .L_405544

            b .L_405a10
.L_405538:

            strb w3,[x2],#-1
            cmp x2,x26
            b.lo .L_405a10
.L_405544:

            ldrb w0,[x2]
            cmp w0,#56
            b.hi .L_405538

            add w0,w0,#1
            mov w5,w28
            strb w0,[x2]
            b .L_405484
.L_405560:

            cmp w27,#0
            b.le .L_405a48

            sub w27,w27,#1
            mov w3,#48
            b .L_405390
.L_405574:

            cbnz w1,.L_4055cc

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_4055cc
.L_405590:

            mov w0,#-1
            str w0,[sp,#128]
.L_405598:

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
            ldr d8,[sp,#96]
            ldr w0,[sp,#128]
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 27
.cfi_restore 28
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 72
.cfi_def_cfa_offset 0
            ret 
.L_4055bc:

.cfi_restore_state 
            add w23,w23,w1
            add w20,w20,w1
.L_4055c4:

            str wzr,[sp,#136]
.L_4055c8:

            cbnz w0,.L_40535c
.L_4055cc:

            ldp x0,x3,[x19,#16]
            cbz w4,.L_4055e8

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_405968
.L_4055e0:

            strb w4,[x0]
            mov x0,x1
.L_4055e8:

            add x21,sp,#160
            cmp w23,#0
            b.le .L_405624

            nop
            nop
            nop
            nop
.L_4055f8:

            sub w23,w23,#1
            mov w28,#48
.L_405600:

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_405640
.L_40560c:

            strb w28,[x0]
            subs w20,w20,#1
            b.eq .L_405668
.L_405618:

            mov x0,x1
            cmp w23,#0
            b.gt .L_4055f8
.L_405624:

            cmp w24,#0
            b.le .L_4056b8

            add x1,x0,#1
            ldrb w28,[x21],#1
            sub w24,w24,#1
            cmp x1,x3
            b.ls .L_40560c
.L_405640:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            bl __fmtflush

            cbz x0,.L_405590

            ldr x3,[x19,#24]
            strb w28,[x0]
            add x1,x0,#1
            subs w20,w20,#1
            b.ne .L_405618
.L_405668:

            ldrb w0,[x25]
            cbz w0,.L_405618

            mov x28,x25
            b .L_405690
.L_405678:

            mov x0,x1
            mov x1,x2
.L_405680:

            ldrb w2,[x28]
            strb w2,[x0]
            ldrb w0,[x28,#1]!
            cbz w0,.L_405618
.L_405690:

            add x2,x1,#1
            cmp x2,x3
            b.ls .L_405678

            mov x0,x19
            mov w2,#1
            bl __fmtflush

            cbz x0,.L_405590

            ldr x3,[x19,#24]
            add x1,x0,#1
            b .L_405680
.L_4056b8:

            cmp w27,#0
            b.le .L_405a90

            sub w27,w27,#1
            mov w28,#48
            b .L_405600
.L_4056cc:

            mov w4,#45
            b .L_405318
.L_4056d4:

            mov w27,#0
.L_4056d8:

            cmp w20,w28
            b.ne .L_4052f4

            tbz w22,#3,.L_405850

            add w28,w6,w20
            b .L_4052f4
.L_4056ec:

            tbnz w22,#3,.L_4052e8

            cmp w20,w28
            b.gt .L_4052f4

            cmp w20,w5
            b.gt .L_405848

            b.ge .L_405b7c

            add x0,sp,#160
            add x0,x0,w24, sxtw
            b .L_405724
.L_405710:

            sub w24,w24,#1
            sub x0,x0,#1
            add w28,w23,w24
            cmp w28,w20
            b.le .L_4056d4
.L_405724:

            ldurb w1,[x0,#-1]
            cmp w1,#48
            b.eq .L_405710

            add w28,w23,w24
            mov w27,#0
            b .L_4052e8
.L_40573c:

            mov w4,#43
            b .L_405318
.L_405744:

            add x0,sp,#176
            add x5,sp,#159
            mov w2,#48
            b .L_405760
.L_405754:

            strb w2,[x0],#-1
            cmp x0,x5
            b.eq .L_405a28
.L_405760:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_405754

            add w1,w1,#1
            strb w1,[x0]
.L_405774:

            subs w25,w25,#1
            b.ne .L_405170

            b .L_405188
.L_405780:

            str wzr,[sp,#116]
            b .L_4050a4
.L_405788:

            add x5,sp,#176
            add x2,sp,#159
            mov w1,#57
            b .L_4057a4
.L_405798:

            strb w1,[x5],#-1
            cmp x5,x2
            b.eq .L_405b94
.L_4057a4:

            ldrb w0,[x5]
            sub w0,w0,#1
            cmp w0,#47
            b.le .L_405798

            cmp w0,#48
            ccmp x26,x5,#0,eq
            b.ne .L_405990

            mov w6,#57
            strb w6,[x5]
            add w27,w27,#1
            mov x0,x20
            mov w1,w27
            mov w2,#0
            bl xfmtexp

            b .L_405774
.L_4057e0:

            mov x1,x26
            add x0,sp,#192
            bl strcpy

            add x0,sp,#208
            add x6,sp,#191
            mov w2,#48
            b .L_405808
.L_4057fc:

            strb w2,[x0],#-1
            cmp x0,x6
            b.eq .L_4059ec
.L_405808:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4057fc

            add w1,w1,#1
            strb w1,[x0]
            str w27,[sp,#120]
.L_405820:

            add x0,sp,#192
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            b.ne .L_4051e4

            add x1,sp,#192
            mov x0,x26
            bl strcpy

            ldr w27,[sp,#120]
            b .L_4051e4
.L_405848:

            sub w27,w20,w5
            mov w28,w20
.L_405850:

            add w20,w28,#1
            b .L_4052f4
.L_405858:

            ldrb w0,[sp,#161]
            cmp w0,#52
            b.hi .L_405ae4

            mov w1,#0
            mov w28,#1
.L_40586c:

            sub w0,w5,w28
            mov w5,w28
            add w27,w27,w0
            add w1,w27,w1
            cmp w1,w28
            ccmn w1,#4,#1,lt
            b.ge .L_405044

            mov w27,#0
            b .L_4052ac
.L_405890:

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __rfmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_40535c

            b .L_405590
.L_4058ac:

            add x26,sp,#160
            sxtw x0,w28
            sub w1,w28,#1
            ldrb w2,[x26,w28,sxtw]
            cmp w2,#52
            b.ls .L_40586c

            cmp w28,#17
            b.hi .L_40586c

            sub x0,x0,#1
            mov w7,w28
            adds x0,x26,x0
            mov w28,w1
            b.hs .L_405914
.L_4058e0:

            mov w2,#48
            b .L_4058f4
.L_4058e8:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_405914
.L_4058f4:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4058e8

            add w2,w1,#1
            mov w1,w28
            mov w28,w7
            strb w2,[x0]
            b .L_40586c
.L_405914:

            mov w1,w28
            mov w0,#49
            add w27,w27,#1
            mov w28,w7
            strb w0,[sp,#160]
            b .L_40586c
.L_40592c:

            mov w23,w28
            mov w24,#0
            mov w27,#0
            str wzr,[sp,#132]
            b .L_4052e8
.L_405940:

            mov x0,x19
            mov w2,#2
            str w4,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_405590

            ldr x21,[x19,#24]
            add x0,x0,#2
            ldr w4,[sp,#116]
            b .L_405370
.L_405968:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtflush

            cbz x0,.L_405590

            ldr x3,[x19,#24]
            add x1,x0,#1
            ldr w4,[sp,#116]
            b .L_4055e0
.L_405990:

            strb w0,[x5]
            b .L_405774
.L_405998:

            add x26,sp,#160
            sxtw x3,w24
            ldrb w0,[x26,w24,sxtw]
            cmp w0,#52
            b.ls .L_4054c8

            cmp w24,#17
            b.hi .L_4054c8

            sub x0,x3,#1
            mov w2,#48
            adds x0,x26,x0
            b.lo .L_4059d4

            b .L_405b64
.L_4059c8:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_405b64
.L_4059d4:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4059c8

            add w1,w1,#1
            strb w1,[x0]
            b .L_4054c8
.L_4059ec:

            mov w6,#49
            sub w0,w27,#1
            mov w1,w0
            mov w2,#0
            str w0,[sp,#120]
            add x0,sp,#209
            strb w6,[sp,#192]
            bl xfmtexp

            b .L_405820
.L_405a10:

            mov w0,#49
            add w1,w1,#1
            mov w5,w28
            mov w27,#0
            strb w0,[sp,#160]
            b .L_4052ac
.L_405a28:

            mov w5,#49
            sub w27,w27,#1
            mov w1,w27
            mov x0,x20
            mov w2,#0
            strb w5,[sp,#160]
            bl xfmtexp

            b .L_405774
.L_405a48:

            ldr x0,[x19,#16]
            str x1,[x19,#16]
            ldr w2,[x19,#48]
            sub x0,x1,x0
            asr x0,x0,#1
            add w2,w2,w0
            ldr w0,[sp,#132]
            str w2,[x19,#48]
            cbnz w0,.L_405b2c
.L_405a6c:

            ldr w0,[sp,#136]
            cbz w0,.L_405598

            tbz w22,#1,.L_405598

            ldr w1,[sp,#136]
            mov x0,x19
            bl __rfmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_405598
.L_405a90:

            ldr x2,[x19,#16]
            str x0,[x19,#16]
            ldr w1,[x19,#48]
            sub x0,x0,x2
            add w1,w1,w0
            ldr w0,[sp,#132]
            str w1,[x19,#48]
            cbnz w0,.L_405b48
.L_405ab0:

            ldr w0,[sp,#136]
            cbz w0,.L_405598

            tbz w22,#1,.L_405598

            ldr w1,[sp,#136]
            mov x0,x19
            bl __fmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_405598
.L_405ad4:

            strb w6,[x2]
            b .L_4051d8
.L_405adc:

            strb w2,[x20]
            b .L_405220
.L_405ae4:

            add x26,sp,#160
            mov w7,#1
            mov x0,x26
            b .L_4058e0
.L_405af4:

            mov w0,#49
            mov w24,#1
            strb w0,[sp,#160]
.L_405b00:

            cbz w23,.L_405b18

            sub w23,w23,#1
            mov w27,#0
            add w28,w24,w23
            str wzr,[sp,#132]
            b .L_4052e8
.L_405b18:

            add w20,w20,#1
            mov w28,w24
            mov w27,#0
            str wzr,[sp,#132]
            b .L_4052e8
.L_405b2c:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_405a6c

            b .L_405590
.L_405b48:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_405ab0

            b .L_405590
.L_405b64:

            mov w0,#49
            strb w0,[sp,#160]
            add w24,w24,#1
            mov w0,#48
            strb w0,[x26,x3]
            b .L_405b00
.L_405b7c:

            mov w28,w20
            mov w27,#0
            add w20,w28,#1
            b .L_4052f4
.L_405b8c:

            mov w28,w5
            b .L_405044
.L_405b94:

            bl abort
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size __efgfmt, . - __efgfmt
.align 4
#-----------------------------------
.globl __NaN
.type __NaN, @function
#-----------------------------------
__NaN:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x0,#1
            movk x0,#32752,lsl #48
            fmov d0,x0
            ret 
.cfi_endproc 
.size __NaN, . - __NaN
.align 4
#-----------------------------------
.globl __isNaN
.type __isNaN, @function
#-----------------------------------
__isNaN:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            fmov x1,d0
            mov x2,#9218868437227405312
            mov w0,#0
            and x3,x1,x2
            cmp x3,x2
            b.eq .L_405bcc

            ret 
.L_405bcc:

            tst x1,#4503599627370495
            cset w0,ne
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
.size __isNaN, . - __isNaN
.align 4
#-----------------------------------
.globl __Inf
.type __Inf, @function
#-----------------------------------
__Inf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp w0,#0
            mov x1,#9218868437227405312
            mov x0,#-4503599627370496
            fmov d1,x1
            fmov d0,x0
            fcsel d0,d1,d0,ge
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size __Inf, . - __Inf
.align 4
#-----------------------------------
.globl __isInf
.type __isInf, @function
#-----------------------------------
__isInf:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            fmov x1,d0
            cmp w0,#0
            cbz w0,.L_405c30

            b.le .L_405c20

            mov x0,#9218868437227405312
            cmp x1,x0
            cset w0,eq
            ret 
.L_405c20:

            mov x0,#-4503599627370496
            cmp x1,x0
            cset w0,eq
            ret 
.L_405c30:

            and x1,x1,#9223372036854775807
            mov x0,#9218868437227405312
            cmp x1,x0
            cset w0,eq
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
.size __isInf, . - __isInf
#-----------------------------------
.type xcmp, @function
#-----------------------------------
xcmp:

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
            mov x20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x22,x1
            stp x23,x24,[sp,#48]
.cfi_offset 23, -16
.cfi_offset 24, -8
            mov x23,x0
            b .L_405ca8
.L_405c74:

            ldrb w24,[x23,x20]
            bl __ctype_b_loc

            ldr x3,[x0]
            mov x19,x24
            ubfiz x2,x24,#1,#8
            ldrh w2,[x3,x2]
            tbz w2,#8,.L_405c9c

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldr w19,[x0,x24,lsl #2]
.L_405c9c:

            add x20,x20,#1
            cmp w19,w21
            b.ne .L_405cc8
.L_405ca8:

            ldrb w21,[x22,x20]
            cbnz w21,.L_405c74

            ldp x19,x20,[sp,#16]
            mov w0,w21
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
.L_405cc8:

.cfi_restore_state 
            mov w21,#1
            mov w0,w21
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#64
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
.cfi_endproc 
.size xcmp, . - xcmp
.align 2
#-----------------------------------
.globl fmtstrtod
.type fmtstrtod, @function
#-----------------------------------
fmtstrtod:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#1616
.cfi_def_cfa_offset 1616
            mov w5,#0
            mov w2,#0
            stp fp,lr,[sp]
.cfi_offset 29, -1616
.cfi_offset 30, -1608
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -1600
.cfi_offset 20, -1592
            mov x20,x0
            mov w19,#0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -1584
.cfi_offset 22, -1576
            mov x21,x1
            mov w22,#0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -1568
.cfi_offset 24, -1560
            mov x24,x0
            stp x25,x26,[sp,#64]
.cfi_offset 25, -1552
.cfi_offset 26, -1544
            mov w25,#0
            ldrb w3,[x20]
            sub w4,w3,#48
            cmp w4,#9
            b.hi .L_405d78
.L_405d30:

            cmp w2,#4
            b.gt .L_405e80

            cmp w2,#2
            mov w1,#2
            csel w1,w1,w2,ls
            cmp w2,#3
            mov w2,#4
            csel w2,w1,w2,lt
.L_405d50:

            cmp w3,#48
            ccmp w25,#0,#0,eq
            b.ne .L_405e64

            sub w5,w5,#1
            mov w25,#0
.L_405d64:

            add x20,x20,#1
.L_405d68:

            ldrb w3,[x20]
            sub w4,w3,#48
            cmp w4,#9
            b.ls .L_405d30
.L_405d78:

            cmp w3,#45
            b.eq .L_405f8c

            b.hi .L_405e1c

            cmp w3,#32
            b.eq .L_405f08

            b.ls .L_405ef8

            cmp w3,#43
            b.ne .L_405eac

            cbz w2,.L_40621c
.L_405d9c:

            cmp w2,#5
            b.eq .L_4064a8

            cmp w2,#3
            b.eq .L_405f18

            b.le .L_405f24
.L_405db0:

            cmp w2,#6
            b.ne .L_405dc0

            sub x20,x20,#1
            sub x20,x20,#1
.L_405dc0:

            cbz x21,.L_405dc8

            str x20,[x21]
.L_405dc8:

            tbz w19,#2,.L_405fa0

            sxtw x0,w25
            add x1,sp,#112
            b .L_405dec
.L_405dd8:

            sub x0,x0,#1
            mov x23,x1
            ldrb w2,[x1,x0]
            cmp w2,#48
            b.ne .L_406280
.L_405dec:

            mov w25,w0
            cmp w0,#0
            b.gt .L_405dd8

            b.ne .L_40627c
.L_405dfc:

            ldp fp,lr,[sp]
            movi d0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            add sp,sp,#1616
.cfi_remember_state 
.cfi_restore 29
.cfi_restore 30
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
.L_405e1c:

.cfi_restore_state 
            and w0,w3,#4294967263
            cmp w0,#69
            b.eq .L_405ea0

            cmp w3,#46
            b.ne .L_405eac

            orr w19,w19,#4
            cmp w2,#1
            b.ls .L_40620c

            cmp w2,#2
            b.eq .L_4064b4

            cmp w2,#3
            b.eq .L_405f18

            mov w5,w25
.L_405e50:

            b.le .L_405f24
.L_405e54:

            cmp w2,#5
            b.ne .L_405db0

            sub x20,x20,#1
            b .L_405dc0
.L_405e64:

            cmp w25,#1449
            b.gt .L_405d64

            add x23,sp,#112
            add x20,x20,#1
            strb w3,[x23,w25,sxtw]
            add w25,w25,#1
            b .L_405d68
.L_405e80:

            sub w0,w2,#5
            cmp w0,#2
            b.hi .L_405d50

            add w22,w22,w22, lsl #2
            add x20,x20,#1
            mov w2,#7
            add w22,w4,w22, lsl #1
            b .L_405d68
.L_405ea0:

            sub w0,w2,#2
            tst w0,#4294967293
            b.eq .L_406200
.L_405eac:

            cmp w2,#3
            b.eq .L_405f18

            b.gt .L_405e54

            cbnz w2,.L_405f24

            adrp x1, .L_406b10
            mov x0,x20
            add x1,x1, :lo12:.L_406b10
            bl xcmp

            cbnz w0,.L_405f2c

            cbz x21,.L_405edc

            add x20,x20,#3
            str x20,[x21]
.L_405edc:

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            add sp,sp,#1616
.cfi_remember_state 
.cfi_restore 29
.cfi_restore 30
.cfi_restore 25
.cfi_restore 26
.cfi_restore 23
.cfi_restore 24
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b __NaN
.L_405ef8:

.cfi_restore_state 
            sub w3,w3,#9
            and w3,w3,#255
            cmp w3,#4
            b.hi .L_405eac
.L_405f08:

            cbz w2,.L_405d64

            cmp w2,#3
            b.ne .L_405e50

            nop
            nop
            nop
            nop
.L_405f18:

            cbz x21,.L_405dfc

            str x24,[x21]
            b .L_405dfc
.L_405f24:

            cmp w2,#1
            b.ne .L_405dc0
.L_405f2c:

            adrp x1, .L_406b40
            mov x0,x20
            add x1,x1, :lo12:.L_406b40
            bl xcmp

            cbnz w0,.L_4061d4

            cbz x21,.L_405f4c

            add x20,x20,#8
            str x20,[x21]
.L_405f4c:

            bl __errno_location

            tst x19,#1
            mov x1,#-4503599627370496
            mov x2,#9218868437227405312
            fmov d0,x1
            fmov d1,x2
            mov w1,#34
            str w1,[x0]
            ldp fp,lr,[sp]
            fcsel d0,d0,d1,ne
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            add sp,sp,#1616
.cfi_remember_state 
.cfi_restore 29
.cfi_restore 30
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
.L_405f8c:

.cfi_restore_state 
            cbnz w2,.L_4061f8

            orr w19,w19,#1
            add x20,x20,#1
            mov w2,#1
            b .L_405d68
.L_405fa0:

            cbz w25,.L_405dfc

            add x23,sp,#112
            tst x19,#2
            mov w5,w25
            cneg w22,w22,ne
            add w22,w22,w5
            strb wzr,[x23,w25,sxtw]
            cmn w22,#310
            b.lt .L_406298
.L_405fc4:

            cmp w22,#310
            b.gt .L_405f4c

            stp x27,x28,[sp,#80]
.cfi_offset 28, -1528
.cfi_offset 27, -1536
            cmp w22,#0
            b.le .L_406518

            adrp x27, tab1
            add x27,x27, :lo12:tab1
            add x0,sp,#113
            mov w24,#0
            mov w21,#9
            str x0,[sp,#104]
.L_405ff0:

            cmp w22,#9
            mov x0,x23
            csel w28,w22,w21,le
            add w25,w25,w23
            sbfiz x1,x28,#4,#32
            add x2,x27,x1
            ldr w26,[x27,x1]
            ldr x1,[x2,#8]
            add w24,w24,w26
            ldrsw x2,[x2,#4]
            bl memcmp

            cmp w0,#0
            cset w0,gt
            mov x2,x23
            sub w28,w28,w0
            mov w1,#0
            sub w22,w22,w28
            b .L_406044
.L_406038:

            sub w1,w0,#48
            asr w0,w1,w26
            cbnz w0,.L_406228
.L_406044:

            sub w5,w25,w2
            mov x4,x2
            ldrb w3,[x2],#1
            add w0,w1,w1, lsl #2
            add w0,w3,w0, lsl #1
            cbnz w3,.L_406038

            mov w25,w5
            mov x2,x23
            cbz w1,.L_4060b0
.L_406068:

            mov w0,w1
            add w1,w1,w1, lsl #2
            lsl w1,w1,#1
            asr w2,w1,w26
            cbz w2,.L_406068

            mov x25,x23
            mov x2,x23
            nop
            nop
            nop
            nop
.L_406088:

            add w0,w0,w0, lsl #2
            lsl w0,w0,#1
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            subs w0,w0,w1
            b.ne .L_406088

            sub w25,w5,w25
            add w25,w25,w2
.L_4060b0:

            strb wzr,[x2]
            cmp w22,#0
            b.gt .L_405ff0
.L_4060bc:

            adrp x28, tab1
            add x28,x28, :lo12:tab1
            mov w27,#26215
            add x28,x28,#160
            movk w27,#26214,lsl #16
            mov w26,#-10
.L_4060d4:

            tbnz w22,#31,.L_4061bc
.L_4060d8:

            ldrb w4,[sp,#112]
            cmp w4,#52
            b.hi .L_4062a8
.L_4060e4:

            neg w21,w22
            sxtw x20,w21
            sbfiz x0,x21,#4,#32
.L_4060f0:

            add x2,x28,x0
            ldr w5,[x28,x0]
            mov x0,x23
            str w5,[sp,#96]
            ldr x1,[x2,#8]
            ldrsw x2,[x2,#4]
            bl memcmp

            ldr w5,[sp,#96]
            tbz w0,#31,.L_40611c

            sub w21,w21,#1
            sxtw x20,w21
.L_40611c:

            sxtw x8,w25
            add x1,sp,#111
            add x4,x23,x8
            sub w24,w24,w5
            sub x0,x4,#1
            sub x6,x1,x4
            add w22,w22,w21
            add w25,w25,w21
            strb wzr,[x4,x20]
            add x3,x4,x20
            mov x2,#-1
            mov w1,#0
            cmp x23,x0
            b.hi .L_4060d4

            nop
            nop
            nop
            nop
.L_406158:

            ldrb w0,[x4,x2]
            sub w0,w0,#48
            lsl w0,w0,w5
            add w0,w0,w1
            smull x1,w0,w27
            asr x1,x1,#34
            sub w1,w1,w0, asr #31
            madd w0,w1,w26,w0
            add w0,w0,#48
            strb w0,[x3,x2]
            sub x2,x2,#1
            cmp x2,x6
            b.ne .L_406158

            sub x3,x3,x8
            cbz w1,.L_4060d4

            nop
            nop
            nop
            nop
.L_406198:

            smull x2,w1,w27
            mov w0,w1
            asr x2,x2,#34
            sub w1,w2,w1, asr #31
            madd w0,w1,w26,w0
            add w0,w0,#48
            strb w0,[x3,#-1]!
            cbnz w1,.L_406198

            tbz w22,#31,.L_4060d8
.L_4061bc:

            cmn w22,#9
            b.ge .L_4060e4

            mov x20,#9
            mov x0,#144
            mov w21,w20
            b .L_4060f0
.L_4061d4:

.cfi_restore 27
.cfi_restore 28
            adrp x1, .L_406b20
            mov x0,x20
            add x1,x1, :lo12:.L_406b20
            bl xcmp

            cbnz w0,.L_405f18

            cbz x21,.L_405f4c

            add x20,x20,#3
            str x20,[x21]
            b .L_405f4c
.L_4061f8:

            orr w19,w19,#2
            b .L_405d9c
.L_406200:

            add x20,x20,#1
            mov w2,#5
            b .L_405d68
.L_40620c:

            mov w5,w25
            add x20,x20,#1
            mov w2,#3
            b .L_405d68
.L_40621c:

            add x20,x20,#1
            mov w2,#1
            b .L_405d68
.L_406228:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add w3,w0,#48
            strb w3,[sp,#112]
            lsl w0,w0,w26
            add x4,x4,#2
            ldrb w3,[x2]
            sub w0,w1,w0
            ldr x2,[sp,#104]
            cbz w3,.L_406270
.L_406248:

            add w0,w0,w0, lsl #2
            add w0,w3,w0, lsl #1
            sub w0,w0,#48
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            sub w0,w0,w1
            ldrb w3,[x4],#1
            cbnz w3,.L_406248
.L_406270:

            cbz w0,.L_406528

            mov x25,x2
            b .L_406088
.L_40627c:

.cfi_restore 27
.cfi_restore 28
            add x23,sp,#112
.L_406280:

            tst x19,#2
            strb wzr,[x23,w25,sxtw]
            cneg w22,w22,ne
            add w22,w22,w5
            cmn w22,#310
            b.ge .L_405fc4
.L_406298:

            bl __errno_location

            mov w1,#34
            str w1,[x0]
            b .L_405dfc
.L_4062a8:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            sub w9,w4,#48
            add x8,sp,#121
            ldr x20,[sp,#104]
            sxtw x9,w9
            mov x0,x9
            mov w7,#0
            mov x2,#10
            nop
            nop
            nop
            nop
.L_4062c8:

            ldrb w3,[x20]
            add x6,x0,x0, lsl #2
            add x5,x2,x2, lsl #2
            add x20,x20,#1
            sub w1,w3,#48
            sxtw x1,w1
            cbz w3,.L_4064e8

            add x0,x1,x6, lsl #1
            lsl x2,x5,#1
            mov w7,#1
            cmp x8,x20
            b.ne .L_4062c8
.L_4062f8:

            ucvtf d1,x2
.L_4062fc:

            ucvtf d0,x0
            mov x1,#4733283208366391296
            fmov d3,x1
            mov x1,#281474974613504
            movk x1,#16879,lsl #48
            fmov d2,x1
            mov x13,#4294967295
            fmul d0,d0,d3
            fdiv d0,d0,d1
            fcmpe d0,d2
            b.ge .L_40632c

            fcvtzu x13,d0
.L_40632c:

            add x0,x0,#1
            mov x1,#4733283208366391296
            fmov d3,x1
            mov x1,#281474974613504
            ucvtf d0,x0
            movk x1,#16879,lsl #48
            fmov d2,x1
            mov x12,#4294967295
            fmul d0,d0,d3
            fdiv d0,d0,d1
            fcmpe d0,d2
            b.ge .L_406360

            fcvtzu x12,d0
.L_406360:

            mov x11,#268435455
            mov x17,x13
            mov x10,x11
            add x16,x11,#1
            add x9,x13,x12
            mov x15,#0
.L_406378:

            tst x9,#1
            add x0,x10,x16
            csel x0,x0,x10,ne
            mov w5,w4
            mov x7,x23
            sbfx x6,x0,#29,#32
            ubfx x14,x0,#1,#28
            add x6,x6,x9, lsr #1
            lsr x8,x0,#1
            mov x2,x6
            mov x1,x14
.L_4063a4:

            add x2,x2,x2, lsl #2
            add x1,x1,x1, lsl #2
            lsl x2,x2,#1
            lsl x3,x1,#1
            add x0,x2,x1, lsr #27
            ubfiz x1,x1,#1,#27
            orr x3,x0,x3
            and x2,x0,#268435455
            lsr x0,x0,#28
            add w0,w0,#48
            cbnz w5,.L_406464

            cmp w0,#48
            b.gt .L_4064f8

            tst x3,#268435455
            b.ne .L_4063a4

            and w0,w14,#7
            mov w1,w14
            cmp w0,#4
            b.eq .L_40650c
.L_4063f0:

            sub x0,x14,x0
            tbnz w1,#2,.L_4064c4
.L_4063f8:

            ucvtf d2,x6
            movi d3,#0
            ucvtf d0,x0
            mov x0,#4733283208366391296
            fmov d1,x0
            tst x19,#1
            sub w0,w24,#56
            fadd d2,d2,d3
            fmadd d0,d2,d1,d0
            fneg d1,d0
            fcsel d0,d1,d0,ne
            bl ldexp

            fcmp d0,#0.000000000000000000e+00
            b.ne .L_406444

            str d0,[sp,#96]
            bl __errno_location

            ldr d0,[sp,#96]
            mov w1,#34
            str w1,[x0]
.L_406444:

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            add sp,sp,#1616
.cfi_restore 29
.cfi_restore 30
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
.L_406464:

.cfi_restore_state 
            cmp w0,w5
            b.lt .L_40647c

            b.gt .L_4064f8

            ldrb w5,[x7,#1]
            add x7,x7,#1
            b .L_4063a4
.L_40647c:

            cmp x6,x13
            b.eq .L_4064d4

            mov x17,x6
            add x9,x6,x12
            mov x13,x6
            cmp x14,x15
            b.eq .L_406378
.L_406498:

            mov x15,x14
            mov x13,x6
            add x10,x11,x14
            b .L_406378
.L_4064a8:

.cfi_restore 27
.cfi_restore 28
            add x20,x20,#1
            mov w2,#6
            b .L_405d68
.L_4064b4:

            mov w5,w25
            add x20,x20,#1
            mov w2,#4
            b .L_405d68
.L_4064c4:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add x1,x0,#8
            and x0,x1,#268435455
            add x6,x6,x1, lsr #28
            b .L_4063f8
.L_4064d4:

            cmp x14,x15
            b.ne .L_406498
.L_4064dc:

            mov w1,w14
            and w0,w14,#7
            b .L_4063f0
.L_4064e8:

            cbnz w7,.L_4062f8

            mov x0,x9
            fmov d1,#1.000000000000000000e+01
            b .L_4062fc
.L_4064f8:

            mov x11,x14
            mov x12,x6
            add x9,x17,x6
            add x10,x14,x15
            b .L_406378
.L_40650c:

            tbnz w8,#3,.L_4063f0

            sub x14,x14,#4
            b .L_4064dc
.L_406518:

            add x0,sp,#113
            mov w24,#0
            str x0,[sp,#104]
            b .L_4060bc
.L_406528:

            mov w25,w5
            b .L_4060b0
.cfi_endproc 
.size fmtstrtod, . - fmtstrtod
#-----------------------------------
.globl __trunctfdf2
.hidden __trunctfdf2
.type __trunctfdf2, @function
#-----------------------------------
__trunctfdf2:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            fmov x2,d0
            fmov x3,v0
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mrs x4,fpcr
            mov x0,x3
            lsr x1,x3,#63
            ubfx x3,x3,#48,#15
            mov x5,x1
            ubfiz x0,x0,#3,#48
            add x7,x3,#1
            and w6,w1,#255
            mov x8,x1
            orr x0,x0,x2, lsr #61
            lsl x1,x2,#3
            tst x7,#32766
            b.eq .L_406698

            mov x7,#-15360
            add x3,x3,x7
            cmp x3,#2046
            b.le .L_4065e0

            ands x4,x4,#12582912
            b.eq .L_406684

            cmp x4,#1024,lsl #12
            b.eq .L_406838

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_406684
.L_4065a8:

            cmp x4,#1024,lsl #12
            b.eq .L_406864

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_406684

            mov x19,#9218868437227405311
            mov w0,#20
            orr x19,x19,x5, lsl #63
.L_4065cc:

            bl __sfp_handle_exceptions
.L_4065d0:

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_4065e0:

.cfi_restore_state 
            cmp x3,#0
            b.le .L_406738

            cmp xzr,x2, lsl #7
            mov w2,#0
            cset x7,ne
            orr x1,x7,x1, lsr #60
            orr x1,x1,x0, lsl #4
.L_4065fc:

            cmp x1,#0
            cset w0,ne
            and w0,w2,w0
            tst x1,#7
            b.eq .L_4068c4

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_406660

            cmp x4,#2048,lsl #12
            b.eq .L_4067c0

            cbnz x4,.L_4067b4

            and x2,x1,#15
            cmp x2,#4
            b.ne .L_406784

            ubfx x1,x1,#3,#52
            and w3,w3,#2047
            mov x2,#0
            cbz w0,.L_40688c

            bfxil x2,x1,#0,#52
            mov w0,#24
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_406660:

            cbnz x5,.L_4067d8
.L_406664:

            add x1,x1,#8
            and x2,x1,#36028797018963968
            cbnz w0,.L_406790
.L_406670:

            cbz x2,.L_4067dc

            add x2,x3,#1
            cmp x3,#2046
            b.ne .L_4068a8

            cbnz x4,.L_4065a8
.L_406684:

            lsl x19,x5,#63
            mov w0,#20
            orr x19,x19,#9218868437227405312
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_406698:

            orr x2,x0,x1
            cbnz x3,.L_4066dc

            lsl x19,x5,#63
            cbz x2,.L_4065d0
.L_4066a8:

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_40684c

            cmp x4,#2048,lsl #12
            b.eq .L_406824

            cmp x4,#0
            mov x0,#5
            csinc x1,x0,xzr,eq
            mov x8,#0
.L_4066cc:

            ubfx x1,x1,#3,#52
            and w8,w8,#2047
            mov w0,#24
            b .L_4067a4
.L_4066dc:

            cbz x2,.L_406720

            mov x2,#32767
            extr x1,x0,x1,#60
            lsr x0,x0,#50
            cmp x3,x2
            lsr x1,x1,#3
            eor w0,w0,#1
            orr x1,x1,#2251799813685248
            csel w0,w0,wzr,eq
            mov w19,#2047
.L_406704:

            orr x19,x1,x19, lsl #52
            orr x19,x19,x5, lsl #63
            cbnz w0,.L_4065cc

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_406720:

.cfi_restore_state 
            lsl x19,x5,#63
            orr x19,x19,#9218868437227405312
            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_406738:

.cfi_restore_state 
            cmn x3,#52
            b.lt .L_4066a8

            mov x7,#61
            sub x8,x7,x3
            orr x0,x0,#2251799813685248
            cmp x8,#63
            b.gt .L_4067ec

            add w8,w3,#3
            sub w7,w7,w3
            mov w2,#1
            mov x3,#0
            lsl x9,x1,x8
            cmp x9,#0
            cset x9,ne
            lsr x1,x1,x7
            orr x1,x1,x9
            lsl x0,x0,x8
            orr x1,x0,x1
            b .L_4065fc
.L_406784:

            add x1,x1,#4
            and x2,x1,#36028797018963968
            cbz w0,.L_406670
.L_406790:

            cbz x2,.L_4067b8

            add x8,x3,#1
            mov x1,#0
            and w8,w8,#2047
            mov w0,#24
.L_4067a4:

            orr x8,x1,x8, lsl #52
            orr x19,x8,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_4067b4:

            cbz w0,.L_4067dc
.L_4067b8:

            mov x8,x3
            b .L_4066cc
.L_4067c0:

            cbnz x5,.L_406664

            cbz w0,.L_4067dc

            mov x8,x3
.L_4067cc:

            mov x3,x8
            mov x8,x3
            b .L_4066cc
.L_4067d8:

            cbnz w0,.L_4067b8
.L_4067dc:

            ubfx x1,x1,#3,#52
            and w8,w3,#2047
            mov w0,#16
            b .L_4067a4
.L_4067ec:

            add w2,w3,#67
            cmp x8,#64
            mov w7,#-3
            sub w3,w7,w3
            lsl x2,x0,x2
            orr x2,x1,x2
            csel x1,x2,x1,ne
            lsr x0,x0,x3
            cmp x1,#0
            mov w2,#1
            cset x1,ne
            mov x3,#0
            orr x1,x1,x0
            b .L_4065fc
.L_406824:

            mov x1,#1
            cbz x5,.L_4067cc

            mov x8,#0
            mov x1,#9
            b .L_4066cc
.L_406838:

            cbnz x5,.L_406864

            mov x19,#9218868437227405312
            mov w0,#20
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_40684c:

            mov x1,#9
            cbz x5,.L_4066cc

            mov x3,#0
            mov x1,#1
            mov x8,x3
            b .L_4066cc
.L_406864:

            cmp x5,#0
            mov x0,#-4503599627370497
            mov x1,#9218868437227405312
            fmov d0,x0
            fmov d1,x1
            mov w0,#20
            fcsel d0,d0,d1,ne
            fmov x19,d0
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_40688c:

            bfxil x2,x1,#0,#52
            mov w0,#16
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_4068a8:

            mov x3,#2301339409586323455
            mov w0,#16
            and x1,x3,x1, lsr #3
            orr x2,x1,x2, lsl #52
            orr x19,x2,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_4065d0
.L_4068c4:

            ubfx x1,x1,#3,#52
            and w19,w3,#2047
            cbnz w0,.L_4068e8

            mov x2,#0
            bfxil x2,x1,#0,#52
            bfi x2,x19,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            b .L_4065d0
.L_4068e8:

            ubfx w0,w4,#11,#1
            lsl w0,w0,#3
            b .L_406704
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
.size __trunctfdf2, . - __trunctfdf2
#-----------------------------------
.globl __sfp_handle_exceptions
.hidden __sfp_handle_exceptions
.type __sfp_handle_exceptions, @function
#-----------------------------------
__sfp_handle_exceptions:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            tbz w0,#0,.L_406910

            movi v1.2s,#0
            fdiv s0,s1,s1
            mrs x1,fpsr
.L_406910:

            tbz w0,#1,.L_406924

            fmov s1,#1.000000000000000000e+00
            movi v2.2s,#0
            fdiv s0,s1,s2
            mrs x1,fpsr
.L_406924:

            tbz w0,#2,.L_406944

            mov w2,#50606
            mov w1,#2139095039
            movk w2,#29853,lsl #16
            fmov s1,w1
            fmov s2,w2
            fadd s0,s1,s2
            mrs x1,fpsr
.L_406944:

            tbz w0,#3,.L_406954

            movi v1.2s,#128,lsl #16
            fmul s0,s1,s1
            mrs x1,fpsr
.L_406954:

            tbz w0,#4,.L_40696c

            mov w0,#2139095039
            fmov s2,#1.000000000000000000e+00
            fmov s1,w0
            fsub s0,s1,s2
            mrs x0,fpsr
.L_40696c:

            ret 
.cfi_endproc 
.size __sfp_handle_exceptions, . - __sfp_handle_exceptions
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
.L_40697c:

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
.L_406990:
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
.L_406998:
          .string "open"
          .zero 3
.L_4069a0:
          .string "%8ld: %S ...\n"
          .zero 2
.L_4069b0:
          .string "%8ld: %S\n"
          .zero 6
.L_4069c0:
          .string "/dev/stdin"
          .zero 5
.L_4069d0:
          .string "%s:\n"
          .zero 3
.L_4069d8:
          .string "Bopen: unknown mode %d\n"
.L_4069f0:
          .string "Boffset: unknown state %d\n"
          .zero 5
.L_406a10:
          .string "bad mode in directory create"
          .zero 3
.L_406a30:
          .string "unsupported mode in create"
          .zero 5
.L_406a50:
          .string "lock: %r"
          .zero 7
.L_406a60:
          .ascii "interrup"
          .string "ted"
          .zero 4
.L_406a70:
          .string "main"
          .zero 3
.L_406a78:
          .string "mode 0x%x not supported"
.L_406a90:
          .ascii "<"
          .string "nil>"
          .zero 2
.L_406a98:
          .string "0123456789abcdef"
          .zero 7
.L_406ab0:
          .string ":"
          .zero 6
.L_406ab8:
          .string "0123456789ABCDEF"
          .zero 7
.L_406ad0:
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406ad8:
          .string "."
          .zero 6
.L_406ae0:
          .string ","
          .zero 6
.L_406ae8:
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_406af0:
          .string "fmt/fltfmt.c"
          .zero 3
.L_406b00:
          .string "realchr != 'g'"
          .zero 1
.L_406b10:
          .string "nan"
          .zero 4
.L_406b18:
          .string "NAN"
          .zero 4
.L_406b20:
          .string "inf"
          .zero 4
.L_406b28:
          .string "INF"
          .zero 4
.L_406b30:
          .string "-inf"
          .zero 3
.L_406b38:
          .string "-INF"
          .zero 3
.L_406b40:
          .string "infinity"
          .zero 7
.L_406b50:
          .string "15625"
          .zero 2
.L_406b58:
          .string "1953125"
.L_406b60:
          .string "1220703125"
          .zero 5
.L_406b70:
          .string "152587890625"
          .zero 3
.L_406b80:
          .string "19073486328125"
          .zero 1
.L_406b90:
          .string "11920928955078125"
          .zero 6
.L_406ba8:
          .string "1490116119384765625"
          .zero 4
.L_406bc0:
          .ascii "7450580596923828"
.L_406bd0:
          .string "125"
          .zero 4
.L_406bd8:
          .string "63"
          .zero 5
.L_406be0:
          .string "511"
          .zero 4
.L_406be8:
          .string "8191"
          .zero 3
.L_406bf0:
          .string "65535"
          .zero 2
.L_406bf8:
          .string "524287"
          .zero 1
.L_406c00:
          .string "8388607"
.L_406c08:
          .ascii "67108863"
.L_406c10:
          .zero 1
          .zero 7
.L_406c18:
          .ascii "13421772"
.L_406c20:
          .string "7"
          .zero 6
.L_406c28:
          .byte 0x2
          .byte 0x97
          .byte 0x59
          .byte 0x84
          .byte 0x76
          .byte 0x35
          .byte 0xf2
          .byte 0x60
.L_406c30:
          .byte 0x52
          .byte 0x7b
          .byte 0x9f
          .byte 0x50
          .byte 0x13
          .byte 0x44
          .byte 0xd3
          .byte 0x3f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.type pows10, @object
.size pows10, 1280
#-----------------------------------
pows10:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xf0
          .byte 0x3f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x24
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x59
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0x8f
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x88
          .byte 0xc3
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6a
          .byte 0xf8
          .byte 0x40
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x80
          .byte 0x84
          .byte 0x2e
          .byte 0x41
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xd0
          .byte 0x12
          .byte 0x63
          .byte 0x41
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x84
          .byte 0xd7
          .byte 0x97
          .byte 0x41
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x65
          .byte 0xcd
          .byte 0xcd
          .byte 0x41
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x20
          .byte 0x5f
          .byte 0xa0
          .byte 0x2
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe8
          .byte 0x76
          .byte 0x48
          .byte 0x37
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa2
          .byte 0x94
          .byte 0x1a
          .byte 0x6d
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x40
          .byte 0xe5
          .byte 0x9c
          .byte 0x30
          .byte 0xa2
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x90
          .byte 0x1e
          .byte 0xc4
          .byte 0xbc
          .byte 0xd6
          .byte 0x42
          .byte 0x0
          .byte 0x0
          .byte 0x34
          .byte 0x26
          .byte 0xf5
          .byte 0x6b
          .byte 0xc
          .byte 0x43
          .byte 0x0
          .byte 0x80
          .byte 0xe0
          .byte 0x37
          .byte 0x79
          .byte 0xc3
          .byte 0x41
          .byte 0x43
          .byte 0x0
          .byte 0xa0
          .byte 0xd8
          .byte 0x85
          .byte 0x57
          .byte 0x34
          .byte 0x76
          .byte 0x43
          .byte 0x0
          .byte 0xc8
          .byte 0x4e
          .byte 0x67
          .byte 0x6d
          .byte 0xc1
          .byte 0xab
          .byte 0x43
          .byte 0x0
          .byte 0x3d
          .byte 0x91
          .byte 0x60
          .byte 0xe4
          .byte 0x58
          .byte 0xe1
          .byte 0x43
          .byte 0x40
          .byte 0x8c
          .byte 0xb5
          .byte 0x78
          .byte 0x1d
          .byte 0xaf
          .byte 0x15
          .byte 0x44
          .byte 0x50
          .byte 0xef
          .byte 0xe2
          .byte 0xd6
          .byte 0xe4
          .byte 0x1a
          .byte 0x4b
          .byte 0x44
          .byte 0x92
          .byte 0xd5
          .byte 0x4d
          .byte 0x6
          .byte 0xcf
          .byte 0xf0
          .byte 0x80
          .byte 0x44
          .byte 0xf6
          .byte 0x4a
          .byte 0xe1
          .byte 0xc7
          .byte 0x2
          .byte 0x2d
          .byte 0xb5
          .byte 0x44
          .byte 0xb4
          .byte 0x9d
          .byte 0xd9
          .byte 0x79
          .byte 0x43
          .byte 0x78
          .byte 0xea
          .byte 0x44
          .byte 0x91
          .byte 0x2
          .byte 0x28
          .byte 0x2c
          .byte 0x2a
          .byte 0x8b
          .byte 0x20
          .byte 0x45
          .byte 0x35
          .byte 0x3
          .byte 0x32
          .byte 0xb7
          .byte 0xf4
          .byte 0xad
          .byte 0x54
          .byte 0x45
          .byte 0x2
          .byte 0x84
          .byte 0xfe
          .byte 0xe4
          .byte 0x71
          .byte 0xd9
          .byte 0x89
          .byte 0x45
          .byte 0x81
          .byte 0x12
          .byte 0x1f
          .byte 0x2f
          .byte 0xe7
          .byte 0x27
          .byte 0xc0
          .byte 0x45
          .byte 0x21
          .byte 0xd7
          .byte 0xe6
          .byte 0xfa
          .byte 0xe0
          .byte 0x31
          .byte 0xf4
          .byte 0x45
          .byte 0xea
          .byte 0x8c
          .byte 0xa0
          .byte 0x39
          .byte 0x59
          .byte 0x3e
          .byte 0x29
          .byte 0x46
          .byte 0x24
          .byte 0xb0
          .byte 0x8
          .byte 0x88
          .byte 0xef
          .byte 0x8d
          .byte 0x5f
          .byte 0x46
          .byte 0x17
          .byte 0x6e
          .byte 0x5
          .byte 0xb5
          .byte 0xb5
          .byte 0xb8
          .byte 0x93
          .byte 0x46
          .byte 0x9c
          .byte 0xc9
          .byte 0x46
          .byte 0x22
          .byte 0xe3
          .byte 0xa6
          .byte 0xc8
          .byte 0x46
          .byte 0x3
          .byte 0x7c
          .byte 0xd8
          .byte 0xea
          .byte 0x9b
          .byte 0xd0
          .byte 0xfe
          .byte 0x46
          .byte 0x82
          .byte 0x4d
          .byte 0xc7
          .byte 0x72
          .byte 0x61
          .byte 0x42
          .byte 0x33
          .byte 0x47
          .byte 0xe3
          .byte 0x20
          .byte 0x79
          .byte 0xcf
          .byte 0xf9
          .byte 0x12
          .byte 0x68
          .byte 0x47
          .byte 0x1b
          .byte 0x69
          .byte 0x57
          .byte 0x43
          .byte 0xb8
          .byte 0x17
          .byte 0x9e
          .byte 0x47
          .byte 0xb1
          .byte 0xa1
          .byte 0x16
          .byte 0x2a
          .byte 0xd3
          .byte 0xce
          .byte 0xd2
          .byte 0x47
          .byte 0x1d
          .byte 0x4a
          .byte 0x9c
          .byte 0xf4
          .byte 0x87
          .byte 0x82
          .byte 0x7
          .byte 0x48
          .byte 0xa5
          .byte 0x5c
          .byte 0xc3
          .byte 0xf1
          .byte 0x29
          .byte 0x63
          .byte 0x3d
          .byte 0x48
          .byte 0xe7
          .byte 0x19
          .byte 0x1a
          .byte 0x37
          .byte 0xfa
          .byte 0x5d
          .byte 0x72
          .byte 0x48
          .byte 0x61
          .byte 0xa0
          .byte 0xe0
          .byte 0xc4
          .byte 0x78
          .byte 0xf5
          .byte 0xa6
          .byte 0x48
          .byte 0x79
          .byte 0xc8
          .byte 0x18
          .byte 0xf6
          .byte 0xd6
          .byte 0xb2
          .byte 0xdc
          .byte 0x48
          .byte 0x4c
          .byte 0x7d
          .byte 0xcf
          .byte 0x59
          .byte 0xc6
          .byte 0xef
          .byte 0x11
          .byte 0x49
          .byte 0x9e
          .byte 0x5c
          .byte 0x43
          .byte 0xf0
          .byte 0xb7
          .byte 0x6b
          .byte 0x46
          .byte 0x49
          .byte 0xc6
          .byte 0x33
          .byte 0x54
          .byte 0xec
          .byte 0xa5
          .byte 0x6
          .byte 0x7c
          .byte 0x49
          .byte 0x5c
          .byte 0xa0
          .byte 0xb4
          .byte 0xb3
          .byte 0x27
          .byte 0x84
          .byte 0xb1
          .byte 0x49
          .byte 0x73
          .byte 0xc8
          .byte 0xa1
          .byte 0xa0
          .byte 0x31
          .byte 0xe5
          .byte 0xe5
          .byte 0x49
          .byte 0x8f
          .byte 0x3a
          .byte 0xca
          .byte 0x8
          .byte 0x7e
          .byte 0x5e
          .byte 0x1b
          .byte 0x4a
          .byte 0x9a
          .byte 0x64
          .byte 0x7e
          .byte 0xc5
          .byte 0xe
          .byte 0x1b
          .byte 0x51
          .byte 0x4a
          .byte 0xc0
          .byte 0xfd
          .byte 0xdd
          .byte 0x76
          .byte 0xd2
          .byte 0x61
          .byte 0x85
          .byte 0x4a
          .byte 0x30
          .byte 0x7d
          .byte 0x95
          .byte 0x14
          .byte 0x47
          .byte 0xba
          .byte 0xba
          .byte 0x4a
          .byte 0x3e
          .byte 0x6e
          .byte 0xdd
          .byte 0x6c
          .byte 0x6c
          .byte 0xb4
          .byte 0xf0
          .byte 0x4a
          .byte 0xce
          .byte 0xc9
          .byte 0x14
          .byte 0x88
          .byte 0x87
          .byte 0xe1
          .byte 0x24
          .byte 0x4b
          .byte 0x41
          .byte 0xfc
          .byte 0x19
          .byte 0x6a
          .byte 0xe9
          .byte 0x19
          .byte 0x5a
          .byte 0x4b
          .byte 0xa9
          .byte 0x3d
          .byte 0x50
          .byte 0xe2
          .byte 0x31
          .byte 0x50
          .byte 0x90
          .byte 0x4b
          .byte 0x13
          .byte 0x4d
          .byte 0xe4
          .byte 0x5a
          .byte 0x3e
          .byte 0x64
          .byte 0xc4
          .byte 0x4b
          .byte 0x57
          .byte 0x60
          .byte 0x9d
          .byte 0xf1
          .byte 0x4d
          .byte 0x7d
          .byte 0xf9
          .byte 0x4b
          .byte 0x6d
          .byte 0xb8
          .byte 0x4
          .byte 0x6e
          .byte 0xa1
          .byte 0xdc
          .byte 0x2f
          .byte 0x4c
          .byte 0x44
          .byte 0xf3
          .byte 0xc2
          .byte 0xe4
          .byte 0xe4
          .byte 0xe9
          .byte 0x63
          .byte 0x4c
          .byte 0x15
          .byte 0xb0
          .byte 0xf3
          .byte 0x1d
          .byte 0x5e
          .byte 0xe4
          .byte 0x98
          .byte 0x4c
          .byte 0x1b
          .byte 0x9c
          .byte 0x70
          .byte 0xa5
          .byte 0x75
          .byte 0x1d
          .byte 0xcf
          .byte 0x4c
          .byte 0x91
          .byte 0x61
          .byte 0x66
          .byte 0x87
          .byte 0x69
          .byte 0x72
          .byte 0x3
          .byte 0x4d
          .byte 0xf5
          .byte 0xf9
          .byte 0x3f
          .byte 0xe9
          .byte 0x3
          .byte 0x4f
          .byte 0x38
          .byte 0x4d
          .byte 0x72
          .byte 0xf8
          .byte 0x8f
          .byte 0xe3
          .byte 0xc4
          .byte 0x62
          .byte 0x6e
          .byte 0x4d
          .byte 0x47
          .byte 0xfb
          .byte 0x39
          .byte 0xe
          .byte 0xbb
          .byte 0xfd
          .byte 0xa2
          .byte 0x4d
          .byte 0x19
          .byte 0x7a
          .byte 0xc8
          .byte 0xd1
          .byte 0x29
          .byte 0xbd
          .byte 0xd7
          .byte 0x4d
          .byte 0x9f
          .byte 0x98
          .byte 0x3a
          .byte 0x46
          .byte 0x74
          .byte 0xac
          .byte 0xd
          .byte 0x4e
          .byte 0x64
          .byte 0x9f
          .byte 0xe4
          .byte 0xab
          .byte 0xc8
          .byte 0x8b
          .byte 0x42
          .byte 0x4e
          .byte 0x3d
          .byte 0xc7
          .byte 0xdd
          .byte 0xd6
          .byte 0xba
          .byte 0x2e
          .byte 0x77
          .byte 0x4e
          .byte 0xc
          .byte 0x39
          .byte 0x95
          .byte 0x8c
          .byte 0x69
          .byte 0xfa
          .byte 0xac
          .byte 0x4e
          .byte 0xa7
          .byte 0x43
          .byte 0xdd
          .byte 0xf7
          .byte 0x81
          .byte 0x1c
          .byte 0xe2
          .byte 0x4e
          .byte 0x91
          .byte 0x94
          .byte 0xd4
          .byte 0x75
          .byte 0xa2
          .byte 0xa3
          .byte 0x16
          .byte 0x4f
          .byte 0xb5
          .byte 0xb9
          .byte 0x49
          .byte 0x13
          .byte 0x8b
          .byte 0x4c
          .byte 0x4c
          .byte 0x4f
          .byte 0x11
          .byte 0x14
          .byte 0xe
          .byte 0xec
          .byte 0xd6
          .byte 0xaf
          .byte 0x81
          .byte 0x4f
          .byte 0x16
          .byte 0x99
          .byte 0x11
          .byte 0xa7
          .byte 0xcc
          .byte 0x1b
          .byte 0xb6
          .byte 0x4f
          .byte 0x5b
          .byte 0xff
          .byte 0xd5
          .byte 0xd0
          .byte 0xbf
          .byte 0xa2
          .byte 0xeb
          .byte 0x4f
          .byte 0x99
          .byte 0xbf
          .byte 0x85
          .byte 0xe2
          .byte 0xb7
          .byte 0x45
          .byte 0x21
          .byte 0x50
          .byte 0x7f
          .byte 0x2f
          .byte 0x27
          .byte 0xdb
          .byte 0x25
          .byte 0x97
          .byte 0x55
          .byte 0x50
          .byte 0x5f
          .byte 0xfb
          .byte 0xf0
          .byte 0x51
          .byte 0xef
          .byte 0xfc
          .byte 0x8a
          .byte 0x50
          .byte 0x1b
          .byte 0x9d
          .byte 0x36
          .byte 0x93
          .byte 0x15
          .byte 0xde
          .byte 0xc0
          .byte 0x50
          .byte 0x62
          .byte 0x44
          .byte 0x4
          .byte 0xf8
          .byte 0x9a
          .byte 0x15
          .byte 0xf5
          .byte 0x50
          .byte 0x7b
          .byte 0x55
          .byte 0x5
          .byte 0xb6
          .byte 0x1
          .byte 0x5b
          .byte 0x2a
          .byte 0x51
          .byte 0x6d
          .byte 0x55
          .byte 0xc3
          .byte 0x11
          .byte 0xe1
          .byte 0x78
          .byte 0x60
          .byte 0x51
          .byte 0xc8
          .byte 0x2a
          .byte 0x34
          .byte 0x56
          .byte 0x19
          .byte 0x97
          .byte 0x94
          .byte 0x51
          .byte 0x7a
          .byte 0x35
          .byte 0xc1
          .byte 0xab
          .byte 0xdf
          .byte 0xbc
          .byte 0xc9
          .byte 0x51
          .byte 0x6c
          .byte 0xc1
          .byte 0x58
          .byte 0xcb
          .byte 0xb
          .byte 0x16
          .byte 0x0
          .byte 0x52
          .byte 0xc7
          .byte 0xf1
          .byte 0x2e
          .byte 0xbe
          .byte 0x8e
          .byte 0x1b
          .byte 0x34
          .byte 0x52
          .byte 0x39
          .byte 0xae
          .byte 0xba
          .byte 0x6d
          .byte 0x72
          .byte 0x22
          .byte 0x69
          .byte 0x52
          .byte 0xc7
          .byte 0x59
          .byte 0x29
          .byte 0x9
          .byte 0xf
          .byte 0x6b
          .byte 0x9f
          .byte 0x52
          .byte 0x1d
          .byte 0xd8
          .byte 0xb9
          .byte 0x65
          .byte 0xe9
          .byte 0xa2
          .byte 0xd3
          .byte 0x52
          .byte 0x24
          .byte 0x4e
          .byte 0x28
          .byte 0xbf
          .byte 0xa3
          .byte 0x8b
          .byte 0x8
          .byte 0x53
          .byte 0xad
          .byte 0x61
          .byte 0xf2
          .byte 0xae
          .byte 0x8c
          .byte 0xae
          .byte 0x3e
          .byte 0x53
          .byte 0xc
          .byte 0x7d
          .byte 0x57
          .byte 0xed
          .byte 0x17
          .byte 0x2d
          .byte 0x73
          .byte 0x53
          .byte 0x4f
          .byte 0x5c
          .byte 0xad
          .byte 0xe8
          .byte 0x5d
          .byte 0xf8
          .byte 0xa7
          .byte 0x53
          .byte 0x63
          .byte 0xb3
          .byte 0xd8
          .byte 0x62
          .byte 0x75
          .byte 0xf6
          .byte 0xdd
          .byte 0x53
          .byte 0x1e
          .byte 0x70
          .byte 0xc7
          .byte 0x5d
          .byte 0x9
          .byte 0xba
          .byte 0x12
          .byte 0x54
          .byte 0x25
          .byte 0x4c
          .byte 0x39
          .byte 0xb5
          .byte 0x8b
          .byte 0x68
          .byte 0x47
          .byte 0x54
          .byte 0x2e
          .byte 0x9f
          .byte 0x87
          .byte 0xa2
          .byte 0xae
          .byte 0x42
          .byte 0x7d
          .byte 0x54
          .byte 0x7d
          .byte 0xc3
          .byte 0x94
          .byte 0x25
          .byte 0xad
          .byte 0x49
          .byte 0xb2
          .byte 0x54
          .byte 0x5c
          .byte 0xf4
          .byte 0xf9
          .byte 0x6e
          .byte 0x18
          .byte 0xdc
          .byte 0xe6
          .byte 0x54
          .byte 0x73
          .byte 0x71
          .byte 0xb8
          .byte 0x8a
          .byte 0x1e
          .byte 0x93
          .byte 0x1c
          .byte 0x55
          .byte 0xe8
          .byte 0x46
          .byte 0xb3
          .byte 0x16
          .byte 0xf3
          .byte 0xdb
          .byte 0x51
          .byte 0x55
          .byte 0xa2
          .byte 0x18
          .byte 0x60
          .byte 0xdc
          .byte 0xef
          .byte 0x52
          .byte 0x86
          .byte 0x55
          .byte 0xca
          .byte 0x1e
          .byte 0x78
          .byte 0xd3
          .byte 0xab
          .byte 0xe7
          .byte 0xbb
          .byte 0x55
          .byte 0x3f
          .byte 0x13
          .byte 0x2b
          .byte 0x64
          .byte 0xcb
          .byte 0x70
          .byte 0xf1
          .byte 0x55
          .byte 0xe
          .byte 0xd8
          .byte 0x35
          .byte 0x3d
          .byte 0xfe
          .byte 0xcc
          .byte 0x25
          .byte 0x56
          .byte 0x12
          .byte 0x4e
          .byte 0x83
          .byte 0xcc
          .byte 0x3d
          .byte 0x40
          .byte 0x5b
          .byte 0x56
          .byte 0xcb
          .byte 0x10
          .byte 0xd2
          .byte 0x9f
          .byte 0x26
          .byte 0x8
          .byte 0x91
          .byte 0x56
          .byte 0xfe
          .byte 0x94
          .byte 0xc6
          .byte 0x47
          .byte 0x30
          .byte 0x4a
          .byte 0xc5
          .byte 0x56
          .byte 0x3d
          .byte 0x3a
          .byte 0xb8
          .byte 0x59
          .byte 0xbc
          .byte 0x9c
          .byte 0xfa
          .byte 0x56
          .byte 0x66
          .byte 0x24
          .byte 0x13
          .byte 0xb8
          .byte 0xf5
          .byte 0xa1
          .byte 0x30
          .byte 0x57
          .byte 0x80
          .byte 0xed
          .byte 0x17
          .byte 0x26
          .byte 0x73
          .byte 0xca
          .byte 0x64
          .byte 0x57
          .byte 0xe0
          .byte 0xe8
          .byte 0x9d
          .byte 0xef
          .byte 0xf
          .byte 0xfd
          .byte 0x99
          .byte 0x57
          .byte 0x8c
          .byte 0xb1
          .byte 0xc2
          .byte 0xf5
          .byte 0x29
          .byte 0x3e
          .byte 0xd0
          .byte 0x57
          .byte 0xef
          .byte 0x5d
          .byte 0x33
          .byte 0x73
          .byte 0xb4
          .byte 0x4d
          .byte 0x4
          .byte 0x58
          .byte 0x6b
          .byte 0x35
          .byte 0x0
          .byte 0x90
          .byte 0x21
          .byte 0x61
          .byte 0x39
          .byte 0x58
          .byte 0xc5
          .byte 0x42
          .byte 0x0
          .byte 0xf4
          .byte 0x69
          .byte 0xb9
          .byte 0x6f
          .byte 0x58
          .byte 0xbb
          .byte 0x29
          .byte 0x80
          .byte 0x38
          .byte 0xe2
          .byte 0xd3
          .byte 0xa3
          .byte 0x58
          .byte 0x2a
          .byte 0x34
          .byte 0xa0
          .byte 0xc6
          .byte 0xda
          .byte 0xc8
          .byte 0xd8
          .byte 0x58
          .byte 0x35
          .byte 0x41
          .byte 0x48
          .byte 0x78
          .byte 0x11
          .byte 0xfb
          .byte 0xe
          .byte 0x59
          .byte 0xc1
          .byte 0x28
          .byte 0x2d
          .byte 0xeb
          .byte 0xea
          .byte 0x5c
          .byte 0x43
          .byte 0x59
          .byte 0xf1
          .byte 0x72
          .byte 0xf8
          .byte 0xa5
          .byte 0x25
          .byte 0x34
          .byte 0x78
          .byte 0x59
          .byte 0xad
          .byte 0x8f
          .byte 0x76
          .byte 0xf
          .byte 0x2f
          .byte 0x41
          .byte 0xae
          .byte 0x59
          .byte 0xcc
          .byte 0x19
          .byte 0xaa
          .byte 0x69
          .byte 0xbd
          .byte 0xe8
          .byte 0xe2
          .byte 0x59
          .byte 0x3f
          .byte 0xa0
          .byte 0x14
          .byte 0xc4
          .byte 0xec
          .byte 0xa2
          .byte 0x17
          .byte 0x5a
          .byte 0x4f
          .byte 0xc8
          .byte 0x19
          .byte 0xf5
          .byte 0xa7
          .byte 0x8b
          .byte 0x4d
          .byte 0x5a
          .byte 0x32
          .byte 0x1d
          .byte 0x30
          .byte 0xf9
          .byte 0x48
          .byte 0x77
          .byte 0x82
          .byte 0x5a
          .byte 0x7e
          .byte 0x24
          .byte 0x7c
          .byte 0x37
          .byte 0x1b
          .byte 0x15
          .byte 0xb7
          .byte 0x5a
          .byte 0x9e
          .byte 0x2d
          .byte 0x5b
          .byte 0x5
          .byte 0x62
          .byte 0xda
          .byte 0xec
          .byte 0x5a
          .byte 0x82
          .byte 0xfc
          .byte 0x58
          .byte 0x43
          .byte 0x7d
          .byte 0x8
          .byte 0x22
          .byte 0x5b
          .byte 0xa3
          .byte 0x3b
          .byte 0x2f
          .byte 0x94
          .byte 0x9c
          .byte 0x8a
          .byte 0x56
          .byte 0x5b
          .byte 0x8c
          .byte 0xa
          .byte 0x3b
          .byte 0xb9
          .byte 0x43
          .byte 0x2d
          .byte 0x8c
          .byte 0x5b
          .byte 0x97
          .byte 0xe6
          .byte 0xc4
          .byte 0x53
          .byte 0x4a
          .byte 0x9c
          .byte 0xc1
          .byte 0x5b
          .byte 0x3d
          .byte 0x20
          .byte 0xb6
          .byte 0xe8
          .byte 0x5c
          .byte 0x3
          .byte 0xf6
          .byte 0x5b
          .byte 0x4d
          .byte 0xa8
          .byte 0xe3
          .byte 0x22
          .byte 0x34
          .byte 0x84
          .byte 0x2b
          .byte 0x5c
          .byte 0x30
          .byte 0x49
          .byte 0xce
          .byte 0x95
          .byte 0xa0
          .byte 0x32
          .byte 0x61
          .byte 0x5c
          .byte 0x7c
          .byte 0xdb
          .byte 0x41
          .byte 0xbb
          .byte 0x48
          .byte 0x7f
          .byte 0x95
          .byte 0x5c
          .byte 0x5b
          .byte 0x52
          .byte 0x12
          .byte 0xea
          .byte 0x1a
          .byte 0xdf
          .byte 0xca
          .byte 0x5c
          .byte 0x79
          .byte 0x73
          .byte 0x4b
          .byte 0xd2
          .byte 0x70
          .byte 0xcb
          .byte 0x0
          .byte 0x5d
          .byte 0x57
          .byte 0x50
          .byte 0xde
          .byte 0x6
          .byte 0x4d
          .byte 0xfe
          .byte 0x34
          .byte 0x5d
          .byte 0x6d
          .byte 0xe4
          .byte 0x95
          .byte 0x48
          .byte 0xe0
          .byte 0x3d
          .byte 0x6a
          .byte 0x5d
          .byte 0xc4
          .byte 0xae
          .byte 0x5d
          .byte 0x2d
          .byte 0xac
          .byte 0x66
          .byte 0xa0
          .byte 0x5d
          .byte 0x75
          .byte 0x1a
          .byte 0xb5
          .byte 0x38
          .byte 0x57
          .byte 0x80
          .byte 0xd4
          .byte 0x5d
          .byte 0x12
          .byte 0x61
          .byte 0xe2
          .byte 0x6
          .byte 0x6d
          .byte 0xa0
          .byte 0x9
          .byte 0x5e
          .byte 0xab
          .byte 0x7c
          .byte 0x4d
          .byte 0x24
          .byte 0x44
          .byte 0x4
          .byte 0x40
          .byte 0x5e
          .byte 0xd6
          .byte 0xdb
          .byte 0x60
          .byte 0x2d
          .byte 0x55
          .byte 0x5
          .byte 0x74
          .byte 0x5e
          .byte 0xcc
          .byte 0x12
          .byte 0xb9
          .byte 0x78
          .byte 0xaa
          .byte 0x6
          .byte 0xa9
          .byte 0x5e
          .byte 0x7f
          .byte 0x57
          .byte 0xe7
          .byte 0x16
          .byte 0x55
          .byte 0x48
          .byte 0xdf
          .byte 0x5e
          .byte 0xaf
          .byte 0x96
          .byte 0x50
          .byte 0x2e
          .byte 0x35
          .byte 0x8d
          .byte 0x13
          .byte 0x5f
          .byte 0x5b
          .byte 0xbc
          .byte 0xe4
          .byte 0x79
          .byte 0x82
          .byte 0x70
          .byte 0x48
          .byte 0x5f
          .byte 0x72
          .byte 0xeb
          .byte 0x5d
          .byte 0x18
          .byte 0xa3
          .byte 0x8c
          .byte 0x7e
          .byte 0x5f
          .byte 0x27
          .byte 0xb3
          .byte 0x3a
          .byte 0xef
          .byte 0xe5
          .byte 0x17
          .byte 0xb3
          .byte 0x5f
          .byte 0xf1
          .byte 0x5f
          .byte 0x9
          .byte 0x6b
          .byte 0xdf
          .byte 0xdd
          .byte 0xe7
          .byte 0x5f
          .byte 0xed
          .byte 0xb7
          .byte 0xcb
          .byte 0x45
          .byte 0x57
          .byte 0xd5
          .byte 0x1d
          .byte 0x60
          .byte 0xf4
          .byte 0x52
          .byte 0x9f
          .byte 0x8b
          .byte 0x56
          .byte 0xa5
          .byte 0x52
          .byte 0x60
          .byte 0xb1
          .byte 0x27
          .byte 0x87
          .byte 0x2e
          .byte 0xac
          .byte 0x4e
          .byte 0x87
          .byte 0x60
          .byte 0x9d
          .byte 0xf1
          .byte 0x28
          .byte 0x3a
          .byte 0x57
          .byte 0x22
          .byte 0xbd
          .byte 0x60
          .byte 0x2
          .byte 0x97
          .byte 0x59
          .byte 0x84
          .byte 0x76
          .byte 0x35
          .byte 0xf2
          .byte 0x60
#-----------------------------------
.type special, @object
.size special, 48
#-----------------------------------
special:
          .quad .L_406b10
          .quad .L_406b18
          .quad .L_406b20
          .quad .L_406b28
          .quad .L_406b30
          .quad .L_406b38
#-----------------------------------
.type __PRETTY_FUNCTION__.0, @object
.size __PRETTY_FUNCTION__.0, 9
#-----------------------------------
__PRETTY_FUNCTION__.0:
          .string "__efgfmt"
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
.L_4200f8:
#-----------------------------------
.globl __dso_handle
.hidden __dso_handle
.type __dso_handle, @object
#-----------------------------------
__dso_handle:
          .zero 8
#-----------------------------------
.type knownfmt, @object
.size knownfmt, 496
#-----------------------------------
knownfmt:
          .byte 0x20
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x23
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x25
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __percentfmt
          .byte 0x27
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x2b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x2c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x2d
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x43
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __runefmt
          .byte 0x45
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x46
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x47
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x4c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x53
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __runesfmt
          .byte 0x58
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x62
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x63
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __charfmt
          .byte 0x64
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x65
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x66
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x67
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __efgfmt
          .byte 0x68
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x69
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x6c
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __flagfmt
          .byte 0x6e
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __countfmt
          .byte 0x6f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x70
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x72
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __errfmt
          .byte 0x73
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __strfmt
          .byte 0x75
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .byte 0x78
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad __ifmt
          .zero 16
#-----------------------------------
.type tab1, @object
.size tab1, 160
#-----------------------------------
tab1:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c10
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c20
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406bd8
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406be0
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406be8
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406bf0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406bf8
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c00
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c08
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c18
#-----------------------------------
.type tab2, @object
.size tab2, 160
#-----------------------------------
tab2:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406c10
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406bd0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b50
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b58
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b60
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b70
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b80
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406b90
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406ba8
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_406bc0
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
#===================================
# end section .data
#===================================

#===================================
.bss
#===================================

.align 4
#-----------------------------------
.type completed.0, @object
.size completed.0, 1
#-----------------------------------
completed.0:
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
.globl fin
.type fin, @object
.size fin, 8
#-----------------------------------
fin:
          .zero 8
#-----------------------------------
.globl fout
.type fout, @object
.size fout, 8272
#-----------------------------------
fout:
          .zero 8272
#-----------------------------------
.weak __p9l_autolib_bio
.type __p9l_autolib_bio, @object
.size __p9l_autolib_bio, 4
#-----------------------------------
__p9l_autolib_bio:
          .zero 4
.L_422494:
          .zero 12
#-----------------------------------
.type wbufs, @object
.size wbufs, 160
#-----------------------------------
wbufs:
          .zero 160
#-----------------------------------
.type atexitflag, @object
.size atexitflag, 4
#-----------------------------------
atexitflag:
          .zero 8
.L_422548:
          .zero 4
.L_42254c:
          .zero 4
.L_422550:
          .zero 8
#-----------------------------------
.type onexlock, @object
.size onexlock, 4
#-----------------------------------
onexlock:
          .zero 8
#-----------------------------------
.type onex, @object
.size onex, 528
#-----------------------------------
onex:
          .zero 528
#-----------------------------------
.type xsyserr, @object
.size xsyserr, 128
#-----------------------------------
xsyserr:
          .zero 128
#-----------------------------------
.globl _syserrstr
.type _syserrstr, @object
.size _syserrstr, 8
#-----------------------------------
_syserrstr:
          .zero 8
#-----------------------------------
.type malloclock, @object
.size malloclock, 4
#-----------------------------------
malloclock:
          .zero 8
#-----------------------------------
.globl _lock
.type _lock, @object
.size _lock, 8
#-----------------------------------
_lock:
          .zero 8
#-----------------------------------
.globl _unlock
.type _unlock, @object
.size _unlock, 8
#-----------------------------------
_unlock:
          .zero 8
#-----------------------------------
.globl _qlock
.type _qlock, @object
.size _qlock, 8
#-----------------------------------
_qlock:
          .zero 8
#-----------------------------------
.globl _qunlock
.type _qunlock, @object
.size _qunlock, 8
#-----------------------------------
_qunlock:
          .zero 8
#-----------------------------------
.globl _rlock
.type _rlock, @object
.size _rlock, 8
#-----------------------------------
_rlock:
          .zero 8
#-----------------------------------
.globl _runlock
.type _runlock, @object
.size _runlock, 8
#-----------------------------------
_runlock:
          .zero 8
#-----------------------------------
.globl _wlock
.type _wlock, @object
.size _wlock, 8
#-----------------------------------
_wlock:
          .zero 8
#-----------------------------------
.globl _wunlock
.type _wunlock, @object
.size _wunlock, 8
#-----------------------------------
_wunlock:
          .zero 8
#-----------------------------------
.globl _rsleep
.type _rsleep, @object
.size _rsleep, 8
#-----------------------------------
_rsleep:
          .zero 8
#-----------------------------------
.globl _rwakeup
.type _rwakeup, @object
.size _rwakeup, 8
#-----------------------------------
_rwakeup:
          .zero 8
#-----------------------------------
.type fmtalloc, @object
.size fmtalloc, 1032
#-----------------------------------
fmtalloc:
          .zero 1032
#-----------------------------------
.globl fmtdoquote
.type fmtdoquote, @object
.size fmtdoquote, 8
#-----------------------------------
fmtdoquote:
          .zero 8
#-----------------------------------
.type fmtlock, @object
.size fmtlock, 4
#-----------------------------------
fmtlock:
          .zero 4
.L_422c64:
          .zero 4
.L_422c68:
          .zero 8
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
.L_422c70:
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
.symver exit,exit@GLIBC_2.17
.globl exit
.type exit, @function
#-----------------------------------
#-----------------------------------
.symver fcntl64,fcntl64@GLIBC_2.28
.globl fcntl64
.type fcntl64, @function
#-----------------------------------
#-----------------------------------
.symver free,free@GLIBC_2.17
.globl free
.type free, @function
#-----------------------------------
#-----------------------------------
.symver frexp,frexp@GLIBC_2.17
.globl frexp
.type frexp, @function
#-----------------------------------
#-----------------------------------
.symver getpid,getpid@GLIBC_2.17
.globl getpid
.type getpid, @function
#-----------------------------------
#-----------------------------------
.symver ldexp,ldexp@GLIBC_2.17
.globl ldexp
.type ldexp, @function
#-----------------------------------
#-----------------------------------
.symver malloc,malloc@GLIBC_2.17
.globl malloc
.type malloc, @function
#-----------------------------------
#-----------------------------------
.symver memccpy,memccpy@GLIBC_2.17
.globl memccpy
.type memccpy, @function
#-----------------------------------
#-----------------------------------
.symver memcmp,memcmp@GLIBC_2.17
.globl memcmp
.type memcmp, @function
#-----------------------------------
#-----------------------------------
.symver memmove,memmove@GLIBC_2.17
.globl memmove
.type memmove, @function
#-----------------------------------
#-----------------------------------
.symver memset,memset@GLIBC_2.17
.globl memset
.type memset, @function
#-----------------------------------
#-----------------------------------
.symver mkdir,mkdir@GLIBC_2.17
.globl mkdir
.type mkdir, @function
#-----------------------------------
#-----------------------------------
.symver open64,open64@GLIBC_2.17
.globl open64
.type open64, @function
#-----------------------------------
#-----------------------------------
.symver perror,perror@GLIBC_2.17
.globl perror
.type perror, @function
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
.symver remove,remove@GLIBC_2.17
.globl remove
.type remove, @function
#-----------------------------------
#-----------------------------------
.symver strcpy,strcpy@GLIBC_2.17
.globl strcpy
.type strcpy, @function
#-----------------------------------
#-----------------------------------
.symver strerror,strerror@GLIBC_2.17
.globl strerror
.type strerror, @function
#-----------------------------------
#-----------------------------------
.symver strlen,strlen@GLIBC_2.17
.globl strlen
.type strlen, @function
#-----------------------------------
#-----------------------------------
.symver write,write@GLIBC_2.17
.globl write
.type write, @function
#-----------------------------------
