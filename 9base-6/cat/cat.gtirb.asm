[INFO]  Reading GTIRB file:     "basilbench/9base-6/cat/cat.gtirb"
[INFO]  Module cat has integral symbols; attempting to assign referents...
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
.L_400b70:

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

            adrp x0, .L_405c88
            add x0,x0, :lo12:.L_405c88
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
            cbz x0,.L_400dd4

            b __gmon_start__
.L_400dd4:

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
            b.eq .L_400e0c

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_400e0c

            mov x16,x1
            br x16
.L_400e0c:

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
            cbz x1,.L_400e48

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_400e48

            mov x16,x2
            br x16
.L_400e48:

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
            tbnz w0,#0,.L_400e74

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_400e74:

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
.globl cat
.type cat, @function
#-----------------------------------
cat:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x12,#8240
            sub sp,sp,x12
.cfi_def_cfa_offset 8240
            stp fp,lr,[sp]
.cfi_offset 29, -8240
.cfi_offset 30, -8232
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -8224
.cfi_offset 20, -8216
            mov w20,w0
            str x21,[sp,#32]
.cfi_offset 21, -8208
            mov x21,x1
            b .L_400ec0
.L_400eb4:

            bl p9write

            cmp x0,x19
            b.ne .L_400f04
.L_400ec0:

            add x1,sp,#48
            mov x2,#8192
            mov w0,w20
            bl read

            mov x19,x0
            add x1,sp,#48
            mov x2,x19
            mov w0,#1
            cmp x19,#0
            b.gt .L_400eb4

            b.ne .L_400f18

            ldp fp,lr,[sp]
            mov x12,#8240
            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            add sp,sp,x12
.cfi_remember_state 
.cfi_restore 29
.cfi_restore 30
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_400f04:

.cfi_restore_state 
            mov x1,x21
            adrp x0, .L_405c28
            add x0,x0, :lo12:.L_405c28
            bl sysfatal

            b .L_400ec0
.L_400f18:

            mov x1,x21
            adrp x0, .L_405c48
            add x0,x0, :lo12:.L_405c48
            bl sysfatal

            ldp fp,lr,[sp]
            mov x12,#8240
            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            add sp,sp,x12
.cfi_restore 29
.cfi_restore 30
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size cat, . - cat
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x3, argv0
            adrp x2, .L_405c60
            mov fp,sp
            add x2,x2, :lo12:.L_405c60
            str x2,[x3,:lo12:argv0]
            cmp w0,#1
            b.eq .L_400fe0

            b.le .L_400fd4

            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            sub w21,w0,#2
            add x0,x1,#16
            adrp x22, .L_405c70
            add x21,x0,w21, uxtw #3
            add x22,x22, :lo12:.L_405c70
            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            add x19,x1,#8
            b .L_400fa0
.L_400f88:

            bl cat

            add x19,x19,#8
            mov w0,w20
            bl close

            cmp x19,x21
            b.eq .L_400fcc
.L_400fa0:

            ldr x0,[x19]
            mov w1,#0
            bl p9open

            mov w20,w0
            ldr x1,[x19]
            tbz w0,#31,.L_400f88

            mov x0,x22
            add x19,x19,#8
            bl sysfatal

            cmp x19,x21
            b.ne .L_400fa0
.L_400fcc:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.L_400fd4:

.cfi_restore 22
.cfi_restore 21
            mov x0,#0
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            b exits
.L_400fe0:

.cfi_restore_state 
            mov w0,#0
            adrp x1, .L_405c68
            add x1,x1, :lo12:.L_405c68
            bl cat

            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            mov x0,#0
            b exits
.cfi_endproc 

            nop
            nop
            nop
            nop
.size p9main, . - p9main
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
            b .L_40104c
.L_401040:

            add w19,w19,#1
            cmp w19,#33
            b.eq .L_401090
.L_40104c:

            ldr x2,[x1]
            add x1,x1,#16
            cbnz x2,.L_401040

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
.L_401090:

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
            b .L_4010e4
.L_4010d8:

            add x1,x1,#16
            cmp x3,x1
            b.eq .L_40110c
.L_4010e4:

            ldr x2,[x1]
            cmp x2,x19
            b.ne .L_4010d8

            ldr w2,[x1,#8]
            cmp w2,w0
            b.ne .L_4010d8

            add x1,x1,#16
            stur xzr,[x1,#-16]
            cmp x3,x1
            b.ne .L_4010e4
.L_40110c:

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
            b .L_401154
.L_401150:

            mov x19,x1
.L_401154:

            ldr x1,[x19]
            cbz x1,.L_401170

            ldr w2,[x19,#8]
            cmp w2,w21
            b.ne .L_401170

            str xzr,[x19]
            blr x1
.L_401170:

            sub x1,x19,#16
            cmp x19,x20
            b.ne .L_401150

            cbz x22,.L_401188

            ldrb w0,[x22]
            cbnz w0,.L_401190
.L_401188:

            mov w0,#0
            bl exit
.L_401190:

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
            tbz w19,#4,.L_4011e4

            eor w2,w2,#16
            orr w1,w22,#512
.L_4011e4:

            tbz w2,#7,.L_4011f0

            orr w1,w1,#65536
            eor w2,w2,#128
.L_4011f0:

            tbz w2,#8,.L_4011fc

            orr w1,w1,#2048
            eor w2,w2,#256
.L_4011fc:

            tbz w2,#14,.L_401208

            orr w1,w1,#1024
            eor w2,w2,#16384
.L_401208:

            cbnz w2,.L_4012ac

            mov x0,x21
            bl open64

            mov w20,w0
            tbnz w0,#31,.L_401228

            tbnz w19,#13,.L_40123c
.L_401220:

            tbnz w19,#5,.L_40127c

            tbnz w19,#6,.L_401290
.L_401228:

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
.L_40123c:

.cfi_restore_state 
            cmp w22,#0
            add x2,sp,#48
            cset w3,ne
            mov w1,#6
            strh w3,[sp,#48]
            strh wzr,[sp,#50]
            stp xzr,xzr,[sp,#56]
            bl fcntl64

            tbz w0,#31,.L_401220

            mov w0,w20
            bl close

            adrp x0, .L_405ca8
            mov w20,#-1
            add x0,x0, :lo12:.L_405ca8
            bl werrstr

            b .L_401228
.L_40127c:

            mov w0,w20
            mov w2,#1
            mov w1,#4
            bl fcntl64

            tbz w19,#6,.L_401228
.L_401290:

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
.L_4012ac:

.cfi_restore_state 
            mov w1,w2
            adrp x0, .L_405c90
            mov w20,#-1
            add x0,x0, :lo12:.L_405c90
            bl werrstr

            b .L_401228
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
            cbz x20,.L_401314

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
.L_401314:

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
            cbnz x20,.L_401380

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_401368

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401368:

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
.L_401380:

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
            cbz x20,.L_4013e4

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
.L_4013e4:

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
            cbz x20,.L_401438

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
.L_401438:

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
            cbnz x20,.L_4014a0

            ldr w1,[x19]
            mov w0,#0
            cbz w1,.L_401488

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401488:

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
.L_4014a0:

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
            cbz x20,.L_401504

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
.L_401504:

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
            cbz x20,.L_401558

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
.L_401558:

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
            cbnz x20,.L_4015a8

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_4015cc

            ldp x19,x20,[sp,#16]
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
.L_4015cc:

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
            cbz x20,.L_401630

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
.L_401630:

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
            cbz x20,.L_401694

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
.L_401694:

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
            cbnz x20,.L_401708

            ldr x1,[x19,#8]
            mov w0,#0
            cbz x1,.L_4016e8
.L_4016dc:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4016e8:

.cfi_restore_state 
            ldr w1,[x19,#4]
            cbnz w1,.L_4016dc

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
.L_401708:

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
            cbz x20,.L_401770

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
.L_401770:

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
            cbz x19,.L_4017b4

            mov x20,x0
            add x0,sp,#40
            bl getcallerpc

            mov x1,x0
            mov x0,x20
            blr x19
.L_4017b4:

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
            cbnz x19,.L_4017ec

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
.L_4017ec:

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
            cbnz x19,.L_401840

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
.L_401840:

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
.globl sysfatal
.type sysfatal, @function
#-----------------------------------
sysfatal:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            sub sp,sp,#560
.cfi_def_cfa_offset 560
            adrp x8, _sysfatal
            add x11,sp,#496
            add x12,sp,#560
            mov w10,#-56
            mov w9,#-128
            stp fp,lr,[sp]
.cfi_offset 29, -560
.cfi_offset 30, -552
            mov fp,sp
            ldr x8,[x8,:lo12:_sysfatal]
            stp x1,x2,[sp,#504]
            add x1,sp,#520
            stp x19,x20,[sp,#16]
.cfi_offset 19, -544
.cfi_offset 20, -536
            add x19,sp,#48
            add x20,sp,#80
            str x21,[sp,#32]
.cfi_offset 21, -528
            mov x21,x0
            stp x12,x12,[sp,#80]
            str x11,[sp,#96]
            stp w10,w9,[sp,#104]
            str q0,[sp,#368]
            str q1,[sp,#384]
            str q2,[sp,#400]
            str q3,[sp,#416]
            str q4,[sp,#432]
            str q5,[sp,#448]
            str q6,[sp,#464]
            str q7,[sp,#480]
            stp x3,x4,[x1]
            stp x5,x6,[x1,#16]
            str x7,[sp,#552]
            cbz x8,.L_401904

            add x20,sp,#80
            add x19,sp,#48
            mov x1,x19
            ldp q0,q1,[x20]
            stp q0,q1,[x19]
            blr x8
.L_401904:

            mov x2,x21
            ldp q0,q1,[x20]
            mov x3,x19
            add x1,sp,#368
            add x0,sp,#112
            stp q0,q1,[x19]
            bl vseprint

            bl __fixargv0

            adrp x0, argv0
            adrp x2, .L_405cb8
            add x2,x2, :lo12:.L_405cb8
            add x3,sp,#112
            ldr x4,[x0,:lo12:argv0]
            adrp x1, .L_405cc0
            add x1,x1, :lo12:.L_405cc0
            mov w0,#2
            cmp x4,#0
            csel x2,x2,x4,eq
            bl fprint

            adrp x0, .L_405cc8
            add x0,x0, :lo12:.L_405cc8
            bl exits

            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldr x21,[sp,#32]
            add sp,sp,#560
.cfi_restore 29
.cfi_restore 30
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size sysfatal, . - sysfatal
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
            b.le .L_4019f0

            mov x20,x2
            mov x19,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w0
            mov x22,x1
            b .L_4019a8
.L_40199c:

            add x19,x19,x0
            cmp x20,x19
            b.le .L_4019dc
.L_4019a8:

            sub x2,x20,x19
            add x1,x22,x19
            mov w0,w21
            bl write

            cmp x0,#0
            b.gt .L_40199c

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            cmp x19,#0
            csel x19,x19,x0,ne
.L_4019cc:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4019dc:

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
.L_4019f0:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x19,#0
            b .L_4019cc
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
            b.le .L_401ac8

            add x0,sp,#40
            bl __fmtFdFlush

            cmp w0,#0
            csinv w19,w19,wzr,ne
.L_401ac8:

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
.globl vseprint
.type vseprint, @function
#-----------------------------------
vseprint:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x1,x0
            b.ls .L_401b54

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
.L_401b54:

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
            cbz x2,.L_401bd0

            blr x2

            mov x19,x0
            cbz x0,.L_401bd0

            bl __errno_location

            ldr w0,[x0]
            cmp w0,#4
            b.eq .L_401be4
.L_401ba4:

            mov w1,#14149
            movk w1,#6440,lsl #16
            cmp w0,w1
            b.ne .L_401c18

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
.L_401bd0:

.cfi_restore_state 
            bl __errno_location

            ldr w0,[x0]
            mov x19,x20
            cmp w0,#4
            b.ne .L_401ba4
.L_401be4:

            adrp x0, .L_405cd0
            add x0,x0, :lo12:.L_405cd0
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
.L_401c18:

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
            cbz x0,.L_401cbc

            blr x0

            cbz x0,.L_401cbc
.L_401c8c:

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
.L_401cbc:

.cfi_restore_state 
            mov x0,x19
            b .L_401c8c
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
            b.eq .L_401d04

            bl strerror

            mov x1,x0
.L_401cf4:

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
.L_401d04:

.cfi_restore_state 
            adrp x20, xsyserr
            add x20,x20, :lo12:xsyserr
            ldr x0,[x20,#128]
            cbz x0,.L_401d20

            blr x0

            mov x1,x0
            cbnz x0,.L_401cf4
.L_401d20:

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
.globl strecpy
.type strecpy, @function
#-----------------------------------
strecpy:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x0,x1
            b.lo .L_401ddc

            ret 
.L_401ddc:

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
            cbz x0,.L_401e14

            ldr x19,[sp,#16]
            mov x0,x3
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_401e14:

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
            cbz x5,.L_401eb4

            blr x5

            cbz w0,.L_401e9c

            ldp x0,x1,[x19,#16]
            add x20,x0,w20, sxtw
            cmp x1,x20
            b.lo .L_401ea0

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_401e9c:

.cfi_restore_state 
            ldr x0,[x19,#16]
.L_401ea0:

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
.L_401eb4:

.cfi_restore_state 
            mov x0,x1
            b .L_401ea0
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
.L_401ee8:

            ldrb w0,[x23]
            ldrb w21,[x20]
            ldp x19,x25,[x23,#16]
            mov w22,w21
            cbz w0,.L_401f94

            cbnz w21,.L_401f28

            b .L_4020fc
.L_401f04:

            add x1,x19,#2
            add x20,x20,#1
            mov x0,x19
            cmp x1,x25
            b.hi .L_401f5c
.L_401f18:

            strh w22,[x0]
            mov x19,x1
            ldrb w22,[x20]
            cbz w22,.L_401f84
.L_401f28:

            cmp w22,#37
            b.eq .L_4020e0

            cmp w22,#127
            b.le .L_401f04

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            ldrh w22,[sp,#94]
            add x1,x19,#2
            add x20,x20,w0, sxtw
            mov x0,x19
            cmp x1,x25
            b.ls .L_401f18
.L_401f5c:

            mov x1,x19
            mov x0,x23
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_4020c4

            ldr x25,[x23,#24]
            strh w22,[x0]
            add x19,x0,#2
            ldrb w22,[x20]
            cbnz w22,.L_401f28
.L_401f84:

            ldr x0,[x23,#16]
            sub x0,x19,x0
            ubfx x0,x0,#1,#32
            b .L_402024
.L_401f94:

            cbnz w21,.L_401fbc

            b .L_4020fc
.L_401f9c:

            add x0,x19,#1
            cmp x0,x25
            b.hi .L_402050
.L_401fa8:

            add x20,x20,#1
            strb w21,[x19]
            mov x19,x0
.L_401fb4:

            ldrb w21,[x20]
            cbz w21,.L_40201c
.L_401fbc:

            cmp w21,#37
            b.eq .L_402094

            cmp w21,#127
            b.le .L_401f9c

            mov x1,x20
            add x0,sp,#94
            bl chartorune

            mov w21,w0
            add x0,x19,w0, sxtw
            cmp x25,x0
            b.lo .L_402074
.L_401fe8:

            mov w4,w21
            mov x3,#0
            cbz w21,.L_401fb4

            nop
            nop
            nop
            nop
.L_401ff8:

            ldrb w1,[x20,x3]
            strb w1,[x19,x3]
            add x3,x3,#1
            cmp x4,x3
            b.ne .L_401ff8

            add x20,x20,x4
            add x19,x19,x4
            ldrb w21,[x20]
            cbnz w21,.L_401fbc
.L_40201c:

            ldr x0,[x23,#16]
            sub w0,w19,w0
.L_402024:

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
.L_402050:

.cfi_restore_state 
            mov x1,x19
            mov x0,x23
            mov w2,#1
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_4020c4

            ldr x25,[x23,#24]
            add x0,x0,#1
            b .L_401fa8
.L_402074:

            mov x1,x19
            mov w2,w21
            mov x0,x23
            bl __fmtflush

            mov x19,x0
            cbz x0,.L_4020c4

            ldr x25,[x23,#24]
            b .L_401fe8
.L_402094:

            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            add w0,w0,w2
.L_4020a8:

            stp x19,x25,[x23,#16]
            mov w2,#0
            str w0,[x23,#48]
            mov x0,x23
            bl __fmtdispatch

            mov x20,x0
            cbnz x0,.L_401ee8
.L_4020c4:

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
.L_4020e0:

.cfi_restore_state 
            ldr x2,[x23,#16]
            add x1,x20,#1
            ldr w0,[x23,#48]
            sub x2,x19,x2
            asr x2,x2,#1
            add w0,w0,w2
            b .L_4020a8
.L_4020fc:

            mov w0,#0
            b .L_402024
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
            b.le .L_402204

            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_402148
.L_402134:

            add w20,w20,#1
            strb w22,[x0]
            mov x2,x3
            cmp w21,w20
            b.eq .L_4021bc
.L_402148:

            add x3,x2,#1
            mov x0,x2
            cmp x3,x4
            b.ls .L_402134

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
            cbz x1,.L_4021fc

            blr x1

            cbz w0,.L_4021e8

            ldp x0,x4,[x19,#16]
            add x2,x0,#1
            cmp x2,x4
            b.hi .L_4021ec

            cbz x0,.L_4021f0

            add w20,w20,#1
            strb w22,[x0]
            cmp w21,w20
            b.ne .L_402148
.L_4021bc:

            ldr x3,[x19,#16]
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub w3,w2,w3
.L_4021c8:

            ldr w1,[x19,#48]
            mov w0,#0
            str x2,[x19,#16]
            add w1,w1,w3
            str w1,[x19,#48]
.L_4021dc:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4021e8:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            ldr x0,[x19,#16]
.L_4021ec:

            str x0,[x19,#24]
.L_4021f0:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_4021dc
.L_4021fc:

.cfi_restore_state 
            mov x0,x2
            b .L_4021ec
.L_402204:

.cfi_restore 21
.cfi_restore 22
            mov w3,#0
            b .L_4021c8
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
            b.le .L_402310

            ldr w4,[x0,#48]
            mov x5,x2
            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            mov w21,w1
            mov w22,#32
            b .L_40225c
.L_402248:

            add w20,w20,#1
            strh w22,[x3]
            mov x2,x0
            cmp w21,w20
            b.eq .L_4022d4
.L_40225c:

            add x0,x2,#2
            mov x3,x2
            cmp x0,x6
            b.ls .L_402248

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
            cbz x1,.L_4022fc

            blr x1

            ldr x3,[x19,#16]
            cbz w0,.L_402300

            ldr x6,[x19,#24]
            add x2,x3,#2
            mov x5,x3
            cmp x2,x6
            b.hi .L_402300

            cbz x3,.L_402304

            ldr w4,[x19,#48]
            add w20,w20,#1
            strh w22,[x3]
            cmp w21,w20
            b.ne .L_40225c
.L_4022d4:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            sub x0,x2,x5
            ubfx x0,x0,#1,#32
.L_4022e0:

            add w4,w4,w0
            mov w0,#0
            str x2,[x19,#16]
            str w4,[x19,#48]
.L_4022f0:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4022fc:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x3,x2
.L_402300:

            str x3,[x19,#24]
.L_402304:

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            mov w0,#-1
            b .L_4022f0
.L_402310:

            ldr w4,[x19,#48]
            mov w0,#0
            b .L_4022e0
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
            tbz w25,#0,.L_402358

            ldr w26,[x0,#92]
.L_402358:

            tbz w25,#2,.L_402368

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_402368:

            ldrb w0,[x21]
            and x25,x25,#2
            cbz w0,.L_40247c

            cbz x25,.L_4025bc
.L_402378:

            ldr x20,[x21,#16]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#24]
            mov w23,w24
            mov w0,#0
            cmp w24,#0
            b.gt .L_4023c0

            b .L_40243c
.L_402398:

            add x1,x20,#2
            add x19,x19,#1
            mov x0,x20
            cmp x1,x27
            b.hi .L_402404
.L_4023ac:

            mov x20,x1
            ldrh w1,[sp,#108]
            strh w1,[x0]
            subs w23,w23,#1
            b.eq .L_402430
.L_4023c0:

            ldrb w0,[x19]
            sub x1,x22,x19
            strh w0,[sp,#108]
            tbz w0,#7,.L_402398

            cmp x1,#2
            b.gt .L_4023e4

            mov x0,x19
            bl fullrune

            cbz w0,.L_402430
.L_4023e4:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x20,#2
            mov x0,x20
            cmp x1,x27
            b.ls .L_4023ac
.L_402404:

            mov x1,x20
            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_402600

            ldrh w1,[sp,#108]
            add x20,x0,#2
            ldr x27,[x21,#24]
            strh w1,[x0]
            subs w23,w23,#1
            b.ne .L_4023c0
.L_402430:

            ldr x0,[x21,#16]
            sub x0,x20,x0
            ubfx x0,x0,#1,#32
.L_40243c:

            ldr w1,[x21,#48]
            str x20,[x21,#16]
            add w0,w1,w0
            str w0,[x21,#48]
            cbz x25,.L_4024ec

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
.L_40247c:

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
            cbz x25,.L_4025a4
.L_402480:

            ldr x23,[x21,#24]
            str x27,[sp,#80]
.cfi_offset 27, -32
            ldr x27,[x21,#16]
            mov w20,w24
            mov w1,#0
            cmp w24,#0
            b.le .L_4024d8

            nop
            nop
            nop
            nop
.L_4024a0:

            ldrb w4,[x19]
            strh w4,[sp,#108]
            mov w0,w4
            cmp w4,#127
            b.hi .L_40250c

            add x1,x27,#3
            add x19,x19,#1
            cmp x23,x1
            b.lo .L_402544
.L_4024c4:

            strb w4,[x27],#1
.L_4024c8:

            subs w20,w20,#1
            b.ne .L_4024a0
.L_4024d0:

            ldr x1,[x21,#16]
            sub w1,w27,w1
.L_4024d8:

            ldr w0,[x21,#48]
            str x27,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x25,.L_4025d4
.L_4024ec:

            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#0
.L_4024f4:

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
.L_40250c:

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
            b.gt .L_402524

            mov x0,x19
            bl fullrune

            cbz w0,.L_4024d0
.L_402524:

            mov x1,x19
            add x0,sp,#108
            bl chartorune

            add x19,x19,w0, sxtw
            add x1,x27,#3
            cmp x23,x1
            b.hs .L_40255c

            ldrh w0,[sp,#108]
.L_402544:

            and x0,x0,#65535
            bl runelen

            mov w2,w0
            add x0,x27,w0, sxtw
            cmp x23,x0
            b.lo .L_402588
.L_40255c:

            ldrh w4,[sp,#108]
            cmp w4,#127
            b.hi .L_402570

            and w4,w4,#255
            b .L_4024c4
.L_402570:

            mov x0,x27
            add x1,sp,#110
            strh w4,[sp,#110]
            bl runetochar

            add x27,x27,w0, sxtw
            b .L_4024c8
.L_402588:

            mov x1,x27
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_402600

            ldr x23,[x21,#24]
            b .L_40255c
.L_4025a4:

.cfi_restore 27
            sub w1,w26,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_402480

            mov w0,#-1
            b .L_4024f4
.L_4025bc:

            sub w1,w26,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_402378

            mov w0,#-1
            b .L_4024f4
.L_4025d4:

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
.L_402600:

.cfi_restore_state 
            ldr x27,[sp,#80]
.cfi_restore 27
            mov w0,#-1
            b .L_4024f4
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
            tbz w23,#0,.L_402644

            ldr w25,[x0,#92]
.L_402644:

            tbz w23,#2,.L_402654

            ldr w0,[x21,#96]
            cmp w24,w0
            csel w24,w24,w0,le
.L_402654:

            ldrb w0,[x21]
            and x23,x23,#2
            cbz w0,.L_402704

            cbz x23,.L_4027c8
.L_402664:

            add x20,x19,w24, sxtw #1
            mov w0,#0
            ldp x1,x3,[x21,#16]
            cmp x19,x20
            b.lo .L_402690

            b .L_4026d4
.L_40267c:

            mov x1,x2
            ldrh w2,[x19],#2
            strh w2,[x0]
            cmp x20,x19
            b.ls .L_4026c8
.L_402690:

            add x2,x1,#2
            mov x0,x1
            cmp x2,x3
            b.ls .L_40267c

            mov x0,x21
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_4027d8

            ldrh w2,[x19],#2
            add x1,x0,#2
            ldr x3,[x21,#24]
            strh w2,[x0]
            cmp x20,x19
            b.hi .L_402690
.L_4026c8:

            ldr x0,[x21,#16]
            sub x0,x1,x0
            ubfx x0,x0,#1,#32
.L_4026d4:

            ldr w2,[x21,#48]
            str x1,[x21,#16]
            add w2,w2,w0
            str w2,[x21,#48]
            cbnz x23,.L_4027f8
.L_4026e8:

            mov w0,#0
.L_4026ec:

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
.L_402704:

.cfi_restore_state 
            cbz x23,.L_4027e0
.L_402708:

            add x22,x19,w24, sxtw #1
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            mov w1,#0
            ldp x20,x28,[x21,#16]
            cmp x19,x22
            b.hs .L_402758
.L_402720:

            add x1,x20,#3
            ldrh w26,[x19]
            cmp x28,x1
            b.lo .L_402774
.L_402730:

            mov x27,x20
            mov x20,x27
            cmp w26,#127
            b.hi .L_4027b0
.L_402740:

            strb w26,[x20],#1
.L_402744:

            add x19,x19,#2
            cmp x22,x19
            b.hi .L_402720

            ldr x1,[x21,#16]
            sub w1,w20,w1
.L_402758:

            ldr w0,[x21,#48]
            str x20,[x21,#16]
            add w0,w0,w1
            str w0,[x21,#48]
            cbnz x23,.L_402820

            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            b .L_4026e8
.L_402774:

.cfi_restore_state 
            and x0,x26,#65535
            bl runelen

            mov w2,w0
            add x0,x20,w0, sxtw
            cmp x28,x0
            b.hs .L_402730

            mov x1,x20
            mov x0,x21
            bl __fmtflush

            mov x27,x0
            cbz x0,.L_40284c

            ldr x28,[x21,#24]
            mov x20,x27
            cmp w26,#127
            b.ls .L_402740
.L_4027b0:

            add x1,sp,#110
            mov x0,x27
            strh w26,[sp,#110]
            bl runetochar

            add x20,x27,w0, sxtw
            b .L_402744
.L_4027c8:

.cfi_restore 27
.cfi_restore 28
            sub w1,w25,w24
            mov x0,x21
            bl __rfmtpad

            tbz w0,#31,.L_402664
.L_4027d8:

            mov w0,#-1
            b .L_4026ec
.L_4027e0:

            sub w1,w25,w24
            mov x0,x21
            bl __fmtpad

            tbz w0,#31,.L_402708

            mov w0,#-1
            b .L_4026ec
.L_4027f8:

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
.L_402820:

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
.L_40284c:

.cfi_restore_state 
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            mov w0,#-1
            b .L_4026ec
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
            tbnz w2,#31,.L_4028a8
.L_402878:

            add x2,x1,#11
            and x2,x2,#-8
            str x2,[x0,#56]
.L_402884:

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
.L_4028a8:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_402878

            ldr x1,[x3,#8]
            add x1,x1,w2, sxtw
            b .L_402884
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
            tbnz w2,#31,.L_402904
.L_4028dc:

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
.L_402904:

.cfi_restore_state 
            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_4028dc

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
            cbz x1,.L_402a04

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
            tbz w0,#2,.L_4029c4

            ldr w4,[x20,#96]
            cmp w4,#0
            b.le .L_402a18

            sxtw x4,w4
            mov x2,#0
            b .L_402988
.L_40297c:

            cmp x3,x4
            b.eq .L_4029f8

            mov x2,x3
.L_402988:

            ldrb w1,[x19,x2]
            add x3,x2,#1
            cbnz w1,.L_40297c

            mov w21,w2
            sxtw x1,w2
.L_40299c:

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
.L_4029c4:

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
.L_4029f8:

.cfi_restore_state 
            add w21,w2,#1
            sxtw x1,w21
            b .L_40299c
.L_402a04:

.cfi_def_cfa_offset 0
.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 29
.cfi_restore 30
            adrp x1, .L_405ce0
            mov w3,#5
            add x1,x1, :lo12:.L_405ce0
            mov w2,w3
            b __fmtcpy
.L_402a18:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x1,#0
            mov w21,#0
            b .L_40299c
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
            tbnz w2,#31,.L_402a48
.L_402a34:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtstrcpy
.L_402a48:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_402a34

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
            cbz x1,.L_402ae0

            ldr x0,[x0,#104]
            tbz w0,#2,.L_402ab8

            ldr w0,[x5,#96]
            cmp w0,#0
            b.le .L_402af4

            mov x3,x1
            mov w2,#0
            b .L_402aa4
.L_402a98:

            add w2,w2,#1
            cmp w0,w2
            b.eq .L_402ad8
.L_402aa4:

            ldrh w4,[x3]
            add x3,x3,#2
            cbnz w4,.L_402a98

            mov x0,x5
            b __fmtrcpy
.L_402ab8:

            ldrh w0,[x1]
            mov x2,x1
            cbz w0,.L_402af4

            nop
            nop
            nop
            nop
.L_402ac8:

            ldrh w3,[x2,#2]!
            cbnz w3,.L_402ac8

            sub x2,x2,x1
            ubfx x2,x2,#1,#32
.L_402ad8:

            mov x0,x5
            b __fmtrcpy
.L_402ae0:

            mov w3,#5
            adrp x1, .L_405ce0
            mov w2,w3
            add x1,x1, :lo12:.L_405ce0
            b __fmtcpy
.L_402af4:

            mov w2,#0
            b .L_402ad8
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
            tbnz w2,#31,.L_402b24
.L_402b10:

            add x2,x1,#15
            and x2,x2,#-8
            str x2,[x0,#56]
            ldr x1,[x1]
            b fmtrunestrcpy
.L_402b24:

            add w4,w2,#8
            str w4,[x3,#24]
            cmp w4,#0
            b.gt .L_402b10

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
            b.hi .L_402dac

            mov x3,#4294967297
            movk x3,#8576,lsl #16
            lsr x3,x3,x4
            tbz w3,#0,.L_402dac

            and w20,w1,#4294967247
            orr w20,w20,#256
            cmp w0,#112
            b.ne .L_4030b4

            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            tbnz w6,#31,.L_403340
.L_402bd8:

            add x0,x2,#15
            and x0,x0,#-8
            str x0,[x19,#56]
.L_402be4:

            ldr x21,[x2]
            adrp x22, .L_405d00
            adrp x6, .L_405ce8
            add x2,x22, :lo12:.L_405d00
            add x27,x6, :lo12:.L_405ce8
            adrp x0, .L_405d20
            mov w1,#120
            add x0,x0, :lo12:.L_405d20
            mov w25,#0
            mov x28,#0
            str w1,[x19,#88]
            str x2,[sp,#96]
            mov w2,#16
            str w2,[sp,#112]
            str x0,[sp,#152]
.L_402c20:

            tbnz w20,#8,.L_402e38
.L_402c24:

            lsr x0,x28,#63
            tst w25,w0
            b.eq .L_40306c

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
.L_402c5c:

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
.L_402c78:

            udiv x0,x28,x3
            mov x7,x28
            and w1,w26,#2147483651
            msub x8,x0,x3,x28
            mov x28,x0
            cbz w21,.L_402c98

            cmp w1,#3
            b.eq .L_402ef8
.L_402c98:

            cbnz w23,.L_402f10
.L_402c9c:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x3
            b.hs .L_402c78

            cbz w26,.L_402ebc
.L_402cb4:

            ldr w23,[x19,#96]
            and w0,w20,#8
            str w0,[sp,#120]
.L_402cc0:

            add x28,sp,#163
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.ge .L_402d08

            ldr w0,[sp,#116]
            and w21,w20,#64
            ldr w1,[sp,#108]
            mov w27,#48
            sub w1,w0,w1
            sxtw x0,w0
            str w1,[sp,#128]
            str x0,[sp,#136]
.L_402cf0:

            cbnz w21,.L_402f8c
.L_402cf4:

            strb w27,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w23,#0,lo
            b.lt .L_402cf0
.L_402d08:

            and w0,w20,#48
            orr w0,w0,w25
            cmp w0,#0
            ldr w0,[sp,#120]
            cinc w26,w26,ne
            cbz w0,.L_403040

            ldr w0,[sp,#112]
            cmp w0,#16
            b.eq .L_403324

            ldr w0,[sp,#112]
            cmp w0,#8
            b.eq .L_40314c
.L_402d38:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_403160

            ldr x0,[x19,#104]
.L_402d4c:

            ldr w1,[sp,#112]
            cmp w1,#8
            b.ne .L_403054

            mov x4,x22
.L_402d5c:

            mov x22,x4
            mov w1,#48
            strb w1,[x22],#-1
            mov w1,#45
            cbz w25,.L_40305c
.L_402d70:

            strb w1,[x22]
.L_402d74:

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
.L_402dac:

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
            tbz w1,#11,.L_402f64

            cbnz w25,.L_4031e8

            tbnz w6,#31,.L_40336c
.L_402dbc:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_402dc8:

            ldr x28,[x2]
            mov w20,w1
            mov w25,#1
            mov x21,#0
.L_402dd8:

            adrp x1, .L_405d20
            add x1,x1, :lo12:.L_405d20
            str x1,[sp,#152]
            ldr x1,[x19,#120]
            str x1,[sp,#96]
            cmp w0,#105
            b.eq .L_4032f8

            b.gt .L_403274

            cmp w0,#98
            b.eq .L_4032d4

            cmp w0,#100
            b.eq .L_4032f8

            cmp w0,#88
            b.ne .L_4032b8

            adrp x22, .L_405d00
            add x0,x22, :lo12:.L_405d00
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            adrp x6, .L_405d08
            add x27,x6, :lo12:.L_405d08
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            tbz w20,#8,.L_402c24

            nop
            nop
            nop
            nop
.L_402e38:

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_4032a4

            add x22,sp,#299
            mov w24,#0
            cbz x21,.L_402ebc
.L_402e68:

            ldrsw x28,[sp,#112]
            and w23,w20,#4096
            and w3,w20,#64
            add x22,sp,#299
            mov w24,#0
            mov w26,#0
.L_402e80:

            udiv x0,x21,x28
            mov x7,x21
            and w1,w26,#2147483651
            msub x8,x0,x28,x21
            mov x21,x0
            cbz w23,.L_402ea0

            cmp w1,#3
            b.eq .L_402fc4
.L_402ea0:

            cbnz w3,.L_402fe0
.L_402ea4:

            ldrb w0,[x27,x8]
            add w26,w26,#1
            strb w0,[x22],#-1
            cmp x7,x28
            b.hs .L_402e80

            cbnz w26,.L_402cb4
.L_402ebc:

            tbz w20,#2,.L_402ec8

            ldr w26,[x19,#96]
            cbz w26,.L_40311c
.L_402ec8:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_40335c
.L_402ed4:

            ldr w0,[x19,#88]
            mov w26,#1
            ldr w23,[x19,#96]
            and w0,w0,#4294967263
            cmp w0,#88
            b.ne .L_4030e8
.L_402eec:

            and w20,w20,#4294967287
            str wzr,[sp,#120]
            b .L_402cc0
.L_402ef8:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w23,.L_402c9c
.L_402f10:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str x3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr x3,[sp,#136]
            cbz w0,.L_402c9c

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
            b .L_402c9c
.L_402f64:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#10,.L_4030f4

            cbnz w25,.L_40320c

            tbnz w6,#31,.L_4033e8
.L_402f70:

            add x3,x2,#15
            and x3,x3,#-8
            str x3,[x19,#56]
.L_402f7c:

            ldr x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_402dd8
.L_402f8c:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            cbz w0,.L_402cf4

            ldr x1,[sp,#96]
            ldr x2,[sp,#136]
            ldr w0,[sp,#108]
            sub x22,x22,x2
            add w26,w26,w0
            ldr w0,[sp,#128]
            add w24,w24,w0
            add x0,x22,#1
            bl memmove

            b .L_402cf4
.L_402fc4:

            mov x4,x22
            mov w0,#44
            add w26,w26,#1
            strb w0,[x4],#-1
            mov x22,x4
            cbz w3,.L_402ea4

            nop
            nop
            nop
            nop
.L_402fe0:

            add x1,sp,#152
            add x0,sp,#148
            stp x8,x7,[sp,#120]
            str w3,[sp,#136]
            bl __needsep

            ldp x8,x7,[sp,#120]
            ldr w3,[sp,#136]
            cbz w0,.L_402ea4

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
            b .L_402ea4
.L_403038:

            and w20,w20,#4294967287
            nop
            nop
            nop
            nop
.L_403040:

            mov w0,#134
            and w0,w20,w0
            cmp w0,#128
            b.eq .L_403318

            ldr x0,[x19,#104]
.L_403054:

            mov w1,#45
            cbnz w25,.L_402d70
.L_40305c:

            tbnz w20,#5,.L_4030ac

            tbz w20,#4,.L_403144

            mov w1,#32
            b .L_402d70
.L_40306c:

            eor w0,w25,#1
            lsr x1,x21,#63
            tst w0,w1
            b.eq .L_402e38

            ldr x22,[sp,#96]
            str wzr,[sp,#148]
            mov x0,x22
            bl utflen

            str w0,[sp,#108]
            mov x0,x22
            bl strlen

            str w0,[sp,#116]
            cbnz w25,.L_4032a8

            neg x21,x21
            mov w25,#1
            b .L_402e68
.L_4030ac:

            mov w1,#43
            b .L_402d70
.L_4030b4:

.cfi_restore 23
.cfi_restore 24
            tbnz w1,#11,.L_4031ec

            tbnz w1,#10,.L_403210

            mov w7,w20
            tbnz w1,#13,.L_403428

            tbz w1,#9,.L_403450
.L_4030c8:

            tbnz w6,#31,.L_4034f0
.L_4030cc:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_4030d8:

            ldrh w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_402dd8
.L_4030e8:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w0,w20,#8
            str w0,[sp,#120]
            b .L_402cc0
.L_4030f4:

.cfi_restore 23
.cfi_restore 24
            tbz w1,#13,.L_4033a4

            cbnz w25,.L_403428

            tbnz w6,#31,.L_40349c
.L_403100:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_40310c:

            ldrb w21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_402dd8
.L_40311c:

.cfi_offset 23, -256
.cfi_offset 24, -248
            ldr w0,[x19,#88]
            cmp w0,#111
            b.eq .L_403470

            and w0,w0,#4294967263
            mov w23,#0
            cmp w0,#88
            b.eq .L_402eec

            and w0,w20,#8
            str w0,[sp,#120]
            b .L_402d08
.L_403144:

            add x22,x22,#1
            b .L_402d74
.L_40314c:

            ldrb w0,[x22,#1]
            cmp w0,#48
            b.eq .L_403038

            add w26,w26,#1
            b .L_402d38
.L_403160:

            mov w0,#8
            str w0,[sp,#128]
.L_403168:

            and w27,w20,#1
            tbz w20,#0,.L_403174

            ldr w27,[x19,#92]
.L_403174:

            cmp w27,w26
            add x28,sp,#163
            ccmp x28,x22,#2,gt
            and w7,w20,#64
            b.hs .L_4031b8

            ldr w0,[sp,#116]
            mov w3,#48
            ldr w1,[sp,#108]
            sxtw x21,w0
            sub w23,w0,w1
            nop
            nop
            nop
            nop
.L_4031a0:

            cbnz w7,.L_403230
.L_4031a4:

            strb w3,[x22],#-1
            add w26,w26,#1
            cmp x28,x22
            ccmp w26,w27,#0,lo
            b.lt .L_4031a0
.L_4031b8:

            ldr x0,[x19,#104]
            ldr w1,[sp,#128]
            and x0,x0,#-2
            str x0,[x19,#104]
            cbz w1,.L_403054

            ldr w1,[sp,#112]
            cmp w1,#16
            b.ne .L_402d4c
.L_4031d8:

            mov x4,x22
            ldr w1,[x19,#88]
            strb w1,[x4],#-1
            b .L_402d5c
.L_4031e8:

.cfi_restore 23
.cfi_restore 24
            mov w20,w1
.L_4031ec:

            tbnz w6,#31,.L_403388
.L_4031f0:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_4031fc:

            ldr x28,[x2]
            mov w25,#1
            mov x21,#0
            b .L_402dd8
.L_40320c:

            mov w20,w1
.L_403210:

            tbnz w6,#31,.L_4033cc
.L_403214:

            add x1,x2,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403220:

            ldr x21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_402dd8
.L_403230:

.cfi_offset 23, -256
.cfi_offset 24, -248
            add x1,sp,#152
            add x0,sp,#148
            stp w7,w3,[sp,#116]
            bl __needsep

            ldp w7,w3,[sp,#116]
            cbz w0,.L_4031a4

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
            b .L_4031a4
.L_403274:

.cfi_restore 23
.cfi_restore 24
            cmp w0,#117
            b.eq .L_4032f8

            cmp w0,#120
            b.eq .L_40354c

            cmp w0,#111
            b.ne .L_4032b8

            adrp x6, .L_405ce8
            mov w0,#8
            add x27,x6, :lo12:.L_405ce8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w0,[sp,#112]
            b .L_402c20
.L_4032a4:

            mov w25,#0
.L_4032a8:

            cbnz x28,.L_402c5c

            add x22,sp,#299
            mov w24,#0
            b .L_402ebc
.L_4032b8:

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
.L_4032d4:

.cfi_restore_state 
            adrp x22, .L_405d00
            add x0,x22, :lo12:.L_405d00
            adrp x6, .L_405ce8
            add x27,x6, :lo12:.L_405ce8
            stp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#2
            str w0,[sp,#112]
            b .L_402c20
.L_4032f8:

.cfi_restore_state 
            ldr x0,[x19,#128]
            adrp x6, .L_405ce8
            mov w1,#10
            add x27,x6, :lo12:.L_405ce8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str w1,[sp,#112]
            str x0,[sp,#152]
            b .L_402c20
.L_403318:

            and w0,w20,#8
            str w0,[sp,#128]
            b .L_403168
.L_403324:

            mov w0,#134
            and w0,w20,w0
            add w26,w26,#2
            cmp w0,#128
            b.eq .L_403160

            ldr x0,[x19,#104]
            b .L_4031d8
.L_403340:

            add w0,w6,#8
            str w0,[x5,#24]
            cmp w0,#0
            b.gt .L_402bd8

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_402be4
.L_40335c:

            add x1,sp,#152
            add x0,sp,#148
            bl __needsep

            b .L_402ed4
.L_40336c:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_402dbc

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_402dc8
.L_403388:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_4031f0

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4031fc
.L_4033a4:

            tbz w1,#9,.L_403404

            cbnz w25,.L_403544

            tbnz w6,#31,.L_40350c
.L_4033b0:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_4033bc:

            ldrsh x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_402dd8
.L_4033cc:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403214

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403220
.L_4033e8:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_402f70

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_402f7c
.L_403404:

            cbnz w25,.L_40344c

            tbnz w6,#31,.L_403528
.L_40340c:

            add x3,x2,#11
            and x3,x3,#-8
            str x3,[x19,#56]
.L_403418:

            ldrsw x21,[x2]
            mov w20,w1
            mov x28,#0
            b .L_402dd8
.L_403428:

            tbnz w6,#31,.L_4034b8
.L_40342c:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403438:

            ldrb w21,[x2]
            mov w20,w7
            mov w25,#0
            mov x28,#0
            b .L_402dd8
.L_40344c:

            mov w20,w1
.L_403450:

            tbnz w6,#31,.L_4034d4
.L_403454:

            add x1,x2,#11
            and x1,x1,#-8
            str x1,[x19,#56]
.L_403460:

            ldr w21,[x2]
            mov w25,#0
            mov x28,#0
            b .L_402dd8
.L_403470:

.cfi_offset 23, -256
.cfi_offset 24, -248
            and w26,w20,#8
            tbnz w20,#3,.L_403480

            str wzr,[sp,#120]
            b .L_402d08
.L_403480:

            mov w0,#48
            strb w0,[x22],#-1
            tbnz w20,#6,.L_40335c

            mov w0,#8
            mov w26,#1
            str w0,[sp,#120]
            b .L_402d08
.L_40349c:

.cfi_restore 23
.cfi_restore 24
            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_403100

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_40310c
.L_4034b8:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_40342c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403438
.L_4034d4:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_403454

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403460
.L_4034f0:

            add w1,w6,#8
            str w1,[x5,#24]
            cmp w1,#0
            b.gt .L_4030cc

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4030d8
.L_40350c:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_4033b0

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_4033bc
.L_403528:

            add w3,w6,#8
            str w3,[x5,#24]
            cmp w3,#0
            b.gt .L_40340c

            ldr x2,[x5,#8]
            add x2,x2,w6, sxtw
            b .L_403418
.L_403544:

            mov w20,w1
            b .L_4030c8
.L_40354c:

            adrp x22, .L_405d00
            add x0,x22, :lo12:.L_405d00
            adrp x6, .L_405ce8
            add x27,x6, :lo12:.L_405ce8
            stp x23,x24,[sp,#48]
.cfi_offset 24, -248
.cfi_offset 23, -256
            str x0,[sp,#96]
            mov w0,#16
            str w0,[sp,#112]
            b .L_402c20
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
            tbnz w3,#31,.L_4035c0
.L_403584:

            add x3,x1,#15
            and x3,x3,#-8
            str x3,[x0,#56]
.L_403590:

            ldr x1,[x1]
            ldr w0,[x0,#48]
            tbnz w2,#11,.L_4035a0

            tbz w2,#10,.L_4035b0
.L_4035a0:

            sxtw x0,w0
            str x0,[x1]
.L_4035a8:

            mov w0,#0
            ret 
.L_4035b0:

            tbnz w2,#13,.L_4035dc

            tbz w2,#9,.L_4035e8

            strh w0,[x1]
            b .L_4035a8
.L_4035c0:

            add w5,w3,#8
            str w5,[x4,#24]
            cmp w5,#0
            b.gt .L_403584

            ldr x1,[x4,#8]
            add x1,x1,w3, sxtw
            b .L_403590
.L_4035dc:

            strb w0,[x1]
            mov w0,#0
            ret 
.L_4035e8:

            str w0,[x1]
            b .L_4035a8
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
            b.eq .L_4036fc

            b.gt .L_40362c

            cmp w1,#39
            b.eq .L_4036ec

            b.gt .L_403664

            cmp w1,#32
            b.eq .L_4036a8

            cmp w1,#35
            b.ne .L_403680

            ldr x1,[x0,#104]
            orr x1,x1,#8
            str x1,[x0,#104]
            b .L_403680
.L_40362c:

            cmp w1,#108
            b.eq .L_4036d0

            b.gt .L_4036b8

            cmp w1,#76
            b.eq .L_403698

            cmp w1,#104
            b.ne .L_403680

            ldr x1,[x0,#104]
            orr x2,x1,#8192
            tst x1,#512
            csel x1,x2,x1,ne
            orr x1,x1,#512
            str x1,[x0,#104]
            b .L_403680
.L_403664:

            cmp w1,#43
            b.eq .L_403688

            cmp w1,#44
            b.ne .L_403680

            ldr x1,[x0,#104]
            orr x1,x1,#4096
            str x1,[x0,#104]
.L_403680:

            mov w0,#1
            ret 
.L_403688:

            ldr x1,[x0,#104]
            orr x1,x1,#32
            str x1,[x0,#104]
            b .L_403680
.L_403698:

            ldr x1,[x0,#104]
            orr x1,x1,#16384
            str x1,[x0,#104]
            b .L_403680
.L_4036a8:

            ldr x1,[x0,#104]
            orr x1,x1,#16
            str x1,[x0,#104]
            b .L_403680
.L_4036b8:

            cmp w1,#117
            b.ne .L_403680

            ldr x1,[x0,#104]
            orr x1,x1,#256
            str x1,[x0,#104]
            b .L_403680
.L_4036d0:

            ldr x1,[x0,#104]
            orr x2,x1,#2048
            tst x1,#1024
            csel x1,x2,x1,ne
            orr x1,x1,#1024
            str x1,[x0,#104]
            b .L_403680
.L_4036ec:

            ldr x1,[x0,#104]
            orr x1,x1,#64
            str x1,[x0,#104]
            b .L_403680
.L_4036fc:

            ldr x1,[x0,#104]
            orr x1,x1,#2
            str x1,[x0,#104]
            b .L_403680
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
            b.hi .L_4037e0

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
            b.hi .L_4037a0

            b .L_4037b8
.L_403794:

            add x2,x2,#16
            cmp x4,x2
            b.ls .L_4037ac
.L_4037a0:

            ldr w3,[x2]
            cmp w3,w0
            b.ne .L_403794
.L_4037ac:

            add x5,x5,#1032
            cmp x2,x5
            b.eq .L_4037e0
.L_4037b8:

            str x1,[x2,#8]
            cmp x2,x4
            b.eq .L_4037cc

            mov w0,#0
.L_4037c8:

            ret 
.L_4037cc:

            add w7,w7,#1
            str w7,[x6,:lo12:fmtalloc]
            str w0,[x2]
            mov w0,#0
            b .L_4037c8
.L_4037e0:

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
.L_403858:

            cbz w22,.L_4038c0
.L_40385c:

            ldrh w19,[x20],#2
            str w19,[x21,#88]
            cmp w19,#46
            b.eq .L_4038e0
.L_40386c:

            b.hi .L_4038f4

            cbz w19,.L_403a94

            cmp w19,#42
            b.ne .L_40398c

            ldr w1,[x21,#80]
            add x2,x21,#56
            ldr x0,[x21,#56]
            tbnz w1,#31,.L_403a64
.L_40388c:

            add x1,x0,#11
            and x1,x1,#-8
            str x1,[x21,#56]
.L_403898:

            ldr w3,[x0]
            ldr x0,[x21,#104]
            and x2,x0,#1
            tbz w3,#31,.L_403960

            tbz w0,#2,.L_403a0c

            and x0,x0,#-5
            str wzr,[x21,#96]
            str x0,[x21,#104]
            cbnz w22,.L_40385c

            nop
            nop
            nop
            nop
.L_4038c0:

            mov x1,x20
            add x0,sp,#78
            bl chartorune

            ldrh w19,[sp,#78]
            str w19,[x21,#88]
            add x20,x20,w0, sxtw
            cmp w19,#46
            b.ne .L_40386c
.L_4038e0:

            ldr x0,[x21,#104]
            mov x1,#5
            orr x0,x0,x1
            str x0,[x21,#104]
            b .L_403858
.L_4038f4:

            cmp w19,#48
            b.eq .L_403974

            sub w0,w19,#49
            and w0,w0,#65535
            cmp w0,#8
            b.hi .L_40398c

            ldr x0,[x21,#104]
            and x2,x0,#1
.L_403914:

            mov w3,#0
            b .L_403930
.L_40391c:

            ldrh w19,[x20],#2
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.hi .L_403954
.L_403930:

            add w3,w3,w3, lsl #2
            add w3,w19,w3, lsl #1
            sub w3,w3,#48
            cbnz w22,.L_40391c

            ldrb w19,[x20],#1
            sub w1,w19,#48
            and w1,w1,#65535
            cmp w1,#9
            b.ls .L_403930
.L_403954:

            cmp w22,#0
            cinc x20,x20,eq
            sub x20,x20,#2
.L_403960:

            cbz x2,.L_4039fc

            orr x0,x0,#4
            str w3,[x21,#96]
            str x0,[x21,#104]
            b .L_403858
.L_403974:

            ldr x0,[x21,#104]
            and x2,x0,#1
            tbnz w0,#0,.L_403914

            orr x0,x0,#128
            str x0,[x21,#104]
            b .L_403858
.L_40398c:

            adrp x2, fmtalloc
            add x0,x2, :lo12:fmtalloc
            add x1,x0,#8
            ldr w2,[x2,:lo12:fmtalloc]
            add x2,x0,w2, sxtw #4
            add x2,x2,#8
            cmp x2,x1
            b.hi .L_4039bc

            b .L_403a1c
.L_4039b0:

            add x1,x1,#16
            cmp x2,x1
            b.ls .L_403a1c
.L_4039bc:

            ldr w0,[x1]
            cmp w19,w0
            b.ne .L_4039b0
.L_4039c8:

            ldr x0,[x1,#8]
            cbz x0,.L_4039c8

            ldr x1,[x1,#8]
.L_4039d4:

            mov x0,x21
            blr x1

            cmp w0,#0
            b.lt .L_403a94

            b.ne .L_403858

            mov x0,x20
.L_4039ec:

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
.L_4039fc:

.cfi_restore_state 
            orr x0,x0,#1
            str w3,[x21,#92]
            str x0,[x21,#104]
            b .L_403858
.L_403a0c:

            and x2,x0,#1
            neg w3,w3
            orr x0,x0,#2
            b .L_403960
.L_403a1c:

            str x23,[sp,#48]
.cfi_offset 23, -32
            bl __fmtlock

            adrp x0, knownfmt
            add x23,x0, :lo12:knownfmt
            ldr w0,[x0,:lo12:knownfmt]
            cbnz w0,.L_403a40

            b .L_403a80
.L_403a38:

            ldr w0,[x23,#16]!
            cbz w0,.L_403a80
.L_403a40:

            cmp w19,w0
            b.ne .L_403a38

            ldr x1,[x23,#8]
            mov w0,w19
            bl __fmtinstall

            bl __fmtunlock

            ldr x1,[x23,#8]
            ldr x23,[sp,#48]
.cfi_restore 23
            b .L_4039d4
.L_403a64:

            add w3,w1,#8
            str w3,[x2,#24]
            cmp w3,#0
            b.gt .L_40388c

            ldr x0,[x2,#8]
            add x0,x0,w1, sxtw
            b .L_403898
.L_403a80:

.cfi_offset 23, -32
            bl __fmtunlock

            ldr x23,[sp,#48]
.cfi_restore 23
            adrp x1, __badfmt
            add x1,x1, :lo12:__badfmt
            b .L_4039d4
.L_403a94:

            mov x0,#0
            b .L_4039ec
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
            b.le .L_403acc

            ldr w0,[x19,#48]
.L_403ac0:

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_403acc:

.cfi_restore_state 
            mov w0,#-1
            b .L_403ac0
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
            b.ne .L_403b64
.L_403b50:

            mov w0,#1
            str x1,[x19,#16]
.L_403b58:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_403b64:

.cfi_restore_state 
            ldr w0,[x19,#40]
            sxtw x20,w2
            mov x2,x20
            bl write

            mov x1,x0
            mov w0,#0
            cmp x1,x20
            b.ne .L_403b58

            ldr x1,[x19,#8]
            b .L_403b50
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
            cbz x1,.L_403bd4

            ldrb w5,[x1]
            adrp x4, .L_405d28
            add x4,x4, :lo12:.L_405d28
            cmp w5,#0
            csel x1,x4,x1,eq
.L_403ba8:

            cmp x2,#0
            adrp x5, .L_405d30
            add x5,x5, :lo12:.L_405d30
            adrp x4, .L_405d38
            csel x2,x5,x2,eq
            add x4,x4, :lo12:.L_405d38
            cmp x3,#0
            stp x1,x2,[x0,#112]
            csel x3,x4,x3,eq
            str x3,[x0,#128]
            ret 
.L_403bd4:

            adrp x1, .L_405d28
            add x1,x1, :lo12:.L_405d28
            b .L_403ba8
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
            b.ne .L_403c20

            mov w0,#0
            ret 
.L_403c20:

            ldrb w0,[x4,#1]
            cbz w0,.L_403c30

            add x4,x4,#1
            str x4,[x1]
.L_403c30:

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
            b.le .L_403cc0

            ldrb w4,[x1,#1]
            eor w4,w4,#128
            cmp w4,#63
            b.hi .L_403cb0

            cmp w2,#223
            b.gt .L_403cd0

            cmp w2,#191
            b.le .L_403cb0

            orr w2,w4,w2, lsl #6
            mov w1,#65533
            mov w0,#1
            tst w2,#1920
            b.eq .L_403cb8

            and w1,w2,#2047
            mov w0,#2
            b .L_403cb8
.L_403cb0:

            mov w1,#65533
            mov w0,#1
.L_403cb8:

            strh w1,[x3]
            ret 
.L_403cc0:

            mov w1,w2
            mov w0,#1
            strh w1,[x3]
            ret 
.L_403cd0:

            ldrb w5,[x1,#2]
            mov w6,#239
            mov w1,#65533
            mov w0,#1
            eor w5,w5,#128
            cmp w5,#63
            ccmp w2,w6,#0,ls
            b.gt .L_403cb8

            orr w2,w4,w2, lsl #6
            orr w2,w5,w2, lsl #6
            tst w2,#63488
            b.eq .L_403cb8

            and w1,w2,#65535
            mov w0,#3
            b .L_403cb8
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
            b.le .L_403d70

            asr x1,x3,#6
            and w2,w3,#63
            orr w2,w2,#128
            sxtb w1,w1
            cmp x3,#2047
            b.le .L_403d5c

            asr x3,x3,#12
            and w1,w1,#63
            orr w3,w3,#4294967264
            orr w1,w1,#4294967168
            mov w0,#3
            strb w3,[x4]
            strb w1,[x4,#1]
            strb w2,[x4,#2]
            ret 
.L_403d5c:

            orr w1,w1,#4294967232
            mov w0,#2
            strb w1,[x4]
            strb w2,[x4,#1]
            ret 
.L_403d70:

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
            b.eq .L_403d98

            tst x0,#63488
            cset w0,ne
            add w0,w0,#2
            ret 
.L_403d98:

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
            cbz w1,.L_403de4

            add x3,x0,w1, uxtw #1
            mov w0,#0
            b .L_403dc0
.L_403db4:

            add w0,w0,#1
            cmp x3,x2
            b.eq .L_403de0
.L_403dc0:

            ldrh w1,[x2],#2
            cmp w1,#127
            b.le .L_403db4

            cmp w1,#2047
            cinc w0,w0,gt
            add w0,w0,#2
            cmp x3,x2
            b.ne .L_403dc0
.L_403de0:

            ret 
.L_403de4:

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
            b.le .L_403e24

            ldrb w2,[x0]
            mov w0,#1
            cmp w2,#127
            b.le .L_403e20

            mov w0,#0
            cmp w1,#1
            b.eq .L_403e20

            cmp w2,#223
            ccmp w1,#2,#0,gt
            cset w0,gt
.L_403e20:

            ret 
.L_403e24:

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
            b.gt .L_403e68
.L_403e50:

            add x19,x19,#1
            cbz w0,.L_403e80

            add x20,x20,#1
.L_403e5c:

            ldrb w0,[x19]
            cmp w0,#127
            b.le .L_403e50
.L_403e68:

            mov x1,x19
            add x0,sp,#46
            add x20,x20,#1
            bl chartorune

            add x19,x19,w0, sxtw
            b .L_403e5c
.L_403e80:

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
            b.hs .L_403f14

            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x0
            mov x20,#0
.L_403eb4:

            ldrb w0,[x19]
            cmp w0,#127
            b.gt .L_403ed8

            cbnz w0,.L_403f0c
.L_403ec4:

            mov w0,w20
            ldp x19,x20,[sp,#16]
.L_403ecc:

.cfi_restore 20
.cfi_restore 19
            ldr x21,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_def_cfa_offset 0
            ret 
.L_403ed8:

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
            cbz w2,.L_403ec4

            bl chartorune

            add x19,x19,w0, sxtw
.L_403efc:

            add x20,x20,#1
            cmp x19,x21
            b.lo .L_403eb4

            b .L_403ec4
.L_403f0c:

            add x19,x19,#1
            b .L_403efc
.L_403f14:

.cfi_restore 19
.cfi_restore 20
            mov w0,#0
            b .L_403ecc
.cfi_endproc 

            nop
            nop
            nop
            nop
.size utfnlen, . - utfnlen
#-----------------------------------
.type fmtpow10, @function
#-----------------------------------
fmtpow10:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            tbnz w0,#31,.L_403f80

            cmp w0,#159
            b.le .L_403f70

            sub w0,w0,#159
            cmp w0,#159
            b.le .L_403fd8

            mov w2,#0
.L_403f3c:

            adrp x1, .L_405e78
            ldr d0,[x1,:lo12:.L_405e78]
            fmov d1,d0
.L_403f48:

            sub w0,w0,#159
            fmul d0,d0,d1
            cmp w0,#159
            b.gt .L_403f48

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d1,[x1,w0,sxtw #3]
            fmul d0,d0,d1
            cbnz w2,.L_403f98

            ret 
.L_403f70:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
            ret 
.L_403f80:

            cmn w0,#159
            b.lt .L_403fa4

            neg w0,w0
            adrp x1, pows10
            add x1,x1, :lo12:pows10
            ldr d0,[x1,w0,sxtw #3]
.L_403f98:

            fmov d1,#1.000000000000000000e+00
            fdiv d0,d1,d0
            ret 
.L_403fa4:

            mov w1,#-159
            sub w0,w1,w0
            cmp w0,#159
            b.le .L_403fbc

            mov w2,#1
            b .L_403f3c
.L_403fbc:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_405e78
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_405e78]
            fmul d0,d0,d1
            b .L_403f98
.L_403fd8:

            adrp x1, pows10
            add x1,x1, :lo12:pows10
            adrp x2, .L_405e78
            ldr d0,[x1,w0,sxtw #3]
            ldr d1,[x2,:lo12:.L_405e78]
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
            b.lt .L_4040d8

            mov w1,#43
            strb w1,[x0,#1]
            add x20,sp,#48
            b.eq .L_404084
.L_404038:

            mov w5,#26215
            add x20,sp,#48
            mov x2,#1
            movk w5,#26214,lsl #16
.L_404048:

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
            cbnz w19,.L_404048

            mov w19,w4
            cmp w4,#1
            b.ne .L_4040a4
.L_404084:

            eor w22,w19,#1
            add x0,x20,w19, sxtw
            add w19,w19,#1
            add w2,w22,#1
            add w19,w22,w19
            mov w1,#48
            sxtw x2,w2
            bl memset
.L_4040a4:

            sxtw x0,w19
            mov x1,x21
            nop
            nop
            nop
            nop
.L_4040b0:

            add x2,x20,x0
            sub x0,x0,#1
            ldurb w2,[x2,#-1]
            strb w2,[x1],#1
            cbnz w0,.L_4040b0

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
.L_4040d8:

.cfi_restore_state 
            mov w1,#45
            neg w19,w19
            strb w1,[x0,#1]
            b .L_404038
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
            tbz w22,#10,.L_404148

            tbnz w1,#31,.L_4041e8
.L_404128:

            add x0,x0,#15
            and x0,x0,#-16
            add x1,x0,#16
            str x1,[x19,#56]
.L_404138:

            ldr q0,[x0]
            bl __trunctfdf2

            fmov d8,d0
            b .L_40415c
.L_404148:

            tbnz w1,#31,.L_404204
.L_40414c:

            add x1,x0,#15
            and x1,x1,#-8
            str x1,[x19,#56]
.L_404158:

            ldr d8,[x0]
.L_40415c:

            str xzr,[x19,#104]
            mov w28,#6
            tbz w22,#2,.L_40416c

            ldr w28,[x19,#96]
.L_40416c:

            ldr w21,[x19,#88]
            cmp w21,#65
            b.eq .L_404188

            sub w0,w21,#69
            mov x23,#0
            cmp w0,#2
            b.hi .L_404190
.L_404188:

            add w21,w21,#32
            mov x23,#1
.L_404190:

            fmov d0,d8
            bl __isNaN

            cbz w0,.L_404220

            adrp x0, pows10
            add x0,x0, :lo12:pows10
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
.L_4041ac:

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
.L_4041e8:

.cfi_restore_state 
            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_404128

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_404138
.L_404204:

            add w3,w1,#16
            str w3,[x2,#28]
            cmp w3,#0
            b.gt .L_40414c

            ldr x0,[x2,#16]
            add x0,x0,w1, sxtw
            b .L_404158
.L_404220:

            fmov d0,d8
            mov w0,#1
            bl __isInf

            cbnz w0,.L_4044ec

            fmov d0,d8
            mov w0,#-1
            bl __isInf

            str w0,[sp,#128]
            cbnz w0,.L_404508

            stp x25,x26,[sp,#64]
.cfi_offset 26, -152
.cfi_offset 25, -160
            bl __errno_location

            fcmpe d8,#0.000000000000000000e+00
            mov x24,x0
            ldr w0,[x0]
            str w0,[sp,#132]
            b.mi .L_404328

            fcmp d8,#0.000000000000000000e+00
            b.ne .L_404a10

            mov w0,#48
            mov w27,#0
            mov w5,#1
            str wzr,[sp,#116]
            strh w0,[sp,#160]
.L_40427c:

            ldr x25,[x19,#112]
            adrp x0, .L_405d28
            add x0,x0, :lo12:.L_405d28
            str w5,[sp,#120]
            cmp x25,#0
            csel x25,x0,x25,eq
            mov x0,x25
            bl utflen

            mov w6,w0
            ldr w5,[sp,#120]
            cmp w21,#102
            b.eq .L_40471c

            cmp w21,#103
            b.ne .L_404524

            cbz w28,.L_404764

            cmp w28,w5
            b.lt .L_404b3c

            sub w1,w5,#1
            add w1,w1,w27
            cmp w28,w1
            ccmn w1,#4,#1,gt
            b.lt .L_404538
.L_4042d4:

            add w20,w5,w27
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.gt .L_4042f8

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
.L_4042f8:

            add w28,w23,w28
            cmp w28,w0
            b.ge .L_404798

            adrp x3, pows10
            add x3,x3, :lo12:pows10
            adrp x1, .L_405d40
            adrp x0, .L_405d50
            add x3,x3,#1328
            add x1,x1, :lo12:.L_405d40
            add x0,x0, :lo12:.L_405d50
            mov w2,#512
            bl __assert_fail
.L_404328:

            fneg d8,d8
            mov w0,#1
            str w0,[sp,#116]
.L_404334:

            fmov d0,d8
            add x0,sp,#156
            bl frexp

            ldr w0,[sp,#156]
            adrp x1, .L_405e80
            fmov d2,#1.000000000000000000e+00
            ldr d1,[x1,:lo12:.L_405e80]
            scvtf d0,w0
            fmul d0,d0,d1
            fcvtzs w27,d0
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_404374

            b .L_40438c
.L_404374:

            sub w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.mi .L_404374
.L_40438c:

            fmov d2,#1.000000000000000000e+01
            fcmpe d1,d2
            b.ge .L_40439c

            b .L_4043b4
.L_40439c:

            add w27,w27,#1
            neg w0,w27
            bl fmtpow10

            fmul d1,d0,d8
            fcmpe d1,d2
            b.ge .L_40439c
.L_4043b4:

            add x26,sp,#160
            add x20,sp,#177
            mov x1,x26
            fmov d2,#1.000000000000000000e+01
            nop
            nop
            nop
            nop
.L_4043c8:

            fcvtzs w0,d1
            scvtf d0,w0
            add w0,w0,#48
            strb w0,[x1],#1
            fsub d1,d1,d0
            fmul d1,d1,d2
            cmp x20,x1
            b.ne .L_4043c8

            mov w25,#10
            sub w27,w27,#16
            mov w1,w27
            mov x0,x20
            mov w2,#0
            bl xfmtexp
.L_404400:

            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmpe d0,d8
            b.mi .L_4049d4

            b.gt .L_404a18
.L_404418:

            add x20,sp,#176
            add x25,x26,#13
            mov x2,x20
.L_404424:

            ldrb w6,[x2]
            str w6,[sp,#120]
            cmp w6,#57
            b.eq .L_40445c

            mov w3,#57
            strb w3,[x2]
            mov x0,x26
            mov x1,#0
            str x2,[sp,#136]
            bl fmtstrtod

            fcmp d0,d8
            ldr w6,[sp,#120]
            ldr x2,[sp,#136]
            b.ne .L_404d64
.L_40445c:

            sub x2,x2,#1
            cmp x25,x2
            b.ne .L_404424
.L_404468:

            ldrb w0,[sp,#176]
            cmp w0,#57
            b.eq .L_404a70
.L_404474:

            ldrb w2,[x20]
            str w2,[sp,#120]
            cmp w2,#48
            b.eq .L_4044a4

            mov w2,#48
            strb w2,[x20]
            mov x0,x26
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            ldr w2,[sp,#120]
            b.ne .L_404d6c
.L_4044a4:

            sub x20,x20,#1
            cmp x25,x20
            b.ne .L_404474
.L_4044b0:

            mov x0,#17
            nop
            nop
            nop
            nop
.L_4044b8:

            add x1,x26,x0
            ldurb w1,[x1,#-1]
            cmp w1,#48
            b.ne .L_4044d8

            sub x0,x0,#1
            add w27,w27,#1
            cmp x0,#1
            b.ne .L_4044b8
.L_4044d8:

            mov w5,w0
            strb wzr,[x26,x0]
            ldr w0,[sp,#132]
            str w0,[x24]
            b .L_40427c
.L_4044ec:

.cfi_restore 25
.cfi_restore 26
            add w23,w23,#2
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x23,w23
            add x0,x0,#1280
            ldr x20,[x0,x23,lsl #3]
            b .L_4041ac
.L_404508:

            add w1,w23,#4
            adrp x0, pows10
            add x0,x0, :lo12:pows10
            sxtw x1,w1
            add x0,x0,#1280
            ldr x20,[x0,x1,lsl #3]
            b .L_4041ac
.L_404524:

.cfi_offset 25, -160
.cfi_offset 26, -152
            sub w1,w5,#1
            add w28,w28,#1
            add w1,w1,w27
            cmp w28,w5
            b.lt .L_4046fc
.L_404538:

            sub w27,w28,w5
.L_40453c:

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
.L_404570:

            cmp w21,#103
            b.eq .L_40497c
.L_404578:

            cmp w20,w28
            b.ge .L_404968

            add w28,w28,w6
.L_404584:

            ldr w0,[sp,#132]
            add w28,w28,w0
            ldr w0,[sp,#116]
            cbnz w0,.L_40495c

            tbnz w22,#5,.L_4049cc

            and w4,w22,#16
            tbz w22,#4,.L_4045ac

            mov w4,#32
            nop
            nop
            nop
            nop
.L_4045a8:

            add w28,w28,#1
.L_4045ac:

            and w1,w22,#1
            str w1,[sp,#136]
            ldrb w0,[x19]
            tbz w22,#0,.L_404858

            ldr w1,[x19,#92]
            cmp w1,w28
            b.le .L_404854

            sub w1,w1,w28
            mov w2,#130
            and w2,w22,w2
            str w1,[sp,#136]
            cmp w2,#128
            b.eq .L_40484c

            and w1,w22,#2
            cbz w0,.L_404804

            cbz w1,.L_404b20
.L_4045ec:

            ldp x1,x21,[x19,#16]
            cbz w4,.L_404608

            add x0,x1,#2
            cmp x0,x21
            b.hi .L_404bd0
.L_404600:

            strh w4,[x1]
            mov x1,x0
.L_404608:

            add x0,sp,#160
            str x0,[sp,#120]
            cmp w23,#0
            b.le .L_404644
.L_404618:

            sub w23,w23,#1
            mov w3,#48
.L_404620:

            add x26,x1,#2
            cmp x26,x21
            b.hi .L_404668
.L_40462c:

            strh w3,[x1]
            subs w20,w20,#1
            b.eq .L_404698
.L_404638:

            mov x1,x26
            cmp w23,#0
            b.gt .L_404618
.L_404644:

            cmp w24,#0
            b.le .L_4047f0

            ldr x28,[sp,#120]
            add x26,x1,#2
            sub w24,w24,#1
            ldrb w3,[x28],#1
            str x28,[sp,#120]
            cmp x26,x21
            b.ls .L_40462c
.L_404668:

            mov x0,x19
            mov w2,#2
            str w3,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_404820

            ldr w3,[sp,#116]
            add x26,x0,#2
            ldr x21,[x19,#24]
            strh w3,[x1]
            subs w20,w20,#1
            b.ne .L_404638
.L_404698:

            ldrb w0,[x25]
            cbz w0,.L_404638

            mov x28,x25
            b .L_4046c0
.L_4046a8:

            mov x0,x26
            mov x26,x1
.L_4046b0:

            ldrh w1,[sp,#156]
            strh w1,[x0]
            ldrb w0,[x28]
            cbz w0,.L_404638
.L_4046c0:

            mov x1,x28
            add x0,sp,#156
            bl chartorune

            add x28,x28,w0, sxtw
            add x1,x26,#2
            cmp x1,x21
            b.ls .L_4046a8

            mov x1,x26
            mov x0,x19
            mov w2,#2
            bl __fmtflush

            cbz x0,.L_404820

            ldr x21,[x19,#24]
            add x26,x0,#2
            b .L_4046b0
.L_4046fc:

            add x26,sp,#160
            sxtw x2,w28
            ldrb w0,[x26,w28,sxtw]
            cmp w0,#52
            b.hi .L_4047ac
.L_404710:

            mov w5,w28
.L_404714:

            mov w27,#0
            b .L_40453c
.L_40471c:

            add w20,w27,w5
            mov w0,w5
            mov w23,#0
            cmp w20,#0
            b.le .L_404784
.L_404730:

            add w28,w28,w20
            cmp w28,w0
            b.ge .L_404798

            subs w24,w28,w23
            b.mi .L_404bbc

            b.ne .L_404c28

            ldrb w0,[sp,#160]
            mov w28,w23
            cmp w0,#52
            b.hi .L_404d84
.L_404758:

            mov w27,#0
            str wzr,[sp,#132]
            b .L_404578
.L_404764:

            cmp w5,#1
            b.ne .L_404ae8

            cmp w27,#0
            ccmn w27,#4,#1,le
            b.ge .L_404e1c

            mov w1,w27
            mov w28,w5
            b .L_404538
.L_404784:

            mov w1,#1
            sub w23,w1,w20
            add w0,w5,w23
            mov w20,w1
            b .L_404730
.L_404798:

            mov w24,w5
            sub w27,w28,w0
            mov w5,w0
            str wzr,[sp,#132]
            b .L_404570
.L_4047ac:

            cmp w28,#17
            b.hi .L_404710

            sub x2,x2,#1
            mov w3,#48
            adds x2,x26,x2
            b.lo .L_4047d4

            b .L_404ca0
.L_4047c8:

            strb w3,[x2],#-1
            cmp x2,x26
            b.lo .L_404ca0
.L_4047d4:

            ldrb w0,[x2]
            cmp w0,#56
            b.hi .L_4047c8

            add w0,w0,#1
            mov w5,w28
            strb w0,[x2]
            b .L_404714
.L_4047f0:

            cmp w27,#0
            b.le .L_404cd8

            sub w27,w27,#1
            mov w3,#48
            b .L_404620
.L_404804:

            cbnz w1,.L_40485c

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_40485c
.L_404820:

            mov w0,#-1
            str w0,[sp,#128]
.L_404828:

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
.L_40484c:

.cfi_restore_state 
            add w23,w23,w1
            add w20,w20,w1
.L_404854:

            str wzr,[sp,#136]
.L_404858:

            cbnz w0,.L_4045ec
.L_40485c:

            ldp x0,x3,[x19,#16]
            cbz w4,.L_404878

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_404bf8
.L_404870:

            strb w4,[x0]
            mov x0,x1
.L_404878:

            add x21,sp,#160
            cmp w23,#0
            b.le .L_4048b4

            nop
            nop
            nop
            nop
.L_404888:

            sub w23,w23,#1
            mov w28,#48
.L_404890:

            add x1,x0,#1
            cmp x1,x3
            b.hi .L_4048d0
.L_40489c:

            strb w28,[x0]
            subs w20,w20,#1
            b.eq .L_4048f8
.L_4048a8:

            mov x0,x1
            cmp w23,#0
            b.gt .L_404888
.L_4048b4:

            cmp w24,#0
            b.le .L_404948

            add x1,x0,#1
            ldrb w28,[x21],#1
            sub w24,w24,#1
            cmp x1,x3
            b.ls .L_40489c
.L_4048d0:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            bl __fmtflush

            cbz x0,.L_404820

            ldr x3,[x19,#24]
            strb w28,[x0]
            add x1,x0,#1
            subs w20,w20,#1
            b.ne .L_4048a8
.L_4048f8:

            ldrb w0,[x25]
            cbz w0,.L_4048a8

            mov x28,x25
            b .L_404920
.L_404908:

            mov x0,x1
            mov x1,x2
.L_404910:

            ldrb w2,[x28]
            strb w2,[x0]
            ldrb w0,[x28,#1]!
            cbz w0,.L_4048a8
.L_404920:

            add x2,x1,#1
            cmp x2,x3
            b.ls .L_404908

            mov x0,x19
            mov w2,#1
            bl __fmtflush

            cbz x0,.L_404820

            ldr x3,[x19,#24]
            add x1,x0,#1
            b .L_404910
.L_404948:

            cmp w27,#0
            b.le .L_404d20

            sub w27,w27,#1
            mov w28,#48
            b .L_404890
.L_40495c:

            mov w4,#45
            b .L_4045a8
.L_404964:

            mov w27,#0
.L_404968:

            cmp w20,w28
            b.ne .L_404584

            tbz w22,#3,.L_404ae0

            add w28,w6,w20
            b .L_404584
.L_40497c:

            tbnz w22,#3,.L_404578

            cmp w20,w28
            b.gt .L_404584

            cmp w20,w5
            b.gt .L_404ad8

            b.ge .L_404e0c

            add x0,sp,#160
            add x0,x0,w24, sxtw
            b .L_4049b4
.L_4049a0:

            sub w24,w24,#1
            sub x0,x0,#1
            add w28,w23,w24
            cmp w28,w20
            b.le .L_404964
.L_4049b4:

            ldurb w1,[x0,#-1]
            cmp w1,#48
            b.eq .L_4049a0

            add w28,w23,w24
            mov w27,#0
            b .L_404578
.L_4049cc:

            mov w4,#43
            b .L_4045a8
.L_4049d4:

            add x0,sp,#176
            add x5,sp,#159
            mov w2,#48
            b .L_4049f0
.L_4049e4:

            strb w2,[x0],#-1
            cmp x0,x5
            b.eq .L_404cb8
.L_4049f0:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_4049e4

            add w1,w1,#1
            strb w1,[x0]
.L_404a04:

            subs w25,w25,#1
            b.ne .L_404400

            b .L_404418
.L_404a10:

            str wzr,[sp,#116]
            b .L_404334
.L_404a18:

            add x5,sp,#176
            add x2,sp,#159
            mov w1,#57
            b .L_404a34
.L_404a28:

            strb w1,[x5],#-1
            cmp x5,x2
            b.eq .L_404e24
.L_404a34:

            ldrb w0,[x5]
            sub w0,w0,#1
            cmp w0,#47
            b.le .L_404a28

            cmp w0,#48
            ccmp x26,x5,#0,eq
            b.ne .L_404c20

            mov w6,#57
            strb w6,[x5]
            add w27,w27,#1
            mov x0,x20
            mov w1,w27
            mov w2,#0
            bl xfmtexp

            b .L_404a04
.L_404a70:

            mov x1,x26
            add x0,sp,#192
            bl strcpy

            add x0,sp,#208
            add x6,sp,#191
            mov w2,#48
            b .L_404a98
.L_404a8c:

            strb w2,[x0],#-1
            cmp x0,x6
            b.eq .L_404c7c
.L_404a98:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_404a8c

            add w1,w1,#1
            strb w1,[x0]
            str w27,[sp,#120]
.L_404ab0:

            add x0,sp,#192
            mov x1,#0
            bl fmtstrtod

            fcmp d0,d8
            b.ne .L_404474

            add x1,sp,#192
            mov x0,x26
            bl strcpy

            ldr w27,[sp,#120]
            b .L_404474
.L_404ad8:

            sub w27,w20,w5
            mov w28,w20
.L_404ae0:

            add w20,w28,#1
            b .L_404584
.L_404ae8:

            ldrb w0,[sp,#161]
            cmp w0,#52
            b.hi .L_404d74

            mov w1,#0
            mov w28,#1
.L_404afc:

            sub w0,w5,w28
            mov w5,w28
            add w27,w27,w0
            add w1,w27,w1
            cmp w1,w28
            ccmn w1,#4,#1,lt
            b.ge .L_4042d4

            mov w27,#0
            b .L_40453c
.L_404b20:

            ldr w1,[sp,#136]
            mov x0,x19
            str w4,[sp,#116]
            bl __rfmtpad

            ldr w4,[sp,#116]
            tbz w0,#31,.L_4045ec

            b .L_404820
.L_404b3c:

            add x26,sp,#160
            sxtw x0,w28
            sub w1,w28,#1
            ldrb w2,[x26,w28,sxtw]
            cmp w2,#52
            b.ls .L_404afc

            cmp w28,#17
            b.hi .L_404afc

            sub x0,x0,#1
            mov w7,w28
            adds x0,x26,x0
            mov w28,w1
            b.hs .L_404ba4
.L_404b70:

            mov w2,#48
            b .L_404b84
.L_404b78:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_404ba4
.L_404b84:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_404b78

            add w2,w1,#1
            mov w1,w28
            mov w28,w7
            strb w2,[x0]
            b .L_404afc
.L_404ba4:

            mov w1,w28
            mov w0,#49
            add w27,w27,#1
            mov w28,w7
            strb w0,[sp,#160]
            b .L_404afc
.L_404bbc:

            mov w23,w28
            mov w24,#0
            mov w27,#0
            str wzr,[sp,#132]
            b .L_404578
.L_404bd0:

            mov x0,x19
            mov w2,#2
            str w4,[sp,#116]
            bl __fmtflush

            mov x1,x0
            cbz x0,.L_404820

            ldr x21,[x19,#24]
            add x0,x0,#2
            ldr w4,[sp,#116]
            b .L_404600
.L_404bf8:

            mov x1,x0
            mov w2,#1
            mov x0,x19
            str w4,[sp,#116]
            bl __fmtflush

            cbz x0,.L_404820

            ldr x3,[x19,#24]
            add x1,x0,#1
            ldr w4,[sp,#116]
            b .L_404870
.L_404c20:

            strb w0,[x5]
            b .L_404a04
.L_404c28:

            add x26,sp,#160
            sxtw x3,w24
            ldrb w0,[x26,w24,sxtw]
            cmp w0,#52
            b.ls .L_404758

            cmp w24,#17
            b.hi .L_404758

            sub x0,x3,#1
            mov w2,#48
            adds x0,x26,x0
            b.lo .L_404c64

            b .L_404df4
.L_404c58:

            strb w2,[x0],#-1
            cmp x0,x26
            b.lo .L_404df4
.L_404c64:

            ldrb w1,[x0]
            cmp w1,#56
            b.hi .L_404c58

            add w1,w1,#1
            strb w1,[x0]
            b .L_404758
.L_404c7c:

            mov w6,#49
            sub w0,w27,#1
            mov w1,w0
            mov w2,#0
            str w0,[sp,#120]
            add x0,sp,#209
            strb w6,[sp,#192]
            bl xfmtexp

            b .L_404ab0
.L_404ca0:

            mov w0,#49
            add w1,w1,#1
            mov w5,w28
            mov w27,#0
            strb w0,[sp,#160]
            b .L_40453c
.L_404cb8:

            mov w5,#49
            sub w27,w27,#1
            mov w1,w27
            mov x0,x20
            mov w2,#0
            strb w5,[sp,#160]
            bl xfmtexp

            b .L_404a04
.L_404cd8:

            ldr x0,[x19,#16]
            str x1,[x19,#16]
            ldr w2,[x19,#48]
            sub x0,x1,x0
            asr x0,x0,#1
            add w2,w2,w0
            ldr w0,[sp,#132]
            str w2,[x19,#48]
            cbnz w0,.L_404dbc
.L_404cfc:

            ldr w0,[sp,#136]
            cbz w0,.L_404828

            tbz w22,#1,.L_404828

            ldr w1,[sp,#136]
            mov x0,x19
            bl __rfmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_404828
.L_404d20:

            ldr x2,[x19,#16]
            str x0,[x19,#16]
            ldr w1,[x19,#48]
            sub x0,x0,x2
            add w1,w1,w0
            ldr w0,[sp,#132]
            str w1,[x19,#48]
            cbnz w0,.L_404dd8
.L_404d40:

            ldr w0,[sp,#136]
            cbz w0,.L_404828

            tbz w22,#1,.L_404828

            ldr w1,[sp,#136]
            mov x0,x19
            bl __fmtpad

            asr w0,w0,#31
            str w0,[sp,#128]
            b .L_404828
.L_404d64:

            strb w6,[x2]
            b .L_404468
.L_404d6c:

            strb w2,[x20]
            b .L_4044b0
.L_404d74:

            add x26,sp,#160
            mov w7,#1
            mov x0,x26
            b .L_404b70
.L_404d84:

            mov w0,#49
            mov w24,#1
            strb w0,[sp,#160]
.L_404d90:

            cbz w23,.L_404da8

            sub w23,w23,#1
            mov w27,#0
            add w28,w24,w23
            str wzr,[sp,#132]
            b .L_404578
.L_404da8:

            add w20,w20,#1
            mov w28,w24
            mov w27,#0
            str wzr,[sp,#132]
            b .L_404578
.L_404dbc:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_404cfc

            b .L_404820
.L_404dd8:

            ldr w3,[sp,#132]
            add x1,sp,#192
            mov x0,x19
            mov w2,w3
            bl __fmtcpy

            tbz w0,#31,.L_404d40

            b .L_404820
.L_404df4:

            mov w0,#49
            strb w0,[sp,#160]
            add w24,w24,#1
            mov w0,#48
            strb w0,[x26,x3]
            b .L_404d90
.L_404e0c:

            mov w28,w20
            mov w27,#0
            add w20,w28,#1
            b .L_404584
.L_404e1c:

            mov w28,w5
            b .L_4042d4
.L_404e24:

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
            b.eq .L_404e5c

            ret 
.L_404e5c:

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
            cbz w0,.L_404ec0

            b.le .L_404eb0

            mov x0,#9218868437227405312
            cmp x1,x0
            cset w0,eq
            ret 
.L_404eb0:

            mov x0,#-4503599627370496
            cmp x1,x0
            cset w0,eq
            ret 
.L_404ec0:

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
            b .L_404f38
.L_404f04:

            ldrb w24,[x23,x20]
            bl __ctype_b_loc

            ldr x3,[x0]
            mov x19,x24
            ubfiz x2,x24,#1,#8
            ldrh w2,[x3,x2]
            tbz w2,#8,.L_404f2c

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldr w19,[x0,x24,lsl #2]
.L_404f2c:

            add x20,x20,#1
            cmp w19,w21
            b.ne .L_404f58
.L_404f38:

            ldrb w21,[x22,x20]
            cbnz w21,.L_404f04

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
.L_404f58:

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
            b.hi .L_405008
.L_404fc0:

            cmp w2,#4
            b.gt .L_405110

            cmp w2,#2
            mov w1,#2
            csel w1,w1,w2,ls
            cmp w2,#3
            mov w2,#4
            csel w2,w1,w2,lt
.L_404fe0:

            cmp w3,#48
            ccmp w25,#0,#0,eq
            b.ne .L_4050f4

            sub w5,w5,#1
            mov w25,#0
.L_404ff4:

            add x20,x20,#1
.L_404ff8:

            ldrb w3,[x20]
            sub w4,w3,#48
            cmp w4,#9
            b.ls .L_404fc0
.L_405008:

            cmp w3,#45
            b.eq .L_40521c

            b.hi .L_4050ac

            cmp w3,#32
            b.eq .L_405198

            b.ls .L_405188

            cmp w3,#43
            b.ne .L_40513c

            cbz w2,.L_4054ac
.L_40502c:

            cmp w2,#5
            b.eq .L_405738

            cmp w2,#3
            b.eq .L_4051a8

            b.le .L_4051b4
.L_405040:

            cmp w2,#6
            b.ne .L_405050

            sub x20,x20,#1
            sub x20,x20,#1
.L_405050:

            cbz x21,.L_405058

            str x20,[x21]
.L_405058:

            tbz w19,#2,.L_405230

            sxtw x0,w25
            add x1,sp,#112
            b .L_40507c
.L_405068:

            sub x0,x0,#1
            mov x23,x1
            ldrb w2,[x1,x0]
            cmp w2,#48
            b.ne .L_405510
.L_40507c:

            mov w25,w0
            cmp w0,#0
            b.gt .L_405068

            b.ne .L_40550c
.L_40508c:

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
.L_4050ac:

.cfi_restore_state 
            and w0,w3,#4294967263
            cmp w0,#69
            b.eq .L_405130

            cmp w3,#46
            b.ne .L_40513c

            orr w19,w19,#4
            cmp w2,#1
            b.ls .L_40549c

            cmp w2,#2
            b.eq .L_405744

            cmp w2,#3
            b.eq .L_4051a8

            mov w5,w25
.L_4050e0:

            b.le .L_4051b4
.L_4050e4:

            cmp w2,#5
            b.ne .L_405040

            sub x20,x20,#1
            b .L_405050
.L_4050f4:

            cmp w25,#1449
            b.gt .L_404ff4

            add x23,sp,#112
            add x20,x20,#1
            strb w3,[x23,w25,sxtw]
            add w25,w25,#1
            b .L_404ff8
.L_405110:

            sub w0,w2,#5
            cmp w0,#2
            b.hi .L_404fe0

            add w22,w22,w22, lsl #2
            add x20,x20,#1
            mov w2,#7
            add w22,w4,w22, lsl #1
            b .L_404ff8
.L_405130:

            sub w0,w2,#2
            tst w0,#4294967293
            b.eq .L_405490
.L_40513c:

            cmp w2,#3
            b.eq .L_4051a8

            b.gt .L_4050e4

            cbnz w2,.L_4051b4

            adrp x1, .L_405d60
            mov x0,x20
            add x1,x1, :lo12:.L_405d60
            bl xcmp

            cbnz w0,.L_4051bc

            cbz x21,.L_40516c

            add x20,x20,#3
            str x20,[x21]
.L_40516c:

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
.L_405188:

.cfi_restore_state 
            sub w3,w3,#9
            and w3,w3,#255
            cmp w3,#4
            b.hi .L_40513c
.L_405198:

            cbz w2,.L_404ff4

            cmp w2,#3
            b.ne .L_4050e0

            nop
            nop
            nop
            nop
.L_4051a8:

            cbz x21,.L_40508c

            str x24,[x21]
            b .L_40508c
.L_4051b4:

            cmp w2,#1
            b.ne .L_405050
.L_4051bc:

            adrp x1, .L_405d90
            mov x0,x20
            add x1,x1, :lo12:.L_405d90
            bl xcmp

            cbnz w0,.L_405464

            cbz x21,.L_4051dc

            add x20,x20,#8
            str x20,[x21]
.L_4051dc:

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
.L_40521c:

.cfi_restore_state 
            cbnz w2,.L_405488

            orr w19,w19,#1
            add x20,x20,#1
            mov w2,#1
            b .L_404ff8
.L_405230:

            cbz w25,.L_40508c

            add x23,sp,#112
            tst x19,#2
            mov w5,w25
            cneg w22,w22,ne
            add w22,w22,w5
            strb wzr,[x23,w25,sxtw]
            cmn w22,#310
            b.lt .L_405528
.L_405254:

            cmp w22,#310
            b.gt .L_4051dc

            stp x27,x28,[sp,#80]
.cfi_offset 28, -1528
.cfi_offset 27, -1536
            cmp w22,#0
            b.le .L_4057a8

            adrp x27, tab1
            add x27,x27, :lo12:tab1
            add x0,sp,#113
            mov w24,#0
            mov w21,#9
            str x0,[sp,#104]
.L_405280:

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
            b .L_4052d4
.L_4052c8:

            sub w1,w0,#48
            asr w0,w1,w26
            cbnz w0,.L_4054b8
.L_4052d4:

            sub w5,w25,w2
            mov x4,x2
            ldrb w3,[x2],#1
            add w0,w1,w1, lsl #2
            add w0,w3,w0, lsl #1
            cbnz w3,.L_4052c8

            mov w25,w5
            mov x2,x23
            cbz w1,.L_405340
.L_4052f8:

            mov w0,w1
            add w1,w1,w1, lsl #2
            lsl w1,w1,#1
            asr w2,w1,w26
            cbz w2,.L_4052f8

            mov x25,x23
            mov x2,x23
            nop
            nop
            nop
            nop
.L_405318:

            add w0,w0,w0, lsl #2
            lsl w0,w0,#1
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            subs w0,w0,w1
            b.ne .L_405318

            sub w25,w5,w25
            add w25,w25,w2
.L_405340:

            strb wzr,[x2]
            cmp w22,#0
            b.gt .L_405280
.L_40534c:

            adrp x28, tab1
            add x28,x28, :lo12:tab1
            mov w27,#26215
            add x28,x28,#160
            movk w27,#26214,lsl #16
            mov w26,#-10
.L_405364:

            tbnz w22,#31,.L_40544c
.L_405368:

            ldrb w4,[sp,#112]
            cmp w4,#52
            b.hi .L_405538
.L_405374:

            neg w21,w22
            sxtw x20,w21
            sbfiz x0,x21,#4,#32
.L_405380:

            add x2,x28,x0
            ldr w5,[x28,x0]
            mov x0,x23
            str w5,[sp,#96]
            ldr x1,[x2,#8]
            ldrsw x2,[x2,#4]
            bl memcmp

            ldr w5,[sp,#96]
            tbz w0,#31,.L_4053ac

            sub w21,w21,#1
            sxtw x20,w21
.L_4053ac:

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
            b.hi .L_405364

            nop
            nop
            nop
            nop
.L_4053e8:

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
            b.ne .L_4053e8

            sub x3,x3,x8
            cbz w1,.L_405364

            nop
            nop
            nop
            nop
.L_405428:

            smull x2,w1,w27
            mov w0,w1
            asr x2,x2,#34
            sub w1,w2,w1, asr #31
            madd w0,w1,w26,w0
            add w0,w0,#48
            strb w0,[x3,#-1]!
            cbnz w1,.L_405428

            tbz w22,#31,.L_405368
.L_40544c:

            cmn w22,#9
            b.ge .L_405374

            mov x20,#9
            mov x0,#144
            mov w21,w20
            b .L_405380
.L_405464:

.cfi_restore 27
.cfi_restore 28
            adrp x1, .L_405d70
            mov x0,x20
            add x1,x1, :lo12:.L_405d70
            bl xcmp

            cbnz w0,.L_4051a8

            cbz x21,.L_4051dc

            add x20,x20,#3
            str x20,[x21]
            b .L_4051dc
.L_405488:

            orr w19,w19,#2
            b .L_40502c
.L_405490:

            add x20,x20,#1
            mov w2,#5
            b .L_404ff8
.L_40549c:

            mov w5,w25
            add x20,x20,#1
            mov w2,#3
            b .L_404ff8
.L_4054ac:

            add x20,x20,#1
            mov w2,#1
            b .L_404ff8
.L_4054b8:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add w3,w0,#48
            strb w3,[sp,#112]
            lsl w0,w0,w26
            add x4,x4,#2
            ldrb w3,[x2]
            sub w0,w1,w0
            ldr x2,[sp,#104]
            cbz w3,.L_405500
.L_4054d8:

            add w0,w0,w0, lsl #2
            add w0,w3,w0, lsl #1
            sub w0,w0,#48
            asr w1,w0,w26
            add w3,w1,#48
            strb w3,[x2],#1
            lsl w1,w1,w26
            sub w0,w0,w1
            ldrb w3,[x4],#1
            cbnz w3,.L_4054d8
.L_405500:

            cbz w0,.L_4057b8

            mov x25,x2
            b .L_405318
.L_40550c:

.cfi_restore 27
.cfi_restore 28
            add x23,sp,#112
.L_405510:

            tst x19,#2
            strb wzr,[x23,w25,sxtw]
            cneg w22,w22,ne
            add w22,w22,w5
            cmn w22,#310
            b.ge .L_405254
.L_405528:

            bl __errno_location

            mov w1,#34
            str w1,[x0]
            b .L_40508c
.L_405538:

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
.L_405558:

            ldrb w3,[x20]
            add x6,x0,x0, lsl #2
            add x5,x2,x2, lsl #2
            add x20,x20,#1
            sub w1,w3,#48
            sxtw x1,w1
            cbz w3,.L_405778

            add x0,x1,x6, lsl #1
            lsl x2,x5,#1
            mov w7,#1
            cmp x8,x20
            b.ne .L_405558
.L_405588:

            ucvtf d1,x2
.L_40558c:

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
            b.ge .L_4055bc

            fcvtzu x13,d0
.L_4055bc:

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
            b.ge .L_4055f0

            fcvtzu x12,d0
.L_4055f0:

            mov x11,#268435455
            mov x17,x13
            mov x10,x11
            add x16,x11,#1
            add x9,x13,x12
            mov x15,#0
.L_405608:

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
.L_405634:

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
            cbnz w5,.L_4056f4

            cmp w0,#48
            b.gt .L_405788

            tst x3,#268435455
            b.ne .L_405634

            and w0,w14,#7
            mov w1,w14
            cmp w0,#4
            b.eq .L_40579c
.L_405680:

            sub x0,x14,x0
            tbnz w1,#2,.L_405754
.L_405688:

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
            b.ne .L_4056d4

            str d0,[sp,#96]
            bl __errno_location

            ldr d0,[sp,#96]
            mov w1,#34
            str w1,[x0]
.L_4056d4:

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
.L_4056f4:

.cfi_restore_state 
            cmp w0,w5
            b.lt .L_40570c

            b.gt .L_405788

            ldrb w5,[x7,#1]
            add x7,x7,#1
            b .L_405634
.L_40570c:

            cmp x6,x13
            b.eq .L_405764

            mov x17,x6
            add x9,x6,x12
            mov x13,x6
            cmp x14,x15
            b.eq .L_405608
.L_405728:

            mov x15,x14
            mov x13,x6
            add x10,x11,x14
            b .L_405608
.L_405738:

.cfi_restore 27
.cfi_restore 28
            add x20,x20,#1
            mov w2,#6
            b .L_404ff8
.L_405744:

            mov w5,w25
            add x20,x20,#1
            mov w2,#4
            b .L_404ff8
.L_405754:

.cfi_offset 27, -1536
.cfi_offset 28, -1528
            add x1,x0,#8
            and x0,x1,#268435455
            add x6,x6,x1, lsr #28
            b .L_405688
.L_405764:

            cmp x14,x15
            b.ne .L_405728
.L_40576c:

            mov w1,w14
            and w0,w14,#7
            b .L_405680
.L_405778:

            cbnz w7,.L_405588

            mov x0,x9
            fmov d1,#1.000000000000000000e+01
            b .L_40558c
.L_405788:

            mov x11,x14
            mov x12,x6
            add x9,x17,x6
            add x10,x14,x15
            b .L_405608
.L_40579c:

            tbnz w8,#3,.L_405680

            sub x14,x14,#4
            b .L_40576c
.L_4057a8:

            add x0,sp,#113
            mov w24,#0
            str x0,[sp,#104]
            b .L_40534c
.L_4057b8:

            mov w25,w5
            b .L_405340
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
            b.eq .L_405928

            mov x7,#-15360
            add x3,x3,x7
            cmp x3,#2046
            b.le .L_405870

            ands x4,x4,#12582912
            b.eq .L_405914

            cmp x4,#1024,lsl #12
            b.eq .L_405ac8

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_405914
.L_405838:

            cmp x4,#1024,lsl #12
            b.eq .L_405af4

            cmp x4,#2048,lsl #12
            cset w0,eq
            tst w6,w0
            b.ne .L_405914

            mov x19,#9218868437227405311
            mov w0,#20
            orr x19,x19,x5, lsl #63
.L_40585c:

            bl __sfp_handle_exceptions
.L_405860:

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_405870:

.cfi_restore_state 
            cmp x3,#0
            b.le .L_4059c8

            cmp xzr,x2, lsl #7
            mov w2,#0
            cset x7,ne
            orr x1,x7,x1, lsr #60
            orr x1,x1,x0, lsl #4
.L_40588c:

            cmp x1,#0
            cset w0,ne
            and w0,w2,w0
            tst x1,#7
            b.eq .L_405b54

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_4058f0

            cmp x4,#2048,lsl #12
            b.eq .L_405a50

            cbnz x4,.L_405a44

            and x2,x1,#15
            cmp x2,#4
            b.ne .L_405a14

            ubfx x1,x1,#3,#52
            and w3,w3,#2047
            mov x2,#0
            cbz w0,.L_405b1c

            bfxil x2,x1,#0,#52
            mov w0,#24
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_405860
.L_4058f0:

            cbnz x5,.L_405a68
.L_4058f4:

            add x1,x1,#8
            and x2,x1,#36028797018963968
            cbnz w0,.L_405a20
.L_405900:

            cbz x2,.L_405a6c

            add x2,x3,#1
            cmp x3,#2046
            b.ne .L_405b38

            cbnz x4,.L_405838
.L_405914:

            lsl x19,x5,#63
            mov w0,#20
            orr x19,x19,#9218868437227405312
            bl __sfp_handle_exceptions

            b .L_405860
.L_405928:

            orr x2,x0,x1
            cbnz x3,.L_40596c

            lsl x19,x5,#63
            cbz x2,.L_405860
.L_405938:

            and x4,x4,#12582912
            cmp x4,#1024,lsl #12
            b.eq .L_405adc

            cmp x4,#2048,lsl #12
            b.eq .L_405ab4

            cmp x4,#0
            mov x0,#5
            csinc x1,x0,xzr,eq
            mov x8,#0
.L_40595c:

            ubfx x1,x1,#3,#52
            and w8,w8,#2047
            mov w0,#24
            b .L_405a34
.L_40596c:

            cbz x2,.L_4059b0

            mov x2,#32767
            extr x1,x0,x1,#60
            lsr x0,x0,#50
            cmp x3,x2
            lsr x1,x1,#3
            eor w0,w0,#1
            orr x1,x1,#2251799813685248
            csel w0,w0,wzr,eq
            mov w19,#2047
.L_405994:

            orr x19,x1,x19, lsl #52
            orr x19,x19,x5, lsl #63
            cbnz w0,.L_40585c

            fmov d0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_4059b0:

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
.L_4059c8:

.cfi_restore_state 
            cmn x3,#52
            b.lt .L_405938

            mov x7,#61
            sub x8,x7,x3
            orr x0,x0,#2251799813685248
            cmp x8,#63
            b.gt .L_405a7c

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
            b .L_40588c
.L_405a14:

            add x1,x1,#4
            and x2,x1,#36028797018963968
            cbz w0,.L_405900
.L_405a20:

            cbz x2,.L_405a48

            add x8,x3,#1
            mov x1,#0
            and w8,w8,#2047
            mov w0,#24
.L_405a34:

            orr x8,x1,x8, lsl #52
            orr x19,x8,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_405860
.L_405a44:

            cbz w0,.L_405a6c
.L_405a48:

            mov x8,x3
            b .L_40595c
.L_405a50:

            cbnz x5,.L_4058f4

            cbz w0,.L_405a6c

            mov x8,x3
.L_405a5c:

            mov x3,x8
            mov x8,x3
            b .L_40595c
.L_405a68:

            cbnz w0,.L_405a48
.L_405a6c:

            ubfx x1,x1,#3,#52
            and w8,w3,#2047
            mov w0,#16
            b .L_405a34
.L_405a7c:

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
            b .L_40588c
.L_405ab4:

            mov x1,#1
            cbz x5,.L_405a5c

            mov x8,#0
            mov x1,#9
            b .L_40595c
.L_405ac8:

            cbnz x5,.L_405af4

            mov x19,#9218868437227405312
            mov w0,#20
            bl __sfp_handle_exceptions

            b .L_405860
.L_405adc:

            mov x1,#9
            cbz x5,.L_40595c

            mov x3,#0
            mov x1,#1
            mov x8,x3
            b .L_40595c
.L_405af4:

            cmp x5,#0
            mov x0,#-4503599627370497
            mov x1,#9218868437227405312
            fmov d0,x0
            fmov d1,x1
            mov w0,#20
            fcsel d0,d0,d1,ne
            fmov x19,d0
            bl __sfp_handle_exceptions

            b .L_405860
.L_405b1c:

            bfxil x2,x1,#0,#52
            mov w0,#16
            bfi x2,x3,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            bl __sfp_handle_exceptions

            b .L_405860
.L_405b38:

            mov x3,#2301339409586323455
            mov w0,#16
            and x1,x3,x1, lsr #3
            orr x2,x1,x2, lsl #52
            orr x19,x2,x5, lsl #63
            bl __sfp_handle_exceptions

            b .L_405860
.L_405b54:

            ubfx x1,x1,#3,#52
            and w19,w3,#2047
            cbnz w0,.L_405b78

            mov x2,#0
            bfxil x2,x1,#0,#52
            bfi x2,x19,#52,#11
            bfi x2,x6,#63,#1
            mov x19,x2
            b .L_405860
.L_405b78:

            ubfx w0,w4,#11,#1
            lsl w0,w0,#3
            b .L_405994
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
            tbz w0,#0,.L_405ba0

            movi v1.2s,#0
            fdiv s0,s1,s1
            mrs x1,fpsr
.L_405ba0:

            tbz w0,#1,.L_405bb4

            fmov s1,#1.000000000000000000e+00
            movi v2.2s,#0
            fdiv s0,s1,s2
            mrs x1,fpsr
.L_405bb4:

            tbz w0,#2,.L_405bd4

            mov w2,#50606
            mov w1,#2139095039
            movk w2,#29853,lsl #16
            fmov s1,w1
            fmov s2,w2
            fadd s0,s1,s2
            mrs x1,fpsr
.L_405bd4:

            tbz w0,#3,.L_405be4

            movi v1.2s,#128,lsl #16
            fmul s0,s1,s1
            mrs x1,fpsr
.L_405be4:

            tbz w0,#4,.L_405bfc

            mov w0,#2139095039
            fmov s2,#1.000000000000000000e+00
            fmov s1,w0
            fsub s0,s1,s2
            mrs x0,fpsr
.L_405bfc:

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
.L_405c0c:

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
.L_405c20:
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
.L_405c28:
          .string "write error copying %s: %r"
          .zero 5
.L_405c48:
          .string "error reading %s: %r"
          .zero 3
.L_405c60:
          .string "cat"
          .zero 4
.L_405c68:
          .string "<stdin>"
.L_405c70:
          .string "can't open %s: %r"
          .zero 6
.L_405c88:
          .string "main"
          .zero 3
.L_405c90:
          .string "mode 0x%x not supported"
.L_405ca8:
          .string "lock: %r"
          .zero 7
.L_405cb8:
          .string "<prog>"
          .zero 1
.L_405cc0:
          .string "%s: %s\n"
.L_405cc8:
          .string "fatal"
          .zero 2
.L_405cd0:
          .ascii "interrup"
          .string "ted"
          .zero 4
.L_405ce0:
          .ascii "<"
          .string "nil>"
          .zero 2
.L_405ce8:
          .string "0123456789abcdef"
          .zero 7
.L_405d00:
          .string ":"
          .zero 6
.L_405d08:
          .string "0123456789ABCDEF"
          .zero 7
.L_405d20:
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405d28:
          .string "."
          .zero 6
.L_405d30:
          .string ","
          .zero 6
.L_405d38:
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_405d40:
          .string "fmt/fltfmt.c"
          .zero 3
.L_405d50:
          .string "realchr != 'g'"
          .zero 1
.L_405d60:
          .string "nan"
          .zero 4
.L_405d68:
          .string "NAN"
          .zero 4
.L_405d70:
          .string "inf"
          .zero 4
.L_405d78:
          .string "INF"
          .zero 4
.L_405d80:
          .string "-inf"
          .zero 3
.L_405d88:
          .string "-INF"
          .zero 3
.L_405d90:
          .string "infinity"
          .zero 7
.L_405da0:
          .string "15625"
          .zero 2
.L_405da8:
          .string "1953125"
.L_405db0:
          .string "1220703125"
          .zero 5
.L_405dc0:
          .string "152587890625"
          .zero 3
.L_405dd0:
          .string "19073486328125"
          .zero 1
.L_405de0:
          .string "11920928955078125"
          .zero 6
.L_405df8:
          .string "1490116119384765625"
          .zero 4
.L_405e10:
          .ascii "7450580596923828"
.L_405e20:
          .string "125"
          .zero 4
.L_405e28:
          .string "63"
          .zero 5
.L_405e30:
          .string "511"
          .zero 4
.L_405e38:
          .string "8191"
          .zero 3
.L_405e40:
          .string "65535"
          .zero 2
.L_405e48:
          .string "524287"
          .zero 1
.L_405e50:
          .string "8388607"
.L_405e58:
          .ascii "67108863"
.L_405e60:
          .zero 1
          .zero 7
.L_405e68:
          .ascii "13421772"
.L_405e70:
          .string "7"
          .zero 6
.L_405e78:
          .byte 0x2
          .byte 0x97
          .byte 0x59
          .byte 0x84
          .byte 0x76
          .byte 0x35
          .byte 0xf2
          .byte 0x60
.L_405e80:
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
          .quad .L_405d60
          .quad .L_405d68
          .quad .L_405d70
          .quad .L_405d78
          .quad .L_405d80
          .quad .L_405d88
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
.L_4200c8:
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
          .quad .L_405e60
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e70
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e28
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e30
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x4
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e38
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e40
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e48
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e50
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x8
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e58
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e68
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
          .quad .L_405e60
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x3
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e20
          .byte 0x6
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x5
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405da0
          .byte 0x9
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x7
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405da8
          .byte 0xd
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xa
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405db0
          .byte 0x10
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xc
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405dc0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0xe
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405dd0
          .byte 0x17
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x11
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405de0
          .byte 0x1a
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405df8
          .byte 0x1b
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x13
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .quad .L_405e10
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
.globl _sysfatal
.type _sysfatal, @object
.size _sysfatal, 8
#-----------------------------------
_sysfatal:
          .zero 8
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
.L_420b20:
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
.symver open64,open64@GLIBC_2.17
.globl open64
.type open64, @function
#-----------------------------------
#-----------------------------------
.symver read,read@GLIBC_2.17
.globl read
.type read, @function
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
