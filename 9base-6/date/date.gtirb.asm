[INFO]  Reading GTIRB file:     "basilbench/9base-6/date/date.gtirb"
[INFO]  Module date has integral symbols; attempting to assign referents...
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
.L_401070:

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

            adrp x0, .L_407a50
            add x0,x0, :lo12:.L_407a50
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
            cbz x0,.L_401414

            b __gmon_start__
.L_401414:

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
            b.eq .L_40144c

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_40144c

            mov x16,x1
            br x16
.L_40144c:

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
            cbz x1,.L_401488

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_401488

            mov x16,x2
            br x16
.L_401488:

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
            tbnz w0,#0,.L_4014b4

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_4014b4:

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
.globl p9main
.type p9main, @function
#-----------------------------------
p9main:

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
            adrp x19, argv0
            ldr x2,[x19,:lo12:argv0]
            stp x23,x24,[sp,#48]
            str x25,[sp,#64]
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
            cbz x2,.L_401690
.L_4014f0:

            ldr x2,[x1,#8]
            adrp x25, nflg
            sub w24,w0,#1
            add x23,x1,#8
            add x20,x25, :lo12:nflg
            cbz x2,.L_4015b0

            stp x21,x22,[sp,#32]
.cfi_offset 22, -72
.cfi_offset 21, -80
            adrp x22, .L_4079b8
            adrp x21, .L_4079d8
            add x22,x22, :lo12:.L_4079b8
            add x21,x21, :lo12:.L_4079d8
            nop
            nop
            nop
            nop
.L_401520:

            ldrb w0,[x2]
            cmp w0,#45
            b.ne .L_4015ac

            ldrb w0,[x2,#1]
            cbz w0,.L_4015ac

            add x19,x2,#1
            cmp w0,#45
            b.eq .L_401608
.L_401540:

            strh wzr,[sp,#110]
            ldrb w0,[x2,#1]
            cbnz w0,.L_401574

            b .L_4015a0
.L_401550:

            cmp w1,#117
            b.eq .L_4015fc

            mov x1,x22
            mov w0,#2
            bl fprint

            mov x0,x21
            bl exits
.L_40156c:

            ldrb w0,[x19]
            cbz w0,.L_4015a0
.L_401574:

            mov x1,x19
            add x0,sp,#110
            bl chartorune

            add x19,x19,w0, sxtw
            ldrh w1,[sp,#110]
            cmp w1,#110
            b.ne .L_401550

            mov w0,#1
            str w0,[x20]
            ldrb w0,[x19]
            cbnz w0,.L_401574
.L_4015a0:

            ldr x2,[x23,#8]!
            sub w24,w24,#1
            cbnz x2,.L_401520
.L_4015ac:

            ldp x21,x22,[sp,#32]
.L_4015b0:

.cfi_restore 22
.cfi_restore 21
            cmp w24,#1
            b.eq .L_401650

            mov x0,#0
            bl p9time

            ldr w1,[x25,:lo12:nflg]
            cbnz w1,.L_401668
.L_4015c8:

            ldr w1,[x20,#4]
            cbnz w1,.L_401620

            bl p9ctime

            mov x1,x0
            adrp x2, .L_4079e8
            add x0,x2, :lo12:.L_4079e8
            bl print

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp x23,x24,[sp,#48]
            ldr x25,[sp,#64]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b exits
.L_4015fc:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 25, -48
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov w0,#1
            str w0,[x20,#4]
            b .L_40156c
.L_401608:

            ldrb w0,[x2,#2]
            cbnz w0,.L_401540

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub w24,w24,#1
            add x23,x23,#8
            b .L_4015b0
.L_401620:

            bl p9gmtime

            bl p9asctime

            mov x1,x0
            adrp x0, .L_4079e8
            add x0,x0, :lo12:.L_4079e8
            bl print

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp x23,x24,[sp,#48]
            ldr x25,[sp,#64]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b exits
.L_401650:

.cfi_restore_state 
            ldr x0,[x23]
            mov x1,#0
            mov w2,#0
            bl strtoul

            ldr w1,[x25,:lo12:nflg]
            cbz w1,.L_4015c8
.L_401668:

            mov x1,x0
            adrp x0, .L_4079e0
            add x0,x0, :lo12:.L_4079e0
            bl print

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp x23,x24,[sp,#48]
            ldr x25,[sp,#64]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b exits
.L_401690:

.cfi_restore_state 
            str w0,[sp,#84]
            str x1,[sp,#88]
            bl __fixargv0

            ldr x1,[sp,#88]
            ldr w0,[sp,#84]
            ldr x2,[x1]
            str x2,[x19,:lo12:argv0]
            b .L_4014f0
.cfi_endproc 
.size p9main, . - p9main
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
            b.le .L_4017f8

            add x0,sp,#40
            bl __fmtFdFlush

            cmp w0,#0
            csinv w19,w19,wzr,ne
.L_4017f8:

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
            b.le .L_401870

            ldrb w4,[x1,#1]
            eor w4,w4,#128
            cmp w4,#63
            b.hi .L_401860

            cmp w2,#223
            b.gt .L_401880

            cmp w2,#191
            b.le .L_401860

            orr w2,w4,w2, lsl #6
            mov w1,#65533
            mov w0,#1
            tst w2,#1920
            b.eq .L_401868

            and w1,w2,#2047
            mov w0,#2
            b .L_401868
.L_401860:

            mov w1,#65533
            mov w0,#1
.L_401868:

            strh w1,[x3]
            ret 
.L_401870:

            mov w1,w2
            mov w0,#1
            strh w1,[x3]
            ret 
.L_401880:

            ldrb w5,[x1,#2]
            mov w6,#239
            mov w1,#65533
            mov w0,#1
            eor w5,w5,#128
            cmp w5,#63
            ccmp w2,w6,#0,ls
            b.gt .L_401868

            orr w2,w4,w2, lsl #6
            orr w2,w5,w2, lsl #6
            tst w2,#63488
            b.eq .L_401868

            and w1,w2,#65535
            mov w0,#3
            b .L_401868
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
            b.le .L_401920

            asr x1,x3,#6
            and w2,w3,#63
            orr w2,w2,#128
            sxtb w1,w1
            cmp x3,#2047
            b.le .L_40190c

            asr x3,x3,#12
            and w1,w1,#63
            orr w3,w3,#4294967264
            orr w1,w1,#4294967168
            mov w0,#3
            strb w3,[x4]
            strb w1,[x4,#1]
            strb w2,[x4,#2]
            ret 
.L_40190c:

            orr w1,w1,#4294967232
            mov w0,#2
            strb w1,[x4]
            strb w2,[x4,#1]
            ret 
.L_401920:

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
            b.eq .L_401948

            tst x0,#63488
            cset w0,ne
            add w0,w0,#2
            ret 
.L_401948:

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
            cbz w1,.L_401994

            add x3,x0,w1, uxtw #1
            mov w0,#0
            b .L_401970
.L_401964:

            add w0,w0,#1
            cmp x3,x2
            b.eq .L_401990
.L_401970:

            ldrh w1,[x2],#2
            cmp w1,#127
            b.le .L_401964

            cmp w1,#2047
            cinc w0,w0,gt
            add w0,w0,#2
            cmp x3,x2
            b.ne .L_401970
.L_401990:

            ret 
.L_401994:

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
            b.le .L_4019d4

            ldrb w2,[x0]
            mov w0,#1
            cmp w2,#127
            b.le .L_4019d0

            mov w0,#0
            cmp w1,#1
            b.eq .L_4019d0

            cmp w2,#223
            ccmp w1,#2,#0,gt
            cset w0,gt
.L_4019d0:

            ret 
.L_4019d4:

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
.globl __fixargv0
.type __fixargv0, @function
#-----------------------------------
__fixargv0:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
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
.size __fixargv0, . - __fixargv0
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
            b .L_401a2c
.L_401a20:

            add w19,w19,#1
            cmp w19,#33
            b.eq .L_401a70
.L_401a2c:

            ldr x2,[x1]
            add x1,x1,#16
            cbnz x2,.L_401a20

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
.L_401a70:

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
            b .L_401ac4
.L_401ab8:

            add x1,x1,#16
            cmp x3,x1
            b.eq .L_401aec
.L_401ac4:

            ldr x2,[x1]
            cmp x2,x19
            b.ne .L_401ab8

            ldr w2,[x1,#8]
            cmp w2,w0
            b.ne .L_401ab8

            add x1,x1,#16
            stur xzr,[x1,#-16]
            cmp x3,x1
            b.ne .L_401ac4
.L_401aec:

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
            b .L_401b34
.L_401b30:

            mov x19,x1
.L_401b34:

            ldr x1,[x19]
            cbz x1,.L_401b50

            ldr w2,[x19,#8]
            cmp w2,w21
            b.ne .L_401b50

            str xzr,[x19]
            blr x1
.L_401b50:

            sub x1,x19,#16
            cmp x19,x20
            b.ne .L_401b30

            cbz x22,.L_401b68

            ldrb w0,[x22]
            cbnz w0,.L_401b70
.L_401b68:

            mov w0,#0
            bl exit
.L_401b70:

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
.globl p9gmtime
.type p9gmtime, @function
#-----------------------------------
p9gmtime:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,#10583
            mov x5,x0
            movk x1,#52817,lsl #16
            asr x0,x0,#63
            movk x1,#51360,lsl #32
            mov x2,#20864
            movk x1,#6213,lsl #48
            movk x2,#1,lsl #16
            smulh x1,x5,x1
            asr x1,x1,#13
            sub x3,x1,x0
            mov x1,x3
            msub x3,x3,x2,x5
            tbnz x3,#63,.L_401d94

            mov x4,#-8608480567731124088
            mov x6,#18725
            movk x4,#34953
            add x8,x1,#1792,lsl #12
            movk x6,#9362,lsl #16
            add x8,x8,#4
            smulh x4,x3,x4
            movk x6,#37449,lsl #32
            movk x6,#18724,lsl #48
            mov w7,#34953
            add x4,x4,x3
            movk w7,#34952,lsl #16
            smulh x6,x8,x6
            adrp x10, xtime.1
            asr x4,x4,#5
            add x0,x10, :lo12:xtime.1
            sub x4,x4,x3, asr #63
            mov x12,#-20863
            asr x6,x6,#1
            movk x12,#65534,lsl #16
            sub x6,x6,x8, asr #63
            lsl x9,x4,#4
            umull x7,w4,w7
            sub x9,x9,x4
            lsl x11,x6,#3
            mov w2,#1970
            sub x6,x11,x6
            sub x8,x8,x6
            sub x6,x3,x9, lsl #2
            lsr x3,x7,#37
            str w6,[x10,:lo12:xtime.1]
            str w3,[x0,#8]
            lsl w6,w3,#4
            str w8,[x0,#24]
            sub w3,w6,w3
            sub w3,w4,w3, lsl #2
            str w3,[x0,#4]
            cmp x5,x12
            b.lt .L_401e1c

            mov w6,#23593
            mov w8,#23592
            mov w9,#55050
            movk w6,#49807,lsl #16
            movk w8,#655,lsl #16
            movk w9,#163,lsl #16
            b .L_401c78
.L_401c70:

            sub x1,x1,x3
            add w2,w2,#1
.L_401c78:

            mul w4,w2,w6
            ands w5,w2,#3
            mov x3,#365
            b.ne .L_401ca8

            mov x3,#366
            ror w7,w4,#4
            ror w4,w4,#2
            cmp w4,w8
            b.hi .L_401ca8

            cmp w7,w9
            cset x3,ls
            add x3,x3,#365
.L_401ca8:

            cmp x1,x3
            b.ge .L_401c70
.L_401cb0:

            sub w3,w2,#1900
            str w3,[x0,#20]
            str w1,[x0,#28]
            cbz w5,.L_401d10

            adrp x3, dmsize
            add x5,x3, :lo12:dmsize
.L_401cc8:

            ldrb w3,[x3,:lo12:dmsize]
            cmp w1,w3
            b.lt .L_401d70
.L_401cd4:

            mov x2,#1
.L_401cd8:

            sub w1,w1,w3
            ldrb w3,[x5,x2]
            mov x4,x2
            add x2,x2,#1
            cmp w3,w1
            b.le .L_401cd8

            mov w2,#19783
            add w1,w1,#1
            mov w3,#28
            movk w2,#84,lsl #16
            strb w3,[x5,#1]
            stp w1,w4,[x0,#12]
            str w2,[x0,#32]
            ret 
.L_401d10:

            mov w5,#23593
            mov w4,#47184
            movk w4,#1310,lsl #16
            movk w5,#49807,lsl #16
            mov w3,#23592
            madd w2,w2,w5,w4
            movk w3,#655,lsl #16
            ror w4,w2,#2
            cmp w4,w3
            b.hi .L_401d54

            mov w4,#55050
            ror w2,w2,#4
            adrp x3, dmsize
            movk w4,#163,lsl #16
            add x5,x3, :lo12:dmsize
            cmp w2,w4
            b.hi .L_401cc8
.L_401d54:

            adrp x3, dmsize
            add x5,x3, :lo12:dmsize
            mov w2,#29
            ldrb w3,[x3,:lo12:dmsize]
            strb w2,[x5,#1]
            cmp w1,w3
            b.ge .L_401cd4
.L_401d70:

            mov w2,#19783
            add w1,w1,#1
            mov w4,#0
            mov w3,#28
            movk w2,#84,lsl #16
            strb w3,[x5,#1]
            stp w1,w4,[x0,#12]
            str w2,[x0,#32]
            ret 
.L_401d94:

            add x3,x3,x2
            mov x4,#18725
            mov x2,#-8608480567731124088
            add x6,x1,#1792,lsl #12
            movk x2,#34953
            movk x4,#9362,lsl #16
            add x6,x6,#3
            movk x4,#37449,lsl #32
            umulh x2,x3,x2
            movk x4,#18724,lsl #48
            mov w5,#34953
            adrp x10, xtime.1
            smulh x4,x6,x4
            movk w5,#34952,lsl #16
            lsr x2,x2,#5
            add x0,x10, :lo12:xtime.1
            sub x1,x1,#1
            asr x4,x4,#1
            lsl x7,x2,#4
            sub x4,x4,x6, asr #63
            umull x5,w2,w5
            sub x7,x7,x2
            lsl x8,x4,#3
            sub x8,x8,x4
            sub x4,x3,x7, lsl #2
            lsr x3,x5,#37
            str w4,[x10,:lo12:xtime.1]
            str w3,[x0,#8]
            sub x6,x6,x8
            lsl w4,w3,#4
            str w6,[x0,#24]
            sub w3,w4,w3
            sub w2,w2,w3, lsl #2
            str w2,[x0,#4]
.L_401e1c:

            mov w9,#23593
            mov w8,#47184
            mov w7,#23592
            mov w10,#55050
            mov w2,#1970
            movk w9,#49807,lsl #16
            movk w8,#1310,lsl #16
            movk w7,#655,lsl #16
            movk w10,#163,lsl #16
.L_401e40:

            sub w2,w2,#1
            mov x3,#365
            ands w5,w2,#3
            b.ne .L_401e74

            madd w4,w2,w9,w8
            mov x3,#366
            ror w6,w4,#4
            ror w4,w4,#2
            cmp w4,w7
            b.hi .L_401e74

            cmp w6,w10
            cset x3,ls
            add x3,x3,#365
.L_401e74:

            adds x1,x1,x3
            b.mi .L_401e40

            b .L_401cb0
.cfi_endproc 
.size p9gmtime, . - p9gmtime
.align 4
#-----------------------------------
.globl p9localtime
.type p9localtime, @function
#-----------------------------------
p9localtime:

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
            mov x19,x0
            mov x1,x19
            add x0,sp,#40
            bl _p9zonelookuptinfo

            cmn w0,#1
            b.eq .L_401ee0

            ldrsw x0,[sp,#48]
            add x0,x0,x19
            bl p9gmtime

            ldr x1,[sp,#56]
            mov x19,x0
            mov x2,#3
            add x0,x0,#32
            bl strncpy

            strb wzr,[x19,#35]
            ldr w0,[sp,#48]
            str w0,[x19,#36]
            mov x0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_401ee0:

.cfi_restore_state 
            mov x0,x19
            bl p9gmtime

            mov x19,x0
            mov x0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#64
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
.size p9localtime, . - p9localtime
.align 4
#-----------------------------------
.globl p9asctime
.type p9asctime, @function
#-----------------------------------
p9asctime:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x2, .L_407a30
            add x2,x2, :lo12:.L_407a30
            adrp x1, xtime.1
            add x1,x1, :lo12:xtime.1
            adrp x6, .L_4079f0
            adrp x7, .L_407a08
            ldr q1,[x2]
            add x6,x6, :lo12:.L_4079f0
            ldur q0,[x2,#14]
            add x7,x7, :lo12:.L_407a08
            str q1,[x1,#48]
            stur q0,[x1,#62]
            ldr w2,[x0,#24]
            ldp w4,w3,[x0,#12]
            add w2,w2,w2, lsl #1
            add w3,w3,w3, lsl #1
            add x8,x6,w2, sxtw
            ldrb w2,[x6,w2,sxtw]
            add x9,x7,w3, sxtw
            strb w2,[x1,#48]
            ldrb w7,[x7,w3,sxtw]
            ldurh w6,[x8,#1]
            ldurh w3,[x9,#1]
            sturh w6,[x1,#49]
            strb w7,[x1,#52]
            sturh w3,[x1,#53]
            cmp w4,#9
            b.le .L_4021bc

            mov w2,#26215
            asr w7,w4,#31
            movk w2,#26214,lsl #16
            mov w3,#52429
            movk w3,#52428,lsl #16
            smull x2,w4,w2
            asr x2,x2,#34
            sub w2,w2,w7
            umull x3,w2,w3
            lsr x3,x3,#35
            add w3,w3,w3, lsl #2
            sub w3,w2,w3, lsl #1
            add w3,w3,#48
            and w3,w3,#255
.L_401fa8:

            mov w5,#26215
            strb w3,[x1,#56]
            movk w5,#26214,lsl #16
            smull x2,w4,w5
            asr x2,x2,#34
            sub w2,w2,w7
            add w2,w2,w2, lsl #2
            sub w2,w4,w2, lsl #1
            add w2,w2,#48
            strb w2,[x1,#57]
            ldr w4,[x0,#8]
            add w4,w4,#100
            cmp w4,#9
            b.le .L_4021b0

            smull x5,w4,w5
            asr w7,w4,#31
            mov w3,#52429
            movk w3,#52428,lsl #16
            asr x5,x5,#34
            sub w5,w5,w7
            umull x3,w5,w3
            lsr x3,x3,#35
            add w3,w3,w3, lsl #2
            sub w3,w5,w3, lsl #1
            add w3,w3,#48
            and w3,w3,#255
.L_402010:

            mov w5,#26215
            strb w3,[x1,#59]
            movk w5,#26214,lsl #16
            smull x2,w4,w5
            asr x2,x2,#34
            sub w2,w2,w7
            add w2,w2,w2, lsl #2
            sub w2,w4,w2, lsl #1
            add w2,w2,#48
            strb w2,[x1,#60]
            ldr w4,[x0,#4]
            add w4,w4,#100
            cmp w4,#9
            b.le .L_4021c8

            smull x5,w4,w5
            asr w7,w4,#31
            mov w3,#52429
            movk w3,#52428,lsl #16
            asr x5,x5,#34
            sub w5,w5,w7
            umull x3,w5,w3
            lsr x3,x3,#35
            add w3,w3,w3, lsl #2
            sub w3,w5,w3, lsl #1
            add w3,w3,#48
            and w3,w3,#255
.L_402078:

            mov w5,#26215
            strb w3,[x1,#62]
            movk w5,#26214,lsl #16
            smull x2,w4,w5
            asr x2,x2,#34
            sub w2,w2,w7
            add w2,w2,w2, lsl #2
            sub w2,w4,w2, lsl #1
            add w2,w2,#48
            strb w2,[x1,#63]
            ldr w4,[x0]
            add w4,w4,#100
            cmp w4,#9
            b.le .L_4021a4

            smull x5,w4,w5
            asr w6,w4,#31
            mov w3,#52429
            movk w3,#52428,lsl #16
            asr x5,x5,#34
            sub w5,w5,w6
            umull x3,w5,w3
            lsr x3,x3,#35
            add w3,w3,w3, lsl #2
            sub w3,w5,w3, lsl #1
            add w3,w3,#48
            and w3,w3,#255
.L_4020e0:

            mov w2,#26215
            ldrh w8,[x0,#32]
            movk w2,#26214,lsl #16
            ldrb w7,[x0,#34]
            strh w8,[x1,#68]
            smull x2,w4,w2
            strb w7,[x1,#70]
            strb w3,[x1,#65]
            ldr w3,[x0,#20]
            asr x2,x2,#34
            sub w2,w2,w6
            add w2,w2,w2, lsl #2
            sub w2,w4,w2, lsl #1
            add w2,w2,#48
            strb w2,[x1,#66]
            cmp w3,#99
            b.le .L_402130

            mov w2,#12338
            strh w2,[x1,#72]
            ldr w3,[x0,#20]
.L_402130:

            add w3,w3,#100
            cmp w3,#9
            b.le .L_4021d4

            mov w0,#26215
            asr w5,w3,#31
            movk w0,#26214,lsl #16
            mov w4,#52429
            movk w4,#52428,lsl #16
            smull x0,w3,w0
            asr x0,x0,#34
            sub w0,w0,w5
            umull x4,w0,w4
            lsr x4,x4,#35
            add w4,w4,w4, lsl #2
            sub w4,w0,w4, lsl #1
            add w4,w4,#48
            and w4,w4,#255
.L_402174:

            mov w2,#26215
            add x0,x1,#48
            movk w2,#26214,lsl #16
            strb w4,[x0,#26]
            smull x2,w3,w2
            asr x2,x2,#34
            sub w2,w2,w5
            add w2,w2,w2, lsl #2
            sub w2,w3,w2, lsl #1
            add w2,w2,#48
            strb w2,[x0,#27]
            ret 
.L_4021a4:

            asr w6,w4,#31
            mov w3,#32
            b .L_4020e0
.L_4021b0:

            asr w7,w4,#31
            mov w3,#32
            b .L_402010
.L_4021bc:

            asr w7,w4,#31
            mov w3,#32
            b .L_401fa8
.L_4021c8:

            asr w7,w4,#31
            mov w3,#32
            b .L_402078
.L_4021d4:

            asr w5,w3,#31
            mov w4,#32
            b .L_402174
.cfi_endproc 
.size p9asctime, . - p9asctime
.align 4
#-----------------------------------
.globl p9ctime
.type p9ctime, @function
#-----------------------------------
p9ctime:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl p9localtime

            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            b p9asctime
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
.size p9ctime, . - p9ctime
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
            cbz x20,.L_402254

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
.L_402254:

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
            cbnz x20,.L_4022c0

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_4022a8

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4022a8:

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
.L_4022c0:

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
            cbz x20,.L_402324

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
.L_402324:

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
            cbz x20,.L_402378

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
.L_402378:

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
            cbnz x20,.L_4023e0

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_4023c8

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4023c8:

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
.L_4023e0:

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
            cbz x20,.L_402444

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
.L_402444:

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
            cbz x20,.L_402498

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
.L_402498:

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
            cbnz x20,.L_4024e8

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_40250c

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4024e8:

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
.L_40250c:

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
            cbz x20,.L_402570

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
.L_402570:

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
            cbz x20,.L_4025d4

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
.L_4025d4:

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
            cbnz x20,.L_402648

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_402628
.L_40261c:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402628:

.cfi_restore_state 
            ldr w1,[x19,#4]
            cbnz w1,.L_40261c

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
.L_402648:

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
            cbz x20,.L_4026b0

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
.L_4026b0:

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
            cbz x19,.L_4026f4

            mov x20,x0
            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x20
            blr x19
.L_4026f4:

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
            cbnz x19,.L_40272c

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
.L_40272c:

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
            cbnz x19,.L_402780

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
.L_402780:

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
.globl p9times
.type p9times, @function
#-----------------------------------
p9times:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-320]!
.cfi_def_cfa_offset 320
.cfi_offset 29, -320
.cfi_offset 30, -312
            mov fp,sp
            add x1,sp,#32
            str x19,[sp,#16]
.cfi_offset 19, -304
            mov x19,x0
            mov w0,#0
            bl getrusage

            tbnz w0,#31,.L_402890

            add x1,sp,#176
            mov w0,#-1
            bl getrusage

            tbnz w0,#31,.L_402890

            ldp x15,x8,[sp,#32]
            mov x5,#63439
            ldp x14,x7,[sp,#48]
            movk x5,#58195,lsl #16
            ldp x11,x0,[sp,#176]
            movk x5,#39845,lsl #32
            ldp x9,x6,[sp,#192]
            movk x5,#8388,lsl #48
            lsl x4,x15,#5
            lsl x3,x14,#5
            smulh x13,x8,x5
            sub x4,x4,x15
            smulh x12,x7,x5
            sub x3,x3,x14
            smulh x10,x0,x5
            lsl x2,x11,#5
            smulh x5,x6,x5
            sub x2,x2,x11
            lsl x1,x9,#5
            add x4,x15,x4, lsl #2
            asr x13,x13,#7
            asr x12,x12,#7
            add x3,x14,x3, lsl #2
            sub x1,x1,x9
            sub x7,x12,x7, asr #63
            sub x8,x13,x8, asr #63
            asr x10,x10,#7
            add x2,x11,x2, lsl #2
            add x3,x7,x3, lsl #3
            add x4,x8,x4, lsl #3
            sub x7,x10,x0, asr #63
            asr x5,x5,#7
            add x1,x9,x1, lsl #2
            add x2,x7,x2, lsl #3
            add x0,x4,x3
            sub x6,x5,x6, asr #63
            add x1,x6,x1, lsl #3
            add x0,x0,x2
            add x0,x0,x1
            stp x4,x3,[x19]
            stp x2,x1,[x19,#16]
.L_402884:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#320
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_402890:

.cfi_restore_state 
            mov x0,#-1
            b .L_402884
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size p9times, . - p9times
.align 4
#-----------------------------------
.globl p9cputime
.type p9cputime, @function
#-----------------------------------
p9cputime:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            add x0,sp,#16
            bl p9times

            fmov d0,#-1.000000000000000000e+00
            tbnz x0,#63,.L_4028ec

            ldp d0,d4,[sp,#16]
            mov x0,#70368744177664
            ldp d3,d2,[sp,#32]
            movk x0,#16527,lsl #48
            scvtf d0,d0
            scvtf d4,d4
            fmov d1,x0
            scvtf d3,d3
            scvtf d2,d2
            fadd d0,d0,d4
            fadd d0,d0,d3
            fadd d0,d0,d2
            fdiv d0,d0,d1
.L_4028ec:

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size p9cputime, . - p9cputime
.align 2
#-----------------------------------
.globl p9nsec
.type p9nsec, @function
#-----------------------------------
p9nsec:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov x1,#0
            mov fp,sp
            add x0,sp,#16
            bl gettimeofday

            tbnz w0,#31,.L_402934

            ldp x0,x2,[sp,#16]
            mov x3,#51712
            movk x3,#15258,lsl #16
            lsl x1,x2,#5
            sub x1,x1,x2
            add x1,x2,x1, lsl #2
            lsl x1,x1,#3
            madd x0,x0,x3,x1
.L_40292c:

            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_402934:

.cfi_restore_state 
            mov x0,#-1
            b .L_40292c
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9nsec, . - p9nsec
.align 4
#-----------------------------------
.globl p9time
.type p9time, @function
#-----------------------------------
p9time:

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
            mov x0,#0
            bl time

            cbz x19,.L_402960

            str x0,[x19]
.L_402960:

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
.size p9time, . - p9time
#-----------------------------------
.type readtzfile, @function
#-----------------------------------
readtzfile:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov w1,#0
            mov fp,sp
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl p9open

            tbnz w0,#31,.L_4029e4

            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            mov w19,w0
            bl dirfstat

            mov x20,x0
            cbz x0,.L_4029e0

            ldr x0,[x0,#56]
            bl p9malloc

            mov x21,x0
            cbz x0,.L_4029bc

            ldr x2,[x20,#56]
            mov x1,x0
            mov w0,w19
            bl readn
.L_4029bc:

            mov x0,x20
            bl p9free

            mov w0,w19
            bl close

            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            mov x0,x21
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_def_cfa_offset 0
            ret 
.L_4029e0:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
.L_4029e4:

.cfi_restore 20
.cfi_restore 19
            mov x21,#0
            mov x0,x21
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
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
.size readtzfile, . - readtzfile
#-----------------------------------
.type readtimezone, @function
#-----------------------------------
readtimezone:

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
            str x21,[sp,#32]
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
            adrp x21, z
            add x20,x21, :lo12:z
            str wzr,[x21,:lo12:z]
            ldr x0,[x20,#48]
            cbz x0,.L_402ad4
.L_402a24:

            bl readtzfile

            mov x19,x0
            str x0,[x20,#56]
.L_402a30:

            cbz x19,.L_402aa4

            adrp x0, .L_407a78
            mov x1,x19
            add x0,x0, :lo12:.L_407a78
            mov x2,#4
            bl strncmp

            cbnz w0,.L_402ab4

            ldrb w0,[x19,#4]
            cmp w0,#50
            ccmp w0,#0,#4,ne
            b.ne .L_402ab4

            ldp w1,w0,[x19,#32]
            rev w1,w1
            rev w0,w0
            str w1,[x21,:lo12:z]
            str w0,[x20,#4]
            cbz w0,.L_402ab4

            lsl w2,w1,#2
            add w0,w0,w0, lsl #1
            add x4,x19,#44
            ldr w3,[x19,#40]
            add x2,x4,w2, sxtw
            lsl w0,w0,#1
            add x1,x2,w1, sxtw
            rev w3,w3
            add x0,x1,w0, sxtw
            str w3,[x20,#8]
            stp x4,x2,[x20,#16]
            stp x1,x0,[x20,#32]
.L_402aa4:

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
.L_402ab4:

.cfi_restore_state 
            mov x0,x19
            bl p9free

            str xzr,[x20,#56]
            ldp x19,x20,[sp,#16]
            str wzr,[x21,:lo12:z]
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
.L_402ad4:

.cfi_restore_state 
            adrp x0, .L_407a68
            add x0,x0, :lo12:.L_407a68
            bl p9getenv

            mov x19,x0
            cbz x0,.L_402b04

            bl readtzfile

            mov x1,x0
            mov x0,x19
            str x1,[x20,#56]
            bl p9free

            ldr x19,[x20,#56]
            b .L_402a30
.L_402b04:

            adrp x1, .L_407a58
            add x1,x1, :lo12:.L_407a58
            mov x0,x1
            str x1,[x20,#48]
            b .L_402a24
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size readtimezone, . - readtimezone
#-----------------------------------
.type ttinfo, @function
#-----------------------------------
ttinfo:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x2, z
            add x2,x2, :lo12:z
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            ldr x4,[x2,#24]
            ldr w3,[x2,#4]
            ldrb w1,[x4,w1,sxtw]
            cmp w3,w1
            b.le .L_402b90

            add w1,w1,w1, lsl #1
            ldr w4,[x2,#8]
            ldr x3,[x2,#32]
            lsl w5,w1,#1
            ubfiz x1,x1,#1,#10
            add x1,x3,x1
            ldr w3,[x3,w5,sxtw]
            rev w3,w3
            str w3,[x0,#8]
            ldrb w3,[x1,#4]
            str w3,[x0,#12]
            ldrb w1,[x1,#5]
            cmp w1,w4
            b.ge .L_402bb0

            ldr x2,[x2,#40]
            add x1,x2,w1, uxtb
            str x1,[x0,#16]
            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_402b90:

.cfi_restore_state 
            adrp x3, .L_407cb8
            adrp x1, .L_407a80
            adrp x0, .L_407a90
            add x3,x3, :lo12:.L_407cb8
            add x1,x1, :lo12:.L_407a80
            add x0,x0, :lo12:.L_407a90
            mov w2,#106
            bl __assert_fail
.L_402bb0:

            adrp x3, .L_407cb8
            adrp x1, .L_407a80
            adrp x0, .L_407aa0
            add x3,x3, :lo12:.L_407cb8
            add x1,x1, :lo12:.L_407a80
            add x0,x0, :lo12:.L_407aa0
            mov w2,#110
            bl __assert_fail
.cfi_endproc 
.size ttinfo, . - ttinfo
.align 4
#-----------------------------------
.globl tzfile
.type tzfile, @function
#-----------------------------------
tzfile:

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
            str x21,[sp,#32]
.cfi_offset 21, -16
            adrp x21, z
            add x20,x21, :lo12:z
            ldr x0,[x20,#56]
            cbz x0,.L_402bfc

            bl p9free

            str xzr,[x20,#56]
.L_402bfc:

            str wzr,[x21,:lo12:z]
            ldr x21,[sp,#32]
            str x19,[x20,#48]
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
.size tzfile, . - tzfile
.align 2
#-----------------------------------
.globl _p9zonetinfo
.type _p9zonetinfo, @function
#-----------------------------------
_p9zonetinfo:

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
            adrp x20, z
            mov w19,w1
            str x21,[sp,#32]
.cfi_offset 21, -32
            add x21,x20, :lo12:z
            ldr x1,[x21,#56]
            cbz x1,.L_402c84
.L_402c38:

            tbnz w19,#31,.L_402c94

            ldr w1,[x20,:lo12:z]
            cmp w1,w19
            b.le .L_402c94

            ldr x2,[x21,#16]
            lsl w3,w19,#2
            mov w1,w19
            ldr w2,[x2,w3,sxtw]
            rev w2,w2
            sxtw x2,w2
            cmp x2,#0
            csel x2,x2,xzr,ge
            str x2,[x0]
            bl ttinfo

            mov w0,w19
.L_402c74:

            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402c84:

.cfi_restore_state 
            str x0,[sp,#56]
            bl readtimezone

            ldr x0,[sp,#56]
            b .L_402c38
.L_402c94:

            mov w0,#-1
            b .L_402c74
.cfi_endproc 

            nop
            nop
            nop
            nop
.size _p9zonetinfo, . - _p9zonetinfo
.align 4
#-----------------------------------
.globl _p9zonelookuptinfo
.type _p9zonelookuptinfo, @function
#-----------------------------------
_p9zonelookuptinfo:

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
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            adrp x22, z
            add x20,x22, :lo12:z
            mov x21,x0
            ldr x0,[x20,#56]
            cbz x0,.L_402d48
.L_402cc8:

            ldr w1,[x22,:lo12:z]
            ldr x5,[x20,#16]
            cmp w1,#0
            b.le .L_402d50

            mov x2,#0
            mov w4,#0
            b .L_402cf0
.L_402ce4:

            add w4,w4,#1
            cmp w4,w1
            b.eq .L_402d40
.L_402cf0:

            ldr w3,[x5]
            mov x20,x2
            add x5,x5,#4
            rev w2,w3
            sxtw x2,w2
            cmp x2,#0
            csel x2,x2,xzr,ge
            cmp x19,x2
            b.ge .L_402ce4

            cbz w4,.L_402d50
.L_402d18:

            sub w19,w4,#1
            mov x0,x21
            mov w1,w19
            bl ttinfo

            str x20,[x21]
.L_402d2c:

            ldp x21,x22,[sp,#32]
            mov w0,w19
            ldp x19,x20,[sp,#16]
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
.L_402d40:

.cfi_restore_state 
            mov x20,x2
            b .L_402d18
.L_402d48:

            bl readtimezone

            b .L_402cc8
.L_402d50:

            mov w19,#-1
            b .L_402d2c
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size _p9zonelookuptinfo, . - _p9zonelookuptinfo
.align 4
#-----------------------------------
.globl _p9zonedump
.type _p9zonedump, @function
#-----------------------------------
_p9zonedump:

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
            adrp x19, z
            stp x21,x22,[sp,#32]
.cfi_offset 21, -64
.cfi_offset 22, -56
            add x22,x19, :lo12:z
            mov w21,w0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -48
.cfi_offset 24, -40
            ldr x0,[x22,#56]
            cbz x0,.L_402e00
.L_402d88:

            ldr w0,[x19,:lo12:z]
            ldr x24,[x22,#16]
            cmp w0,#0
            b.le .L_402dec

            adrp x23, .L_407ab0
            add x23,x23, :lo12:.L_407ab0
            mov x20,#0
            nop
            nop
            nop
            nop
.L_402da8:

            ldr w2,[x24,x20,lsl #2]
            mov w1,w20
            add x0,sp,#72
            add x20,x20,#1
            rev w19,w2
            bl ttinfo

            ldr x5,[sp,#88]
            sxtw x2,w19
            ldp w3,w4,[sp,#80]
            cmp x2,#0
            mov x1,x23
            csel x2,x2,xzr,ge
            mov w0,w21
            bl fprint

            ldr w1,[x22]
            cmp w1,w20
            b.gt .L_402da8
.L_402dec:

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
.L_402e00:

.cfi_restore_state 
            bl readtimezone

            b .L_402d88
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size _p9zonedump, . - _p9zonedump
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
            cbz x5,.L_402e94

            blr x5

            cbz w0,.L_402e7c

            ldp x0,x1,[x19,#16]
            add x20,x0,w20, sxtw
            cmp x1,x20
            b.lo .L_402e80

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_402e7c:

.cfi_restore_state 
            ldr x0,[x19,#16]
.L_402e80:

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
.L_402e94:

.cfi_restore_state 
            mov x0,x1
            b .L_402e80
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
.L_402ec8:

            ldrb w0,[x23]
            ldrb w21,[x20]
            ldp x19,x25,[x23,#16]
            mov w22,w21
            cbz w0,.L_402f74

            cbnz w21,.L_402f08

            b .L_4030dc
.L_402ee4:

            add x1,x19,#2
            add x20,x20,#1
            mov x0,x19
            cmp x1,x25
            b.hi .L_402f3c
.L_402ef8:

            strh w22,[x0]
            mov x19,x1
            ldrb w22,[x20]
            cbz w22,.L_402f64
.L_402f08:

            cmp w22,#37
            b.eq .L_4030c0

            cmp w22,#127
            b.le .L_402ee4

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            ldrh w22,[sp,#94]
            add x1,x19,#2
            add x20,x20,w0, sxtw
            mov x0,x19
            cmp x1,x25
            b.ls .L_402ef8
.L_402f3c:

            mov x1,x19
            mov x0,x23
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_4030a4

            ldr x25,[x23,#24]
            strh w22,[x0]
            add x19,x0,#2
            ldrb w22,[x20]
            cbnz w22,.L_402f08
.L_402f64:

            ldr x0,[x23,#16]
            sub x0,x19,x0
            ubfx x0,x0,#1,#32
            b .L_403004
.L_402f74:

            cbnz w21,.L_402f9c

            b .L_4030dc
.L_402f7c:

            add x0,x19,#1
            cmp x0,x25
            b.hi .L_403030
.L_402f88:

            add x20,x20,#1
            strb w21,[x19]
            mov x19,x0
.L_402f94:

            ldrb w21,[x20]
            cbz w21,.L_402ffc
.L_402f9c:

            cmp w21,#37
            b.eq .L_403074

            cmp w21,#127
            b.le .L_402f7c

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            mov w21,w0
            add x0,x19,w0, sxtw
            cmp x25,x0
            b.lo .L_403054
.L_402fc8:

            mov w4,w21
            mov x3,#0
            cbz w21,.L_402f94

            nop
            nop
            nop
            nop
.L_402fd8:

            ldrb w1,[x20,x3]
            strb w1,[x19,x3]
            add x3,x3,#1
            cmp x4,x3
            b.ne .L_402fd8

            add x20,x20,x4
            add x19,x19,x4
            ldrb w21,[x20]
            cbnz w21,.L_402f9c
.L_402ffc:

            ldr x0,[x23,#16]
            sub w0,w19,w0
.L_403004:

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
.L_403030:

.cfi_restore_state 
            mov x1,x19
            mov x0,x23
            mov w2,#1
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_4030a4

            ldr x25,[x23,#24]
            add x0,x0,#1
            b .L_402f88
.L_403054:

            mov x1,x19
            mov w2,w21
            mov x0,x23
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_4030a4

            ldr x25,[x23,#24]
            b .L_402fc8
.L_403074:

            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            add w0,w0,w2
.L_403088:

            stp x19,x25,[x23,#16]
            mov w2,#0
            str w0,[x23,#48]
            mov x0,x23
            bl __fmtdispatch

            mov x20,x0
            cbnz x0,.L_402ec8
.L_4030a4:

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
.L_4030c0:

.cfi_restore_state 
            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            asr x2,x2,#1
            add w0,w0,w2
            b .L_403088
.L_4030dc:

            mov w0,#0
            b .L_403004
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
            b.le .L_4031e4

            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_403128
.L_403114:

            add w20,w20,#1
            strb w22,[x0]
            mov x2,x3
            cmp w21,w20
            b.eq .L_40319c
.L_403128:

            add x3,x2,#1
            mov x0,x2
            cmp x3,x4
            b.ls .L_403114

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
            cbz x1,.L_4031dc

            blr x1

            cbz w0,.L_4031c8

            ldp x0,x4,[x19,#16]
            add x2,x0,#1
            cmp x2,x4
            b.hi .L_4031cc

            cbz x0,.L_4031d0

            add w20,w20,#1
            strb w22,[x0]
            cmp w21,w20
            b.ne .L_403128
.L_40319c:

            ldr x3,[x19,#16]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub w3,w2,w3
.L_4031a8:

            ldr w1,[x19,#48]
            mov w0,#0
            str x2,[x19,#16]
            add w1,w1,w3
            str w1,[x19,#48]
.L_4031bc:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4031c8:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            ldr x0,[x19,#16]
.L_4031cc:

            str x0,[x19,#24]
.L_4031d0:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_4031bc
.L_4031dc:

.cfi_restore_state 
            mov x0,x2
            b .L_4031cc
.L_4031e4:

.cfi_restore 21
.cfi_restore 22
            mov w3,#0
            b .L_4031a8
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
            b.le .L_4032f0

            ldr w4,[x0,#48]
            mov x5,x2
            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_40323c
.L_403228:

            add w20,w20,#1
            strh w22,[x3]
            mov x2,x0
            cmp w21,w20
            b.eq .L_4032b4
.L_40323c:

            add x0,x2,#2
            mov x3,x2
            cmp x0,x6
            b.ls .L_403228

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
            cbz x1,.L_4032dc

            blr x1

            ldr x3,[x19,#16]
            cbz w0,.L_4032e0

            ldr x6,[x19,#24]
            add x2,x3,#2
            mov x5,x3
            cmp x2,x6
            b.hi .L_4032e0

            cbz x3,.L_4032e4

            ldr w4,[x19,#48]
            add w20,w20,#1
            strh w22,[x3]
            cmp w21,w20
            b.ne .L_40323c
.L_4032b4:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub x0,x2,x5
            ubfx x0,x0,#1,#32
.L_4032c0:

            add w4,w4,w0
            mov w0,#0
            str x2,[x19,#16]
            str w4,[x19,#48]
.L_4032d0:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4032dc:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x3,x2
.L_4032e0:

            str x3,[x19,#24]
.L_4032e4:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_4032d0
.L_4032f0:

            ldr w4,[x19,#48]
            mov w0,#0
            b .L_4032c0
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
            tbz w25,#0,.L_403338

            ldr w26,[x0,#92]
.L_403338:

            tbz w25,#2,.L_403348

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_403348:

            ldrb w0,[x21]
            and x25,x25,#2
            cbz w0,.L_40345c

            cbz x25,.L_40359c
.L_403358:

            ldr x20,[x21,#16]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#24]
            mov w23,w24
            mov w0,#0
            cmp w24,#0
            b.gt .L_4033a0

            b .L_40341c
.L_403378:

            add x1,x20,#2
            add x19,x19,#1
            mov x0,x20
            cmp x1,x27
            b.hi .L_4033e4
.L_40338c:

            mov x20,x1
            ldrh w1,[sp,#108]
            strh w1,[x0]
            subs w23,w23,#1
            b.eq .L_403410
.L_4033a0:

            ldrb w0,[x19]
            sub x1,x22,x19
            strh w0,[sp,#108]
            tbz w0,#7,.L_403378

            cmp x1,#2
            b.gt .L_4033c4

            mov x0,x19
            bl fullrune

            cbz w0,.L_403410
.L_4033c4:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x20,#2
            mov x0,x20
            cmp x1,x27
            b.ls .L_40338c
.L_4033e4:

            mov x1,x20
            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_4035e0

            ldrh w1,[sp,#108]
            add x20,x0,#2
            ldr x27,[x21,#24]
            strh w1,[x0]
            subs w23,w23,#1
            b.ne .L_4033a0
.L_403410:

            ldr x0,[x21,#16]
            sub x0,x20,x0
            ubfx x0,x0,#1,#32
.L_40341c:

            ldr w1,[x21,#48]
            str x20,[x21,#16]
            add w0,w1,w0
            str w0,[x21,#48]
            cbz x25,.L_4034cc

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
.L_40345c:

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
            cbz x25,.L_403584
.L_403460:

            ldr x23,[x21,#24]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#16]
            mov w20,w24
            mov w1,#0
            cmp w24,#0
            b.le .L_4034b8

            nop
            nop
            nop
            nop
.L_403480:

            ldrb w4,[x19]
            strh w4,[sp,#108]
            mov w0,w4
            cmp w4,#127
            b.hi .L_4034ec

            add x1,x27,#3
            add x19,x19,#1
            cmp x23,x1
            b.lo .L_403524
.L_4034a4:

            strb w4,[x27],#1
.L_4034a8:

            subs w20,w20,#1
            b.ne .L_403480
.L_4034b0:

            ldr x1,[x21,#16]
            sub w1,w27,w1
.L_4034b8:

            ldr w0,[x21,#48]
            str x27,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x25,.L_4035b4
.L_4034cc:

            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#0
.L_4034d4:

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
.L_4034ec:

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
            b.gt .L_403504

            mov x0,x19
            bl fullrune

            cbz w0,.L_4034b0
.L_403504:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x27,#3
            cmp x23,x1
            b.hs .L_40353c

            ldrh w0,[sp,#108]
.L_403524:

            and x0,x0,#65535
            bl runelen

            mov w2,w0
            add x0,x27,w0, sxtw
            cmp x23,x0
            b.lo .L_403568
.L_40353c:

            ldrh w4,[sp,#108]
            cmp w4,#127
            b.hi .L_403550

            and w4,w4,#255
            b .L_4034a4
.L_403550:

            mov x0,x27
            add x1,sp,#110
            strh w4,[sp,#110]
            bl runetochar

            add x27,x27,w0, sxtw
            b .L_4034a8
.L_403568:

            mov x1,x27
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_4035e0

            ldr x23,[x21,#24]
            b .L_40353c
.L_403584:

.cfi_restore 27
            sub w1,w26,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_403460

            mov w0,#-1
            b .L_4034d4
.L_40359c:

            sub w1,w26,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_403358

            mov w0,#-1
            b .L_4034d4
.L_4035b4:

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
.L_4035e0:

.cfi_restore_state 
            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#-1
            b .L_4034d4
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
            tbz w23,#0,.L_403624

            ldr w25,[x0,#92]
.L_403624:

            tbz w23,#2,.L_403634

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_403634:

            ldrb w0,[x21]
            and x23,x23,#2
            cbz w0,.L_4036e4

            cbz x23,.L_4037a8
.L_403644:

            add x20,x19,w24, sxtw #1
            mov w0,#0
            ldp x1,x3,[x21,#16]
            cmp x19,x20
            b.lo .L_403670

            b .L_4036b4
.L_40365c:

            mov x1,x2
            ldrh w2,[x19],#2
            strh w2,[x0]
            cmp x20,x19
            b.ls .L_4036a8
.L_403670:

            add x2,x1,#2
            mov x0,x1
            cmp x2,x3
            b.ls .L_40365c

            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_4037b8

            ldrh w2,[x19],#2
            add x1,x0,#2
            ldr x3,[x21,#24]
            strh w2,[x0]
            cmp x20,x19
            b.hi .L_403670
.L_4036a8:

            ldr x0,[x21,#16]
            sub x0,x1,x0
            ubfx x0,x0,#1,#32
.L_4036b4:

            ldr w2,[x21,#48]
            str x1,[x21,#16]
            add w2,w2,w0
            str w2,[x21,#48]
            cbnz x23,.L_4037d8
.L_4036c8:

            mov w0,#0
.L_4036cc:

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
.L_4036e4:

.cfi_restore_state 
            cbz x23,.L_4037c0
.L_4036e8:

            add x22,x19,w24, sxtw #1
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            mov w1,#0
            ldp x20,x28,[x21,#16]
            cmp x19,x22
            b.hs .L_403738
.L_403700:

            add x1,x20,#3
            ldrh w26,[x19]
            cmp x28,x1
            b.lo .L_403754
.L_403710:

            mov x27,x20
            mov x20,x27
            cmp w26,#127
            b.hi .L_403790
.L_403720:

            strb w26,[x20],#1
.L_403724:

            add x19,x19,#2
            cmp x22,x19
            b.hi .L_403700

            ldr x1,[x21,#16]
            sub w1,w20,w1
.L_403738:

            ldr w0,[x21,#48]
            str x20,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x23,.L_403800

            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            b .L_4036c8
.L_403754:

.cfi_restore_state 
            and x0,x26,#65535
            bl runelen

            mov w2,w0
            add x0,x20,w0, sxtw
            cmp x28,x0
            b.hs .L_403710

            mov x1,x20
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_40382c

            ldr x28,[x21,#24]
            mov x20,x27
            cmp w26,#127
            b.ls .L_403720
.L_403790:

            add x1,sp,#110
            mov x0,x27
            strh w26,[sp,#110]
            bl runetochar

            add x20,x27,w0, sxtw
            b .L_403724
.L_4037a8:

.cfi_restore 27
.cfi_restore 28
            sub w1,w25,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_403644
.L_4037b8:

            mov w0,#-1
            b .L_4036cc
.L_4037c0:

            sub w1,w25,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_4036e8

            mov w0,#-1
            b .L_4036cc
.L_4037d8:

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
.L_403800:

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
.L_40382c:

.cfi_restore_state 
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            mov w0,#-1
            b .L_4036cc
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
            tbnz w2,#31,.L_403888
.L_403858:

            add x2,x1,#11
            and x2,x2,#-8
            str x2,[x0,#56]
.L_403864:

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
.L_403888:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_403858

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            b .L_403864
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
            tbnz w2,#31,.L_4038e4
.L_4038bc:

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
.L_4038e4:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_4038bc

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
            cbz x1,.L_4039e4

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
            tbz w0,#2,.L_4039a4

            ldr w4,[x20,#96]
            cmp w4,#0
            b.le .L_4039f8

            sxtw x4,w4
            mov x2,#0
            b .L_403968
.L_40395c:

            cmp x3,x4
            b.eq .L_4039d8

            mov x2,x3
.L_403968:

            ldrb w1,[x19,x2]
            add x3,x2,#1
            cbnz w1,.L_40395c

            mov w21,w2
            sxtw x1,w2
.L_40397c:

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
.L_4039a4:

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
.L_4039d8:

.cfi_restore_state 
            add w21,w2,#1
            sxtw x1,w21
            b .L_40397c
.L_4039e4:

.cfi_def_cfa_offset 0
.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 29
.cfi_restore 30
            adrp x1, .L_407ac0
            mov w3,#5
            add x1,x1, :lo12:.L_407ac0
            mov w2,w3
            b __fmtcpy
.L_4039f8:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x1,#0
            mov w21,#0
            b .L_40397c
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
            tbnz w2,#31,.L_403a28
.L_403a14:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtstrcpy
.L_403a28:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_403a14

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
            cbz x1,.L_403ac0

            ldr x0,[x0,#104]
            tbz w0,#2,.L_403a98

            ldr w0,[x5,#96]
            cmp w0,#0
            b.le .L_403ad4

            mov x3,x1
            mov w2,#0
            b .L_403a84
.L_403a78:

            add w2,w2,#1
            cmp w0,w2
            b.eq .L_403ab8
.L_403a84:

            ldrh w4,[x3]
            add x3,x3,#2
            cbnz w4,.L_403a78

            mov x0,x5
            b __fmtrcpy
.L_403a98:

            ldrh w0,[x1]
            mov x2,x1
            cbz w0,.L_403ad4

            nop
            nop
            nop
            nop
.L_403aa8:

            ldrh w3,[x2,#2]!
            cbnz w3,.L_403aa8

            sub x2,x2,x1
            ubfx x2,x2,#1,#32
.L_403ab8:

            mov x0,x5
            b __fmtrcpy
.L_403ac0:

            mov w3,#5
            adrp x1, .L_407ac0
            mov w2,w3
            add x1,x1, :lo12:.L_407ac0
            b __fmtcpy
.L_403ad4:

            mov w2,#0
            b .L_403ab8
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
            tbnz w2,#31,.L_403b04
.L_403af0:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtrunestrcpy
.L_403b04:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_403af0

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
            b.hi .L_403d8c

            mov x3,#4294967297
            movk x3,#8576,lsl #16
            lsr x3,x3,x4
            tbz w3,#0,.L_403d8c

            and w20,w1,#4294967247
            orr w20,w20,#256
            cmp w0,#112
            b.ne .L_404094

            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            tbnz w6,#31,.L_404320
.L_403bb8:

            add x0,x2,#15
            and x0,x0,#-8
            str x0,[x19,#56]
.L_403bc4:

            ldr x21,[x2]
            adrp x22, .L_407ae0
            adrp x6, .L_407ac8
            add x2,x22, :lo12:.L_407ae0
            add x27,x6, :lo12:.L_407ac8
            adrp x0, .L_407b00
            mov w1,#120
            add x0,x0, :lo12:.L_407b00
            mov w25,#0
            mov x28,#0
            str w1,[x19,#88]
            str x2,[sp,#96]
            mov w2,#16
            str w2,[sp,#112]
            str x0,[sp,#152]
.L_403c00:

            tbnz w20,#8,.L_403e18
.L_403c04:

            lsr x0,x28,#63
            tst w25,w0
            b.eq .L_40404c

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
.L_403c3c:

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
.L_403c58:

            udiv x0,x28,x3
            mov x7,x28
            and w1,w26,#2147483651
            msub x8,x0,x3,x28
            mov x28,x0
            cbz w21,.L_403c78

            cmp w1,#3
            b.eq .L_403ed8
.L_403c78:

            cbnz w23,.L_403ef0
.L_403c7c:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x3
            b.hs .L_403c58

            cbz w26,.L_403e9c
.L_403c94:

            ldr w23,[x19,#96]
            and w0,w20,#8
            str w0,[sp,#120]
.L_403ca0:

            add x28,sp,#163
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.ge .L_403ce8

            ldr w0,[sp,#116]
            and w21,w20,#64
            ldr w1,[sp,#108]
            mov w27,#48
            sub w1,w0,w1
            sxtw x0,w0
            str w1,[sp,#128]
            str x0,[sp,#136]
.L_403cd0:

            cbnz w21,.L_403f6c
.L_403cd4:

            strb w27,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.lt .L_403cd0
.L_403ce8:

            and w0,w20,#48
            orr w0,w0,w25
            cmp w0,#0
            ldr w0,[sp,#120]
            cinc w26,w26,ne
            cbz w0,.L_404020

            ldr w0,[sp,#112]
            cmp w0,#16
            b.eq .L_404304

            ldr w0,[sp,#112]
            cmp w0,#8
            b.eq .L_40412c
.L_403d18:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_404140

            ldr x0,[x19,#104]
.L_403d2c:

            ldr w1,[sp,#112]
            cmp w1,#8
            b.ne .L_404034

            mov x4,x22
.L_403d3c:

            mov x22,x4
            mov w1,#48
            strb w1,[x22],#-1
            mov w1,#45
            cbz w25,.L_40403c
.L_403d50:

            strb w1,[x22]
.L_403d54:

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
.L_403d8c:

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
            tbz w1,#11,.L_403f44

            cbnz w25,.L_4041c8

            tbnz w6,#31,.L_40434c
.L_403d9c:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403da8:

            ldr x28,[x2]
            mov w20,w1
            mov w25,#1
            mov x21,#0
.L_403db8:

            adrp x1, .L_407b00
            add x1,x1, :lo12:.L_407b00
            str x1,[sp,#152]
            ldr x1,[x19,#120]
            str x1,[sp,#96]
            cmp w0,#105
            b.eq .L_4042d8

            b.gt .L_404254

            cmp w0,#98
            b.eq .L_4042b4

            cmp w0,#100
            b.eq .L_4042d8

            cmp w0,#88
            b.ne .L_404298

            adrp x22, .L_407ae0
            add x0,x22, :lo12:.L_407ae0
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            adrp x6, .L_407ae8
            add x27,x6, :lo12:.L_407ae8
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            tbz w20,#8,.L_403c04

            nop
            nop
            nop
            nop
.L_403e18:

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_404284

            add x22,sp,#299
            mov w24,#0
            cbz x21,.L_403e9c
.L_403e48:

            ldrsw x28,[sp,#112]
            and w23,w20,#4096
            and w3,w20,#64
            add x22,sp,#299
            mov w24,#0
            mov w26,#0
.L_403e60:

            udiv x0,x21,x28
            mov x7,x21
            and w1,w26,#2147483651
            msub x8,x0,x28,x21
            mov x21,x0
            cbz w23,.L_403e80

            cmp w1,#3
            b.eq .L_403fa4
.L_403e80:

            cbnz w3,.L_403fc0
.L_403e84:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x28
            b.hs .L_403e60

            cbnz w26,.L_403c94
.L_403e9c:

            tbz w20,#2,.L_403ea8

            ldr w26,[x19,#96]
            cbz w26,.L_4040fc
.L_403ea8:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_40433c
.L_403eb4:

            ldr w0,[x19,#88]
            mov w26,#1
            ldr w23,[x19,#96]
            and w0,w0,#4294967263
            cmp w0,#88
            b.ne .L_4040c8
.L_403ecc:

            and w20,w20,#4294967287
            str wzr,[sp,#120]
            b .L_403ca0
.L_403ed8:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w23,.L_403c7c
.L_403ef0:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str x3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr x3,[sp,#136]
            cbz w0,.L_403c7c

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
            b .L_403c7c
.L_403f44:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#10,.L_4040d4

            cbnz w25,.L_4041ec

            tbnz w6,#31,.L_4043c8
.L_403f50:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403f5c:

            ldr x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403db8
.L_403f6c:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            cbz w0,.L_403cd4

            ldr x1,[sp,#96]
            ldr x2,[sp,#136]
            ldr w0,[sp,#108]
            sub x22,x22,x2
            add w26,w26,w0
            ldr w0,[sp,#128]
            add w24,w24,w0
            add x0,x22,#1
            bl memmove

            b .L_403cd4
.L_403fa4:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w3,.L_403e84

            nop
            nop
            nop
            nop
.L_403fc0:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str w3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr w3,[sp,#136]
            cbz w0,.L_403e84

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
            b .L_403e84
.L_404018:

            and w20,w20,#4294967287
            nop
            nop
            nop
            nop
.L_404020:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_4042f8

            ldr x0,[x19,#104]
.L_404034:

            mov w1,#45
            cbnz w25,.L_403d50
.L_40403c:

            tbnz w20,#5,.L_40408c

            tbz w20,#4,.L_404124

            mov w1,#32
            b .L_403d50
.L_40404c:

            eor w0,w25,#1
            lsr x1,x21,#63
            tst w0,w1
            b.eq .L_403e18

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_404288

            neg x21,x21
            mov w25,#1
            b .L_403e48
.L_40408c:

            mov w1,#43
            b .L_403d50
.L_404094:

.cfi_restore 23
.cfi_restore 24
            tbnz w1,#11,.L_4041cc

            tbnz w1,#10,.L_4041f0

            mov w7,w20
            tbnz w1,#13,.L_404408

            tbz w1,#9,.L_404430
.L_4040a8:

            tbnz w6,#31,.L_4044d0
.L_4040ac:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_4040b8:

            ldrh w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403db8
.L_4040c8:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w0,w20,#8
            str w0,[sp,#120]
            b .L_403ca0
.L_4040d4:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#13,.L_404384

            cbnz w25,.L_404408

            tbnz w6,#31,.L_40447c
.L_4040e0:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_4040ec:

            ldrb w21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403db8
.L_4040fc:

.cfi_offset 23, -256
.cfi_offset 24, -248
            ldr w0,[x19,#88]
            cmp w0,#111
            b.eq .L_404450

            and w0,w0,#4294967263
            mov w23,#0
            cmp w0,#88
            b.eq .L_403ecc

            and w0,w20,#8
            str w0,[sp,#120]
            b .L_403ce8
.L_404124:

            add x22,x22,#1
            b .L_403d54
.L_40412c:

            ldrb w0,[x22,#1]
            cmp w0,#48
            b.eq .L_404018

            add w26,w26,#1
            b .L_403d18
.L_404140:

            mov w0,#8
            str w0,[sp,#128]
.L_404148:

            and w27,w20,#1
            tbz w20,#0,.L_404154

            ldr w27,[x19,#92]
.L_404154:

            cmp w27,w26
            add x28,sp,#163
            ccmp x28,x22,#2,gt
            and w7,w20,#64
            b.hs .L_404198

            ldr w0,[sp,#116]
            mov w3,#48
            ldr w1,[sp,#108]
            sxtw x21,w0
            sub w23,w0,w1
            nop
            nop
            nop
            nop
.L_404180:

            cbnz w7,.L_404210
.L_404184:

            strb w3,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w27,#0,lo
            b.lt .L_404180
.L_404198:

            ldr x0,[x19,#104]
            ldr w1,[sp,#128]
            and x0,x0,#-2
            str x0,[x19,#104]
            cbz w1,.L_404034

            ldr w1,[sp,#112]
            cmp w1,#16
            b.ne .L_403d2c
.L_4041b8:

            mov x4,x22
            ldr w1,[x19,#88]
            strb w1,[x4],#-1
            b .L_403d3c
.L_4041c8:

.cfi_restore 23
.cfi_restore 24
            mov w20,w1
.L_4041cc:

            tbnz w6,#31,.L_404368
.L_4041d0:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_4041dc:

            ldr x28,[x2]
            mov w25,#1
            mov x21,#0
            b .L_403db8
.L_4041ec:

            mov w20,w1
.L_4041f0:

            tbnz w6,#31,.L_4043ac
.L_4041f4:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_404200:

            ldr x21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403db8
.L_404210:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            stp w7,w3,[sp,#116]
            bl __needsep

            ldp w7,w3,[sp,#116]
            cbz w0,.L_404184

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
            b .L_404184
.L_404254:

.cfi_restore 23
.cfi_restore 24
            cmp w0,#117
            b.eq .L_4042d8

            cmp w0,#120
            b.eq .L_40452c

            cmp w0,#111
            b.ne .L_404298

            adrp x6, .L_407ac8
            mov w0,#8
            add x27,x6, :lo12:.L_407ac8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w0,[sp,#112]
            b .L_403c00
.L_404284:

            mov w25,#0
.L_404288:

            cbnz x28,.L_403c3c

            add x22,sp,#299
            mov w24,#0
            b .L_403e9c
.L_404298:

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
.L_4042b4:

.cfi_restore_state 
            adrp x22, .L_407ae0
            add x0,x22, :lo12:.L_407ae0
            adrp x6, .L_407ac8
            add x27,x6, :lo12:.L_407ac8
            stp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#2
            str w0,[sp,#112]
            b .L_403c00
.L_4042d8:

.cfi_restore_state 
            ldr x0,[x19,#128]
            adrp x6, .L_407ac8
            mov w1,#10
            add x27,x6, :lo12:.L_407ac8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w1,[sp,#112]
            str x0,[sp,#152]
            b .L_403c00
.L_4042f8:

            and w0,w20,#8
            str w0,[sp,#128]
            b .L_404148
.L_404304:

            mov w0,#134
            and w0,w20,w0
            add w26,w26,#2
            cmp w0,#128
            b.eq .L_404140

            ldr x0,[x19,#104]
            b .L_4041b8
.L_404320:

            add w0,w6,#8
            str w0,[x5,#24]
            cmp w0,#0
            b.gt .L_403bb8

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403bc4
.L_40433c:

            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            b .L_403eb4
.L_40434c:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403d9c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403da8
.L_404368:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_4041d0

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4041dc
.L_404384:

            tbz w1,#9,.L_4043e4

            cbnz w25,.L_404524

            tbnz w6,#31,.L_4044ec
.L_404390:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_40439c:

            ldrsh x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403db8
.L_4043ac:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_4041f4

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_404200
.L_4043c8:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403f50

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403f5c
.L_4043e4:

            cbnz w25,.L_40442c

            tbnz w6,#31,.L_404508
.L_4043ec:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_4043f8:

            ldrsw x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_403db8
.L_404408:

            tbnz w6,#31,.L_404498
.L_40440c:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_404418:

            ldrb w21,[x2]
            mov w20,w7
            mov w25,#0
            mov x28,#0
            b .L_403db8
.L_40442c:

            mov w20,w1
.L_404430:

            tbnz w6,#31,.L_4044b4
.L_404434:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_404440:

            ldr w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_403db8
.L_404450:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w26,w20,#8
            tbnz w20,#3,.L_404460

            str wzr,[sp,#120]
            b .L_403ce8
.L_404460:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_40433c

            mov w0,#8
            mov w26,#1
            str w0,[sp,#120]
            b .L_403ce8
.L_40447c:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_4040e0

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4040ec
.L_404498:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_40440c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_404418
.L_4044b4:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_404434

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_404440
.L_4044d0:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_4040ac

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4040b8
.L_4044ec:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_404390

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_40439c
.L_404508:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_4043ec

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4043f8
.L_404524:

            mov w20,w1
            b .L_4040a8
.L_40452c:

            adrp x22, .L_407ae0
            add x0,x22, :lo12:.L_407ae0
            adrp x6, .L_407ac8
            add x27,x6, :lo12:.L_407ac8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            b .L_403c00
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
            tbnz w3,#31,.L_4045a0
.L_404564:

            add x3,x1,#15
            and x3,x3,#-8
            str x3,[x0,#56]
.L_404570:

            ldr x1,[x1]
            ldr w0,[x0,#48]
            tbnz w2,#11,.L_404580

            tbz w2,#10,.L_404590
.L_404580:

            sxtw x0,w0
            str x0,[x1]
.L_404588:

            mov w0,#0
            ret 
.L_404590:

            tbnz w2,#13,.L_4045bc

            tbz w2,#9,.L_4045c8

            strh w0,[x1]
            b .L_404588
.L_4045a0:

            add w5,w3,#8
            str w5,[x4,#24]
            cmp w5,#0
            b.gt .L_404564

            ldr x1,[x4,#8]
            add x1,x1,w3, sxtw
            b .L_404570
.L_4045bc:

            strb w0,[x1]
            mov w0,#0
            ret 
.L_4045c8:

            str w0,[x1]
            b .L_404588
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
            b.eq .L_4046dc

            b.gt .L_40460c

            cmp w1,#39
            b.eq .L_4046cc

            b.gt .L_404644

            cmp w1,#32
            b.eq .L_404688

            cmp w1,#35
            b.ne .L_404660

            ldr x1,[x0,#104]
            orr x1,x1,#8
            str x1,[x0,#104]
            b .L_404660
.L_40460c:

            cmp w1,#108
            b.eq .L_4046b0

            b.gt .L_404698

            cmp w1,#76
            b.eq .L_404678

            cmp w1,#104
            b.ne .L_404660

            ldr x1,[x0,#104]
            orr x2,x1,#8192
            tst x1,#512
            csel x1,x2,x1,ne
            orr x1,x1,#512
            str x1,[x0,#104]
            b .L_404660
.L_404644:

            cmp w1,#43
            b.eq .L_404668

            cmp w1,#44
            b.ne .L_404660

            ldr x1,[x0,#104]
            orr x1,x1,#4096
            str x1,[x0,#104]
.L_404660:

            mov w0,#1
            ret 
.L_404668:

            ldr x1,[x0,#104]
            orr x1,x1,#32
            str x1,[x0,#104]
            b .L_404660
.L_404678:

            ldr x1,[x0,#104]
            orr x1,x1,#16384
            str x1,[x0,#104]
            b .L_404660
.L_404688:

            ldr x1,[x0,#104]
            orr x1,x1,#16
            str x1,[x0,#104]
            b .L_404660
.L_404698:

            cmp w1,#117
            b.ne .L_404660

            ldr x1,[x0,#104]
            orr x1,x1,#256
            str x1,[x0,#104]
            b .L_404660
.L_4046b0:

            ldr x1,[x0,#104]
            orr x2,x1,#2048
            tst x1,#1024
            csel x1,x2,x1,ne
            orr x1,x1,#1024
            str x1,[x0,#104]
            b .L_404660
.L_4046cc:

            ldr x1,[x0,#104]
            orr x1,x1,#64
            str x1,[x0,#104]
            b .L_404660
.L_4046dc:

            ldr x1,[x0,#104]
            orr x1,x1,#2
            str x1,[x0,#104]
            b .L_404660
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
            b.hi .L_4047c0

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
            b.hi .L_404780

            b .L_404798
.L_404774:

            add x2,x2,#16
            cmp x4,x2
            b.ls .L_40478c
.L_404780:

            ldr w3,[x2]
            cmp w3,w0
            b.ne .L_404774
.L_40478c:

            add x5,x5,#1032
            cmp x2,x5
            b.eq .L_4047c0
.L_404798:

            str x1,[x2,#8]
            cmp x2,x4
            b.eq .L_4047ac

            mov w0,#0
.L_4047a8:

            ret 
.L_4047ac:

            add w7,w7,#1
            str w7,[x6,:lo12:fmtalloc]
            str w0,[x2]
            mov w0,#0
            b .L_4047a8
.L_4047c0:

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
.L_404838:

            cbz w22,.L_4048a0
.L_40483c:

            ldrh w19,[x20],#2
            str w19,[x21,#88]
            cmp w19,#46
            b.eq .L_4048c0
.L_40484c:

            b.hi .L_4048d4

            cbz w19,.L_404a74

            cmp w19,#42
            b.ne .L_40496c

            ldr w1,[x21,#80]
            add x2,x21,#56
            ldr x0,[x21,#56]
            tbnz w1,#31,.L_404a44
.L_40486c:

            add x1,x0,#11
            and x1,x1,#-8
            str x1,[x21,#56]
.L_404878:

            ldr w3,[x0]
            ldr x0,[x21,#104]
            and x2,x0,#1
            tbz w3,#31,.L_404940

            tbz w0,#2,.L_4049ec

            and x0,x0,#-5
            str wzr,[x21,#96]
            str x0,[x21,#104]
            cbnz w22,.L_40483c

            nop
            nop
            nop
            nop
.L_4048a0:

            mov x1,x20
            add x0,sp,#78
            bl chartorune

            ldrh w19,[sp,#78]
            str w19,[x21,#88]
            add x20,x20,w0, sxtw
            cmp w19,#46
            b.ne .L_40484c
.L_4048c0:

            ldr x0,[x21,#104]
            mov x1,#5
            orr x0,x0,x1
            str x0,[x21,#104]
            b .L_404838
.L_4048d4:

            cmp w19,#48
            b.eq .L_404954

            sub w0,w19,#49
            and w0,w0,#65535
            cmp w0,#8
            b.hi .L_40496c

            ldr x0,[x21,#104]
            and x2,x0,#1
.L_4048f4:

            mov w3,#0
            b .L_404910
.L_4048fc:

            ldrh w19,[x20],#2
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.hi .L_404934
.L_404910:

            add w3,w3,w3, lsl #2
            add w3,w19,w3, lsl #1
            sub w3,w3,#48
            cbnz w22,.L_4048fc

            ldrb w19,[x20],#1
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.ls .L_404910
.L_404934:

            cmp w22,#0
            cinc x20,x20,eq
            sub x20,x20,#2
.L_404940:

            cbz x2,.L_4049dc

            orr x0,x0,#4
            str w3,[x21,#96]
            str x0,[x21,#104]
            b .L_404838
.L_404954:

            ldr x0,[x21,#104]
            and x2,x0,#1
            tbnz w0,#0,.L_4048f4

            orr x0,x0,#128
            str x0,[x21,#104]
            b .L_404838
.L_40496c:

            adrp x2, fmtalloc
            add x0,x2, :lo12:fmtalloc
            add x1,x0,#8
            ldr w2,[x2,:lo12:fmtalloc]
            add x2,x0,w2, sxtw #4
            add x2,x2,#8
            cmp x2,x1
            b.hi .L_40499c

            b .L_4049fc
.L_404990:

            add x1,x1,#16
            cmp x2,x1
            b.ls .L_4049fc
.L_40499c:

            ldr w0,[x1]
            cmp w19,w0
            b.ne .L_404990
.L_4049a8:

            ldr x0,[x1,#8]
            cbz x0,.L_4049a8

            ldr x1,[x1,#8]
.L_4049b4:

            mov x0,x21
            blr x1

            cmp w0,#0
            b.lt .L_404a74

            b.ne .L_404838

            mov x0,x20
.L_4049cc:

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
.L_4049dc:

.cfi_restore_state 
            orr x0,x0,#1
            str w3,[x21,#92]
            str x0,[x21,#104]
            b .L_404838
.L_4049ec:

            and x2,x0,#1
            neg w3,w3
            orr x0,x0,#2
            b .L_404940
.L_4049fc:

            str x23,[sp,#48]
.cfi_offset 23, -32
            bl __fmtlock

            adrp x0, knownfmt
            add x23,x0, :lo12:knownfmt
            ldr w0,[x0,:lo12:knownfmt]
            cbnz w0,.L_404a20

            b .L_404a60
.L_404a18:

            ldr w0,[x23,#16]!
            cbz w0,.L_404a60
.L_404a20:

            cmp w19,w0
            b.ne .L_404a18

            ldr x1,[x23,#8]
            mov w0,w19
            bl __fmtinstall

            bl __fmtunlock

            ldr x1,[x23,#8]
            ldr x23,[sp,#48]
.cfi_restore 23
            b .L_4049b4
.L_404a44:

            add w3,w1,#8
            str w3,[x2,#24]
            cmp w3,#0
            b.gt .L_40486c

            ldr x0,[x2,#8]
            add x0,x0,w1, sxtw
            b .L_404878
.L_404a60:

.cfi_offset 23, -32
            bl __fmtunlock

            ldr x23,[sp,#48]
.cfi_restore 23
            adrp x1, __badfmt
            add x1,x1, :lo12:__badfmt
            b .L_4049b4
.L_404a74:

            mov x0,#0
            b .L_4049cc
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
            b.le .L_404aac

            ldr w0,[x19,#48]
.L_404aa0:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_404aac:

.cfi_restore_state 
            mov w0,#-1
            b .L_404aa0
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
            b.ne .L_404b44
.L_404b30:

            mov w0,#1
            str x1,[x19,#16]
.L_404b38:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404b44:

.cfi_restore_state 
            ldr w0,[x19,#40]
            sxtw x20,w2
            mov x2,x20
            bl write

            mov x1,x0
            mov w0,#0
            cmp x1,x20
            b.ne .L_404b38

            ldr x1,[x19,#8]
            b .L_404b30
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
            cbz x1,.L_404bb4

            ldrb w5,[x1]
            adrp x4, .L_407b08
            add x4,x4, :lo12:.L_407b08
            cmp w5,#0
            csel x1,x4,x1,eq
.L_404b88:

            cmp x2,#0
            adrp x5, .L_407b10
            add x5,x5, :lo12:.L_407b10
            adrp x4, .L_407b18
            csel x2,x5,x2,eq
            add x4,x4, :lo12:.L_407b18
            cmp x3,#0
            stp x1,x2,[x0,#112]
            csel x3,x4,x3,eq
            str x3,[x0,#128]
            ret 
.L_404bb4:

            adrp x1, .L_407b08
            add x1,x1, :lo12:.L_407b08
            b .L_404b88
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
            b.ne .L_404c00

            mov w0,#0
            ret 
.L_404c00:

            ldrb w0,[x4,#1]
            cbz w0,.L_404c10

            add x4,x4,#1
            str x4,[x1]
.L_404c10:

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
            b.gt .L_404c78
.L_404c60:

            add x19,x19,#1
            cbz w0,.L_404c90

            add x20,x20,#1
.L_404c6c:

            ldrb w0,[x19]
            cmp w0,#127
            b.le .L_404c60
.L_404c78:

            mov x1,x19
            add x0,sp,#46
            add x20,x20,#1
            bl chartorune

            add x19,x19,w0, sxtw
            b .L_404c6c
.L_404c90:

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
            b.hs .L_404d24

            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x0
            mov x20,#0
.L_404cc4:

            ldrb w0,[x19]
            cmp w0,#127
            b.gt .L_404ce8

            cbnz w0,.L_404d1c
.L_404cd4:

            mov w0,w20
            ldp x19,x20,[sp,#16]
.L_404cdc:

.cfi_restore 20
.cfi_restore 19
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_def_cfa_offset 0
            ret 
.L_404ce8:

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
            cbz w2,.L_404cd4

            bl chartorune

            add x19,x19,w0, sxtw
.L_404d0c:

            add x20,x20,#1
            cmp x19,x21
            b.lo .L_404cc4

            b .L_404cd4
.L_404d1c:

            add x19,x19,#1
            b .L_404d0c
.L_404d24:

.cfi_restore 19
.cfi_restore 20
            mov w0,#0
            b .L_404cdc
.cfi_endproc 

            nop
            nop
            nop
            nop
.size utfnlen, . - utfnlen
.align 4
#-----------------------------------
.globl dirfstat
.type dirfstat, @function
#-----------------------------------
dirfstat:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-272]!
.cfi_def_cfa_offset 272
.cfi_offset 29, -272
.cfi_offset 30, -264
            mov fp,sp
            add x1,sp,#144
            stp x19,x20,[sp,#16]
.cfi_offset 19, -256
.cfi_offset 20, -248
            mov w19,w0
            bl fstat64

            tbnz w0,#31,.L_404dcc

            mov w3,w19
            mov w1,#100
            add x0,sp,#40
            adrp x2, .L_407b20
            add x2,x2, :lo12:.L_407b20
            bl snprint

            add x2,sp,#40
            add x1,sp,#144
            mov x5,#0
            mov x4,#0
            mov x3,#0
            mov x0,x1
            bl _p9dir

            sxtw x20,w0
            add x0,x20,#120
            mov w1,#1
            bl mallocz

            mov x19,x0
            cbz x0,.L_404dbc

            add x6,x0,#120
            add x1,sp,#144
            mov x3,x0
            add x2,sp,#40
            add x5,x6,x20
            add x4,sp,#32
            mov x0,x1
            str x6,[sp,#32]
            bl _p9dir
.L_404dbc:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#272
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404dcc:

.cfi_restore_state 
            mov x19,#0
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#272
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size dirfstat, . - dirfstat
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
            cbz x2,.L_404e50

            blr x2

            mov x19,x0
            cbz x0,.L_404e50

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#4
            b.eq .L_404e64
.L_404e24:

            mov w1,#14149
            movk w1,#6440,lsl #16
            cmp w0,w1
            b.ne .L_404e98

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
.L_404e50:

.cfi_restore_state 
            bl __errno_location

            ldr w0,[x0]
            mov x19,x20
            cmp w0,#4
            b.ne .L_404e24
.L_404e64:

            adrp x0, .L_407b30
            add x0,x0, :lo12:.L_407b30
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
.L_404e98:

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
            cbz x0,.L_404f3c

            blr x0

            cbz x0,.L_404f3c
.L_404f0c:

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
.L_404f3c:

.cfi_restore_state 
            mov x0,x19
            b .L_404f0c
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
            b.eq .L_404f84

            bl strerror

            mov x1,x0
.L_404f74:

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
.L_404f84:

.cfi_restore_state 
            adrp x20, xsyserr
            add x20,x20, :lo12:xsyserr
            ldr x0,[x20,#128]
            cbz x0,.L_404fa0

            blr x0

            mov x1,x0
            cbnz x0,.L_404f74
.L_404fa0:

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
.globl p9getenv
.type p9getenv, @function
#-----------------------------------
p9getenv:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            bl getenv

            cbz x0,.L_405068

            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            b strdup
.L_405068:

.cfi_restore_state 
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size p9getenv, . - p9getenv
.align 4
#-----------------------------------
.globl p9putenv
.type p9putenv, @function
#-----------------------------------
p9putenv:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov x2,x1
            mov x1,x0
            mov fp,sp
            adrp x0, .L_407b40
            add x0,x0, :lo12:.L_407b40
            bl smprint

            cbz x0,.L_4050a0

            bl putenv

            mov w0,#0
.L_405098:

            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_4050a0:

.cfi_restore_state 
            mov w0,#-1
            b .L_405098
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size p9putenv, . - p9putenv
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
            cbz x0,.L_40513c

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
.L_40513c:

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
.globl mallocz
.type mallocz, @function
#-----------------------------------
mallocz:

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
            mov w19,w1
            mov x20,x0
            bl p9malloc

            cmp w19,#0
            mov x19,x0
            ccmp x0,#0,#4,ne
            b.ne .L_405238

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405238:

.cfi_restore_state 
            mov x2,x20
            mov w1,#0
            bl memset

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
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size mallocz, . - mallocz
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
            tbz w19,#4,.L_405294

            eor w2,w2,#16
            orr w1,w22,#512
.L_405294:

            tbz w2,#7,.L_4052a0

            orr w1,w1,#65536
            eor w2,w2,#128
.L_4052a0:

            tbz w2,#8,.L_4052ac

            orr w1,w1,#2048
            eor w2,w2,#256
.L_4052ac:

            tbz w2,#14,.L_4052b8

            orr w1,w1,#1024
            eor w2,w2,#16384
.L_4052b8:

            cbnz w2,.L_40535c

            mov x0,x21
            bl open64

            mov w20,w0
            tbnz w0,#31,.L_4052d8

            tbnz w19,#13,.L_4052ec
.L_4052d0:

            tbnz w19,#5,.L_40532c

            tbnz w19,#6,.L_405340
.L_4052d8:

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
.L_4052ec:

.cfi_restore_state 
            cmp w22,#0
            add x2,sp,#48
            cset w3,ne
            mov w1,#6
            strh w3,[sp,#48]
            strh wzr,[sp,#50]
            stp xzr,xzr,[sp,#56]
            bl fcntl64

            tbz w0,#31,.L_4052d0

            mov w0,w20
            bl close

            adrp x0, .L_407b60
            mov w20,#-1
            add x0,x0, :lo12:.L_407b60
            bl werrstr

            b .L_4052d8
.L_40532c:

            mov w0,w20
            mov w2,#1
            mov w1,#4
            bl fcntl64

            tbz w19,#6,.L_4052d8
.L_405340:

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
.L_40535c:

.cfi_restore_state 
            mov w1,w2
            adrp x0, .L_407b48
            mov w20,#-1
            add x0,x0, :lo12:.L_407b48
            bl werrstr

            b .L_4052d8
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
.globl readn
.type readn, @function
#-----------------------------------
readn:

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
            b.le .L_405400

            mov x20,x2
            mov x19,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w0
            mov x22,x1
            b .L_4053b8
.L_4053ac:

            add x19,x19,x0
            cmp x20,x19
            b.le .L_4053ec
.L_4053b8:

            sub x2,x20,x19
            add x1,x22,x19
            mov w0,w21
            bl read

            cmp x0,#0
            b.gt .L_4053ac

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            cmp x19,#0
            csel x19,x19,x0,ne
.L_4053dc:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4053ec:

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
.L_405400:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x19,#0
            b .L_4053dc
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size readn, . - readn
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
            b.lo .L_40541c

            ret 
.L_40541c:

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
            cbz x0,.L_405454

            ldr x19,[sp,#16]
            mov x0,x3
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_405454:

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
#-----------------------------------
.type fmtpow10, @function
#-----------------------------------
fmtpow10:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            tbnz w0,#31,.L_4054d0

            cmp w0,#159
            b.le .L_4054c0

            sub w0,w0,#159
            cmp w0,#159
            b.le .L_405528

            mov w2,#0
.L_40548c:

            adrp x1, .L_407cc0
            ldr d0,[x1,:lo12:.L_407cc0]
            fmov d1,d0
.L_405498:

            sub w0,w0,#159
            fmul d0,d0,d1
            cmp w0,#159
            b.gt .L_405498

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d1,[x1,w0,sxtw #3]
            fmul d0,d0,d1
            cbnz w2,.L_4054e8

            ret 
.L_4054c0:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
            ret 
.L_4054d0:

            cmn w0,#159
            b.lt .L_4054f4

            neg w0,w0
            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
.L_4054e8:

            fmov d1,#1.000000000000000000e+00
            fdiv d0,d1,d0
            ret 
.L_4054f4:

            mov w1,#-159
            sub w0,w1,w0
            cmp w0,#159
            b.le .L_40550c

            mov w2,#1
            b .L_40548c
.L_40550c:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_407cc0
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_407cc0]
            fmul d0,d0,d1
            b .L_4054e8
.L_405528:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_407cc0
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_407cc0]
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
            b.lt .L_405628

            mov w1,#43
            strb w1,[x0,#1]
            add x20,sp,#48
            b.eq .L_4055d4
.L_405588:

            mov w5,#26215
            add x20,sp,#48
            mov x2,#1
            movk w5,#26214,lsl #16
.L_405598:

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
            cbnz w19,.L_405598

            mov w19,w4
            cmp w4,#1
            b.ne .L_4055f4
.L_4055d4:

            eor w22,w19,#1
            add x0,x20,w19, sxtw
            add w19,w19,#1
            add w2,w22,#1
            add w19,w22,w19
            mov w1,#48
            sxtw x2,w2
            bl memset
.L_4055f4:

            sxtw x0,w19
            mov x1,x21
            nop
            nop
            nop
            nop
.L_405600:

            add x2,x20,x0
            sub x0,x0,#1
            ldurb w2,[x2,#-1]
            strb w2,[x1],#1
            cbnz w0,.L_405600

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
.L_405628:

.cfi_restore_state 
            mov w1,#45
            neg w19,w19
            strb w1,[x0,#1]
            b .L_405588
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
            tbz w22,#10,.L_405698

            tbnz w1,#31,.L_405738
.L_405678:

            add x0,x0,#15
            and x0,x0,#-16
            add x1,x0,#16
            str x1,[x19,#56]
.L_405688:

            ldr q0,[x0]
            bl __trunctfdf2

            fmov d8,d0
            b .L_4056ac
.L_405698:

            tbnz w1,#31,.L_405754
.L_40569c:

            add x1,x0,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_4056a8:

            ldr d8,[x0]
.L_4056ac:

            str xzr,[x19,#104]
            mov w28,#6
            tbz w22,#2,.L_4056bc

            ldr w28,[x19,#96]
.L_4056bc:

            ldr w21,[x19,#88]
            cmp w21,#65
            b.eq .L_4056d8

            sub w0,w21,#69
            mov x23,#0
            cmp w0,#2
            b.hi .L_4056e0
.L_4056d8:

            add w21,w21,#32
            mov x23,#1
.L_4056e0:

            fmov d0,d8
            bl __isNaN

            cbz w0,.L_405770

            adrp x0, pows10
            add x0,x0, :lo12:pows10
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
.L_4056fc:

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
.L_405738:

.cfi_restore_state 
            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_405678

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_405688
.L_405754:

            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_40569c

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_4056a8
.L_405770:

            fmov d0,d8
            mov w0,#1
            bl __isInf

            cbnz w0,.L_405a3c

            fmov d0,d8
            mov w0,#-1
            bl __isInf

            str w0,[sp,#128]
            cbnz w0,.L_405a58

            stp x25,x26,[sp,#64]
.cfi_offset 26, -152
.cfi_offset 25, -160
            bl __errno_location

            fcmpe d8,#0.000000000000000000e+00
            mov x24,x0
            ldr w0,[x0]
            str w0,[sp,#132]
            b.mi .L_405878

            fcmp d8,#0.000000000000000000e+00
            b.ne .L_405f60

            mov w0,#48
            mov w27,#0
            mov w5,#1
            str wzr,[sp,#116]
            strh w0,[sp,#160]
.L_4057cc:

            ldr x25,[x19,#112]
            adrp x0, .L_407b08
            add x0,x0, :lo12:.L_407b08
            str w5,[sp,#120]
            cmp x25,#0
            csel x25,x0,x25,eq
            mov x0,x25
            bl utflen

            mov w6,w0
            ldr w5,[sp,#120]
            cmp w21,#102
            b.eq .L_405c6c

            cmp w21,#103
            b.ne .L_405a74

            cbz w28,.L_405cb4

            cmp w28,w5
            b.lt .L_40608c

            sub w1,w5,#1
            add w1,w1,w27
            cmp w28,w1
            ccmn w1,#4,#1,gt
            b.lt .L_405a88
.L_405824:

            add w20,w5,w27
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.gt .L_405848

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
.L_405848:

            add w28,w23,w28
            cmp w28,w0
            b.ge .L_405ce8

            adrp x3, pows10
            add x3,x3, :lo12:pows10
            adrp x1, .L_407b70
            adrp x0, .L_407b80
            add x3,x3,#1328
            add x1,x1, :lo12:.L_407b70
            add x0,x0, :lo12:.L_407b80
            mov w2,#512
            bl __assert_fail
.L_405878:

            fneg d8,d8
            mov w0,#1
            str w0,[sp,#116]
.L_405884:

            fmov d0,d8
            add x0,sp,#156
            bl frexp

            ldr w0,[sp,#156]
            adrp x1, .L_407cc8
            fmov d2,#1.000000000000000000e+00
            ldr d1,[x1,:lo12:.L_407cc8]
            scvtf d0,w0
            fmul d0,d0,d1
            fcvtzs w27,d0
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_4058c4

            b .L_4058dc
.L_4058c4:

            sub w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_4058c4
.L_4058dc:

            fmov d2,#1.000000000000000000e+01
            fcmpe d1,d2
            b.ge .L_4058ec

            b .L_405904
.L_4058ec:

            add w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.ge .L_4058ec
.L_405904:

            add x26,sp,#160
            add x20,sp,#177
            mov x1,x26
            fmov d2,#1.000000000000000000e+01
            nop
            nop
            nop
            nop
.L_405918:

            fcvtzs w0,d1
            scvtf d0,w0
            add w0,w0,#48
            strb w0,[x1],#1
            fsub d1,d1,d0
            fmul d1,d1,d2
            cmp x20,x1
            b.ne .L_405918

            mov w25,#10
            sub w27,w27,#16
            mov w1,w27
            mov x0,x20
            mov w2,#0
            bl xfmtexp
.L_405950:

            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmpe d0,d8
            b.mi .L_405f24

            b.gt .L_405f68
.L_405968:

            add x20,sp,#176
            add x25,x26,#13
            mov x2,x20
.L_405974:

            ldrb w6,[x2]
            str w6,[sp,#120]
            cmp w6,#57
            b.eq .L_4059ac

            mov w3,#57
            strb w3,[x2]
            mov x0,x26
            mov x1,#0
            str x2,[sp,#136]
            bl fmtstrtod

            fcmp d0,d8
            ldr w6,[sp,#120]
            ldr x2,[sp,#136]
            b.ne .L_4062b4
.L_4059ac:

            sub x2,x2,#1
            cmp x25,x2
            b.ne .L_405974
.L_4059b8:

            ldrb w0,[sp,#176]
            cmp w0,#57
            b.eq .L_405fc0
.L_4059c4:

            ldrb w2,[x20]
            str w2,[sp,#120]
            cmp w2,#48
            b.eq .L_4059f4

            mov w2,#48
            strb w2,[x20]
            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            ldr w2,[sp,#120]
            b.ne .L_4062bc
.L_4059f4:

            sub x20,x20,#1
            cmp x25,x20
            b.ne .L_4059c4
.L_405a00:

            mov x0,#17
            nop
            nop
            nop
            nop
.L_405a08:

            add x1,x26,x0
            ldurb w1,[x1,#-1]
            cmp w1,#48
            b.ne .L_405a28

            sub x0,x0,#1
            add w27,w27,#1
            cmp x0,#1
            b.ne .L_405a08
.L_405a28:

            mov w5,w0
            strb wzr,[x26,x0]
            ldr w0,[sp,#132]
            str w0,[x24]
            b .L_4057cc
.L_405a3c:

.cfi_restore 25
.cfi_restore 26
            add w23,w23,#2
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x23,w23
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
            b .L_4056fc
.L_405a58:

            add w1,w23,#4
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x1,w1
            add x0,x0,#1280
            ldr x20,[x0,x1,lsl #3]
            b .L_4056fc
.L_405a74:

.cfi_offset 25, -160
.cfi_offset 26, -152
            sub w1,w5,#1
            add w28,w28,#1
            add w1,w1,w27
            cmp w28,w5
            b.lt .L_405c4c
.L_405a88:

            sub w27,w28,w5
.L_405a8c:

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
.L_405ac0:

            cmp w21,#103
            b.eq .L_405ecc
.L_405ac8:

            cmp w20,w28
            b.ge .L_405eb8

            add w28,w28,w6
.L_405ad4:

            ldr w0,[sp,#132]
            add w28,w28,w0
            ldr w0,[sp,#116]
            cbnz w0,.L_405eac

            tbnz w22,#5,.L_405f1c

            and w4,w22,#16
            tbz w22,#4,.L_405afc

            mov w4,#32
            nop
            nop
            nop
            nop
.L_405af8:

            add w28,w28,#1
.L_405afc:

            and w1,w22,#1
            str w1,[sp,#136]
            ldrb w0,[x19]
            tbz w22,#0,.L_405da8

            ldr w1,[x19,#92]
            cmp w1,w28
            b.le .L_405da4

            sub w1,w1,w28
            mov w2,#130
            and w2,w22,w2
            str w1,[sp,#136]
            cmp w2,#128
            b.eq .L_405d9c

            and w1,w22,#2
            cbz w0,.L_405d54

            cbz w1,.L_406070
.L_405b3c:

            ldp x1,x21,[x19,#16]
            cbz w4,.L_405b58

            add x0,x1,#2
            cmp x0,x21
            b.hi .L_406120
.L_405b50:

            strh w4,[x1]
            mov x1,x0
.L_405b58:

            add x0,sp,#160
            str x0,[sp,#120]
            cmp w23,#0
            b.le .L_405b94
.L_405b68:

            sub w23,w23,#1
            mov w3,#48
.L_405b70:

            add x26,x1,#2
            cmp x26,x21
            b.hi .L_405bb8
.L_405b7c:

            strh w3,[x1]
            subs w20,w20,#1
            b.eq .L_405be8
.L_405b88:

            mov x1,x26
            cmp w23,#0
            b.gt .L_405b68
.L_405b94:

            cmp w24,#0
            b.le .L_405d40

            ldr x28,[sp,#120]
            add x26,x1,#2
            sub w24,w24,#1
            ldrb w3,[x28],#1
            str x28,[sp,#120]
            cmp x26,x21
            b.ls .L_405b7c
.L_405bb8:

            mov x0,x19
            mov w2,#2
            str w3,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_405d70

            ldr w3,[sp,#116]
            add x26,x0,#2
            ldr x21,[x19,#24]
            strh w3,[x1]
            subs w20,w20,#1
            b.ne .L_405b88
.L_405be8:

            ldrb w0,[x25]
            cbz w0,.L_405b88

            mov x28,x25
            b .L_405c10
.L_405bf8:

            mov x0,x26
            mov x26,x1
.L_405c00:

            ldrh w1,[sp,#156]
            strh w1,[x0]
            ldrb w0,[x28]
            cbz w0,.L_405b88
.L_405c10:

            mov x1,x28
            add x0,sp,#156
            bl chartorune

            add x28,x28,w0, sxtw
            add x1,x26,#2
            cmp x1,x21
            b.ls .L_405bf8

            mov x1,x26
            mov x0,x19
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_405d70

            ldr x21,[x19,#24]
            add x26,x0,#2
            b .L_405c00
.L_405c4c:

            add x26,sp,#160
            sxtw x2,w28
            ldrb w0,[x26,w28,sxtw]
            cmp w0,#52
            b.hi .L_405cfc
.L_405c60:

            mov w5,w28
.L_405c64:

            mov w27,#0
            b .L_405a8c
.L_405c6c:

            add w20,w27,w5
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.le .L_405cd4
.L_405c80:

            add w28,w28,w20
            cmp w28,w0
            b.ge .L_405ce8

            subs w24,w28,w23
            b.mi .L_40610c

            b.ne .L_406178

            ldrb w0,[sp,#160]
            mov w28,w23
            cmp w0,#52
            b.hi .L_4062d4
.L_405ca8:

            mov w27,#0
            str wzr,[sp,#132]
            b .L_405ac8
.L_405cb4:

            cmp w5,#1
            b.ne .L_406038

            cmp w27,#0
            ccmn w27,#4,#1,le
            b.ge .L_40636c

            mov w1,w27
            mov w28,w5
            b .L_405a88
.L_405cd4:

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
            b .L_405c80
.L_405ce8:

            mov w24,w5
            sub w27,w28,w0
            mov w5,w0
            str wzr,[sp,#132]
            b .L_405ac0
.L_405cfc:

            cmp w28,#17
            b.hi .L_405c60

            sub x2,x2,#1
            mov w3,#48
            adds x2,x26,x2
            b.lo .L_405d24

            b .L_4061f0
.L_405d18:

            strb w3,[x2],#-1
            cmp x2,x26
            b.lo .L_4061f0
.L_405d24:

            ldrb w0,[x2]
            cmp w0,#56
            b.hi .L_405d18

            add w0,w0,#1
            mov w5,w28
            strb w0,[x2]
            b .L_405c64
.L_405d40:

            cmp w27,#0
            b.le .L_406228

            sub w27,w27,#1
            mov w3,#48
            b .L_405b70
.L_405d54:

            cbnz w1,.L_405dac

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_405dac
.L_405d70:

            mov w0,#-1
            str w0,[sp,#128]
.L_405d78:

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
.L_405d9c:

.cfi_restore_state 
            add w23,w23,w1
            add w20,w20,w1
.L_405da4:

            str wzr,[sp,#136]
.L_405da8:

            cbnz w0,.L_405b3c
.L_405dac:

            ldp x0,x3,[x19,#16]
            cbz w4,.L_405dc8

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_406148
.L_405dc0:

            strb w4,[x0]
            mov x0,x1
.L_405dc8:

            add x21,sp,#160
            cmp w23,#0
            b.le .L_405e04

            nop
            nop
            nop
            nop
.L_405dd8:

            sub w23,w23,#1
            mov w28,#48
.L_405de0:

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_405e20
.L_405dec:

            strb w28,[x0]
            subs w20,w20,#1
            b.eq .L_405e48
.L_405df8:

            mov x0,x1
            cmp w23,#0
            b.gt .L_405dd8
.L_405e04:

            cmp w24,#0
            b.le .L_405e98

            add x1,x0,#1
            ldrb w28,[x21],#1
            sub w24,w24,#1
            cmp x1,x3
            b.ls .L_405dec
.L_405e20:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            bl __fmtflush

            cbz x0,.L_405d70

            ldr x3,[x19,#24]
            strb w28,[x0]
            add x1,x0,#1
            subs w20,w20,#1
            b.ne .L_405df8
.L_405e48:

            ldrb w0,[x25]
            cbz w0,.L_405df8

            mov x28,x25
            b .L_405e70
.L_405e58:

            mov x0,x1
            mov x1,x2
.L_405e60:

            ldrb w2,[x28]
            strb w2,[x0]
            ldrb w0,[x28,#1]!
            cbz w0,.L_405df8
.L_405e70:

            add x2,x1,#1
            cmp x2,x3
            b.ls .L_405e58

            mov x0,x19
            mov w2,#1
            bl __fmtflush

            cbz x0,.L_405d70

            ldr x3,[x19,#24]
            add x1,x0,#1
            b .L_405e60
.L_405e98:

            cmp w27,#0
            b.le .L_406270

            sub w27,w27,#1
            mov w28,#48
            b .L_405de0
.L_405eac:

            mov w4,#45
            b .L_405af8
.L_405eb4:

            mov w27,#0
.L_405eb8:

            cmp w20,w28
            b.ne .L_405ad4

            tbz w22,#3,.L_406030

            add w28,w6,w20
            b .L_405ad4
.L_405ecc:

            tbnz w22,#3,.L_405ac8

            cmp w20,w28
            b.gt .L_405ad4

            cmp w20,w5
            b.gt .L_406028

            b.ge .L_40635c

            add x0,sp,#160
            add x0,x0,w24, sxtw
            b .L_405f04
.L_405ef0:

            sub w24,w24,#1
            sub x0,x0,#1
            add w28,w23,w24
            cmp w28,w20
            b.le .L_405eb4
.L_405f04:

            ldurb w1,[x0,#-1]
            cmp w1,#48
            b.eq .L_405ef0

            add w28,w23,w24
            mov w27,#0
            b .L_405ac8
.L_405f1c:

            mov w4,#43
            b .L_405af8
.L_405f24:

            add x0,sp,#176
            add x5,sp,#159
            mov w2,#48
            b .L_405f40
.L_405f34:

            strb w2,[x0],#-1
            cmp x0,x5
            b.eq .L_406208
.L_405f40:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_405f34

            add w1,w1,#1
            strb w1,[x0]
.L_405f54:

            subs w25,w25,#1
            b.ne .L_405950

            b .L_405968
.L_405f60:

            str wzr,[sp,#116]
            b .L_405884
.L_405f68:

            add x5,sp,#176
            add x2,sp,#159
            mov w1,#57
            b .L_405f84
.L_405f78:

            strb w1,[x5],#-1
            cmp x5,x2
            b.eq .L_406374
.L_405f84:

            ldrb w0,[x5]
            sub w0,w0,#1
            cmp w0,#47
            b.le .L_405f78

            cmp w0,#48
            ccmp x26,x5,#0,eq
            b.ne .L_406170

            mov w6,#57
            strb w6,[x5]
            add w27,w27,#1
            mov x0,x20
            mov w1,w27
            mov w2,#0
            bl xfmtexp

            b .L_405f54
.L_405fc0:

            mov x1,x26
            add x0,sp,#192
            bl strcpy

            add x0,sp,#208
            add x6,sp,#191
            mov w2,#48
            b .L_405fe8
.L_405fdc:

            strb w2,[x0],#-1
            cmp x0,x6
            b.eq .L_4061cc
.L_405fe8:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_405fdc

            add w1,w1,#1
            strb w1,[x0]
            str w27,[sp,#120]
.L_406000:

            add x0,sp,#192
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            b.ne .L_4059c4

            add x1,sp,#192
            mov x0,x26
            bl strcpy

            ldr w27,[sp,#120]
            b .L_4059c4
.L_406028:

            sub w27,w20,w5
            mov w28,w20
.L_406030:

            add w20,w28,#1
            b .L_405ad4
.L_406038:

            ldrb w0,[sp,#161]
            cmp w0,#52
            b.hi .L_4062c4

            mov w1,#0
            mov w28,#1
.L_40604c:

            sub w0,w5,w28
            mov w5,w28
            add w27,w27,w0
            add w1,w27,w1
            cmp w1,w28
            ccmn w1,#4,#1,lt
            b.ge .L_405824

            mov w27,#0
            b .L_405a8c
.L_406070:

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __rfmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_405b3c

            b .L_405d70
.L_40608c:

            add x26,sp,#160
            sxtw x0,w28
            sub w1,w28,#1
            ldrb w2,[x26,w28,sxtw]
            cmp w2,#52
            b.ls .L_40604c

            cmp w28,#17
            b.hi .L_40604c

            sub x0,x0,#1
            mov w7,w28
            adds x0,x26,x0
            mov w28,w1
            b.hs .L_4060f4
.L_4060c0:

            mov w2,#48
            b .L_4060d4
.L_4060c8:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_4060f4
.L_4060d4:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4060c8

            add w2,w1,#1
            mov w1,w28
            mov w28,w7
            strb w2,[x0]
            b .L_40604c
.L_4060f4:

            mov w1,w28
            mov w0,#49
            add w27,w27,#1
            mov w28,w7
            strb w0,[sp,#160]
            b .L_40604c
.L_40610c:

            mov w23,w28
            mov w24,#0
            mov w27,#0
            str wzr,[sp,#132]
            b .L_405ac8
.L_406120:

            mov x0,x19
            mov w2,#2
            str w4,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_405d70

            ldr x21,[x19,#24]
            add x0,x0,#2
            ldr w4,[sp,#116]
            b .L_405b50
.L_406148:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtflush

            cbz x0,.L_405d70

            ldr x3,[x19,#24]
            add x1,x0,#1
            ldr w4,[sp,#116]
            b .L_405dc0
.L_406170:

            strb w0,[x5]
            b .L_405f54
.L_406178:

            add x26,sp,#160
            sxtw x3,w24
            ldrb w0,[x26,w24,sxtw]
            cmp w0,#52
            b.ls .L_405ca8

            cmp w24,#17
            b.hi .L_405ca8

            sub x0,x3,#1
            mov w2,#48
            adds x0,x26,x0
            b.lo .L_4061b4

            b .L_406344
.L_4061a8:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_406344
.L_4061b4:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4061a8

            add w1,w1,#1
            strb w1,[x0]
            b .L_405ca8
.L_4061cc:

            mov w6,#49
            sub w0,w27,#1
            mov w1,w0
            mov w2,#0
            str w0,[sp,#120]
            add x0,sp,#209
            strb w6,[sp,#192]
            bl xfmtexp

            b .L_406000
.L_4061f0:

            mov w0,#49
            add w1,w1,#1
            mov w5,w28
            mov w27,#0
            strb w0,[sp,#160]
            b .L_405a8c
.L_406208:

            mov w5,#49
            sub w27,w27,#1
            mov w1,w27
            mov x0,x20
            mov w2,#0
            strb w5,[sp,#160]
            bl xfmtexp

            b .L_405f54
.L_406228:

            ldr x0,[x19,#16]
            str x1,[x19,#16]
            ldr w2,[x19,#48]
            sub x0,x1,x0
            asr x0,x0,#1
            add w2,w2,w0
            ldr w0,[sp,#132]
            str w2,[x19,#48]
            cbnz w0,.L_40630c
.L_40624c:

            ldr w0,[sp,#136]
            cbz w0,.L_405d78

            tbz w22,#1,.L_405d78

            ldr w1,[sp,#136]
            mov x0,x19
            bl __rfmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_405d78
.L_406270:

            ldr x2,[x19,#16]
            str x0,[x19,#16]
            ldr w1,[x19,#48]
            sub x0,x0,x2
            add w1,w1,w0
            ldr w0,[sp,#132]
            str w1,[x19,#48]
            cbnz w0,.L_406328
.L_406290:

            ldr w0,[sp,#136]
            cbz w0,.L_405d78

            tbz w22,#1,.L_405d78

            ldr w1,[sp,#136]
            mov x0,x19
            bl __fmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_405d78
.L_4062b4:

            strb w6,[x2]
            b .L_4059b8
.L_4062bc:

            strb w2,[x20]
            b .L_405a00
.L_4062c4:

            add x26,sp,#160
            mov w7,#1
            mov x0,x26
            b .L_4060c0
.L_4062d4:

            mov w0,#49
            mov w24,#1
            strb w0,[sp,#160]
.L_4062e0:

            cbz w23,.L_4062f8

            sub w23,w23,#1
            mov w27,#0
            add w28,w24,w23
            str wzr,[sp,#132]
            b .L_405ac8
.L_4062f8:

            add w20,w20,#1
            mov w28,w24
            mov w27,#0
            str wzr,[sp,#132]
            b .L_405ac8
.L_40630c:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_40624c

            b .L_405d70
.L_406328:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_406290

            b .L_405d70
.L_406344:

            mov w0,#49
            strb w0,[sp,#160]
            add w24,w24,#1
            mov w0,#48
            strb w0,[x26,x3]
            b .L_4062e0
.L_40635c:

            mov w28,w20
            mov w27,#0
            add w20,w28,#1
            b .L_405ad4
.L_40636c:

            mov w28,w5
            b .L_405824
.L_406374:

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
            b.eq .L_4063ac

            ret 
.L_4063ac:

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
            cbz w0,.L_406410

            b.le .L_406400

            mov x0,#9218868437227405312
            cmp x1,x0
            cset w0,eq
            ret 
.L_406400:

            mov x0,#-4503599627370496
            cmp x1,x0
            cset w0,eq
            ret 
.L_406410:

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
.align 4
#-----------------------------------
.globl smprint
.type smprint, @function
#-----------------------------------
smprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-272]!
.cfi_def_cfa_offset 272
.cfi_offset 29, -272
.cfi_offset 30, -264
            mov w9,#-56
            mov w8,#-128
            mov fp,sp
            add x10,sp,#208
            add x11,sp,#272
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
            stp x1,x2,[sp,#216]
            add x1,sp,#16
            stp x3,x4,[sp,#232]
            stp x5,x6,[sp,#248]
            str x7,[sp,#264]
            bl vsmprint

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
.size smprint, . - smprint
.align 4
#-----------------------------------
.globl snprint
.type snprint, @function
#-----------------------------------
snprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-256]!
.cfi_def_cfa_offset 256
.cfi_offset 29, -256
.cfi_offset 30, -248
            mov w9,#-40
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
            stp x3,x4,[sp,#216]
            add x3,sp,#16
            stp x5,x6,[sp,#232]
            str x7,[sp,#248]
            bl vsnprint

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
.size snprint, . - snprint
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
            b .L_406568
.L_406534:

            ldrb w24,[x23,x20]
            bl __ctype_b_loc

            ldr x3,[x0]
            mov x19,x24
            ubfiz x2,x24,#1,#8
            ldrh w2,[x3,x2]
            tbz w2,#8,.L_40655c

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldr w19,[x0,x24,lsl #2]
.L_40655c:

            add x20,x20,#1
            cmp w19,w21
            b.ne .L_406588
.L_406568:

            ldrb w21,[x22,x20]
            cbnz w21,.L_406534

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
.L_406588:

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
            b.hi .L_406638
.L_4065f0:

            cmp w2,#4
            b.gt .L_406740

            cmp w2,#2
            mov w1,#2
            csel w1,w1,w2,ls
            cmp w2,#3
            mov w2,#4
            csel w2,w1,w2,lt
.L_406610:

            cmp w3,#48
            ccmp w25,#0,#0,eq
            b.ne .L_406724

            sub w5,w5,#1
            mov w25,#0
.L_406624:

            add x20,x20,#1
.L_406628:

            ldrb w3,[x20]
            sub w4,w3,#48
            cmp w4,#9
            b.ls .L_4065f0
.L_406638:

            cmp w3,#45
            b.eq .L_40684c

            b.hi .L_4066dc

            cmp w3,#32
            b.eq .L_4067c8

            b.ls .L_4067b8

            cmp w3,#43
            b.ne .L_40676c

            cbz w2,.L_406adc
.L_40665c:

            cmp w2,#5
            b.eq .L_406d68

            cmp w2,#3
            b.eq .L_4067d8

            b.le .L_4067e4
.L_406670:

            cmp w2,#6
            b.ne .L_406680

            sub x20,x20,#1
            sub x20,x20,#1
.L_406680:

            cbz x21,.L_406688

            str x20,[x21]
.L_406688:

            tbz w19,#2,.L_406860

            sxtw x0,w25
            add x1,sp,#112
            b .L_4066ac
.L_406698:

            sub x0,x0,#1
            mov x23,x1
            ldrb w2,[x1,x0]
            cmp w2,#48
            b.ne .L_406b40
.L_4066ac:

            mov w25,w0
            cmp w0,#0
            b.gt .L_406698

            b.ne .L_406b3c
.L_4066bc:

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
.L_4066dc:

.cfi_restore_state 
            and w0,w3,#4294967263
            cmp w0,#69
            b.eq .L_406760

            cmp w3,#46
            b.ne .L_40676c

            orr w19,w19,#4
            cmp w2,#1
            b.ls .L_406acc

            cmp w2,#2
            b.eq .L_406d74

            cmp w2,#3
            b.eq .L_4067d8

            mov w5,w25
.L_406710:

            b.le .L_4067e4
.L_406714:

            cmp w2,#5
            b.ne .L_406670

            sub x20,x20,#1
            b .L_406680
.L_406724:

            cmp w25,#1449
            b.gt .L_406624

            add x23,sp,#112
            add x20,x20,#1
            strb w3,[x23,w25,sxtw]
            add w25,w25,#1
            b .L_406628
.L_406740:

            sub w0,w2,#5
            cmp w0,#2
            b.hi .L_406610

            add w22,w22,w22, lsl #2
            add x20,x20,#1
            mov w2,#7
            add w22,w4,w22, lsl #1
            b .L_406628
.L_406760:

            sub w0,w2,#2
            tst w0,#4294967293
            b.eq .L_406ac0
.L_40676c:

            cmp w2,#3
            b.eq .L_4067d8

            b.gt .L_406714

            cbnz w2,.L_4067e4

            adrp x1, .L_407b90
            mov x0,x20
            add x1,x1, :lo12:.L_407b90
            bl xcmp

            cbnz w0,.L_4067ec

            cbz x21,.L_40679c

            add x20,x20,#3
            str x20,[x21]
.L_40679c:

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
.L_4067b8:

.cfi_restore_state 
            sub w3,w3,#9
            and w3,w3,#255
            cmp w3,#4
            b.hi .L_40676c
.L_4067c8:

            cbz w2,.L_406624

            cmp w2,#3
            b.ne .L_406710

            nop
            nop
            nop
            nop
.L_4067d8:

            cbz x21,.L_4066bc

            str x24,[x21]
            b .L_4066bc
.L_4067e4:

            cmp w2,#1
            b.ne .L_406680
.L_4067ec:

            adrp x1, .L_407bc0
            mov x0,x20
            add x1,x1, :lo12:.L_407bc0
            bl xcmp

            cbnz w0,.L_406a94

            cbz x21,.L_40680c

            add x20,x20,#8
            str x20,[x21]
.L_40680c:

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
.L_40684c:

.cfi_restore_state 
            cbnz w2,.L_406ab8

            orr w19,w19,#1
            add x20,x20,#1
            mov w2,#1
            b .L_406628
.L_406860:

            cbz w25,.L_4066bc

            add x23,sp,#112
            tst x19,#2
            mov w5,w25
            cneg w22,w22,ne
            add w22,w22,w5
            strb wzr,[x23,w25,sxtw]
            cmn w22,#310
            b.lt .L_406b58
.L_406884:

            cmp w22,#310
            b.gt .L_40680c

            stp x27,x28,[sp,#80]
.cfi_offset 28, -1528
.cfi_offset 27, -1536
            cmp w22,#0
            b.le .L_406dd8

            adrp x27, tab1
            add x27,x27, :lo12:tab1
            add x0,sp,#113
            mov w24,#0
            mov w21,#9
            str x0,[sp,#104]
.L_4068b0:

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
            b .L_406904
.L_4068f8:

            sub w1,w0,#48
            asr w0,w1,w26
            cbnz w0,.L_406ae8
.L_406904:

            sub w5,w25,w2
            mov x4,x2
            ldrb w3,[x2],#1
            add w0,w1,w1, lsl #2
            add w0,w3,w0, lsl #1
            cbnz w3,.L_4068f8

            mov w25,w5
            mov x2,x23
            cbz w1,.L_406970
.L_406928:

            mov w0,w1
            add w1,w1,w1, lsl #2
            lsl w1,w1,#1
            asr w2,w1,w26
            cbz w2,.L_406928

            mov x25,x23
            mov x2,x23
            nop
            nop
            nop
            nop
.L_406948:

            add w0,w0,w0, lsl #2
            lsl w0,w0,#1
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            subs w0,w0,w1
            b.ne .L_406948

            sub w25,w5,w25
            add w25,w25,w2
.L_406970:

            strb wzr,[x2]
            cmp w22,#0
            b.gt .L_4068b0
.L_40697c:

            adrp x28, tab1
            add x28,x28, :lo12:tab1
            mov w27,#26215
            add x28,x28,#160
            movk w27,#26214,lsl #16
            mov w26,#-10
.L_406994:

            tbnz w22,#31,.L_406a7c
.L_406998:

            ldrb w4,[sp,#112]
            cmp w4,#52
            b.hi .L_406b68
.L_4069a4:

            neg w21,w22
            sxtw x20,w21
            sbfiz x0,x21,#4,#32
.L_4069b0:

            add x2,x28,x0
            ldr w5,[x28,x0]
            mov x0,x23
            str w5,[sp,#96]
            ldr x1,[x2,#8]
            ldrsw x2,[x2,#4]
            bl memcmp

            ldr w5,[sp,#96]
            tbz w0,#31,.L_4069dc

            sub w21,w21,#1
            sxtw x20,w21
.L_4069dc:

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
            b.hi .L_406994

            nop
            nop
            nop
            nop
.L_406a18:

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
            b.ne .L_406a18

            sub x3,x3,x8
            cbz w1,.L_406994

            nop
            nop
            nop
            nop
.L_406a58:

            smull x2,w1,w27
            mov w0,w1
            asr x2,x2,#34
            sub w1,w2,w1, asr #31
            madd w0,w1,w26,w0
            add w0,w0,#48
            strb w0,[x3,#-1]!
            cbnz w1,.L_406a58

            tbz w22,#31,.L_406998
.L_406a7c:

            cmn w22,#9
            b.ge .L_4069a4

            mov x20,#9
            mov x0,#144
            mov w21,w20
            b .L_4069b0
.L_406a94:

.cfi_restore 27
.cfi_restore 28
            adrp x1, .L_407ba0
            mov x0,x20
            add x1,x1, :lo12:.L_407ba0
            bl xcmp

            cbnz w0,.L_4067d8

            cbz x21,.L_40680c

            add x20,x20,#3
            str x20,[x21]
            b .L_40680c
.L_406ab8:

            orr w19,w19,#2
            b .L_40665c
.L_406ac0:

            add x20,x20,#1
            mov w2,#5
            b .L_406628
.L_406acc:

            mov w5,w25
            add x20,x20,#1
            mov w2,#3
            b .L_406628
.L_406adc:

            add x20,x20,#1
            mov w2,#1
            b .L_406628
.L_406ae8:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add w3,w0,#48
            strb w3,[sp,#112]
            lsl w0,w0,w26
            add x4,x4,#2
            ldrb w3,[x2]
            sub w0,w1,w0
            ldr x2,[sp,#104]
            cbz w3,.L_406b30
.L_406b08:

            add w0,w0,w0, lsl #2
            add w0,w3,w0, lsl #1
            sub w0,w0,#48
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            sub w0,w0,w1
            ldrb w3,[x4],#1
            cbnz w3,.L_406b08
.L_406b30:

            cbz w0,.L_406de8

            mov x25,x2
            b .L_406948
.L_406b3c:

.cfi_restore 27
.cfi_restore 28
            add x23,sp,#112
.L_406b40:

            tst x19,#2
            strb wzr,[x23,w25,sxtw]
            cneg w22,w22,ne
            add w22,w22,w5
            cmn w22,#310
            b.ge .L_406884
.L_406b58:

            bl __errno_location

            mov w1,#34
            str w1,[x0]
            b .L_4066bc
.L_406b68:

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
.L_406b88:

            ldrb w3,[x20]
            add x6,x0,x0, lsl #2
            add x5,x2,x2, lsl #2
            add x20,x20,#1
            sub w1,w3,#48
            sxtw x1,w1
            cbz w3,.L_406da8

            add x0,x1,x6, lsl #1
            lsl x2,x5,#1
            mov w7,#1
            cmp x8,x20
            b.ne .L_406b88
.L_406bb8:

            ucvtf d1,x2
.L_406bbc:

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
            b.ge .L_406bec

            fcvtzu x13,d0
.L_406bec:

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
            b.ge .L_406c20

            fcvtzu x12,d0
.L_406c20:

            mov x11,#268435455
            mov x17,x13
            mov x10,x11
            add x16,x11,#1
            add x9,x13,x12
            mov x15,#0
.L_406c38:

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
.L_406c64:

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
            cbnz w5,.L_406d24

            cmp w0,#48
            b.gt .L_406db8

            tst x3,#268435455
            b.ne .L_406c64

            and w0,w14,#7
            mov w1,w14
            cmp w0,#4
            b.eq .L_406dcc
.L_406cb0:

            sub x0,x14,x0
            tbnz w1,#2,.L_406d84
.L_406cb8:

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
            b.ne .L_406d04

            str d0,[sp,#96]
            bl __errno_location

            ldr d0,[sp,#96]
            mov w1,#34
            str w1,[x0]
.L_406d04:

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
.L_406d24:

.cfi_restore_state 
            cmp w0,w5
            b.lt .L_406d3c

            b.gt .L_406db8

            ldrb w5,[x7,#1]
            add x7,x7,#1
            b .L_406c64
.L_406d3c:

            cmp x6,x13
            b.eq .L_406d94

            mov x17,x6
            add x9,x6,x12
            mov x13,x6
            cmp x14,x15
            b.eq .L_406c38
.L_406d58:

            mov x15,x14
            mov x13,x6
            add x10,x11,x14
            b .L_406c38
.L_406d68:

.cfi_restore 27
.cfi_restore 28
            add x20,x20,#1
            mov w2,#6
            b .L_406628
.L_406d74:

            mov w5,w25
            add x20,x20,#1
            mov w2,#4
            b .L_406628
.L_406d84:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add x1,x0,#8
            and x0,x1,#268435455
            add x6,x6,x1, lsr #28
            b .L_406cb8
.L_406d94:

            cmp x14,x15
            b.ne .L_406d58
.L_406d9c:

            mov w1,w14
            and w0,w14,#7
            b .L_406cb0
.L_406da8:

            cbnz w7,.L_406bb8

            mov x0,x9
            fmov d1,#1.000000000000000000e+01
            b .L_406bbc
.L_406db8:

            mov x11,x14
            mov x12,x6
            add x9,x17,x6
            add x10,x14,x15
            b .L_406c38
.L_406dcc:

            tbnz w8,#3,.L_406cb0

            sub x14,x14,#4
            b .L_406d9c
.L_406dd8:

            add x0,sp,#113
            mov w24,#0
            str x0,[sp,#104]
            b .L_40697c
.L_406de8:

            mov w25,w5
            b .L_406970
.cfi_endproc 
.size fmtstrtod, . - fmtstrtod
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
            b.ls .L_406e64

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
.L_406e64:

            mov x0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size vseprint, . - vseprint
#-----------------------------------
.type fmtStrFlush, @function
#-----------------------------------
fmtStrFlush:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            str x21,[sp,#32]
.cfi_offset 21, -16
            ldr x21,[x0,#8]
            cbz x21,.L_406ef0

            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            mov x19,x0
            mov x0,x21
            ldr x20,[x19,#40]
            sbfiz x20,x20,#1,#31
            mov x1,x20
            bl realloc

            str x0,[x19,#8]
            mov x2,x0
            cbz x0,.L_406edc

            ldr x1,[x19,#16]
            sub x3,x20,#1
            add x3,x0,x3
            str x20,[x19,#40]
            sub x1,x1,x21
            mov w0,#1
            add x2,x2,x1
            stp x2,x3,[x19,#16]
            ldp x19,x20,[sp,#16]
.L_406ed0:

.cfi_restore 20
.cfi_restore 19
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_def_cfa_offset 0
            ret 
.L_406edc:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 29, -48
.cfi_offset 30, -40
            stp xzr,xzr,[x19,#16]
            mov x0,x21
            str xzr,[x19,#40]
            bl free

            ldp x19,x20,[sp,#16]
.L_406ef0:

.cfi_restore 20
.cfi_restore 19
            mov w0,#0
            b .L_406ed0
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size fmtStrFlush, . - fmtStrFlush
.align 4
#-----------------------------------
.globl fmtstrinit
.type fmtstrinit, @function
#-----------------------------------
fmtstrinit:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            movi v0.4s,#0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            mov x0,#32
            str xzr,[x19,#128]
            stp q0,q0,[x19]
            stp q0,q0,[x19,#32]
            stp q0,q0,[x19,#64]
            stp q0,q0,[x19,#96]
            bl malloc

            str x0,[x19,#8]
            cbz x0,.L_406f74

            add x2,x0,#31
            mov x4,#32
            adrp x1, fmtStrFlush
            add x1,x1, :lo12:fmtStrFlush
            stp x0,x2,[x19,#16]
            mov x3,#0
            mov x0,x19
            stp x1,x4,[x19,#32]
            mov x2,#0
            mov x1,#0
            bl fmtlocaleinit

            mov w0,#0
.L_406f68:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_406f74:

.cfi_restore_state 
            mov w0,#-1
            b .L_406f68
.cfi_endproc 

            nop
            nop
            nop
            nop
.size fmtstrinit, . - fmtstrinit
.align 4
#-----------------------------------
.globl vsmprint
.type vsmprint, @function
#-----------------------------------
vsmprint:

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
            mov x20,x0
            mov x19,x1
            add x0,sp,#40
            bl fmtstrinit

            tbnz w0,#31,.L_406fd4

            ldp q0,q1,[x19]
            mov x1,x20
            add x0,sp,#40
            stp q0,q1,[sp,#96]
            bl dofmt

            tbnz w0,#31,.L_406fcc

            add x0,sp,#40
            bl fmtstrflush
.L_406fc0:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#176
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406fcc:

.cfi_restore_state 
            ldr x0,[sp,#48]
            bl free
.L_406fd4:

            mov x0,#0
            b .L_406fc0
.cfi_endproc 

            nop
            nop
            nop
            nop
.size vsmprint, . - vsmprint
.align 4
#-----------------------------------
.globl vsnprint
.type vsnprint, @function
#-----------------------------------
vsnprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp w1,#0
            b.le .L_407060

            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            sxtw x4,w1
            sub x4,x4,#1
            mov fp,sp
            ldp q0,q1,[x3]
            add x4,x0,x4
            mov x3,#0
            stp x19,x20,[sp,#16]
.cfi_offset 19, -160
.cfi_offset 20, -152
            mov x20,x2
            mov x2,#0
            mov x19,x0
            mov x1,#0
            add x0,sp,#40
            strb wzr,[sp,#40]
            stp x19,x19,[sp,#48]
            stp x4,xzr,[sp,#64]
            str xzr,[sp,#80]
            str wzr,[sp,#88]
            stp q0,q1,[sp,#96]
            bl fmtlocaleinit

            mov x1,x20
            add x0,sp,#40
            bl dofmt

            ldr x0,[sp,#56]
            strb wzr,[x0]
            ldr x0,[sp,#56]
            sub w0,w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#176
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407060:

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
.size vsnprint, . - vsnprint
.align 4
#-----------------------------------
.globl _p9dir
.type _p9dir, @function
#-----------------------------------
_p9dir:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -144
.cfi_offset 20, -136
            mov x19,x3
            stp x21,x22,[sp,#32]
.cfi_offset 21, -128
.cfi_offset 22, -120
            mov x21,x1
            mov x22,x4
            stp x23,x24,[sp,#48]
.cfi_offset 23, -112
.cfi_offset 24, -104
            mov x23,x2
            mov x24,x5
            stp x25,x26,[sp,#64]
.cfi_offset 25, -96
.cfi_offset 26, -88
            mov x25,x0
            stp x27,x28,[sp,#80]
.cfi_offset 27, -80
.cfi_offset 28, -72
            cbz x3,.L_4070c0

            movi v0.4s,#0
            str xzr,[x3,#112]
            stp q0,q0,[x3]
            stp q0,q0,[x3,#32]
            stp q0,q0,[x3,#64]
            str q0,[x3,#96]
.L_4070c0:

            mov x0,x23
            mov w1,#47
            bl strrchr

            cbz x0,.L_4070d8

            ldrb w1,[x0,#1]
            cbnz w1,.L_4072ec
.L_4070d8:

            ldrb w0,[x23]
            mov x20,x23
            cmp w0,#47
            b.eq .L_407428
.L_4070e8:

            cbnz w0,.L_4072f8

            adrp x20, .L_407ca8
            add x20,x20, :lo12:.L_407ca8
            mov x1,#1
.L_4070f8:

            cbz x19,.L_407128

            ldr x0,[x22]
            add x1,x1,#1
            add x1,x0,x1
            cmp x24,x1
            b.hs .L_4073c8

            adrp x0, .L_407cb0
            add x0,x0, :lo12:.L_407cb0
            str x0,[x19,#64]
            mov x0,x20
            bl strlen

            mov x1,x0
.L_407128:

            adrp x26, p.3
            add w20,w1,#3
            ldr w3,[x21,#24]
            add x28,x26, :lo12:p.3
            ldr x1,[x26,:lo12:p.3]
            cbz x1,.L_40714c

            ldr w0,[x28,#8]
            cmp w0,w3
            b.eq .L_407354
.L_40714c:

            adrp x0, _p9usepwlibrary
            ldr w0,[x0,:lo12:_p9usepwlibrary]
            cbnz w0,.L_40736c
.L_407158:

            add x27,sp,#136
            add x0,sp,#136
            adrp x2, .L_407b28
            mov w1,#20
            add x2,x2, :lo12:.L_407b28
            bl snprint
.L_407170:

            mov x0,x27
            bl strlen

            mov x26,x0
            cbz x19,.L_4071a0

            add x2,x0,#1
            ldr x0,[x22]
            add x1,x0,x2
            cmp x24,x1
            b.hs .L_407400

            adrp x0, .L_407cb0
            add x0,x0, :lo12:.L_407cb0
            str x0,[x19,#72]
.L_4071a0:

            ldr x1,[x28,#16]
            ldr w3,[x21,#28]
            cbz x1,.L_4071b8

            ldr w0,[x28,#24]
            cmp w0,w3
            b.eq .L_407308
.L_4071b8:

            adrp x0, _p9usepwlibrary
            ldr w0,[x0,:lo12:_p9usepwlibrary]
            cbnz w0,.L_407320
.L_4071c4:

            add x27,sp,#136
            add x0,sp,#136
            adrp x2, .L_407b28
            mov w1,#20
            add x2,x2, :lo12:.L_407b28
            bl snprint
.L_4071dc:

            mov x0,x27
            bl strlen

            add w26,w0,w26
            add w26,w26,w20
            cbz x19,.L_4072cc

            add x2,x0,#1
            ldr x0,[x22]
            add x1,x0,x2
            cmp x24,x1
            b.hs .L_4073a0

            adrp x0, .L_407cb0
            add x0,x0, :lo12:.L_407cb0
            str x0,[x19,#80]
.L_407210:

            ldp x1,x4,[x21]
            mov w3,#77
            ldr x2,[x19,#16]
            adrp x0, .L_407c90
            add x0,x0, :lo12:.L_407c90
            strh w3,[x19]
            ldr x3,[x21,#88]
            orr x1,x4,x1, lsl #32
            str x1,[x19,#8]
            str x0,[x19,#88]
            cbnz x2,.L_407248

            ldr x0,[x21,#104]
            add x0,x0,x3
            str x0,[x19,#16]
.L_407248:

            ldr w1,[x21,#16]
            ldr w2,[x25,#16]
            ldr x5,[x21,#48]
            and x0,x1,#511
            ldr x6,[x21,#72]
            and w4,w2,#61440
            stp x0,x6,[x19,#32]
            and w0,w1,#511
            stp x3,x5,[x19,#48]
            cmp w4,#10,lsl #12
            b.eq .L_4072bc

            and w1,w1,#61440
            cmp w1,#4,lsl #12
            b.eq .L_407494

            cmp w1,#1,lsl #12
            b.eq .L_4074ac

            cmp w1,#12,lsl #12
            b.eq .L_407434

            cmp w1,#6,lsl #12
            b.eq .L_4074b8

            cmp w1,#2,lsl #12
            b.ne .L_407440

            ldr x1,[x21,#32]
            orr w0,w0,#8388608
            mov x3,#6488064
            str x0,[x19,#32]
            orr x1,x1,x3
            str x1,[x19,#8]
            b .L_407440
.L_4072bc:

            ldr x1,[x25,#48]
            orr w0,w0,#33554432
            str x0,[x19,#32]
            str x1,[x19,#56]
.L_4072cc:

            ldp x19,x20,[sp,#16]
            mov w0,w26
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
.L_4072ec:

.cfi_restore_state 
            add x20,x0,#1
            cmp w1,#47
            b.eq .L_407428
.L_4072f8:

            mov x0,x20
            bl strlen

            mov x1,x0
            b .L_4070f8
.L_407308:

            ldr w2,[x1,#16]
            cmp w2,w0
            b.eq .L_407340

            adrp x2, _p9usepwlibrary
            ldr w2,[x2,:lo12:_p9usepwlibrary]
            cbz w2,.L_407340
.L_407320:

            mov w0,w3
            bl getgrgid

            ldr w3,[x21,#28]
            mov x1,x0
            str x0,[x28,#16]
            str w3,[x28,#24]
            cbz x0,.L_4071c4

            mov w0,w3
.L_407340:

            ldr w2,[x1,#16]
            cmp w2,w0
            b.ne .L_4071c4

            ldr x27,[x1]
            b .L_4071dc
.L_407354:

            ldr w2,[x1,#16]
            cmp w2,w0
            b.eq .L_40738c

            adrp x2, _p9usepwlibrary
            ldr w2,[x2,:lo12:_p9usepwlibrary]
            cbz w2,.L_40738c
.L_40736c:

            mov w0,w3
            bl getpwuid

            ldr w3,[x21,#24]
            mov x1,x0
            str x0,[x26,:lo12:p.3]
            str w3,[x28,#8]
            cbz x0,.L_407158

            mov w0,w3
.L_40738c:

            ldr w2,[x1,#16]
            cmp w2,w0
            b.ne .L_407158

            ldr x27,[x1]
            b .L_407170
.L_4073a0:

            mov x1,x27
            bl memcpy

            ldr x20,[x22]
            str x20,[x19,#80]
            mov x0,x20
            bl strlen

            add x0,x0,#1
            add x20,x20,x0
            str x20,[x22]
            b .L_407210
.L_4073c8:

            mov x1,x20
            bl strcpy

            ldr x26,[x22]
            str x26,[x19,#64]
            mov x0,x26
            bl strlen

            mov x1,x0
            mov x0,x20
            add x1,x1,#1
            add x26,x26,x1
            str x26,[x22]
            bl strlen

            mov x1,x0
            b .L_407128
.L_407400:

            mov x1,x27
            bl memcpy

            ldr x27,[x22]
            str x27,[x19,#72]
            mov x0,x27
            bl strlen

            add x0,x0,#1
            add x27,x27,x0
            str x27,[x22]
            b .L_4071a0
.L_407428:

            ldrb w0,[x20,#1]
            add x20,x20,#1
            b .L_4070e8
.L_407434:

            orr w0,w0,#1048576
            str x0,[x19,#32]
            nop
            nop
            nop
            nop
.L_407440:

            mov w0,#45056
            and w2,w2,w0
            cmp w2,#2,lsl #12
            b.ne .L_4072cc

            mov x0,x23
            mov w1,#0
            bl open64

            mov w20,w0
            tbnz w0,#31,.L_4072cc

            mov x1,#4722
            add x2,sp,#104
            movk x1,#32776,lsl #16
            stp xzr,xzr,[sp,#104]
            stp xzr,xzr,[sp,#120]
            bl ioctl

            tbnz w0,#31,.L_4074d4

            ldr x1,[sp,#104]
.L_407484:

            str x1,[x19,#56]
            mov w0,w20
            bl close

            b .L_4072cc
.L_407494:

            orr w0,w0,#2147483648
            mov w1,#-128
            strb w1,[x19,#24]
            str x0,[x19,#32]
            str xzr,[x19,#56]
            b .L_407440
.L_4074ac:

            orr w0,w0,#2097152
            str x0,[x19,#32]
            b .L_407440
.L_4074b8:

            ldr x1,[x21,#32]
            orr w0,w0,#8388608
            mov x3,#6422528
            str x0,[x19,#32]
            orr x1,x1,x3
            str x1,[x19,#8]
            b .L_407440
.L_4074d4:

            add x2,sp,#112
            mov w0,w20
            mov x1,#4704
            bl ioctl

            tbnz w0,#31,.L_4074f4

            ldr x1,[sp,#112]
            lsl x1,x1,#9
            b .L_407484
.L_4074f4:

            mov x1,#769
            add x2,sp,#120
            mov w0,w20
            bl ioctl

            mov x1,#0
            tbnz w0,#31,.L_407484

            ldrb w1,[sp,#120]
            ldrb w2,[sp,#121]
            ldrh w0,[sp,#122]
            umull x1,w1,w2
            mul x1,x1,x0
            lsl x1,x1,#9
            b .L_407484
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size _p9dir, . - _p9dir
.align 4
#-----------------------------------
.globl fmtstrflush
.type fmtstrflush, @function
#-----------------------------------
fmtstrflush:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,x0
            ldr x0,[x0,#8]
            cbz x0,.L_40754c

            ldr x0,[x1,#16]
            strb wzr,[x0]
            ldr x0,[x1,#8]
            str x0,[x1,#16]
.L_40754c:

            ret 
.cfi_endproc 
.size fmtstrflush, . - fmtstrflush
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
            b.eq .L_4076b8

            mov x7,#-15360
            add x3,x3,x7
            cmp x3,#2046
            b.le .L_407600

            ands x4,x4,#12582912
            b.eq .L_4076a4

            cmp x4,#1024,lsl #12
            b.eq .L_407858

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_4076a4
.L_4075c8:

            cmp x4,#1024,lsl #12
            b.eq .L_407884

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_4076a4

            mov x19,#9218868437227405311
            mov w0,#20
            orr x19,x19,x5, lsl #63
.L_4075ec:

            bl __sfp_handle_exceptions
.L_4075f0:

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_407600:

.cfi_restore_state 
            cmp x3,#0
            b.le .L_407758

            cmp xzr,x2, lsl #7
            mov w2,#0
            cset x7,ne
            orr x1,x7,x1, lsr #60
            orr x1,x1,x0, lsl #4
.L_40761c:

            cmp x1,#0
            cset w0,ne
            and w0,w2,w0
            tst x1,#7
            b.eq .L_4078e4

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_407680

            cmp x4,#2048,lsl #12
            b.eq .L_4077e0

            cbnz x4,.L_4077d4

            and x2,x1,#15
            cmp x2,#4
            b.ne .L_4077a4

            ubfx x1,x1,#3,#52
            and w3,w3,#2047
            mov x2,#0
            cbz w0,.L_4078ac

            bfxil x2,x1,#0,#52
            mov w0,#24
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_407680:

            cbnz x5,.L_4077f8
.L_407684:

            add x1,x1,#8
            and x2,x1,#36028797018963968
            cbnz w0,.L_4077b0
.L_407690:

            cbz x2,.L_4077fc

            add x2,x3,#1
            cmp x3,#2046
            b.ne .L_4078c8

            cbnz x4,.L_4075c8
.L_4076a4:

            lsl x19,x5,#63
            mov w0,#20
            orr x19,x19,#9218868437227405312
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_4076b8:

            orr x2,x0,x1
            cbnz x3,.L_4076fc

            lsl x19,x5,#63
            cbz x2,.L_4075f0
.L_4076c8:

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_40786c

            cmp x4,#2048,lsl #12
            b.eq .L_407844

            cmp x4,#0
            mov x0,#5
            csinc x1,x0,xzr,eq
            mov x8,#0
.L_4076ec:

            ubfx x1,x1,#3,#52
            and w8,w8,#2047
            mov w0,#24
            b .L_4077c4
.L_4076fc:

            cbz x2,.L_407740

            mov x2,#32767
            extr x1,x0,x1,#60
            lsr x0,x0,#50
            cmp x3,x2
            lsr x1,x1,#3
            eor w0,w0,#1
            orr x1,x1,#2251799813685248
            csel w0,w0,wzr,eq
            mov w19,#2047
.L_407724:

            orr x19,x1,x19, lsl #52
            orr x19,x19,x5, lsl #63
            cbnz w0,.L_4075ec

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_407740:

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
.L_407758:

.cfi_restore_state 
            cmn x3,#52
            b.lt .L_4076c8

            mov x7,#61
            sub x8,x7,x3
            orr x0,x0,#2251799813685248
            cmp x8,#63
            b.gt .L_40780c

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
            b .L_40761c
.L_4077a4:

            add x1,x1,#4
            and x2,x1,#36028797018963968
            cbz w0,.L_407690
.L_4077b0:

            cbz x2,.L_4077d8

            add x8,x3,#1
            mov x1,#0
            and w8,w8,#2047
            mov w0,#24
.L_4077c4:

            orr x8,x1,x8, lsl #52
            orr x19,x8,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_4077d4:

            cbz w0,.L_4077fc
.L_4077d8:

            mov x8,x3
            b .L_4076ec
.L_4077e0:

            cbnz x5,.L_407684

            cbz w0,.L_4077fc

            mov x8,x3
.L_4077ec:

            mov x3,x8
            mov x8,x3
            b .L_4076ec
.L_4077f8:

            cbnz w0,.L_4077d8
.L_4077fc:

            ubfx x1,x1,#3,#52
            and w8,w3,#2047
            mov w0,#16
            b .L_4077c4
.L_40780c:

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
            b .L_40761c
.L_407844:

            mov x1,#1
            cbz x5,.L_4077ec

            mov x8,#0
            mov x1,#9
            b .L_4076ec
.L_407858:

            cbnz x5,.L_407884

            mov x19,#9218868437227405312
            mov w0,#20
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_40786c:

            mov x1,#9
            cbz x5,.L_4076ec

            mov x3,#0
            mov x1,#1
            mov x8,x3
            b .L_4076ec
.L_407884:

            cmp x5,#0
            mov x0,#-4503599627370497
            mov x1,#9218868437227405312
            fmov d0,x0
            fmov d1,x1
            mov w0,#20
            fcsel d0,d0,d1,ne
            fmov x19,d0
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_4078ac:

            bfxil x2,x1,#0,#52
            mov w0,#16
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_4078c8:

            mov x3,#2301339409586323455
            mov w0,#16
            and x1,x3,x1, lsr #3
            orr x2,x1,x2, lsl #52
            orr x19,x2,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_4075f0
.L_4078e4:

            ubfx x1,x1,#3,#52
            and w19,w3,#2047
            cbnz w0,.L_407908

            mov x2,#0
            bfxil x2,x1,#0,#52
            bfi x2,x19,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            b .L_4075f0
.L_407908:

            ubfx w0,w4,#11,#1
            lsl w0,w0,#3
            b .L_407724
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
            tbz w0,#0,.L_407930

            movi v1.2s,#0
            fdiv s0,s1,s1
            mrs x1,fpsr
.L_407930:

            tbz w0,#1,.L_407944

            fmov s1,#1.000000000000000000e+00
            movi v2.2s,#0
            fdiv s0,s1,s2
            mrs x1,fpsr
.L_407944:

            tbz w0,#2,.L_407964

            mov w2,#50606
            mov w1,#2139095039
            movk w2,#29853,lsl #16
            fmov s1,w1
            fmov s2,w2
            fadd s0,s1,s2
            mrs x1,fpsr
.L_407964:

            tbz w0,#3,.L_407974

            movi v1.2s,#128,lsl #16
            fmul s0,s1,s1
            mrs x1,fpsr
.L_407974:

            tbz w0,#4,.L_40798c

            mov w0,#2139095039
            fmov s2,#1.000000000000000000e+00
            fmov s1,w0
            fsub s0,s1,s2
            mrs x0,fpsr
.L_40798c:

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
.L_40799c:

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
.L_4079b0:
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
.L_4079b8:
          .string "usage: date [-un] [seconds]\n"
          .zero 3
.L_4079d8:
          .string "usage"
          .zero 2
.L_4079e0:
          .string "%ld\n"
          .zero 3
.L_4079e8:
          .string "%s"
          .zero 5
.L_4079f0:
          .string "SunMonTueWedThuFriSat"
          .zero 2
.L_407a08:
          .string "JanFebMarAprMayJunJulAugSepOctNovDec"
          .zero 3
.L_407a30:
          .ascii "Thu Jan 01 00:"
          .string "00:00 GMT 1970\n"
          .zero 2
.L_407a50:
          .string "main"
          .zero 3
.L_407a58:
          .string "/etc/localtime"
          .zero 1
.L_407a68:
          .string "timezone"
          .zero 7
.L_407a78:
          .string "TZif"
          .zero 3
.L_407a80:
          .string "zoneinfo.c"
          .zero 5
.L_407a90:
          .string "i<z.typecnt"
          .zero 4
.L_407aa0:
          .string "p[5]<z.charcnt"
          .zero 1
.L_407ab0:
          .string "%ld\t%d\t%d\t%s\n"
          .zero 2
.L_407ac0:
          .ascii "<"
          .string "nil>"
          .zero 2
.L_407ac8:
          .string "0123456789abcdef"
          .zero 7
.L_407ae0:
          .string ":"
          .zero 6
.L_407ae8:
          .string "0123456789ABCDEF"
          .zero 7
.L_407b00:
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407b08:
          .string "."
          .zero 6
.L_407b10:
          .string ","
          .zero 6
.L_407b18:
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_407b20:
          .ascii "/dev/fd/"
.L_407b28:
          .string "%d"
          .zero 5
.L_407b30:
          .ascii "interrup"
          .string "ted"
          .zero 4
.L_407b40:
          .string "%s=%s"
          .zero 2
.L_407b48:
          .string "mode 0x%x not supported"
.L_407b60:
          .string "lock: %r"
          .zero 7
.L_407b70:
          .string "fmt/fltfmt.c"
          .zero 3
.L_407b80:
          .string "realchr != 'g'"
          .zero 1
.L_407b90:
          .string "nan"
          .zero 4
.L_407b98:
          .string "NAN"
          .zero 4
.L_407ba0:
          .string "inf"
          .zero 4
.L_407ba8:
          .string "INF"
          .zero 4
.L_407bb0:
          .string "-inf"
          .zero 3
.L_407bb8:
          .string "-INF"
          .zero 3
.L_407bc0:
          .string "infinity"
          .zero 7
.L_407bd0:
          .string "15625"
          .zero 2
.L_407bd8:
          .string "1953125"
.L_407be0:
          .string "1220703125"
          .zero 5
.L_407bf0:
          .string "152587890625"
          .zero 3
.L_407c00:
          .string "19073486328125"
          .zero 1
.L_407c10:
          .string "11920928955078125"
          .zero 6
.L_407c28:
          .string "1490116119384765625"
          .zero 4
.L_407c40:
          .ascii "7450580596923828"
.L_407c50:
          .string "125"
          .zero 4
.L_407c58:
          .string "63"
          .zero 5
.L_407c60:
          .string "511"
          .zero 4
.L_407c68:
          .string "8191"
          .zero 3
.L_407c70:
          .string "65535"
          .zero 2
.L_407c78:
          .string "524287"
          .zero 1
.L_407c80:
          .string "8388607"
.L_407c88:
          .ascii "67108863"
.L_407c90:
          .zero 1
          .zero 7
.L_407c98:
          .ascii "13421772"
.L_407ca0:
          .string "7"
          .zero 6
.L_407ca8:
          .string "/"
          .zero 6
.L_407cb0:
          .string "oops"
          .zero 3
.L_407cb8:
#-----------------------------------
.type __PRETTY_FUNCTION__.0, @object
.size __PRETTY_FUNCTION__.0, 7
#-----------------------------------
__PRETTY_FUNCTION__.0:
          .string "ttinfo"
          .zero 1
.L_407cc0:
          .byte 0x2
          .byte 0x97
          .byte 0x59
          .byte 0x84
          .byte 0x76
          .byte 0x35
          .byte 0xf2
          .byte 0x60
.L_407cc8:
          .byte 0x52
          .byte 0x7b
          .byte 0x9f
          .byte 0x50
          .byte 0x13
          .byte 0x44
          .byte 0xd3
          .byte 0x3f
#-----------------------------------
.type pows10, @object
.size pows10, 1280
#-----------------------------------
pows10:
          .zero 1
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
          .quad .L_407b90
          .quad .L_407b98
          .quad .L_407ba0
          .quad .L_407ba8
          .quad .L_407bb0
          .quad .L_407bb8
.L_408200:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x408200_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x408200_0, 9
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x408200_0:
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
.L_420160:
#-----------------------------------
.globl __dso_handle
.hidden __dso_handle
.type __dso_handle, @object
#-----------------------------------
__dso_handle:
          .zero 8
#-----------------------------------
.type dmsize, @object
.size dmsize, 12
#-----------------------------------
dmsize:
          .byte 0x1f
          .byte 0x1c
          .byte 0x1f
          .byte 0x1e
          .byte 0x1f
          .byte 0x1e
          .byte 0x1f
          .byte 0x1f
          .byte 0x1e
          .byte 0x1f
          .byte 0x1e
          .byte 0x1f
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
          .quad .L_407c90
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407ca0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c58
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c60
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c68
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c70
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c78
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c80
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c88
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c98
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
          .quad .L_407c90
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c50
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407bd0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407bd8
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407be0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407bf0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c00
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c10
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c28
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_407c40
#-----------------------------------
.globl _p9usepwlibrary
.type _p9usepwlibrary, @object
.size _p9usepwlibrary, 4
#-----------------------------------
_p9usepwlibrary:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
#-----------------------------------
.globl _edata
.type _edata, @notype
#-----------------------------------
_edata:
.L_4204ac:
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
          .zero 4
#-----------------------------------
.globl nflg
.type nflg, @object
.size nflg, 4
#-----------------------------------
nflg:
          .zero 4
#-----------------------------------
.globl uflg
.type uflg, @object
.size uflg, 4
#-----------------------------------
uflg:
          .zero 8
#-----------------------------------
.globl argv0
.type argv0, @object
.size argv0, 8
#-----------------------------------
argv0:
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
.type xtime.1, @object
.size xtime.1, 40
#-----------------------------------
xtime.1:
          .zero 48
#-----------------------------------
.type cbuf.0, @object
.size cbuf.0, 30
#-----------------------------------
cbuf.0:
          .zero 32
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
.type z, @object
.size z, 48
#-----------------------------------
z:
          .zero 48
#-----------------------------------
.type zonefile, @object
.size zonefile, 8
#-----------------------------------
zonefile:
          .zero 8
#-----------------------------------
.type tzdata, @object
.size tzdata, 8
#-----------------------------------
tzdata:
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
          .zero 16
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
.type p.3, @object
.size p.3, 8
#-----------------------------------
p.3:
          .zero 8
#-----------------------------------
.type uid.2, @object
.size uid.2, 4
#-----------------------------------
uid.2:
          .zero 8
#-----------------------------------
.type g.1, @object
.size g.1, 8
#-----------------------------------
g.1:
          .zero 8
#-----------------------------------
.type gid.0, @object
.size gid.0, 4
#-----------------------------------
gid.0:
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
.L_420c90:
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
.symver fstat64,fstat64@GLIBC_2.33
.globl fstat64
.type fstat64, @function
#-----------------------------------
#-----------------------------------
.symver getenv,getenv@GLIBC_2.17
.globl getenv
.type getenv, @function
#-----------------------------------
#-----------------------------------
.symver getgrgid,getgrgid@GLIBC_2.17
.globl getgrgid
.type getgrgid, @function
#-----------------------------------
#-----------------------------------
.symver getpid,getpid@GLIBC_2.17
.globl getpid
.type getpid, @function
#-----------------------------------
#-----------------------------------
.symver getpwuid,getpwuid@GLIBC_2.17
.globl getpwuid
.type getpwuid, @function
#-----------------------------------
#-----------------------------------
.symver getrusage,getrusage@GLIBC_2.17
.globl getrusage
.type getrusage, @function
#-----------------------------------
#-----------------------------------
.symver gettimeofday,gettimeofday@GLIBC_2.17
.globl gettimeofday
.type gettimeofday, @function
#-----------------------------------
#-----------------------------------
.symver ioctl,ioctl@GLIBC_2.17
.globl ioctl
.type ioctl, @function
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
.symver memcpy,memcpy@GLIBC_2.17
.globl memcpy
.type memcpy, @function
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
.symver open64,open64@GLIBC_2.17
.globl open64
.type open64, @function
#-----------------------------------
#-----------------------------------
.symver putenv,putenv@GLIBC_2.17
.globl putenv
.type putenv, @function
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
.symver strtoul,strtoul@GLIBC_2.17
.globl strtoul
.type strtoul, @function
#-----------------------------------
#-----------------------------------
.symver time,time@GLIBC_2.17
.globl time
.type time, @function
#-----------------------------------
#-----------------------------------
.symver write,write@GLIBC_2.17
.globl write
.type write, @function
#-----------------------------------
