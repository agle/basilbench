[INFO]  Reading GTIRB file:     "basilbench/cntlm-noduk/cntlm-noduk.gtirb"
[INFO]  Module cntlm-noduk has integral symbols; attempting to assign referents...
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
.L_4020b8:

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
            sub sp,sp,#704
.cfi_def_cfa_offset 704
            stp fp,lr,[sp]
.cfi_offset 29, -704
.cfi_offset 30, -696
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -688
.cfi_offset 20, -680
            adrp x19, quit
            add x19,x19, :lo12:quit
            stp x21,x22,[sp,#32]
.cfi_offset 21, -672
.cfi_offset 22, -664
            mov x22,x1
            mov w21,w0
            mov x0,#4096
            stp x23,x24,[sp,#48]
.cfi_offset 23, -656
.cfi_offset 24, -648
            adrp x23, .L_413218
            stp x25,x26,[sp,#64]
            adrp x24, .L_415848
            add x23,x23, :lo12:.L_413218
            stp x27,x28,[sp,#80]
.cfi_offset 25, -640
.cfi_offset 26, -632
.cfi_offset 27, -624
.cfi_offset 28, -616
            add x24,x24, :lo12:.L_415848
            mov x20,#0
            stp xzr,xzr,[sp,#256]
            stp xzr,xzr,[sp,#272]
            bl zmalloc

            str x0,[sp,#208]
            bl new_auth

            mov x1,x0
            mov x0,#50
            str x1,[x19,#88]
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#144]
            bl zmalloc

            mov x26,x0
            mov x0,#50
            str x26,[sp,#104]
            bl zmalloc

            mov x25,x0
            mov x0,#50
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#184]
            mov w26,#0
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#192]
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#200]
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#120]
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#160]
            bl zmalloc

            mov x1,x0
            mov x0,#50
            str x1,[sp,#168]
            bl zmalloc

            str x0,[sp,#136]
            mov w2,#24
            adrp x1, .L_413110
            add x1,x1, :lo12:.L_413110
            str x1,[sp,#216]
            mov x0,x1
            mov w1,#34
            bl openlog

            mov w0,#6
            adrp x1, .L_413118
            add x1,x1, :lo12:.L_413118
            bl syslog

            mov w0,#1
            str wzr,[sp,#96]
            str xzr,[sp,#112]
            stp wzr,w0,[sp,#128]
            str wzr,[sp,#152]
            stp wzr,wzr,[sp,#176]
.L_402884:

            mov x2,x23
            mov x1,x22
            mov w0,w21
            bl __posix_getopt

            cmn w0,#1
            b.eq .L_4028c8
.L_40289c:

            sub w1,w0,#65
            cmp w1,#54
            b.ls .L_402b60
.L_4028a8:

            mov w0,#2
            mov x2,x23
            mov x1,x22
            str w0,[sp,#96]
            mov w0,w21
            bl __posix_getopt

            cmn w0,#1
            b.ne .L_40289c
.L_4028c8:

            ldr w0,[sp,#96]
            cbnz w0,.L_403588

            ldr w0,[x19,#4]
            cbnz w0,.L_403270

            cbz x20,.L_40300c
.L_4028dc:

            mov x0,x20
            bl config_open

            mov x23,x0
            cbz x0,.L_403f58

            mov x0,x20
            bl free

            adrp x0, optind
            mov x20,x23
            ldr w23,[x0,:lo12:optind]
            cmp w23,w21
            b.lt .L_402930

            b .L_402974
.L_40290c:

            mov w1,#0
            mov x0,x24
            bl parent_add

            ldr x1,[sp,#240]
            mov w0,#1
            cbz x1,.L_403524
.L_402924:

            add w23,w23,w0
            cmp w21,w23
            b.le .L_402970
.L_402930:

            sbfiz x27,x23,#3,#32
            mov w1,#58
            ldr x24,[x22,x27]
            mov x0,x24
            bl strchr

            str x0,[sp,#240]
            cbnz x0,.L_40290c

            add w28,w23,#1
            cmp w28,w21
            b.lt .L_403558

            mov x0,x24
            mov w1,#0
            bl parent_add

            ldr x0,[sp,#240]
            cbz x0,.L_403524

            mov w23,w28
.L_402970:

            cbz x20,.L_40301c
.L_402974:

            mov x0,#50
            bl zmalloc

            adrp x1, .L_413fd0
            add x1,x1, :lo12:.L_413fd0
            str x0,[sp,#240]
            mov x0,x20
            bl config_pop

            mov x21,x0
            cbz x0,.L_4029ac

            ldr x0,[sp,#240]
            ldrb w1,[x0]
            cbz w1,.L_403bf8
.L_4029a4:

            mov x0,x21
            bl free
.L_4029ac:

            ldr x21,[sp,#240]
            adrp x22, .L_413fd8
            add x22,x22, :lo12:.L_413fd8
            mov x1,x21
            mov x0,x22
            bl strcasecmp

            cmp w0,#0
            mov x0,x21
            cset w21,eq
            orr w21,w21,w26
            bl free

            mov x0,#50
            bl zmalloc

            mov x2,x0
            adrp x1, .L_413fe0
            mov x0,x20
            add x1,x1, :lo12:.L_413fe0
            str x2,[sp,#240]
            bl config_pop

            mov x24,x0
            cbz x0,.L_402a14

            ldr x0,[sp,#240]
            ldrb w1,[x0]
            cbz w1,.L_403c08
.L_402a0c:

            mov x0,x24
            bl free
.L_402a14:

            ldr x24,[sp,#240]
            mov x0,x22
            mov x1,x24
            bl strcasecmp

            cbz w0,.L_403b18
.L_402a28:

            mov x0,x24
            adrp x22, .L_413ff0
            bl free

            add x22,x22, :lo12:.L_413ff0
            b .L_402a50
.L_402a3c:

            add x0,sp,#256
            mov w2,w21
            bl tunnel_add

            ldr x0,[sp,#240]
            bl free
.L_402a50:

            mov x1,x22
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x1,x0
            cbnz x0,.L_402a3c

            adrp x22, .L_413158
            adrp x24, .L_413ff8
            add x22,x22, :lo12:.L_413158
            add x24,x24, :lo12:.L_413ff8
            b .L_402a94
.L_402a7c:

            mov x0,x22
            mov w3,w21
            add x1,sp,#264
            bl listen_add

            ldr x0,[sp,#240]
            bl free
.L_402a94:

            mov x1,x24
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x2,x0
            cbnz x0,.L_402a7c

            adrp x24, .L_414000
            adrp x27, .L_413160
            add x24,x24, :lo12:.L_414000
            add x27,x27, :lo12:.L_413160
            b .L_402ad8
.L_402ac0:

            mov x0,x27
            mov w3,w21
            add x1,sp,#272
            bl listen_add

            ldr x0,[sp,#240]
            bl free
.L_402ad8:

            mov x1,x24
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x2,x0
            cbnz x0,.L_402ac0

            adrp x21, .L_414030
            adrp x24, .L_414010
            add x21,x21, :lo12:.L_414030
            add x24,x24, :lo12:.L_414010
            b .L_402b30
.L_402b04:

            mov x0,x2
            bl get_http_header_name

            mov x26,x0
            mov x1,x0
            ldr x0,[x19,#120]
            bl hlist_in

            cbz w0,.L_40352c
.L_402b20:

            mov x0,x26
            bl free
.L_402b28:

            ldr x0,[sp,#240]
            bl free
.L_402b30:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            cbz x0,.L_4032d4

            bl is_http_header

            ldr x2,[sp,#240]
            cbnz w0,.L_402b04

            mov x1,x24
            mov w0,#3
            bl syslog

            b .L_402b28
.L_402b60:

            ldrh w1,[x24,w1,uxtw #1]
            adr x2, .L_402b70
            add x1,x2,w1, sxth #2
            br x1
.L_402b70:

            adrp x1, optarg
            cmp w0,#65
            cset w2,ne
            add x0,sp,#280
            ldr x1,[x1,:lo12:optarg]
            bl acl_add

            cbnz w0,.L_402884
.L_402b8c:

            mov w0,#1
            bl myexit
.L_402b94:

            adrp x3, optarg
            mov w27,#1
            mov w2,#384
            mov w1,#577
            ldr x0,[x3,:lo12:optarg]
            str w27,[x19,#4]
            bl open

            mov w28,w0
            adrp x3, optarg
            tbnz w0,#31,.L_404788

            ldr x1,[x3,:lo12:optarg]
            adrp x0, .L_4131c0
            add x0,x0, :lo12:.L_4131c0
            bl printf

            mov w1,w27
            mov w0,w28
            bl dup2

            mov w0,w28
            mov w1,#2
            bl dup2

            str w27,[sp,#128]
.L_402be8:

            str wzr,[sp,#132]
            b .L_402884
.L_402bf0:

            mov w27,#1
            str w27,[x19,#4]
            stp w27,wzr,[sp,#128]
            b .L_402884
.L_402c00:

            adrp x0, optarg
            adrp x1, .L_4131e0
            add x1,x1, :lo12:.L_4131e0
            ldr x27,[x0,:lo12:optarg]
            mov x0,x27
            bl strcspn

            mov x28,x0
            mov x0,x27
            bl strlen

            cmp w28,w0
            b.eq .L_403a1c

            ldr x0,[sp,#144]
            cmp w28,#49
            mov w2,#49
            csel w2,w28,w2,le
            add w2,w2,#1
            mov x1,x27
            sxtw x2,w2
            bl strlcpy

            adrp x0, optarg
            sxtw x3,w28
            add x1,x3,#1
            ldr x2,[x0,:lo12:optarg]
            ldr x0,[sp,#104]
            add x1,x2,x1
            mov x2,#50
            bl strlcpy

            b .L_402884
.L_402c70:

            mov w0,#1
            str w0,[x19,#16]
            b .L_402884
.L_402c7c:

            adrp x27, optarg
            ldr x0,[x27,:lo12:optarg]
            bl is_http_header

            cbz w0,.L_402884

            ldr x0,[x27,:lo12:optarg]
            ldr x28,[x19,#120]
            bl get_http_header_name

            mov x1,x0
            ldr x0,[x27,:lo12:optarg]
            mov x27,x1
            bl get_http_header_value

            mov x2,x0
            mov x1,x27
            mov x0,x28
            mov w4,#0
            mov w3,#0
            bl hlist_add

            str x0,[x19,#120]
            b .L_402884
.L_402cc8:

            adrp x1, optarg
            mov x2,#50
            ldr x0,[sp,#120]
            ldr x1,[x1,:lo12:optarg]
            bl strlcpy

            b .L_402884
.L_402ce0:

            adrp x1, optarg
            mov x2,#50
            ldr x0,[sp,#104]
            ldr x1,[x1,:lo12:optarg]
            bl strlcpy

            b .L_402884
.L_402cf8:

            adrp x0, optarg
            ldr x0,[x0,:lo12:optarg]
            bl strdup

            mov x20,x0
            b .L_402884
.L_402d0c:

            mov w0,#1
            str w0,[sp,#128]
            b .L_402884
.L_402d18:

            adrp x28, optarg
            mov x2,#50
            add x27,x28, :lo12:optarg
            mov x0,x25
            ldr x1,[x28,:lo12:optarg]
            bl strlcpy

            ldr x28,[x28,:lo12:optarg]
            mov x0,x28
            bl strlen

            subs w1,w0,#1
            b.mi .L_402884

            mov w2,#42
            strb w2,[x28,w1,uxtw]
            sub w1,w0,#2
            cmp w0,#1
            b.eq .L_402884

            mov w0,w1
            nop
            nop
            nop
            nop
.L_402d60:

            ldr x1,[x27]
            strb w2,[x1,x0]
            sub x0,x0,#1
            cmn w0,#1
            b.ne .L_402d60

            b .L_402884
.L_402d78:

            adrp x1, optarg
            mov w3,w26
            adrp x0, .L_413158
            add x0,x0, :lo12:.L_413158
            ldr x2,[x1,:lo12:optarg]
            add x1,sp,#264
            bl listen_add

            b .L_402884
.L_402d98:

            adrp x1, stderr
            adrp x0, .L_4131e8
            mov x2,#46
            add x0,x0, :lo12:.L_4131e8
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite
.L_402db4:

            mov w0,#1
            str w0,[sp,#96]
            b .L_402884
.L_402dc0:

            adrp x1, optarg
            mov x2,#50
            ldr x0,[sp,#136]
            ldr x1,[x1,:lo12:optarg]
            bl strlcpy

            b .L_402884
.L_402dd8:

            adrp x1, optarg
            mov x2,#50
            ldr x0,[sp,#168]
            ldr x1,[x1,:lo12:optarg]
            bl strlcpy

            b .L_402884
.L_402df0:

            adrp x0, optarg
            mov w1,#1
            mov w2,#10
            str w1,[x19,#100]
            ldr x0,[x0,:lo12:optarg]
            mov x1,#0
            bl strtol

            str x0,[x19,#104]
            b .L_402884
.L_402e14:

            adrp x0, optarg
            ldr x0,[x0,:lo12:optarg]
            bl strdup

            mov x27,x0
            mov w1,#58
            str x0,[sp,#240]
            bl strchr

            cbz x0,.L_403a30

            mov x2,x0
            mov w4,#1
            ldr x0,[x19,#80]
            mov x1,x27
            strb wzr,[x2],#1
            mov w3,w4
            bl hlist_add

            str x0,[x19,#80]
            b .L_402884
.L_402e58:

            adrp x1, optarg
            mov x2,#50
            ldr x0,[sp,#160]
            ldr x1,[x1,:lo12:optarg]
            bl strlcpy

            b .L_402884
.L_402e70:

            adrp x1, optarg
            mov w3,w26
            adrp x0, .L_413160
            add x0,x0, :lo12:.L_413160
            ldr x2,[x1,:lo12:optarg]
            add x1,sp,#272
            bl listen_add

            b .L_402884
.L_402e90:

            adrp x0, optarg
            ldr x27,[x19,#8]
            ldr x0,[x0,:lo12:optarg]
            bl strdup

            mov x1,x0
            mov x0,x27
            str x1,[sp,#240]
            bl noproxy_add

            mov x1,x0
            ldr x0,[sp,#240]
            str x1,[x19,#8]
            bl free

            b .L_402884
.L_402ec4:

            adrp x0, optarg
            ldr x0,[x0,:lo12:optarg]
            bl strdup

            str x0,[sp,#112]
            b .L_402884
.L_402ed8:

            adrp x1, optarg
            mov w2,w26
            add x0,sp,#256
            ldr x1,[x1,:lo12:optarg]
            bl tunnel_add

            b .L_402884
.L_402ef0:

            mov w0,#1
            str w0,[sp,#180]
            b .L_402884
.L_402efc:

            mov w0,#1
            str w0,[sp,#176]
            b .L_402884
.L_402f08:

            adrp x28, optarg
            add x27,x28, :lo12:optarg
            ldr x0,[x28,:lo12:optarg]
            ldrb w1,[x0]
            cbz w1,.L_402884

            ldr x1,[x19,#104]
            mov w2,#1
            str w2,[x19,#100]
            cbnz x1,.L_402f34

            mov x1,#1
            str x1,[x19,#104]
.L_402f34:

            bl strlen

            add w28,w0,#3
            sxtw x28,w28
            mov x0,x28
            bl zmalloc

            ldr x3,[x27]
            mov x1,x28
            adrp x2, .L_413150
            add x2,x2, :lo12:.L_413150
            str x0,[sp,#240]
            bl snprintf

            ldr x0,[x19,#112]
            mov x1,#0
            ldr x2,[sp,#240]
            bl plist_add

            str x0,[x19,#112]
            b .L_402884
.L_402f78:

            adrp x27, optarg
            add x1,sp,#240
            mov w2,#0
            ldr x0,[x27,:lo12:optarg]
            bl strtoul

            mov x28,x0
            ldr x0,[x27,:lo12:optarg]
            add x1,sp,#240
            mov w2,#0
            bl strtoul

            mov x1,x0
            ldr x0,[x27,:lo12:optarg]
            mov x3,x1
            mov w2,#0
            add x1,sp,#240
            str x3,[sp,#152]
            bl strtoul

            mov x1,x0
            ldr x3,[sp,#152]
            mov w2,#0
            ldr x0,[x27,:lo12:optarg]
            and w27,w1,#16711680
            lsl w3,w3,#8
            add x1,sp,#240
            and w3,w3,#16711680
            orr w27,w3,w27, lsr #8
            bl strtoul

            lsr w0,w0,#24
            orr w28,w0,w28, lsl #24
            orr w0,w28,w27
            str w0,[sp,#152]
            b .L_402884
.L_402ff8:

            mov w0,#1
            str w0,[x19,#96]
            b .L_402884
.L_403004:

            mov w26,#1
            b .L_402884
.L_40300c:

            adrp x0, optind
            ldr w23,[x0,:lo12:optind]
            cmp w21,w23
            b.gt .L_402930
.L_40301c:

            mov x0,x20
            bl config_close

            ldr w0,[sp,#176]
            cbz w0,.L_403e20

            ldr x0,[sp,#112]
            cmp x0,#0
            cset w20,eq
.L_403038:

            ldr x0,[sp,#120]
            ldrb w0,[x0]
            cbz w0,.L_403ef4
.L_403044:

            ldr x1,[sp,#136]
            ldrb w0,[x1]
            cbz w0,.L_40307c

            adrp x0, .L_4141c0
            add x0,x0, :lo12:.L_4141c0
            bl strcasecmp

            cbnz w0,.L_403fdc

            ldr x0,[x19,#88]
            adrp x1, .L_415740
            mov w2,#1
            ldr d31,[x1,:lo12:.L_415740]
            add x1,x0,#512
            str w2,[x0,#308]
            stur d31,[x1,#-212]
.L_40307c:

            ldr x0,[sp,#272]
            cbz x0,.L_40308c

            ldr x0,[x19,#80]
            cbz x0,.L_4041b0
.L_40308c:

            cbnz w20,.L_4040a8
.L_403090:

            ldr w0,[sp,#152]
            cbnz w0,.L_403f24
.L_403098:

            ldr x0,[sp,#112]
            ldr w1,[sp,#176]
            cmp x0,#0
            cset w0,ne
            orr w20,w0,w1
            cbnz w20,.L_4030c0

            ldr w0,[sp,#180]
            cbz w0,.L_403164

            ldr w0,[x19,#96]
            cbnz w0,.L_403164
.L_4030c0:

            add x21,sp,#384
            adrp x0, .L_414290
            add x0,x0, :lo12:.L_414290
            bl printf

            mov x1,x21
            mov w0,#0
            bl tcgetattr

            ldp q31,q29,[x21]
            add x2,sp,#448
            ldr q30,[x21,#32]
            mov w1,#-10
            stp q31,q29,[x2]
            ldr w0,[sp,#460]
            ldur q31,[x21,#44]
            and w0,w0,w1
            str q30,[x2,#32]
            mov w1,#1
            stur q31,[x2,#44]
            str w0,[sp,#460]
            mov w0,#0
            bl tcsetattr

            adrp x2, stdin
            mov w1,#50
            mov x0,x25
            ldr x2,[x2,:lo12:stdin]
            bl fgets

            mov x3,x0
            mov x2,x21
            mov w1,#1
            mov w0,#0
            str x3,[sp,#240]
            bl tcsetattr

            mov x0,x25
            bl strlen

            sub w23,w0,#1
            sxtw x1,w23
            ldrb w0,[x25,w23,sxtw]
            cmp w0,#10
            b.eq .L_4040cc
.L_40315c:

            mov w0,#10
            bl putchar
.L_403164:

            ldrb w0,[x25]
            cbnz w0,.L_403a4c

            ldr x0,[sp,#184]
            ldrb w0,[x0]
            cbnz w0,.L_4040e8
.L_403178:

            ldr x0,[sp,#192]
            ldrb w0,[x0]
            cbnz w0,.L_404118
.L_403184:

            ldr x0,[sp,#200]
            ldrb w0,[x0]
            cbnz w0,.L_404144
.L_403190:

            ldr x0,[x19,#88]
            ldr x1,[sp,#144]
            cmp x0,#0
            ccmp x1,#0,#4,ne
            b.eq .L_4031ac

            mov x2,#50
            bl strlcpy
.L_4031ac:

            ldr x1,[sp,#104]
            ldr x0,[x19,#88]
            cmp x1,#0
            ccmp x0,#0,#4,ne
            b.eq .L_4031cc

            add x0,x0,#50
            mov x2,#50
            bl strlcpy
.L_4031cc:

            ldr x0,[x19,#88]
            cbz x0,.L_4031e4

            ldr x1,[sp,#120]
            add x0,x0,#100
            mov x2,#50
            bl strlcpy
.L_4031e4:

            ldr x0,[sp,#144]
            bl free

            ldr x0,[sp,#104]
            bl free

            ldr x0,[sp,#120]
            bl free

            mov x0,x25
            bl free

            ldr x0,[sp,#184]
            bl free

            ldr x0,[sp,#192]
            bl free

            ldr x0,[sp,#200]
            bl free

            ldr x0,[sp,#136]
            bl free

            ldr x0,[sp,#112]
            cbnz x0,.L_403e40

            ldr w0,[sp,#176]
            cbnz w0,.L_404028

            ldr w0,[x19,#96]
            cbnz w0,.L_403cf8

            ldr x20,[x19,#88]
            ldr w0,[x20,#304]
            cbz w0,.L_403cd8

            add x0,x20,#200
            mov x1,#50
            bl is_memory_all_zero

            cbz w0,.L_403cd8
.L_403258:

            adrp x1, .L_414358
            add x1,x1, :lo12:.L_414358
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_403270:

            adrp x0, .L_413f58
            add x0,x0, :lo12:.L_413f58
            bl printf

            adrp x0, .L_413f80
            add x0,x0, :lo12:.L_413f80
            bl printf

            cmp w21,#0
            b.le .L_4032b4

            adrp x23, .L_413f98
            mov x27,x22
            add x23,x23, :lo12:.L_413f98
            add x24,x22,w21, uxtw #3
.L_4032a0:

            ldr x1,[x27],#8
            mov x0,x23
            bl printf

            cmp x27,x24
            b.ne .L_4032a0
.L_4032b4:

            mov w0,#10
            bl putchar

            cbnz x20,.L_4028dc

            b .L_40300c
.L_4032c4:

            mov w1,#0
            bl parent_add

            ldr x0,[sp,#240]
            bl free
.L_4032d4:

            mov x1,x22
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            cbnz x0,.L_4032c4

            ldr x0,[sp,#280]
            cbz x0,.L_403b24
.L_4032f0:

            mov x0,x20
            adrp x1, .L_414048
            add x1,x1, :lo12:.L_414048
            bl config_pop

            mov x21,x0
            cbz x0,.L_40331c

            ldr x0,[sp,#136]
            ldrb w0,[x0]
            cbz w0,.L_403c3c
.L_403314:

            mov x0,x21
            bl free
.L_40331c:

            mov x0,x20
            adrp x1, .L_414050
            add x1,x1, :lo12:.L_414050
            bl config_pop

            mov x21,x0
            cbz x0,.L_403348

            ldr x0,[sp,#104]
            ldrb w0,[x0]
            cbz w0,.L_403c28
.L_403340:

            mov x0,x21
            bl free
.L_403348:

            mov x0,x20
            adrp x1, .L_414058
            add x1,x1, :lo12:.L_414058
            bl config_pop

            mov x21,x0
            cbz x0,.L_403370

            ldrb w0,[x25]
            cbz w0,.L_403cc4
.L_403368:

            mov x0,x21
            bl free
.L_403370:

            mov x0,x20
            adrp x1, .L_414068
            add x1,x1, :lo12:.L_414068
            bl config_pop

            mov x21,x0
            cbz x0,.L_40339c

            ldr x0,[sp,#184]
            ldrb w0,[x0]
            cbz w0,.L_403cb0
.L_403394:

            mov x0,x21
            bl free
.L_40339c:

            mov x0,x20
            adrp x1, .L_414078
            add x1,x1, :lo12:.L_414078
            bl config_pop

            mov x21,x0
            cbz x0,.L_4033c8

            ldr x0,[sp,#192]
            ldrb w0,[x0]
            cbz w0,.L_403c9c
.L_4033c0:

            mov x0,x21
            bl free
.L_4033c8:

            mov x0,x20
            adrp x1, .L_414080
            add x1,x1, :lo12:.L_414080
            bl config_pop

            mov x21,x0
            cbz x0,.L_4033f4

            ldr x0,[sp,#200]
            ldrb w0,[x0]
            cbz w0,.L_403c88
.L_4033ec:

            mov x0,x21
            bl free
.L_4033f4:

            mov x0,x20
            adrp x1, .L_414088
            add x1,x1, :lo12:.L_414088
            bl config_pop

            mov x21,x0
            cbz x0,.L_403420

            ldr x0,[sp,#144]
            ldrb w0,[x0]
            cbz w0,.L_403c74
.L_403418:

            mov x0,x21
            bl free
.L_403420:

            mov x0,x20
            adrp x1, .L_414098
            add x1,x1, :lo12:.L_414098
            bl config_pop

            mov x21,x0
            cbz x0,.L_40344c

            ldr x0,[sp,#120]
            ldrb w0,[x0]
            cbz w0,.L_403c60
.L_403444:

            mov x0,x21
            bl free
.L_40344c:

            mov x0,#50
            bl zmalloc

            adrp x1, .L_4140a8
            add x1,x1, :lo12:.L_4140a8
            str x0,[sp,#240]
            mov x0,x20
            bl config_pop

            mov x21,x0
            cbz x0,.L_403484

            ldr x0,[sp,#240]
            ldrb w1,[x0]
            cbz w1,.L_403c50
.L_40347c:

            mov x0,x21
            bl free
.L_403484:

            ldr w0,[sp,#152]
            cbz w0,.L_403f70
.L_40348c:

            ldr x0,[sp,#240]
            bl free

            mov x0,#50
            bl zmalloc

            adrp x1, .L_4140b0
            add x1,x1, :lo12:.L_4140b0
            str x0,[sp,#240]
            mov x0,x20
            bl config_pop

            mov x21,x0
            cbz x0,.L_4034cc

            ldr x0,[sp,#240]
            ldrb w1,[x0]
            cbz w1,.L_403c18
.L_4034c4:

            mov x0,x21
            bl free
.L_4034cc:

            ldr x0,[x19,#104]
            cbz x0,.L_403bcc
.L_4034d4:

            ldr x0,[sp,#240]
            adrp x21, .L_4140c0
            add x21,x21, :lo12:.L_4140c0
            bl free

            b .L_4034f0
.L_4034e8:

            mov x0,x1
            bl free
.L_4034f0:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x1,x0
            cbz x0,.L_4038c8

            ldrb w0,[x1]
            cbz w0,.L_4034e8

            ldr x0,[x19,#8]
            bl noproxy_add

            str x0,[x19,#8]
            ldr x1,[sp,#240]
            b .L_4034e8
.L_403524:

            mov w0,#2
            b .L_402924
.L_40352c:

            ldr x0,[sp,#240]
            ldr x27,[x19,#120]
            bl get_http_header_value

            mov x2,x0
            mov x1,x26
            mov x0,x27
            mov w4,#0
            mov w3,#1
            bl hlist_add

            str x0,[x19,#120]
            b .L_402b20
.L_403558:

            add x27,x22,x27
            mov w2,#10
            mov x1,#0
            ldr x0,[x27,#8]
            bl strtol

            mov w1,w0
            mov x0,x24
            bl parent_add

            ldr x0,[sp,#240]
            cbz x0,.L_403524

            mov w23,w28
            b .L_402930
.L_403588:

            adrp x0, .L_413258
            add x0,x0, :lo12:.L_413258
            bl puts

            adrp x0, .L_4132a0
            add x0,x0, :lo12:.L_4132a0
            bl puts

            ldr w0,[sp,#96]
            cmp w0,#2
            b.eq .L_403f48

            adrp x0, stdout
            mov w20,#0
            ldr x19,[x0,:lo12:stdout]
.L_4035b8:

            mov x0,x19
            ldr x2,[x22]
            adrp x1, .L_4133e8
            add x1,x1, :lo12:.L_4133e8
            bl fprintf

            mov x3,x19
            mov x2,#97
            mov x1,#1
            adrp x0, .L_413438
            add x0,x0, :lo12:.L_413438
            bl fwrite

            mov x3,x19
            mov x2,#165
            mov x1,#1
            adrp x0, .L_4134a0
            add x0,x0, :lo12:.L_4134a0
            bl fwrite

            mov x3,x19
            mov x2,#42
            mov x1,#1
            adrp x0, .L_413548
            add x0,x0, :lo12:.L_413548
            bl fwrite

            mov x3,x19
            mov x2,#119
            mov x1,#1
            adrp x0, .L_413578
            add x0,x0, :lo12:.L_413578
            bl fwrite

            mov x3,x19
            mov x2,#62
            mov x1,#1
            adrp x0, .L_4135f0
            add x0,x0, :lo12:.L_4135f0
            bl fwrite

            mov x3,x19
            mov x2,#59
            mov x1,#1
            adrp x0, .L_413630
            add x0,x0, :lo12:.L_413630
            bl fwrite

            mov x3,x19
            mov x2,#45
            mov x1,#1
            adrp x0, .L_413670
            add x0,x0, :lo12:.L_413670
            bl fwrite

            mov x3,x19
            mov x2,#54
            mov x1,#1
            adrp x0, .L_4136a0
            add x0,x0, :lo12:.L_4136a0
            bl fwrite

            mov x3,x19
            mov x2,#71
            mov x1,#1
            adrp x0, .L_4136d8
            add x0,x0, :lo12:.L_4136d8
            bl fwrite

            mov x3,x19
            mov x2,#65
            mov x1,#1
            adrp x0, .L_413720
            add x0,x0, :lo12:.L_413720
            bl fwrite

            mov x3,x19
            mov x2,#76
            mov x1,#1
            adrp x0, .L_413768
            add x0,x0, :lo12:.L_413768
            bl fwrite

            mov x3,x19
            mov x2,#53
            mov x1,#1
            adrp x0, .L_4137b8
            add x0,x0, :lo12:.L_4137b8
            bl fwrite

            mov x3,x19
            mov x2,#44
            mov x1,#1
            adrp x0, .L_4137f0
            add x0,x0, :lo12:.L_4137f0
            bl fwrite

            mov x3,x19
            mov x2,#238
            mov x1,#1
            adrp x0, .L_413820
            add x0,x0, :lo12:.L_413820
            bl fwrite

            mov x3,x19
            mov x2,#68
            mov x1,#1
            adrp x0, .L_413910
            add x0,x0, :lo12:.L_413910
            bl fwrite

            mov x3,x19
            mov x2,#65
            mov x1,#1
            adrp x0, .L_413958
            add x0,x0, :lo12:.L_413958
            bl fwrite

            mov x3,x19
            mov x2,#126
            mov x1,#1
            adrp x0, .L_4139a0
            add x0,x0, :lo12:.L_4139a0
            bl fwrite

            mov x3,x19
            mov x2,#89
            mov x1,#1
            adrp x0, .L_413a20
            add x0,x0, :lo12:.L_413a20
            bl fwrite

            mov x3,x19
            mov x2,#61
            mov x1,#1
            adrp x0, .L_413a80
            add x0,x0, :lo12:.L_413a80
            bl fwrite

            mov x3,x19
            mov x2,#80
            mov x1,#1
            adrp x0, .L_413ac0
            add x0,x0, :lo12:.L_413ac0
            bl fwrite

            mov x3,x19
            mov x2,#69
            mov x1,#1
            adrp x0, .L_413b18
            add x0,x0, :lo12:.L_413b18
            bl fwrite

            mov x3,x19
            mov x2,#156
            mov x1,#1
            adrp x0, .L_413b60
            add x0,x0, :lo12:.L_413b60
            bl fwrite

            mov x3,x19
            mov x2,#128
            mov x1,#1
            adrp x0, .L_413c00
            add x0,x0, :lo12:.L_413c00
            bl fwrite

            mov x3,x19
            mov x2,#95
            mov x1,#1
            adrp x0, .L_413c88
            add x0,x0, :lo12:.L_413c88
            bl fwrite

            mov x3,x19
            mov x2,#70
            mov x1,#1
            adrp x0, .L_413ce8
            add x0,x0, :lo12:.L_413ce8
            bl fwrite

            mov x3,x19
            mov x2,#155
            mov x1,#1
            adrp x0, .L_413d30
            add x0,x0, :lo12:.L_413d30
            bl fwrite

            mov x3,x19
            mov x2,#84
            mov x1,#1
            adrp x0, .L_413dd0
            add x0,x0, :lo12:.L_413dd0
            bl fwrite

            mov x3,x19
            mov x2,#67
            mov x1,#1
            adrp x0, .L_413e28
            add x0,x0, :lo12:.L_413e28
            bl fwrite

            mov x3,x19
            mov x2,#34
            mov x1,#1
            adrp x0, .L_413e70
            add x0,x0, :lo12:.L_413e70
            bl fwrite

            mov x3,x19
            mov x2,#71
            mov x1,#1
            adrp x0, .L_413e98
            add x0,x0, :lo12:.L_413e98
            bl fwrite

            mov x3,x19
            mov x2,#119
            mov x1,#1
            adrp x0, .L_413ee0
            add x0,x0, :lo12:.L_413ee0
            bl fwrite

            mov x1,x19
            mov w0,#10
            bl fputc

            mov w0,w20
            bl exit
.L_4038c8:

            adrp x21, .L_414100
            adrp x22, .L_4140c8
            add x21,x21, :lo12:.L_414100
            add x22,x22, :lo12:.L_4140c8
.L_4038d8:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x24,x0
            cbz x0,.L_403934
.L_4038f0:

            mov w1,#58
            bl strchr

            cbz x0,.L_4039d0

            mov x2,x0
            mov w4,#1
            mov w3,w4
            strb wzr,[x2],#1
            ldr x0,[x19,#80]
            ldr x1,[sp,#240]
            bl hlist_add

            str x0,[x19,#80]
            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x24,x0
            cbnz x0,.L_4038f0
.L_403934:

            adrp x21, .L_414110
            adrp x27, .L_413150
            add x21,x21, :lo12:.L_414110
            add x27,x27, :lo12:.L_413150
            mov w24,#1
            mov x28,#1
            b .L_403958
.L_403950:

            mov x0,x22
            bl free
.L_403958:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            mov x22,x0
            cbz x0,.L_4039e4

            ldr x0,[x19,#104]
            str w24,[x19,#100]
            cbnz x0,.L_403980

            str x28,[x19,#104]
.L_403980:

            mov x0,x22
            bl strlen

            mov w23,w0
            cbz w0,.L_403950

            add w0,w0,#3
            sxtw x22,w0
            mov x0,x22
            bl zmalloc

            ldr x3,[sp,#240]
            mov x1,x22
            mov x2,x27
            mov x22,x0
            bl snprintf

            ldr x0,[x19,#112]
            mov x2,x22
            mov x1,#0
            bl plist_add

            str x0,[x19,#112]
            ldr x22,[sp,#240]
            b .L_403950
.L_4039d0:

            mov x2,x24
            mov x1,x22
            mov w0,#3
            bl syslog

            b .L_4038d8
.L_4039e4:

            ldr x22,[x20]
            cbz x22,.L_40301c

            adrp x21, .L_414120
            add x21,x21, :lo12:.L_414120
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_403a00:

            ldr x2,[x22]
            mov x1,x21
            mov w0,#6
            bl syslog

            ldr x22,[x22,#24]
            cbnz x22,.L_403a00

            b .L_40301c
.L_403a1c:

            ldr x0,[sp,#144]
            mov x1,x27
            mov x2,#50
            bl strlcpy

            b .L_402884
.L_403a30:

            adrp x0, stderr
            mov x2,x27
            adrp x1, .L_413170
            add x1,x1, :lo12:.L_413170
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            b .L_402884
.L_403a4c:

            ldr x0,[x19,#88]
            ldr w0,[x0,#304]
            cmp w0,#0
            ccmp w20,#0,#0,eq
            b.eq .L_403a80

            mov x0,x25
            bl ntlm_hash_nt_password

            ldr x1,[x19,#88]
            str x0,[sp,#240]
            cmp x1,#0
            ccmp x0,#0,#4,ne
            b.ne .L_4041dc
.L_403a7c:

            bl free
.L_403a80:

            ldr x0,[x19,#88]
            ldr w0,[x0,#308]
            cmp w0,#0
            ccmp w20,#0,#0,eq
            b.eq .L_403ab4

            mov x0,x25
            bl ntlm_hash_lm_password

            ldr x1,[x19,#88]
            str x0,[sp,#240]
            cmp x1,#0
            ccmp x0,#0,#4,ne
            b.ne .L_4041c4
.L_403ab0:

            bl free
.L_403ab4:

            ldr x0,[x19,#88]
            ldr w0,[x0,#300]
            cmp w0,#0
            ccmp w20,#0,#0,eq
            b.eq .L_403afc

            ldr x1,[sp,#104]
            mov x2,x25
            ldr x0,[sp,#144]
            bl ntlm2_hash_password

            str x0,[sp,#240]
            ldr x1,[x19,#88]
            cmp x1,#0
            ccmp x0,#0,#4,ne
            b.eq .L_403af8

            add x1,x1,#250
            ldp x2,x3,[x0]
            stp x2,x3,[x1]
.L_403af8:

            bl free
.L_403afc:

            mov x0,x25
            bl strlen

            mov w1,#0
            mov x2,x0
            mov x0,x25
            bl memset

            b .L_403190
.L_403b18:

            mov w0,#1
            str w0,[x19,#96]
            b .L_402a28
.L_403b24:

            ldr x24,[x20]
            adrp x21, .L_414038
            cbz x24,.L_404920

            adrp x22, .L_414040
            add x21,x21, :lo12:.L_414038
            add x22,x22, :lo12:.L_414040
            nop
            nop
            nop
            nop
.L_403b40:

            ldr x26,[x24]
            mov x0,x21
            mov x1,x26
            bl strcasecmp

            mov w23,w0
            cbz w0,.L_403b68

            mov x1,x26
            mov x0,x22
            bl strcasecmp

            cbnz w0,.L_403b80
.L_403b68:

            ldr x1,[x24,#8]
            cmp w23,#0
            cset w2,ne
            add x0,sp,#280
            bl acl_add

            cbz w0,.L_402b8c
.L_403b80:

            ldr x24,[x24,#24]
            cbnz x24,.L_403b40

            b .L_403b90
.L_403b8c:

            bl free
.L_403b90:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            cbnz x0,.L_403b8c

            adrp x21, .L_414040
            add x21,x21, :lo12:.L_414040
            b .L_403bb4
.L_403bb0:

            bl free
.L_403bb4:

            mov x1,x21
            mov x0,x20
            bl config_pop

            str x0,[sp,#240]
            cbnz x0,.L_403bb0

            b .L_4032f0
.L_403bcc:

            ldr x0,[sp,#240]
            ldrb w1,[x0]
            cbz w1,.L_4034d4

            mov w1,#1
            mov w2,#10
            str w1,[x19,#100]
            mov x1,#0
            bl strtol

            sxtw x0,w0
            str x0,[x19,#104]
            b .L_4034d4
.L_403bf8:

            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_4029a4
.L_403c08:

            mov x1,x24
            mov x2,#50
            bl strlcpy

            b .L_402a0c
.L_403c18:

            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_4034c4
.L_403c28:

            ldr x0,[sp,#104]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_403340
.L_403c3c:

            ldr x0,[sp,#136]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_403314
.L_403c50:

            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_40347c
.L_403c60:

            ldr x0,[sp,#120]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_403444
.L_403c74:

            ldr x0,[sp,#144]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_403418
.L_403c88:

            ldr x0,[sp,#200]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_4033ec
.L_403c9c:

            ldr x0,[sp,#192]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_4033c0
.L_403cb0:

            ldr x0,[sp,#184]
            mov x1,x21
            mov x2,#50
            bl strlcpy

            b .L_403394
.L_403cc4:

            mov x1,x21
            mov x0,x25
            mov x2,#50
            bl strlcpy

            b .L_403368
.L_403cd8:

            ldr w0,[x20,#308]
            cbnz w0,.L_4041f8
.L_403ce0:

            ldr w0,[x20,#300]
            cbz w0,.L_403cf8

            add x0,x20,#250
            mov x1,#50
            bl is_memory_all_zero

            cbnz w0,.L_403258
.L_403cf8:

            ldr w0,[sp,#132]
            cbz w0,.L_4042d0

            ldr w0,[x19,#4]
            cbnz w0,.L_40420c
.L_403d08:

            bl fork

            cmn w0,#1
            b.eq .L_4049f8

            cbnz w0,.L_4041f0

            bl setsid

            mov w0,#0
            bl umask

            adrp x0, .L_411bf8
            add x0,x0, :lo12:.L_411bf8
            bl chdir

            cbnz w0,.L_4049e8
.L_403d34:

            adrp x0, .L_414420
            mov w1,#2
            add x0,x0, :lo12:.L_414420
            bl open

            mov w23,w0
            tbz w0,#31,.L_404860
.L_403d4c:

            ldr x0,[sp,#216]
            mov w2,#24
            mov w1,#3
            bl openlog

            adrp x1, .L_414430
            mov w0,#6
            add x1,x1, :lo12:.L_414430
            bl syslog
.L_403d6c:

            ldr w0,[sp,#128]
            cbz w0,.L_4042f4

            mov w0,#255
            bl setlogmask
.L_403d7c:

            ldr x0,[sp,#168]
            ldrb w0,[x0]
            cbnz w0,.L_4047dc
.L_403d88:

            ldr x20,[sp,#160]
            ldrb w0,[x20]
            cbz w0,.L_404310

            mov w0,#0
            bl umask

            mov x0,x20
            mov w2,#420
            mov w1,#577
            bl open

            mov w20,w0
            tbnz w0,#31,.L_4048c4

            mov x0,#50
            bl zmalloc

            mov x21,x0
            str x0,[sp,#240]
            bl getpid

            mov w3,w0
            mov x1,#50
            mov x0,x21
            adrp x2, .L_414468
            add x2,x2, :lo12:.L_414468
            bl snprintf

            ldr x21,[sp,#240]
            mov x0,x21
            bl strlen

            mov x1,x21
            mov x21,x0
            mov w0,w20
            sxtw x2,w21
            bl write_wrapper

            cmp w21,w0
            b.eq .L_404300

            adrp x1, .L_414538
            add x1,x1, :lo12:.L_414538
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_403e20:

            bl parent_available

            cbz w0,.L_404174

            ldr x0,[sp,#112]
            cbnz x0,.L_4049e0

            ldr x0,[sp,#264]
            cbz x0,.L_4042c0

            mov w20,#1
            b .L_403038
.L_403e40:

            bl magic_auth_detect
.L_403e44:

            mov w26,#0
            mov w25,#0
.L_403e4c:

            ldr x0,[sp,#208]
            add x20,x19,#128
            bl free

            sub w2,w25,w26
            adrp x1, .L_414618
            add x1,x1, :lo12:.L_414618
            mov w0,#6
            bl syslog

            mov x0,x20
            bl pthread_mutex_lock

            ldr x0,[x19,#176]
            bl plist_free

            mov x0,x20
            bl pthread_mutex_unlock

            ldr x0,[x19,#120]
            bl hlist_free

            ldr x0,[x19,#112]
            bl plist_free

            ldr x0,[x19,#8]
            bl plist_free

            ldr x0,[sp,#256]
            bl plist_free

            ldr x0,[sp,#264]
            bl plist_free

            ldr x0,[sp,#272]
            bl plist_free

            ldr x0,[sp,#280]
            bl plist_free

            ldr x0,[sp,#160]
            ldrb w0,[x0]
            cbnz w0,.L_40401c
.L_403ec8:

            ldr x0,[sp,#168]
            bl free

            ldr x0,[sp,#160]
            bl free

            ldr x0,[sp,#112]
            bl free

            ldr x0,[x19,#88]
            bl free

            bl parent_free

            mov w0,#0
            bl exit
.L_403ef4:

            ldr x21,[sp,#120]
            mov x1,#50
            mov x0,x21
            bl gethostname

            ldrb w0,[x21]
            cbz w0,.L_4042ac
.L_403f0c:

            ldr x2,[sp,#120]
            adrp x1, .L_4141a0
            mov w0,#6
            add x1,x1, :lo12:.L_4141a0
            bl syslog

            b .L_403044
.L_403f24:

            mov x20,x0
            rev w2,w0
            adrp x1, .L_414270
            mov w0,#6
            add x1,x1, :lo12:.L_414270
            bl syslog

            ldr x0,[x19,#88]
            str w20,[x0,#312]
            b .L_403098
.L_403f48:

            adrp x0, stderr
            mov w20,#1
            ldr x19,[x0,:lo12:stderr]
            b .L_4035b8
.L_403f58:

            mov x2,x20
            adrp x1, .L_413fa0
            mov w0,#3
            add x1,x1, :lo12:.L_413fa0
            bl syslog

            b .L_402b8c
.L_403f70:

            ldr x0,[sp,#240]
            mov w2,#0
            mov x1,#0
            bl strtoul

            mov x22,x0
            ldr x0,[sp,#240]
            mov w2,#0
            mov x1,#0
            bl strtoul

            mov x21,x0
            ldr x0,[sp,#240]
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsl w3,w21,#8
            and w21,w0,#16711680
            ldr x0,[sp,#240]
            and w3,w3,#16711680
            orr w21,w3,w21, lsr #8
            mov w2,#0
            mov x1,#0
            bl strtoul

            lsr w0,w0,#24
            orr w22,w0,w22, lsl #24
            orr w0,w22,w21
            str w0,[sp,#152]
            b .L_40348c
.L_403fdc:

            ldr x1,[sp,#136]
            adrp x0, .L_414e68
            add x0,x0, :lo12:.L_414e68
            bl strcasecmp

            cbz w0,.L_404194

            ldr x1,[sp,#136]
            adrp x0, .L_4141c8
            add x0,x0, :lo12:.L_4141c8
            bl strcasecmp

            cbnz w0,.L_4047ac

            ldr x0,[x19,#88]
            mov w2,#1
            add x1,x0,#512
            str w2,[x0,#308]
            stur xzr,[x1,#-212]
            b .L_40307c
.L_40401c:

            ldr x0,[sp,#160]
            bl unlink

            b .L_403ec8
.L_404028:

            ldr x20,[x19,#88]
            mov x1,#50
            add x20,x20,#150
            mov x0,x20
            bl is_memory_all_zero

            cbz w0,.L_40424c
.L_404040:

            ldr x20,[x19,#88]
            mov x1,#50
            add x20,x20,#200
            mov x0,x20
            bl is_memory_all_zero

            cbz w0,.L_40421c
.L_404058:

            ldr x20,[x19,#88]
            mov x1,#50
            add x20,x20,#250
            mov x0,x20
            bl is_memory_all_zero

            cbnz w0,.L_403e44

            mov x0,x20
            mov w2,#8
            mov x1,#16
            bl printmem

            ldr x2,[x19,#88]
            adrp x3, .L_414318
            mov x1,x0
            add x0,x3, :lo12:.L_414318
            add x3,x2,#50
            str x1,[sp,#240]
            bl printf

            ldr x0,[sp,#240]
            bl free

            b .L_403e44
.L_4040a8:

            ldr x4,[x19,#88]
            adrp x1, .L_414238
            mov w0,#6
            add x1,x1, :lo12:.L_414238
            ldr w2,[x4,#300]
            ldr w3,[x4,#304]
            ldr w4,[x4,#308]
            bl syslog

            b .L_403090
.L_4040cc:

            sub x0,x1,#1
            strb wzr,[x25,x1]
            ldrb w1,[x25,x0]
            cmp w1,#13
            b.ne .L_40315c

            strb wzr,[x25,x0]
            b .L_40315c
.L_4040e8:

            ldr x0,[sp,#184]
            mov w1,#8
            bl scanmem

            str x0,[sp,#240]
            cbz x0,.L_404908

            ldr x1,[x19,#88]
            cbz x1,.L_404110

            add x1,x1,#250
            ldp x2,x3,[x0]
            stp x2,x3,[x1]
.L_404110:

            bl free

            b .L_403178
.L_404118:

            ldr x0,[sp,#192]
            mov w1,#8
            bl scanmem

            str x0,[sp,#240]
            cbz x0,.L_40427c

            ldr x1,[x19,#88]
            cbz x1,.L_40413c

            ldp x2,x3,[x0]
            stp x2,x3,[x1,#200]
.L_40413c:

            bl free

            b .L_403184
.L_404144:

            ldr x0,[sp,#200]
            mov w1,#8
            bl scanmem

            str x0,[sp,#240]
            cbz x0,.L_404294

            ldr x1,[x19,#88]
            cbz x1,.L_40416c

            add x1,x1,#150
            ldp x2,x3,[x0]
            stp x2,x3,[x1]
.L_40416c:

            bl free

            b .L_403190
.L_404174:

            ldr x0,[sp,#112]
            ldr w2,[sp,#180]
            cmp x0,#0
            adrp x0, .L_414148
            cset w1,ne
            add x0,x0, :lo12:.L_414148
            orr w1,w1,w2
            bl croak
.L_404194:

            ldr x0,[x19,#88]
            adrp x1, .L_415740
            ldr d31,[x1,:lo12:.L_415740]
            add x1,x0,#512
            str wzr,[x0,#308]
            stur d31,[x1,#-212]
            b .L_40307c
.L_4041b0:

            adrp x1, .L_414200
            mov w0,#4
            add x1,x1, :lo12:.L_414200
            bl syslog

            b .L_40308c
.L_4041c4:

            add x1,x1,#150
            ldp x4,x5,[x0]
            ldur x2,[x0,#13]
            stp x4,x5,[x1]
            stur x2,[x1,#13]
            b .L_403ab0
.L_4041dc:

            ldp x4,x5,[x0]
            ldur x2,[x0,#13]
            stp x4,x5,[x1,#200]
            stur x2,[x1,#213]
            b .L_403a7c
.L_4041f0:

            mov w0,#0
            bl myexit
.L_4041f8:

            add x0,x20,#150
            mov x1,#50
            bl is_memory_all_zero

            cbnz w0,.L_403258

            b .L_403ce0
.L_40420c:

            adrp x0, .L_4143c0
            add x0,x0, :lo12:.L_4143c0
            bl puts

            b .L_403d08
.L_40421c:

            mov x0,x20
            mov w2,#8
            mov x1,#16
            bl printmem

            adrp x2, .L_4128d0
            mov x1,x0
            add x0,x2, :lo12:.L_4128d0
            str x1,[sp,#240]
            bl printf

            ldr x0,[sp,#240]
            bl free

            b .L_404058
.L_40424c:

            mov x0,x20
            mov w2,#8
            mov x1,#16
            bl printmem

            adrp x2, .L_4128e8
            mov x1,x0
            add x0,x2, :lo12:.L_4128e8
            str x1,[sp,#240]
            bl printf

            ldr x0,[sp,#240]
            bl free

            b .L_404040
.L_40427c:

            adrp x1, .L_4142c8
            add x1,x1, :lo12:.L_4142c8
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_404294:

            adrp x1, .L_4142f0
            add x1,x1, :lo12:.L_4142f0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_4042ac:

            ldr x0,[sp,#120]
            mov x2,#50
            ldr x1,[sp,#216]
            bl strlcpy

            b .L_403f0c
.L_4042c0:

            ldr w1,[sp,#180]
            adrp x0, .L_414168
            add x0,x0, :lo12:.L_414168
            bl croak
.L_4042d0:

            ldr x0,[sp,#216]
            mov w2,#24
            mov w1,#35
            bl openlog

            adrp x1, .L_414398
            mov w0,#6
            add x1,x1, :lo12:.L_414398
            bl syslog

            b .L_403d6c
.L_4042f4:

            mov w0,#127
            bl setlogmask

            b .L_403d7c
.L_404300:

            ldr x0,[sp,#240]
            bl free

            mov w0,w20
            bl close
.L_404310:

            mov x1,#1
            mov w0,#13
            adrp x20, sighandler
            bl signal

            add x20,x20, :lo12:sighandler
            mov w0,#2
            mov x1,x20
            bl signal

            mov x1,x20
            mov w0,#15
            bl signal

            adrp x27, .L_4145a0
            mov x1,x20
            add x27,x27, :lo12:.L_4145a0
            add x20,sp,#576
            mov w26,#0
            mov w25,#0
            mov w0,#1
            bl signal

            mov x0,#0
            bl time

            bl srandom
.L_404368:

            ldr w0,[x19]
            cbz w0,.L_40437c

            cmp w0,#1
            ccmp w25,w26,#4,le
            b.eq .L_403e4c
.L_40437c:

            movi v31.4s,#0
            mov x4,#1
            ldr x2,[sp,#264]
            stp q31,q31,[x20]
            stp q31,q31,[x20,#32]
            stp q31,q31,[x20,#64]
            stp q31,q31,[x20,#96]
            cbz x2,.L_4043c4

            nop
            nop
            nop
            nop
.L_4043a0:

            ldr x0,[x2]
            ldr x2,[x2,#16]
            lsr x1,x0,#6
            lsl x0,x4,x0
            lsl x1,x1,#3
            ldr x3,[x20,x1]
            orr x0,x0,x3
            str x0,[x20,x1]
            cbnz x2,.L_4043a0
.L_4043c4:

            ldr x2,[sp,#272]
            mov x4,#1
            cbz x2,.L_4043f4
.L_4043d0:

            ldr x0,[x2]
            ldr x2,[x2,#16]
            lsr x1,x0,#6
            lsl x0,x4,x0
            lsl x1,x1,#3
            ldr x3,[x20,x1]
            orr x0,x0,x3
            str x0,[x20,x1]
            cbnz x2,.L_4043d0
.L_4043f4:

            ldr x2,[sp,#256]
            mov x4,#1
            cbz x2,.L_404424
.L_404400:

            ldr x0,[x2]
            ldr x2,[x2,#16]
            lsr x1,x0,#6
            lsl x0,x4,x0
            lsl x1,x1,#3
            ldr x3,[x20,x1]
            orr x0,x0,x3
            str x0,[x20,x1]
            cbnz x2,.L_404400
.L_404424:

            adrp x5, .L_4158d0
            add x4,sp,#288
            mov x1,x20
            mov x3,#0
            ldr q31,[x5,:lo12:.L_4158d0]
            mov x2,#0
            mov w0,#1024
            str q31,[sp,#288]
            bl select

            cmp w0,#0
            b.gt .L_4044b4

            b.eq .L_40445c

            ldr w0,[x19]
            cbz w0,.L_404764
.L_40445c:

            ldr x0,[x19,#72]
            cbz x0,.L_404368

            add x0,x19,#24
            bl pthread_mutex_lock

            ldr x21,[x19,#72]
            cbz x21,.L_404754

            adrp x24, .L_4145f8
            add x24,x24, :lo12:.L_4145f8
            b .L_40448c
.L_404480:

            mov x0,x22
            bl free

            cbz x21,.L_404754
.L_40448c:

            ldr w0,[x19,#4]
            mov x22,x21
            ldr x21,[x21,#16]
            add w26,w26,#1
            cbz w0,.L_404480

            ldr x1,[x22]
            mov w2,w23
            mov x0,x24
            bl printf

            b .L_404480
.L_4044b4:

            adrp x24, tunnel_thread
            mov w22,#0
            add x0,x24, :lo12:tunnel_thread
            mov x23,#0
            mov x21,#1
            str x0,[sp,#96]
            b .L_40456c
.L_4044d0:

            movi v31.4s,#0
            ldrh w0,[sp,#304]
            add x4,sp,#512
            add x3,sp,#312
            cmp w0,#2
            add x1,sp,#308
            csel x1,x3,x1,ne
            add x2,sp,#336
            stp q31,q31,[sp,#336]
            mov w3,#46
            stur q31,[x4,#-146]
            bl inet_ntop

            ldrh w3,[sp,#306]
            add x2,sp,#336
            adrp x1, .L_414580
            rev16 w3,w3
            add x1,x1, :lo12:.L_414580
            and w3,w3,#65535
            mov w0,#4
            bl syslog

            add x0,sp,#336
            bl gen_denied_page

            mov x24,x0
            str x0,[sp,#240]
            bl strlen

            mov x1,x24
            mov x2,x0
            mov w0,w28
            bl write_wrapper

            ldr x0,[sp,#240]
            bl free

            mov w0,w28
            bl close

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_404560:

            add x23,x23,#1
            cmp x23,#1024
            b.eq .L_40445c
.L_40456c:

            asr w0,w23,#6
            lsl x1,x21,x23
            ldr x0,[x20,w0,sxtw #3]
            tst x1,x0
            b.eq .L_404560

            mov w3,#28
            add x1,sp,#304
            add x2,sp,#236
            mov w0,w23
            str w3,[sp,#236]
            bl accept

            mov w28,w0
            tbnz w0,#31,.L_404648

            ldr x0,[sp,#280]
            add x1,sp,#304
            bl acl_check

            cbnz w0,.L_4044d0

            add x0,sp,#512
            bl pthread_attr_init

            mov x1,#131072
            add x0,sp,#512
            bl pthread_attr_setstacksize

            mov w1,#1
            add x0,sp,#512
            bl pthread_attr_setdetachstate

            mov x1,#256
            add x0,sp,#512
            bl pthread_attr_setguardsize

            ldr x0,[sp,#264]
            mov x1,x23
            bl plist_in

            cbz w0,.L_40466c

            mov x0,#48
            bl zmalloc

            add x4,sp,#512
            mov x1,x0
            ldr q30,[sp,#304]
            mov x3,x0
            ldur q31,[x4,#-196]
            str w28,[x1],#16
            ldr w2,[x19,#16]
            str q30,[x0,#16]
            stur q31,[x1,#12]
            cbnz w2,.L_4046dc

            mov x1,x4
            add x0,sp,#248
            adrp x2, proxy_thread
            add x2,x2, :lo12:proxy_thread
            bl pthread_create

            mov w22,w0
.L_404634:

            add x0,sp,#512
            bl pthread_attr_destroy

            cbnz w22,.L_4046c8

            add w25,w25,#1
            b .L_404560
.L_404648:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_414558
            mov w0,#3
            add x1,x1, :lo12:.L_414558
            bl syslog

            b .L_404560
.L_40466c:

            ldr x0,[sp,#272]
            mov x1,x23
            bl plist_in

            cbz w0,.L_4046e4

            mov x0,#48
            bl zmalloc

            add x4,sp,#512
            mov x1,x0
            ldr q30,[sp,#304]
            mov x3,x0
            ldur q31,[x4,#-196]
            str w28,[x1],#16
            ldr w2,[x19,#16]
            str q30,[x0,#16]
            stur q31,[x1,#12]
            cbnz w2,.L_404740

            mov x1,x4
            add x0,sp,#248
            adrp x2, socks5_thread
            add x2,x2, :lo12:socks5_thread
            bl pthread_create

            mov w22,w0
            b .L_404634
.L_4046c8:

            mov w2,w22
            mov x1,x27
            mov w0,#3
            bl syslog

            b .L_404560
.L_4046dc:

            bl proxy_thread

            b .L_404634
.L_4046e4:

            mov x0,#48
            bl zmalloc

            add x3,sp,#512
            mov x2,x0
            ldr q30,[sp,#304]
            mov x24,x0
            ldur q31,[x3,#-196]
            str w28,[x2],#16
            ldr x0,[sp,#256]
            str q30,[x24,#16]
            mov x1,x23
            stur q31,[x2,#12]
            bl plist_get

            ldr w1,[x19,#16]
            str x0,[x24,#8]
            cbnz w1,.L_404748

            ldr x2,[sp,#96]
            mov x3,x24
            add x1,sp,#512
            add x0,sp,#248
            bl pthread_create

            mov w22,w0
            b .L_404634
.L_404740:

            bl socks5_thread

            b .L_404634
.L_404748:

            mov x0,x24
            bl tunnel_thread

            b .L_404634
.L_404754:

            add x0,x19,#24
            str xzr,[x19,#72]
            bl pthread_mutex_unlock

            b .L_404368
.L_404764:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_4145d0
            mov w0,#3
            add x1,x1, :lo12:.L_4145d0
            bl syslog

            b .L_40445c
.L_404788:

            adrp x1, stderr
            mov x2,#26
            adrp x0, .L_4131a0
            add x0,x0, :lo12:.L_4131a0
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite

            mov w0,w27
            bl myexit
.L_4047ac:

            ldr x1,[sp,#136]
            adrp x0, .L_4141d0
            add x0,x0, :lo12:.L_4141d0
            bl strcasecmp

            cbnz w0,.L_404894

            ldr x0,[x19,#88]
            adrp x1, .L_4158d0
            ldr d31,[x1,:lo12:.L_4158d0]
            add x1,x0,#512
            str wzr,[x0,#308]
            stur d31,[x1,#-212]
            b .L_40307c
.L_4047dc:

            bl getuid

            cbnz w0,.L_404928
.L_4047e4:

            bl __ctype_b_loc

            ldr x3,[sp,#168]
            ldr x0,[x0]
            ldrb w1,[x3]
            ldrh w0,[x0,x1,lsl #1]
            tbz w0,#11,.L_4048ec

            mov x0,x3
            mov w2,#10
            mov x1,#0
            bl strtol

            mov x20,x0
            mov w21,w0
            cmp w0,#0
            b.le .L_4049c8
.L_40481c:

            mov w0,w20
            bl setgid

            cbz w0,.L_404970

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_4144b8
            mov w0,#3
            add x1,x1, :lo12:.L_4144b8
            bl syslog
.L_404848:

            adrp x1, .L_4144e0
            add x1,x1, :lo12:.L_4144e0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_404860:

            mov w1,#0
            bl dup2

            mov w1,#1
            mov w0,w23
            bl dup2

            mov w0,w23
            mov w1,#2
            bl dup2

            cmp w23,#2
            b.le .L_403d4c

            mov w0,w23
            bl close

            b .L_403d4c
.L_404894:

            ldr x1,[sp,#136]
            adrp x0, .L_4141d8
            add x0,x0, :lo12:.L_4141d8
            bl strcasecmp

            cbnz w0,.L_404958

            ldr x0,[x19,#88]
            adrp x1, .L_415748
            ldr d31,[x1,:lo12:.L_415748]
            add x1,x0,#512
            str wzr,[x0,#308]
            stur d31,[x1,#-212]
            b .L_40307c
.L_4048c4:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_414510
            add x1,x1, :lo12:.L_414510
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_4048ec:

            ldr x0,[sp,#168]
            bl getpwnam

            cbz x0,.L_4049ac

            ldr w21,[x0,#16]
            cbz w21,.L_4049ac

            ldr w20,[x0,#20]
            b .L_40481c
.L_404908:

            adrp x1, .L_4142a0
            add x1,x1, :lo12:.L_4142a0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl exit
.L_404920:

            add x21,x21, :lo12:.L_414038
            b .L_403b90
.L_404928:

            bl geteuid

            cbz w0,.L_4047e4

            bl getuid

            mov w20,w0
            bl getgid

            mov w3,w0
            mov w2,w20
            adrp x1, .L_414440
            mov w0,#4
            add x1,x1, :lo12:.L_414440
            bl syslog

            b .L_403d88
.L_404958:

            adrp x1, .L_4141e0
            add x1,x1, :lo12:.L_4141e0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_404970:

            mov w0,w21
            bl setuid

            mov w23,w0
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x4,x0
            adrp x1, .L_4144f0
            mov w3,w20
            mov w2,w21
            add x1,x1, :lo12:.L_4144f0
            mov w0,#6
            bl syslog

            cbz w23,.L_403d88

            b .L_404848
.L_4049ac:

            ldr x2,[sp,#168]
            adrp x1, .L_414498
            add x1,x1, :lo12:.L_414498
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_4049c8:

            adrp x1, .L_414470
            add x1,x1, :lo12:.L_414470
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_4049e0:

            mov w20,#0
            b .L_403038
.L_4049e8:

            adrp x0, .L_414408
            add x0,x0, :lo12:.L_414408
            bl perror

            b .L_403d34
.L_4049f8:

            adrp x0, .L_4143e8
            add x0,x0, :lo12:.L_4143e8
            bl perror

            mov w0,#1
            bl myexit
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
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
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
            cbz x0,.L_404a94

            b __gmon_start__
.L_404a94:

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
            b.eq .L_404acc

            adrp x1, :got:_ITM_deregisterTMCloneTable
            ldr x1,[x1,:got_lo12:_ITM_deregisterTMCloneTable]
            cbz x1,.L_404acc

            mov x16,x1
            br x16
.L_404acc:

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
            cbz x1,.L_404b08

            adrp x2, :got:_ITM_registerTMCloneTable
            ldr x2,[x2,:got_lo12:_ITM_registerTMCloneTable]
            cbz x2,.L_404b08

            mov x16,x2
            br x16
.L_404b08:

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
            tbnz w0,#0,.L_404b30

            bl deregister_tm_clones

            mov w0,#1
            strb w0,[x19,:lo12:completed.0]
.L_404b30:

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
.align 4
#-----------------------------------
.globl acl_add
.type acl_add, @function
#-----------------------------------
acl_add:

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
            mov x20,x0
            str xzr,[sp,#64]
            cbz x0,.L_404c30

            mov x0,x1
            stp x21,x22,[sp,#32]
.cfi_offset 22, -40
.cfi_offset 21, -48
            mov w22,w2
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            bl strdup

            mov x19,x0
            mov x0,#8
            bl zmalloc

            adrp x1, .L_411bf8
            add x1,x1, :lo12:.L_411bf8
            mov x21,x0
            mov x0,x19
            bl strcspn

            mov x23,x0
            mov w24,#32
            mov x0,x19
            bl strlen

            cmp x0,x23
            b.hi .L_404cb0
.L_404bc4:

            ldrb w0,[x19]
            cmp w0,#42
            b.ne .L_404c40

            ldrb w1,[x19,#1]
            neg w3,w1
            cbnz w1,.L_404c40

            ldr x1,[sp,#64]
            str wzr,[x21]
            cbz x1,.L_404c60
.L_404be8:

            ldr w4,[x1,#4]
            cmp w4,#2
            b.eq .L_404d18

            ldr x1,[x1,#40]
            cbnz x1,.L_404be8
.L_404bfc:

            mov x2,x19
            adrp x1, .L_411c48
            add x1,x1, :lo12:.L_411c48
            mov w0,#3
            bl syslog

            mov x0,x21
            bl free

            mov x0,x19
            bl free

            ldr x0,[sp,#64]
            bl freeaddrinfo

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.L_404c30:

.cfi_restore 24
.cfi_restore 23
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404c40:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 29, -80
.cfi_offset 30, -72
            cmp w0,#48
            b.ne .L_404de0

            ldrb w0,[x19,#1]
            cbnz w0,.L_404de0

            str wzr,[x21]
.L_404c54:

            ldr x1,[sp,#64]
            mov w3,w24
            cbnz x1,.L_404be8
.L_404c60:

            mov w1,#32
            sub w1,w1,w3
            mov x0,#1
            ldr w2,[x21]
            lsl x0,x0,x1
            neg w0,w0
            rev w0,w0
            str w3,[x21,#4]
            bics wzr,w2,w0
            b.eq .L_404c9c

            adrp x1, .L_411c80
            mov x2,x19
            add x1,x1, :lo12:.L_411c80
            mov w0,#4
            bl syslog
.L_404c9c:

            cbz w22,.L_404e04

            adrp x24, .L_411bf0
            mov x3,x19
            add x24,x24, :lo12:.L_411bf0
            b .L_404d80
.L_404cb0:

            strb wzr,[x19,x23]
            add x23,x23,#1
            add x0,x19,x23
            add x1,sp,#72
            mov w2,#10
            bl strtol

            cmp w0,w24
            b.hi .L_404ce8

            ldrb w1,[x19,x23]
            cbz w1,.L_404ce8

            ldr x1,[sp,#72]
            mov w24,w0
            ldrb w1,[x1]
            cbz w1,.L_404bc4
.L_404ce8:

            adrp x1, .L_411c00
            mov x2,x19
            add x1,x1, :lo12:.L_411c00
.L_404cf4:

            mov w0,#3
            bl syslog

            mov x0,x21
            bl free

            mov x0,x19
            bl free

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_404c30
.L_404d18:

.cfi_restore_state 
            ldr x23,[x1,#24]
            cbz x23,.L_404bfc

            mov w1,#32
            sub w1,w1,w3
            mov x0,#1
            ldr w2,[x23,#4]
            lsl x0,x0,x1
            neg w0,w0
            rev w0,w0
            stp w2,w3,[x21]
            bics wzr,w2,w0
            b.eq .L_404d68

            ldr w0,[x23,#4]
            bl inet_ntoa

            mov x2,x0
            ldr w3,[x21,#4]
            adrp x1, .L_411c80
            mov w0,#4
            add x1,x1, :lo12:.L_411c80
            bl syslog
.L_404d68:

            cbz w22,.L_404dd4

            adrp x24, .L_411bf0
            add x24,x24, :lo12:.L_411bf0
.L_404d74:

            ldr w0,[x23,#4]
            bl inet_ntoa

            mov x3,x0
.L_404d80:

            ldr w4,[x21,#4]
            mov x2,x24
            mov w0,#6
            adrp x1, .L_411cb0
            add x1,x1, :lo12:.L_411cb0
            bl syslog

            ldr x0,[x20]
            mov x2,x21
            mov w1,w22
            bl plist_add

            str x0,[x20]
            mov x0,x19
            bl free

            ldr x0,[sp,#64]
            bl freeaddrinfo

            mov w0,#1
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_404dd4:

.cfi_restore_state 
            adrp x24, .L_411be8
            add x24,x24, :lo12:.L_411be8
            b .L_404d74
.L_404de0:

            mov x1,x19
            add x0,sp,#64
            mov w2,#0
            bl so_resolv

            cbnz w0,.L_404c54

            adrp x1, .L_411c20
            mov x2,x19
            add x1,x1, :lo12:.L_411c20
            b .L_404cf4
.L_404e04:

            adrp x24, .L_411be8
            mov x3,x19
            add x24,x24, :lo12:.L_411be8
            b .L_404d80
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
.size acl_add, . - acl_add
.align 4
#-----------------------------------
.globl acl_check
.type acl_check, @function
#-----------------------------------
acl_check:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x2,x0
            cbz x0,.L_404e74

            ldrh w3,[x1]
            mov w0,#0
            cmp w3,#2
            b.eq .L_404e3c

            ret 
.L_404e3c:

            ldr w5,[x1,#4]
            mov w4,#32
            mov x3,#1
.L_404e48:

            ldr x0,[x2,#8]
            ldp w0,w1,[x0]
            sub w1,w4,w1
            eor w0,w5,w0
            lsl x1,x3,x1
            neg w1,w1
            rev w1,w1
            tst w0,w1
            b.eq .L_404e7c

            ldr x2,[x2,#16]
            cbnz x2,.L_404e48
.L_404e74:

            mov w0,#0
            ret 
.L_404e7c:

            ldr w0,[x2]
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
.size acl_check, . - acl_check
.align 4
#-----------------------------------
.globl new_auth
.type new_auth, @function
#-----------------------------------
new_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov x0,#316
            mov fp,sp
            bl malloc

            cbz x0,.L_404f28

            movi v31.4s,#0
            add x6,x0,#50
            strh wzr,[x0,#48]
            add x5,x0,#100
            strh wzr,[x0,#98]
            add x4,x0,#250
            add x3,x0,#200
            add x2,x0,#150
            stp q31,q31,[x0]
            add x1,x0,#512
            adrp x7, .L_415738
            str q31,[x0,#32]
            ldr d30,[x7,:lo12:.L_415738]
            stur q31,[x0,#50]
            stp q31,q31,[x6,#16]
            strh wzr,[x0,#148]
            stur q31,[x0,#100]
            stp q31,q31,[x5,#16]
            strh wzr,[x0,#298]
            stur q31,[x0,#250]
            stp q31,q31,[x4,#16]
            strh wzr,[x0,#248]
            stur q31,[x0,#200]
            stp q31,q31,[x3,#16]
            stur q31,[x0,#150]
            stp q31,q31,[x2,#16]
            strh wzr,[x0,#198]
            stur xzr,[x1,#-204]
            stur d30,[x1,#-212]
.L_404f28:

            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size new_auth, . - new_auth
.align 4
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
            add x4,x1,#512
            add x3,x0,#512
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x1
            mov x19,x0
            ldur d31,[x4,#-212]
            add x1,x1,#50
            str x21,[sp,#32]
.cfi_offset 21, -16
            add x0,x0,#50
            mov w21,w2
            mov x2,#50
            stur d31,[x3,#-212]
            ldr w4,[x20,#308]
            ldr w3,[x20,#312]
            str w4,[x19,#308]
            str w3,[x19,#312]
            bl strlcpy

            add x1,x20,#100
            add x0,x19,#100
            mov x2,#50
            bl strlcpy

            cbz w21,.L_405014

            mov x1,x20
            mov x0,x19
            mov x2,#50
            bl strlcpy

            add x5,x20,#250
            add x2,x19,#250
            ldur q29,[x20,#250]
            add x4,x20,#200
            ldp q31,q30,[x5,#16]
            add x1,x19,#200
            ldrh w5,[x5,#48]
            add x3,x20,#150
            strh w5,[x19,#298]
            add x0,x19,#150
            stur q29,[x19,#250]
            stp q31,q30,[x2,#16]
            ldrh w2,[x20,#248]
            ldur q29,[x20,#200]
            ldp q31,q30,[x4,#16]
            strh w2,[x19,#248]
            stur q29,[x19,#200]
            stp q31,q30,[x1,#16]
            ldrh w1,[x20,#198]
            ldur q29,[x20,#150]
            ldp q31,q30,[x3,#16]
            stur q29,[x19,#150]
            stp q31,q30,[x0,#16]
            mov x0,x19
            strh w1,[x19,#198]
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
.L_405014:

.cfi_restore_state 
            movi v31.4s,#0
            add x2,x19,#250
            strh wzr,[x19,#48]
            add x1,x19,#200
            strh wzr,[x19,#298]
            add x0,x19,#150
            stp q31,q31,[x19]
            str q31,[x19,#32]
            stur q31,[x19,#250]
            stp q31,q31,[x2,#16]
            strh wzr,[x19,#248]
            stur q31,[x19,#200]
            stp q31,q31,[x1,#16]
            strh wzr,[x19,#198]
            stur q31,[x19,#150]
            stp q31,q31,[x0,#16]
            mov x0,x19
            ldr x21,[sp,#32]
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
.size copy_auth, . - copy_auth
.align 3
#-----------------------------------
.globl dup_auth
.type dup_auth, @function
#-----------------------------------
dup_auth:

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
            mov w20,w1
            bl new_auth

            cbz x0,.L_405098

            mov w2,w20
            mov x1,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b copy_auth
.L_405098:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size dup_auth, . - dup_auth
.align 2
#-----------------------------------
.globl dump_auth
.type dump_auth, @function
#-----------------------------------
dump_auth:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, .L_411cc8
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
            add x0,x1, :lo12:.L_411cc8
            bl puts

            cbz x19,.L_405230

            mov x1,x19
            adrp x0, .L_411d08
            add x0,x0, :lo12:.L_411d08
            bl printf

            add x1,x19,#50
            adrp x0, .L_411d18
            add x0,x0, :lo12:.L_411d18
            bl printf

            add x1,x19,#100
            adrp x0, .L_411d28
            add x0,x0, :lo12:.L_411d28
            bl printf

            ldr w1,[x19,#300]
            adrp x0, .L_411d38
            add x0,x0, :lo12:.L_411d38
            add x20,x19,#250
            bl printf

            ldr w1,[x19,#304]
            adrp x0, .L_411d48
            add x0,x0, :lo12:.L_411d48
            bl printf

            ldr w1,[x19,#308]
            adrp x0, .L_411d58
            add x0,x0, :lo12:.L_411d58
            bl printf

            ldr w1,[x19,#312]
            adrp x0, .L_411d68
            add x0,x0, :lo12:.L_411d68
            bl printf

            mov x0,x20
            mov x1,#50
            bl is_memory_all_zero

            cbz w0,.L_40517c

            add x20,x19,#200
            mov x1,#50
            mov x0,x20
            bl is_memory_all_zero

            cbz w0,.L_4051bc
.L_40515c:

            add x19,x19,#150
            mov x1,#50
            mov x0,x19
            bl is_memory_all_zero

            cbz w0,.L_4051fc
.L_405170:

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40517c:

.cfi_restore_state 
            mov w2,#8
            mov x0,x20
            mov x1,#16
            bl printmem

            adrp x1, .L_411d78
            mov x20,x0
            add x0,x1, :lo12:.L_411d78
            mov x1,x20
            bl printf

            mov x0,x20
            add x20,x19,#200
            bl free

            mov x0,x20
            mov x1,#50
            bl is_memory_all_zero

            cbnz w0,.L_40515c
.L_4051bc:

            mov w2,#8
            mov x0,x20
            mov x1,#16
            bl printmem

            adrp x1, .L_411d88
            mov x20,x0
            add x0,x1, :lo12:.L_411d88
            mov x1,x20
            bl printf

            add x19,x19,#150
            mov x0,x20
            bl free

            mov x0,x19
            mov x1,#50
            bl is_memory_all_zero

            cbnz w0,.L_405170
.L_4051fc:

            mov w2,#8
            mov x0,x19
            mov x1,#16
            bl printmem

            adrp x1, .L_411d98
            mov x19,x0
            add x0,x1, :lo12:.L_411d98
            mov x1,x19
            bl printf

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b free
.L_405230:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            adrp x0, .L_411ce8
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            add x0,x0, :lo12:.L_411ce8
            b puts
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
            mov x2,#27751
            stp fp,lr,[sp,#-144]!
.cfi_def_cfa_offset 144
.cfi_offset 29, -144
.cfi_offset 30, -136
            movk x2,#25199,lsl #16
            movk x2,#27745,lsl #32
            mov x3,#0
            mov fp,sp
            adrp x1, .L_411db0
            add x1,x1, :lo12:.L_411db0
            stp x21,x22,[sp,#32]
            stp x2,x3,[sp,#88]
            stp xzr,xzr,[sp,#104]
            stp xzr,xzr,[sp,#120]
            strh wzr,[sp,#136]
.cfi_offset 21, -112
.cfi_offset 22, -104
            bl fopen

            cbz x0,.L_405618

            stp x19,x20,[sp,#16]
.cfi_offset 20, -120
.cfi_offset 19, -128
            mov x20,x0
            mov x0,#4096
            stp x23,x24,[sp,#48]
.cfi_offset 24, -88
.cfi_offset 23, -96
            mov w22,#35
            stp x25,x26,[sp,#64]
.cfi_offset 26, -72
.cfi_offset 25, -80
            bl zmalloc

            mov x19,x0
            mov x0,#8
            bl zmalloc

            mov x21,x0
            str xzr,[x0]
.L_4052cc:

            mov x0,x20
            bl feof

            cbnz w0,.L_40546c
.L_4052d8:

            mov x2,x20
            mov x0,x19
            mov w1,#4096
            bl fgets

            cbz x0,.L_40546c

            mov x0,x19
            bl strlen

            cmp x0,#1,lsl #12
            b.hi .L_405498

            mov w23,w0
            cbz w0,.L_4052cc
.L_405304:

            mov x0,x20
            bl feof

            mov w24,w0
            cbnz w0,.L_4052cc

            bl __ctype_b_loc

            mov x26,x0
            ldr x4,[x0]
            sxtw x5,w23
            mov x1,#0
            b .L_405330
.L_40532c:

            mov x1,x2
.L_405330:

            ldrb w3,[x19,x1]
            add x2,x1,#1
            ldrh w3,[x4,x3,lsl #1]
            tbz w3,#13,.L_40534c

            cmp x2,x5
            b.ne .L_40532c

            add w1,w1,#1
.L_40534c:

            cmp w23,w1
            b.le .L_4052cc

            ldrb w0,[x19,w1,sxtw]
            sxtw x2,w1
            cmp w0,#59
            ccmp w0,w22,#4,ne
            b.eq .L_4052cc

            b .L_405378
.L_40536c:

            cmp w23,w3
            b.le .L_405550

            mov x2,x3
.L_405378:

            ldrb w5,[x19,x2]
            add x3,x2,#1
            ldrh w5,[x4,x5,lsl #1]
            tbnz w5,#3,.L_40536c
.L_405388:

            cmp w23,w2
            b.le .L_4052cc

            ldrb w0,[x19,w2,sxtw]
            sxtw x25,w2
            cmp w0,#91
            b.eq .L_4054a0

            sub w2,w2,w1
            mov x0,x19
            bl substr

            ldr x3,[x26]
            mov x26,x0
            b .L_4053c4
.L_4053b8:

            cmp w23,w1
            b.le .L_405570

            mov x25,x1
.L_4053c4:

            ldrb w2,[x19,x25]
            add x1,x25,#1
            ldrh w2,[x3,x2,lsl #1]
            tbnz w2,#13,.L_4053b8

            mov w1,w25
.L_4053d8:

            cmp w23,w1
            b.le .L_405564

            ldrb w0,[x19,w1,sxtw]
            mov w2,#59
            cmp w0,#35
            ccmp w0,w2,#4,ne
            b.eq .L_405564

            cmp w0,#34
            b.eq .L_405558

            sub w2,w23,w1
            mov x0,x19
            bl substr

            mov x23,x0
            adrp x1, .L_411db8
            add x1,x1, :lo12:.L_411db8
            bl strcspn

            mov x24,x0
            mov x0,x23
            bl strlen

            cmp w24,w0
            b.eq .L_405430

            strb wzr,[x23,w24,sxtw]
.L_405430:

            mov x0,x23
            bl trimr
.L_405438:

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_405580
.L_405444:

            ldr x0,[x21]
            mov x2,x23
            mov x1,x26
            mov w4,#0
            mov w3,#0
            bl hlist_add

            str x0,[x21]
            mov x0,x20
            bl feof

            cbz w0,.L_4052d8
.L_40546c:

            mov x0,x19
            bl free

            mov x0,x20
            bl fclose

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.L_405488:

.cfi_restore 26
.cfi_restore 25
            mov x0,x21
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#144
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_405498:

.cfi_def_cfa_offset 144
.cfi_offset 19, -128
.cfi_offset 20, -120
.cfi_offset 21, -112
.cfi_offset 22, -104
.cfi_offset 23, -96
.cfi_offset 24, -88
.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov w23,#4096
            b .L_405304
.L_4054a0:

            add w2,w2,#1
            sxtw x0,w2
            cmp w23,w2
            b.le .L_4052cc

            ldrb w2,[x19,x0]
            add x1,x0,#1
            ldrh w2,[x4,x2,lsl #1]
            tbz w2,#13,.L_4054dc
.L_4054c0:

            cmp w23,w1
            b.le .L_405578

            mov x0,x1
            add x1,x0,#1
            ldrb w2,[x19,x0]
            ldrh w2,[x4,x2,lsl #1]
            tbnz w2,#13,.L_4054c0
.L_4054dc:

            mov w5,w0
.L_4054e0:

            cmp w23,w5
            b.le .L_4052cc

            sxtw x1,w5
            sub w23,w23,w5
            mov x2,x1
            mov w3,#1
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_405500:

            ldrb w0,[x19,x2]
            mov w6,w2
            cmp w0,#93
            b.eq .L_405608

            ubfiz x0,x0,#1,#8
            add x2,x2,#1
            ldrh w0,[x4,x0]
            tbnz w0,#13,.L_4055f8

            cmp w3,w23
            b.eq .L_405610

            add w3,w3,#1
            cmp w3,#50
            b.ne .L_405500

            mov w0,#49
.L_405538:

            add w2,w0,#1
            add x1,x19,x1
            add x0,sp,#88
            sxtw x2,w2
            bl strlcpy

            b .L_4052cc
.L_405550:

            add w2,w2,#1
            b .L_405388
.L_405558:

            add w4,w1,#1
            cmp w23,w4
            b.gt .L_40559c
.L_405564:

            mov x0,x26
            bl free

            b .L_4052cc
.L_405570:

            add w1,w25,#1
            b .L_4053d8
.L_405578:

            add w5,w0,#1
            b .L_4054e0
.L_405580:

            mov x3,x23
            mov x2,x26
            add x1,sp,#88
            adrp x0, .L_411dc0
            add x0,x0, :lo12:.L_411dc0
            bl printf

            b .L_405444
.L_40559c:

            ldrb w0,[x19,w4,sxtw]
            cmp w0,#34
            b.eq .L_4055e0

            add w25,w1,#2
            sub x3,x19,#1
            sxtw x2,w25
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_4055c0:

            mov x24,x2
            add x2,x2,#1
            ldrb w0,[x3,x2]
            cmp w0,#34
            b.ne .L_4055c0

            cmp w23,w24
            b.le .L_405564

            sub w24,w24,w4
.L_4055e0:

            mov w2,w24
            mov w1,w4
            mov x0,x19
            bl substr

            mov x23,x0
            b .L_405438
.L_4055f8:

            sub w0,w6,w5
.L_4055fc:

            cmp w0,#0
            b.le .L_4052cc

            b .L_405538
.L_405608:

            sub w0,w2,w5
            b .L_4055fc
.L_405610:

            mov w0,w3
            b .L_4055fc
.L_405618:

.cfi_restore 19
.cfi_restore 20
.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
            mov x21,#0
            b .L_405488
.cfi_endproc 
.size config_open, . - config_open
.align 4
#-----------------------------------
.globl config_set
.type config_set, @function
#-----------------------------------
config_set:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w3,#1
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            ldr x0,[x0]
            bl hlist_mod

            str x0,[x19]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size config_set, . - config_set
.align 2
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x0
            ldr x0,[x0]
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x1
            bl hlist_get

            mov x19,x0
            cbz x0,.L_40568c

            bl strdup

            mov x19,x0
            ldr x0,[x20]
            mov x1,x21
            bl hlist_del

            str x0,[x20]
.L_40568c:

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
.size config_pop, . - config_pop
.align 4
#-----------------------------------
.globl config_count
.type config_count, @function
#-----------------------------------
config_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            ldr x0,[x0]
            b hlist_count
.cfi_endproc 
.size config_count, . - config_count
.align 3
#-----------------------------------
.globl config_close
.type config_close, @function
#-----------------------------------
config_close:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_4056d4

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            ldr x0,[x0]
            bl hlist_free

            mov x0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            b free
.L_4056d4:

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
.size config_close, . - config_close
.align 4
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov w20,w1
            mov x19,x0
            bl __errno_location

            mov x3,x0
            mov w2,w20
            mov x1,x19
            add x0,sp,#40
            str wzr,[x3]
            bl so_resolv

            cbz w0,.L_405738

            ldr x0,[sp,#40]
            bl so_connect

            mov w19,w0
            ldr x0,[sp,#40]
            bl freeaddrinfo
.L_405728:

            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_405738:

.cfi_restore_state 
            mov w19,#-1
            b .L_405728
.cfi_endproc 
.size host_connect, . - host_connect
.align 4
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
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -112
.cfi_offset 20, -104
.cfi_offset 21, -96
.cfi_offset 22, -88
            mov x22,x2
            mov w21,w0
            mov x0,#4096
            stp x23,x24,[sp,#48]
.cfi_offset 23, -80
.cfi_offset 24, -72
            mov x23,x4
            stp x25,x26,[sp,#64]
.cfi_offset 25, -64
.cfi_offset 26, -56
            mov x26,x3
            mov w25,w5
            stp x27,x28,[sp,#80]
.cfi_offset 27, -48
.cfi_offset 28, -40
            adrp x24, .L_411dd8
            add x24,x24, :lo12:.L_411dd8
            str w1,[sp,#108]
            bl zmalloc

            mov x2,#4096
            mov x1,x24
            mov x20,x0
            bl strlcpy

            add x0,sp,#112
            mov x1,x23
            bl ntlm_request

            cbnz w0,.L_4058f8
.L_4057a4:

            mov x0,x22
            bl dup_rr_data

            mov x19,x0
            mov w3,#1
            ldr x0,[x0,#8]
            adrp x2, .L_411de0
            adrp x1, .L_411df0
            add x2,x2, :lo12:.L_411de0
            add x1,x1, :lo12:.L_411df0
            str x19,[sp,#120]
            bl hlist_mod

            str x0,[x19,#8]
            ldr x28,[sp,#120]
            adrp x19, .L_411e00
            add x19,x19, :lo12:.L_411e00
            mov x2,x20
            mov x1,x19
            mov w3,#1
            ldr x0,[x28,#8]
            bl hlist_mod

            str x0,[x28,#8]
            ldr x27,[sp,#120]
            mov w3,#1
            adrp x2, .L_411e10
            adrp x1, .L_411e18
            add x2,x2, :lo12:.L_411e10
            add x1,x1, :lo12:.L_411e18
            ldr x0,[x27,#8]
            bl hlist_mod

            str x0,[x27,#8]
            ldr x28,[sp,#120]
            adrp x1, .L_411e28
            add x1,x1, :lo12:.L_411e28
            ldr x0,[x28,#8]
            bl hlist_del

            str x0,[x28,#8]
            cbz w25,.L_4058c0

            adrp x28, debug
            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_4058dc
.L_405844:

            ldr x1,[sp,#120]
            mov w0,w21
            bl headers_send

            cbz w0,.L_40588c

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_405918

            ldr x0,[sp,#120]
            bl reset_rr_data

            ldr x1,[sp,#120]
            mov w0,w21
            bl headers_recv

            cbz w0,.L_40588c
.L_405874:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_405994
.L_40587c:

            ldr x1,[sp,#120]
            ldr w0,[x1,#16]
            cmp w0,#401
            b.eq .L_405940
.L_40588c:

            mov w19,#0
.L_405890:

            add x0,sp,#120
            bl free_rr_data

            mov x0,x20
            bl free

            mov w0,w19
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
.cfi_def_cfa_offset 0
            ret 
.L_4058c0:

.cfi_restore_state 
            mov x1,x26
            mov w0,w21
            bl http_body_drop

            cbz w0,.L_40588c

            adrp x28, debug
            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_405844
.L_4058dc:

            adrp x0, .L_411e40
            add x0,x0, :lo12:.L_411e40
            bl puts

            ldr x0,[sp,#120]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_405844
.L_4058f8:

            ldr x1,[sp,#112]
            sxtw x2,w0
            mov x3,#4091
            add x0,x20,#5
            bl to_base64

            ldr x0,[sp,#112]
            bl free

            b .L_4057a4
.L_405918:

            adrp x0, .L_411e60
            add x0,x0, :lo12:.L_411e60
            bl puts

            ldr x0,[sp,#120]
            bl reset_rr_data

            ldr x1,[sp,#120]
            mov w0,w21
            bl headers_recv

            cbnz w0,.L_405874

            b .L_40588c
.L_405940:

            mov w0,w21
            bl http_body_drop

            cbz w0,.L_40588c

            ldr x0,[sp,#120]
            adrp x1, .L_411e80
            add x1,x1, :lo12:.L_411e80
            ldr x0,[x0,#8]
            bl hlist_get

            str x0,[sp,#112]
            cbz x0,.L_405974

            bl strlen

            cmp x0,#14
            b.hi .L_4059a4
.L_405974:

            mov w0,#4
            adrp x1, .L_411f18
            add x1,x1, :lo12:.L_411f18
            bl syslog

            adrp x0, .L_411f40
            add x0,x0, :lo12:.L_411f40
            str x0,[x26,#96]
            b .L_40588c
.L_405994:

            ldr x0,[sp,#120]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_40587c
.L_4059a4:

            add x0,x0,#6
            bl zmalloc

            ldr x1,[sp,#112]
            mov x27,x0
            add x1,x1,#5
            bl from_base64

            mov w2,w0
            cmp w0,#40
            b.le .L_405a90

            mov x3,x23
            add x0,sp,#112
            mov x1,x27
            str xzr,[sp,#112]
            bl ntlm_response

            mov w23,w0
            cmp w0,#0
            b.le .L_405ab8

            mov x1,x24
            mov x2,#4096
            mov x0,x20
            bl strlcpy

            ldr x1,[sp,#112]
            sxtw x2,w23
            add x0,x20,#5
            mov x3,#4091
            bl to_base64

            ldr x0,[x22,#8]
            mov x2,x20
            mov w3,#1
            mov x1,x19
            bl hlist_mod

            mov x1,x0
            ldr x0,[sp,#112]
            str x1,[x22,#8]
            bl free

            mov x0,x27
            bl free

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_405ae8
.L_405a40:

            mov x1,x22
            mov w0,w21
            bl headers_send

            cbz w0,.L_40588c

            ldr x0,[sp,#120]
            bl reset_rr_data

            cbnz w25,.L_405af8
.L_405a5c:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_405b14
.L_405a64:

            ldr x1,[sp,#120]
            mov w0,w21
            bl headers_recv

            cbz w0,.L_40588c

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_405b24
.L_405a7c:

            ldr x1,[sp,#120]
            mov x0,x26
            mov w19,#1
            bl copy_rr_data

            b .L_405890
.L_405a90:

            mov w0,#3
            adrp x1, .L_411ef0
            add x1,x1, :lo12:.L_411ef0
            bl syslog

            adrp x0, .L_411ec8
            add x0,x0, :lo12:.L_411ec8
            str x0,[x26,#96]
            mov x0,x27
            bl free

            b .L_40588c
.L_405ab8:

            mov w0,#3
            adrp x1, .L_411e98
            add x1,x1, :lo12:.L_411e98
            bl syslog

            adrp x0, .L_411ec8
            add x0,x0, :lo12:.L_411ec8
            str x0,[x26,#96]
            mov x0,x27
            bl free

            ldr x0,[sp,#112]
            bl free

            b .L_40588c
.L_405ae8:

            adrp x0, .L_411f68
            add x0,x0, :lo12:.L_411f68
            bl puts

            b .L_405a40
.L_405af8:

            ldr x3,[sp,#120]
            mov x2,x22
            ldr w1,[sp,#108]
            mov w0,w21
            bl http_body_send

            cbnz w0,.L_405a5c

            b .L_40588c
.L_405b14:

            adrp x0, .L_411f80
            add x0,x0, :lo12:.L_411f80
            bl puts

            b .L_405a64
.L_405b24:

            ldr x0,[sp,#120]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_405a7c
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
.size www_authenticate, . - www_authenticate
.align 4
#-----------------------------------
.globl direct_request
.type direct_request, @function
#-----------------------------------
direct_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-272]!
.cfi_def_cfa_offset 272
.cfi_offset 29, -272
.cfi_offset 30, -264
            mov x3,x0
            add x4,x0,#20
            mov fp,sp
            add x5,x0,#24
            stp x19,x20,[sp,#16]
.cfi_offset 19, -256
.cfi_offset 20, -248
            mov x20,x1
            add x2,sp,#224
            movi v31.4s,#0
            stp x21,x22,[sp,#32]
            ldrh w0,[x0,#16]
            ldr w1,[x3]
            mov w3,#46
            cmp w0,#2
            stp q31,q31,[sp,#224]
            str w1,[sp,#108]
            str w1,[sp,#164]
            csel x1,x5,x4,ne
            stp xzr,xzr,[sp,#176]
            stur q31,[sp,#254]
.cfi_offset 21, -240
.cfi_offset 22, -232
            bl inet_ntop

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_406268
.L_405ba0:

            bl __errno_location

            mov x3,x0
            ldr x19,[x20,#64]
            add x0,sp,#208
            ldr w21,[x20,#32]
            str wzr,[x3]
            mov x1,x19
            mov w2,w21
            str x3,[sp,#112]
            bl so_resolv

            cbz w0,.L_406330

            ldr x0,[sp,#208]
            bl so_connect

            mov w21,w0
            ldr x0,[sp,#208]
            bl freeaddrinfo

            str w21,[sp,#160]
            tbnz w21,#31,.L_406330

            adrp x0, g_creds
            mov w1,#1
            ldr x0,[x0,:lo12:g_creds]
            bl dup_auth

            str x0,[sp,#128]
            ldr x1,[x20,#64]
            cbz x1,.L_4062d0

            mov x0,x1
            stp x23,x24,[sp,#48]
.cfi_offset 24, -216
.cfi_offset 23, -224
            stp x25,x26,[sp,#64]
.cfi_offset 26, -200
.cfi_offset 25, -208
            stp x27,x28,[sp,#80]
.cfi_offset 28, -184
.cfi_offset 27, -192
            bl strdup

            ldr w1,[x20]
            cmp x0,#0
            mov x27,x0
            ldr w0,[x20,#32]
            cset w26,ne
            str w0,[sp,#104]
            cbz w1,.L_405c4c

            ldr x1,[x20,#40]
            adrp x0, .L_412028
            add x0,x0, :lo12:.L_412028
            bl strcasecmp

            mov w19,w0
            cbz w0,.L_405c60
.L_405c4c:

            mov x0,x20
            mov x1,#0
            bl http_has_body

            cmp x0,#0
            cset w19,ne
.L_405c60:

            mov x0,x20
            bl dup_rr_data

            adrp x20, debug
            adrp x1, .L_412030
            add x22,sp,#176
            add x1,x1, :lo12:.L_412030
            add x20,x20, :lo12:debug
            str xzr,[sp,#120]
            str x1,[sp,#136]
            adrp x1, .L_412058
            add x1,x1, :lo12:.L_412058
            str x1,[sp,#144]
.L_405c90:

            str x0,[sp,#176]
            bl new_rr_data

            str x0,[sp,#184]
            add x0,sp,#164
            add x24,sp,#192
            str x0,[sp,#192]
            add x0,sp,#160
            mov w28,#0
            str wzr,[sp,#152]
            stp x0,x0,[sp,#200]
            add x0,sp,#164
            str x0,[sp,#216]
.L_405cc0:

            ldr x1,[x22,w28,sxtw #3]
            sxtw x21,w28
            ldr w0,[x1,#28]
            cbz w0,.L_405cec
.L_405cd0:

            ldr w0,[x20]
            cbnz w0,.L_40601c

            ldr x0,[x24,x21,lsl #3]
            ldr w23,[x0]
.L_405ce0:

            mov w0,w23
            bl headers_recv

            cbz w0,.L_406278
.L_405cec:

            cmp w28,#0
            ldr w21,[x20]
            cset w25,eq
            cmp w25,#0
            ccmp w26,#0,#4,ne
            b.eq .L_405de8

            ldr x23,[sp,#176]
            ldr x1,[x23,#64]
            cbz x1,.L_405d2c

            mov x0,x27
            bl strcasecmp

            cbnz w0,.L_4064cc

            ldr w0,[x23,#32]
            ldr w1,[sp,#104]
            cmp w0,w1
            b.ne .L_4064cc
.L_405d2c:

            cbnz w21,.L_406060
.L_405d30:

            ldr w0,[x23]
            cbnz w0,.L_406078
.L_405d38:

            ldr w23,[x20]
.L_405d3c:

            cbnz w23,.L_405f40
.L_405d40:

            and w23,w19,#1
.L_405d44:

            cbz w23,.L_4066d0

            ldr x0,[sp,#176]
            bl dup_rr_data

            str x0,[sp,#168]
            ldr x0,[x0,#40]
            bl free

            ldr x19,[sp,#168]
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strdup

            ldr x21,[sp,#168]
            str x0,[x19,#40]
            mov w3,#1
            adrp x2, .L_411e10
            adrp x1, .L_411e18
            add x2,x2, :lo12:.L_411e10
            ldr x0,[x21,#8]
            add x1,x1, :lo12:.L_411e18
            bl hlist_mod

            ldr x19,[sp,#168]
            str x0,[x21,#8]
            adrp x1, .L_411e28
            add x1,x1, :lo12:.L_411e28
            ldr x0,[x19,#8]
            bl hlist_del

            ldr w21,[sp,#160]
            ldr x1,[sp,#168]
            str x0,[x19,#8]
            mov w0,w21
            bl headers_send

            cbz w0,.L_406570

            add x0,sp,#168
            bl free_rr_data

            ldr x1,[sp,#184]
            mov w19,#1
            mov x21,#1
            mov w28,w19
            ldr w0,[x1,#28]
            cbnz w0,.L_405cd0

            ldr w21,[x20]
            mov w25,#0
.L_405de8:

            cbnz w21,.L_406050
.L_405dec:

            and w23,w25,#1
            cbnz w25,.L_406594

            cmp w28,#1
            b.ne .L_4061ac

            ldr x0,[sp,#184]
            ldr w1,[x0,#16]
            cmp w1,#401
            b.eq .L_4061f8

            cbnz w19,.L_405f84

            adrp x25, .L_411df0
            adrp x23, .L_412120
            add x25,x25, :lo12:.L_411df0
            add x23,x23, :lo12:.L_412120
.L_405e20:

            ldr x0,[x0,#8]
            mov x2,x23
            mov x1,x25
            bl hlist_subcmp

            mov w19,w0
            ldr x21,[sp,#216]
            cbnz w0,.L_405e5c

            ldp x0,x1,[sp,#176]
            bl http_has_body

            cmn x0,#1
            b.eq .L_405e5c

            ldr x0,[sp,#176]
            ldr w0,[x0,#36]
            cmp w0,#10
            b.gt .L_406500
.L_405e5c:

            ldr x4,[sp,#184]
            mov x2,x23
            mov w3,#1
            adrp x1, .L_4121f8
            add x1,x1, :lo12:.L_4121f8
            str x4,[sp,#120]
            ldr x0,[x4,#8]
            bl hlist_mod

            ldr x4,[sp,#120]
            mov x1,x25
            ldr x19,[sp,#184]
            mov x2,x23
            str x0,[x4,#8]
            mov w3,#1
            ldr x0,[x19,#8]
            bl hlist_mod

            ldr w25,[x21]
            ldr w1,[x20]
            str x0,[x19,#8]
            cbnz w1,.L_406254
.L_405eac:

            mov x0,#-1
            mov w19,#0
            mov x21,#1
            str x0,[sp,#120]
            str wzr,[sp,#152]
.L_405ec0:

            lsl x21,x21,#3
            mov w0,w25
            ldr x1,[x22,x21]
            bl headers_send

            cbz w0,.L_406278

            ldr x1,[x24,x21]
            mov w0,w25
            ldp x2,x3,[sp,#176]
            ldr w1,[x1]
            bl http_body_send

            cbz w0,.L_406278

            add w28,w28,#1
            cmp w28,#2
            b.ne .L_405cc0

            mov x0,x22
            bl free_rr_data

            add x0,sp,#184
            bl free_rr_data

            ldr w0,[sp,#152]
            ldr w21,[sp,#160]
            cbz w0,.L_406294

            mov w0,w21
            bl so_closed

            cbnz w0,.L_406294

            ldr w0,[sp,#108]
            bl so_closed

            adrp x1, serialize
            ldr w1,[x1,:lo12:serialize]
            orr w0,w0,w1
            cbnz w0,.L_406294

            bl new_rr_data

            b .L_405c90
.L_405f40:

            ldr x1,[sp,#208]
            adrp x0, .L_4121d8
            and w23,w19,#1
            add x0,x0, :lo12:.L_4121d8
            ldr w1,[x1]
            bl printf
.L_405f58:

            ldr x3,[sp,#176]
            adrp x0, .L_412210
            add x0,x0, :lo12:.L_412210
            mov w21,#0
            ldp x1,x2,[x3,#40]
            ldr x3,[x3,#72]
            bl printf

            ldr x0,[sp,#176]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_405d44
.L_405f84:

            ldr w19,[sp,#160]
            mov w0,w19
            bl so_closed

            cbz w0,.L_405fe8

            mov w0,w19
            bl close

            ldr x2,[sp,#176]
            add x0,sp,#168
            ldr x3,[sp,#112]
            ldr x1,[x2,#64]
            ldr w2,[x2,#32]
            str wzr,[x3]
            bl so_resolv

            cbz w0,.L_406654

            ldr x0,[sp,#168]
            bl so_connect

            mov w21,w0
            ldr x0,[sp,#168]
            bl freeaddrinfo

            str w21,[sp,#160]
            tbnz w21,#31,.L_406660

            adrp x1, .L_4121b8
            mov w0,#7
            add x1,x1, :lo12:.L_4121b8
            bl syslog
.L_405fe8:

            ldr x0,[sp,#184]
            mov w19,#0
            mov x21,#0
            bl reset_rr_data

            ldr w28,[x20]
            ldr x0,[sp,#208]
            ldr w25,[x0]
            cbz w28,.L_405ec0

            mov w1,w25
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            bl printf

            b .L_405f58
.L_40601c:

            ldr x0,[sp,#136]
            lsl x21,x21,#3
            ldr w2,[sp,#108]
            add w1,w28,#1
            ldr w3,[sp,#160]
            bl printf

            ldr x1,[x24,x21]
            ldr x0,[sp,#144]
            ldr w23,[x1]
            mov w1,w23
            bl printf

            ldr x1,[x22,x21]
            b .L_405ce0
.L_406050:

            ldr x0,[x22,w28,sxtw #3]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_405dec
.L_406060:

            ldr x0,[x23,#8]
            mov w21,#0
            bl hlist_dump

            ldr x23,[sp,#176]
            ldr w0,[x23]
            cbz w0,.L_405d38
.L_406078:

            ldp x3,x4,[x23,#40]
            mov w0,#7
            add x2,sp,#224
            adrp x1, .L_412098
            add x1,x1, :lo12:.L_412098
            bl syslog

            ldr x25,[sp,#176]
            ldr x0,[x25,#56]
            cbz x0,.L_4060c0

            ldr x1,[x25,#48]
            cbz x1,.L_4060b4

            mov x0,x1
            bl free

            ldr x25,[sp,#176]
            ldr x0,[x25,#56]
.L_4060b4:

            bl strdup

            str x0,[x25,#48]
            ldr x25,[sp,#176]
.L_4060c0:

            ldr w0,[x25,#36]
            cmp w0,#10
            b.gt .L_4063a4
.L_4060cc:

            adrp x23, .L_4120a8
            add x23,x23, :lo12:.L_4120a8
            b .L_4060e8
.L_4060d8:

            mov x0,x3
            bl hlist_del

            str x0,[x25,#8]
            ldr x25,[sp,#176]
.L_4060e8:

            mov x1,x23
            ldr x0,[x25,#8]
            bl hlist_get

            ldr x25,[sp,#176]
            mov x1,x23
            ldr x3,[x25,#8]
            cbnz x0,.L_4060d8

            ldr x2,[sp,#128]
            mov x0,x3
            adrp x1, .L_411e00
            add x1,x1, :lo12:.L_411e00
            bl http_parse_basic

            ldr w23,[x20]
            cmp w0,#0
            b.le .L_4061e8

            cbnz w23,.L_4061c8

            ldr x0,[sp,#176]
            cbz x0,.L_405d40
.L_406130:

            ldr w1,[x0]
            ldr w23,[x20]
            cbz w1,.L_405d3c

            ldr x1,[x0,#40]
            adrp x0, .L_412028
            add x0,x0, :lo12:.L_412028
            bl strcasecmp

            cbnz w0,.L_405d3c

            cbnz w23,.L_4066c0
.L_406154:

            ldr x19,[sp,#184]
            mov w1,#200
            adrp x0, .L_412100
            add x0,x0, :lo12:.L_412100
            str wzr,[x19]
            str w1,[x19,#16]
            str wzr,[x19,#28]
            bl strdup

            str x0,[x19,#80]
            ldp x1,x19,[sp,#176]
            ldr x0,[x1,#72]
            bl strdup

            str x0,[x19,#72]
            ldr x1,[sp,#184]
            ldr w0,[sp,#108]
            bl headers_send

            ldr w21,[sp,#160]
            cbz w0,.L_406578

            ldr w0,[sp,#108]
            mov w1,w21
            bl tunnel

            b .L_406578
.L_4061ac:

            ldr w0,[x20]
            cbnz w0,.L_406230
.L_4061b4:

            add x0,sp,#208
            sxtw x21,w28
            ldr x0,[x0,w28,sxtw #3]
            ldr w25,[x0]
            b .L_405ec0
.L_4061c8:

            ldr x1,[sp,#128]
            adrp x0, .L_4120c0
            add x0,x0, :lo12:.L_4120c0
            add x3,x1,#100
            mov x2,x1
            add x1,x1,#50
            bl printf

            ldr w23,[x20]
.L_4061e8:

            ldr x0,[sp,#176]
            cbnz x0,.L_406130

            cbz w23,.L_405d40

            b .L_405f40
.L_4061f8:

            ldr x0,[x0,#8]
            adrp x2, .L_412118
            adrp x1, .L_411e80
            add x2,x2, :lo12:.L_412118
            add x1,x1, :lo12:.L_411e80
            bl hlist_subcmp_all

            cbnz w0,.L_4063cc

            cbnz w19,.L_405f84

            ldr x0,[sp,#184]
            adrp x25, .L_411df0
            adrp x23, .L_412120
            add x25,x25, :lo12:.L_411df0
            add x23,x23, :lo12:.L_412120
            b .L_405e20
.L_406230:

            add x0,sp,#208
            sxtw x21,w28
            ldr x1,[x0,w28,sxtw #3]
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            ldr w25,[x1]
            mov w1,w25
            bl printf

            b .L_405ec0
.L_406254:

            mov w1,w25
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            bl printf

            b .L_405eac
.L_406268:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x0, .L_411fc8
            add x0,x0, :lo12:.L_411fc8
            bl puts

            b .L_405ba0
.L_406278:

.cfi_offset 23, -224
.cfi_offset 24, -216
.cfi_offset 25, -208
.cfi_offset 26, -200
.cfi_offset 27, -192
.cfi_offset 28, -184
            mov x0,x22
            bl free_rr_data

            add x0,sp,#184
            bl free_rr_data

            ldr w21,[sp,#160]
            mov x0,#-1
            str x0,[sp,#120]
.L_406294:

            ldr x0,[sp,#128]
            cbz x0,.L_4062a0

            bl free
.L_4062a0:

            cbz x27,.L_4062ac
.L_4062a4:

            mov x0,x27
            bl free
.L_4062ac:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            tbz w21,#31,.L_406314
.L_4062bc:

            ldr x0,[sp,#120]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#272
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4062d0:

.cfi_restore_state 
            ldr x0,[x20,#72]
            adrp x1, .L_412010
            add x1,x1, :lo12:.L_412010
            bl gen_502_page

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#108]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free

            ldr x0,[sp,#128]
            cbz x0,.L_40630c

            bl free
.L_40630c:

            mov x0,#-1
            str x0,[sp,#120]
.L_406314:

            mov w0,w21
            bl close

            ldr x0,[sp,#120]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#272
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406330:

.cfi_restore_state 
            ldr x22,[sp,#112]
            ldr x19,[x20,#64]
            ldr w0,[x22]
            ldr w21,[x20,#32]
            bl strerror

            mov x4,x0
            mov x2,x19
            mov w3,w21
            mov w0,#4
            adrp x1, .L_411fe8
            add x1,x1, :lo12:.L_411fe8
            bl syslog

            ldr w0,[x22]
            ldr x19,[x20,#72]
            bl strerror

            mov x1,x0
            mov x0,x19
            bl gen_502_page

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#108]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free
.L_406398:

            mov x0,#-1
            str x0,[sp,#120]
            b .L_4062bc
.L_4063a4:

.cfi_offset 23, -224
.cfi_offset 24, -216
.cfi_offset 25, -208
.cfi_offset 26, -200
.cfi_offset 27, -192
.cfi_offset 28, -184
            ldr x0,[x25,#8]
            adrp x2, .L_411de0
            adrp x1, .L_411df0
            add x2,x2, :lo12:.L_411de0
            add x1,x1, :lo12:.L_411df0
            mov w3,#1
            bl hlist_mod

            str x0,[x25,#8]
            ldr x25,[sp,#176]
            b .L_4060cc
.L_4063cc:

            ldr x0,[sp,#184]
            adrp x1, .L_411df0
            adrp x23, .L_412120
            add x25,x1, :lo12:.L_411df0
            add x23,x23, :lo12:.L_412120
            mov x1,x25
            ldr x0,[x0,#8]
            mov x2,x23
            bl hlist_subcmp

            ldr w21,[sp,#160]
            cbz w0,.L_406468

            ldr w0,[x20]
            cbnz w0,.L_406618
.L_406400:

            mov w0,w21
            bl close

            ldr x21,[sp,#184]
            mov w3,#1
            adrp x2, .L_411e10
            adrp x1, .L_411e18
            add x2,x2, :lo12:.L_411e10
            add x1,x1, :lo12:.L_411e18
            ldr x0,[x21,#8]
            bl hlist_mod

            ldr x2,[sp,#176]
            ldr x3,[sp,#112]
            ldr x1,[x2,#64]
            ldr w2,[x2,#32]
            str x0,[x21,#8]
            add x0,sp,#168
            str wzr,[x3]
            bl so_resolv

            cbz w0,.L_4065a0

            ldr x0,[sp,#168]
            bl so_connect

            mov w21,w0
            ldr x0,[sp,#168]
            bl freeaddrinfo

            str w21,[sp,#160]
            tbnz w21,#31,.L_4065ac
.L_406468:

            ldp x2,x3,[sp,#176]
            mov w5,w19
            ldr x4,[sp,#128]
            mov w0,w21
            ldr w1,[sp,#108]
            bl www_authenticate

            cbz w0,.L_406680

            ldr x0,[sp,#184]
            ldr w1,[x0,#16]
            cmp w1,#401
            b.ne .L_405e20

            ldr x1,[sp,#176]
            ldr x0,[x0,#72]
            ldr w2,[x1,#32]
            ldr x1,[x1,#64]
            bl gen_401_page
.L_4064a8:

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#108]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free

            b .L_406578
.L_4064cc:

            cbnz w21,.L_40663c
.L_4064d0:

            mov x0,x23
            bl dup_rr_data

            str x0,[sp,#120]
            mov x0,x22
            bl free_rr_data

            add x0,sp,#184
            bl free_rr_data

            ldr x0,[sp,#128]
            ldr w21,[sp,#160]
            cbz x0,.L_4062a4

            bl free

            b .L_4062a4
.L_406500:

            ldr x5,[sp,#184]
            adrp x23, .L_411de0
            add x23,x23, :lo12:.L_411de0
            mov w3,#1
            mov x2,x23
            adrp x1, .L_4121f8
            ldr x0,[x5,#8]
            add x1,x1, :lo12:.L_4121f8
            str x5,[sp,#152]
            bl hlist_mod

            ldr x5,[sp,#152]
            mov x1,x25
            ldr x4,[sp,#184]
            mov x2,x23
            str x0,[x5,#8]
            mov w3,#1
            str x4,[sp,#152]
            ldr x0,[x4,#8]
            bl hlist_mod

            ldr w25,[x21]
            ldr x4,[sp,#152]
            ldr w1,[x20]
            str x0,[x4,#8]
            cbnz w1,.L_406628
.L_406560:

            mov w0,#1
            mov x21,#1
            str w0,[sp,#152]
            b .L_405ec0
.L_406570:

            add x0,sp,#168
            bl free_rr_data
.L_406578:

            mov x0,x22
            bl free_rr_data

            add x0,sp,#184
            bl free_rr_data

            mov x0,#-1
            str x0,[sp,#120]
            b .L_406294
.L_406594:

            ldr x23,[sp,#176]
            mov w21,w28
            b .L_405d30
.L_4065a0:

            mov w0,#-1
            mov w21,w0
            str w0,[sp,#160]
.L_4065ac:

            ldr x0,[sp,#176]
            adrp x1, .L_412148
            add x1,x1, :lo12:.L_412148
.L_4065b8:

            ldr x0,[x0,#72]
            bl gen_502_page

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#108]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free

            mov x0,x22
            bl free_rr_data

            add x0,sp,#184
            bl free_rr_data

            ldr x0,[sp,#128]
            cbz x0,.L_406670

            bl free

            mov x0,#-1
            str x0,[sp,#120]
            cbnz x27,.L_4062a4
.L_406608:

            ldp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_restore 24
.cfi_restore 23
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_406398
.L_406618:

.cfi_restore_state 
            adrp x0, .L_412128
            add x0,x0, :lo12:.L_412128
            bl puts

            b .L_406400
.L_406628:

            mov w1,w25
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            bl printf

            b .L_406560
.L_40663c:

            ldr x1,[x23,#48]
            adrp x0, .L_412078
            add x0,x0, :lo12:.L_412078
            bl printf

            ldr x23,[sp,#176]
            b .L_4064d0
.L_406654:

            mov w0,#-1
            mov w21,w0
            str w0,[sp,#160]
.L_406660:

            ldr x0,[sp,#176]
            adrp x1, .L_412190
            add x1,x1, :lo12:.L_412190
            b .L_4065b8
.L_406670:

            mov x0,#-1
            str x0,[sp,#120]
            cbnz x27,.L_4062a4

            b .L_406608
.L_406680:

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_4066b0
.L_40668c:

            ldr x2,[sp,#184]
            adrp x1, .L_411fa8
            add x1,x1, :lo12:.L_411fa8
            ldr x0,[x2,#72]
            ldr x2,[x2,#96]
            cmp x2,#0
            csel x1,x1,x2,eq
            bl gen_502_page

            b .L_4064a8
.L_4066b0:

            adrp x0, .L_412170
            add x0,x0, :lo12:.L_412170
            bl puts

            b .L_40668c
.L_4066c0:

            adrp x0, .L_4120f0
            add x0,x0, :lo12:.L_4120f0
            bl puts

            b .L_406154
.L_4066d0:

            mov w28,w21
            b .L_4061b4
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size direct_request, . - direct_request
.align 4
#-----------------------------------
.globl direct_tunnel
.type direct_tunnel, @function
#-----------------------------------
direct_tunnel:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov x4,x0
            add x5,x0,#24
            mov fp,sp
            add x1,x0,#20
            stp x19,x20,[sp,#16]
            add x2,sp,#64
            mov w3,#46
            stp x21,x22,[sp,#32]
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov w19,#0
            movi v31.4s,#0
            ldrh w0,[x0,#16]
            ldr w21,[x4]
            cmp w0,#2
            csel x1,x5,x1,ne
            stp q31,q31,[sp,#64]
            ldr x22,[x4,#8]
            stur q31,[sp,#94]
            bl inet_ntop

            mov x0,x22
            bl strdup

            mov w1,#58
            mov x20,x0
            bl strchr

            cbz x0,.L_406758

            strb wzr,[x0],#1
            mov w2,#10
            mov x1,#0
            bl strtol

            mov w19,w0
.L_406758:

            bl __errno_location

            mov x3,x0
            mov w2,w19
            mov x1,x20
            add x0,sp,#56
            str wzr,[x3]
            bl so_resolv

            cbz w0,.L_406828

            ldr x0,[sp,#56]
            bl so_connect

            mov w19,w0
            ldr x0,[sp,#56]
            bl freeaddrinfo

            cmp w19,#0
            b.le .L_4067ec

            mov w0,#7
            add x2,sp,#64
            mov x3,x22
            adrp x1, .L_412228
            add x1,x1, :lo12:.L_412228
            bl syslog

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_406810
.L_4067b8:

            mov w1,w19
            mov w0,w21
            bl tunnel

            mov x0,x20
            bl free
.L_4067cc:

            mov w0,w19
            bl close
.L_4067d4:

            mov w0,w21
            bl close

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4067ec:

.cfi_restore_state 
            mov x0,x20
            bl free

            cbz w19,.L_4067cc

            mov w0,w21
            bl close

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_406810:

.cfi_restore_state 
            mov x1,x22
            mov w2,w21
            adrp x0, .L_412238
            add x0,x0, :lo12:.L_412238
            bl printf

            b .L_4067b8
.L_406828:

            mov x0,x20
            bl free

            b .L_4067d4
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
.size direct_tunnel, . - direct_tunnel
.align 4
#-----------------------------------
.globl forward_request
.type forward_request, @function
#-----------------------------------
forward_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-272]!
.cfi_def_cfa_offset 272
.cfi_offset 29, -272
.cfi_offset 30, -264
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
            stp x27,x28,[sp,#80]
.cfi_offset 19, -256
.cfi_offset 20, -248
.cfi_offset 21, -240
.cfi_offset 22, -232
.cfi_offset 23, -224
.cfi_offset 24, -216
.cfi_offset 25, -208
.cfi_offset 26, -200
.cfi_offset 27, -192
.cfi_offset 28, -184
            str xzr,[sp,#184]
            stp xzr,xzr,[sp,#208]
            cbz x0,.L_4074b8

            mov x2,x0
            ldrh w0,[x0,#16]
            movi v31.4s,#0
            mov x21,x1
            cmp w0,#2
            add x1,x2,#20
            ldr w4,[x2]
            add x2,x2,#24
            csel x1,x2,x1,ne
            mov w3,#46
            stp q31,q31,[sp,#224]
            add x2,sp,#224
            adrp x28, debug
            adrp x25, .L_412098
            adrp x19, .L_4120a8
            add x24,sp,#176
            add x23,x28, :lo12:debug
            add x25,x25, :lo12:.L_412098
            add x19,x19, :lo12:.L_4120a8
            str w4,[sp,#180]
            adrp x27, connection_mtx
            stur q31,[sp,#254]
            bl inet_ntop

            add x0,x27, :lo12:connection_mtx
            mov w22,#0
            str xzr,[sp,#104]
            str x0,[sp,#128]
.L_4068d4:

            ldr w0,[x23]
            add x1,sp,#180
            str wzr,[sp,#176]
            stp x1,x24,[sp,#192]
            cbz w0,.L_406930

            cmp w22,#0
            adrp x2, .L_411da8
            add x2,x2, :lo12:.L_411da8
            adrp x1, .L_412260
            add x1,x1, :lo12:.L_412260
            adrp x0, .L_412298
            csel x1,x2,x1,eq
            add x0,x0, :lo12:.L_412298
            bl printf

            ldr x20,[sp,#128]
            mov x0,x20
            bl pthread_mutex_lock

            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            ldr x0,[x0]
            bl plist_dump

            mov x0,x20
            bl pthread_mutex_unlock
.L_406930:

            ldr x26,[sp,#128]
            mov x0,x26
            bl pthread_mutex_lock

            add x1,sp,#184
            adrp x0, connection_list
            add x0,x0, :lo12:connection_list
            bl plist_pop

            mov w20,w0
            mov x0,x26
            bl pthread_mutex_unlock

            cbz w20,.L_407160

            ldr w0,[x23]
            cbnz w0,.L_406b00

            ldr x0,[sp,#104]
            str w20,[sp,#176]
            cbz x0,.L_406b1c
.L_406970:

            cbz x21,.L_4072a8

            mov w20,#1
            str w20,[sp,#112]
.L_40697c:

            cbz w22,.L_406b48
.L_406980:

            add x0,sp,#216
            mov w22,#0
            str x0,[sp,#120]
            str w20,[sp,#168]
.L_406990:

            str x21,[sp,#208]
            bl new_rr_data

            ldr x1,[sp,#208]
            str x0,[sp,#216]
            ldr w21,[x1,#28]
            cbz w21,.L_4069cc

            mov w21,#0
.L_4069ac:

            ldr w0,[x23]
            cbnz w0,.L_4070ac

            add x0,sp,#192
            ldr x26,[x0,w21,sxtw #3]
.L_4069bc:

            ldr w0,[x26]
            bl headers_recv

            mov w6,w0
            cbz w0,.L_407324
.L_4069cc:

            ldr w1,[sp,#112]
            eor w0,w21,#1
            tst w0,w1
            b.eq .L_4069f4

            ldr x27,[sp,#208]
            ldr x1,[x27,#64]
            cbz x1,.L_4069f4

            ldr x0,[sp,#104]
            bl strcasecmp

            cbnz w0,.L_407350
.L_4069f4:

            ldr w0,[x23]
            cbnz w0,.L_406ae4

            cbnz w21,.L_406af8
.L_406a00:

            ldr x0,[sp,#208]
            ldr w1,[x0]
            cbnz w1,.L_406b64
.L_406a0c:

            ldr w0,[x23]
            cbnz w0,.L_407064
.L_406a14:

            ldr x1,[sp,#208]
            ldr w0,[x24]
            bl headers_send

            cbz w0,.L_406ddc
.L_406a24:

            ldr x0,[sp,#192]
            ldp x2,x3,[sp,#208]
            ldr w1,[x0]
            ldr w0,[x24]
            bl http_body_send

            cbz w0,.L_406ddc

            ldr x0,[sp,#216]
            mov w21,#1
            mov x1,x0
            ldr w2,[x0,#28]
            cbnz w2,.L_4069ac

            ldr w1,[x23]
            cbnz w1,.L_4070f4
.L_406a58:

            ldr w2,[x0,#16]
            mov w21,w20
.L_406a60:

            mov w20,w21
            cmp w2,#407
            b.eq .L_407104

            cmp w22,#1
            b.eq .L_406c58

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406a80:

            cmp w2,#407
            mov w2,#1
            cset w1,ne
            str w2,[sp,#160]
            orr w20,w20,w1
            adrp x1, scanner_plugin
            mov w2,#32767
            str w2,[sp,#136]
            ldr w1,[x1,:lo12:scanner_plugin]
            mov w22,#0
            cbz w1,.L_406c80
.L_406aac:

            adrp x5, scanner_plugin_maxsize
            mov x1,x0
            ldr x2,[sp,#184]
            mov x4,x24
            ldr x0,[sp,#208]
            ldr x5,[x5,:lo12:scanner_plugin_maxsize]
            ldr w3,[sp,#180]
            bl scanner_hook

            mov w1,w0
            ldr x0,[sp,#216]
            str w1,[sp,#136]
            and w1,w1,#1
            str w1,[sp,#160]
            b .L_406c80
.L_406ae4:

            add x0,sp,#208
            ldr x0,[x0,w21,sxtw #3]
            ldr x0,[x0,#8]
            bl hlist_dump

            cbz w21,.L_406a00
.L_406af8:

            ldr x0,[sp,#216]
            b .L_406a58
.L_406b00:

            mov w1,w20
            adrp x0, .L_4122b0
            add x0,x0, :lo12:.L_4122b0
            bl printf

            ldr x0,[sp,#104]
            str w20,[sp,#176]
            cbnz x0,.L_406970
.L_406b1c:

            mov w20,#1
.L_406b20:

            ldr x0,[x21,#64]
            str x0,[sp,#104]
            str wzr,[sp,#112]
            cbz x0,.L_40697c

            bl strdup

            cmp x0,#0
            str x0,[sp,#104]
            cset w0,ne
            str w0,[sp,#112]
            cbnz w22,.L_406980
.L_406b48:

            mov x0,x21
            bl dup_rr_data

            mov x21,x0
            add x0,sp,#216
            str x0,[sp,#120]
            str w20,[sp,#168]
            b .L_406990
.L_406b64:

            ldp x3,x4,[x0,#40]
            mov x1,x25
            mov w0,#7
            add x2,sp,#224
            bl syslog

            ldr x0,[sp,#208]
            ldr w1,[x0]
            cbz w1,.L_406a0c

            ldr x0,[x0,#8]
            mov x1,x19
            ldr x2,[sp,#184]
            bl http_parse_basic

            cmp w0,#0
            b.le .L_406ea8

            ldr w0,[x23]
            cbnz w0,.L_406f40
.L_406ba4:

            adrp x0, header_list
            ldr x21,[x0,:lo12:header_list]
            cbz x21,.L_406bd0
.L_406bb0:

            ldr x26,[sp,#208]
            mov w3,#1
            ldp x1,x2,[x21]
            ldr x0,[x26,#8]
            bl hlist_mod

            ldr x21,[x21,#24]
            str x0,[x26,#8]
            cbnz x21,.L_406bb0
.L_406bd0:

            ldr x21,[sp,#208]
            ldr w0,[x21,#36]
            cmp w0,#10
            b.le .L_406bf8

            b .L_406f18
.L_406be4:

            ldr x0,[x26,#8]
            mov x1,x19
            bl hlist_del

            str x0,[x26,#8]
            ldr x21,[sp,#208]
.L_406bf8:

            mov x1,x19
            ldr x0,[x21,#8]
            bl hlist_get

            ldr x26,[sp,#208]
            cbnz x0,.L_406be4

            ldr w0,[x26]
            cbz w0,.L_406a0c

            orr w21,w22,w20
            cbnz w21,.L_406a0c

            ldr x3,[sp,#184]
            mov x1,x26
            ldr x2,[sp,#216]
            mov x0,x24
            bl proxy_authenticate

            cbz w0,.L_406f5c

            ldr x0,[sp,#216]
            ldr w2,[x0,#16]
            cmp w2,#407
            b.eq .L_407050

            ldr w20,[x23]
            cbnz w20,.L_406e88

            mov w22,#1
            cmp w2,#399
            b.gt .L_406a80
.L_406c58:

            adrp x1, scanner_plugin
            mov w2,#1
            str w2,[sp,#160]
            mov w2,#32767
            ldr w1,[x1,:lo12:scanner_plugin]
            str w2,[sp,#136]
            cbnz w1,.L_406aac

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_406c80:

            ldr x0,[x0,#8]
            adrp x2, .L_411de0
            adrp x1, .L_411df0
            add x2,x2, :lo12:.L_411de0
            add x1,x1, :lo12:.L_411df0
            stp x1,x2,[sp,#144]
            bl hlist_subcmp

            str w0,[sp,#172]
            ldr x27,[sp,#216]
            cbnz w0,.L_406cd8

            ldr x0,[sp,#208]
            cbz x0,.L_406cb8

            ldr w1,[x0]
            cbnz w1,.L_4071f4
.L_406cb8:

            ldr x0,[x27,#8]
            adrp x2, .L_412120
            ldr x1,[sp,#144]
            add x2,x2, :lo12:.L_412120
            mov w3,#1
            bl hlist_mod

            str x0,[x27,#8]
            ldr x27,[sp,#216]
.L_406cd8:

            adrp x21, .L_412410
            add x21,x21, :lo12:.L_412410
            b .L_406cf8
.L_406ce4:

            ldr x0,[x26,#8]
            mov x1,x21
            bl hlist_del

            ldr x27,[sp,#216]
            str x0,[x26,#8]
.L_406cf8:

            ldr x0,[x27,#8]
            mov x1,x21
            bl hlist_get

            mov x27,x0
            ldr x26,[sp,#216]
            cbnz x0,.L_406ce4

            ldr w0,[x26,#16]
            cmp w0,#407
            b.eq .L_406e34

            ldr w0,[sp,#160]
            cbnz w0,.L_406e58
.L_406d24:

            ldr x2,[sp,#208]
            cbz x2,.L_406d54

            ldr w0,[x2]
            cbz w0,.L_406d54

            ldr x1,[x2,#40]
            adrp x0, .L_412028
            add x0,x0, :lo12:.L_412028
            str x2,[sp,#160]
            bl strcasecmp

            mov w21,w0
            ldr x2,[sp,#160]
            cbz w0,.L_4071a8
.L_406d54:

            ldr x0,[sp,#136]
            tbnz w0,#1,.L_407140
.L_406d5c:

            ldr x0,[x26,#8]
            adrp x21, .L_4121f8
            ldr x2,[sp,#152]
            add x21,x21, :lo12:.L_4121f8
            mov x1,x21
            bl hlist_subcmp

            mov w1,w0
            ldr x4,[sp,#216]
            ldr x0,[x4,#8]
            cbz w1,.L_406d94

            ldr x1,[sp,#208]
            ldr w1,[x1,#36]
            cmp w1,#10
            b.gt .L_407228
.L_406d94:

            adrp x19, .L_412120
            add x19,x19, :lo12:.L_412120
            mov x1,x21
            mov x2,x19
            mov w3,#1
            str x4,[sp,#112]
            bl hlist_mod

            ldr x4,[sp,#112]
            mov x2,x19
            ldr x21,[sp,#216]
            mov w3,#1
            str x0,[x4,#8]
            ldr x1,[sp,#144]
            ldr x0,[x21,#8]
            bl hlist_mod

            str x0,[x21,#8]
            ldr w1,[x28,:lo12:debug]
            cbnz w1,.L_407218
.L_406ddc:

            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldr x0,[sp,#104]
            cbnz x0,.L_4072dc
.L_406df4:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_4072e4
.L_406dfc:

            mov x27,#-1
.L_406e00:

            ldr x0,[sp,#184]
            bl free

            ldr w0,[sp,#176]
            tbnz w0,#31,.L_406e14

            bl close
.L_406e14:

            ldp x19,x20,[sp,#16]
            mov x0,x27
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#272
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
.L_406e34:

.cfi_restore_state 
            ldr x0,[x26,#8]
            mov x1,x21
            adrp x2, .L_412428
            mov w3,#1
            add x2,x2, :lo12:.L_412428
            bl hlist_mod

            str x0,[x26,#8]
            ldr w0,[sp,#160]
            cbz w0,.L_406e80
.L_406e58:

            ldr w0,[x23]
            cbz w0,.L_4074f8

            ldr w1,[sp,#180]
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            bl printf

            ldr x1,[sp,#216]
            ldr w0,[sp,#180]
            bl headers_send

            cbz w0,.L_406ddc
.L_406e80:

            ldr x26,[sp,#216]
            b .L_406d24
.L_406e88:

            adrp x0, .L_4123a8
            add x0,x0, :lo12:.L_4123a8
            bl puts

            ldr x0,[sp,#216]
            ldr w2,[x0,#16]
            cmp w2,#399
            cset w22,le
            b .L_406a60
.L_406ea8:

            adrp x3, ntlmbasic
            ldr w0,[x3,:lo12:ntlmbasic]
            cbz w0,.L_406ba4

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_4072f8
.L_406ebc:

            ldr x0,[sp,#208]
            str x3,[sp,#112]
            ldr x0,[x0,#72]
            bl gen_407_page

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#180]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free

            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldp x0,x3,[sp,#104]
            cbnz x0,.L_4072c4

            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_406dfc
.L_406f0c:

            mov w6,#0
            mov x27,#-1
            b .L_406f9c
.L_406f18:

            ldr x0,[x21,#8]
            adrp x2, .L_411de0
            adrp x1, .L_4121f8
            add x2,x2, :lo12:.L_411de0
            add x1,x1, :lo12:.L_4121f8
            mov w3,#1
            bl hlist_mod

            str x0,[x21,#8]
            ldr x21,[sp,#208]
            b .L_406bf8
.L_406f40:

            ldr x2,[sp,#184]
            adrp x0, .L_4120c0
            add x0,x0, :lo12:.L_4120c0
            add x3,x2,#100
            add x1,x2,#50
            bl printf

            b .L_406ba4
.L_406f5c:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_407198
.L_406f64:

            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldr w19,[x28,:lo12:debug]
            ldr x0,[sp,#104]
            cbz x0,.L_406f84

            bl free
.L_406f84:

            cbz w19,.L_406dfc

            mov w6,#0
            mov w20,#0
            mov w21,#0
            mov x27,#-1
            adrp x3, ntlmbasic
.L_406f9c:

            ldr w0,[sp,#176]
            ldr w19,[x3,:lo12:ntlmbasic]
            str w6,[sp,#104]
            bl so_closed

            mov w4,w0
            mov w3,w19
            mov w2,w20
            mov w1,w21
            adrp x0, .L_4124b0
            add x0,x0, :lo12:.L_4124b0
            bl printf

            adrp x0, .L_4124f0
            add x0,x0, :lo12:.L_4124f0
            bl puts

            ldr w6,[sp,#104]
.L_406fd8:

            cbz w6,.L_406e00

            adrp x0, ntlmbasic
            ldr w0,[x0,:lo12:ntlmbasic]
            cbnz w0,.L_406e00

            ldr w0,[sp,#176]
            bl so_closed

            cbnz w0,.L_406e00

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_407310
.L_406ffc:

            ldr x19,[sp,#128]
            mov x0,x19
            bl pthread_mutex_lock

            adrp x0, connection_list
            ldrsw x1,[sp,#176]
            ldr x2,[sp,#184]
            ldr x0,[x0,:lo12:connection_list]
            bl plist_add

            mov x1,x0
            adrp x2, connection_list
            mov x0,x19
            str x1,[x2,:lo12:connection_list]
            bl pthread_mutex_unlock

            mov x0,x27
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#272
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
.L_407050:

.cfi_restore_state 
            bl reset_rr_data

            mov w22,#0
            ldr w0,[x23]
            mov w20,#0
            cbz w0,.L_406a14
.L_407064:

            ldr w1,[x24]
            adrp x0, .L_4121d8
            add x0,x0, :lo12:.L_4121d8
            bl printf

            ldr x3,[sp,#208]
            adrp x0, .L_412210
            add x0,x0, :lo12:.L_412210
            ldp x1,x2,[x3,#40]
            ldr x3,[x3,#72]
            bl printf

            ldr x0,[sp,#208]
            ldr x0,[x0,#8]
            bl hlist_dump

            ldr x1,[sp,#208]
            ldr w0,[x24]
            bl headers_send

            cbnz w0,.L_406a24

            b .L_406ddc
.L_4070ac:

            ldp w3,w2,[sp,#176]
            mov w5,w22
            mov w4,w20
            add w1,w21,#1
            adrp x0, .L_4122f8
            add x0,x0, :lo12:.L_4122f8
            bl printf

            sbfiz x3,x21,#3,#32
            add x1,sp,#192
            mov x27,x3
            adrp x0, .L_412058
            add x0,x0, :lo12:.L_412058
            ldr x26,[x1,x3]
            ldr w1,[x26]
            bl printf

            add x0,sp,#208
            ldr x1,[x0,x27]
            b .L_4069bc
.L_4070f4:

            ldr x0,[x0,#8]
            bl hlist_dump

            ldr x0,[sp,#216]
            b .L_406a58
.L_407104:

            ldr w1,[sp,#168]
            orr w26,w22,w1
            cbz w26,.L_406a80

            ldr w0,[x23]
            cbnz w0,.L_407498
.L_407118:

            ldr x0,[sp,#184]
            cbz x0,.L_407124

            bl free
.L_407124:

            ldr x0,[sp,#120]
            mov w22,w26
            ldr x21,[sp,#208]
            bl free_rr_data

            ldr w0,[sp,#176]
            bl close

            b .L_4068d4
.L_407140:

            ldr x1,[sp,#200]
            mov x3,x26
            ldr w0,[sp,#180]
            ldr w1,[x1]
            bl http_body_send

            cbz w0,.L_406ddc

            ldr x26,[sp,#216]
            b .L_406d5c
.L_407160:

            bl new_auth

            str x0,[sp,#184]
            ldr x1,[x21,#48]
            ldr x2,[x21,#64]
            bl proxy_connect

            str w0,[sp,#176]
            cmn w0,#2
            b.eq .L_4073f0

            tbnz w0,#31,.L_407408

            ldr x0,[sp,#104]
            cbz x0,.L_406b20

            mov w0,#1
            str w0,[sp,#112]
            b .L_40697c
.L_407198:

            adrp x0, .L_412388
            add x0,x0, :lo12:.L_412388
            bl puts

            b .L_406f64
.L_4071a8:

            ldr w0,[x26,#16]
            cmp w0,#200
            b.ne .L_406d54

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_4074e8
.L_4071bc:

            ldp w1,w0,[sp,#176]
            bl tunnel

            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldr x0,[sp,#104]
            cbnz x0,.L_4074d8

            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_406dfc
.L_4071e4:

            mov w6,#0
            mov x27,#-1
            adrp x3, ntlmbasic
            b .L_406f9c
.L_4071f4:

            ldr x1,[x0,#40]
            adrp x0, .L_412028
            add x0,x0, :lo12:.L_412028
            bl strcasecmp

            cbnz w0,.L_406cb8

            ldr w0,[x27,#16]
            cmp w0,#200
            b.ne .L_406cb8

            b .L_406cd8
.L_407218:

            adrp x0, .L_412490
            add x0,x0, :lo12:.L_412490
            bl puts

            b .L_406ddc
.L_407228:

            ldr x26,[sp,#152]
            mov x1,x21
            mov w3,#1
            str x4,[sp,#136]
            mov x2,x26
            bl hlist_mod

            ldr x21,[sp,#216]
            mov x2,x26
            ldp x4,x1,[sp,#136]
            str x0,[x4,#8]
            mov w3,#1
            ldr x0,[x21,#8]
            bl hlist_mod

            str x0,[x21,#8]
            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldr w0,[sp,#172]
            cbz w0,.L_4074ac

            ldr w0,[sp,#176]
            bl so_closed

            cbnz w0,.L_4074ac

            ldr w0,[sp,#180]
            bl so_closed

            adrp x1, serialize
            ldr w1,[x1,:lo12:serialize]
            orr w0,w0,w1
            cbnz w0,.L_4074ac
.L_40729c:

            bl new_rr_data

            mov x21,x0
            b .L_406990
.L_4072a8:

            mov w20,#1
            add x0,sp,#216
            mov w22,#0
            str w20,[sp,#112]
            str x0,[sp,#120]
            str w20,[sp,#168]
            b .L_40729c
.L_4072c4:

            str x3,[sp,#104]
            bl free

            ldr w0,[x28,:lo12:debug]
            ldr x3,[sp,#104]
            cbz w0,.L_406dfc

            b .L_406f0c
.L_4072dc:

            bl free

            b .L_406df4
.L_4072e4:

            mov w6,#0
.L_4072e8:

            mov w21,#0
            mov x27,#-1
            adrp x3, ntlmbasic
            b .L_406f9c
.L_4072f8:

            adrp x0, .L_412358
            add x0,x0, :lo12:.L_412358
            str x3,[sp,#112]
            bl puts

            ldr x3,[sp,#112]
            b .L_406ebc
.L_407310:

            ldp w2,w1,[sp,#176]
            adrp x0, .L_412508
            add x0,x0, :lo12:.L_412508
            bl printf

            b .L_406ffc
.L_407324:

            add x0,sp,#208
            str w6,[sp,#112]
            bl free_rr_data

            ldr x0,[sp,#120]
            bl free_rr_data

            ldr x0,[sp,#104]
            ldr w6,[sp,#112]
            cbnz x0,.L_4073c0

            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_406dfc

            b .L_4072e8
.L_407350:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_4073d8
.L_407358:

            mov w6,#0
            cbz w20,.L_40736c

            ldr w0,[x27,#36]
            cmp w0,#10
            b.gt .L_40744c
.L_40736c:

            mov x0,x27
            str w6,[sp,#112]
            bl dup_rr_data

            mov x27,x0
            add x0,sp,#208
            bl free_rr_data

            ldr x0,[sp,#120]
            mov w19,w20
            bl free_rr_data

            ldr w6,[sp,#112]
            mov w20,w6
.L_407398:

            ldr x0,[sp,#104]
            str w6,[sp,#112]
            bl free

            ldr w6,[sp,#112]
.L_4073a8:

            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_406fd8

            mov w21,w20
            adrp x3, ntlmbasic
            mov w20,w19
            b .L_406f9c
.L_4073c0:

            str w6,[sp,#104]
            bl free

            ldr w0,[x28,:lo12:debug]
            ldr w6,[sp,#104]
            cbz w0,.L_406dfc

            b .L_4072e8
.L_4073d8:

            ldr x1,[x27,#48]
            adrp x0, .L_412338
            add x0,x0, :lo12:.L_412338
            bl printf

            ldr x27,[sp,#208]
            b .L_407358
.L_4073f0:

            mov w19,#0
            mov x27,#-2
.L_4073f8:

            ldr x0,[sp,#104]
            mov w6,w19
            cbz x0,.L_4073a8

            b .L_407398
.L_407408:

            ldr x0,[x21,#72]
            adrp x1, .L_4122d8
            add x1,x1, :lo12:.L_4122d8
            bl gen_502_page

            mov x19,x0
            bl strlen

            mov x2,x0
            ldr w0,[sp,#180]
            mov x1,x19
            bl write_wrapper

            mov x0,x19
            bl free

            ldr x0,[sp,#104]
            ldr w19,[x28,:lo12:debug]
            cbz x0,.L_406f84

            bl free

            b .L_406f84
.L_40744c:

            ldr x0,[x27,#8]
            adrp x19, .L_411de0
            add x19,x19, :lo12:.L_411de0
            adrp x1, .L_4121f8
            mov x2,x19
            add x1,x1, :lo12:.L_4121f8
            bl hlist_subcmp

            ldr x27,[sp,#208]
            mov w6,w20
            cbnz w0,.L_40736c

            ldr x0,[x27,#8]
            mov x2,x19
            adrp x1, .L_411df0
            add x1,x1, :lo12:.L_411df0
            bl hlist_subcmp

            cmp w0,#0
            ldr x27,[sp,#208]
            cset w6,ne
            b .L_40736c
.L_407498:

            mov w2,w22
            adrp x0, .L_4123d8
            add x0,x0, :lo12:.L_4123d8
            bl printf

            b .L_407118
.L_4074ac:

            mov w19,w20
            mov w20,#1
            b .L_4073f8
.L_4074b8:

            adrp x3, .L_415758
            adrp x1, .L_412270
            adrp x0, .L_412280
            add x3,x3, :lo12:.L_415758
            add x1,x1, :lo12:.L_412270
            add x0,x0, :lo12:.L_412280
            mov w2,#96
            bl __assert_fail
.L_4074d8:

            bl free

            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_406dfc

            b .L_4071e4
.L_4074e8:

            adrp x0, .L_412468
            add x0,x0, :lo12:.L_412468
            bl puts

            b .L_4071bc
.L_4074f8:

            ldr x1,[sp,#216]
            ldr w0,[sp,#180]
            bl headers_send

            cbz w0,.L_406ddc

            ldr x26,[sp,#216]
            b .L_406d24
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
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            cmp w0,#0
            ccmp x2,#0,#4,ne
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov w19,#0
            str w0,[sp,#60]
            b.eq .L_407548

            stp x21,x22,[sp,#32]
.cfi_offset 22, -40
.cfi_offset 21, -48
            mov w19,#0
            mov x21,x2
            ldrb w0,[x2]
            cbnz w0,.L_407558

            ldp x21,x22,[sp,#32]
.L_407548:

.cfi_restore 22
.cfi_restore 21
            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407558:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov x22,x1
            bl new_rr_data

            str x0,[sp,#64]
            bl new_rr_data

            ldr x19,[sp,#64]
            str x0,[sp,#72]
            mov w1,#1
            adrp x0, .L_412028
            add x0,x0, :lo12:.L_412028
            str w1,[x19]
            bl strdup

            str x0,[x19,#40]
            ldr x19,[sp,#64]
            mov x0,x21
            bl strdup

            ldr x20,[sp,#64]
            str x0,[x19,#48]
            mov x0,x21
            bl strdup

            ldr x19,[sp,#64]
            str x0,[x20,#64]
            mov w1,#58
            ldr x0,[x19,#64]
            bl strchr

            cbz x0,.L_4075d8

            strb wzr,[x0],#1
            mov w2,#10
            mov x1,#0
            ldr x20,[sp,#64]
            bl strtol

            ldr x19,[sp,#64]
            str w0,[x20,#32]
.L_4075d8:

            adrp x0, .L_412538
            add x0,x0, :lo12:.L_412538
            bl strdup

            str x0,[x19,#72]
            ldr x20,[sp,#64]
            adrp x2, .L_411de0
            adrp x1, .L_4121f8
            add x2,x2, :lo12:.L_411de0
            add x1,x1, :lo12:.L_4121f8
            mov w3,#1
            ldr x0,[x20,#8]
            bl hlist_mod

            str x0,[x20,#8]
            adrp x1, header_list
            ldr x19,[x1,:lo12:header_list]
            cbz x19,.L_407640

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_407620:

            ldr x20,[sp,#64]
            mov w3,#1
            ldp x1,x2,[x19]
            ldr x0,[x20,#8]
            bl hlist_mod

            ldr x19,[x19,#24]
            str x0,[x20,#8]
            cbnz x19,.L_407620
.L_407640:

            adrp x19, debug
            ldr w0,[x19,:lo12:debug]
            cbnz w0,.L_407720
.L_40764c:

            ldp x1,x2,[sp,#64]
            mov x3,x22
            add x0,sp,#60
            bl proxy_authenticate

            cbz w0,.L_40770c

            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#407
            b.eq .L_4076b4

            cmp w0,#200
            b.eq .L_407748
.L_407678:

            adrp x1, .L_4125f8
            mov x2,x21
            add x1,x1, :lo12:.L_4125f8
            mov w0,#3
            bl syslog
.L_40768c:

            mov w19,#0
.L_407690:

            add x0,sp,#64
            bl free_rr_data

            add x0,sp,#72
            bl free_rr_data

            mov w0,w19
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4076b4:

.cfi_restore_state 
            ldr w0,[x19,:lo12:debug]
            cbnz w0,.L_407764
.L_4076bc:

            ldr x1,[sp,#64]
            ldr w0,[sp,#60]
            bl headers_send

            cbz w0,.L_4077c4

            ldr w0,[x19,:lo12:debug]
            cbnz w0,.L_407794
.L_4076d4:

            ldr x0,[sp,#72]
            bl reset_rr_data

            ldr x1,[sp,#72]
            ldr w0,[sp,#60]
            bl headers_recv

            ldr w1,[x19,:lo12:debug]
            cbz w0,.L_407780

            ldr x0,[sp,#72]
            cbnz w1,.L_407730

            ldr w0,[x0,#16]
            cmp w0,#200
            b.ne .L_4077a4
.L_407704:

            mov w19,#1
            b .L_407690
.L_40770c:

            adrp x1, .L_412620
            mov w0,#3
            add x1,x1, :lo12:.L_412620
            bl syslog

            b .L_40768c
.L_407720:

            adrp x0, .L_412548
            add x0,x0, :lo12:.L_412548
            bl puts

            b .L_40764c
.L_407730:

            ldr x0,[x0,#8]
            bl hlist_dump

            ldr x0,[sp,#72]
            ldr w0,[x0,#16]
            cmp w0,#200
            b.ne .L_4077a4
.L_407748:

            ldr w0,[x19,:lo12:debug]
            cbz w0,.L_407704

            adrp x0, .L_412468
            mov w19,#1
            add x0,x0, :lo12:.L_412468
            bl puts

            b .L_407690
.L_407764:

            adrp x0, .L_412568
            add x0,x0, :lo12:.L_412568
            bl puts

            ldr x0,[sp,#64]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_4076bc
.L_407780:

            cbz w1,.L_40768c

            adrp x0, .L_4125b0
            add x0,x0, :lo12:.L_4125b0
            bl puts

            b .L_40768c
.L_407794:

            adrp x0, .L_412598
            add x0,x0, :lo12:.L_412598
            bl puts

            b .L_4076d4
.L_4077a4:

            cmp w0,#407
            b.ne .L_407678

            mov x2,x21
            adrp x1, .L_4125d0
            mov w0,#3
            add x1,x1, :lo12:.L_4125d0
            bl syslog

            b .L_40768c
.L_4077c4:

            adrp x0, .L_412580
            add x0,x0, :lo12:.L_412580
            bl puts

            b .L_40768c
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
.size prepare_http_connect, . - prepare_http_connect
.align 4
#-----------------------------------
.globl forward_tunnel
.type forward_tunnel, @function
#-----------------------------------
forward_tunnel:

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
            stp x21,x22,[sp,#32]
            str x23,[sp,#48]
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
            cbz x0,.L_407928

            ldr x22,[x0,#8]
            mov x19,x0
            ldr w23,[x0]
            mov x0,x22
            bl strdup

            movi v31.4s,#0
            mov x20,x0
            ldrh w0,[x19,#16]
            add x1,x19,#20
            add x19,x19,#24
            add x2,sp,#64
            cmp w0,#2
            mov w3,#46
            csel x1,x19,x1,ne
            stp q31,q31,[sp,#64]
            stur q31,[sp,#94]
            bl inet_ntop

            bl new_auth

            mov w1,#58
            mov x21,x0
            mov x0,x20
            bl strchr

            cbz x0,.L_407858

            strb wzr,[x0]
.L_407858:

            mov x2,x20
            mov x1,x22
            mov x0,x21
            bl proxy_connect

            mov w19,w0
            tbnz w0,#31,.L_4078e0

            mov w0,#7
            add x2,sp,#64
            mov x3,x22
            adrp x1, .L_412640
            add x1,x1, :lo12:.L_412640
            bl syslog

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_4078fc

            mov x2,x22
            mov x1,x21
            mov w0,w19
            bl prepare_http_connect

            cbnz w0,.L_4078ec
.L_4078a8:

            mov w0,w19
            bl close
.L_4078b0:

            mov w0,w23
            bl close
.L_4078b8:

            mov x0,x21
            bl free

            mov x0,x20
            bl free

            ldr x23,[sp,#48]
            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_4078e0:

.cfi_restore_state 
            cmn w0,#2
            b.eq .L_4078b8

            b .L_4078b0
.L_4078ec:

            mov w1,w19
            mov w0,w23
            bl tunnel

            b .L_4078a8
.L_4078fc:

            mov w2,w23
            mov x1,x22
            adrp x0, .L_412650
            add x0,x0, :lo12:.L_412650
            bl printf

            mov x2,x22
            mov x1,x21
            mov w0,w19
            bl prepare_http_connect

            cbz w0,.L_4078a8

            b .L_4078ec
.L_407928:

            adrp x3, .L_415758
            add x3,x3, :lo12:.L_415758
            adrp x1, .L_412270
            adrp x0, .L_412280
            add x3,x3,#16
            add x1,x1, :lo12:.L_412270
            add x0,x0, :lo12:.L_412280
            mov w2,#592
            bl __assert_fail
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
            adrp x1, .L_415758
            add x2,x1, :lo12:.L_415758
            add x1,x2,#32
            stp fp,lr,[sp,#-368]!
.cfi_def_cfa_offset 368
.cfi_offset 29, -368
.cfi_offset 30, -360
            mov fp,sp
            ldr q31,[x2,#32]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -352
.cfi_offset 20, -344
            add x19,sp,#264
            ldp q29,q30,[x1,#16]
            stp x23,x24,[sp,#48]
.cfi_offset 23, -320
.cfi_offset 24, -312
            mov x23,x0
            str x2,[sp,#160]
            ldr w0,[x1,#96]
            stp q31,q29,[x19]
            ldp q29,q31,[x1,#48]
            str w0,[x19,#96]
            stp q30,q29,[x19,#32]
            ldr q30,[x1,#80]
            stp q31,q30,[x19,#64]
            bl new_auth

            adrp x1, g_creds
            mov w2,#1
            mov x20,x0
            ldr x1,[x1,:lo12:g_creds]
            bl copy_auth

            add x0,x20,#200
            mov x1,#50
            str x0,[sp,#168]
            bl is_memory_all_zero

            cbnz w0,.L_407e5c

            add x0,x20,#150
            mov x1,#50
            str x0,[sp,#176]
            bl is_memory_all_zero

            cbnz w0,.L_407e5c

            add x0,x20,#250
            mov x1,#50
            str x0,[sp,#184]
            bl is_memory_all_zero

            mov w24,w0
            cbnz w0,.L_407e5c

            stp x21,x22,[sp,#32]
.cfi_offset 22, -328
.cfi_offset 21, -336
            cbz x23,.L_407e7c

            mov x0,x23
            adrp x1, .L_4126d8
            add x1,x1, :lo12:.L_4126d8
            bl strstr

            mov x21,x0
            cbz x0,.L_407e2c

            add x22,x0,#3
            mov w1,#47
            mov x0,x22
            stp x25,x26,[sp,#64]
.cfi_offset 26, -296
.cfi_offset 25, -304
            stp x27,x28,[sp,#80]
.cfi_offset 28, -280
.cfi_offset 27, -288
            bl strchr

            mov x3,x0
            cmp x3,#0
            sub x2,x3,x21
            sub w2,w2,#3
            mov x0,x22
            mov w1,#0
            csel w2,w2,wzr,ne
            bl substr

            mov x22,x0
            adrp x0, .L_412538
            add x0,x0, :lo12:.L_412538
            adrp x1, .L_4126f8
            add x1,x1, :lo12:.L_4126f8
            str x0,[sp,#112]
            adrp x0, .L_4121f8
            add x0,x0, :lo12:.L_4121f8
            str x1,[sp,#96]
            adrp x1, .L_411de0
            add x1,x1, :lo12:.L_411de0
            stp x1,x0,[sp,#120]
            adrp x0, .L_412700
            add x0,x0, :lo12:.L_412700
            adrp x1, .L_412708
            add x1,x1, :lo12:.L_412708
            str x1,[sp,#104]
            str x0,[sp,#144]
            adrp x0, .L_412780
            add x0,x0, :lo12:.L_412780
            str x0,[sp,#136]
            str wzr,[sp,#156]
.L_407aa0:

            bl new_rr_data

            str x0,[sp,#216]
            bl new_rr_data

            mov x21,x0
            ldr x0,[sp,#96]
            str x21,[sp,#208]
            mov w1,#1
            str w1,[x21]
            bl strdup

            str x0,[x21,#40]
            ldr x21,[sp,#208]
            mov x0,x23
            bl strdup

            ldr x25,[sp,#208]
            str x0,[x21,#48]
            ldr x0,[sp,#112]
            bl strdup

            ldr x21,[sp,#208]
            mov w4,#1
            ldp x2,x1,[sp,#120]
            str x0,[x25,#72]
            ldr x0,[x21,#8]
            mov w3,w4
            bl hlist_add

            str x0,[x21,#8]
            cbz x22,.L_407b28

            ldr x21,[sp,#208]
            mov w4,#1
            ldr x1,[sp,#144]
            mov x2,x22
            ldr x0,[x21,#8]
            mov w3,w4
            bl hlist_add

            str x0,[x21,#8]
.L_407b28:

            add x3,x20,#308
            add w21,w24,#1
            ldr x0,[sp,#104]
            mov w1,w21
            ldp w28,w27,[x19]
            mov w2,#5
            ldp w26,w25,[x19,#8]
            stp w26,w28,[x3,#-8]
            stp w27,w25,[x3]
            bl printf

            mov x2,x22
            mov x1,x23
            mov x0,#0
            bl proxy_connect

            str w0,[sp,#204]
            tbnz w0,#31,.L_407e08

            ldp x1,x2,[sp,#208]
            mov x3,x20
            add x0,sp,#204
            bl proxy_authenticate

            ldr x2,[sp,#216]
            cbz w0,.L_407b8c

            ldr w1,[x2,#16]
            cmp w1,#407
            b.ne .L_407c44
.L_407b8c:

            mov x0,x2
            bl reset_rr_data

            ldr x1,[sp,#208]
            ldr w0,[sp,#204]
            bl headers_send

            cbz w0,.L_407c10

            ldr x1,[sp,#216]
            ldr w0,[sp,#204]
            bl headers_recv

            cbz w0,.L_407c10

            ldr x0,[sp,#216]
            ldr w1,[x0,#16]
            cmp w1,#407
            b.ne .L_407cc0

            ldr x0,[x0,#8]
            adrp x24, .L_412410
            add x24,x24, :lo12:.L_412410
            adrp x2, .L_412118
            mov x1,x24
            add x2,x2, :lo12:.L_412118
            bl hlist_subcmp_all

            cbnz w0,.L_407c60

            ldr x0,[sp,#216]
            adrp x2, .L_4127d8
            mov x1,x24
            add x2,x2, :lo12:.L_4127d8
            ldr x0,[x0,#8]
            bl hlist_subcmp_all

            cbz w0,.L_407c70

            adrp x0, .L_4127e0
            add x0,x0, :lo12:.L_4127e0
            bl puts

            b .L_407c18
.L_407c10:

            ldr x0,[sp,#136]
            bl puts
.L_407c18:

            add x0,sp,#216
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr w0,[sp,#204]
            add x19,x19,#20
            bl close

            cmp w21,#5
            b.eq .L_407c80

            mov w24,w21
            b .L_407aa0
.L_407c44:

            ldr w0,[sp,#156]
            add w0,w0,#1
            str w0,[sp,#156]
            adrp x0, .L_412758
            add x0,x0, :lo12:.L_412758
            bl printf

            b .L_407c18
.L_407c60:

            adrp x0, .L_4127b0
            add x0,x0, :lo12:.L_4127b0
            bl puts

            b .L_407c18
.L_407c70:

            adrp x0, .L_412820
            add x0,x0, :lo12:.L_412820
            bl puts

            nop
            nop
            nop
            nop
.L_407c80:

            ldr w0,[sp,#156]
            cmp w0,#5
            b.eq .L_407df8

            adrp x0, .L_412988
            add x0,x0, :lo12:.L_412988
            bl puts
.L_407c98:

            cbz x22,.L_407ca4
.L_407c9c:

            mov x0,x22
            bl free
.L_407ca4:

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
            ldp fp,lr,[sp],#368
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_407cc0:

.cfi_restore_state 
            adrp x0, .L_412850
            add x0,x0, :lo12:.L_412850
            bl printf

            add x19,sp,#224
            add x0,sp,#216
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            ldr w0,[sp,#204]
            bl close

            ldr x1,[sp,#160]
            adrp x0, .L_412868
            add x0,x0, :lo12:.L_412868
            ldp q31,q30,[x1,#160]
            ldr x2,[x1,#192]
            mov w1,w24
            stp q31,q30,[x19]
            str x2,[sp,#256]
            bl printf

            sbfiz x0,x24,#2,#32
            add x1,sp,#280
            add x24,x0,w24, sxtw
            adrp x0, .L_4128a0
            add x0,x0, :lo12:.L_4128a0
            ldrsw x1,[x1,x24,lsl #2]
            ldr x1,[x19,x1,lsl #3]
            bl printf

            cbnz w25,.L_407de0

            cbnz w28,.L_407dac
.L_407d34:

            cbnz w27,.L_407d4c
.L_407d38:

            cbnz w26,.L_407d7c
.L_407d3c:

            adrp x0, .L_412918
            add x0,x0, :lo12:.L_412918
            bl puts

            b .L_407c98
.L_407d4c:

            ldr x0,[sp,#176]
            mov w2,#8
            mov x1,#16
            bl printmem

            mov x19,x0
            adrp x1, .L_4128e8
            add x0,x1, :lo12:.L_4128e8
            mov x1,x19
            bl printf

            mov x0,x19
            bl free

            cbz w26,.L_407d3c
.L_407d7c:

            ldr x0,[sp,#184]
            mov w2,#8
            mov x1,#16
            bl printmem

            mov x19,x0
            adrp x1, .L_412900
            add x0,x1, :lo12:.L_412900
            mov x1,x19
            bl printf

            mov x0,x19
            bl free

            b .L_407d3c
.L_407dac:

            ldr x0,[sp,#168]
            mov w2,#8
            mov x1,#16
            bl printmem

            mov x19,x0
            adrp x1, .L_4128d0
            add x0,x1, :lo12:.L_4128d0
            mov x1,x19
            bl printf

            mov x0,x19
            bl free

            cbz w27,.L_407d38

            b .L_407d4c
.L_407de0:

            adrp x0, .L_4128b8
            mov w1,w25
            add x0,x0, :lo12:.L_4128b8
            bl printf

            cbz w28,.L_407d34

            b .L_407dac
.L_407df8:

            adrp x0, .L_412950
            add x0,x0, :lo12:.L_412950
            bl puts

            b .L_407c98
.L_407e08:

            adrp x0, .L_412728
            add x0,x0, :lo12:.L_412728
            bl puts

            add x0,sp,#216
            bl free_rr_data

            add x0,sp,#208
            bl free_rr_data

            cbnz x22,.L_407c9c

            b .L_407ca4
.L_407e2c:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x0, stderr
            mov x2,x23
            adrp x1, .L_4126e0
            add x1,x1, :lo12:.L_4126e0
            ldr x0,[x0,:lo12:stderr]
            bl fprintf

            mov x0,x20
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#368
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b free
.L_407e5c:

.cfi_def_cfa_offset 368
.cfi_offset 19, -352
.cfi_offset 20, -344
.cfi_offset 23, -320
.cfi_offset 24, -312
.cfi_offset 29, -368
.cfi_offset 30, -360
            adrp x0, .L_412678
            add x0,x0, :lo12:.L_412678
            stp x21,x22,[sp,#32]
.cfi_offset 22, -328
.cfi_offset 21, -336
            stp x25,x26,[sp,#64]
.cfi_offset 26, -296
.cfi_offset 25, -304
            stp x27,x28,[sp,#80]
.cfi_offset 28, -280
.cfi_offset 27, -288
            bl puts

            mov w0,#1
            bl exit
.L_407e7c:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            ldr x0,[sp,#160]
            adrp x1, .L_412270
            mov w2,#661
            add x1,x1, :lo12:.L_412270
            add x3,x0,#136
            adrp x0, .L_4126c8
            add x0,x0, :lo12:.L_4126c8
            stp x25,x26,[sp,#64]
.cfi_offset 26, -296
.cfi_offset 25, -304
            stp x27,x28,[sp,#80]
.cfi_offset 28, -280
.cfi_offset 27, -288
            bl __assert_fail
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
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, .L_4129e8
            add x1,x1, :lo12:.L_4129e8
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x20,x0
            bl strcspn

            mov x19,x0
            mov x0,x20
            bl strlen

            cmp x19,x0
            cset w0,ne
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
.size is_http_header, . - is_http_header
.align 4
#-----------------------------------
.globl get_http_header_name
.type get_http_header_name, @function
#-----------------------------------
get_http_header_name:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            adrp x1, .L_4129e8
            add x1,x1, :lo12:.L_4129e8
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
            bl strcspn

            mov x20,x0
            mov x0,x19
            bl strlen

            cmp w20,w0
            b.eq .L_407f48

            mov w2,w20
            mov x0,x19
            ldp x19,x20,[sp,#16]
            mov w1,#0
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b substr
.L_407f48:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            mov x0,#0
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
.size get_http_header_name, . - get_http_header_name
.align 4
#-----------------------------------
.globl get_http_header_value
.type get_http_header_value, @function
#-----------------------------------
get_http_header_value:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov w1,#58
            mov fp,sp
            bl strchr

            cbz x0,.L_407f98

            ldrb w2,[x0,#1]
            add x0,x0,#1
            cmp w2,#32
            b.ne .L_407f90
.L_407f84:

            ldrb w1,[x0,#1]!
            cmp w1,#32
            b.eq .L_407f84
.L_407f90:

            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            b strdup
.L_407f98:

.cfi_restore_state 
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size get_http_header_value, . - get_http_header_value
.align 4
#-----------------------------------
.globl headers_recv
.type headers_recv, @function
#-----------------------------------
headers_recv:

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
            mov x20,x1
            mov w1,#4096
            stp x21,x22,[sp,#32]
.cfi_offset 21, -112
.cfi_offset 22, -104
            mov w21,w0
            mov x0,#4096
            stp x23,x24,[sp,#48]
            str w1,[sp,#124]
            str xzr,[sp,#136]
.cfi_offset 23, -96
.cfi_offset 24, -88
            bl zmalloc

            mov x3,x0
            add x2,sp,#124
            add x1,sp,#128
            mov w0,w21
            str x3,[sp,#128]
            bl so_recvln

            mov w19,w0
            ldr x0,[sp,#128]
            cmp w19,#0
            b.le .L_408274

            adrp x24, debug
            stp x25,x26,[sp,#64]
.cfi_offset 26, -72
.cfi_offset 25, -80
            ldr w1,[x24,:lo12:debug]
            cbnz w1,.L_40825c
.L_408008:

            bl trimr

            adrp x23, .L_412720
            ldr x0,[sp,#128]
            add x23,x23, :lo12:.L_412720
            bl strdup

            mov x22,x0
            ldr x19,[sp,#128]
            mov x0,x19
            bl strlen

            add x2,sp,#136
            mov x25,x0
            mov x1,x23
            mov x0,x19
            bl strtok_r

            mov x19,x0
            cbz x0,.L_408474

            adrp x1, .L_412a00
            mov x2,#5
            add x1,x1, :lo12:.L_412a00
            bl strncasecmp

            cbz w0,.L_40834c

            adrp x1, .L_412a08
            mov x0,x19
            add x1,x1, :lo12:.L_412a08
            mov x2,#3
            bl strncasecmp

            cbz w0,.L_40829c

            adrp x1, .L_412a10
            mov x0,x22
            add x1,x1, :lo12:.L_412a10
            bl strstr

            cbz x0,.L_408668

            movi v31.4s,#0
            mov w0,#1
            str w0,[x20]
            mov x0,x19
            str wzr,[x20,#28]
            str xzr,[x20,#72]
            stur q31,[x20,#40]
            stur q31,[x20,#56]
            bl strdup

            add x2,sp,#136
            str x0,[x20,#40]
            mov x1,x23
            mov x0,#0
            bl strtok_r

            cbz x0,.L_4080cc

            bl strdup

            str x0,[x20,#48]
.L_4080cc:

            add x2,sp,#136
            mov x1,x23
            mov x0,#0
            bl strtok_r

            cbz x0,.L_4080e8

            bl strdup

            str x0,[x20,#72]
.L_4080e8:

            ldr x19,[x20,#48]
            cbz x19,.L_40850c

            ldr x0,[x20,#72]
            cbz x0,.L_40850c

            mov w1,#47
            mov w25,#-1
            stp x27,x28,[sp,#80]
.cfi_offset 28, -56
.cfi_offset 27, -64
            bl strchr

            mov x23,x0
            cbz x0,.L_408140

            bl strlen

            cmp x0,#3
            b.ls .L_408140

            bl __ctype_b_loc

            ldrb w1,[x23,#1]
            ldr x2,[x0]
            ubfiz x0,x1,#1,#8
            ldrh w0,[x2,x0]
            tbnz w0,#11,.L_4085fc

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408140:

            str w25,[x20,#36]
            mov x0,x19
            adrp x1, .L_4126d8
            add x1,x1, :lo12:.L_4126d8
            bl strstr

            cmp x0,#0
            add x0,x0,#3
            mov w1,#47
            csel x19,x0,x19,ne
            mov x0,x19
            bl strchr

            str x0,[sp,#136]
            mov x23,x0
            cbz x0,.L_408624

            sub w2,w0,w19
            mov w1,#0
            mov x0,x19
            bl substr

            mov x27,x0
            mov x23,#0
            ldr x0,[sp,#136]
            bl strdup

            str x0,[x20,#56]
.L_40819c:

            adrp x25, .L_4129e8
            add x25,x25, :lo12:.L_4129e8
.L_4081a4:

            add x2,sp,#124
            add x1,sp,#128
            mov w0,w21
            bl so_recvln

            mov w19,w0
            ldr x0,[sp,#128]
            bl trimr

            cmp w19,#0
            b.le .L_408200

            ldr x28,[sp,#128]
            mov x1,x25
            mov x0,x28
            bl strcspn

            mov x26,x0
            mov x0,x28
            bl strlen

            cmp x26,x0
            b.ne .L_4083d0
.L_4081ec:

            ldrb w0,[x28]
            cbnz w0,.L_4081a4

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408200:

            ldr w0,[x20]
            cbnz w0,.L_40849c

            cbz x22,.L_408214
.L_40820c:

            mov x0,x22
            bl free
.L_408214:

            cbz x23,.L_408220
.L_408218:

            mov x0,x23
            bl free
.L_408220:

            cbz x27,.L_40822c
.L_408224:

            mov x0,x27
            bl free
.L_40822c:

            ldr x0,[sp,#128]
            bl free

            mov w0,#1
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            cmp w19,#0
            b.le .L_40827c

            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#144
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
.L_40825c:

.cfi_def_cfa_offset 144
.cfi_offset 19, -128
.cfi_offset 20, -120
.cfi_offset 21, -112
.cfi_offset 22, -104
.cfi_offset 23, -96
.cfi_offset 24, -88
.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 29, -144
.cfi_offset 30, -136
            mov x1,x0
            adrp x0, .L_4129f0
            add x0,x0, :lo12:.L_4129f0
            bl printf

            ldr x0,[sp,#128]
            b .L_408008
.L_408274:

.cfi_restore 25
.cfi_restore 26
            adrp x24, debug
            bl free
.L_40827c:

            ldr w0,[x24,:lo12:debug]
            cbnz w0,.L_4083b8
.L_408284:

            ldp x19,x20,[sp,#16]
            mov w0,#0
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#144
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
.L_40829c:

.cfi_def_cfa_offset 144
.cfi_offset 19, -128
.cfi_offset 20, -120
.cfi_offset 21, -112
.cfi_offset 22, -104
.cfi_offset 23, -96
.cfi_offset 24, -88
.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 29, -144
.cfi_offset 30, -136
            str wzr,[x20]
            mov x0,x19
            str wzr,[x20,#28]
            bl strdup

            stp x0,xzr,[x20,#72]
.L_4082b0:

            mov w0,#-1
.L_4082b4:

            str w0,[x20,#36]
            add x2,sp,#136
            mov x1,x23
            mov x0,#0
            bl strtok_r

            mov x19,x0
            cbz x0,.L_408450

            bl strdup

            mov x23,x0
            bl strlen

            add x19,x19,x0
            ldr x2,[sp,#128]
            add x25,x2,w25, sxtw
            b .L_4082f8
.L_4082ec:

            add x19,x19,#1
            cmp w0,#32
            b.ne .L_408304
.L_4082f8:

            ldrb w0,[x19]
            cmp x25,x19
            b.hi .L_4082ec
.L_408304:

            ldrb w0,[x19]
            cbnz w0,.L_408528

            ldr x0,[x20,#80]
.L_408310:

            cbz x0,.L_408654
.L_408314:

            mov x0,x23
            bl strlen

            cmp x0,#3
            b.eq .L_4084d0

            cbz x22,.L_408330

            mov x0,x22
            bl free
.L_408330:

            mov x0,x23
            bl free
.L_408338:

            ldr x0,[sp,#128]
            bl free
.L_408340:

            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            mov w19,#-2
            b .L_40827c
.L_40834c:

.cfi_restore_state 
            str wzr,[x20]
            mov x0,x19
            str wzr,[x20,#28]
            bl strdup

            stp x0,xzr,[x20,#72]
            mov w1,#47
            bl strchr

            mov x19,x0
            cbz x0,.L_4082b0

            bl strlen

            cmp x0,#3
            b.ls .L_4082b0

            bl __ctype_b_loc

            ldrb w1,[x19,#1]
            ldr x0,[x0]
            ubfiz x2,x1,#1,#8
            ldrh w2,[x0,x2]
            tbz w2,#11,.L_4082b0

            ldrb w2,[x19,#3]
            ubfiz x3,x2,#1,#8
            ldrh w0,[x0,x3]
            tbz w0,#11,.L_4082b0

            sub w1,w1,#48
            sub w2,w2,#48
            add w1,w1,w1, lsl #2
            add w0,w2,w1, lsl #1
            b .L_4082b4
.L_4083b8:

.cfi_restore 25
.cfi_restore 26
            mov w2,w19
            mov w1,w21
            adrp x0, .L_412a98
            add x0,x0, :lo12:.L_412a98
            bl printf

            b .L_408284
.L_4083d0:

.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 27, -64
.cfi_offset 28, -56
            ldr x1,[x20,#8]
            stp xzr,x1,[sp,#96]
            cmp w26,w0
            b.eq .L_4083f8

            mov x0,x28
            mov w2,w26
            mov w1,#0
            bl substr

            ldr x28,[sp,#128]
            str x0,[sp,#96]
.L_4083f8:

            mov x0,x28
            mov w1,#58
            bl strchr

            mov x2,x0
            cbz x0,.L_408434

            ldrb w1,[x0,#1]
            add x0,x0,#1
            cmp w1,#32
            b.ne .L_40842c

            nop
            nop
            nop
            nop
.L_408420:

            ldrb w1,[x0,#1]!
            cmp w1,#32
            b.eq .L_408420
.L_40842c:

            bl strdup

            mov x2,x0
.L_408434:

            ldp x1,x0,[sp,#96]
            mov w4,#0
            mov w3,#0
            bl hlist_add

            str x0,[x20,#8]
            ldr x28,[sp,#128]
            b .L_4081ec
.L_408450:

.cfi_restore 27
.cfi_restore 28
            ldr x0,[x20,#80]
            cbz x0,.L_408684
.L_408458:

            ldr x19,[sp,#128]
            cbz x22,.L_408818

            mov x0,x22
            bl free

            mov x0,x19
            bl free

            b .L_408340
.L_408474:

            ldr w0,[x24,:lo12:debug]
            cbnz w0,.L_408538
.L_40847c:

            cbz x22,.L_408824
.L_408480:

            mov x0,x22
            bl free

            ldr x0,[sp,#128]
            bl free
.L_408490:

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            mov w19,#-4
            b .L_40827c
.L_40849c:

.cfi_offset 25, -80
.cfi_offset 26, -72
.cfi_offset 27, -64
.cfi_offset 28, -56
            cbz x27,.L_4086b4

            ldrb w0,[x27]
            cbnz w0,.L_40854c

            ldr w0,[x24,:lo12:debug]
            cbnz w0,.L_4086dc

            cbz x22,.L_4087b4

            mov x0,x22
            bl free

            cbz x23,.L_4084c8
.L_4084c0:

            mov x0,x23
            bl free
.L_4084c8:

            mov w19,#-6
            b .L_408224
.L_4084d0:

.cfi_restore 27
.cfi_restore 28
            mov x0,x23
            mov w2,#10
            mov x1,#0
            stp x27,x28,[sp,#80]
.cfi_offset 28, -56
.cfi_offset 27, -64
            bl strtol

            str w0,[x20,#16]
            mov x27,#0
            cbnz w0,.L_40819c

            cbz x22,.L_4084fc

            mov x0,x22
            bl free
.L_4084fc:

            mov x0,x23
            bl free

            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_408338
.L_40850c:

            mov x0,x22
            bl free

            ldr x0,[sp,#128]
            mov w19,#-3
            bl free

            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            b .L_40827c
.L_408528:

.cfi_restore_state 
            mov x0,x19
            bl strdup

            str x0,[x20,#80]
            b .L_408310
.L_408538:

            mov x1,x22
            adrp x0, .L_412a18
            add x0,x0, :lo12:.L_412a18
            bl printf

            b .L_40847c
.L_40854c:

.cfi_offset 27, -64
.cfi_offset 28, -56
            ldr x0,[x20,#8]
            adrp x25, .L_412700
            add x25,x25, :lo12:.L_412700
            mov x1,x25
            bl hlist_get

            cbz x0,.L_408748
.L_408564:

            ldrb w0,[x27]
            cmp w0,#91
            b.eq .L_408710

            mov x0,x27
            mov w1,#58
            bl strchr

            cbz x0,.L_4086f8

            mov x25,x0
            mov x0,x27
            strb wzr,[x25],#1
            bl strdup

            str x0,[x20,#64]
            mov x0,x25
.L_408598:

            mov x1,#0
            mov w2,#10
            bl strtol

            mov x1,x0
            ldr x25,[x20,#64]
            str w0,[x20,#32]
.L_4085b0:

            cbnz w1,.L_4085dc

            ldr x0,[x20,#48]
            adrp x1, .L_412a68
            mov x2,#5
            add x1,x1, :lo12:.L_412a68
            bl strncasecmp

            cmp w0,#0
            mov w1,#80
            mov w0,#443
            csel w0,w0,w1,eq
            str w0,[x20,#32]
.L_4085dc:

            cbz x25,.L_4087ec

            ldrb w0,[x25]
            cbz w0,.L_408698

            ldr w0,[x20,#32]
            cbz w0,.L_408698

            cbnz x22,.L_40820c

            cbnz x23,.L_408218

            b .L_408224
.L_4085fc:

            ldrb w0,[x23,#3]
            sub w1,w1,#48
            add w1,w1,w1, lsl #2
            sub w4,w0,#48
            ubfiz x3,x0,#1,#8
            add w0,w4,w1, lsl #1
            ldrh w1,[x2,x3]
            tst x1,#2048
            csel w25,w0,w25,ne
            b .L_408140
.L_408624:

            mov x0,x19
            bl strlen

            mov w2,w0
            mov w1,#0
            mov x0,x19
            bl substr

            mov x27,x0
            adrp x0, .L_411bf8
            add x0,x0, :lo12:.L_411bf8
            bl strdup

            str x0,[x20,#56]
            b .L_40819c
.L_408654:

.cfi_restore 27
.cfi_restore 28
            adrp x0, .L_411da8
            add x0,x0, :lo12:.L_411da8
            bl strdup

            str x0,[x20,#80]
            b .L_408314
.L_408668:

            ldr w0,[x24,:lo12:debug]
            cbz w0,.L_408480

            mov x1,x22
            adrp x0, .L_412a18
            add x0,x0, :lo12:.L_412a18
            bl printf

            b .L_408480
.L_408684:

            adrp x0, .L_411da8
            add x0,x0, :lo12:.L_411da8
            bl strdup

            str x0,[x20,#80]
            b .L_408458
.L_408698:

.cfi_offset 27, -64
.cfi_offset 28, -56
            cbz x22,.L_4087d8

            mov x0,x22
            mov w19,#-5
            bl free

            cbnz x23,.L_408218
.L_4086ac:

            mov w19,#-5
            b .L_408224
.L_4086b4:

            ldr w0,[x24,:lo12:debug]
            cbnz w0,.L_408768

            cbz x22,.L_408790

            mov x0,x22
            bl free

            cbz x23,.L_4086d4

            mov x0,x23
            bl free
.L_4086d4:

            mov w19,#-6
            b .L_40822c
.L_4086dc:

            adrp x0, .L_412a40
            mov x1,x22
            add x0,x0, :lo12:.L_412a40
            bl printf

            cbz x22,.L_40880c
.L_4086f0:

            mov w19,#-6
            b .L_40820c
.L_4086f8:

            mov x0,x27
            bl strdup

            ldr w1,[x20,#32]
            mov x25,x0
            str x0,[x20,#64]
            b .L_4085b0
.L_408710:

            mov w1,#93
            mov x0,x27
            bl strchr

            mov x26,x0
            add x0,x27,#1
            strb wzr,[x26]
            bl strdup

            str x0,[x20,#64]
            mov x25,x0
            ldrb w0,[x26,#1]
            cmp w0,#58
            b.eq .L_408788

            ldr w1,[x20,#32]
            b .L_4085b0
.L_408748:

            ldr x0,[x20,#8]
            mov w4,#1
            mov x1,x25
            mov x2,x27
            mov w3,w4
            bl hlist_add

            str x0,[x20,#8]
            b .L_408564
.L_408768:

            adrp x0, .L_412a40
            mov x1,x22
            add x0,x0, :lo12:.L_412a40
            bl printf

            cbnz x22,.L_4086f0

            cbz x23,.L_4086d4

            mov w19,#-6
            b .L_408218
.L_408788:

            add x0,x26,#2
            b .L_408598
.L_408790:

            cbz x23,.L_4087cc

            mov x0,x23
            bl free

            ldr x0,[sp,#128]
            bl free
.L_4087a4:

            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            mov w19,#-6
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40827c
.L_4087b4:

.cfi_restore_state 
            cbnz x23,.L_4084c0

            mov x0,x27
            bl free

            ldr x0,[sp,#128]
            bl free

            b .L_4087a4
.L_4087cc:

            ldr x0,[sp,#128]
            bl free

            b .L_4087a4
.L_4087d8:

            cbz x23,.L_4086ac

            mov x0,x23
            mov w19,#-5
            bl free

            b .L_408224
.L_4087ec:

            adrp x3, .L_415820
            adrp x1, .L_412a70
            adrp x0, .L_412a80
            add x3,x3, :lo12:.L_415820
            add x1,x1, :lo12:.L_412a70
            add x0,x0, :lo12:.L_412a80
            mov w2,#259
            bl __assert_fail
.L_40880c:

            cbz x23,.L_4084c8

            mov w19,#-6
            b .L_408218
.L_408818:

.cfi_restore 27
.cfi_restore 28
            mov x0,x19
            bl free

            b .L_408340
.L_408824:

            ldr x0,[sp,#128]
            bl free

            b .L_408490
.cfi_endproc 
.size headers_recv, . - headers_recv
.align 4
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
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov w22,w0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -32
.cfi_offset 24, -24
            mov x23,x1
            ldr x0,[x1,#72]
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl strlen

            add w20,w0,#20
            ldr w1,[x23]
            cbz w1,.L_408958

            ldr x0,[x23,#40]
            bl strlen

            mov x19,x0
            ldr x0,[x23,#48]
            bl strlen

            add w19,w19,w0
            add w20,w19,w20
.L_408880:

            ldr x21,[x23,#8]
            cbz x21,.L_4088b0
.L_408888:

            ldr x0,[x21]
            add w20,w20,#20
            bl strlen

            mov x19,x0
            ldr x0,[x21,#8]
            bl strlen

            add w19,w19,w0
            ldr x21,[x21,#24]
            add w20,w20,w19
            cbnz x21,.L_408888
.L_4088b0:

            sxtw x25,w20
            mov x0,x25
            bl zmalloc

            ldr w21,[x23]
            mov x24,x0
            cbnz w21,.L_4089a0

            ldr w1,[x23,#20]
            cbz w1,.L_408968
.L_4088d0:

            ldr x19,[x23,#8]
            cbz x19,.L_408904

            adrp x23, .L_412ad8
            add x23,x23, :lo12:.L_412ad8
.L_4088e0:

            ldp x3,x4,[x19]
            sub w1,w20,w21
            add x0,x24,w21, sxtw
            mov x2,x23
            sxtw x1,w1
            bl snprintf

            add w21,w21,w0
            ldr x19,[x19,#24]
            cbnz x19,.L_4088e0
.L_408904:

            mov x2,x25
            adrp x1, .L_412ac0
            add x1,x1, :lo12:.L_412ac0
            mov x0,x24
            bl strlcat

            mov w0,w22
            bl so_closed

            cbz w0,.L_4089c0

            mov w20,#-999
            mov x0,x24
            bl free
.L_408930:

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_408988
.L_40893c:

            ldr x25,[sp,#64]
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
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
.L_408958:

.cfi_restore_state 
            ldr x0,[x23,#80]
            bl strlen

            add w20,w20,w0
            b .L_408880
.L_408968:

            ldp x3,x5,[x23,#72]
            mov x1,x25
            ldr w4,[x23,#16]
            adrp x2, .L_412ac8
            add x2,x2, :lo12:.L_412ac8
            bl snprintf

            mov w21,w0
            b .L_4088d0
.L_408988:

            mov w2,w20
            mov w1,w22
            adrp x0, .L_412ae8
            add x0,x0, :lo12:.L_412ae8
            bl printf

            b .L_40893c
.L_4089a0:

            ldp x3,x4,[x23,#40]
            mov x1,x25
            ldr x5,[x23,#72]
            adrp x2, .L_412ab8
            add x2,x2, :lo12:.L_412ab8
            bl snprintf

            mov w21,w0
            b .L_4088d0
.L_4089c0:

            add w21,w21,#2
            mov x1,x24
            mov w0,w22
            sxtw x2,w21
            bl write_wrapper

            mov x19,x0
            mov x0,x24
            mov w20,w19
            bl free

            cmp w19,#0
            b.le .L_408930

            mov w0,#1
            cmp w21,w19
            b.ne .L_408930

            ldr x25,[sp,#64]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
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
.cfi_endproc 
.size headers_send, . - headers_send
.align 4
#-----------------------------------
.globl data_send
.type data_send, @function
#-----------------------------------
data_send:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbnz x2,.L_408a1c

            mov w0,#1
            ret 
.L_408a1c:

            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov w21,w0
            mov x0,#2048
            stp x27,x28,[sp,#80]
.cfi_offset 27, -32
.cfi_offset 28, -24
            mvn w27,w21
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            mov x19,x2
            stp x23,x24,[sp,#48]
.cfi_offset 23, -64
.cfi_offset 24, -56
            mov w24,w1
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            bl zmalloc

            mov x23,x0
            lsr w0,w27,#31
            str w0,[sp,#108]
            cmn x19,#1
            b.eq .L_408c6c

            mov w1,#1
            mov w20,#0
            mov x0,#0
            str w1,[sp,#104]
            b .L_408ae0
.L_408a78:

            add w20,w20,w0
            tbnz w21,#31,.L_408ac4

            adrp x28, debug
            add x26,x28, :lo12:debug
            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_408bfc

            mov w0,w21
            bl so_closed

            cbnz w0,.L_408c84
.L_408a9c:

            mov x1,x23
            sxtw x2,w27
            mov w0,w21
            bl write_wrapper

            ldr w1,[x26]
            mov x22,x0
            str w0,[sp,#104]
            cbnz w1,.L_408c08
.L_408abc:

            cmp w22,#0
            b.le .L_408b78
.L_408ac4:

            mov w22,#2048
            mov x2,#2048
            cmn x19,#1
            b.eq .L_408af4

            sxtw x0,w20
            cmp x19,x0
            b.le .L_408c3c
.L_408ae0:

            sub x0,x19,x0
            cmp x0,#2048
            b.gt .L_408b8c

            sub w22,w19,w20
            sxtw x2,w22
.L_408af4:

            mov x1,x23
            mov w0,w24
            bl read

            mov x27,x0
            mov w25,w0
            cmp w0,#0
            b.gt .L_408a78

            tbnz w21,#31,.L_408ba4

            adrp x28, debug
            add x26,x28, :lo12:debug
            ldr w0,[x28,:lo12:debug]
            cbz w0,.L_408b98

            cbz w27,.L_408bfc

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x5,x0
.L_408b38:

            mov w2,w22
            mov x4,x19
            mov w3,w20
            mov w1,w27
            adrp x0, .L_412b28
            add x0,x0, :lo12:.L_412b28
            bl printf

            mov w0,w21
            bl so_closed

            cbnz w0,.L_408c84

            ldr w0,[sp,#108]
            cmp w27,#0
            ccmp w0,#0,#4,gt
            b.ne .L_408a9c

            cmp w27,#0
            b.gt .L_408ac4
.L_408b78:

            ldr w0,[sp,#104]
            cmp w0,#0
            ccmp w27,#0,#4,gt
            cset w22,le
            b .L_408c40
.L_408b8c:

            mov x2,#2048
            mov w22,w2
            b .L_408af4
.L_408b98:

            mov w0,w21
            bl so_closed

            cbnz w0,.L_408c84
.L_408ba4:

            mov x0,x23
            bl free
.L_408bac:

            ldr w0,[sp,#104]
            cmp w27,#0
            ccmp w0,#0,#4,eq
            b.le .L_408bd0

            cmn x19,#1
            b.eq .L_408c4c

            cmp x19,w20, sxtw
            b.eq .L_408c4c

            mov w25,#0
.L_408bd0:

            adrp x28, debug
.L_408bd4:

            ldr w0,[x28,:lo12:debug]
            cbnz w0,.L_408c20
.L_408bdc:

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
.L_408bfc:

.cfi_restore_state 
            adrp x5, .L_412b20
            add x5,x5, :lo12:.L_412b20
            b .L_408b38
.L_408c08:

            mov w2,w27
            mov w1,w22
            adrp x0, .L_412b60
            add x0,x0, :lo12:.L_412b60
            bl printf

            b .L_408abc
.L_408c20:

            mov w3,w25
            mov w2,w24
            mov w1,w21
            adrp x0, .L_412b80
            add x0,x0, :lo12:.L_412b80
            bl printf

            b .L_408bdc
.L_408c3c:

            mov w22,#0
.L_408c40:

            mov x0,x23
            bl free

            cbnz w22,.L_408bac
.L_408c4c:

            ldp x19,x20,[sp,#16]
            mov w0,#1
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
.L_408c6c:

.cfi_restore_state 
            mov x2,#2048
            mov w0,#1
            mov w22,w2
            mov w20,#0
            str w0,[sp,#104]
            b .L_408af4
.L_408c84:

            mov x0,x23
            mov w25,#-999
            bl free

            b .L_408bd4
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
.size data_send, . - data_send
.align 4
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
            stp x21,x22,[sp,#32]
.cfi_offset 21, -64
.cfi_offset 22, -56
            mov w21,w1
            mov w1,#4096
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            mov w20,w0
            mov x0,#4096
            stp x23,x24,[sp,#48]
.cfi_offset 23, -48
.cfi_offset 24, -40
            str w1,[sp,#76]
            str xzr,[sp,#88]
            bl zmalloc

            str x0,[sp,#80]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408ce0:

            add x2,sp,#76
            add x1,sp,#80
            mov w0,w21
            bl so_recvln

            add x1,sp,#88
            mov w2,#16
            cmp w0,#0
            b.le .L_408e3c

            ldr x0,[sp,#80]
            bl strtol

            mov x19,x0
            mov w22,w0
            bl __ctype_b_loc

            ldr x1,[sp,#88]
            ldr x0,[x0]
            ldrb w2,[x1]
            cmp w2,#59
            ubfiz x2,x2,#1,#8
            ldrh w2,[x0,x2]
            and w2,w2,#8192
            ccmp w2,#0,#0,ne
            b.eq .L_408e68

            tbz w20,#31,.L_408de8

            cbnz w19,.L_408e08
.L_408d40:

            mvn w2,w20
            mov w23,#0
            lsr w19,w2,#31
            b .L_408d70
.L_408d50:

            cmp w24,#0
            ldr x0,[sp,#80]
            ccmp w22,w23,#0,ne
            b.ne .L_408dcc
.L_408d60:

            ldrb w1,[x0]
            cmp w1,#10
            ccmp w1,#13,#4,ne
            b.eq .L_408dcc
.L_408d70:

            add x2,sp,#76
            add x1,sp,#80
            mov w0,w21
            bl so_recvln

            cmp w0,#0
            cset w24,gt
            cmp w24,#0
            ccmp w19,#0,#4,ne
            b.eq .L_408d50

            ldr x22,[sp,#80]
            mov x0,x22
            bl strlen

            mov x2,x0
            mov x1,x22
            mov w0,w20
            mov w22,w2
            sxtw x2,w2
            bl write_wrapper

            cmp w24,#0
            mov w23,w0
            ldr x0,[sp,#80]
            ccmp w22,w23,#0,ne
            b.eq .L_408d60
.L_408dcc:

            bl free

            mov w0,#1
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
.L_408de8:

.cfi_restore_state 
            ldr x23,[sp,#80]
            mov x0,x23
            bl strlen

            mov x1,x23
            mov x2,x0
            mov w0,w20
            bl write_wrapper

            cbz w19,.L_408d40
.L_408e08:

            add w2,w19,#2
            mov w1,w21
            mov w0,w20
            sxtw x2,w2
            bl data_send

            cbnz w0,.L_408ce0

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_408e48

            adrp x0, .L_412c18
            add x0,x0, :lo12:.L_412c18
            bl puts

            b .L_408e48
.L_408e3c:

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_408e84
.L_408e48:

            ldr x0,[sp,#80]
            bl free

            mov w0,#0
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
.L_408e68:

.cfi_restore_state 
            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_408e48

            adrp x0, .L_412be0
            add x0,x0, :lo12:.L_412be0
            bl puts

            b .L_408e48
.L_408e84:

            adrp x0, .L_412bb8
            add x0,x0, :lo12:.L_412bb8
            bl puts

            b .L_408e48
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
.size chunked_data_send, . - chunked_data_send
.align 4
#-----------------------------------
.globl tunnel
.type tunnel, @function
#-----------------------------------
tunnel:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-240]!
.cfi_def_cfa_offset 240
.cfi_offset 29, -240
.cfi_offset 30, -232
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            stp x23,x24,[sp,#48]
.cfi_offset 19, -224
.cfi_offset 20, -216
.cfi_offset 21, -208
.cfi_offset 22, -200
.cfi_offset 23, -192
.cfi_offset 24, -184
            mov w24,w1
            stp x25,x26,[sp,#64]
.cfi_offset 25, -176
.cfi_offset 26, -168
            mov w25,w0
            mov x0,#4096
            str x27,[sp,#80]
.cfi_offset 27, -160
            bl zmalloc

            adrp x1, debug
            mov x23,x0
            ldr w0,[x1,:lo12:debug]
            cbnz w0,.L_409010
.L_408edc:

            cmp w25,#0
            add w21,w25,#63
            csel w21,w21,w25,lt
            add w20,w24,#63
            cmp w24,#0
            mov x26,#1
            csel w20,w20,w24,lt
            asr w21,w21,#6
            movi v31.4s,#0
            add x19,sp,#112
            asr w20,w20,#6
            sbfiz x21,x21,#3,#32
            lsl x22,x26,x25
            sbfiz x20,x20,#3,#32
            lsl x26,x26,x24
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_408f20:

            stp q31,q31,[x19]
            mov x1,x19
            mov x4,#0
            stp q31,q31,[x19,#32]
            mov x3,#0
            mov x2,#0
            stp q31,q31,[x19,#64]
            mov w0,#1024
            stp q31,q31,[x19,#96]
            str x22,[x19,x21]
            ldr x5,[x19,x20]
            orr x5,x5,x26
            str x5,[x19,x20]
            bl select

            cmp w0,#0
            movi v31.4s,#0
            b.le .L_408fb0

            ldr x1,[x19,x21]
            mov w0,w24
            mov w27,w25
            tst x22,x1
            b.eq .L_408f80

            mov w27,w24
            mov w0,w25
.L_408f80:

            mov x2,#4096
            mov x1,x23
            bl read

            mov x2,x0
            mov x1,x23
            mov w0,w27
            cmp w2,#0
            b.le .L_408fdc

            sxtw x2,w2
            bl write_wrapper

            movi v31.4s,#0
            b .L_408f20
.L_408fb0:

            b.eq .L_408f20

            mov x0,x23
            bl free

            ldr x27,[sp,#80]
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#240
.cfi_remember_state 
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
            ret 
.L_408fdc:

.cfi_restore_state 
            mov x0,x23
            str x2,[sp,#104]
            bl free

            ldr x2,[sp,#104]
            ldr x27,[sp,#80]
            cmp w2,#0
            ldp x19,x20,[sp,#16]
            cset w0,eq
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#240
.cfi_remember_state 
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
            ret 
.L_409010:

.cfi_restore_state 
            mov w2,w24
            mov w1,w25
            adrp x0, .L_412c48
            add x0,x0, :lo12:.L_412c48
            bl printf

            b .L_408edc
.cfi_endproc 
.size tunnel, . - tunnel
.align 3
#-----------------------------------
.globl http_has_body
.type http_has_body, @function
#-----------------------------------
http_has_body:

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
            mov x20,x0
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            cbz x1,.L_409158

            ldr w0,[x1,#28]
            cbz w0,.L_40909c

            cbz x20,.L_40915c

            cmp x1,x20
            b.eq .L_409194
.L_409058:

            ldr w0,[x20]
            cbz w0,.L_40917c

            ldr x19,[x20,#40]
            adrp x0, .L_4126f8
            add x0,x0, :lo12:.L_4126f8
            mov x1,x19
            bl strcasecmp

            cbnz w0,.L_4091b8
.L_409078:

            ldr x0,[x20,#8]
            adrp x1, .L_411e18
            add x1,x1, :lo12:.L_411e18
            bl hlist_get
.L_409088:

            mov x0,#0
.L_40908c:

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
.L_40909c:

.cfi_restore_state 
            cbnz x20,.L_409194
.L_4090a0:

            ldr w0,[x19,#16]
            mov w3,#304
            mov w1,#99
            cmp w0,#204
            sub w2,w0,#100
            ccmp w0,w3,#4,ne
            ccmp w2,w1,#0,ne
            cset w21,hi
.L_4090c0:

            ldr x0,[x19,#8]
            adrp x1, .L_411e18
            add x1,x1, :lo12:.L_411e18
            bl hlist_get

            cmp x0,#0
            ccmp w21,#0,#4,eq
            cset w22,ne
            b.ne .L_409114

            cmp x0,#0
            ccmp w21,#0,#4,ne
            b.eq .L_409088

            mov w2,#10
            mov x1,#0
            bl strtoll

            cmn x0,#1
            cset w22,eq
.L_409100:

            cmp w22,#0
            ccmp x20,x19,#0,ne
            b.ne .L_40908c

            mov x0,#0
            b .L_40908c
.L_409114:

            ldr x0,[x19,#8]
            adrp x1, .L_412cf0
            add x1,x1, :lo12:.L_412cf0
            bl hlist_in

            cbnz w0,.L_409188

            ldr x0,[x19,#8]
            adrp x21, .L_411e28
            add x21,x21, :lo12:.L_411e28
            mov x1,x21
            bl hlist_in

            cbz w0,.L_4091fc
.L_409140:

            ldr x0,[x19,#8]
            mov x1,x21
            bl hlist_in

            cbnz w0,.L_4091d8
.L_409150:

            mov x0,#-1
            b .L_409100
.L_409158:

            cbnz x0,.L_409058
.L_40915c:

            mov w0,#3
            mov x3,x19
            adrp x1, .L_412c70
            mov x2,#0
            add x1,x1, :lo12:.L_412c70
            bl syslog

            mov x0,#0
            b .L_40908c
.L_40917c:

            mov x19,x20
            mov w21,#1
            b .L_4090c0
.L_409188:

            adrp x21, .L_411e28
            add x21,x21, :lo12:.L_411e28
            b .L_409140
.L_409194:

            ldr w0,[x20]
            cbz w0,.L_4090a0

            ldr x1,[x20,#40]
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strcasecmp

            cbnz w0,.L_4090a0

            mov x20,x19
            b .L_409078
.L_4091b8:

            mov x1,x19
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strcasecmp

            cmp w0,#0
            mov x19,x20
            cset w21,ne
            b .L_4090c0
.L_4091d8:

            ldr x0,[x19,#8]
            mov x1,x21
            adrp x2, .L_412d00
            add x2,x2, :lo12:.L_412d00
            bl hlist_subcmp

            mov w1,w0
            mov x0,#1
            cbnz w1,.L_40908c

            b .L_409150
.L_4091fc:

            ldr x0,[x19,#8]
            adrp x2, .L_412120
            adrp x1, .L_411df0
            add x2,x2, :lo12:.L_412120
            add x1,x1, :lo12:.L_411df0
            bl hlist_subcmp

            cbnz w0,.L_409140

            mov x0,#0
            b .L_40908c
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            ldr w4,[x3,#28]
            stp x19,x20,[sp,#16]
            cmp w4,#0
.cfi_offset 19, -32
.cfi_offset 20, -24
            csel x19,x3,x2,eq
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov w22,w0
            mov w21,w1
            mov x0,x2
            mov x1,x3
            bl http_has_body

            cbnz x0,.L_409288

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_409278
.L_409260:

            mov w19,#1
.L_409264:

            mov w0,w19
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
.L_409278:

.cfi_restore_state 
            adrp x0, .L_412db8
            add x0,x0, :lo12:.L_412db8
            bl puts

            b .L_409260
.L_409288:

            mov x20,x0
            adrp x2, .L_412d00
            ldr x0,[x19,#8]
            adrp x19, debug
            add x2,x2, :lo12:.L_412d00
            adrp x1, .L_411e28
            add x1,x1, :lo12:.L_411e28
            bl hlist_subcmp

            ldr w1,[x19,:lo12:debug]
            cbz w0,.L_4092f4

            cbnz w1,.L_409350
.L_4092b4:

            mov w1,w21
            mov w0,w22
            bl chunked_data_send

            ldr w1,[x19,:lo12:debug]
            mov w19,w0
            cbz w1,.L_409264

            cmp w0,#0
            adrp x2, .L_412d08
            add x2,x2, :lo12:.L_412d08
            adrp x1, .L_412d20
            add x1,x1, :lo12:.L_412d20
            adrp x0, .L_412d90
            csel x1,x1,x2,eq
            add x0,x0, :lo12:.L_412d90
            bl printf

            b .L_409264
.L_4092f4:

            cbnz w1,.L_40933c
.L_4092f8:

            mov w1,w21
            mov x2,x20
            mov w0,w22
            bl data_send

            ldr w1,[x19,:lo12:debug]
            mov w19,w0
            cbz w1,.L_409264

            cmp w0,#0
            adrp x2, .L_412d48
            add x2,x2, :lo12:.L_412d48
            adrp x1, .L_412d58
            add x1,x1, :lo12:.L_412d58
            adrp x0, .L_412d90
            csel x1,x1,x2,eq
            add x0,x0, :lo12:.L_412d90
            bl printf

            b .L_409264
.L_40933c:

            mov x1,x20
            adrp x0, .L_412d98
            add x0,x0, :lo12:.L_412d98
            bl printf

            b .L_4092f8
.L_409350:

            adrp x0, .L_412d78
            add x0,x0, :lo12:.L_412d78
            bl puts

            b .L_4092b4
.cfi_endproc 
.size http_body_send, . - http_body_send
.align 4
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x1
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov w21,w0
            mov x0,#0
            bl http_has_body

            cbnz x0,.L_409398

            ldr x21,[sp,#32]
            mov w0,#1
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
.L_409398:

.cfi_restore_state 
            mov x19,x0
            adrp x2, .L_412d00
            ldr x0,[x20,#8]
            add x2,x2, :lo12:.L_412d00
            adrp x1, .L_411e28
            add x1,x1, :lo12:.L_411e28
            bl hlist_subcmp

            adrp x1, debug
            ldr w1,[x1,:lo12:debug]
            cbz w0,.L_4093dc

            cbnz w1,.L_409410
.L_4093c4:

            ldp x19,x20,[sp,#16]
            mov w1,w21
            ldr x21,[sp,#32]
            mov w0,#-1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b chunked_data_send
.L_4093dc:

.cfi_restore_state 
            cbnz w1,.L_4093fc
.L_4093e0:

            mov x2,x19
            mov w1,w21
            ldr x21,[sp,#32]
            mov w0,#-1
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b data_send
.L_4093fc:

.cfi_restore_state 
            mov x1,x19
            adrp x0, .L_412de8
            add x0,x0, :lo12:.L_412de8
            bl printf

            b .L_4093e0
.L_409410:

            adrp x0, .L_412dc8
            add x0,x0, :lo12:.L_412dc8
            bl puts

            b .L_4093c4
.cfi_endproc 
.size http_body_drop, . - http_body_drop
.align 4
#-----------------------------------
.globl compat_memset_s
.type compat_memset_s, @function
#-----------------------------------
compat_memset_s:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x1,x3
            and w2,w2,#255
            csel x1,x1,x3,ls
            cbz x1,.L_409454

            add x1,x0,x1
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_409440:

            mov x3,x0
            add x0,x0,#1
            strb w2,[x3]
            cmp x1,x0
            b.ne .L_409440
.L_409454:

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
.size compat_memset_s, . - compat_memset_s
.align 4
#-----------------------------------
.globl http_parse_basic
.type http_parse_basic, @function
#-----------------------------------
http_parse_basic:

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
            mov x20,x2
            mov x19,x0
            adrp x2, .L_412e00
            add x2,x2, :lo12:.L_412e00
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x21,x1
            bl hlist_subcmp

            cbnz w0,.L_40949c
.L_40948c:

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
.L_40949c:

.cfi_restore_state 
            mov x0,x19
            mov x1,x21
            bl hlist_get

            mov x19,x0
            cbz x0,.L_409698

            bl strlen

            add x22,x0,#1
            mov x0,x22
            bl zmalloc

            mov x21,x0
            mov x0,x19
            bl strlen

            mov x3,#5
            b .L_4094e4
.L_4094d4:

            add x3,x3,#1
            ldrb w4,[x19,x3]
            cmp w4,#32
            b.ne .L_4094ec
.L_4094e4:

            cmp x0,x3
            b.hi .L_4094d4
.L_4094ec:

            add x1,x19,x3
            mov x0,x21
            bl from_base64

            mov x0,x21
            mov w1,#58
            bl strchr

            mov x19,x0
            cbz x0,.L_409624

            str x23,[sp,#48]
.cfi_offset 23, -16
            mov x0,x21
            strb wzr,[x19]
            mov w1,#92
            bl strchr

            mov x23,x0
            cbz x0,.L_40960c

            strb wzr,[x0]
            cbnz x20,.L_409598
.L_409530:

            ldr w0,[x20,#300]
            cbnz w0,.L_4095e4
.L_409538:

            ldr w0,[x20,#304]
            cbnz w0,.L_4095d0
.L_409540:

            ldr w0,[x20,#308]
            cbnz w0,.L_4095bc
.L_409548:

            mov x0,x21
            bl strlen

            cmp x0,x22
            mov x1,x21
            csel x2,x0,x22,ls
            add x0,x21,x2
            cbz x2,.L_409578
.L_409564:

            mov x2,x1
            add x1,x1,#1
            strb wzr,[x2]
            cmp x1,x0
            b.ne .L_409564
.L_409578:

            mov x0,x21
            bl free

            ldr x23,[sp,#48]
.cfi_remember_state 
.cfi_restore 23
            mov w0,#1
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409598:

.cfi_restore_state 
            mov x1,x21
            mov x2,#50
            add x0,x20,x2
            bl strlcpy

            add x1,x23,#1
            mov x0,x20
            mov x2,#50
            bl strlcpy

            b .L_409530
.L_4095bc:

            add x0,x19,#1
            bl ntlm_hash_lm_password

            cbnz x0,.L_40967c

            bl free

            b .L_409548
.L_4095d0:

            add x0,x19,#1
            bl ntlm_hash_nt_password

            cbnz x0,.L_409664

            bl free

            b .L_409540
.L_4095e4:

            add x2,x19,#1
            add x1,x20,#50
            mov x0,x20
            bl ntlm2_hash_password

            cbz x0,.L_409604

            add x1,x20,#250
            ldp x2,x3,[x0]
            stp x2,x3,[x1]
.L_409604:

            bl free

            b .L_409538
.L_40960c:

            cbz x20,.L_409530

            mov x1,x21
            mov x0,x20
            mov x2,#50
            bl strlcpy

            b .L_409530
.L_409624:

.cfi_restore 23
            mov x0,x21
            bl strlen

            cmp x0,x22
            mov x1,x21
            csel x0,x0,x22,ls
            add x2,x21,x0
            cbz x0,.L_409654
.L_409640:

            mov x0,x1
            add x1,x1,#1
            strb wzr,[x0]
            cmp x1,x2
            b.ne .L_409640
.L_409654:

            mov x0,x21
            bl free

            mov w0,#-1
            b .L_40948c
.L_409664:

.cfi_offset 23, -16
            ldp x2,x3,[x0]
            ldur x1,[x0,#13]
            stp x2,x3,[x20,#200]
            stur x1,[x20,#213]
            bl free

            b .L_409540
.L_40967c:

            ldp x2,x3,[x0]
            add x20,x20,#150
            ldur x1,[x0,#13]
            stp x2,x3,[x20]
            stur x1,[x20,#13]
            bl free

            b .L_409548
.L_409698:

.cfi_restore 23
            adrp x3, .L_415820
            add x3,x3, :lo12:.L_415820
            adrp x1, .L_412a70
            adrp x0, .L_412e08
            add x3,x3,#16
            add x1,x1, :lo12:.L_412a70
            add x0,x0, :lo12:.L_412e08
            mov w2,#697
            str x23,[sp,#48]
.cfi_offset 23, -16
            bl __assert_fail
.cfi_endproc 
.size http_parse_basic, . - http_parse_basic
.align 4
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
            mov w2,w0
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            adrp x19, quit
            ldr w0,[x19,:lo12:quit]
            cbnz w0,.L_409718

            adrp x1, .L_412e18
            mov w0,#6
            add x1,x1, :lo12:.L_412e18
            bl syslog
.L_4096ec:

            add x1,x19, :lo12:quit
            ldr w0,[x19,:lo12:quit]
            add w2,w0,#2
            ldr w1,[x1,#4]
            orr w1,w0,w1
            cmp w1,#0
            csinc w0,w2,w0,ne
            str w0,[x19,:lo12:quit]
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_409718:

.cfi_restore_state 
            adrp x1, .L_412e48
            mov w0,#6
            add x1,x1, :lo12:.L_412e48
            bl syslog

            b .L_4096ec
.cfi_endproc 
.size sighandler, . - sighandler
.align 2
#-----------------------------------
.globl listen_add
.type listen_add, @function
#-----------------------------------
listen_add:

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
            mov x19,x2
            mov w20,w3
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x22,x0
            mov x21,x1
            mov x0,x2
            mov w1,#58
            bl strrchr

            cbz x0,.L_40982c

            str x23,[sp,#48]
.cfi_offset 23, -32
            sub x2,x0,x19
            ldrb w0,[x19]
            sxtw x23,w2
            cmp w0,#91
            b.ne .L_409784

            add x0,x19,x23
            ldurb w0,[x0,#-1]
            cmp w0,#93
            b.eq .L_409814
.L_409784:

            mov x0,x19
            mov w1,#0
            bl substr

            mov x20,x0
.L_409794:

            mov w2,#10
            add x0,x23,#1
            add x0,x19,x0
            mov x1,#0
            bl strtol

            mov x2,x0
            cbz w0,.L_409858

            mov x1,x20
            add x0,sp,#72
            bl so_resolv

            cbz w0,.L_409858

            mov x0,x20
            bl free

            ldr x23,[sp,#48]
.L_4097cc:

.cfi_restore 23
            mov x0,x21
            ldr x1,[sp,#72]
            mov x2,#0
            bl so_listen

            cmp w0,#0
            b.le .L_4097fc

            adrp x1, .L_412e98
            mov x3,x19
            mov x2,x22
            add x1,x1, :lo12:.L_412e98
            mov w0,#6
            bl syslog
.L_4097fc:

            ldr x0,[sp,#72]
            bl freeaddrinfo

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
.L_409814:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 23, -32
.cfi_offset 29, -80
.cfi_offset 30, -72
            sub w2,w2,#2
            mov x0,x19
            mov w1,#1
            bl substr

            mov x20,x0
            b .L_409794
.L_40982c:

.cfi_restore 23
            mov x1,#0
            mov x0,x19
            mov w2,#10
            bl strtol

            mov x1,x0
            cbz w0,.L_409854

            mov w2,w20
            add x0,sp,#72
            bl so_resolv_wildcard

            b .L_4097cc
.L_409854:

            str x23,[sp,#48]
.L_409858:

.cfi_offset 23, -32
            mov x2,x19
            adrp x1, .L_412e70
            add x1,x1, :lo12:.L_412e70
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
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
.size listen_add, . - listen_add
.align 4
#-----------------------------------
.globl tunnel_add
.type tunnel_add, @function
#-----------------------------------
tunnel_add:

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
            stp x21,x22,[sp,#32]
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov x21,x0
            mov w22,w2
            mov x0,x1
            str x23,[sp,#48]
.cfi_offset 23, -64
            bl strdup

            mov x20,x0
            bl strlen

            cmp w0,#0
            b.le .L_409a58

            add x1,x20,#1
            mov w5,w0
            mov w19,#1
            add x2,sp,#80
            sub w0,w19,w1
.L_4098c8:

            ldurb w4,[x1,#-1]
            mov w3,#1
            cmp w4,#58
            b.ne .L_4098ec

            cmp w19,#3
            str x1,[x2,w19,sxtw #3]
            cset w3,ne
            add w19,w19,#1
            sturb wzr,[x1,#-1]
.L_4098ec:

            cmp w3,#0
            add w3,w0,w1
            ccmp w3,w5,#0,ne
            add x1,x1,#1
            b.lt .L_4098c8

            cmp w19,#4
            b.eq .L_409a1c

            mov x1,#0
            mov x0,x20
            mov w2,#10
            bl strtol

            mov x1,x0
            cbz w0,.L_409a6c

            mov w2,w22
            add x0,sp,#72
            bl so_resolv_wildcard

            cmp w19,#3
            b.ne .L_409ab8

            add x19,sp,#80
            mov w0,#2
            mov w1,#1
.L_409940:

            ldr x22,[x19,w1,sxtw #3]
            ldr x23,[x19,w0,sxtw #3]
            ldrb w0,[x22]
            cbz w0,.L_409a88

            ldrb w0,[x23]
            cbz w0,.L_409a88

            mov x0,x22
            bl strlen

            mov x19,x0
            mov x0,x23
            bl strlen

            add x19,x19,x0
            add x19,x19,#3
            mov x0,x19
            bl zmalloc

            mov x1,x22
            mov x2,x19
            mov x22,x0
            bl strlcpy

            mov x2,x19
            mov x0,x22
            adrp x1, .L_4129e8
            add x1,x1, :lo12:.L_4129e8
            bl strlcat

            mov x2,x19
            mov x1,x23
            mov x0,x22
            bl strlcat

            ldr x1,[sp,#72]
            mov x2,x22
            mov x0,x21
            bl so_listen

            cmp w0,#0
            b.le .L_409a00

            adrp x1, .L_412f20
            mov x2,x22
            add x1,x1, :lo12:.L_412f20
            mov w0,#6
            bl syslog
.L_4099dc:

            mov x0,x20
            bl free

            ldr x0,[sp,#72]
            bl freeaddrinfo

            ldr x23,[sp,#48]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#112
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409a00:

.cfi_restore_state 
            adrp x1, .L_412f38
            add x1,x1, :lo12:.L_412f38
            mov w0,#3
            bl syslog

            mov x0,x22
            bl free

            b .L_4099dc
.L_409a1c:

            ldr x22,[sp,#88]
            mov w2,#10
            add x19,sp,#80
            mov x1,#0
            mov x0,x22
            bl strtol

            mov x2,x0
            cbz w0,.L_409acc

            mov x1,x20
            add x0,sp,#72
            bl so_resolv

            cbz w0,.L_409acc

            mov w0,#3
            mov w1,#2
            b .L_409940
.L_409a58:

            mov x0,x20
            mov w2,#10
            mov x1,#0
            bl strtol

            cbnz w0,.L_409aa8
.L_409a6c:

            mov x2,x20
            adrp x1, .L_412eb0
            add x1,x1, :lo12:.L_412eb0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_409a88:

            mov x3,x23
            mov x2,x22
            adrp x1, .L_412f00
            add x1,x1, :lo12:.L_412f00
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_409aa8:

            mov w1,w0
            mov w2,w22
            add x0,sp,#72
            bl so_resolv_wildcard
.L_409ab8:

            adrp x0, .L_412f50
            add x0,x0, :lo12:.L_412f50
            bl puts

            mov w0,#1
            bl myexit
.L_409acc:

            mov x3,x22
            mov x2,x20
            adrp x1, .L_412ed0
            add x1,x1, :lo12:.L_412ed0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.cfi_endproc 
.size tunnel_add, . - tunnel_add
.align 2
#-----------------------------------
.globl noproxy_add
.type noproxy_add, @function
#-----------------------------------
noproxy_add:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            add x2,sp,#72
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            adrp x21, .L_412f98
            add x21,x21, :lo12:.L_412f98
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov x20,x0
            mov x0,x1
            mov x1,x21
            bl strtok_r

            cbz x0,.L_409b88

            adrp x22, quit
            mov x19,x0
            add x22,x22, :lo12:quit
            str x23,[sp,#48]
.cfi_offset 23, -32
            adrp x23, .L_412fa0
            add x23,x23, :lo12:.L_412fa0
            b .L_409b6c
.L_409b38:

            mov x0,x19
            bl strdup

            mov x1,#0
            mov x2,x0
            mov x0,x20
            bl plist_add

            add x2,sp,#72
            mov x20,x0
            mov x1,x21
            mov x0,#0
            bl strtok_r

            mov x19,x0
            cbz x0,.L_409b84
.L_409b6c:

            ldr w0,[x22,#4]
            cbz w0,.L_409b38

            mov x1,x19
            mov x0,x23
            bl printf

            b .L_409b38
.L_409b84:

            ldr x23,[sp,#48]
.L_409b88:

.cfi_restore 23
            mov x0,x20
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
.cfi_endproc 

            nop
            nop
            nop
            nop
.size noproxy_add, . - noproxy_add
.align 4
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x20, quit
            add x20,x20, :lo12:quit
            ldr x19,[x20,#8]
            cbz x19,.L_409c0c

            stp x21,x22,[sp,#32]
.cfi_offset 22, -8
.cfi_offset 21, -16
            adrp x22, .L_412fd0
            mov x21,x0
            add x22,x22, :lo12:.L_412fd0
            b .L_409bd8
.L_409bd0:

            ldr x19,[x19,#16]
            cbz x19,.L_409c08
.L_409bd8:

            ldr x0,[x19,#8]
            cbz x0,.L_409be8

            ldrb w2,[x0]
            cbnz w2,.L_409c1c
.L_409be8:

            ldr w2,[x20,#4]
            cbz w2,.L_409bd0

            ldr x2,[x19,#8]
            mov x1,x21
            mov x0,x22
            bl printf

            ldr x19,[x19,#16]
            cbnz x19,.L_409bd8
.L_409c08:

            ldp x21,x22,[sp,#32]
.L_409c0c:

.cfi_restore 22
.cfi_restore 21
            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409c1c:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x1,x21
            mov w2,#0
            bl fnmatch

            cbnz w0,.L_409be8

            ldr w0,[x20,#4]
            cbnz w0,.L_409c48
.L_409c34:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,#1
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409c48:

.cfi_restore_state 
            ldr x2,[x19,#8]
            mov x1,x21
            adrp x0, .L_412fc0
            add x0,x0, :lo12:.L_412fc0
            bl printf

            b .L_409c34
.cfi_endproc 
.size noproxy_match, . - noproxy_match
.align 4
#-----------------------------------
.globl proxy_thread
.type proxy_thread, @function
#-----------------------------------
proxy_thread:

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
            stp x21,x22,[sp,#32]
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
            mov x22,x0
            stp x23,x24,[sp,#48]
.cfi_offset 23, -64
.cfi_offset 24, -56
            adrp x24, quit
            add x24,x24, :lo12:quit
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            adrp x25, .L_411de0
            stp x27,x28,[sp,#80]
.cfi_offset 27, -32
.cfi_offset 28, -24
            adrp x28, .L_412fe0
            adrp x27, .L_412058
            ldr w26,[x0]
            add x28,x28, :lo12:.L_412fe0
            add x27,x27, :lo12:.L_412058
.L_409ca0:

            ldr w0,[x24,#4]
            cbnz w0,.L_409dcc

            bl new_rr_data

            mov x1,x0
            mov w0,w26
            str x1,[sp,#104]
            bl headers_recv

            cbz w0,.L_409dfc
.L_409cc0:

            ldr x19,[sp,#104]
            adrp x21, .L_4121f8
            add x23,x25, :lo12:.L_411de0
            add x21,x21, :lo12:.L_4121f8
            b .L_409d04
.L_409cd4:

            bl forward_request

            mov x19,x0
            cmn x0,#2
            b.eq .L_409db8

            ldr w0,[x24,#4]
            cbnz w0,.L_409d44
.L_409cec:

            sub x1,x19,#1
            add x0,sp,#104
            cmn x1,#3
            b.hi .L_409d64
.L_409cfc:

            bl free_rr_data

            str x19,[sp,#104]
.L_409d04:

            ldr x0,[x19,#8]
            mov x2,x23
            mov x1,x21
            bl hlist_subcmp

            mov w20,w0
            ldr x1,[sp,#104]
            ldr x0,[x1,#64]
            bl noproxy_match

            mov w2,w0
            ldr x1,[sp,#104]
            mov x0,x22
            cbz w2,.L_409cd4

            bl direct_request

            mov x19,x0
.L_409d3c:

            ldr w0,[x24,#4]
            cbz w0,.L_409cec
.L_409d44:

            mov x1,x19
            adrp x0, .L_413000
            add x0,x0, :lo12:.L_413000
            bl printf

            sub x1,x19,#1
            add x0,sp,#104
            cmn x1,#3
            b.ls .L_409cfc
.L_409d64:

            add x0,sp,#104
            bl free_rr_data

            cmp w20,#0
            ccmn x19,#1,#4,ne
            b.eq .L_409d80

            ldr w0,[x24,#16]
            cbz w0,.L_409ca0
.L_409d80:

            mov x0,x22
            bl free

            mov w0,w26
            bl close

            ldr w0,[x24,#16]
            cbz w0,.L_409e1c
.L_409d98:

            ldp x19,x20,[sp,#16]
            mov x0,#0
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
.L_409db8:

.cfi_restore_state 
            ldr x1,[sp,#104]
            mov x0,x22
            bl direct_request

            mov x19,x0
            b .L_409d3c
.L_409dcc:

            mov w1,w26
            mov x0,x28
            bl printf

            mov w1,w26
            mov x0,x27
            bl printf

            bl new_rr_data

            mov x1,x0
            mov w0,w26
            str x1,[sp,#104]
            bl headers_recv

            cbnz w0,.L_409cc0
.L_409dfc:

            add x0,sp,#104
            bl free_rr_data

            mov x0,x22
            bl free

            mov w0,w26
            bl close

            ldr w0,[x24,#16]
            cbnz w0,.L_409d98
.L_409e1c:

            add x19,x24,#24
            mov x0,x19
            bl pthread_mutex_lock

            bl pthread_self

            mov x1,x0
            ldr x0,[x24,#72]
            mov x2,#0
            bl plist_add

            mov x1,x0
            mov x0,x19
            str x1,[x24,#72]
            bl pthread_mutex_unlock

            mov x0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#112
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
.size proxy_thread, . - proxy_thread
.align 2
#-----------------------------------
.globl tunnel_thread
.type tunnel_thread, @function
#-----------------------------------
tunnel_thread:

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
            cbz x0,.L_409f50

            mov x19,x0
            ldr x0,[x0,#8]
            bl strdup

            mov x20,x0
            mov w1,#58
            bl strchr

            cbz x0,.L_409e9c

            strb wzr,[x0]
.L_409e9c:

            mov x0,x20
            bl noproxy_match

            cbz w0,.L_409ee0
.L_409ea8:

            mov x0,x19
            bl direct_tunnel

            mov x0,x20
            bl free

            mov x0,x19
            adrp x19, quit
            add x19,x19, :lo12:quit
            bl free

            ldr w0,[x19,#16]
            cbz w0,.L_409f10
.L_409ed0:

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
.L_409ee0:

.cfi_restore_state 
            mov x0,x19
            bl forward_tunnel

            cmn w0,#2
            b.eq .L_409ea8

            mov x0,x20
            bl free

            mov x0,x19
            adrp x19, quit
            add x19,x19, :lo12:quit
            bl free

            ldr w0,[x19,#16]
            cbnz w0,.L_409ed0
.L_409f10:

            add x20,x19,#24
            mov x0,x20
            bl pthread_mutex_lock

            bl pthread_self

            mov x1,x0
            ldr x0,[x19,#72]
            mov x2,#0
            bl plist_add

            mov x1,x0
            mov x0,x20
            str x1,[x19,#72]
            bl pthread_mutex_unlock

            mov x0,#0
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_409f50:

.cfi_restore_state 
            adrp x3, .L_4158b8
            adrp x1, .L_413020
            adrp x0, .L_412280
            add x3,x3, :lo12:.L_4158b8
            add x1,x1, :lo12:.L_413020
            add x0,x0, :lo12:.L_412280
            mov w2,#360
            bl __assert_fail
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
            stp fp,lr,[sp,#-176]!
.cfi_def_cfa_offset 176
.cfi_offset 29, -176
.cfi_offset 30, -168
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -160
.cfi_offset 20, -152
            adrp x20, quit
            add x20,x20, :lo12:quit
            stp x21,x22,[sp,#32]
            mov x19,x0
            stp x23,x24,[sp,#48]
            ldr x0,[x20,#80]
.cfi_offset 21, -144
.cfi_offset 22, -136
.cfi_offset 23, -128
.cfi_offset 24, -120
            bl hlist_count

            mov w24,w0
            movi v31.4s,#0
            ldrh w2,[x19,#16]
            add x3,x19,#24
            add x1,x19,#20
            cmp w2,#2
            mov w0,w2
            csel x1,x3,x1,ne
            add x2,sp,#128
            mov w3,#46
            ldr w23,[x19]
            stp q31,q31,[sp,#128]
            stur q31,[sp,#158]
            bl inet_ntop

            mov x0,x19
            bl free

            mov x0,#10
            bl zmalloc

            mov x19,x0
            mov x0,#260
            bl zmalloc

            mov x21,x0
            mov x0,#50
            bl zmalloc

            mov x1,x19
            mov x22,x0
            mov x2,#2
            mov w0,w23
            bl read

            cmp w0,#2
            b.eq .L_40a060

            cbz x21,.L_40a2fc

            mov x0,x21
            bl free

            cbz x22,.L_40a300
.L_40a024:

            mov x0,x22
            bl free

            cbz x19,.L_40a038
.L_40a030:

            mov x0,x19
            bl free
.L_40a038:

            mov w0,w23
            bl close

            ldr w0,[x20,#16]
            cbz w0,.L_40a088

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#176
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
.L_40a060:

.cfi_restore_state 
            ldrb w0,[x19]
            cmp w0,#5
            b.eq .L_40a0d0

            cbz x21,.L_40a68c

            mov x0,x21
            bl free

            cbz x22,.L_40a030
.L_40a07c:

            mov x0,x22
            bl free

            b .L_40a030
.L_40a088:

            add x19,x20,#24
            mov x0,x19
            bl pthread_mutex_lock

            bl pthread_self

            mov x1,x0
            ldr x0,[x20,#72]
            mov x2,#0
            bl plist_add

            mov x1,x0
            mov x0,x19
            str x1,[x20,#72]
            bl pthread_mutex_unlock

            mov x0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#176
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
.L_40a0d0:

.cfi_restore_state 
            stp x25,x26,[sp,#64]
.cfi_offset 26, -104
.cfi_offset 25, -112
            ldrb w26,[x19,#1]
            add w0,w26,#1
            and x0,x0,#511
            bl zmalloc

            mov x25,x0
            mov w2,w26
            mov w0,w23
            mov x1,x25
            bl read

            cmp w26,w0
            b.eq .L_40a15c
.L_40a100:

            mov w24,#-1
            mov x26,#0
.L_40a108:

            cbz x25,.L_40a114
.L_40a10c:

            mov x0,x25
            bl free
.L_40a114:

            cbz x21,.L_40a6b8

            mov x0,x21
            bl free

            cbz x22,.L_40a12c
.L_40a124:

            mov x0,x22
            bl free
.L_40a12c:

            mov x0,x19
            bl free

            cbz x26,.L_40a140

            mov x0,x26
            bl free
.L_40a140:

            tbnz w24,#31,.L_40a154

            mov w0,w24
            bl close

            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            b .L_40a038
.L_40a154:

.cfi_restore_state 
            ldp x25,x26,[sp,#64]
.cfi_remember_state 
.cfi_restore 26
.cfi_restore 25
            b .L_40a038
.L_40a15c:

.cfi_restore_state 
            cbnz w24,.L_40a2ac

            cbz w26,.L_40a6c0

            sub x2,x25,#1
            mov x0,#1
.L_40a16c:

            ldrb w1,[x2,x0]
            cmp w1,#0
            ccmp w26,w0,#4,ne
            add x0,x0,#1
            b.gt .L_40a16c

            cbnz w1,.L_40a400

            mov w3,#5
            strh w3,[x19]
            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl write_wrapper

            cmp w0,#2
            b.eq .L_40a1c0

            adrp x1, .L_413030
            mov w0,#3
            add x1,x1, :lo12:.L_413030
            bl syslog

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a1c0:

            mov x1,x19
            mov w0,w23
            mov x2,#4
            bl read

            cmp w0,#4
            b.ne .L_40a100

            ldrb w0,[x19,#1]
            cmp w0,#1
            b.ne .L_40a3d4

            ldrb w0,[x19,#3]
            and w1,w0,#4294967293
            cmp w1,#1
            b.ne .L_40a3d4

            stp x27,x28,[sp,#80]
.cfi_offset 28, -88
.cfi_offset 27, -96
            cmp w0,#1
            b.eq .L_40a4bc

            add x1,sp,#126
            mov w0,w23
            mov x2,#1
            bl read

            cmp w0,#1
            b.ne .L_40a5bc

            ldrb w26,[sp,#126]
            add w0,w26,#11
            and x0,x0,#511
            bl zmalloc

            mov x24,x0
            mov w2,w26
            mov w0,w23
            mov x27,x24
            mov x1,x24
            bl read

            cmp w26,w0
            b.ne .L_40a4a0

            strb wzr,[x24,w26,uxtw]
            mov x1,x24
            mov x2,#260
            mov x0,x21
            bl strlcpy

            add x1,sp,#126
            mov w0,w23
            mov x2,#2
            bl read

            cmp w0,#2
            b.eq .L_40a528

            mov x0,x24
            bl free

            cbz x25,.L_40a288

            mov x0,x25
            bl free
.L_40a288:

            mov x0,x21
            bl free

            cbz x22,.L_40a6dc

            mov x0,x22
            mov x26,#0
            bl free

            mov w24,#-1
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40a12c
.L_40a2ac:

            mov x0,#0
            cbz w26,.L_40a6c0

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40a2c0:

            ldrb w1,[x25,x0]
            add x0,x0,#1
            cmp w1,#2
            b.eq .L_40a308

            cmp w26,w0
            b.gt .L_40a2c0

            mov w3,#-251
.L_40a2dc:

            strh w3,[x19]
            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl write_wrapper
.L_40a2f0:

            mov w24,#-1
            mov x26,#0
            b .L_40a10c
.L_40a2fc:

.cfi_restore 25
.cfi_restore 26
            cbnz x22,.L_40a024
.L_40a300:

            cbnz x19,.L_40a030

            b .L_40a038
.L_40a308:

.cfi_offset 25, -112
.cfi_offset 26, -104
            mov w3,#517
            strh w3,[x19]
            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl write_wrapper

            cmp w0,#2
            b.eq .L_40a338

            adrp x1, .L_413030
            mov w0,#3
            add x1,x1, :lo12:.L_413030
            bl syslog
.L_40a338:

            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl read

            cmp w0,#2
            b.eq .L_40a358

            mov w3,#-255
            b .L_40a2dc
.L_40a358:

            stp x27,x28,[sp,#80]
.cfi_offset 28, -88
.cfi_offset 27, -96
            ldrb w26,[x19,#1]
            add w27,w26,#1
            sxtw x28,w27
            mov x0,x28
            bl zmalloc

            mov x24,x0
            mov x2,x28
            mov w0,w23
            mov x1,x24
            bl read

            cmp w27,w0
            b.ne .L_40a3c4

            ldrb w27,[x24,w26,uxtw]
            strb wzr,[x24,w26,uxtw]
            add w0,w27,#1
            and x0,x0,#511
            bl zmalloc

            mov x26,x0
            mov w2,w27
            mov w0,w23
            mov x1,x26
            bl read

            cmp w27,w0
            b.eq .L_40a408

            mov x0,x26
            bl free
.L_40a3c4:

            mov x0,x24
            bl free

            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40a2f0
.L_40a3d4:

            mov x3,x19
            mov w4,#517
            movk w4,#256,lsl #16
            mov x1,x19
            mov w0,w23
            mov x2,#10
            str w4,[x3],#4
            str wzr,[x19,#4]
            strh wzr,[x3,#4]
            bl write_wrapper

            b .L_40a100
.L_40a400:

            mov x0,#0
            b .L_40a2c0
.L_40a408:

.cfi_offset 27, -96
.cfi_offset 28, -88
            ldr x0,[x20,#80]
            strb wzr,[x26,w27,uxtw]
            mov x1,x24
            bl hlist_get

            mov x27,x0
            ldr x0,[x20,#80]
            bl hlist_count

            mov w3,#0
            cbz w0,.L_40a44c

            mov w3,#255
            cbz x27,.L_40a44c

            mov x0,x27
            mov x1,x26
            bl strcmp

            cmp w0,#0
            csetm w3,ne
            and w3,w3,#255
.L_40a44c:

            mov w4,#1
            strb w4,[x19]
            strb w3,[x19,#1]
            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl write_wrapper

            cmp w0,#2
            b.eq .L_40a480

            adrp x1, .L_413068
            mov w0,#3
            add x1,x1, :lo12:.L_413068
            bl syslog
.L_40a480:

            mov x0,x26
            bl free

            mov x0,x24
            bl free

            ldrb w0,[x19,#1]
            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            cbz w0,.L_40a1c0

            b .L_40a2f0
.L_40a4a0:

.cfi_restore_state 
            cbz x27,.L_40a5bc

            mov x26,#0
            mov w24,#-1
.L_40a4ac:

            mov x0,x27
            bl free

            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            b .L_40a108
.L_40a4bc:

.cfi_restore_state 
            mov x0,#15
            bl zmalloc

            mov x27,x0
            mov x2,#4
            mov w0,w23
            mov x1,x27
            bl read

            cmp w0,#4
            b.ne .L_40a4a0

            ldrb w6,[x27,#3]
            mov x1,#260
            ldrb w5,[x27,#2]
            mov x0,x21
            ldrb w4,[x27,#1]
            adrp x2, .L_413100
            ldrb w3,[x27]
            add x2,x2, :lo12:.L_413100
            strb wzr,[x27,#4]
            mov w24,#-1
            mov x26,#0
            bl snprintf

            add x1,sp,#126
            mov w0,w23
            mov x2,#2
            bl read

            cmp w0,#2
            b.ne .L_40a4ac
.L_40a528:

            mov x0,x21
            bl noproxy_match

            ldrh w1,[sp,#126]
            rev16 w1,w1
            and w1,w1,#65535
            cbz w0,.L_40a5c4

            mov x0,x21
            mov x26,#0
            bl host_connect

            mov w24,w0
            tbnz w0,#31,.L_40a638
.L_40a554:

            mov x3,x19
            mov w4,#5
            movk w4,#256,lsl #16
            mov x1,x19
            mov w0,w23
            mov x2,#10
            str w4,[x3],#4
            str wzr,[x19,#4]
            strh wzr,[x3,#4]
            bl write_wrapper

            cmp w0,#10
            b.eq .L_40a594

            adrp x1, .L_4130b0
            mov w0,#3
            add x1,x1, :lo12:.L_4130b0
            bl syslog
.L_40a594:

            add x2,sp,#128
            mov x3,x21
            mov w0,#7
            adrp x1, .L_4130f0
            add x1,x1, :lo12:.L_4130f0
            bl syslog

            mov w1,w24
            mov w0,w23
            bl tunnel

            b .L_40a4ac
.L_40a5bc:

            ldp x27,x28,[sp,#80]
.cfi_remember_state 
.cfi_restore 28
.cfi_restore 27
            b .L_40a100
.L_40a5c4:

.cfi_restore_state 
            mov w3,w1
            adrp x2, .L_4130a8
            add x2,x2, :lo12:.L_4130a8
            mov x1,#50
            mov x0,x22
            bl snprintf

            mov x0,x21
            bl strdup

            mov x28,x0
            mov x2,#260
            mov x0,x21
            adrp x1, .L_4129e8
            add x1,x1, :lo12:.L_4129e8
            bl strlcat

            mov x1,x22
            mov x2,#260
            mov x0,x21
            bl strlcat

            bl new_auth

            mov x26,x0
            mov x2,x28
            mov x1,x21
            bl proxy_connect

            mov w24,w0
            cmn w0,#2
            b.eq .L_40a694

            tbz w0,#31,.L_40a664

            mov x0,x28
            bl free
.L_40a638:

            mov x3,x19
            mov w4,#261
            movk w4,#256,lsl #16
            mov x1,x19
            mov w0,w23
            mov x2,#10
            str w4,[x3],#4
            str wzr,[x19,#4]
            strh wzr,[x3,#4]
            bl write_wrapper

            b .L_40a4ac
.L_40a664:

            mov x1,x26
            mov x2,x21
            bl prepare_http_connect

            mov w1,w0
.L_40a674:

            mov x0,x28
            str w1,[sp,#108]
            bl free

            ldr w1,[sp,#108]
            cbnz w1,.L_40a554

            b .L_40a638
.L_40a68c:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            cbnz x22,.L_40a07c

            b .L_40a030
.L_40a694:

.cfi_offset 25, -112
.cfi_offset 26, -104
.cfi_offset 27, -96
.cfi_offset 28, -88
            ldrh w1,[sp,#126]
            mov x0,x28
            rev16 w1,w1
            and w1,w1,#65535
            bl host_connect

            mvn w1,w0
            mov w24,w0
            lsr w1,w1,#31
            b .L_40a674
.L_40a6b8:

.cfi_restore 27
.cfi_restore 28
            cbnz x22,.L_40a124

            b .L_40a12c
.L_40a6c0:

            mov w3,#-251
            strh w3,[x19]
            mov x1,x19
            mov w0,w23
            mov x2,#2
            bl write_wrapper

            b .L_40a100
.L_40a6dc:

.cfi_offset 27, -96
.cfi_offset 28, -88
            mov x0,x19
            bl free

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40a038
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
.size socks5_thread, . - socks5_thread
#-----------------------------------
.type ntlm_set_key, @function
#-----------------------------------
ntlm_set_key:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x3,x0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov x0,x1
            mov fp,sp
            add x1,sp,#24
            ldrb w8,[x3]
            ldrb w6,[x3,#1]
            fmov d31,x8
            ldrb w4,[x3,#2]
            ubfiz w2,w8,#7,#1
            ldrb w5,[x3,#3]
            orr w2,w2,w6, lsr #1
            ubfiz w6,w6,#6,#2
            orr w7,w6,w4, lsr #2
            ubfiz w4,w4,#5,#3
            mov v31.b[1],w2
            orr w6,w4,w5, lsr #3
            ldrb w4,[x3,#4]
            ubfiz w5,w5,#4,#4
            ldrb w2,[x3,#5]
            ldrb w3,[x3,#6]
            mov v31.b[2],w7
            orr w5,w5,w4, lsr #4
            ubfiz w4,w4,#3,#5
            orr w4,w4,w2, lsr #5
            ubfiz w2,w2,#2,#6
            orr w2,w2,w3, lsr #6
            ubfiz w3,w3,#1,#7
            mov v31.b[3],w6
            mov v31.b[4],w5
            mov v31.b[5],w4
            mov v31.b[6],w2
            mov v31.b[7],w3
            str d31,[sp,#24]
            bl gl_des_setkey

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
            nop
            nop
            nop
            nop
.size ntlm_set_key, . - ntlm_set_key
#-----------------------------------
.type ntlm_calc_resp.isra.0, @function
#-----------------------------------
ntlm_calc_resp.isra.0:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-304]!
.cfi_def_cfa_offset 304
.cfi_offset 29, -304
.cfi_offset 30, -296
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -288
.cfi_offset 20, -280
            mov x19,x0
            mov x20,x2
            mov x0,#25
            str x21,[sp,#32]
.cfi_offset 21, -272
            mov x21,x1
            bl zmalloc

            str x0,[x19]
            add x1,sp,#48
            mov x0,x21
            bl ntlm_set_key

            ldr x2,[x19]
            mov w3,#0
            mov x1,x20
            add x0,sp,#48
            bl gl_des_ecb_crypt

            add x1,sp,#48
            add x0,x21,#7
            bl ntlm_set_key

            ldr x2,[x19]
            mov w3,#0
            mov x1,x20
            add x0,sp,#48
            add x2,x2,#8
            bl gl_des_ecb_crypt

            add x1,sp,#48
            add x0,x21,#14
            bl ntlm_set_key

            ldr x2,[x19]
            mov x1,x20
            add x0,sp,#48
            mov w3,#0
            add x2,x2,#16
            bl gl_des_ecb_crypt

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#304
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size ntlm_calc_resp.isra.0, . - ntlm_calc_resp.isra.0
.align 4
#-----------------------------------
.globl ntlm_hash_lm_password
.type ntlm_hash_lm_password, @function
#-----------------------------------
ntlm_hash_lm_password:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,#18251
            stp fp,lr,[sp,#-320]!
.cfi_def_cfa_offset 320
.cfi_offset 29, -320
.cfi_offset 30, -312
            movk x1,#8531,lsl #16
            movk x1,#9024,lsl #32
            mov fp,sp
            movk x1,#9508,lsl #48
            stp x19,x20,[sp,#16]
            str x21,[sp,#32]
.cfi_offset 19, -304
.cfi_offset 20, -296
.cfi_offset 21, -288
            mov x21,x0
            mov x0,#22
            str x1,[sp,#56]
            bl zmalloc

            mov x19,x0
            mov x0,#15
            bl zmalloc

            mov x20,x0
            mov x0,x21
            bl strlen

            mov x2,x0
            mov x3,#14
            cmp x0,x3
            csel x2,x2,x3,ls
            mov x1,x21
            mov x0,x20
            bl strncpy

            bl uppercase

            add x1,sp,#64
            mov x0,x20
            bl ntlm_set_key

            mov x2,x19
            mov w3,#0
            add x1,sp,#56
            add x0,sp,#64
            bl gl_des_ecb_crypt

            add x1,sp,#64
            add x0,x20,#7
            bl ntlm_set_key

            add x1,sp,#56
            add x2,x19,#8
            add x0,sp,#64
            mov w3,#0
            bl gl_des_ecb_crypt

            str wzr,[x19,#16]
            strb wzr,[x19,#20]
            mov x0,x20
            bl free

            ldr x21,[sp,#32]
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#320
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            mov x0,#22
            bl zmalloc

            mov x1,x19
            mov x19,x0
            add x0,sp,#40
            bl unicode

            sxtw x20,w0
            mov x2,x19
            ldr x0,[sp,#40]
            mov x1,x20
            bl md4_buffer

            str wzr,[x19,#16]
            ldr x0,[sp,#40]
            strb wzr,[x19,#20]
            mov x2,x20
            mov w1,#0
            bl memset

            ldr x0,[sp,#40]
            bl free

            mov x0,x19
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
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x22,x1
            str x23,[sp,#48]
.cfi_offset 23, -32
            mov x23,x0
            mov x0,x2
            bl ntlm_hash_nt_password

            mov x21,x0
            mov x0,x23
            bl strlen

            mov x19,x0
            mov x0,x22
            bl strlen

            add x19,x19,x0
            add x19,x19,#1
            mov x0,x19
            bl zmalloc

            mov x1,x23
            mov x20,x0
            mov x2,x19
            bl strlcat

            mov x2,x19
            mov x1,x22
            mov x0,x20
            bl strlcat

            mov x0,x20
            bl uppercase

            mov x1,x20
            add x0,sp,#72
            bl unicode

            mov w19,w0
            mov x0,#17
            bl zmalloc

            mov x4,x0
            ldr x2,[sp,#72]
            sxtw x3,w19
            mov x1,#16
            mov x19,x0
            mov x0,x21
            bl hmac_md5

            mov x0,x21
            bl free

            ldr x0,[sp,#72]
            bl free

            mov x0,x20
            bl free

            ldr x23,[sp,#48]
            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
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
.size ntlm2_hash_password, . - ntlm2_hash_password
.align 4
#-----------------------------------
.globl ntlm_request
.type ntlm_request, @function
#-----------------------------------
ntlm_request:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-80]!
.cfi_def_cfa_offset 80
.cfi_offset 29, -80
.cfi_offset 30, -72
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x22,x0
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov x19,x1
            stp x23,x24,[sp,#48]
.cfi_offset 23, -32
.cfi_offset 24, -24
            add x24,x1,#100
            stp x25,x26,[sp,#64]
.cfi_offset 25, -16
.cfi_offset 26, -8
            add x25,x1,#50
            mov x0,x25
            str xzr,[x22]
            bl strlen

            mov x20,x0
            mov x0,x24
            bl strlen

            ldr w23,[x19,#312]
            adrp x1, debug
            mov x21,x0
            ldr w0,[x1,:lo12:debug]
            cbnz w23,.L_40aac4

            ldr w1,[x19,#300]
            cbz w1,.L_40aba0

            mov w23,#45573
            movk w23,#41480,lsl #16
.L_40aac4:

            cbnz w0,.L_40abd8
.L_40aac8:

            mov x0,#1024
            bl zmalloc

            and w3,w21,#65535
            and w4,w20,#65535
            mov w2,#0
            mov w1,#0
            bfxil w1,w3,#0,#16
            mov x19,x0
            bfxil w2,w4,#0,#16
            mov x7,#21582
            movk x7,#19788,lsl #16
            bfi w1,w3,#16,#16
            add w5,w21,#32
            bfi w2,w4,#16,#16
            movk x7,#21331,lsl #32
            mov w6,#1
            movk x7,#80,lsl #48
            mov w4,#32
            str x7,[x19]
            mov x0,x24
            stp w6,w23,[x19,#8]
            sxtw x23,w21
            stp w2,w5,[x19,#16]
            stp w1,w4,[x19,#24]
            bl strdup

            bl uppercase

            mov x24,x0
            mov x2,x23
            mov x1,x24
            add x0,x19,#32
            bl memcpy

            mov x0,x24
            bl free

            mov x0,x25
            bl strdup

            bl uppercase

            add x2,x23,#32
            mov x23,x0
            mov x1,x23
            add x0,x19,x2
            sxtw x2,w20
            add w20,w20,#32
            bl memcpy

            add w26,w20,w21
            mov x0,x23
            bl free

            str x19,[x22]
.L_40ab84:

            mov w0,w26
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
.L_40aba0:

.cfi_restore_state 
            ldr w1,[x19,#304]
            cmp w1,#2
            b.eq .L_40ac18

            ldr w26,[x19,#308]
            cbnz w1,.L_40ac24

            mov w23,#45574
            cbnz w26,.L_40aac4

            cbz w0,.L_40ab84

            adrp x0, .L_414640
            add x0,x0, :lo12:.L_414640
            bl puts

            mov x0,x19
            bl dump_auth

            b .L_40ab84
.L_40abd8:

            adrp x0, .L_414668
            add x0,x0, :lo12:.L_414668
            bl puts

            mov x1,x25
            adrp x0, .L_414678
            add x0,x0, :lo12:.L_414678
            bl printf

            mov x1,x24
            adrp x0, .L_414688
            add x0,x0, :lo12:.L_414688
            bl printf

            mov w1,w23
            adrp x0, .L_414698
            add x0,x0, :lo12:.L_414698
            bl printf

            b .L_40aac8
.L_40ac18:

            mov w23,#45575
            movk w23,#41480,lsl #16
            b .L_40aac4
.L_40ac24:

            cmp w26,#0
            mov w23,#45573
            mov w1,#45575
            csel w23,w23,w1,eq
            b .L_40aac4
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size ntlm_request, . - ntlm_request
.align 4
#-----------------------------------
.globl ntlm_response
.type ntlm_response, @function
#-----------------------------------
ntlm_response:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-192]!
.cfi_def_cfa_offset 192
.cfi_offset 29, -192
.cfi_offset 30, -184
            mov fp,sp
            stp x27,x28,[sp,#80]
.cfi_offset 27, -112
.cfi_offset 28, -104
            adrp x28, debug
            mov w27,w2
            ldr w4,[x28,:lo12:debug]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -176
.cfi_offset 20, -168
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -160
.cfi_offset 22, -152
            mov x21,x3
            stp x23,x24,[sp,#48]
            stp x25,x26,[sp,#64]
.cfi_offset 23, -144
.cfi_offset 24, -136
.cfi_offset 25, -128
.cfi_offset 26, -120
            str x0,[sp,#120]
            stp xzr,xzr,[sp,#176]
            cbnz w4,.L_40b414
.L_40ac7c:

            cmp w27,#39
            b.le .L_40b24c

            ldrh w0,[x19,#44]
            add x1,x28, :lo12:debug
            str x1,[sp,#104]
            mov w20,#0
            add w1,w0,#3
            str w0,[sp,#116]
            ldr w3,[x28,:lo12:debug]
            mov w25,w0
            mov w22,#65535
            cmp w27,w1
            b.le .L_40ad90
.L_40acb0:

            ldrh w22,[x19,w25,uxtw]
            mov w23,w25
            cbz w22,.L_40b49c

            add x4,x19,x23
            add w0,w0,#4
            ldrh w26,[x4,#2]
            add w0,w0,w26
            cmp w0,w27
            b.gt .L_40ad90

            cbz w3,.L_40ad68

            cmp w22,#3
            b.eq .L_40b3e4

            b.hi .L_40b22c

            cmp w22,#1
            b.eq .L_40b404

            adrp x0, .L_4146f0
            add x0,x0, :lo12:.L_4146f0
            bl printf

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ad00:

            add w0,w26,#1
            add x23,x23,#4
            asr w0,w0,#1
            add w0,w0,#1
            and x0,x0,#131071
            bl zmalloc

            asr w7,w26,#1
            mov x24,x0
            cbz w7,.L_40ad50

            sxtw x7,w7
            add x5,x19,x23
            add x7,x7,x0
            mov x4,x0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ad40:

            ldrb w6,[x5],#2
            strb w6,[x4],#1
            cmp x7,x4
            b.ne .L_40ad40
.L_40ad50:

            mov x0,x24
            bl puts

            mov x0,x24
            bl free

            ldr x0,[sp,#104]
            ldr w3,[x0]
.L_40ad68:

            add w25,w25,#4
            add w20,w20,#4
            add w25,w26,w25, uxth
            add w20,w26,w20, uxth
            and w25,w25,#65535
            and w20,w20,#65535
            add w2,w25,#3
            mov w0,w25
            cmp w2,w27
            b.lt .L_40acb0
.L_40ad90:

            cbz w3,.L_40b254
.L_40ad94:

            ldr w1,[sp,#116]
            mov w3,w22
            mov w2,w20
            adrp x0, .L_414740
            add x0,x0, :lo12:.L_414740
            mov w25,#0
            bl printf

            ldr w24,[x21,#300]
            cbz w24,.L_40b260

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40adc0:

            mov x0,#9
            bl zmalloc

            mov x23,x0
            bl getrandom64

            mov x1,x0
            mov x0,#0
            add x24,x21,#250
            str x1,[x23]
            bl time

            mov x2,#32768
            ldr w1,[x28,:lo12:debug]
            movk x2,#54590,lsl #16
            mov x3,#38528
            movk x2,#45534,lsl #32
            movk x3,#152,lsl #16
            movk x2,#413,lsl #48
            madd x25,x0,x3,x2
            cbnz w1,.L_40b4b4
.L_40ae08:

            add w0,w20,#33
            mov w27,w20
            and x0,x0,#131071
            bl zmalloc

            adrp x1, .L_415750
            mov x26,x0
            ldr x3,[x23]
            mov x2,x27
            ldr w0,[sp,#116]
            add x27,x27,#28
            ldr d31,[x1,:lo12:.L_415750]
            stp x25,x3,[x26,#8]
            add w25,w20,#48
            add x1,x19,w0, uxtw
            str wzr,[x26,#24]
            add x0,x26,#28
            str d31,[x26]
            bl memcpy

            str wzr,[x26,x27]
            add w0,w20,#49
            and x0,x0,#131071
            bl zmalloc

            add w1,w20,#41
            mov x27,x0
            and x0,x1,#131071
            str x27,[sp,#184]
            bl zmalloc

            mov x22,x0
            add w5,w20,#32
            mov x1,x26
            ldr x2,[x19,#24]
            sxtw x5,w5
            str x2,[x0],#8
            mov x2,x5
            str x5,[sp,#104]
            bl memcpy

            add w3,w20,#40
            mov x4,x27
            and x3,x3,#131071
            mov x2,x22
            mov x0,x24
            mov x1,#16
            bl hmac_md5

            ldr x5,[sp,#104]
            mov x1,x26
            add x0,x27,#16
            mov x2,x5
            bl memcpy

            mov x0,x22
            bl free

            mov x0,#25
            bl zmalloc

            mov x20,x0
            mov x0,#17
            str x20,[sp,#176]
            bl zmalloc

            mov x22,x0
            mov x3,#16
            ldr x6,[x23]
            mov x1,x3
            ldr x5,[x19,#24]
            stp x5,x6,[x22]
            mov x4,x20
            mov x2,x22
            mov x0,x24
            bl hmac_md5

            mov w24,#24
            ldr x1,[x23]
            str x1,[x20,#16]
            mov x0,x22
            bl free

            mov x0,x26
            bl free

            mov x0,x23
            bl free

            ldr w0,[x21,#304]
            cmp w0,#2
            b.ne .L_40b26c
.L_40af40:

            mov x0,#9
            bl zmalloc

            mov x24,x0
            bl getrandom64

            mov x23,x0
            mov x0,#25
            bl zmalloc

            mov x1,x0
            mov x0,#17
            str x1,[sp,#176]
            mov w25,#24
            str x23,[x1]
            stp xzr,xzr,[x1,#8]
            bl zmalloc

            mov x22,x0
            mov x0,#17
            bl zmalloc

            ldr x3,[x19,#24]
            mov x2,x0
            stp x3,x23,[x22]
            mov x1,#16
            mov x20,x0
            mov x0,x22
            bl md5_buffer

            mov x0,x22
            bl free

            mov x2,x20
            add x1,x21,#200
            add x0,sp,#184
            bl ntlm_calc_resp.isra.0

            mov x0,x20
            bl free

            mov x0,x24
            bl free

            ldr w0,[x21,#304]
            mov w24,w25
            cmp w0,#1
            b.ne .L_40b274
.L_40afd8:

            add x0,sp,#184
            add x2,x19,#24
            add x1,x21,#200
            bl ntlm_calc_resp.isra.0

            ldr w0,[x21,#308]
            mov w25,#24
            and w26,w24,#65535
            mov w27,w25
            mov w20,#88
            cbz w0,.L_40b28c
.L_40b000:

            add x1,x21,#150
            add x0,sp,#176
            add x2,x19,#24
            bl ntlm_calc_resp.isra.0

            mov w24,#24
            ldr w1,[x21,#304]
            mov w26,w24
            add w0,w20,w26
            and w0,w0,#65535
            str w0,[sp,#116]
            cbz w1,.L_40b2a0
.L_40b02c:

            add x0,x21,#50
            str x0,[sp,#136]
            bl strdup

            bl uppercase

            mov x22,x0
            mov x1,x22
            add x0,sp,#152
            bl unicode

            mov w20,w0
            mov x0,x22
            bl free

            mov x1,x21
            add x0,sp,#160
            bl unicode

            mov w23,w0
            add x1,x21,#100
            str x1,[sp,#128]
            mov x0,x1
            bl strdup

            bl uppercase

            mov x22,x0
            mov x1,x22
            add x0,sp,#168
            bl unicode

            mov w1,w0
            mov x0,x22
            mov w22,w1
            bl free

            ldr w0,[x28,:lo12:debug]
            ldp x28,x1,[sp,#176]
            str x1,[sp,#104]
            cbnz w0,.L_40b324
.L_40b0ac:

            mov x0,#1024
            bl zmalloc

            and w6,w20,#65535
            mov x21,x0
            and w5,w23,#65535
            and w4,w22,#65535
            strh w26,[x0,#12]
            add w3,w6,w5
            strh w26,[x0,#14]
            add w8,w20,#64
            strh w27,[x0,#20]
            add w7,w8,w23
            strh w27,[x0,#22]
            add w2,w7,w22
            strh w6,[x0,#28]
            mov w10,#64
            strh w6,[x0,#30]
            sxtw x20,w20
            strh w5,[x0,#36]
            sxtw x23,w23
            strh w5,[x0,#38]
            sxtw x22,w22
            strh w4,[x0,#44]
            strh w4,[x0,#46]
            ldr w0,[sp,#116]
            ldr x1,[sp,#152]
            add w0,w4,w0
            add w3,w3,w0
            mov x0,#21582
            movk x0,#19788,lsl #16
            ldr w9,[x19,#20]
            movk x0,#21331,lsl #32
            add w19,w2,w24
            movk x0,#80,lsl #48
            str x0,[x21]
            mov w0,#3
            str w0,[x21,#8]
            str w2,[x21,#16]
            add x0,x21,#64
            str w19,[x21,#24]
            mov x2,x20
            str w10,[x21,#32]
            str w8,[x21,#40]
            stp w7,wzr,[x21,#48]
            strh w3,[x21,#56]
            str w9,[x21,#60]
            bl memcpy

            ldr x1,[sp,#160]
            add x0,x20,#64
            mov x2,x23
            add x20,x20,x23
            add x0,x21,x0
            bl memcpy

            ldr x23,[sp,#168]
            add x0,x20,#64
            mov x2,x22
            add x0,x21,x0
            mov x1,x23
            bl memcpy

            cbz x28,.L_40b3b0

            add x0,x22,#64
            sxtw x2,w24
            add x0,x0,x20
            mov x1,x28
            add x0,x21,x0
            bl memcpy

            ldr x0,[sp,#104]
            cbz x0,.L_40b1e0

            add x22,x22,#88
            sxtw x2,w25
            add x0,x22,x20
            ldr x20,[sp,#104]
            add x0,x21,x0
            mov x1,x20
            bl memcpy

            mov x0,x20
            bl free
.L_40b1e0:

            mov x0,x28
            bl free

            ldr x23,[sp,#168]
.L_40b1ec:

            mov x0,x23
            bl free

            ldr x0,[sp,#160]
            bl free

            ldr x0,[sp,#152]
            bl free

            ldr x1,[sp,#120]
            add w0,w19,w25
            str x21,[x1]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp x25,x26,[sp,#64]
            ldp x27,x28,[sp,#80]
            ldp fp,lr,[sp],#192
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
.L_40b22c:

.cfi_restore_state 
            cmp w22,#4
            b.eq .L_40b3f4

            cmp w22,#5
            b.ne .L_40b39c

            adrp x0, .L_414720
            add x0,x0, :lo12:.L_414720
            bl printf

            b .L_40ad00
.L_40b24c:

            mov w20,#0
            str wzr,[sp,#116]
.L_40b254:

            ldr w24,[x21,#300]
            mov w25,#0
            cbnz w24,.L_40adc0
.L_40b260:

            ldr w0,[x21,#304]
            cmp w0,#2
            b.eq .L_40af40
.L_40b26c:

            cmp w0,#1
            b.eq .L_40afd8
.L_40b274:

            and w27,w25,#65535
            and w26,w24,#65535
            add w0,w27,#64
            and w20,w0,#65535
            ldr w0,[x21,#308]
            cbnz w0,.L_40b000
.L_40b28c:

            ldr w1,[x21,#304]
            add w0,w20,w26
            and w0,w0,#65535
            str w0,[sp,#116]
            cbnz w1,.L_40b02c
.L_40b2a0:

            ldr w0,[x21,#300]
            cbnz w0,.L_40b02c

            add x20,x21,#50
            str x20,[sp,#136]
            mov x0,x20
            bl strdup

            bl uppercase

            mov x1,x0
            add x22,x21,#100
            mov x0,x21
            str x1,[sp,#152]
            bl strdup

            bl uppercase

            str x22,[sp,#128]
            str x0,[sp,#160]
            mov x0,x22
            bl strdup

            bl uppercase

            mov x1,x0
            mov x0,x20
            str x1,[sp,#168]
            bl strlen

            mov w20,w0
            mov x0,x21
            bl strlen

            mov w23,w0
            mov x0,x22
            bl strlen

            mov w22,w0
            ldr w0,[x28,:lo12:debug]
            ldp x28,x1,[sp,#176]
            str x1,[sp,#104]
            cbz w0,.L_40b0ac
.L_40b324:

            adrp x0, .L_414798
            add x0,x0, :lo12:.L_414798
            bl puts

            ldr x1,[sp,#128]
            adrp x0, .L_4147a8
            add x0,x0, :lo12:.L_4147a8
            bl printf

            ldr x1,[sp,#136]
            adrp x0, .L_4147c0
            add x0,x0, :lo12:.L_4147c0
            bl printf

            adrp x0, .L_4147d8
            mov x1,x21
            add x0,x0, :lo12:.L_4147d8
            bl printf

            cbnz w25,.L_40b464

            cbz w24,.L_40b0ac
.L_40b368:

            mov x0,x28
            mov w2,#7
            mov x1,#24
            bl printmem

            adrp x1, .L_4147f0
            mov x21,x0
            add x0,x1, :lo12:.L_4147f0
            mov x1,x21
            mov w2,#24
            bl printf

            mov x0,x21
            bl free

            b .L_40b0ac
.L_40b39c:

            mov w1,w22
            adrp x0, .L_414730
            add x0,x0, :lo12:.L_414730
            bl printf

            b .L_40ad00
.L_40b3b0:

            ldr x0,[sp,#104]
            cbz x0,.L_40b1ec

            add x22,x22,#88
            sxtw x2,w25
            add x0,x22,x20
            ldr x20,[sp,#104]
            add x0,x21,x0
            mov x1,x20
            bl memcpy

            mov x0,x20
            bl free

            ldr x23,[sp,#168]
            b .L_40b1ec
.L_40b3e4:

            adrp x0, .L_414700
            add x0,x0, :lo12:.L_414700
            bl printf

            b .L_40ad00
.L_40b3f4:

            adrp x0, .L_414710
            add x0,x0, :lo12:.L_414710
            bl printf

            b .L_40ad00
.L_40b404:

            adrp x0, .L_4146e0
            add x0,x0, :lo12:.L_4146e0
            bl printf

            b .L_40ad00
.L_40b414:

            adrp x0, .L_4146b0
            add x0,x0, :lo12:.L_4146b0
            bl puts

            add x0,x19,#24
            mov w2,#7
            mov x1,#8
            bl printmem

            mov w2,w27
            mov x1,x0
            mov x20,x0
            adrp x0, .L_4146c0
            add x0,x0, :lo12:.L_4146c0
            bl printf

            mov x0,x20
            bl free

            ldr w1,[x19,#20]
            adrp x0, .L_414698
            add x0,x0, :lo12:.L_414698
            bl printf

            b .L_40ac7c
.L_40b464:

            ldr x0,[sp,#104]
            sxtw x1,w25
            mov w2,#7
            bl printmem

            mov x21,x0
            mov w2,w25
            mov x1,x21
            adrp x0, .L_4147f0
            add x0,x0, :lo12:.L_4147f0
            bl printf

            mov x0,x21
            bl free

            cbz w24,.L_40b0ac

            b .L_40b368
.L_40b49c:

            cmp w20,#0
            cset w0,ne
            add w0,w20,w0, lsl #2
            and w20,w0,#65535
            cbz w3,.L_40b254

            b .L_40ad94
.L_40b4b4:

            mov x0,x23
            mov w2,#7
            mov x1,#8
            bl printmem

            mov x26,x0
            mov x2,x25
            mov x1,x26
            adrp x0, .L_414770
            add x0,x0, :lo12:.L_414770
            bl printf

            mov x0,x26
            bl free

            b .L_40ae08
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
.size ntlm_response, . - ntlm_response
.align 4
#-----------------------------------
.globl gen_407_page
.type gen_407_page, @function
#-----------------------------------
gen_407_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            cmp x0,#0
            adrp x1, .L_414808
            add x1,x1, :lo12:.L_414808
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            csel x19,x1,x19,eq
            mov x0,#4096
            bl zmalloc

            mov x3,x19
            mov x1,#4095
            mov x19,x0
            adrp x2, .L_414818
            add x2,x2, :lo12:.L_414818
            bl snprintf

            mov x0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_407_page, . - gen_407_page
.align 4
#-----------------------------------
.globl gen_401_page
.type gen_401_page, @function
#-----------------------------------
gen_401_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            cmp x0,#0
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x19,x0
            adrp x0, .L_414808
            add x0,x0, :lo12:.L_414808
            mov x20,x1
            csel x19,x0,x19,eq
            mov x0,#4096
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov w21,w2
            bl zmalloc

            mov w5,w21
            mov x4,x20
            mov x3,x19
            mov x1,#4095
            mov x19,x0
            adrp x2, .L_414908
            add x2,x2, :lo12:.L_414908
            bl snprintf

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
            nop
            nop
            nop
            nop
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
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            cmp x0,#0
            adrp x1, .L_4149f8
            add x1,x1, :lo12:.L_4149f8
            mov fp,sp
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov x19,x0
            csel x19,x1,x19,eq
            mov x0,#4096
            bl zmalloc

            mov x3,x19
            mov x1,#4095
            mov x19,x0
            adrp x2, .L_414a00
            add x2,x2, :lo12:.L_414a00
            bl snprintf

            mov x0,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gen_denied_page, . - gen_denied_page
.align 4
#-----------------------------------
.globl gen_502_page
.type gen_502_page, @function
#-----------------------------------
gen_502_page:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            cmp x0,#0
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x1
            mov x20,x0
            adrp x0, .L_414808
            add x0,x0, :lo12:.L_414808
            csel x20,x0,x20,eq
            adrp x1, .L_414ab0
            cmp x19,#0
            add x1,x1, :lo12:.L_414ab0
            csel x19,x1,x19,eq
            mov x0,#4096
            bl zmalloc

            mov x3,x20
            mov x5,x19
            mov x4,x19
            mov x1,#4095
            mov x19,x0
            adrp x2, .L_414ac0
            add x2,x2, :lo12:.L_414ac0
            bl snprintf

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
.size gen_502_page, . - gen_502_page
.align 4
#-----------------------------------
.globl proxylist_add
.type proxylist_add, @function
#-----------------------------------
proxylist_add:

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
            mov x19,x0
            mov x0,#24
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x2
            bl malloc

            stp x20,x21,[x0]
            str xzr,[x0,#16]
            cbz x19,.L_40b6d4

            mov x1,x19
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40b6c0:

            mov x2,x1
            ldr x1,[x1,#16]
            cbnz x1,.L_40b6c0

            str x0,[x2,#16]
            mov x0,x19
.L_40b6d4:

            ldr x21,[sp,#32]
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
            cbnz x0,.L_40b6f4

            b .L_40b708
.L_40b6ec:

            ldr x0,[x0,#16]
            cbz x0,.L_40b704
.L_40b6f4:

            ldr x2,[x0]
            cmp x2,x1
            b.ne .L_40b6ec

            ldr x0,[x0,#8]
.L_40b704:

            ret 
.L_40b708:

            mov x0,#0
            ret 
.cfi_endproc 
.size proxylist_get, . - proxylist_get
.align 4
#-----------------------------------
.globl proxylist_get_next
.type proxylist_get_next, @function
#-----------------------------------
proxylist_get_next:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40b73c

            mov x2,x0
            b .L_40b724
.L_40b71c:

            ldr x2,[x2,#16]
            cbz x2,.L_40b73c
.L_40b724:

            ldr x3,[x2]
            cmp x3,x1
            b.ne .L_40b71c

            ldr x1,[x2,#16]
            cmp x1,#0
            csel x0,x0,x1,eq
.L_40b73c:

            ret 
.cfi_endproc 
.size proxylist_get_next, . - proxylist_get_next
.align 4
#-----------------------------------
.globl proxylist_dump
.type proxylist_dump, @function
#-----------------------------------
proxylist_dump:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40b7b0

            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            adrp x20, .L_414b68
            mov x19,x0
            add x20,x20, :lo12:.L_414b68
            str x21,[sp,#32]
.cfi_offset 21, -16
            adrp x21, .L_414b88
            add x21,x21, :lo12:.L_414b88
            b .L_40b778
.L_40b76c:

            bl printf

            ldr x19,[x19,#16]
            cbz x19,.L_40b7a0
.L_40b778:

            ldp x1,x3,[x19]
            mov x0,x20
            ldr w4,[x3]
            add x2,x3,#4
            cbz w4,.L_40b76c

            ldr w3,[x3,#68]
            mov x0,x21
            bl printf

            ldr x19,[x19,#16]
            cbnz x19,.L_40b778
.L_40b7a0:

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40b7b0:

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
.size proxylist_dump, . - proxylist_dump
.align 4
#-----------------------------------
.globl proxylist_free
.type proxylist_free, @function
#-----------------------------------
proxylist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40b840

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
            mov w21,w1
            nop
            nop
            nop
            nop
.L_40b7e0:

            mov x20,x19
            ldr x19,[x19,#16]
            cbnz w21,.L_40b80c

            mov x0,x20
            bl free

            cbnz x19,.L_40b7e0

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
.L_40b808:

.cfi_restore_state 
            ldr x19,[x19,#16]
.L_40b80c:

            ldr x21,[x20,#8]
            ldr x0,[x21,#392]
            bl freeaddrinfo

            mov x0,x21
            bl free

            mov x0,x20
            mov x20,x19
            bl free

            cbnz x19,.L_40b808

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40b840:

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
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov w21,w1
            stp x23,x24,[sp,#48]
            str x25,[sp,#64]
.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 25, -16
            bl strdup

            mov w1,#58
            mov x19,x0
            bl strrchr

            cmp x0,#0
            ccmp w21,#0,#0,eq
            b.eq .L_40b9cc

            mov x20,x0
            sub w23,w0,w19
            cbz x0,.L_40b980
.L_40b888:

            ldrb w0,[x19]
            cmp w0,#91
            b.ne .L_40b8a4

            add x0,x19,w23, sxtw
            ldurb w0,[x0,#-1]
            cmp w0,#93
            b.eq .L_40b990
.L_40b8a4:

            mov w2,w23
            mov x0,x19
            mov w1,#0
            bl substr

            mov x22,x0
.L_40b8b8:

            cbz x20,.L_40b8d8

            sxtw x0,w23
            mov w2,#10
            add x0,x0,#1
            mov x1,#0
            add x0,x19,x0
            bl strtol

            mov w21,w0
.L_40b8d8:

            cbz w21,.L_40b9b0

            adrp x24, parent_list
            mov x0,#408
            add x23,x24, :lo12:parent_list
            bl zmalloc

            mov x20,x0
            mov w3,#1
            str w3,[x0],#4
            mov x1,x22
            mov x2,#64
            bl strlcpy

            str w21,[x20,#68]
            ldr w21,[x23,#8]
            mov x0,#24
            ldr x25,[x24,:lo12:parent_list]
            add w21,w21,#1
            str xzr,[x20,#392]
            str wzr,[x20,#400]
            str w21,[x23,#8]
            sxtw x21,w21
            bl malloc

            stp x21,x20,[x0]
            str xzr,[x0,#16]
            cbz x25,.L_40b9a8

            mov x2,x25
            nop
            nop
            nop
            nop
.L_40b940:

            mov x3,x2
            ldr x2,[x2,#16]
            cbnz x2,.L_40b940

            str x0,[x3,#16]
.L_40b950:

            mov x0,x19
            str x25,[x24,:lo12:parent_list]
            bl free

            mov x0,x22
            bl free

            ldr x25,[sp,#64]
            ldr w0,[x23,#8]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
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
.L_40b980:

.cfi_restore_state 
            mov x0,x19
            bl strlen

            mov w23,w0
            b .L_40b888
.L_40b990:

            sub w2,w23,#2
            mov x0,x19
            mov w1,#1
            bl substr

            mov x22,x0
            b .L_40b8b8
.L_40b9a8:

            mov x25,x0
            b .L_40b950
.L_40b9b0:

            mov x2,x19
            adrp x1, .L_414ba8
            add x1,x1, :lo12:.L_414ba8
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.L_40b9cc:

            mov x2,x19
            adrp x1, .L_414bd0
            add x1,x1, :lo12:.L_414bd0
            mov w0,#3
            bl syslog

            mov w0,#1
            bl myexit
.cfi_endproc 
.size parent_add, . - parent_add
.align 3
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
            ldr w0,[x0,:lo12:parent_count]
            cmp w0,#0
            cset w0,gt
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size parent_available, . - parent_available
.align 4
#-----------------------------------
.globl parent_free
.type parent_free, @function
#-----------------------------------
parent_free:

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
            adrp x22, parent_list
            add x0,x22, :lo12:parent_list
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            ldr x20,[x0,#16]
            cbz x20,.L_40ba4c
.L_40ba20:

            mov x21,x20
            ldr x20,[x20,#32]
            ldr x19,[x21,#8]
            cbz x19,.L_40ba40
.L_40ba30:

            mov x0,x19
            ldr x19,[x19,#16]
            bl free

            cbnz x19,.L_40ba30
.L_40ba40:

            mov x0,x21
            bl free

            cbnz x20,.L_40ba20
.L_40ba4c:

            ldr x19,[x22,:lo12:parent_list]
            cbz x19,.L_40ba88

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ba60:

            mov x20,x19
            ldr x19,[x19,#16]
            ldr x21,[x20,#8]
            ldr x0,[x21,#392]
            bl freeaddrinfo

            mov x0,x21
            bl free

            mov x0,x20
            bl free

            cbnz x19,.L_40ba60
.L_40ba88:

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

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size parent_free, . - parent_free
.align 4
#-----------------------------------
.globl paclist_create
.type paclist_create, @function
#-----------------------------------
paclist_create:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            str x0,[sp,#128]
            stp xzr,xzr,[sp,#144]
            cbz x0,.L_40bde0

            stp x19,x20,[sp,#16]
.cfi_offset 20, -136
.cfi_offset 19, -144
            stp x21,x22,[sp,#32]
.cfi_offset 22, -120
.cfi_offset 21, -128
            stp x23,x24,[sp,#48]
.cfi_offset 24, -104
.cfi_offset 23, -112
            bl strdup

            mov x2,x0
            adrp x24, .L_414bf8
            add x24,x24, :lo12:.L_414bf8
            mov x1,x24
            add x0,sp,#144
            stp x2,x2,[sp,#136]
            bl strsep

            adrp x1, debug
            str x0,[sp,#152]
            ldr w20,[x1,:lo12:debug]
            cbnz w20,.L_40bd9c

            mov x21,#0
            cbz x0,.L_40bc7c
.L_40baf8:

            adrp x22, parent_list
            add x22,x22, :lo12:parent_list
            stp x25,x26,[sp,#64]
.cfi_offset 26, -88
.cfi_offset 25, -96
            adrp x26, .L_412720
            adrp x25, .L_414c18
            add x26,x26, :lo12:.L_412720
            add x25,x25, :lo12:.L_414c18
            stp x27,x28,[sp,#80]
.cfi_offset 28, -72
.cfi_offset 27, -80
            adrp x27, debug
            add x27,x27, :lo12:debug
            adrp x2, .L_4129e8
            adrp x1, .L_414c20
            add x2,x2, :lo12:.L_4129e8
            add x1,x1, :lo12:.L_414c20
            mov w20,#0
            mov x21,#0
            stp x2,x1,[sp,#104]
            nop
            nop
            nop
            nop
.L_40bb40:

            ldrb w1,[x0]
            cmp w1,#32
            b.ne .L_40bb54

            add x0,x0,#1
            str x0,[sp,#152]
.L_40bb54:

            mov x1,x26
            add x0,sp,#152
            bl strsep

            mov x19,x0
            mov x1,x25
            bl strcmp

            cbz w0,.L_40bcb4

            ldr w0,[x27]
            cbz w0,.L_40bd8c

            mov x1,x19
            adrp x0, .L_414c30
            add x0,x0, :lo12:.L_414c30
            bl printf

            ldr x19,[x22]
.L_40bb8c:

            cbz x19,.L_40bba4
.L_40bb90:

            ldr x0,[x19,#8]
            ldr w0,[x0]
            cbz w0,.L_40bd40

            ldr x19,[x19,#16]
            cbnz x19,.L_40bb90
.L_40bba4:

            mov x0,#408
            bl zmalloc

            mov x23,x0
            add x0,x22,#24
            str wzr,[x23]
            bl pthread_mutex_lock

            ldr w19,[x22,#8]
            ldr x3,[x22]
            add w19,w19,#1
            mov x0,#24
            str w19,[x22,#8]
            sxtw x19,w19
            str x3,[sp,#120]
            bl malloc

            stp x19,x23,[x0]
            ldr x3,[sp,#120]
            str xzr,[x0,#16]
            cbz x3,.L_40bdbc

            mov x1,x3
.L_40bbf0:

            mov x2,x1
            ldr x1,[x1,#16]
            cbnz x1,.L_40bbf0

            str x0,[x2,#16]
            mov x0,#24
            str x3,[x22]
            bl malloc

            stp x19,x23,[x0]
            str xzr,[x0,#16]
            cbz x21,.L_40bdd8
.L_40bc18:

            mov x1,x21
            nop
            nop
            nop
            nop
.L_40bc20:

            mov x2,x1
            ldr x1,[x1,#16]
            cbnz x1,.L_40bc20

            str x0,[x2,#16]
.L_40bc30:

            add x0,x22,#24
            bl pthread_mutex_unlock

            mov x1,x24
            add x0,sp,#144
            bl strsep

            str x0,[sp,#152]
            add w20,w20,#1
            cbnz x0,.L_40bb40
.L_40bc50:

            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.L_40bc58:

.cfi_restore 28
.cfi_restore 27
            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_40bc7c

            mov w1,w20
            adrp x0, .L_414c38
            add x0,x0, :lo12:.L_414c38
            bl printf

            mov x0,x21
            bl proxylist_dump
.L_40bc7c:

            ldr x0,[sp,#136]
            bl free

            mov x0,#40
            bl malloc

            ldr x1,[sp,#128]
            stp x1,x21,[x0]
            str xzr,[x0,#16]
            str w20,[x0,#24]
            str xzr,[x0,#32]
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40bcb4:

.cfi_def_cfa_offset 160
.cfi_offset 19, -144
.cfi_offset 20, -136
.cfi_offset 21, -128
.cfi_offset 22, -120
.cfi_offset 23, -112
.cfi_offset 24, -104
.cfi_offset 25, -96
.cfi_offset 26, -88
.cfi_offset 27, -80
.cfi_offset 28, -72
.cfi_offset 29, -160
.cfi_offset 30, -152
            ldr x1,[sp,#104]
            add x0,sp,#152
            bl strsep

            mov x23,x0
            ldr w1,[x27]
            ldr x28,[sp,#152]
            cbz w1,.L_40bce4

            mov x2,x0
            mov x1,x19
            ldr x0,[sp,#112]
            mov x3,x28
            bl printf
.L_40bce4:

            ldr x19,[x22]
            mov x0,x28
            mov w2,#10
            mov x1,#0
            bl strtol

            str x0,[sp,#120]
            mov w28,w0
            cbnz x19,.L_40bd10

            b .L_40bdec
.L_40bd08:

            ldr x19,[x19,#16]
            cbz x19,.L_40bdec
.L_40bd10:

            ldr x0,[x19,#8]
            ldr w1,[x0]
            cmp w1,#1
            b.ne .L_40bd08

            ldr w1,[x0,#68]
            cmp w1,w28
            b.ne .L_40bd08

            add x0,x0,#4
            mov x1,x23
            bl strcmp

            cbnz w0,.L_40bd08

            nop
            nop
            nop
            nop
.L_40bd40:

            ldp x19,x23,[x19]
            mov x0,#24
            bl malloc

            stp x19,x23,[x0]
            str xzr,[x0,#16]
            cbz x21,.L_40bd94

            mov x1,x21
            nop
            nop
            nop
            nop
.L_40bd60:

            mov x2,x1
            ldr x1,[x1,#16]
            cbnz x1,.L_40bd60

            str x0,[x2,#16]
.L_40bd70:

            mov x1,x24
            add x0,sp,#144
            bl strsep

            str x0,[sp,#152]
            add w20,w20,#1
            cbnz x0,.L_40bb40

            b .L_40bc50
.L_40bd8c:

            ldr x19,[x22]
            b .L_40bb8c
.L_40bd94:

            mov x21,x0
            b .L_40bd70
.L_40bd9c:

.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x0, .L_414c00
            add x0,x0, :lo12:.L_414c00
            bl puts

            ldr x0,[sp,#152]
            cbnz x0,.L_40baf8

            mov x21,#0
            mov w20,#0
            b .L_40bc58
.L_40bdbc:

.cfi_offset 25, -96
.cfi_offset 26, -88
.cfi_offset 27, -80
.cfi_offset 28, -72
            mov x3,x0
            mov x0,#24
            str x3,[x22]
            bl malloc

            stp x19,x23,[x0]
            str xzr,[x0,#16]
            cbnz x21,.L_40bc18
.L_40bdd8:

            mov x21,x0
            b .L_40bc30
.L_40bde0:

.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 22
.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            mov x0,#0
            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40bdec:

.cfi_def_cfa_offset 160
.cfi_offset 19, -144
.cfi_offset 20, -136
.cfi_offset 21, -128
.cfi_offset 22, -120
.cfi_offset 23, -112
.cfi_offset 24, -104
.cfi_offset 25, -96
.cfi_offset 26, -88
.cfi_offset 27, -80
.cfi_offset 28, -72
.cfi_offset 29, -160
.cfi_offset 30, -152
            add x0,x22,#24
            bl pthread_mutex_lock

            ldr w1,[sp,#120]
            mov x0,x23
            bl parent_add

            ldrsw x23,[x22,#8]
            ldr x19,[x22]
            cbnz x19,.L_40be18

            b .L_40be28
.L_40be10:

            ldr x19,[x19,#16]
            cbz x19,.L_40be28
.L_40be18:

            ldr x0,[x19]
            cmp x23,x0
            b.ne .L_40be10

            ldr x19,[x19,#8]
.L_40be28:

            mov x0,#24
            bl malloc

            stp x23,x19,[x0]
            mov x2,x0
            str xzr,[x0,#16]
            cbz x21,.L_40be58

            mov x0,x21
.L_40be44:

            mov x1,x0
            ldr x0,[x0,#16]
            cbnz x0,.L_40be44

            str x2,[x1,#16]
            b .L_40bc30
.L_40be58:

            mov x21,x0
            b .L_40bc30
.cfi_endproc 
.size paclist_create, . - paclist_create
.align 4
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
            str x21,[sp,#32]
.cfi_offset 21, -16
            adrp x21, parent_list
            add x21,x21, :lo12:parent_list
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x0
            ldr x19,[x21,#16]
            cbnz x19,.L_40be90

            b .L_40bec0
.L_40be88:

            ldr x19,[x19,#32]
            cbz x19,.L_40bec0
.L_40be90:

            ldr x1,[x19]
            mov x0,x20
            bl strcmp

            cbnz w0,.L_40be88

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40bf28
.L_40beac:

            ldr x21,[sp,#32]
            mov x0,x19
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
.L_40bec0:

.cfi_restore_state 
            mov x0,x20
            bl paclist_create

            ldr x1,[x21,#16]
            mov x19,x0
            cbz x1,.L_40bf20

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bee0:

            mov x0,x1
            ldr x1,[x1,#32]
            cbnz x1,.L_40bee0

            str x19,[x0,#32]
.L_40bef0:

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_40beac

            mov x1,x20
            adrp x0, .L_414c80
            add x0,x0, :lo12:.L_414c80
            bl printf

            ldr x21,[sp,#32]
            mov x0,x19
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
.L_40bf20:

.cfi_restore_state 
            str x0,[x21,#16]
            b .L_40bef0
.L_40bf28:

            mov x1,x20
            adrp x0, .L_414c60
            add x0,x0, :lo12:.L_414c60
            bl printf

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
            cbz x0,.L_40bfac

            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -32
.cfi_offset 20, -24
            mov x20,x0
            str x21,[sp,#32]
.L_40bf64:

.cfi_offset 21, -16
            mov x21,x20
            ldr x20,[x20,#32]
            ldr x19,[x21,#8]
            cbz x19,.L_40bf90

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40bf80:

            mov x0,x19
            ldr x19,[x19,#16]
            bl free

            cbnz x19,.L_40bf80
.L_40bf90:

            mov x0,x21
            bl free

            cbnz x20,.L_40bf64

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40bfac:

            ret 
.cfi_endproc 
.size paclist_free, . - paclist_free
.align 4
#-----------------------------------
.globl proxy_connect
.type proxy_connect, @function
#-----------------------------------
proxy_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            adrp x1, pac_initialized
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -96
.cfi_offset 20, -88
            ldr w20,[x1,:lo12:pac_initialized]
            stp x21,x22,[sp,#32]
.cfi_offset 22, -72
.cfi_offset 21, -80
            stp x23,x24,[sp,#48]
.cfi_offset 24, -56
.cfi_offset 23, -64
            str x0,[sp,#104]
            cbnz w20,.L_40c284

            adrp x0, parent_list
            add x24,x0, :lo12:parent_list
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            ldr x28,[x24,#72]
            ldr x19,[x0,:lo12:parent_list]
            cmp x28,#0
            ldr w23,[x24,#8]
            ccmp x19,#0,#4,eq
            b.ne .L_40c1cc
.L_40bff8:

            add x21,x24,#24
            mov x0,x21
            bl pthread_mutex_lock

            cbz x19,.L_40c134

            adrp x22, .L_414ce8
            add x22,x22, :lo12:.L_414ce8
            stp x25,x26,[sp,#64]
.cfi_offset 26, -40
.cfi_offset 25, -48
            adrp x25, debug
            add x25,x25, :lo12:debug
            nop
            nop
            nop
            nop
.L_40c020:

            mov x1,x19
            b .L_40c030
.L_40c028:

            ldr x1,[x1,#16]
            cbz x1,.L_40c158
.L_40c030:

            ldr x0,[x1]
            cmp x0,x28
            b.ne .L_40c028

            ldr x27,[x1,#8]
            cbz x27,.L_40c158

            ldr w0,[x27]
            cmp w0,#1
            b.eq .L_40c168
.L_40c050:

            mov x0,x21
            bl pthread_mutex_unlock
.L_40c058:

            ldr w0,[x27]
            cbz w0,.L_40c1a8
.L_40c060:

            ldr w0,[x27,#400]
            cbnz w0,.L_40c0c4

            mov w27,#-1
.L_40c06c:

            mov x1,x19
            b .L_40c07c
.L_40c074:

            ldr x1,[x1,#16]
            cbz x1,.L_40c150
.L_40c07c:

            ldr x0,[x1]
            cmp x0,x28
            b.ne .L_40c074

            ldr x0,[x1,#16]
            cmp x0,#0
            csel x0,x0,x19,ne
.L_40c094:

            ldp x28,x0,[x0]
            add w20,w20,#1
            mov x1,x22
            ldr w3,[x0,#68]
            add x2,x0,#4
            mov w0,#3
            bl syslog

            cmp w23,w20
            b.le .L_40c208

            mov x0,x21
            bl pthread_mutex_lock

            b .L_40c020
.L_40c0c4:

            ldr x0,[x27,#392]
            bl so_connect

            mov w27,w0
            tbnz w0,#31,.L_40c06c

            ldr x0,[x24,#72]
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            cmp x0,x28
            b.ne .L_40c228
.L_40c0e4:

            ldr x0,[sp,#104]
            cmp w27,#0
            ccmp x0,#0,#4,ge
            b.eq .L_40c110

            adrp x2, ntlmbasic
            adrp x1, g_creds
            ldr w2,[x2,:lo12:ntlmbasic]
            ldr x1,[x1,:lo12:g_creds]
            cmp w2,#0
            cset w2,eq
            bl copy_auth
.L_40c110:

            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            mov w0,w27
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40c12c:

.cfi_restore_state 
            mov x0,x21
            bl pthread_mutex_lock
.L_40c134:

            mov x0,x21
            add w20,w20,#1
            bl pthread_mutex_unlock

            cmp w23,w20
            b.gt .L_40c12c

            mov w27,#-1
            b .L_40c20c
.L_40c150:

.cfi_offset 25, -48
.cfi_offset 26, -40
            mov x0,x19
            b .L_40c094
.L_40c158:

            mov x0,x21
            mov w27,#-1
            bl pthread_mutex_unlock

            b .L_40c06c
.L_40c168:

            ldr w0,[x27,#400]
            cbnz w0,.L_40c050

            ldr w0,[x25]
            add x26,x27,#4
            cbnz w0,.L_40c1f4
.L_40c17c:

            ldr w2,[x27,#68]
            mov x1,x26
            add x0,x27,#392
            bl so_resolv

            cbz w0,.L_40c1d4

            mov w0,#1
            str w0,[x27,#400]
            add x0,x24,#24
            bl pthread_mutex_unlock

            ldr w0,[x27]
            cbnz w0,.L_40c060
.L_40c1a8:

            mov w27,#-2
            mov w0,w27
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40c1cc:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 24, -56
.cfi_offset 27, -32
.cfi_offset 28, -24
.cfi_offset 29, -112
.cfi_offset 30, -104
            ldr x28,[x19]
            b .L_40bff8
.L_40c1d4:

.cfi_offset 25, -48
.cfi_offset 26, -40
            mov x2,x26
            adrp x1, .L_414cc8
            add x1,x1, :lo12:.L_414cc8
            mov w0,#3
            bl syslog

            add x0,x24,#24
            bl pthread_mutex_unlock

            b .L_40c058
.L_40c1f4:

            mov x1,x26
            adrp x0, .L_414cb0
            add x0,x0, :lo12:.L_414cb0
            bl printf

            b .L_40c17c
.L_40c208:

            ldp x25,x26,[sp,#64]
.L_40c20c:

.cfi_restore 26
.cfi_restore 25
            mov w0,#3
            adrp x1, .L_414d10
            add x1,x1, :lo12:.L_414d10
            bl syslog

            ldr x0,[x24,#72]
            cmp x0,x28
            b.eq .L_40c110
.L_40c228:

            adrp x21, connection_list
            adrp x20, connection_mtx
            add x20,x20, :lo12:connection_mtx
            mov x0,x20
            bl pthread_mutex_lock

            ldr x19,[x21,:lo12:connection_list]
            cbz x19,.L_40c258
.L_40c244:

            ldr w0,[x19]
            ldr x19,[x19,#16]
            bl close

            cbnz x19,.L_40c244

            ldr x19,[x21,:lo12:connection_list]
.L_40c258:

            mov x0,x19
            bl plist_free

            add x19,x24,#24
            mov x0,x20
            bl pthread_mutex_unlock

            mov x0,x19
            bl pthread_mutex_lock

            mov x0,x19
            str x28,[x24,#72]
            bl pthread_mutex_unlock

            b .L_40c0e4
.L_40c284:

.cfi_restore 27
.cfi_restore 28
            adrp x3, .L_415900
            adrp x1, .L_414c98
            adrp x0, .L_414ca8
            add x3,x3, :lo12:.L_415900
            add x1,x1, :lo12:.L_414c98
            add x0,x0, :lo12:.L_414ca8
            mov w2,#442
            stp x25,x26,[sp,#64]
.cfi_offset 26, -40
.cfi_offset 25, -48
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            bl __assert_fail
.cfi_endproc 
.size proxy_connect, . - proxy_connect
.align 2
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -112
.cfi_offset 20, -104
            mov x19,x1
            mov x20,x2
            stp x21,x22,[sp,#32]
.cfi_offset 21, -96
.cfi_offset 22, -88
            mov x21,x0
            mov x0,#4096
            stp x23,x24,[sp,#48]
.cfi_offset 23, -80
.cfi_offset 24, -72
            mov x24,x3
            stp x25,x26,[sp,#64]
.cfi_offset 25, -64
.cfi_offset 26, -56
            adrp x25, .L_411dd8
            add x25,x25, :lo12:.L_411dd8
            stp x27,x28,[sp,#80]
.cfi_offset 27, -48
.cfi_offset 28, -40
            bl zmalloc

            mov x2,#4096
            mov x1,x25
            mov x23,x0
            bl strlcpy

            add x0,sp,#112
            mov x1,x24
            bl ntlm_request

            cbnz w0,.L_40c55c
.L_40c308:

            mov x0,x19
            bl dup_rr_data

            mov x22,x0
            adrp x26, .L_4120a8
            ldr x0,[x0,#8]
            add x26,x26, :lo12:.L_4120a8
            mov x2,x23
            mov x1,x26
            mov w3,#1
            str x22,[sp,#120]
            bl hlist_mod

            str x0,[x22,#8]
            cbz x19,.L_40c670

            ldr w0,[x19]
            cbz w0,.L_40c390

            ldr x1,[x19,#40]
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strcasecmp

            cbnz w0,.L_40c390

            adrp x22, debug
            mov w0,#1
            str w0,[sp,#108]
            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c650
.L_40c36c:

            ldr x0,[sp,#120]
            ldr x0,[x0,#40]
            bl free

            ldr x27,[sp,#120]
            adrp x0, .L_4126f8
            add x0,x0, :lo12:.L_4126f8
            bl strdup

            str x0,[x27,#40]
            b .L_40c3b0
.L_40c390:

            mov x1,x20
            mov x0,x19
            bl http_has_body

            cbnz x0,.L_40c4fc

            adrp x22, debug
            str wzr,[sp,#108]
.L_40c3a8:

            ldr w0,[x19]
            cbnz w0,.L_40c628
.L_40c3b0:

            ldr x28,[sp,#120]
            mov w3,#1
            adrp x2, .L_411e10
            adrp x1, .L_411e18
            add x2,x2, :lo12:.L_411e10
            add x1,x1, :lo12:.L_411e18
            ldr x0,[x28,#8]
            bl hlist_mod

            str x0,[x28,#8]
            ldr x27,[sp,#120]
            adrp x1, .L_411e28
            add x1,x1, :lo12:.L_411e28
            ldr x0,[x27,#8]
            bl hlist_del

            str x0,[x27,#8]
            ldr w1,[x22,:lo12:debug]
            cbnz w1,.L_40c57c
.L_40c3f4:

            ldr x1,[sp,#120]
            ldr w0,[x21]
            bl headers_send

            cbz w0,.L_40c540

            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c514

            cbz x20,.L_40c524
.L_40c410:

            add x0,sp,#120
            bl free_rr_data

            mov x0,x20
            str x20,[sp,#120]
            bl reset_rr_data

            ldr x1,[sp,#120]
            ldr w0,[x21]
            bl headers_recv

            cbz w0,.L_40c540
.L_40c434:

            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c640
.L_40c43c:

            ldr x1,[sp,#120]
            ldr w0,[x1,#16]
            cmp w0,#407
            b.eq .L_40c5b0

            ldr w0,[sp,#108]
            cbz w0,.L_40c498

            ldr w0,[x22,:lo12:debug]
            cbz w0,.L_40c480

            cbz x19,.L_40c468

            ldr w0,[x19]
            cbnz w0,.L_40c6a4
.L_40c468:

            adrp x1, .L_414d48
            add x1,x1, :lo12:.L_414d48
.L_40c470:

            adrp x0, .L_414e18
            add x0,x0, :lo12:.L_414e18
            bl printf

            ldr x1,[sp,#120]
.L_40c480:

            cbz x20,.L_40c48c

            mov w0,#407
            str w0,[x20,#16]
.L_40c48c:

            ldr w0,[x21]
            bl http_body_drop

            cbz w0,.L_40c540
.L_40c498:

            ldr w0,[x21]
            bl so_closed

            cbz w0,.L_40c620

            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c660
.L_40c4ac:

            ldr w0,[x21]
            bl close

            ldr x1,[x19,#48]
            mov x0,x24
            ldr x2,[x19,#64]
            bl proxy_connect

            str w0,[x21]
            mvn w0,w0
            lsr w19,w0,#31
.L_40c4d0:

            cbz x20,.L_40c550
.L_40c4d4:

            mov x0,x23
            bl free

            mov w0,w19
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
.cfi_def_cfa_offset 0
            ret 
.L_40c4fc:

.cfi_restore_state 
            adrp x22, debug
            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c650
.L_40c508:

            mov w0,#1
            str w0,[sp,#108]
            b .L_40c3a8
.L_40c514:

            adrp x0, .L_414d98
            add x0,x0, :lo12:.L_414d98
            bl puts

            cbnz x20,.L_40c410
.L_40c524:

            ldr x0,[sp,#120]
            bl reset_rr_data

            ldr x1,[sp,#120]
            ldr w0,[x21]
            bl headers_recv

            cbnz w0,.L_40c434

            nop
            nop
            nop
            nop
.L_40c540:

            ldr w0,[x21]
            mov w19,#0
            bl close

            cbnz x20,.L_40c4d4
.L_40c550:

            add x0,sp,#120
            bl free_rr_data

            b .L_40c4d4
.L_40c55c:

            ldr x1,[sp,#112]
            sxtw x2,w0
            mov x3,#4091
            add x0,x23,#5
            bl to_base64

            ldr x0,[sp,#112]
            bl free

            b .L_40c308
.L_40c57c:

            adrp x0, .L_414d78
            add x0,x0, :lo12:.L_414d78
            bl puts

            ldr x3,[sp,#120]
            adrp x0, .L_412210
            add x0,x0, :lo12:.L_412210
            ldp x1,x2,[x3,#40]
            ldr x3,[x3,#72]
            bl printf

            ldr x0,[sp,#120]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_40c3f4
.L_40c5b0:

            ldr w0,[x21]
            bl http_body_drop

            cbz w0,.L_40c540

            ldr x0,[sp,#120]
            adrp x1, .L_412410
            add x1,x1, :lo12:.L_412410
            ldr x0,[x0,#8]
            bl hlist_get

            str x0,[sp,#112]
            cbz x0,.L_40c744

            bl strlen

            add x0,x0,#6
            bl zmalloc

            mov x27,x0
            ldr x1,[sp,#112]
            add x1,x1,#5
            bl from_base64

            mov w2,w0
            cmp w0,#40
            b.gt .L_40c6d0

            adrp x1, .L_414db8
            add x1,x1, :lo12:.L_414db8
            mov w0,#3
            bl syslog

            mov x0,x27
            bl free

            ldr w0,[x21]
            bl close
.L_40c620:

            mov w19,#1
            b .L_40c4d0
.L_40c628:

            ldr x1,[x19,#40]
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strcasecmp

            cbnz w0,.L_40c3b0

            b .L_40c36c
.L_40c640:

            ldr x0,[sp,#120]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_40c43c
.L_40c650:

            adrp x0, .L_414d58
            add x0,x0, :lo12:.L_414d58
            bl puts

            b .L_40c508
.L_40c660:

            adrp x0, .L_414e40
            add x0,x0, :lo12:.L_414e40
            bl puts

            b .L_40c4ac
.L_40c670:

            mov x1,x20
            mov x0,#0
            bl http_has_body

            cbnz x0,.L_40c68c

            adrp x22, debug
            str wzr,[sp,#108]
            b .L_40c3b0
.L_40c68c:

            adrp x22, debug
            ldr w0,[x22,:lo12:debug]
            cbnz w0,.L_40c788
.L_40c698:

            mov w0,#1
            str w0,[sp,#108]
            b .L_40c3b0
.L_40c6a4:

            ldr x1,[x19,#40]
            adrp x0, .L_412220
            add x0,x0, :lo12:.L_412220
            bl strcasecmp

            cmp w0,#0
            adrp x1, .L_414d38
            adrp x0, .L_414d48
            add x1,x1, :lo12:.L_414d38
            add x0,x0, :lo12:.L_414d48
            csel x1,x1,x0,eq
            b .L_40c470
.L_40c6d0:

            add x0,sp,#112
            mov x3,x24
            mov x1,x27
            str xzr,[sp,#112]
            bl ntlm_response

            mov w28,w0
            cmp w0,#0
            b.le .L_40c758

            mov x1,x25
            mov x0,x23
            mov x2,#4096
            bl strlcpy

            ldr x1,[sp,#112]
            sxtw x2,w28
            add x0,x23,#5
            mov x3,#4091
            bl to_base64

            ldr x0,[x19,#8]
            mov x1,x26
            mov x2,x23
            mov w3,#1
            bl hlist_mod

            mov x1,x0
            ldr x0,[sp,#112]
            str x1,[x19,#8]
            bl free

            mov x0,x27
            bl free

            b .L_40c498
.L_40c744:

            adrp x1, .L_414de0
            mov w0,#4
            add x1,x1, :lo12:.L_414de0
            bl syslog

            b .L_40c498
.L_40c758:

            adrp x1, .L_411e98
            add x1,x1, :lo12:.L_411e98
            mov w0,#3
            bl syslog

            mov x0,x27
            mov w19,#1
            bl free

            ldr x0,[sp,#112]
            bl free

            ldr w0,[x21]
            bl close

            b .L_40c4d0
.L_40c788:

            adrp x0, .L_414d58
            add x0,x0, :lo12:.L_414d58
            bl puts

            b .L_40c698
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size proxy_authenticate, . - proxy_authenticate
.align 4
#-----------------------------------
.globl scanner_hook
.type scanner_hook, @function
#-----------------------------------
scanner_hook:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-224]!
.cfi_def_cfa_offset 224
.cfi_offset 29, -224
.cfi_offset 30, -216
            mov fp,sp
            stp x25,x26,[sp,#64]
            str x2,[sp,#104]
            ldr w2,[x0]
.cfi_offset 25, -160
.cfi_offset 26, -152
            cbz w2,.L_40c7d0

            stp x19,x20,[sp,#16]
.cfi_offset 20, -200
.cfi_offset 19, -208
            mov x19,x1
            ldr w2,[x1,#16]
            cmp w2,#200
            b.eq .L_40c7e4

            ldp x19,x20,[sp,#16]
.L_40c7d0:

.cfi_restore 20
.cfi_restore 19
            mov w26,#3
.L_40c7d4:

            mov w0,w26
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#224
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
.cfi_def_cfa_offset 0
            ret 
.L_40c7e4:

.cfi_def_cfa_offset 224
.cfi_offset 19, -208
.cfi_offset 20, -200
.cfi_offset 25, -160
.cfi_offset 26, -152
.cfi_offset 29, -224
.cfi_offset 30, -216
            mov x20,x0
            stp x21,x22,[sp,#32]
.cfi_offset 22, -184
.cfi_offset 21, -192
            mov x21,x4
            mov x22,x5
            stp x23,x24,[sp,#48]
.cfi_offset 24, -168
.cfi_offset 23, -176
            mov w23,w3
            bl http_has_body

            cmn x0,#1
            b.eq .L_40c818
.L_40c808:

            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_40c7d0
.L_40c818:

.cfi_restore_state 
            ldr x0,[x19,#8]
            adrp x2, .L_412d00
            adrp x1, .L_411e28
            add x2,x2, :lo12:.L_412d00
            add x1,x1, :lo12:.L_411e28
            bl hlist_subcmp

            cbnz w0,.L_40c808

            ldr x0,[x19,#8]
            adrp x2, .L_412120
            adrp x1, .L_4121f8
            add x2,x2, :lo12:.L_412120
            add x1,x1, :lo12:.L_4121f8
            bl hlist_subcmp

            cbz w0,.L_40c808

            stp x27,x28,[sp,#80]
.cfi_offset 28, -136
.cfi_offset 27, -144
            adrp x1, .L_414e60
            add x1,x1, :lo12:.L_414e60
            ldr x0,[x20,#8]
            bl hlist_get

            cbz x0,.L_40c8ec

            bl strdup

            bl lowercase

            mov x27,x0
            adrp x1, scanner_agent_list
            adrp x2, debug
            str x2,[sp,#128]
            adrp x0, .L_414e70
            ldr x25,[x1,:lo12:scanner_agent_list]
            add x26,x2, :lo12:debug
            add x28,x0, :lo12:.L_414e70
            cbnz x25,.L_40c8c0

            b .L_40cd60
.L_40c898:

            mov x1,x27
            mov x0,x24
            mov w2,#0
            bl fnmatch

            mov w1,w0
            mov x0,x24
            cbz w1,.L_40cd48

            bl free

            ldr x25,[x25,#16]
            cbz x25,.L_40cd60
.L_40c8c0:

            ldr x0,[x25,#8]
            bl strdup

            bl lowercase

            mov x24,x0
            ldr w1,[x26]
            cbz w1,.L_40c898

            mov x2,x0
            mov x1,x27
            mov x0,x28
            bl printf

            b .L_40c898
.L_40c8ec:

            adrp x0, debug
            add x26,x0, :lo12:debug
            str x0,[sp,#128]
.L_40c8f8:

            mov x0,#4096
            bl zmalloc

            mov w24,#0
            mov x25,x0
            mov w27,#4095
            adrp x0, .L_414ec0
            add x0,x0, :lo12:.L_414ec0
            str x0,[sp,#112]
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c920:

            ldr w0,[x21]
            sub w2,w27,w24
            add x1,x25,w24, sxtw
            sxtw x2,w2
            bl read

            mov x28,x0
            ldr w1,[x26]
            cbnz w1,.L_40cc98
.L_40c940:

            cmp w28,#0
            b.le .L_40c960

            add w24,w24,w28
            cmp w24,#4094
            b.le .L_40c920

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40c960:

            adrp x1, .L_414ee0
            mov x0,x25
            add x1,x1, :lo12:.L_414ee0
            bl strstr

            cbz x0,.L_40cd40

            adrp x1, .L_414f08
            mov x0,x25
            add x1,x1, :lo12:.L_414f08
            bl strstr

            cbz x0,.L_40cd40

            mov w1,#34
            bl strchr

            mov x27,x0
            cbz x0,.L_40cd40

            add x28,x0,#1
            mov x0,x28
            bl strlen

            mov x1,#1
            cbnz x0,.L_40c9bc

            b .L_40cfa0
.L_40c9b0:

            cmp x0,x1
            b.eq .L_40cdf0

            mov x1,x3
.L_40c9bc:

            ldrb w2,[x27,x1]
            add x3,x1,#1
            cmp w2,#34
            b.ne .L_40c9b0

            sub w2,w1,#1
.L_40c9d0:

            mov w1,#0
            mov x0,x28
            bl substr

            str x0,[sp,#184]
            ldr x1,[sp,#128]
            mov x2,x0
            ldr w1,[x1,:lo12:debug]
            cbz w1,.L_40ca00

            adrp x0, .L_414f20
            mov x1,x2
            add x0,x0, :lo12:.L_414f20
            bl printf
.L_40ca00:

            mov w27,#4096
            mov x0,#4096
            str w27,[sp,#192]
            bl zmalloc

            cmp x22,#0
            adrp x2, .L_414f40
            cset w1,ne
            add x2,x2, :lo12:.L_414f40
            str w27,[sp,#140]
            mov x27,#4096
            stp xzr,x2,[sp,#144]
            stp wzr,w1,[sp,#168]
            adrp x1, .L_414f80
            add x1,x1, :lo12:.L_414f80
            str x1,[sp,#160]
            str xzr,[sp,#176]
            str x0,[sp,#200]
.L_40ca44:

            ldr w0,[x21]
            add x2,sp,#192
            add x1,sp,#200
            bl so_recvln

            str w0,[sp,#112]
            ldr x1,[sp,#200]
            str x1,[sp,#120]
            mov x0,x1
            bl strlen

            mov x28,x0
            add x0,x0,w24, sxtw
            cmp x0,x27
            b.lt .L_40ca9c

            ldr w0,[sp,#140]
            lsl w0,w0,#1
            sxtw x27,w0
            mov x0,x25
            mov x1,x27
            str w27,[sp,#140]
            bl realloc

            cbz x0,.L_40cf94

            mov x25,x0
.L_40ca9c:

            ldr x1,[sp,#120]
            mov x2,x27
            mov x0,x25
            add w24,w24,w28
            bl strlcat

            ldr w0,[sp,#112]
            tbnz w0,#31,.L_40cf94

            ldr x1,[sp,#152]
            ldr x28,[sp,#200]
            mov x0,x28
            bl strstr

            str x0,[sp,#120]
            cbz x0,.L_40ccb0

            bl __ctype_b_loc

            ldr x1,[sp,#120]
            ldr x0,[x0]
            ldrb w1,[x1,#11]
            ldrh w0,[x0,x1,lsl #1]
            tbz w0,#11,.L_40ccb0

            str wzr,[sp,#120]
.L_40caec:

            ldr w0,[x26]
            cbnz w0,.L_40cdac
.L_40caf4:

            ldr x1,[sp,#160]
            mov x0,x28
            bl strstr

            cbz x0,.L_40cd6c

            mov x1,#0
            add x0,x0,#16
            mov w2,#10
            bl strtol

            ldr w1,[x26]
            str x0,[sp,#144]
            cbz w1,.L_40cb40

            mov x1,x0
            cmp x0,#0
            b.le .L_40d2a0

            adrp x0, .L_414f98
            mov x2,x22
            add x0,x0, :lo12:.L_414f98
            asr x1,x1,#10
            bl printf
.L_40cb40:

            cbz x22,.L_40cb64

            cmp x22,#1
            b.eq .L_40d1ac

            ldr x1,[sp,#144]
            cmp x1,#0
            add x0,x1,#1023
            csel x0,x0,x1,lt
            cmp x22,x0, asr #10
            b.lt .L_40d1ac
.L_40cb64:

            mov x0,#50
            bl zmalloc

            ldr x3,[x20,#72]
            adrp x2, .L_415000
            add x2,x2, :lo12:.L_415000
            mov x1,#50
            mov x28,x0
            bl snprintf

            mov x0,x28
            bl strlen

            mov x1,x28
            mov x2,x0
            mov w0,w23
            bl write_wrapper

            mov x0,x28
            bl free

            ldr w0,[sp,#120]
            cbz w0,.L_40ce38

            ldr x0,[sp,#144]
            cmp x0,#0
            ldr w0,[sp,#172]
            ccmp w0,#0,#4,eq
            b.ne .L_40ce18

            ldr x28,[sp,#200]
.L_40cbc4:

            mov x0,x28
            adrp x1, .L_415070
            add x1,x1, :lo12:.L_415070
            bl strstr

            add x27,x0,#3
            mov x0,x27
            mov w1,#34
            bl strchr

            sub x2,x0,x27
            mov x22,x28
            mov w26,#1
            cmp x2,#0
            b.gt .L_40cfac
.L_40cbf8:

            mov x0,x22
            bl free

            ldr x0,[sp,#184]
            bl free
.L_40cc08:

            ldr x0,[sp,#128]
            ldr w1,[x0,:lo12:debug]
            cbz w24,.L_40cc68

            cbz w1,.L_40cc30

            mov w1,w24
            adrp x0, .L_4151c0
            add x0,x0, :lo12:.L_4151c0
            bl printf

            ldr x0,[x19,#8]
            bl hlist_dump
.L_40cc30:

            mov x1,x19
            mov w0,w23
            bl headers_send

            cbz w0,.L_40cdc4

            mov x1,x25
            sxtw x2,w24
            mov w0,w23
            bl write_wrapper

            ldr x1,[sp,#128]
            cmp w0,#0
            mov w26,#32768
            mov w0,#2
            csel w26,w26,w0,le
            ldr w1,[x1,:lo12:debug]
.L_40cc68:

            cbz w1,.L_40cc7c

            adrp x0, .L_415218
            mov w1,w26
            add x0,x0, :lo12:.L_415218
            bl printf
.L_40cc7c:

            mov x0,x25
            bl free

            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40c7d4
.L_40cc98:

.cfi_restore_state 
            mov w0,#4096
            sub w2,w0,w24
            ldr x0,[sp,#112]
            mov w1,w28
            bl printf

            b .L_40c940
.L_40ccb0:

            mov x0,x28
            adrp x1, .L_414f50
            add x1,x1, :lo12:.L_414f50
            bl strstr

            str x0,[sp,#120]
            cbz x0,.L_40ccec

            bl __ctype_b_loc

            ldr x1,[sp,#120]
            ldr x0,[x0]
            ldrb w1,[x1,#17]
            ldrh w0,[x0,x1,lsl #1]
            tbz w0,#11,.L_40ccec

            mov w0,#1
            str w0,[sp,#120]
            b .L_40caec
.L_40ccec:

            mov w0,#1
            str wzr,[sp,#120]
.L_40ccf4:

            ldr w1,[sp,#112]
            cmp w1,#0
            ccmp w0,#0,#4,ne
            b.ne .L_40ca44

            ldr x28,[sp,#200]
.L_40cd08:

            ldr w0,[sp,#120]
            and w0,w0,#1
.L_40cd10:

            mov x22,x28
            mov w26,#1
            cbz w0,.L_40cbf8

            ldr w0,[sp,#168]
            str w0,[sp,#120]
            b .L_40cbc4
.L_40cd28:

            adrp x0, .L_4151a0
            add x0,x0, :lo12:.L_4151a0
            bl puts

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40cd40:

            mov w26,#1
            b .L_40cc08
.L_40cd48:

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40cf74
.L_40cd54:

            mov x22,#0
            mov x0,x24
            bl free
.L_40cd60:

            mov x0,x27
            bl free

            b .L_40c8f8
.L_40cd6c:

            ldr w0,[sp,#168]
            cbz w0,.L_40d1bc

            ldr w0,[sp,#120]
            cbz w0,.L_40ceb8

            ldr x0,[sp,#144]
            cmp x0,#0
            ldr w0,[sp,#172]
            ccmp w0,#0,#4,eq
            b.eq .L_40cbc4

            cmp x22,#1
            b.ne .L_40cf40
.L_40cd98:

            mov w0,#1
            str w0,[sp,#120]
            str xzr,[sp,#144]
            str w0,[sp,#168]
            b .L_40cd08
.L_40cdac:

            mov x1,x28
            adrp x0, .L_414f68
            add x0,x0, :lo12:.L_414f68
            bl printf

            ldr x28,[sp,#200]
            b .L_40caf4
.L_40cdc4:

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40cf84
.L_40cdd0:

            mov x0,x25
            mov w26,#32768
            bl free

            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            b .L_40c7d4
.L_40cdf0:

.cfi_restore_state 
            mov w2,w0
            ldrb w0,[x28,w0,sxtw]
.L_40cdf8:

            cmp w0,#34
            b.eq .L_40c9d0

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40cd28

            mov w26,#1
            cbz w24,.L_40cc7c

            b .L_40cc30
.L_40ce18:

            ldr x1,[sp,#176]
            cmp x1,#0
            add x0,x1,#1023
            csel x0,x0,x1,lt
            cmp x22,x0, asr #10
            b.lt .L_40d284

            ldr x28,[sp,#200]
            b .L_40cd98
.L_40ce38:

            mov x0,#50
            bl zmalloc

            ldr x3,[sp,#200]
            mov x28,x0
            mov w2,#10
            mov x1,#0
            add x0,x3,#12
            bl strtol

            mov x3,x0
            ldr x4,[sp,#144]
            adrp x2, .L_415050
            add x2,x2, :lo12:.L_415050
            mov x1,#50
            mov x0,x28
            str x3,[sp,#176]
            bl snprintf

            mov x0,x28
            bl strlen

            mov x1,x28
            mov x2,x0
            mov w0,w23
            bl write_wrapper

            mov x0,x28
            bl free

            ldr x0,[sp,#144]
            cmp x0,#0
            ldr w0,[sp,#172]
            ccmp w0,#0,#4,eq
            b.ne .L_40cf40
.L_40ceac:

            mov w0,#1
            str w0,[sp,#168]
            b .L_40ccf4
.L_40ceb8:

            mov x0,#50
            bl zmalloc

            ldr x3,[sp,#200]
            mov x28,x0
            mov w2,#10
            mov x1,#0
            add x0,x3,#12
            bl strtol

            mov x3,x0
            ldr x4,[sp,#144]
            adrp x2, .L_415050
            add x2,x2, :lo12:.L_415050
            mov x1,#50
            mov x0,x28
            str x3,[sp,#176]
            bl snprintf

            mov x0,x28
            bl strlen

            mov x1,x28
            mov x2,x0
            mov w0,w23
            bl write_wrapper

            mov x0,x28
            bl free

            ldr x0,[sp,#144]
            cmp x0,#0
            ldr w0,[sp,#172]
            ccmp w0,#0,#4,eq
            cset w0,ne
            b.eq .L_40ceac

            cmp x22,#1
            b.ne .L_40cf40

            str xzr,[sp,#144]
            b .L_40ccf4
.L_40cf40:

            ldr x1,[sp,#176]
            cmp x1,#0
            add x0,x1,#1023
            csel x0,x0,x1,lt
            cmp x22,x0, asr #10
            b.lt .L_40d284

            ldr w0,[sp,#120]
            mov w1,#1
            str xzr,[sp,#144]
            eor w0,w0,#1
            str w1,[sp,#168]
            and w0,w0,#1
            b .L_40ccf4
.L_40cf74:

            adrp x0, .L_414ea0
            add x0,x0, :lo12:.L_414ea0
            bl puts

            b .L_40cd54
.L_40cf84:

            adrp x0, .L_4151f0
            add x0,x0, :lo12:.L_4151f0
            bl puts

            b .L_40cdd0
.L_40cf94:

            ldr x22,[sp,#200]
            mov w26,#1
            b .L_40cbf8
.L_40cfa0:

            ldrb w0,[x27,#1]
            mov w2,#0
            b .L_40cdf8
.L_40cfac:

            mov w1,#0
            mov x0,x27
            bl substr

            mov x22,x0
            bl urlencode

            mov x26,x0
            mov x0,x22
            bl free

            ldr x0,[x20,#48]
            bl urlencode

            mov x27,x0
            mov x0,#4096
            bl zmalloc

            ldr x3,[sp,#184]
            mov x7,x27
            mov x4,x26
            adrp x2, .L_415078
            mov x6,x3
            add x2,x2, :lo12:.L_415078
            mov x5,x3
            mov x1,#4095
            mov x22,x0
            bl snprintf

            mov x0,x26
            bl free

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40d1dc
.L_40d01c:

            mov x0,#50
            bl zmalloc

            mov x26,x0
            mov x0,x22
            bl strlen

            mov w3,w0
            adrp x2, .L_4130a8
            add x2,x2, :lo12:.L_4130a8
            mov x1,#50
            mov x0,x26
            bl snprintf

            bl new_rr_data

            mov x1,x0
            mov x0,x20
            str x1,[sp,#216]
            bl dup_rr_data

            str x0,[sp,#208]
            ldr x0,[x0,#40]
            bl free

            ldr x28,[sp,#208]
            adrp x0, .L_4150d0
            add x0,x0, :lo12:.L_4150d0
            bl strdup

            ldr x2,[x20,#48]
            str x0,[x28,#40]
            ldr x0,[sp,#208]
            mov w3,#1
            adrp x1, .L_4150d8
            add x1,x1, :lo12:.L_4150d8
            ldr x0,[x0,#8]
            bl hlist_mod

            ldr x0,[sp,#208]
            mov w3,#1
            adrp x2, .L_4150e0
            adrp x1, .L_412cf0
            add x2,x2, :lo12:.L_4150e0
            add x1,x1, :lo12:.L_412cf0
            ldr x0,[x0,#8]
            bl hlist_mod

            ldr x0,[sp,#208]
            adrp x1, .L_411e18
            add x20,x1, :lo12:.L_411e18
            mov x2,x26
            mov x1,x20
            mov w3,#1
            ldr x0,[x0,#8]
            bl hlist_mod

            mov x0,x26
            bl free

            ldr x2,[sp,#208]
            ldr x26,[sp,#104]
            ldr x1,[x2,#48]
            mov x0,x26
            ldr x2,[x2,#64]
            bl proxy_connect

            mov w4,w0
            ldp x1,x2,[sp,#208]
            mov x3,x26
            add x0,sp,#196
            str w4,[sp,#196]
            bl proxy_authenticate

            ldr x1,[sp,#128]
            ldr w1,[x1,:lo12:debug]
            cbz w0,.L_40d12c

            ldr x0,[sp,#216]
            ldr w2,[x0,#16]
            cmp w2,#407
            b.eq .L_40d194
.L_40d12c:

            cbnz w1,.L_40d274
.L_40d130:

            ldr w0,[sp,#196]
            bl close

            str wzr,[sp,#196]
            ldr x0,[sp,#216]
.L_40d140:

            bl reset_rr_data

            ldr w0,[sp,#196]
            cbnz w0,.L_40d1f0
.L_40d14c:

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40d184
.L_40d158:

            mov w26,#1
.L_40d15c:

            add x0,sp,#208
            bl free_rr_data

            add x0,sp,#216
            bl free_rr_data

            mov x0,x22
            bl free

            mov x0,x27
            bl free

            ldr x22,[sp,#200]
            b .L_40cbf8
.L_40d184:

            adrp x0, .L_415178
            add x0,x0, :lo12:.L_415178
            bl puts

            b .L_40d158
.L_40d194:

            cbz w1,.L_40d140

            adrp x0, .L_415108
            add x0,x0, :lo12:.L_415108
            bl puts

            ldr x0,[sp,#216]
            b .L_40d140
.L_40d1ac:

            ldr w0,[sp,#120]
            ldr x28,[sp,#200]
            and w0,w0,#1
            b .L_40cd10
.L_40d1bc:

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_40cd08

            adrp x0, .L_415010
            add x0,x0, :lo12:.L_415010
            bl puts

            ldr x28,[sp,#200]
            b .L_40cd08
.L_40d1dc:

            ldr x1,[x20,#48]
            adrp x0, .L_4150a0
            add x0,x0, :lo12:.L_4150a0
            bl printf

            b .L_40d01c
.L_40d1f0:

            ldr x1,[sp,#208]
            bl headers_send

            cbz w0,.L_40d14c

            mov x0,x22
            bl strlen

            mov x2,x0
            ldr w0,[sp,#196]
            mov x1,x22
            bl write_wrapper

            cbz x0,.L_40d14c

            ldr x1,[sp,#216]
            ldr w0,[sp,#196]
            bl headers_recv

            cbz w0,.L_40d14c

            ldr x0,[sp,#128]
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40d308
.L_40d234:

            ldr x1,[sp,#144]
            ldr x0,[sp,#176]
            orr x0,x0,x1
            cbnz x0,.L_40d2bc
.L_40d244:

            ldr x1,[sp,#216]
            mov x0,x19
            ldr w2,[sp,#120]
            mov w24,#0
            mov w26,#3
            str w2,[x1,#20]
            bl copy_rr_data

            ldr w0,[x21]
            bl close

            ldr w0,[sp,#196]
            str w0,[x21]
            b .L_40d15c
.L_40d274:

            adrp x0, .L_415140
            add x0,x0, :lo12:.L_415140
            bl puts

            b .L_40d130
.L_40d284:

            ldr w0,[sp,#120]
            mov w1,#1
            ldr x28,[sp,#200]
            and w0,w0,#1
            str xzr,[sp,#144]
            str w1,[sp,#168]
            b .L_40cd10
.L_40d2a0:

            adrp x0, .L_414fd0
            add x0,x0, :lo12:.L_414fd0
            bl puts

            ldr w0,[sp,#120]
            ldr x28,[sp,#200]
            and w0,w0,#1
            b .L_40cd10
.L_40d2bc:

            mov x0,#20
            bl zmalloc

            ldr x1,[sp,#144]
            mov x24,x0
            ldr x2,[sp,#176]
            cmp x1,#0
            csel x3,x2,x1,eq
            mov x1,#20
            adrp x2, .L_415170
            add x2,x2, :lo12:.L_415170
            bl snprintf

            ldr x26,[sp,#216]
            mov x2,x24
            mov x1,x20
            mov w3,#1
            ldr x0,[x26,#8]
            bl hlist_mod

            str x0,[x26,#8]
            b .L_40d244
.L_40d308:

            ldr x0,[sp,#216]
            ldr x0,[x0,#8]
            bl hlist_dump

            b .L_40d234
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size scanner_hook, . - scanner_hook
.align 4
#-----------------------------------
.globl so_resolv
.type so_resolv, @function
#-----------------------------------
so_resolv:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov w4,#1
            mov w3,w2
            mov fp,sp
            adrp x2, .L_4130a8
            stp xzr,xzr,[sp,#112]
            add x2,x2, :lo12:.L_4130a8
            stp x19,x20,[sp,#16]
.cfi_offset 19, -144
.cfi_offset 20, -136
            mov x20,x0
            mov x19,x1
            add x0,sp,#56
            mov x1,#6
            str x21,[sp,#32]
.cfi_offset 21, -128
            add x21,sp,#112
            str w4,[sp,#120]
            stp xzr,xzr,[sp,#128]
            stp xzr,xzr,[sp,#144]
            bl snprintf

            add x1,sp,#56
            mov x3,x20
            mov x2,x21
            mov x0,x19
            bl getaddrinfo

            adrp x1, debug
            ldr w1,[x1,:lo12:debug]
            cbnz w0,.L_40d404

            cbnz w1,.L_40d3a0
.L_40d38c:

            ldr x21,[sp,#32]
            mov w0,#1
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#160
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40d3a0:

.cfi_restore_state 
            movi v31.4s,#0
            mov x1,x19
            adrp x0, .L_415258
            add x0,x0, :lo12:.L_415258
            stp q31,q31,[sp,#64]
            stur q31,[sp,#94]
            bl printf

            adrp x0, .L_415268
            ldr x19,[x20]
            add x20,x0, :lo12:.L_415268
            cbz x19,.L_40d38c
.L_40d3cc:

            ldr x1,[x19,#24]
            add x2,sp,#64
            mov w3,#46
            add x4,x1,#8
            ldrh w0,[x1],#4
            cmp w0,#2
            csel x1,x4,x1,ne
            bl inet_ntop

            add x1,sp,#64
            mov x0,x20
            bl printf

            ldr x19,[x19,#40]
            cbnz x19,.L_40d3cc

            b .L_40d38c
.L_40d404:

            cbnz w1,.L_40d41c

            mov w0,#0
.L_40d40c:

            ldr x21,[sp,#32]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#160
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40d41c:

.cfi_restore_state 
            mov w21,w0
            bl gai_strerror

            mov w3,w21
            mov x2,x0
            mov x1,x19
            adrp x0, .L_415238
            add x0,x0, :lo12:.L_415238
            bl printf

            mov w0,#0
            b .L_40d40c
.cfi_endproc 
.size so_resolv, . - so_resolv
.align 2
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
            mov w3,w1
            mov x1,#6
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -80
.cfi_offset 20, -72
            mov x19,x0
            mov w20,w2
            add x0,sp,#40
            adrp x2, .L_4130a8
            add x2,x2, :lo12:.L_4130a8
            bl snprintf

            add x2,sp,#48
            stp xzr,xzr,[sp,#48]
            mov w0,#1
            str w0,[sp,#56]
            stp xzr,xzr,[x2,#16]
            stp xzr,xzr,[x2,#32]
            cbz w20,.L_40d490

            str w0,[sp,#48]
.L_40d490:

            mov x3,x19
            add x1,sp,#40
            mov x0,#0
            bl getaddrinfo

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_resolv_wildcard, . - so_resolv_wildcard
.align 2
#-----------------------------------
.globl so_connect
.type so_connect, @function
#-----------------------------------
so_connect:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            movi v31.4s,#0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp q31,q31,[sp,#64]
            stur q31,[sp,#94]
.cfi_offset 19, -96
.cfi_offset 20, -88
            cbz x0,.L_40d5d8

            stp x21,x22,[sp,#32]
.cfi_offset 22, -72
.cfi_offset 21, -80
            mov x21,x0
            adrp x22, debug
            add x22,x22, :lo12:debug
            mov w1,#1
            ldr w0,[x21,#4]
            mov w2,#0
            str x23,[sp,#48]
.cfi_offset 23, -64
            adrp x23, .L_415290
            add x23,x23, :lo12:.L_415290
            bl socket

            mov w19,w0
            ldr w1,[x22]
            tbnz w0,#31,.L_40d5cc
.L_40d500:

            cbz w1,.L_40d540

            ldr x1,[x21,#24]
            add x2,sp,#64
            mov w3,#46
            add x4,x1,#8
            ldrh w0,[x1],#4
            cmp w0,#2
            csel x1,x4,x1,ne
            bl inet_ntop

            ldr x0,[x21,#24]
            add x1,sp,#64
            ldrh w2,[x0,#2]
            mov x0,x23
            rev16 w2,w2
            and w2,w2,#65535
            bl printf
.L_40d540:

            mov w0,w19
            mov w2,#0
            mov w1,#3
            bl fcntl

            mov w20,w0
            tbnz w0,#31,.L_40d598

            ldr x1,[x21,#24]
            mov w0,w19
            ldr w2,[x21,#16]
            bl connect

            tbnz w0,#31,.L_40d5ec

            and w2,w20,#4294965247
            mov w0,w19
            mov w1,#4
            bl fcntl

            tbnz w0,#31,.L_40d650
.L_40d580:

            ldr x23,[sp,#48]
.cfi_remember_state 
.cfi_restore 23
            mov w0,w19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40d598:

.cfi_restore_state 
            ldr w0,[x22]
            cbnz w0,.L_40d630
.L_40d5a0:

            mov w0,w19
            bl close
.L_40d5a8:

            ldr x21,[x21,#40]
            cbz x21,.L_40d580

            ldr w0,[x21,#4]
            mov w1,#1
            mov w2,#0
            bl socket

            mov w19,w0
            ldr w1,[x22]
            tbz w0,#31,.L_40d500
.L_40d5cc:

            cbnz w1,.L_40d678

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldr x23,[sp,#48]
.L_40d5d8:

.cfi_restore 23
            mov w19,#-1
.L_40d5dc:

            mov w0,w19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40d5ec:

.cfi_def_cfa_offset 112
.cfi_offset 19, -96
.cfi_offset 20, -88
.cfi_offset 21, -80
.cfi_offset 22, -72
.cfi_offset 23, -64
.cfi_offset 29, -112
.cfi_offset 30, -104
            ldr w0,[x22]
            cbnz w0,.L_40d604
.L_40d5f4:

            mov w0,w19
            mov w19,#-1
            bl close

            b .L_40d5a8
.L_40d604:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_4152c8
            add x0,x0, :lo12:.L_4152c8
            bl printf

            mov w0,w19
            mov w19,#-1
            bl close

            b .L_40d5a8
.L_40d630:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_4152a8
            add x0,x0, :lo12:.L_4152a8
            bl printf

            b .L_40d5a0
.L_40d650:

            ldr w0,[x22]
            cbz w0,.L_40d5f4

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_4152d8
            add x0,x0, :lo12:.L_4152d8
            bl printf

            b .L_40d5f4
.L_40d678:

            bl __errno_location

            ldr w0,[x0]
            mov w19,#-1
            bl strerror

            mov x1,x0
            adrp x0, .L_415278
            add x0,x0, :lo12:.L_415278
            bl printf

            ldr x23,[sp,#48]
.cfi_restore 23
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            b .L_40d5dc
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
            movi v31.4s,#0
            stp fp,lr,[sp,#-160]!
.cfi_def_cfa_offset 160
.cfi_offset 29, -160
.cfi_offset 30, -152
            mov fp,sp
            stp x23,x24,[sp,#48]
            stp q31,q31,[sp,#112]
            stur q31,[sp,#142]
.cfi_offset 23, -112
.cfi_offset 24, -104
            cbz x1,.L_40d8b4

            mov x24,x2
            mov w23,#0
            stp x19,x20,[sp,#16]
.cfi_offset 20, -136
.cfi_offset 19, -144
            mov x19,x1
            stp x21,x22,[sp,#32]
.cfi_offset 22, -120
.cfi_offset 21, -128
            mov x21,x0
            mov w22,#1
            stp x25,x26,[sp,#64]
.cfi_offset 26, -88
.cfi_offset 25, -96
            adrp x25, .L_4153c0
            adrp x26, .L_415398
            add x25,x25, :lo12:.L_4153c0
            add x26,x26, :lo12:.L_415398
            str x27,[sp,#80]
.cfi_offset 27, -80
            b .L_40d7a0
.L_40d6f8:

            add x3,sp,#108
            mov w4,#4
            mov w2,#2
            mov w1,#1
            str w22,[sp,#108]
            bl setsockopt

            cbnz w0,.L_40d7f4

            ldr w0,[x19,#4]
            cmp w0,#10
            b.eq .L_40d820
.L_40d720:

            ldr x1,[x19,#24]
            add x2,sp,#112
            mov w3,#46
            add x4,x1,#8
            ldrh w0,[x1],#4
            cmp w0,#2
            csel x1,x4,x1,ne
            bl inet_ntop

            ldr x1,[x19,#24]
            mov w0,w20
            ldr w2,[x19,#16]
            ldrh w27,[x1,#2]
            bl bind

            cbnz w0,.L_40d864

            mov w0,w20
            mov w1,#4096
            bl listen

            cbnz w0,.L_40d7c4

            ldr x0,[x21]
            sxtw x1,w20
            mov x2,x24
            add w23,w23,#1
            bl plist_add

            str x0,[x21]
            rev16 w3,w27
            add x2,sp,#112
            and w3,w3,#65535
            mov x1,x25
            mov w0,#6
            bl syslog

            ldr x19,[x19,#40]
            cbz x19,.L_40d7d4
.L_40d7a0:

            ldr w0,[x19,#4]
            mov w2,#0
            mov w1,#1
            bl socket

            mov w20,w0
            tbz w0,#31,.L_40d6f8

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40d894
.L_40d7c4:

            mov w0,w20
            bl close

            ldr x19,[x19,#40]
            cbnz x19,.L_40d7a0
.L_40d7d4:

            ldr x27,[sp,#80]
.cfi_remember_state 
.cfi_restore 27
            mov w0,w23
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.L_40d7f4:

.cfi_restore_state 
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_415318
            mov w0,#4
            add x1,x1, :lo12:.L_415318
            bl syslog

            ldr w0,[x19,#4]
            cmp w0,#10
            b.ne .L_40d720
.L_40d820:

            add x3,sp,#108
            mov w0,w20
            mov w4,#4
            mov w2,#26
            mov w1,#41
            str w22,[sp,#108]
            bl setsockopt

            cbz w0,.L_40d720

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x2,x0
            adrp x1, .L_415358
            mov w0,#4
            add x1,x1, :lo12:.L_415358
            bl syslog

            b .L_40d720
.L_40d864:

            bl __errno_location

            ldr w0,[x0]
            rev16 w27,w27
            and w27,w27,#65535
            bl strerror

            mov x4,x0
            mov w3,w27
            add x2,sp,#112
            mov x1,x26
            mov w0,#3
            bl syslog

            b .L_40d7c4
.L_40d894:

            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_4152f8
            add x0,x0, :lo12:.L_4152f8
            bl printf

            b .L_40d7c4
.L_40d8b4:

.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 22
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
            mov w23,#0
            mov w0,w23
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#160
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size so_listen, . - so_listen
.align 3
#-----------------------------------
.globl so_recvtest
.type so_recvtest, @function
#-----------------------------------
so_recvtest:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w3,#66
            mov x2,#1
            mov fp,sp
            add x1,sp,#31
            bl recv

            ldp fp,lr,[sp],#32
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
            mov w3,#66
            mov x2,#1
            mov fp,sp
            add x1,sp,#31
            bl recv

            cmp w0,#0
            cset w0,gt
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
            cmn w0,#1
            b.eq .L_40d96c

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov w3,#66
            mov x2,#1
            mov fp,sp
            add x1,sp,#31
            bl recv

            mov x1,x0
            mov w0,#1
            cbnz w1,.L_40d944
.L_40d93c:

            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40d944:

.cfi_restore_state 
            mov w0,#0
            cmn w1,#1
            b.ne .L_40d93c

            bl __errno_location

            ldr w0,[x0]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            cmp w0,#2
            ccmp w0,#11,#4,ne
            cset w0,ne
            ret 
.L_40d96c:

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
            nop
            nop
            nop
            nop
.size so_closed, . - so_closed
.align 4
#-----------------------------------
.globl so_recvln
.type so_recvln, @function
#-----------------------------------
so_recvln:

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
            stp x21,x22,[sp,#32]
.cfi_offset 19, -80
.cfi_offset 20, -72
.cfi_offset 21, -64
.cfi_offset 22, -56
            mov w22,w0
            mov x21,x1
            ldr w0,[x2]
            str x25,[sp,#64]
            strb wzr,[sp,#95]
            cmp w0,#1
.cfi_offset 25, -32
            b.le .L_40daac

            mov x20,x2
            mov x19,#0
            stp x23,x24,[sp,#48]
.cfi_offset 24, -40
.cfi_offset 23, -48
            adrp x23, debug
            add x23,x23, :lo12:debug
            b .L_40d9dc
.L_40d9c4:

            add x19,x19,#1
            cmp w3,w19
            b.le .L_40da54
.L_40d9d0:

            ldrb w0,[sp,#95]
            cmp w0,#10
            b.eq .L_40da98
.L_40d9dc:

            add x1,sp,#95
            mov w0,w22
            mov x2,#1
            bl read

            ldr x1,[x21]
            add w24,w19,#1
            mov w25,w0
            cmp w0,#0
            b.le .L_40daa4

            ldrb w0,[sp,#95]
            strb w0,[x1,x19]
            ldr w1,[x20]
            sub w3,w1,#1
            cmp w3,w24
            ccmp w0,#10,#4,eq
            b.eq .L_40d9c4

            ldr w0,[x23]
            cbnz w0,.L_40da7c
.L_40da24:

            ldr x0,[x21]
            lsl w1,w1,#1
            str w1,[x20]
            sxtw x1,w1
            bl realloc

            cbz x0,.L_40dabc

            ldr w3,[x20]
            add x19,x19,#1
            str x0,[x21]
            sub w3,w3,#1
            cmp w3,w19
            b.gt .L_40d9d0
.L_40da54:

            sxtw x19,w24
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldr x1,[x21]
.L_40da60:

            strb wzr,[x1,x19]
.L_40da64:

            ldp x19,x20,[sp,#16]
            mov w0,w25
            ldr x25,[sp,#64]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40da7c:

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
            lsl w2,w1,#1
            adrp x0, .L_4153e0
            mov w1,w22
            add x0,x0, :lo12:.L_4153e0
            bl printf

            ldr w1,[x20]
            b .L_40da24
.L_40da98:

            ldr x1,[x21]
            ldp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_restore 24
.cfi_restore 23
            b .L_40da60
.L_40daa4:

.cfi_restore_state 
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_40da60
.L_40daac:

            ldr x1,[x1]
            mov x19,#0
            mov w25,#1
            b .L_40da60
.L_40dabc:

.cfi_offset 23, -48
.cfi_offset 24, -40
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            mov w25,#-1
            b .L_40da64
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
.size so_recvln, . - so_recvln
.align 4
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
            str x19,[sp,#16]
.cfi_offset 19, -16
            mov w19,w0
            cbnz w0,.L_40dafc
.L_40daf4:

            mov w0,w19
            bl exit
.L_40dafc:

            adrp x1, stderr
            adrp x0, .L_415400
            mov x2,#54
            add x0,x0, :lo12:.L_415400
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite

            b .L_40daf4
.cfi_endproc 

            nop
            nop
            nop
            nop
.size myexit, . - myexit
.align 4
#-----------------------------------
.globl croak
.type croak, @function
#-----------------------------------
croak:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            cbz w1,.L_40db44

            mov x1,x0
            adrp x0, .L_412d90
            add x0,x0, :lo12:.L_412d90
            bl printf
.L_40db3c:

            mov w0,#1
            bl myexit
.L_40db44:

            mov x2,x0
            adrp x1, .L_412d90
            mov w0,#3
            add x1,x1, :lo12:.L_412d90
            bl syslog

            b .L_40db3c
.cfi_endproc 

            nop
            nop
            nop
            nop
.size croak, . - croak
.align 4
#-----------------------------------
.globl plist_add
.type plist_add, @function
#-----------------------------------
plist_add:

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
            mov x19,x0
            mov x0,#24
            str x21,[sp,#32]
.cfi_offset 21, -16
            mov x21,x2
            bl malloc

            stp x20,x21,[x0]
            str xzr,[x0,#16]
            cbz x19,.L_40dbb4

            mov x1,x19
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40dba0:

            mov x2,x1
            ldr x1,[x1,#16]
            cbnz x1,.L_40dba0

            str x0,[x2,#16]
            mov x0,x19
.L_40dbb4:

            ldr x21,[sp,#32]
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            cbz x0,.L_40dc4c

            mov x21,x0
            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            mov x19,x0
            mov x20,#0
            b .L_40dbf8
.L_40dbe8:

            ldr x2,[x19,#16]
            mov x20,x19
            mov x19,x2
            cbz x2,.L_40dc20
.L_40dbf8:

            ldr x2,[x19]
            cmp x2,x1
            b.ne .L_40dbe8

            ldp x0,x22,[x19,#8]
            cbz x0,.L_40dc10

            bl free
.L_40dc10:

            mov x0,x19
            bl free

            cbz x20,.L_40dc38

            str x22,[x20,#16]
.L_40dc20:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            mov x22,x21
.L_40dc28:

            mov x0,x22
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_40dc38:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x0,x22
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_40dc4c:

.cfi_def_cfa_offset 48
.cfi_offset 21, -16
.cfi_offset 22, -8
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov x22,#0
            b .L_40dc28
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
.size plist_del, . - plist_del
.align 4
#-----------------------------------
.globl plist_in
.type plist_in, @function
#-----------------------------------
plist_in:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbnz x0,.L_40dc70

            b .L_40dc84
.L_40dc68:

            ldr x0,[x0,#16]
            cbz x0,.L_40dc80
.L_40dc70:

            ldr x2,[x0]
            cmp x2,x1
            b.ne .L_40dc68

            mov w0,#1
.L_40dc80:

            ret 
.L_40dc84:

            mov w0,#0
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
            cbz x0,.L_40dcc8

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x20, .L_415438
            mov x19,x0
            add x20,x20, :lo12:.L_415438
.L_40dca8:

            ldp x1,x2,[x19]
            mov x0,x20
            bl printf

            ldr x19,[x19,#16]
            cbnz x19,.L_40dca8

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40dcc8:

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
            cbnz x0,.L_40dcdc

            b .L_40dcf0
.L_40dcd4:

            ldr x0,[x0,#16]
            cbz x0,.L_40dcec
.L_40dcdc:

            ldr x2,[x0]
            cmp x2,x1
            b.ne .L_40dcd4

            ldr x0,[x0,#8]
.L_40dcec:

            ret 
.L_40dcf0:

            mov x0,#0
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
.size plist_get, . - plist_get
.align 4
#-----------------------------------
.globl plist_pop
.type plist_pop, @function
#-----------------------------------
plist_pop:

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
            cbz x0,.L_40dda8

            stp x19,x20,[sp,#16]
.cfi_offset 20, -56
.cfi_offset 19, -64
            mov x23,x1
            stp x21,x22,[sp,#32]
.cfi_offset 22, -40
.cfi_offset 21, -48
            mov x22,x0
            ldr x19,[x0]
            str x25,[sp,#64]
.cfi_offset 25, -16
            cbz x19,.L_40ddbc
.L_40dd2c:

            ldp x20,x25,[x19]
            ldr x21,[x19,#16]
            mov w24,w20
            mov w0,w20
            bl so_closed

            cbnz w0,.L_40dd74

            mov x0,x19
            bl free

            str x21,[x22]
            cbz x23,.L_40dd58

            str x25,[x23]
.L_40dd58:

            ldr x25,[sp,#64]
.cfi_remember_state 
.cfi_restore 25
            mov w0,w24
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.L_40dd74:

.cfi_restore_state 
            mov w0,w20
            bl close

            ldr x0,[x19,#8]
            cbz x0,.L_40dd88

            bl free
.L_40dd88:

            mov x0,x19
            mov x19,x21
            bl free

            cbnz x21,.L_40dd2c

            ldr x25,[sp,#64]
.cfi_restore 25
            str xzr,[x22]
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.L_40dda8:

.cfi_restore 22
.cfi_restore 21
            mov w24,#0
.L_40ddac:

            mov w0,w24
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#80
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 24
.cfi_def_cfa_offset 0
            ret 
.L_40ddbc:

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
            ldr x25,[sp,#64]
.cfi_restore 25
            mov w24,#0
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            b .L_40ddac
.cfi_endproc 
.size plist_pop, . - plist_pop
.align 4
#-----------------------------------
.globl plist_count
.type plist_count, @function
#-----------------------------------
plist_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,x0
            mov w0,#0
            cbz x1,.L_40ddec

            nop
            nop
            nop
            nop
.L_40dde0:

            ldr x1,[x1,#16]
            add w0,w0,#1
            cbnz x1,.L_40dde0
.L_40ddec:

            ret 
.cfi_endproc 
.size plist_count, . - plist_count
.align 4
#-----------------------------------
.globl plist_free
.type plist_free, @function
#-----------------------------------
plist_free:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40de34

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
.L_40de04:

            mov x20,x19
            ldr x19,[x19,#16]
            ldr x0,[x20,#8]
            cbz x0,.L_40de18

            bl free
.L_40de18:

            mov x0,x20
            bl free

            cbnz x19,.L_40de04

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40de34:

            mov x0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size plist_free, . - plist_free
.align 4
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
            cmp x1,#0
            ccmp x2,#0,#4,ne
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x22,x0
            b.ne .L_40de78
.L_40de60:

            mov x19,x22
.L_40de64:

            mov x0,x19
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
.L_40de78:

.cfi_restore_state 
            mov x21,x1
            mov x20,x2
            mov x0,#32
            stp x23,x24,[sp,#48]
.cfi_offset 24, -8
.cfi_offset 23, -16
            mov w24,w3
            mov w23,w4
            bl malloc

            mov x19,x0
            cmp w24,#1
            b.eq .L_40ded8
.L_40dea0:

            str x21,[x19]
            cmp w23,#1
            b.eq .L_40dee8
.L_40deac:

            str x20,[x19,#8]
            str wzr,[x19,#16]
            str xzr,[x19,#24]
            cbz x22,.L_40def8

            mov x1,x22
.L_40dec0:

            mov x0,x1
            ldr x1,[x1,#24]
            cbnz x1,.L_40dec0

            str x19,[x0,#24]
            ldp x23,x24,[sp,#48]
.cfi_remember_state 
.cfi_restore 24
.cfi_restore 23
            b .L_40de60
.L_40ded8:

.cfi_restore_state 
            mov x0,x21
            bl strdup

            mov x21,x0
            b .L_40dea0
.L_40dee8:

            mov x0,x20
            bl strdup

            mov x20,x0
            b .L_40deac
.L_40def8:

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_40de64
.cfi_endproc 
.size hlist_add, . - hlist_add
.align 4
#-----------------------------------
.globl hlist_dup
.type hlist_dup, @function
#-----------------------------------
hlist_dup:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            str x23,[sp,#48]
.cfi_offset 23, -16
            cbz x0,.L_40dfa0

            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x0
            mov x23,#0
            stp x21,x22,[sp,#32]
.L_40df20:

.cfi_offset 22, -24
.cfi_offset 21, -32
            ldp x22,x21,[x19]
            cmp x22,#0
            ccmp x21,#0,#4,ne
            b.eq .L_40df78

            mov x0,#32
            bl malloc

            mov x20,x0
            mov x0,x22
            bl strdup

            mov x1,x0
            mov x0,x21
            str x1,[x20]
            bl strdup

            str x0,[x20,#8]
            str wzr,[x20,#16]
            str xzr,[x20,#24]
            cbz x23,.L_40df98

            mov x1,x23
.L_40df68:

            mov x2,x1
            ldr x1,[x1,#24]
            cbnz x1,.L_40df68

            str x20,[x2,#24]
.L_40df78:

            ldr x19,[x19,#24]
            cbnz x19,.L_40df20

            mov x0,x23
            ldr x23,[sp,#48]
            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_def_cfa_offset 0
            ret 
.L_40df98:

.cfi_restore_state 
            mov x23,x20
            b .L_40df78
.L_40dfa0:

.cfi_restore 19
.cfi_restore 20
.cfi_restore 21
.cfi_restore 22
            mov x23,#0
            mov x0,x23
            ldr x23,[sp,#48]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
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
.size hlist_dup, . - hlist_dup
.align 4
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
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            cbz x0,.L_40e05c

            mov x21,x1
            mov x22,#0
            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x0
            str x23,[sp,#48]
.cfi_offset 23, -16
            mov x23,x0
            b .L_40dffc
.L_40dfec:

            ldr x2,[x19,#24]
            mov x22,x19
            mov x19,x2
            cbz x2,.L_40e034
.L_40dffc:

            ldr x20,[x19]
            mov x1,x21
            mov x0,x20
            bl strcasecmp

            cbnz w0,.L_40dfec

            ldr x21,[x19,#24]
            mov x0,x20
            bl free

            ldr x0,[x19,#8]
            bl free

            mov x0,x19
            bl free

            cbz x22,.L_40e050

            str x21,[x22,#24]
.L_40e034:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            mov x21,x23
            ldr x23,[sp,#48]
.L_40e040:

.cfi_restore 23
            mov x0,x21
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_40e050:

.cfi_def_cfa_offset 64
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
.cfi_offset 29, -64
.cfi_offset 30, -56
            ldr x23,[sp,#48]
.cfi_restore 23
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            b .L_40e040
.L_40e05c:

            mov x21,#0
            b .L_40e040
.cfi_endproc 
.size hlist_del, . - hlist_del
.align 2
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov x20,x1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x21,x0
            mov x22,x2
            str x23,[sp,#48]
.cfi_offset 23, -16
            mov w23,w3
            cbz x0,.L_40e0d8

            mov x19,x0
            b .L_40e09c
.L_40e094:

            ldr x19,[x19,#24]
            cbz x19,.L_40e0d8
.L_40e09c:

            ldr x0,[x19]
            mov x1,x20
            bl strcasecmp

            cbnz w0,.L_40e094

            ldr x0,[x19,#8]
            bl free

            mov x0,x22
            bl strdup

            str x0,[x19,#8]
.L_40e0c0:

            ldr x23,[sp,#48]
            mov x0,x21
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e0d8:

.cfi_restore_state 
            cbz w23,.L_40e0c0

            ldr x23,[sp,#48]
            mov x2,x22
            mov x1,x20
            mov x0,x21
            ldp x19,x20,[sp,#16]
            mov w4,#1
            ldp x21,x22,[sp,#32]
            mov w3,w4
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b hlist_add
.cfi_endproc 
.size hlist_mod, . - hlist_mod
.align 2
#-----------------------------------
.globl hlist_in
.type hlist_in, @function
#-----------------------------------
hlist_in:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40e158

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
            mov x20,x1
            b .L_40e128
.L_40e120:

            ldr x19,[x19,#24]
            cbz x19,.L_40e148
.L_40e128:

            ldr x0,[x19]
            mov x1,x20
            bl strcasecmp

            cbnz w0,.L_40e120

            ldp x19,x20,[sp,#16]
            mov w0,#1
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e148:

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
.L_40e158:

            mov w0,#0
            ret 
.cfi_endproc 
.size hlist_in, . - hlist_in
.align 4
#-----------------------------------
.globl hlist_count
.type hlist_count, @function
#-----------------------------------
hlist_count:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,x0
            mov w0,#0
            cbz x1,.L_40e178
.L_40e16c:

            ldr x1,[x1,#24]
            add w0,w0,#1
            cbnz x1,.L_40e16c
.L_40e178:

            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size hlist_count, . - hlist_count
.align 4
#-----------------------------------
.globl hlist_get
.type hlist_get, @function
#-----------------------------------
hlist_get:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40e1d4

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
            mov x20,x1
            b .L_40e1a4
.L_40e19c:

            ldr x19,[x19,#24]
            cbz x19,.L_40e1c4
.L_40e1a4:

            ldr x0,[x19]
            mov x1,x20
            bl strcasecmp

            cbnz w0,.L_40e19c

            ldr x0,[x19,#8]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e1c4:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e1d4:

            mov x0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size hlist_get, . - hlist_get
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
            cbz x0,.L_40e234

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
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
.L_40e200:

            mov x20,x19
            ldr x19,[x19,#24]
            ldr x0,[x20]
            bl free

            ldr x0,[x20,#8]
            bl free

            mov x0,x20
            bl free

            cbnz x19,.L_40e200

            ldp x19,x20,[sp,#16]
            mov x0,#0
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e234:

            mov x0,#0
            ret 
.cfi_endproc 

            nop
            nop
            nop
            nop
.size hlist_free, . - hlist_free
.align 4
#-----------------------------------
.globl hlist_dump
.type hlist_dump, @function
#-----------------------------------
hlist_dump:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cbz x0,.L_40e280

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            adrp x20, .L_415458
            mov x19,x0
            add x20,x20, :lo12:.L_415458
            nop
            nop
            nop
            nop
.L_40e260:

            ldp x1,x2,[x19]
            mov x0,x20
            bl printf

            ldr x19,[x19,#24]
            cbnz x19,.L_40e260

            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e280:

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
            stp x19,x20,[sp,#16]
            str x21,[sp,#32]
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
            cbz x0,.L_40e35c

            mov w20,w1
            tbnz w1,#31,.L_40e33c

            mov w19,w2
            tbnz w2,#31,.L_40e31c

            mov x21,x0
            bl strlen

            cmp w19,#0
            sub w3,w0,w20
            csel w19,w19,w0,ne
            cmp w3,w19
            csel w3,w3,w19,le
            cmp w3,#0
            b.le .L_40e304

            add w3,w3,#1
            mov x0,#1
            sxtw x19,w3
            mov x1,x19
            bl calloc

            add x1,x21,w20, sxtw
            mov x2,x19
            mov x19,x0
            bl strlcpy

            ldr x21,[sp,#32]
            mov x0,x19
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
.L_40e304:

.cfi_restore_state 
            ldr x21,[sp,#32]
            mov x1,#1
            ldp x19,x20,[sp,#16]
            mov x0,x1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            b calloc
.L_40e31c:

.cfi_restore_state 
            adrp x3, __PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_415498
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_415498
            mov w2,#504
            bl __assert_fail
.L_40e33c:

            adrp x3, __PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_415488
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_415488
            mov w2,#503
            bl __assert_fail
.L_40e35c:

            adrp x3, __PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_415478
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_415478
            mov w2,#502
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
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
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov x0,#104
            mov fp,sp
            bl malloc

            adrp x1, .L_4158e0
            movi d30,#-4294967296
            movi v31.4s,#0
            add x2,x0,#40
            ldr q29,[x1,:lo12:.L_4158e0]
            ldp fp,lr,[sp],#16
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            str wzr,[x0]
            str xzr,[x0,#8]
            str q29,[x0,#16]
            str d30,[x0,#32]
            stp q31,q31,[x2]
            stp q31,q31,[x2,#32]
            ret 
.cfi_endproc 
.size new_rr_data, . - new_rr_data
.align 2
#-----------------------------------
.globl reset_rr_data
.type reset_rr_data, @function
#-----------------------------------
reset_rr_data:

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
.cfi_offset 20, -24
.cfi_offset 19, -32
            cbz x0,.L_40e4a0

            mov x19,x0
            adrp x0, .L_4158e0
            movi d31,#-4294967296
            ldr q30,[x0,:lo12:.L_4158e0]
            str wzr,[x19]
            ldr x20,[x19,#8]
            str d31,[x19,#32]
            str q30,[x19,#16]
            cbz x20,.L_40e428

            str x21,[sp,#32]
.cfi_offset 21, -16
            nop
            nop
            nop
            nop
.L_40e400:

            mov x21,x20
            ldr x20,[x20,#24]
            ldr x0,[x21]
            bl free

            ldr x0,[x21,#8]
            bl free

            mov x0,x21
            bl free

            cbnz x20,.L_40e400

            ldr x21,[sp,#32]
.L_40e428:

.cfi_restore 21
            ldr x0,[x19,#40]
            cbz x0,.L_40e434

            bl free
.L_40e434:

            ldr x0,[x19,#48]
            cbz x0,.L_40e440

            bl free
.L_40e440:

            ldr x0,[x19,#56]
            cbz x0,.L_40e44c

            bl free
.L_40e44c:

            ldr x0,[x19,#64]
            cbz x0,.L_40e458

            bl free
.L_40e458:

            ldr x0,[x19,#72]
            cbz x0,.L_40e464

            bl free
.L_40e464:

            ldr x0,[x19,#80]
            cbz x0,.L_40e470

            bl free
.L_40e470:

            ldr x0,[x19,#88]
            cbz x0,.L_40e47c

            bl free
.L_40e47c:

            movi v31.4s,#0
            add x1,x19,#40
            str xzr,[x19,#8]
            mov x0,x19
            stp q31,q31,[x1]
            stp q31,q31,[x1,#32]
            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40e4a0:

.cfi_restore_state 
            adrp x1, stderr
            mov x2,#54
            adrp x0, .L_4154a8
            add x0,x0, :lo12:.L_4154a8
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl fwrite

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_411e10
            add x3,x3,#8
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_411e10
            mov w2,#614
            bl __assert_fail
.cfi_endproc 
.size reset_rr_data, . - reset_rr_data
.align 2
#-----------------------------------
.globl copy_rr_data
.type copy_rr_data, @function
#-----------------------------------
copy_rr_data:

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
.cfi_offset 20, -24
.cfi_offset 19, -32
            cbz x0,.L_40e62c

            mov x19,x1
            cbz x1,.L_40e5e8

            mov x20,x0
            bl reset_rr_data

            ldr w0,[x19]
            str w0,[x20]
            ldr x0,[x19,#8]
            ldr q31,[x19,#16]
            str q31,[x20,#16]
            ldr d31,[x19,#32]
            str d31,[x20,#32]
            cbz x0,.L_40e52c

            bl hlist_dup

            str x0,[x20,#8]
.L_40e52c:

            ldr x0,[x19,#40]
            cbz x0,.L_40e53c

            bl strdup

            str x0,[x20,#40]
.L_40e53c:

            ldr x0,[x19,#48]
            cbz x0,.L_40e54c

            bl strdup

            str x0,[x20,#48]
.L_40e54c:

            ldr x0,[x19,#56]
            cbz x0,.L_40e55c

            bl strdup

            str x0,[x20,#56]
.L_40e55c:

            ldr x0,[x19,#64]
            cbz x0,.L_40e56c

            bl strdup

            str x0,[x20,#64]
.L_40e56c:

            ldr x0,[x19,#72]
            cbz x0,.L_40e57c

            bl strdup

            str x0,[x20,#72]
.L_40e57c:

            ldr x0,[x19,#80]
            cbz x0,.L_40e58c

            bl strdup

            str x0,[x20,#80]
.L_40e58c:

            ldr x0,[x19,#88]
            cbz x0,.L_40e5a0

            ldr w2,[x19,#24]
            cmp w2,#0
            b.gt .L_40e5b0
.L_40e5a0:

            mov x0,x20
            ldp x19,x20,[sp,#16]
.cfi_remember_state 
.cfi_restore 20
.cfi_restore 19
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40e5b0:

.cfi_restore_state 
            str x21,[sp,#32]
.cfi_offset 21, -16
            sxtw x21,w2
            mov x1,x21
            mov x0,#1
            bl calloc

            str x0,[x20,#88]
            mov x2,x21
            ldr x1,[x19,#88]
            bl memcpy

            ldr x21,[sp,#32]
.cfi_restore 21
            mov x0,x20
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40e5e8:

.cfi_def_cfa_offset 48
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, stderr
            mov x2,#52
            adrp x0, .L_415518
            add x0,x0, :lo12:.L_415518
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            str x21,[sp,#32]
.cfi_remember_state 
.cfi_offset 21, -16
            bl fwrite

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_411e10
            add x3,x3,#24
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_411e10
            mov w2,#557
            bl __assert_fail
.L_40e62c:

.cfi_restore_state 
            adrp x1, stderr
            mov x2,#52
            adrp x0, .L_4154e0
            add x0,x0, :lo12:.L_4154e0
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl fwrite

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_411e10
            add x3,x3,#24
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_411e10
            mov w2,#552
            bl __assert_fail
.cfi_endproc 
.size copy_rr_data, . - copy_rr_data
.align 4
#-----------------------------------
.globl dup_rr_data
.type dup_rr_data, @function
#-----------------------------------
dup_rr_data:

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
            cbz x0,.L_40e698

            mov x19,x0
            bl new_rr_data

            mov x1,x19
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            b copy_rr_data
.L_40e698:

.cfi_restore_state 
            adrp x1, stderr
            mov x2,#52
            adrp x0, .L_415550
            add x0,x0, :lo12:.L_415550
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            bl fwrite

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_411e10
            add x3,x3,#40
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_411e10
            mov w2,#600
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size dup_rr_data, . - dup_rr_data
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
            cbz x0,.L_40e79c

            str x21,[sp,#32]
.cfi_offset 21, -16
            ldr x21,[x0]
            cbz x21,.L_40e790

            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            ldr x19,[x21,#8]
            cbz x19,.L_40e728
.L_40e704:

            mov x20,x19
            ldr x19,[x19,#24]
            ldr x0,[x20]
            bl free

            ldr x0,[x20,#8]
            bl free

            mov x0,x20
            bl free

            cbnz x19,.L_40e704
.L_40e728:

            ldr x0,[x21,#40]
            cbz x0,.L_40e734

            bl free
.L_40e734:

            ldr x0,[x21,#48]
            cbz x0,.L_40e740

            bl free
.L_40e740:

            ldr x0,[x21,#56]
            cbz x0,.L_40e74c

            bl free
.L_40e74c:

            ldr x0,[x21,#64]
            cbz x0,.L_40e758

            bl free
.L_40e758:

            ldr x0,[x21,#72]
            cbz x0,.L_40e764

            bl free
.L_40e764:

            ldr x0,[x21,#80]
            cbz x0,.L_40e770

            bl free
.L_40e770:

            ldr x0,[x21,#88]
            cbz x0,.L_40e77c

            bl free
.L_40e77c:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            mov x0,x21
            ldr x21,[sp,#32]
.cfi_restore 21
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            b free
.L_40e790:

.cfi_def_cfa_offset 48
.cfi_offset 21, -16
.cfi_offset 29, -48
.cfi_offset 30, -40
            ldr x21,[sp,#32]
.cfi_restore 21
            ldp fp,lr,[sp],#48
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40e79c:

.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, stderr
            mov x2,#54
            adrp x0, .L_415588
            add x0,x0, :lo12:.L_415588
            ldr x3,[x1,:lo12:stderr]
            mov x1,#1
            stp x19,x20,[sp,#16]
.cfi_offset 20, -24
.cfi_offset 19, -32
            str x21,[sp,#32]
.cfi_offset 21, -16
            bl fwrite

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_411e10
            add x3,x3,#56
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_411e10
            mov w2,#655
            bl __assert_fail
.cfi_endproc 
.size free_rr_data, . - free_rr_data
.align 2
#-----------------------------------
.globl trimr
.type trimr, @function
#-----------------------------------
trimr:

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
            cbz x0,.L_40e868

            mov x20,x0
            bl strlen

            subs w19,w0,#1
            b.mi .L_40e860

            bl __ctype_b_loc

            ldr x0,[x0]
            mov w1,w19
            b .L_40e820
.L_40e814:

            sub x1,x1,#1
            cmn w1,#1
            b.eq .L_40e844
.L_40e820:

            ldrb w2,[x20,x1]
            ldrh w2,[x0,x2,lsl #1]
            tbnz w2,#13,.L_40e814
.L_40e82c:

            add x1,x20,x1
            mov x0,x20
            strb wzr,[x1,#1]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e844:

.cfi_restore_state 
            mov x1,#-1
            add x1,x20,x1
            mov x0,x20
            strb wzr,[x1,#1]
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e860:

.cfi_restore_state 
            sxtw x1,w19
            b .L_40e82c
.L_40e868:

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155c0
            add x3,x3,#72
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155c0
            mov w2,#681
            bl __assert_fail
.cfi_endproc 
.size trimr, . - trimr
.align 2
#-----------------------------------
.globl zmalloc
.type zmalloc, @function
#-----------------------------------
zmalloc:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x1,x0
            mov x0,#1
            b calloc
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
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
            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            cbz x0,.L_40e8f4

            mov x20,x0
            mov x19,#0
            b .L_40e8d4
.L_40e8bc:

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldrb w1,[x20,x19]
            ldr w0,[x0,x1,lsl #2]
            strb w0,[x20,x19]
            add x19,x19,#1
.L_40e8d4:

            mov x0,x20
            bl strlen

            cmp x19,x0
            b.lo .L_40e8bc

            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40e8f4:

.cfi_restore_state 
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155d0
            add x3,x3,#80
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155d0
            mov w2,#792
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size lowercase, . - lowercase
.align 4
#-----------------------------------
.globl hlist_subcmp
.type hlist_subcmp, @function
#-----------------------------------
hlist_subcmp:

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
            mov x0,x2
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov x21,x1
            bl strdup

            mov x22,x0
            bl lowercase

            cbnz x19,.L_40e958

            b .L_40e9b8
.L_40e950:

            ldr x19,[x19,#24]
            cbz x19,.L_40e9b8
.L_40e958:

            ldr x0,[x19]
            mov x1,x21
            bl strcasecmp

            mov w20,w0
            cbnz w0,.L_40e950

            ldr x0,[x19,#8]
            cbz x0,.L_40e99c

            bl strdup

            mov x19,x0
            bl lowercase

            mov x1,x22
            mov x0,x19
            bl strstr

            cmp x0,#0
            cset w20,ne
            mov x0,x19
            bl free
.L_40e99c:

            mov x0,x22
            bl free

            mov w0,w20
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
.L_40e9b8:

.cfi_restore_state 
            mov x0,x22
            mov w20,#0
            bl free

            mov w0,w20
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

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
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
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
            str x23,[sp,#48]
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
            cbz x1,.L_40ea90

            mov x19,x0
            mov x0,x2
            cbz x2,.L_40eab4

            mov x21,x1
            mov w22,#0
            bl strdup

            mov x23,x0
            bl lowercase

            cbnz x19,.L_40ea28

            b .L_40ea70
.L_40ea20:

            ldr x19,[x19,#24]
            cbz x19,.L_40ea70
.L_40ea28:

            ldr x0,[x19]
            mov x1,x21
            bl strcasecmp

            cbnz w0,.L_40ea20

            ldr x0,[x19,#8]
            bl strdup

            mov x20,x0
            bl lowercase

            mov x1,x23
            mov x0,x20
            bl strstr

            cmp x0,#0
            cset w1,ne
            mov x0,x20
            orr w22,w22,w1
            bl free

            ldr x19,[x19,#24]
            cbnz x19,.L_40ea28
.L_40ea70:

            mov x0,x23
            bl free

            ldr x23,[sp,#48]
            mov w0,w22
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40ea90:

.cfi_restore_state 
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155e0
            add x3,x3,#96
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155e0
            mov w2,#442
            bl __assert_fail
.L_40eab4:

            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155f0
            add x3,x3,#96
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155f0
            mov w2,#443
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size hlist_subcmp_all, . - hlist_subcmp_all
.align 4
#-----------------------------------
.globl uppercase
.type uppercase, @function
#-----------------------------------
uppercase:

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
            cbz x0,.L_40eb34

            mov x20,x0
            mov x19,#0
            b .L_40eb14
.L_40eafc:

            bl __ctype_toupper_loc

            ldr x0,[x0]
            ldrb w1,[x20,x19]
            ldr w0,[x0,x1,lsl #2]
            strb w0,[x20,x19]
            add x19,x19,#1
.L_40eb14:

            mov x0,x20
            bl strlen

            cmp x19,x0
            b.lo .L_40eafc

            mov x0,x20
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40eb34:

.cfi_restore_state 
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155d0
            add x3,x3,#120
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155d0
            mov w2,#806
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size uppercase, . - uppercase
.align 4
#-----------------------------------
.globl unicode
.type unicode, @function
#-----------------------------------
unicode:

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
            str x23,[sp,#48]
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
            mov x23,x0
            cbz x1,.L_40ebf4

            mov x0,x1
            stp x19,x20,[sp,#16]
.cfi_offset 20, -40
.cfi_offset 19, -48
            mov x19,x1
            bl strlen

            mov x22,x0
            mov x21,#64
            cmp x22,x21
            csel x21,x22,x21,ls
            mov x0,#1
            mov w20,w21
            lsl w21,w21,#1
            sxtw x1,w21
            bl calloc

            mov x1,x0
            cbz x22,.L_40ebd8

            mov x2,#0
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ebc0:

            ubfiz x3,x2,#1,#32
            ldrb w4,[x19,x2]
            add x2,x2,#1
            strb w4,[x1,x3]
            cmp w20,w2
            b.gt .L_40ebc0
.L_40ebd8:

            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            str x1,[x23]
            ldr x23,[sp,#48]
            mov w0,w21
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_def_cfa_offset 0
            ret 
.L_40ebf4:

.cfi_def_cfa_offset 64
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov x1,#0
            str x1,[x23]
            mov w21,#0
            mov w0,w21
            ldr x23,[sp,#48]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
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
.size unicode, . - unicode
.align 4
#-----------------------------------
.globl urlencode
.type urlencode, @function
#-----------------------------------
urlencode:

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
.cfi_offset 20, -72
.cfi_offset 19, -80
            stp x21,x22,[sp,#32]
.cfi_offset 22, -56
.cfi_offset 21, -64
            cbz x0,.L_40ed20

            mov x20,x0
            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            stp x27,x28,[sp,#80]
.cfi_offset 28, -8
.cfi_offset 27, -16
            bl strlen

            mov x25,x0
            mov x0,#1
            add x22,x25,x25, lsl #1
            add x22,x22,x0
            mov x1,x22
            bl calloc

            mov x27,x0
            cbz x25,.L_40ece4

            add x25,x20,x25
            stp x23,x24,[sp,#48]
.cfi_offset 24, -40
.cfi_offset 23, -48
            bl __ctype_b_loc

            mov x28,x0
            mov x21,#0
            mov w23,#126
            nop
            nop
            nop
            nop
.L_40ec80:

            ldrb w26,[x20]
            add x24,x27,x21
            ldr x2,[x28]
            mov x19,x26
            ubfiz x1,x26,#1,#8
            ldrh w1,[x2,x1]
            tbnz w1,#11,.L_40eccc

            bl __ctype_tolower_loc

            ldr x0,[x0]
            ldr w1,[x0,x26,lsl #2]
            sub w1,w1,#97
            cmp w1,#25
            b.ls .L_40eccc

            sub w1,w26,#45
            cmp w26,#95
            and w1,w1,#255
            ccmp w1,#1,#0,ne
            ccmp w26,w23,#4,hi
            b.ne .L_40ed00
.L_40eccc:

            add x21,x21,#1
            strb w19,[x24]
.L_40ecd4:

            add x20,x20,#1
            cmp x25,x20
            b.ne .L_40ec80

            ldp x23,x24,[sp,#48]
.L_40ece4:

.cfi_restore 24
.cfi_restore 23
            mov x0,x27
            ldp x19,x20,[sp,#16]
.cfi_restore 20
.cfi_restore 19
            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x25,x26,[sp,#64]
.cfi_restore 26
.cfi_restore 25
            ldp x27,x28,[sp,#80]
.cfi_restore 28
.cfi_restore 27
            ldp fp,lr,[sp],#96
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ret 
.L_40ed00:

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
            sub x1,x22,x21
            mov w3,w26
            mov x0,x24
            adrp x2, .L_415600
            add x21,x21,#3
            add x2,x2, :lo12:.L_415600
            bl snprintf

            b .L_40ecd4
.L_40ed20:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
.cfi_restore 26
.cfi_restore 27
.cfi_restore 28
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            adrp x1, .L_415468
            adrp x0, .L_4155d0
            add x3,x3,#136
            add x1,x1, :lo12:.L_415468
            add x0,x0, :lo12:.L_4155d0
            mov w2,#838
            stp x23,x24,[sp,#48]
.cfi_offset 24, -40
.cfi_offset 23, -48
            stp x25,x26,[sp,#64]
.cfi_offset 26, -24
.cfi_offset 25, -32
            stp x27,x28,[sp,#80]
.cfi_offset 28, -8
.cfi_offset 27, -16
            bl __assert_fail
.cfi_endproc 
.size urlencode, . - urlencode
.align 4
#-----------------------------------
.globl printmem
.type printmem, @function
#-----------------------------------
printmem:

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
            lsl x20,x1,#1
            mov x19,x0
            mov x0,#1
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov x21,x1
            mov w22,w2
            add x1,x20,x0
            bl calloc

            cbz x21,.L_40edd0

            mov w6,#7
            adrp x3, __PRETTY_FUNCTION__.8
            sub w6,w6,w22
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            mov x4,x19
            add x7,x20,x0
            and w6,w6,#255
            add x3,x3,#160
            mov x2,x0
.L_40eda4:

            ldrb w1,[x4],#1
            add x2,x2,#2
            eor w1,w1,w6
            and w5,w1,#15
            lsr w1,w1,#4
            ldrb w5,[x3,w5,sxtw]
            ldrb w1,[x3,w1,sxtw]
            sturb w1,[x2,#-2]
            sturb w5,[x2,#-1]
            cmp x7,x2
            b.ne .L_40eda4
.L_40edd0:

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
.size printmem, . - printmem
.align 4
#-----------------------------------
.globl scanmem
.type scanmem, @function
#-----------------------------------
scanmem:

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
            stp x21,x22,[sp,#32]
.cfi_offset 21, -16
.cfi_offset 22, -8
            mov w22,w1
            bl strlen

            tbnz w0,#0,.L_40ee6c

            lsr x21,x0,#1
            and x20,x0,#1
            mov x0,#1
            add x1,x21,x0
            bl calloc

            cbz x21,.L_40ee98

            adrp x5, __PRETTY_FUNCTION__.8
            add x5,x5, :lo12:__PRETTY_FUNCTION__.8
            mov w6,#7
            mov x3,x19
            add x5,x5,#192
            sub w6,w6,w22
            b .L_40ee4c
.L_40ee34:

            add w2,w4,w2, lsl #4
            eor w2,w2,w6
            strb w2,[x0,x20]
            add x20,x20,#1
            cmp x21,x20
            b.eq .L_40ee80
.L_40ee4c:

            ldrb w1,[x3,#1]
            add x3,x3,#2
            ldurb w2,[x3,#-2]
            ldr w4,[x5,w1,sxtw #2]
            ldr w2,[x5,w2,sxtw #2]
            orr w1,w2,w4
            tbz w1,#31,.L_40ee34

            bl free
.L_40ee6c:

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
            ret 
.L_40ee80:

.cfi_restore_state 
            add x21,x0,x21
            strb wzr,[x21]
.L_40ee88:

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
.L_40ee98:

.cfi_restore_state 
            mov x21,x0
            strb wzr,[x21]
            b .L_40ee88
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
            cbz x1,.L_40eecc

            add x2,x0,x1
            b .L_40eeb8
.L_40eeb0:

            cmp x0,x2
            b.eq .L_40eecc
.L_40eeb8:

            ldrb w1,[x0]
            add x0,x0,#1
            cbz w1,.L_40eeb0

            mov w0,#0
            ret 
.L_40eecc:

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
            nop
            nop
            nop
            nop
.size is_memory_all_zero, . - is_memory_all_zero
.align 4
#-----------------------------------
.globl to_base64
.type to_base64, @function
#-----------------------------------
to_base64:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            cmp x2,#2
            ccmp x3,#10,#0,hi
            b.ls .L_40ef6c

            adrp x4, __PRETTY_FUNCTION__.8
            add x4,x4, :lo12:__PRETTY_FUNCTION__.8
            add x4,x4,#704
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.L_40ef00:

            ldrb w5,[x1]
            add x0,x0,#4
            sub x2,x2,#3
            sub x3,x3,#4
            cmp x2,#2
            add x1,x1,#3
            lsr w5,w5,#2
            ccmp x3,#10,#0,hi
            ldrb w5,[x4,w5,sxtw]
            sturb w5,[x0,#-4]
            ldurb w6,[x1,#-3]
            ldurb w5,[x1,#-2]
            ubfiz w6,w6,#4,#2
            orr w5,w6,w5, lsr #4
            ldrb w5,[x4,w5,sxtw]
            sturb w5,[x0,#-3]
            ldurb w6,[x1,#-2]
            ldurb w5,[x1,#-1]
            ubfiz w6,w6,#2,#4
            orr w5,w6,w5, lsr #6
            ldrb w5,[x4,w5,sxtw]
            sturb w5,[x0,#-2]
            ldurb w5,[x1,#-1]
            and w5,w5,#63
            ldrb w5,[x4,w5,sxtw]
            sturb w5,[x0,#-1]
            b.hi .L_40ef00
.L_40ef6c:

            cmp x2,#0
            ccmp x3,#4,#0,ne
            b.ls .L_40efd0

            ldrb w4,[x1]
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            add x3,x3,#704
            lsr w4,w4,#2
            ldrb w4,[x3,w4,sxtw]
            strb w4,[x0]
            ldrb w4,[x1]
            ubfiz w4,w4,#4,#2
            cmp x2,#1
            b.eq .L_40efd8

            ldrb w2,[x1,#1]
            orr w2,w4,w2, lsr #4
            ldrb w2,[x3,w2,sxtw]
            strb w2,[x0,#1]
            ldrb w1,[x1,#1]
            ubfiz w1,w1,#2,#4
            ldrb w2,[x3,w1,sxtw]
.L_40efc0:

            mov w1,#61
            add x0,x0,#4
            sturb w2,[x0,#-2]
            sturb w1,[x0,#-1]
.L_40efd0:

            strb wzr,[x0]
            ret 
.L_40efd8:

            ldrb w1,[x3,w4,sxtw]
            mov w2,#61
            strb w1,[x0,#1]
            b .L_40efc0
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
            adrp x3, __PRETTY_FUNCTION__.8
            add x3,x3, :lo12:__PRETTY_FUNCTION__.8
            mov x6,x0
            add x3,x3,#768
            mov w8,#0
.L_40effc:

            ldrb w2,[x1]
            tbnz w2,#7,.L_40f0d8

            ldr w0,[x3,x2,lsl #2]
            cmn w0,#1
            b.eq .L_40f0c0

            ldrb w2,[x1,#1]
            tbnz w2,#7,.L_40f0d8

            ldr w5,[x3,x2,lsl #2]
            cmn w5,#1
            b.eq .L_40f0d8

            ldrb w2,[x1,#2]
            tbnz w2,#7,.L_40f0d8

            cmp w2,#61
            b.eq .L_40f044

            mov w4,w2
            ldr w4,[x3,x4,lsl #2]
            cmn w4,#1
            b.eq .L_40f0d8
.L_40f044:

            ldrb w4,[x1,#3]
            tbnz w4,#7,.L_40f0d8

            cmp w4,#61
            b.eq .L_40f064

            mov w7,w4
            ldr w7,[x3,x7,lsl #2]
            cmn w7,#1
            b.eq .L_40f0e0
.L_40f064:

            asr w7,w5,#4
            add x1,x1,#4
            orr w0,w7,w0, lsl #2
            strb w0,[x6]
            cmp w2,#61
            b.eq .L_40f0c4

            ldr w0,[x3,x2,lsl #2]
            asr w2,w0,#2
            orr w5,w2,w5, lsl #4
            strb w5,[x6,#1]
            cmp w4,#61
            b.eq .L_40f0d0

            mov w2,w4
            add w8,w8,#3
            add x6,x6,#3
            ldr w2,[x3,x2,lsl #2]
            orr w0,w2,w0, lsl #6
            sturb w0,[x6,#-1]
.L_40f0ac:

            ldrb w0,[x1]
            cmp w4,#61
            ccmp w0,#0,#4,ne
            b.ne .L_40effc

            mov w0,w8
.L_40f0c0:

            ret 
.L_40f0c4:

            add x6,x6,#1
            add w8,w8,#1
            b .L_40f0ac
.L_40f0d0:

            add w0,w8,#2
            ret 
.L_40f0d8:

            mov w0,#-1
            ret 
.L_40f0e0:

            mov w0,w7
            ret 
.cfi_endproc 
.size from_base64, . - from_base64
.align 3
#-----------------------------------
.globl getrandom64
.type getrandom64, @function
#-----------------------------------
getrandom64:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            adrp x1, .L_415608
            adrp x0, .L_415610
            mov fp,sp
            add x1,x1, :lo12:.L_415608
            add x0,x0, :lo12:.L_415610
            str x19,[sp,#16]
.cfi_offset 19, -32
            str xzr,[sp,#40]
            bl fopen

            cbz x0,.L_40f198

            mov x19,x0
            mov x3,x0
            mov x2,#1
            add x0,sp,#40
            mov x1,#8
            bl fread

            cmp x0,#1
            b.eq .L_40f180

            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbnz w0,.L_40f160
.L_40f13c:

            mov x0,x19
            bl fclose
.L_40f144:

            bl random

            mov x19,x0
            bl random

            orr x0,x0,x19, lsl #32
            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_40f160:

.cfi_restore_state 
            bl __errno_location

            ldr w0,[x0]
            bl strerror

            mov x1,x0
            adrp x0, .L_415620
            add x0,x0, :lo12:.L_415620
            bl printf

            b .L_40f13c
.L_40f180:

            mov x0,x19
            bl fclose

            ldr x19,[sp,#16]
            ldr x0,[sp,#40]
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.L_40f198:

.cfi_restore_state 
            adrp x0, debug
            ldr w0,[x0,:lo12:debug]
            cbz w0,.L_40f144

            adrp x0, .L_415648
            add x0,x0, :lo12:.L_415648
            bl puts

            b .L_40f144
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
.size getrandom64, . - getrandom64
.align 4
#-----------------------------------
.globl write_wrapper
.type write_wrapper, @function
#-----------------------------------
write_wrapper:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            cmp x1,#0
            ccmp x2,#0,#4,ne
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov x19,#0
            b.ne .L_40f1ec
.L_40f1dc:

            mov x0,x19
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40f1ec:

.cfi_restore_state 
            stp x21,x22,[sp,#32]
.cfi_offset 22, -24
.cfi_offset 21, -32
            mov x21,x2
            mov x22,#0
            stp x23,x24,[sp,#48]
.cfi_offset 24, -8
.cfi_offset 23, -16
            mov x23,x1
            mov w24,w0
            mov x20,#0
.L_40f208:

            sub x2,x21,x20
            add x1,x23,x20
            mov w0,w24
            add x22,x22,#1
            bl write

            mov x19,x0
            tbnz x0,#63,.L_40f278

            add x20,x20,x0
            cmp x22,#50
            ccmp x21,x20,#0,ne
            b.hi .L_40f208

            cmp x21,x20
            b.hi .L_40f258
.L_40f23c:

            mov x19,x20
            mov x0,x19
            ldp x21,x22,[sp,#32]
.cfi_remember_state 
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            ldp x19,x20,[sp,#16]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.L_40f258:

.cfi_restore_state 
            mov x3,x21
            mov x2,x20
            adrp x1, .L_4156a0
            mov x4,#50
            add x1,x1, :lo12:.L_4156a0
            mov w0,#3
            bl syslog

            b .L_40f23c
.L_40f278:

            bl __errno_location

            ldr w20,[x0]
            mov w0,w20
            bl strerror

            mov w2,w20
            mov x3,x0
            adrp x1, .L_415678
            mov w0,#3
            add x1,x1, :lo12:.L_415678
            bl syslog

            ldp x21,x22,[sp,#32]
.cfi_restore 22
.cfi_restore 21
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_40f1dc
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
.size write_wrapper, . - write_wrapper
#-----------------------------------
.type des_key_schedule, @function
#-----------------------------------
des_key_schedule:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            adrp x4, leftkey_swap
            add x4,x4, :lo12:leftkey_swap
            mov fp,sp
            add x5,x4,#64
            stp x19,x20,[sp,#16]
            add x6,x4,#128
            add x12,x4,#144
            stp x21,x22,[sp,#32]
            mov w11,#28
            mov w10,#603979776
            stp x23,x24,[sp,#48]
.cfi_offset 19, -48
.cfi_offset 20, -40
.cfi_offset 21, -32
.cfi_offset 22, -24
.cfi_offset 23, -16
.cfi_offset 24, -8
            mov w9,#34078720
            mov w8,#2056
            ldp w2,w3,[x0]
            mov w7,#17
            rev w3,w3
            rev w2,w2
            eor w0,w2,w3, lsr #4
            and w0,w0,#252645135
            eor w2,w2,w0
            eor w0,w3,w0, lsl #4
            and x13,x2,#15
            eor w3,w2,w0
            and w3,w3,#269488144
            eor w0,w0,w3
            eor w2,w2,w3
            ldr w20,[x4,x13,lsl #2]
            ubfx x3,x2,#16,#4
            ubfx x13,x0,#9,#4
            ubfx x18,x2,#8,#4
            ubfx x23,x2,#24,#4
            ubfx x19,x0,#1,#4
            lsr w17,w0,#28
            ldr w3,[x4,x3,lsl #2]
            ubfx x22,x0,#25,#4
            ldr w13,[x5,x13,lsl #2]
            ubfx x16,x2,#5,#4
            ldr w21,[x4,x18,lsl #2]
            ubfx x18,x0,#17,#4
            ldr w23,[x4,x23,lsl #2]
            ubfx x15,x2,#13,#4
            ldr w19,[x5,x19,lsl #2]
            ubfx x14,x0,#4,#4
            lsl w3,w3,#1
            lsl w13,w13,#2
            orr w21,w3,w21, lsl #2
            orr w20,w23,w20, lsl #3
            ubfx x3,x2,#21,#4
            orr w19,w13,w19, lsl #3
            lsr w23,w2,#29
            ldr w13,[x5,x18,lsl #2]
            ubfx x18,x0,#20,#4
            ubfx x0,x0,#12,#4
            ldr w17,[x5,x17,lsl #2]
            ldr w22,[x5,x22,lsl #2]
            ldr w16,[x4,x16,lsl #2]
            ldr w15,[x4,x15,lsl #2]
            ldr w14,[x5,x14,lsl #2]
            ldr w2,[x4,x23,lsl #2]
            orr w16,w21,w16, lsl #7
            ldr w3,[x4,x3,lsl #2]
            orr w4,w22,w17, lsl #4
            ldr w18,[x5,x18,lsl #2]
            orr w15,w20,w15, lsl #6
            ldr w0,[x5,x0,lsl #2]
            orr w4,w4,w13, lsl #1
            orr w5,w19,w14, lsl #7
            orr w2,w16,w2, lsl #4
            orr w3,w15,w3, lsl #5
            orr w18,w5,w18, lsl #5
            orr w0,w4,w0, lsl #6
            orr w2,w2,w3
            orr w18,w18,w0
            and w2,w2,#268435455
            and w18,w18,#268435455
.L_40f3f0:

            ldrb w0,[x6],#1
            sub w3,w11,w0
            lsl w4,w2,w0
            lsr w2,w2,w3
            orr w2,w4,w2
            lsr w14,w18,w3
            and w16,w2,#2097152
            lsl w3,w2,#14
            and w13,w9,w2, lsl #18
            ubfiz w5,w2,#28,#1
            lsl w17,w2,#6
            and w4,w10,w2, lsl #4
            lsl w15,w2,#9
            and w3,w3,#134217728
            lsl w19,w2,#10
            lsl w20,w2,#15
            orr w3,w3,w13
            and w17,w17,#16777216
            orr w4,w4,w5
            and w15,w15,#2097152
            lsl w5,w2,#22
            lsl w13,w2,#17
            and w22,w20,#536870912
            orr w3,w3,w17
            orr w4,w4,w15
            and w17,w2,#67108864
            ubfiz w15,w2,#2,#28
            and w21,w2,#134217728
            lsl w0,w18,w0
            and w5,w5,#67108864
            orr w0,w0,w14
            and w18,w19,#262144
            ubfiz w14,w2,#1,#28
            and w19,w19,#134217728
            and w13,w13,#268435456
            orr w5,w5,w19
            orr w3,w3,w18
            orr w4,w4,w16, lsr #1
            and w15,w15,#131072
            lsl w23,w2,#11
            orr w13,w13,w22
            and w14,w14,#16777216
            lsl w19,w2,#16
            and w18,w0,#65536
            and w30,w0,#67108864
            orr w3,w3,w17, lsr #10
            orr w4,w4,w15
            orr w13,w13,w14
            lsl w22,w0,#6
            orr w21,w5,w21, lsr #2
            and w23,w23,#1048576
            and w5,w2,#16777216
            and w19,w19,#2097152
            ubfiz w16,w2,#3,#28
            and w17,w0,#2048
            orr w18,w3,w18, lsr #4
            orr w30,w4,w30, lsr #13
            and w3,w22,#2048
            orr w4,w13,w19
            ubfx x22,x0,#14,#14
            orr w21,w21,w23
            and w14,w2,#1048576
            and w15,w0,#1024
            and w16,w16,#524288
            orr w17,w18,w17, lsr #1
            ubfx x19,x0,#3,#25
            orr w30,w30,w3
            and w23,w22,#512
            orr w21,w21,w5, lsr #6
            and w20,w20,#131072
            orr w16,w4,w16
            and w18,w0,#16384
            lsl w3,w0,#8
            and w4,w0,#32768
            orr w16,w16,w20
            orr w15,w17,w15, lsr #5
            and w3,w3,#4096
            and w24,w19,#8
            and w13,w0,#134217728
            orr w30,w30,w23
            and w5,w0,#1048576
            orr w14,w21,w14, lsr #4
            and w17,w0,#524288
            orr w14,w14,w3
            orr w15,w15,w24
            orr w18,w30,w18, lsr #10
            orr w4,w16,w4, lsr #2
            and w22,w22,w8
            lsl w16,w0,#7
            and w3,w0,#4096
            orr w13,w15,w13, lsr #26
            orr w5,w18,w5, lsr #18
            and w15,w16,#256
            ubfx x18,x0,#24,#1
            orr w17,w14,w17, lsr #9
            and w20,w0,#256
            orr w4,w4,w22
            orr w13,w13,w20
            orr w5,w5,w18
            orr w4,w4,w15
            and w14,w19,w7
            orr w3,w17,w3, lsr #7
            ubfiz w16,w0,#2,#1
            and w15,w0,#4194304
            orr w5,w5,w13
            orr w3,w3,w16
            and w13,w0,#512
            orr w4,w4,w14
            orr w3,w3,w13
            orr w4,w4,w15, lsr #21
            and w2,w2,#268435455
            orr w3,w3,w4
            stp w5,w3,[x1],#8
            and w18,w0,#268435455
            cmp x6,x12
            b.ne .L_40f3f0

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

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size des_key_schedule, . - des_key_schedule
.align 4
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
            movi v30.8b,#254
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov w20,#0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            adrp x22, leftkey_swap
            add x22,x22, :lo12:leftkey_swap
            ldr d31,[x0]
            add x22,x22,#144
            mov w21,#63
            and v30.8b,v31.8b,v30.8b
            str d30,[sp,#48]
            b .L_40f624
.L_40f618:

            add w20,w19,#1
            cmp w20,w21
            b.gt .L_40f658
.L_40f624:

            add w1,w20,w21
            add x0,sp,#48
            mov x2,#8
            add w1,w1,w1, lsr #31
            asr w19,w1,#1
            add x1,x22,w19, sxtw #3
            bl memcmp

            cmp w0,#0
            cbz w0,.L_40f66c

            b.gt .L_40f618

            sub w21,w19,#1
            cmp w20,w21
            b.le .L_40f624
.L_40f658:

            ldp x19,x20,[sp,#16]
            mov w0,#0
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
.L_40f66c:

.cfi_restore_state 
            ldp x19,x20,[sp,#16]
            mov w0,#1
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size gl_des_is_weak_key, . - gl_des_is_weak_key
.align 4
#-----------------------------------
.globl gl_des_setkey
.type gl_des_setkey, @function
#-----------------------------------
gl_des_setkey:

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
            mov x0,x1
            mov x1,x19
            bl des_key_schedule

            add x2,x19,#120
            lsl x1,x19,#1
            mov x0,#248
.L_40f6a8:

            ldr d31,[x2]
            sub x4,x0,x2
            cmp x2,x19
            sub x2,x2,#8
            str d31,[x4,x1]
            b.ne .L_40f6a8

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#32
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
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
            cmp x2,#8
            b.eq .L_40f6dc

            mov w0,#0
            ret 
.L_40f6dc:

            stp fp,lr,[sp,#-32]!
.cfi_def_cfa_offset 32
.cfi_offset 29, -32
.cfi_offset 30, -24
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -16
.cfi_offset 20, -8
            mov x19,x0
            mov x20,x1
            mov x1,x0
            mov x0,x20
            bl des_key_schedule

            add x2,x19,#120
            lsl x6,x19,#1
            mov x5,#248
.L_40f708:

            ldr d31,[x2]
            sub x4,x5,x2
            cmp x2,x19
            sub x2,x2,#8
            str d31,[x4,x6]
            b.ne .L_40f708

            mov x0,x20
            bl gl_des_is_weak_key

            and w0,w0,#255
            ldp x19,x20,[sp,#16]
            eor w0,w0,#1
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
            stp fp,lr,[sp,#-48]!
.cfi_def_cfa_offset 48
.cfi_offset 29, -48
.cfi_offset 30, -40
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
            cbz w3,.L_40ff48

            ldr w5,[x0,#128]
            add x0,x0,#128
.L_40f75c:

            ldp w6,w4,[x1]
            adrp x3, leftkey_swap
            add x1,x3, :lo12:leftkey_swap
            rev w3,w6
            rev w4,w4
            ldp w18,w16,[x0,#4]
            eor w13,w4,w3, lsr #4
            and w13,w13,#252645135
            add x12,x1,#656
            eor w4,w13,w4
            add x11,x1,#912
            eor w13,w3,w13, lsl #4
            add x10,x1,#1680
            add x9,x1,#1936
            add x7,x1,#2192
            eor w3,w4,w13, lsr #16
            add x8,x1,#1168
            and w3,w3,#65535
            add x6,x1,#1424
            eor w4,w4,w3
            add x1,x1,#2448
            eor w3,w13,w3, lsl #16
            eor w30,w3,w4, lsr #2
            and w30,w30,#858993459
            eor w3,w3,w30
            eor w30,w4,w30, lsl #2
            ldp w17,w15,[x0,#12]
            eor w4,w3,w30, lsr #8
            and w4,w4,#16711935
            eor w3,w3,w4
            eor w4,w30,w4, lsl #8
            ldp w14,w13,[x0,#20]
            eor w30,w3,w4, ror #31
            and w30,w30,#2863311530
            eor w4,w30,w4, ror #31
            eor w3,w3,w30
            eor w5,w5,w4
            and x20,x5,#63
            eor w30,w18,w4, ror #4
            ubfx x19,x5,#24,#6
            ubfx x18,x5,#8,#6
            ubfx x5,x5,#16,#6
            ubfx x21,lr,#8,#6
            ldr w22,[x12,x20,lsl #2]
            ldr w20,[x11,x19,lsl #2]
            ubfx x19,lr,#16,#6
            ldr w18,[x10,x18,lsl #2]
            ldr w5,[x9,x5,lsl #2]
            eor w3,w22,w3, ror #31
            eor w3,w3,w20
            ldr w20,[x7,x19,lsl #2]
            eor w5,w18,w5
            and x19,lr,#63
            ubfx x18,lr,#24,#6
            ldr w21,[x8,x21,lsl #2]
            eor w5,w5,w20
            ldr w19,[x6,x19,lsl #2]
            eor w3,w3,w21
            ldr w18,[x1,x18,lsl #2]
            eor w3,w3,w19
            eor w5,w5,w18
            eor w5,w5,w3
            eor w3,w5,w16
            and x19,x3,#63
            eor w17,w17,w5, ror #4
            ubfx x18,x3,#24,#6
            ubfx x16,x3,#8,#6
            ubfx x3,x3,#16,#6
            ubfx x20,x17,#8,#6
            ldr w22,[x12,x19,lsl #2]
            ubfx x19,x17,#16,#6
            ldr w21,[x11,x18,lsl #2]
            and x18,x17,#63
            ubfx x17,x17,#24,#6
            ldr w16,[x10,x16,lsl #2]
            ldr w3,[x9,x3,lsl #2]
            eor w4,w4,w22
            ldr w20,[x8,x20,lsl #2]
            eor w4,w4,w21
            ldr w19,[x7,x19,lsl #2]
            eor w3,w16,w3
            ldr w18,[x6,x18,lsl #2]
            eor w4,w4,w20
            ldr w16,[x1,x17,lsl #2]
            eor w3,w3,w19
            eor w4,w4,w18
            eor w3,w3,w16
            eor w3,w3,w4
            eor w4,w3,w15
            eor w14,w14,w3, ror #4
            and x18,x4,#63
            ubfx x19,x4,#24,#6
            ubfx x15,x4,#8,#6
            ubfx x4,x4,#16,#6
            ubfx x17,x14,#8,#6
            ubfx x16,x14,#16,#6
            ldr w20,[x12,x18,lsl #2]
            and x18,x14,#63
            ubfx x14,x14,#24,#6
            ldr w19,[x11,x19,lsl #2]
            eor w5,w5,w20
            ldr w15,[x10,x15,lsl #2]
            ldr w4,[x9,x4,lsl #2]
            eor w5,w5,w19
            ldr w17,[x8,x17,lsl #2]
            ldr w16,[x7,x16,lsl #2]
            eor w4,w15,w4
            ldr w14,[x1,x14,lsl #2]
            eor w5,w5,w17
            ldr w15,[x6,x18,lsl #2]
            eor w4,w4,w16
            eor w4,w4,w14
            eor w5,w5,w15
            ldp w15,w14,[x0,#28]
            eor w4,w4,w5
            eor w5,w4,w13
            and x18,x5,#63
            eor w15,w15,w4, ror #4
            ubfx x16,x5,#24,#6
            ubfx x22,x5,#8,#6
            ubfx x5,x5,#16,#6
            ubfx x20,x15,#8,#6
            ubfx x19,x15,#16,#6
            ldr w21,[x12,x18,lsl #2]
            and x18,x15,#63
            ldr w30,[x11,x16,lsl #2]
            ubfx x16,x15,#24,#6
            ldr w5,[x9,x5,lsl #2]
            eor w3,w3,w21
            ldr w15,[x10,x22,lsl #2]
            eor w3,w3,w30
            ldr w20,[x8,x20,lsl #2]
            ldr w19,[x7,x19,lsl #2]
            eor w5,w15,w5
            ldr w18,[x6,x18,lsl #2]
            eor w3,w3,w20
            ldr w15,[x1,x16,lsl #2]
            eor w5,w5,w19
            eor w3,w3,w18
            eor w5,w5,w15
            eor w5,w5,w3
            ldp w17,w13,[x0,#36]
            eor w14,w5,w14
            and x19,x14,#63
            ubfx x18,x14,#24,#6
            eor w3,w17,w5, ror #4
            ubfx x17,x14,#8,#6
            ldr w30,[x12,x19,lsl #2]
            ubfx x14,x14,#16,#6
            ldr w18,[x11,x18,lsl #2]
            ubfx x20,x3,#8,#6
            ubfx x19,x3,#16,#6
            eor w4,w4,w30
            eor w4,w4,w18
            and x18,x3,#63
            ubfx x3,x3,#24,#6
            ldr w17,[x10,x17,lsl #2]
            ldr w14,[x9,x14,lsl #2]
            ldr w20,[x8,x20,lsl #2]
            ldr w19,[x7,x19,lsl #2]
            eor w14,w17,w14
            ldr w18,[x6,x18,lsl #2]
            eor w4,w4,w20
            ldr w17,[x1,x3,lsl #2]
            eor w3,w14,w19
            ldp w16,w15,[x0,#44]
            eor w4,w4,w18
            eor w3,w3,w17
            eor w3,w3,w4
            eor w13,w3,w13
            eor w4,w16,w3, ror #4
            and x19,x13,#63
            ubfx x16,x13,#24,#6
            ubfx x14,x13,#8,#6
            ubfx x13,x13,#16,#6
            ubfx x17,x4,#16,#6
            ldr w20,[x12,x19,lsl #2]
            ubfx x18,x4,#8,#6
            ldr w19,[x11,x16,lsl #2]
            and x16,x4,#63
            ubfx x4,x4,#24,#6
            ldr w14,[x10,x14,lsl #2]
            ldr w13,[x9,x13,lsl #2]
            eor w5,w5,w20
            ldr w17,[x7,x17,lsl #2]
            eor w5,w5,w19
            ldr w18,[x8,x18,lsl #2]
            eor w13,w14,w13
            ldr w14,[x1,x4,lsl #2]
            eor w4,w13,w17
            ldr w16,[x6,x16,lsl #2]
            eor w5,w5,w18
            eor w4,w4,w14
            ldp w14,w13,[x0,#52]
            eor w5,w5,w16
            eor w4,w4,w5
            eor w5,w4,w15
            eor w14,w14,w4, ror #4
            and x15,x5,#63
            ubfx x20,x5,#8,#6
            ubfx x19,x5,#24,#6
            ubfx x5,x5,#16,#6
            ubfx x18,x14,#8,#6
            ubfx x17,x14,#16,#6
            ldr w30,[x12,x15,lsl #2]
            and x16,x14,#63
            ubfx x15,x14,#24,#6
            ldr w19,[x11,x19,lsl #2]
            eor w3,w3,w30
            ldr w14,[x10,x20,lsl #2]
            ldr w5,[x9,x5,lsl #2]
            eor w3,w3,w19
            ldr w18,[x8,x18,lsl #2]
            ldr w17,[x7,x17,lsl #2]
            eor w5,w14,w5
            ldr w16,[x6,x16,lsl #2]
            eor w3,w3,w18
            ldr w14,[x1,x15,lsl #2]
            eor w5,w5,w17
            eor w3,w3,w16
            eor w5,w5,w14
            eor w5,w5,w3
            ldp w3,w15,[x0,#60]
            eor w13,w5,w13
            and x19,x13,#63
            ubfx x16,x13,#24,#6
            ubfx x14,x13,#8,#6
            eor w3,w3,w5, ror #4
            ubfx x13,x13,#16,#6
            ldr w20,[x12,x19,lsl #2]
            ubfx x17,x3,#16,#6
            ldr w19,[x11,x16,lsl #2]
            ubfx x18,x3,#8,#6
            and x16,x3,#63
            ubfx x3,x3,#24,#6
            ldr w14,[x10,x14,lsl #2]
            ldr w13,[x9,x13,lsl #2]
            eor w4,w4,w20
            ldr w17,[x7,x17,lsl #2]
            eor w4,w4,w19
            ldr w18,[x8,x18,lsl #2]
            eor w13,w14,w13
            ldr w14,[x1,x3,lsl #2]
            eor w3,w13,w17
            ldr w16,[x6,x16,lsl #2]
            eor w4,w4,w18
            eor w3,w3,w14
            ldp w14,w13,[x0,#68]
            eor w4,w4,w16
            eor w3,w3,w4
            eor w15,w3,w15
            eor w4,w14,w3, ror #4
            and x18,x15,#63
            ubfx x16,x15,#24,#6
            ubfx x14,x15,#8,#6
            ubfx x20,x4,#8,#6
            ubfx x15,x15,#16,#6
            ldr w30,[x12,x18,lsl #2]
            ubfx x17,x4,#16,#6
            ldr w19,[x11,x16,lsl #2]
            and x16,x4,#63
            ubfx x4,x4,#24,#6
            ldr w18,[x9,x15,lsl #2]
            ldr w14,[x10,x14,lsl #2]
            eor w5,w5,w30
            ldr w15,[x8,x20,lsl #2]
            eor w5,w5,w19
            ldr w17,[x7,x17,lsl #2]
            eor w14,w14,w18
            ldr w16,[x6,x16,lsl #2]
            eor w5,w5,w15
            ldr w15,[x1,x4,lsl #2]
            eor w4,w14,w17
            eor w5,w5,w16
            eor w4,w4,w15
            eor w4,w4,w5
            eor w5,w4,w13
            ldp w14,w13,[x0,#76]
            and x15,x5,#63
            ubfx lr,x5,#24,#6
            ubfx x19,x5,#8,#6
            ubfx x5,x5,#16,#6
            eor w14,w14,w4, ror #4
            ldr w20,[x12,x15,lsl #2]
            and x17,x14,#63
            ubfx x18,x14,#8,#6
            ubfx x16,x14,#16,#6
            ubfx x15,x14,#24,#6
            ldr w14,[x11,lr,lsl #2]
            eor w3,w3,w20
            ldr w18,[x8,x18,lsl #2]
            eor w3,w3,w14
            ldr w5,[x9,x5,lsl #2]
            ldr w14,[x10,x19,lsl #2]
            eor w3,w3,w18
            ldr w16,[x7,x16,lsl #2]
            ldr w17,[x6,x17,lsl #2]
            eor w5,w14,w5
            ldr w15,[x1,x15,lsl #2]
            eor w5,w5,w16
            eor w3,w3,w17
            eor w5,w5,w15
            eor w5,w5,w3
            ldp w3,w15,[x0,#84]
            eor w13,w5,w13
            and x19,x13,#63
            ubfx x16,x13,#24,#6
            ubfx x14,x13,#8,#6
            eor w3,w3,w5, ror #4
            ubfx x13,x13,#16,#6
            ldr w20,[x12,x19,lsl #2]
            ubfx x17,x3,#16,#6
            ldr w19,[x11,x16,lsl #2]
            ubfx x18,x3,#8,#6
            and x16,x3,#63
            ubfx x3,x3,#24,#6
            ldr w14,[x10,x14,lsl #2]
            ldr w13,[x9,x13,lsl #2]
            eor w4,w4,w20
            ldr w17,[x7,x17,lsl #2]
            eor w4,w4,w19
            ldr w18,[x8,x18,lsl #2]
            eor w13,w14,w13
            ldr w14,[x1,x3,lsl #2]
            eor w3,w13,w17
            ldr w16,[x6,x16,lsl #2]
            eor w4,w4,w18
            eor w3,w3,w14
            ldp w14,w13,[x0,#92]
            eor w4,w4,w16
            eor w3,w3,w4
            eor w15,w3,w15
            eor w4,w14,w3, ror #4
            and x18,x15,#63
            ubfx x16,x15,#24,#6
            ubfx x14,x15,#8,#6
            ubfx x20,x4,#8,#6
            ubfx x15,x15,#16,#6
            ldr w30,[x12,x18,lsl #2]
            ubfx x17,x4,#16,#6
            ldr w19,[x11,x16,lsl #2]
            and x16,x4,#63
            ubfx x4,x4,#24,#6
            ldr w18,[x9,x15,lsl #2]
            ldr w14,[x10,x14,lsl #2]
            eor w5,w5,w30
            ldr w15,[x8,x20,lsl #2]
            eor w5,w5,w19
            ldr w17,[x7,x17,lsl #2]
            eor w14,w14,w18
            ldr w16,[x6,x16,lsl #2]
            eor w5,w5,w15
            ldr w15,[x1,x4,lsl #2]
            eor w4,w14,w17
            eor w5,w5,w16
            eor w4,w4,w15
            eor w4,w4,w5
            ldp w14,w5,[x0,#100]
            eor w13,w4,w13
            and x15,x13,#63
            ubfx lr,x13,#24,#6
            ubfx x19,x13,#8,#6
            eor w14,w14,w4, ror #4
            ubfx x13,x13,#16,#6
            ldr w20,[x12,x15,lsl #2]
            and x18,x14,#63
            ubfx x17,x14,#8,#6
            ubfx x15,x14,#24,#6
            ubfx x16,x14,#16,#6
            ldr w14,[x11,lr,lsl #2]
            eor w3,w3,w20
            ldr w18,[x6,x18,lsl #2]
            ldr w17,[x8,x17,lsl #2]
            eor w3,w3,w14
            ldr w14,[x10,x19,lsl #2]
            eor w3,w3,w17
            ldr w17,[x9,x13,lsl #2]
            ldr w16,[x7,x16,lsl #2]
            eor w3,w3,w18
            ldr w13,[x1,x15,lsl #2]
            eor w14,w14,w17
            eor w14,w14,w16
            eor w14,w14,w13
            eor w14,w14,w3
            ldp w3,w16,[x0,#108]
            eor w5,w14,w5
            and x19,x5,#63
            ubfx x18,x5,#24,#6
            ubfx x13,x5,#8,#6
            eor w3,w3,w14, ror #4
            ubfx x5,x5,#16,#6
            ldr w20,[x12,x19,lsl #2]
            ubfx x15,x3,#8,#6
            ldr w19,[x11,x18,lsl #2]
            ubfx x17,x3,#16,#6
            and x18,x3,#63
            ldr w13,[x10,x13,lsl #2]
            ubfx x3,x3,#24,#6
            ldr w5,[x9,x5,lsl #2]
            eor w4,w4,w20
            ldr w15,[x8,x15,lsl #2]
            eor w4,w4,w19
            ldr w17,[x7,x17,lsl #2]
            eor w5,w13,w5
            ldr w13,[x6,x18,lsl #2]
            eor w4,w4,w15
            ldr w15,[x1,x3,lsl #2]
            eor w3,w5,w17
            eor w4,w4,w13
            ldp w13,w5,[x0,#116]
            eor w3,w3,w15
            eor w3,w3,w4
            ldr w15,[x0,#124]
            eor w4,w3,w16
            eor w0,w13,w3, ror #4
            and x16,x4,#63
            ubfx x19,x4,#24,#6
            ubfx x13,x4,#8,#6
            ubfx x4,x4,#16,#6
            ubfx x18,x0,#8,#6
            ubfx x17,x0,#16,#6
            ldr w20,[x12,x16,lsl #2]
            and lr,x0,#63
            ubfx x16,x0,#24,#6
            ldr w19,[x11,x19,lsl #2]
            eor w0,w14,w20
            ldr w13,[x10,x13,lsl #2]
            ldr w4,[x9,x4,lsl #2]
            eor w0,w0,w19
            ldr w18,[x8,x18,lsl #2]
            ldr w17,[x7,x17,lsl #2]
            eor w4,w13,w4
            ldr w14,[x6,lr,lsl #2]
            eor w0,w0,w18
            ldr w13,[x1,x16,lsl #2]
            eor w4,w4,w17
            eor w0,w0,w14
            eor w4,w4,w13
            eor w4,w4,w0
            eor w5,w4,w5
            eor w0,w15,w4, ror #4
            and x17,x5,#63
            ubfx x18,x5,#24,#6
            ubfx x16,x5,#8,#6
            ubfx x13,x5,#16,#6
            ubfx x15,x0,#8,#6
            ubfx x14,x0,#16,#6
            ldr w17,[x12,x17,lsl #2]
            ubfx x5,x0,#24,#6
            and x12,x0,#63
            ldr w11,[x11,x18,lsl #2]
            eor w3,w3,w17
            ldr w0,[x10,x16,lsl #2]
            ldr w9,[x9,x13,lsl #2]
            eor w3,w3,w11
            ldr w8,[x8,x15,lsl #2]
            ldr w7,[x7,x14,lsl #2]
            eor w0,w0,w9
            ldr w6,[x6,x12,lsl #2]
            eor w3,w3,w8
            ldr w5,[x1,x5,lsl #2]
            eor w0,w0,w7
            eor w1,w3,w6
            eor w0,w0,w5
            eor w0,w0,w1
            ldp x19,x20,[sp,#16]
            eor w3,w4,w0, ror #1
            and w3,w3,#2863311530
            eor w1,w4,w3
            eor w0,w3,w0, ror #1
            ldp x21,x22,[sp,#32]
            ror w1,w1,#1
            ldp fp,lr,[sp],#48
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            eor w3,w0,w1, lsr #8
            and w3,w3,#16711935
            eor w0,w0,w3
            eor w3,w1,w3, lsl #8
            eor w1,w0,w3, lsr #2
            and w1,w1,#858993459
            eor w0,w0,w1
            eor w1,w3,w1, lsl #2
            eor w3,w1,w0, lsr #16
            and w3,w3,#65535
            eor w1,w1,w3
            eor w3,w0,w3, lsl #16
            eor w0,w1,w3, lsr #4
            and w0,w0,#252645135
            eor w1,w1,w0
            fmov s30,w1
            eor w0,w3,w0, lsl #4
            fmov s29,w0
            fmov s31,w0
            ushr v27.2s,v30.2s,#24
            ushr v25.2s,v29.2s,#16
            ushr v26.2s,v29.2s,#8
            ushr v31.2s,v31.2s,#24
            ushr v28.2s,v30.2s,#16
            ushr v29.2s,v30.2s,#8
            mov v31.b[1],v25.b[0]
            mov v31.b[2],v26.b[0]
            mov v31.b[3],w0
            mov v31.b[4],v27.b[0]
            mov v31.b[5],v28.b[0]
            mov v31.b[6],v29.b[0]
            mov v31.b[7],v30.b[0]
            str d31,[x2]
            ret 
.L_40ff48:

.cfi_restore_state 
            ldr w5,[x0]
            b .L_40f75c
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
            stp fp,lr,[sp,#-208]!
.cfi_def_cfa_offset 208
.cfi_offset 29, -208
.cfi_offset 30, -200
            mov x14,x0
            mov x3,x2
            mov fp,sp
            stp x25,x26,[sp,#64]
            ldr w0,[x2,#16]
            str x2,[sp,#136]
            add w0,w0,w1
            str w0,[x2,#16]
            and x2,x1,#-4
            add x2,x14,x2
            str x2,[sp,#128]
            add x2,x3,#8
.cfi_offset 25, -144
.cfi_offset 26, -136
            ldp w26,w8,[x3]
            ldp w9,w10,[x2]
            cmp x1,w0, uxtw
            b.ls .L_40ffa0

            ldr w0,[x3,#20]
            add w0,w0,#1
            str w0,[x3,#20]
.L_40ffa0:

            ldr x0,[sp,#128]
            cmp x14,x0
            b.hs .L_4105a8

            mov w7,#31129
            mov w6,#60321
            stp x27,x28,[sp,#80]
.cfi_offset 28, -120
.cfi_offset 27, -128
            add x27,sp,#144
            movk w7,#23170,lsl #16
            movk w6,#28377,lsl #16
            stp x19,x20,[sp,#16]
.cfi_offset 20, -184
.cfi_offset 19, -192
            stp x21,x22,[sp,#32]
.cfi_offset 22, -168
.cfi_offset 21, -176
            stp x23,x24,[sp,#48]
.L_40ffd0:

.cfi_offset 24, -152
.cfi_offset 23, -160
            eor w0,w9,w10
            ldp q31,q30,[x14]
            and w0,w0,w8
            eor w0,w0,w10
            eor w1,w8,w9
            mov x2,v31
            mov x3,v31.d[1]
            str q31,[x27]
            mov x4,v30
            mov x5,v30.d[1]
            mov v31.8b,v30.8b
            add w0,w0,w2
            lsr x22,x2,#32
            add w0,w0,w26
            add w11,w22,w10
            add w13,w3,w9
            mov w17,w3
            and w1,w1,w0, ror #29
            eor w3,w8,w0, ror #29
            eor w1,w1,w9
            ror w0,w0,#29
            add w1,w1,w11
            add w30,w2,w7
            ldr w11,[sp,#156]
            mov w28,w2
            and w3,w3,w1, ror #25
            eor w2,w0,w1, ror #25
            eor w3,w3,w8
            add w12,w11,w8
            add w3,w3,w13
            ror w1,w1,#25
            lsr x21,x4,#32
            mov v31.d[1],x5
            and w2,w2,w3, ror #21
            eor w13,w1,w3, ror #21
            eor w2,w2,w0
            ror w3,w3,#21
            add w2,w2,w12
            add w12,w4,w0
            str q31,[x27,#16]
            mov w15,w5
            and w13,w13,w2, ror #13
            eor w0,w13,w1
            eor w13,w3,w2, ror #13
            add w0,w0,w12
            add w12,w21,w1
            mov w25,w4
            ror w2,w2,#13
            and w13,w13,w0, ror #29
            eor w1,w2,w0, ror #29
            eor w13,w13,w3
            ror w0,w0,#29
            add w13,w13,w12
            add w12,w5,w3
            ldp q31,q30,[x14,#32]
            and w1,w1,w13, ror #25
            eor w1,w1,w2
            ldr w5,[sp,#172]
            add w1,w1,w12
            eor w3,w0,w13, ror #25
            mov x18,v31
            add w2,w5,w2
            and w3,w3,w1, ror #21
            ror w4,w13,#25
            eor w3,w3,w0
            eor w12,w4,w1, ror #21
            add w3,w3,w2
            ror w1,w1,#21
            mov x19,v31.d[1]
            str q31,[x27,#32]
            and w12,w12,w3, ror #13
            add w0,w18,w0
            eor w12,w12,w4
            add w12,w12,w0
            eor w2,w1,w3, ror #13
            lsr x20,x18,#32
            ror w3,w3,#13
            and w2,w2,w12, ror #29
            add w4,w20,w4
            eor w2,w2,w1
            eor w0,w3,w12, ror #29
            add w2,w2,w4
            add w4,w19,w1
            mov w24,w18
            ror w12,w12,#29
            and w1,w0,w2, ror #25
            eor w0,w12,w2, ror #25
            eor w1,w1,w3
            mov x18,v30
            add w1,w1,w4
            ldr w4,[sp,#188]
            str q30,[sp,#96]
            ror w2,w2,#25
            and w0,w0,w1, ror #21
            add w3,w4,w3
            eor w0,w0,w12
            add w0,w0,w3
            eor w4,w2,w1, ror #21
            add w12,w18,w12
            ror w1,w1,#21
            and w4,w4,w0, ror #13
            eor w3,w1,w0, ror #13
            eor w4,w4,w2
            ror w0,w0,#13
            add w4,w4,w12
            ldr w13,[sp,#104]
            ldr x12,[sp,#96]
            and w3,w3,w4, ror #29
            eor w3,w3,w1
            mov w23,w18
            eor w18,w0,w4, ror #29
            add w1,w13,w1
            lsr x12,x12,#32
            ror w4,w4,#29
            add w2,w12,w2
            mov w16,w19
            add w3,w3,w2
            str q30,[x27,#48]
            ldr w19,[sp,#204]
            and w2,w18,w3, ror #25
            eor w18,w4,w3, ror #25
            eor w2,w2,w0
            add w0,w19,w0
            add w2,w2,w1
            ror w3,w3,#25
            add w28,w28,w6
            str w28,[sp,#96]
            and w18,w18,w2, ror #21
            orr w1,w3,w2, ror #21
            eor w18,w18,w4
            add w28,w25,w7
            add w0,w18,w0
            and w18,w3,w2, ror #21
            add x14,x14,#64
            and w1,w1,w0, ror #13
            ror w0,w0,#13
            orr w1,w1,w18
            orr w18,w0,w2, ror #21
            add w1,w1,w4
            and w4,w0,w2, ror #21
            add w1,w1,w30
            ror w2,w2,#21
            add w30,w25,w6
            add w25,w24,w7
            and w18,w18,w1, ror #29
            orr w18,w18,w4
            orr w4,w0,w1, ror #29
            add w3,w18,w3
            and w18,w0,w1, ror #29
            add w3,w3,w28
            add w28,w24,w6
            and w4,w4,w3, ror #27
            ror w3,w3,#27
            orr w4,w4,w18
            orr w18,w3,w1, ror #29
            add w2,w4,w2
            and w24,w3,w1, ror #29
            add w2,w2,w25
            add w4,w23,w7
            add w25,w23,w6
            ror w1,w1,#29
            and w18,w18,w2, ror #23
            orr w23,w3,w2, ror #23
            orr w18,w18,w24
            add w24,w22,w6
            add w0,w18,w0
            and w18,w3,w2, ror #23
            add w0,w0,w4
            add w4,w22,w7
            and w23,w23,w0, ror #19
            ror w0,w0,#19
            orr w23,w23,w18
            orr w18,w0,w2, ror #23
            add w1,w23,w1
            and w22,w0,w2, ror #23
            add w1,w1,w4
            add w4,w21,w7
            add w21,w21,w6
            str w21,[sp,#124]
            and w18,w18,w1, ror #29
            orr w21,w0,w1, ror #29
            orr w18,w18,w22
            ror w2,w2,#23
            add w3,w18,w3
            and w18,w0,w1, ror #29
            add w3,w3,w4
            add w4,w20,w7
            add w23,w20,w6
            ldr w22,[sp,#188]
            and w21,w21,w3, ror #27
            ror w3,w3,#27
            orr w21,w21,w18
            orr w18,w3,w1, ror #29
            add w2,w21,w2
            and w20,w3,w1, ror #29
            add w2,w2,w4
            add w4,w12,w7
            add w12,w12,w6
            ror w1,w1,#29
            and w18,w18,w2, ror #23
            orr w18,w18,w20
            orr w20,w3,w2, ror #23
            add w0,w18,w0
            and w18,w3,w2, ror #23
            add w0,w0,w4
            add w4,w17,w7
            add w17,w17,w6
            and w20,w20,w0, ror #19
            ror w0,w0,#19
            orr w20,w20,w18
            orr w18,w0,w2, ror #23
            add w1,w20,w1
            and w21,w0,w2, ror #23
            add w1,w1,w4
            add w4,w15,w7
            add w15,w15,w6
            ror w2,w2,#23
            and w18,w18,w1, ror #29
            orr w20,w0,w1, ror #29
            orr w18,w18,w21
            add w3,w18,w3
            and w18,w0,w1, ror #29
            add w3,w3,w4
            add w4,w16,w7
            add w16,w16,w6
            and w20,w20,w3, ror #27
            ror w3,w3,#27
            orr w20,w20,w18
            orr w18,w3,w1, ror #29
            add w2,w20,w2
            and w21,w3,w1, ror #29
            add w2,w2,w4
            add w4,w13,w7
            add w13,w13,w6
            ror w1,w1,#29
            and w18,w18,w2, ror #23
            orr w20,w3,w2, ror #23
            orr w18,w18,w21
            add w0,w18,w0
            and w18,w3,w2, ror #23
            add w0,w0,w4
            add w4,w11,w7
            add w11,w11,w6
            and w20,w20,w0, ror #19
            ror w0,w0,#19
            orr w20,w20,w18
            orr w18,w0,w2, ror #23
            add w1,w20,w1
            and w21,w0,w2, ror #23
            add w1,w1,w4
            add w4,w5,w7
            add w5,w5,w6
            ror w2,w2,#23
            and w18,w18,w1, ror #29
            orr w20,w0,w1, ror #29
            orr w18,w18,w21
            add w21,w22,w6
            add w3,w18,w3
            and w18,w0,w1, ror #29
            add w3,w3,w4
            ldr w4,[sp,#188]
            and w20,w20,w3, ror #27
            add w4,w4,w7
            orr w20,w20,w18
            ror w3,w3,#27
            add w2,w20,w2
            orr w18,w3,w1, ror #29
            add w2,w2,w4
            and w22,w3,w1, ror #29
            add w4,w19,w7
            ror w1,w1,#29
            and w18,w18,w2, ror #23
            eor w20,w3,w2, ror #23
            orr w18,w18,w22
            ror w2,w2,#23
            add w18,w18,w0
            add w19,w19,w6
            add w18,w18,w4
            eor w20,w20,w18, ror #19
            eor w0,w2,w18, ror #19
            add w20,w20,w1
            ldr w1,[sp,#96]
            ror w18,w18,#19
            add w20,w20,w1
            eor w0,w0,w20, ror #29
            eor w1,w18,w20, ror #29
            add w0,w0,w3
            ror w20,w20,#29
            add w0,w0,w28
            eor w4,w1,w0, ror #23
            eor w1,w20,w0, ror #23
            add w4,w4,w2
            ror w22,w0,#23
            add w4,w4,w30
            eor w1,w1,w4, ror #21
            eor w3,w22,w4, ror #21
            add w1,w1,w18
            ror w4,w4,#21
            add w1,w1,w25
            eor w3,w3,w1, ror #17
            eor w2,w4,w1, ror #17
            add w3,w3,w20
            ror w1,w1,#17
            add w3,w3,w17
            eor w2,w2,w3, ror #29
            eor w0,w1,w3, ror #29
            add w2,w2,w22
            ror w3,w3,#29
            add w2,w2,w16
            eor w0,w0,w2, ror #23
            eor w16,w3,w2, ror #23
            add w0,w0,w4
            ror w2,w2,#23
            add w0,w0,w15
            eor w15,w16,w0, ror #21
            eor w4,w2,w0, ror #21
            add w1,w15,w1
            ror w0,w0,#21
            add w1,w1,w13
            eor w13,w4,w1, ror #17
            eor w4,w0,w1, ror #17
            add w13,w13,w3
            ror w1,w1,#17
            add w13,w13,w24
            eor w4,w4,w13, ror #29
            eor w3,w1,w13, ror #29
            add w4,w4,w2
            ror w13,w13,#29
            add w4,w4,w23
            eor w3,w3,w4, ror #23
            eor w2,w13,w4, ror #23
            add w3,w3,w0
            ldr w0,[sp,#124]
            ror w4,w4,#23
            add w3,w3,w0
            eor w2,w2,w3, ror #21
            eor w0,w4,w3, ror #21
            add w2,w2,w1
            ror w3,w3,#21
            add w2,w2,w12
            eor w0,w0,w2, ror #17
            eor w1,w3,w2, ror #17
            add w0,w0,w13
            ror w2,w2,#17
            add w0,w0,w11
            eor w1,w1,w0, ror #29
            eor w11,w2,w0, ror #29
            add w1,w1,w4
            ror w0,w0,#29
            add w1,w1,w21
            add w26,w26,w0
            eor w4,w11,w1, ror #23
            eor w0,w0,w1, ror #23
            add w3,w4,w3
            ror w1,w1,#23
            add w3,w3,w5
            add w10,w10,w1
            ldr x1,[sp,#136]
            eor w0,w0,w3, ror #21
            add w0,w0,w2
            ror w3,w3,#21
            add w0,w0,w19
            add w9,w9,w3
            stp w9,w10,[x1,#8]
            ror w0,w0,#17
            add w8,w8,w0
            stp w26,w8,[x1]
            ldr x0,[sp,#128]
            cmp x14,x0
            b.lo .L_40ffd0

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
.L_4105a8:

.cfi_restore 28
.cfi_restore 27
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
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
.size md4_process_block, . - md4_process_block
.align 4
#-----------------------------------
.globl md4_init_ctx
.type md4_init_ctx, @function
#-----------------------------------
md4_init_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            adrp x1, .L_4158f0
            str xzr,[x0,#16]
            str wzr,[x0,#24]
            ldr q31,[x1,:lo12:.L_4158f0]
            str q31,[x0]
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
.size md4_init_ctx, . - md4_init_ctx
.align 4
#-----------------------------------
.globl md4_read_ctx
.type md4_read_ctx, @function
#-----------------------------------
md4_read_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x2,x0
            mov x0,x1
            ldr w1,[x2]
            str w1,[x0]
            ldr w1,[x2,#4]
            str w1,[x0,#4]
            ldr w1,[x2,#8]
            str w1,[x0,#8]
            ldr w1,[x2,#12]
            str w1,[x0,#12]
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
            stp fp,lr,[sp,#-64]!
.cfi_def_cfa_offset 64
.cfi_offset 29, -64
.cfi_offset 30, -56
            mov fp,sp
            stp x19,x20,[sp,#16]
.cfi_offset 19, -48
.cfi_offset 20, -40
            mov x19,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -32
.cfi_offset 22, -24
            mov x21,x1
            ldr w0,[x0,#16]
            ldr w3,[x19,#24]
            str x23,[sp,#48]
.cfi_offset 23, -16
            adds w0,w0,w3
            str w0,[x19,#16]
            b.lo .L_410648

            ldr w0,[x19,#20]
            add w0,w0,#1
            str w0,[x19,#20]
.L_410648:

            cmp w3,#56
            mov w0,#120
            mov w22,#56
            sub w0,w0,w3
            sub w22,w22,w3
            mov w20,w3
            csel w22,w22,w0,lo
            add x23,x19,#28
            adrp x1, leftkey_swap
            add x1,x1, :lo12:leftkey_swap
            mov x2,x22
            add x0,x23,x20
            add x1,x1,#2704
            bl memcpy

            add x1,x20,x22
            ldr w5,[x19,#16]
            and x4,x1,#8589934588
            mov x0,x23
            add x4,x19,x4
            mov x2,x19
            lsl w3,w5,#3
            add x1,x1,#8
            str w3,[x4,#28]
            ldr w3,[x19,#20]
            extr w3,w3,w5,#29
            str w3,[x4,#32]
            bl md4_process_block

            ldr w0,[x19]
            ldr x23,[sp,#48]
            str w0,[x21]
            mov x0,x21
            ldr w1,[x19,#4]
            str w1,[x21,#4]
            ldr w1,[x19,#8]
            str w1,[x21,#8]
            ldr w1,[x19,#12]
            str w1,[x21,#12]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#64
.cfi_restore 30
.cfi_restore 29
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md4_finish_ctx, . - md4_finish_ctx
.align 2
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov x19,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x21,x2
            mov x22,x1
            ldr w0,[x2,#24]
            cbnz w0,.L_4107f8
.L_410710:

            cmp x22,#63
            b.ls .L_4107e4

            str x25,[sp,#64]
.cfi_offset 25, -16
            mov x25,x19
            tst x19,#3
            b.eq .L_4107c4

            cmp x22,#64
            b.eq .L_410850

            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            sub x24,x22,#65
            add x20,x21,#28
            lsr x24,x24,#6
            add x23,x24,#1
            add x23,x19,x23, lsl #6
.L_410748:

            ldp q29,q28,[x19]
            mov x2,x21
            ldp q31,q30,[x19,#32]
            mov x0,x20
            mov x1,#64
            add x19,x19,#64
            stp q29,q28,[x20]
            stp q31,q30,[x20,#32]
            bl md4_process_block

            cmp x19,x23
            b.ne .L_410748

            neg x24,x24, lsl #6
            add x25,x25,#64
            sub x22,x22,#64
            sub x19,x25,x24
            ldr x25,[sp,#64]
.cfi_restore 25
            add x22,x22,x24
.L_41078c:

            ldr w23,[x21,#24]
            mov x2,x22
            mov x1,x19
            add x0,x20,x23
            add x22,x23,x22
            bl memcpy

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            cmp x22,#63
            b.hi .L_410878

            str w22,[x21,#24]
.L_4107b4:

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
.L_4107c4:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 25, -16
.cfi_offset 29, -80
.cfi_offset 30, -72
            and x20,x22,#-64
            mov x0,x19
            mov x2,x21
            mov x1,x20
            bl md4_process_block

            add x19,x19,x20
            ldr x25,[sp,#64]
.cfi_restore 25
            and x22,x22,#63
.L_4107e4:

            cbnz x22,.L_4108d8

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
.L_4107f8:

.cfi_restore_state 
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            mov w23,w0
            mov x24,#128
            sub x24,x24,x23
            add x20,x2,#28
            cmp x24,x1
            add x0,x20,x23
            csel x24,x24,x1,ls
            mov x1,x19
            mov x2,x24
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl memcpy

            ldr w25,[x21,#24]
            add w25,w25,w24
            str w25,[x21,#24]
            cmp w25,#64
            b.hi .L_4108a4
.L_41083c:

            ldr x25,[sp,#64]
.cfi_restore 25
            add x19,x19,x24
            sub x22,x22,x24
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_410710
.L_410850:

.cfi_offset 25, -16
            ldr w0,[x21,#24]
            add x20,x21,#28
            ldp q28,q30,[x19]
            add x1,x20,x0
            ldp q29,q31,[x19,#32]
            add x22,x0,#64
            str q28,[x20,x0]
            stp q30,q29,[x1,#16]
            str q31,[x1,#48]
            ldr x25,[sp,#64]
.L_410878:

.cfi_restore 25
            mov x2,x21
            mov x0,x20
            sub x22,x22,#64
            mov x1,#64
            bl md4_process_block

            mov x0,x20
            mov x2,x22
            add x1,x21,#92
            bl memcpy

            str w22,[x21,#24]
            b .L_4107b4
.L_4108a4:

.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 25, -16
            mov x2,x21
            and x1,x25,#4294967232
            mov x0,x20
            bl md4_process_block

            add x0,x23,x24
            and w2,w25,#63
            str w2,[x21,#24]
            and x1,x0,#-64
            add x1,x20,x1
            mov x0,x20
            and x2,x2,#63
            bl memcpy

            b .L_41083c
.L_4108d8:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
            add x20,x21,#28
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            b .L_41078c
.cfi_endproc 
.size md4_process_bytes, . - md4_process_bytes
.align 2
#-----------------------------------
.globl md4_stream
.type md4_stream, @function
#-----------------------------------
md4_stream:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x12,#4400
            sub sp,sp,x12
.cfi_def_cfa_offset 4400
            adrp x2, .L_4158f0
            stp fp,lr,[sp]
.cfi_offset 29, -4400
.cfi_offset 30, -4392
            mov fp,sp
            ldr q31,[x2,:lo12:.L_4158f0]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -4384
.cfi_offset 20, -4376
            mov x20,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -4368
.cfi_offset 22, -4360
            add x21,sp,#232
            mov x22,#4096
            str x23,[sp,#48]
.cfi_offset 23, -4352
            mov x23,x1
            str xzr,[sp,#80]
            str wzr,[sp,#88]
            str q31,[sp,#64]
.L_410924:

            mov x19,#0
            b .L_410938
.L_41092c:

            cbz x2,.L_410974

            bl feof

            cbnz w0,.L_410984
.L_410938:

            sub x2,x22,x19
            add x0,x21,x19
            mov x3,x20
            mov x1,#1
            bl fread

            mov x2,x0
            add x19,x19,x2
            mov x0,x20
            cmp x19,#1,lsl #12
            b.ne .L_41092c

            mov x1,x19
            add x2,sp,#64
            mov x0,x21
            bl md4_process_block

            b .L_410924
.L_410974:

            bl ferror

            mov w1,w0
            mov w0,#1
            cbnz w1,.L_410998
.L_410984:

            cbnz x19,.L_4109b4
.L_410988:

            mov x1,x23
            add x0,sp,#64
            bl md4_finish_ctx

            mov w0,#0
.L_410998:

            ldr x23,[sp,#48]
            mov x12,#4400
            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            add sp,sp,x12
.cfi_remember_state 
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_4109b4:

.cfi_restore_state 
            mov x1,x19
            mov x0,x21
            add x2,sp,#64
            bl md4_process_bytes

            b .L_410988
.cfi_endproc 
.size md4_stream, . - md4_stream
.align 3
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
            adrp x3, .L_4158f0
            mov fp,sp
            ldr q31,[x3,:lo12:.L_4158f0]
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -192
.cfi_offset 20, -184
.cfi_offset 21, -176
.cfi_offset 22, -168
            mov x21,x2
            add x2,sp,#48
            str q31,[sp,#48]
            str xzr,[sp,#64]
            str wzr,[sp,#72]
            bl md4_process_bytes

            ldr w0,[sp,#64]
            ldr w3,[sp,#72]
            adds w0,w3,w0
            str w0,[sp,#64]
            b.lo .L_410a18

            ldr w0,[sp,#68]
            add w0,w0,#1
            str w0,[sp,#68]
.L_410a18:

            cmp w3,#56
            mov w0,#120
            mov w20,#56
            sub w0,w0,w3
            sub w20,w20,w3
            mov w19,w3
            csel w20,w20,w0,lo
            add x22,sp,#76
            adrp x1, leftkey_swap
            add x1,x1, :lo12:leftkey_swap
            mov x2,x20
            add x0,x22,x19
            add x1,x1,#2704
            bl memcpy

            ldp w6,w4,[sp,#64]
            add x1,x20,x19
            add x5,sp,#60
            add x2,sp,#48
            lsr x0,x1,#2
            add x1,x1,#8
            add x7,x0,#4
            add x3,x0,#5
            lsl w8,w6,#3
            extr w4,w4,w6,#29
            mov x0,x22
            str w8,[x5,x7,lsl #2]
            str w4,[x5,x3,lsl #2]
            bl md4_process_block

            ldr q31,[sp,#48]
            mov x0,x21
            str q31,[x21]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp fp,lr,[sp],#208
.cfi_restore 30
.cfi_restore 29
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
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
            cmp x0,#0
            ccmp x1,#0,#4,ne
            b.ne .L_410ab8

            cbnz x2,.L_410afc
.L_410ab4:

            ret 
.L_410ab8:

            mov x3,#0
            cbz x2,.L_410ab4
.L_410ac0:

            ldrb w4,[x0,x3]
            ldrb w5,[x1,x3]
            eor w4,w4,w5
            strb w4,[x0,x3]
            add x3,x3,#1
            cmp x2,x3
            b.eq .L_410ab4

            ldrb w4,[x0,x3]
            ldrb w5,[x1,x3]
            eor w4,w4,w5
            strb w4,[x0,x3]
            add x3,x3,#1
            cmp x2,x3
            b.ne .L_410ac0

            ret 
.L_410afc:

            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            mov fp,sp
            adrp x1, .L_4156e0
            adrp x0, .L_4156f0
            add x3,x3,#2768
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_4156f0
            mov w2,#837
            bl __assert_fail
.cfi_endproc 
.size memxor, . - memxor
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
            cbz x0,.L_410b44

            adrp x1, .L_4158f0
            str xzr,[x0,#16]
            str wzr,[x0,#24]
            ldr q31,[x1,:lo12:.L_4158f0]
            str q31,[x0]
            ret 
.L_410b44:

            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            mov fp,sp
            adrp x1, .L_4156e0
            adrp x0, .L_415718
            add x3,x3,#2776
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_415718
            mov w2,#901
            bl __assert_fail
.cfi_endproc 
.size md5_init_ctx, . - md5_init_ctx
.align 4
#-----------------------------------
.globl md5_read_ctx
.type md5_read_ctx, @function
#-----------------------------------
md5_read_ctx:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-16]!
.cfi_def_cfa_offset 16
.cfi_offset 29, -16
.cfi_offset 30, -8
            mov fp,sp
            cbz x0,.L_410bb0

            cbz x1,.L_410bd4

            mov x2,x0
            mov x0,x1
            ldp fp,lr,[sp],#16
.cfi_remember_state 
.cfi_restore 30
.cfi_restore 29
.cfi_def_cfa_offset 0
            ldr w3,[x2]
            str w3,[x1]
            ldr w3,[x2,#4]
            str w3,[x1,#4]
            ldr w3,[x2,#8]
            str w3,[x1,#8]
            ldr w2,[x2,#12]
            str w2,[x1,#12]
            ret 
.L_410bb0:

.cfi_restore_state 
            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            adrp x1, .L_4156e0
            adrp x0, .L_415718
            add x3,x3,#2792
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_415718
            mov w2,#919
            bl __assert_fail
.L_410bd4:

            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            adrp x1, .L_4156e0
            adrp x0, .L_415728
            add x3,x3,#2792
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_415728
            mov w2,#920
            bl __assert_fail
.cfi_endproc 

            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
.size md5_read_ctx, . - md5_read_ctx
.align 4
#-----------------------------------
.globl md5_process_block
.type md5_process_block, @function
#-----------------------------------
md5_process_block:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-112]!
.cfi_def_cfa_offset 112
.cfi_offset 29, -112
.cfi_offset 30, -104
            mov x11,x2
            mov fp,sp
            stp x25,x26,[sp,#64]
.cfi_offset 25, -48
.cfi_offset 26, -40
            and x26,x1,#-4
            add x26,x0,x26
            ldp w25,w7,[x2]
            ldp w8,w9,[x2,#8]
            ldr w2,[x2,#16]
            add w2,w2,w1
            str w2,[x11,#16]
            cmp x1,w2, uxtw
            b.ls .L_410c40

            ldr w1,[x11,#20]
            add w1,w1,#1
            str w1,[x11,#20]
.L_410c40:

            cmp x0,x26
            b.hs .L_411620

            stp x19,x20,[sp,#16]
.cfi_offset 20, -88
.cfi_offset 19, -96
            stp x21,x22,[sp,#32]
.cfi_offset 22, -72
.cfi_offset 21, -80
            stp x23,x24,[sp,#48]
.cfi_offset 24, -56
.cfi_offset 23, -64
            stp x27,x28,[sp,#80]
.cfi_offset 28, -24
.cfi_offset 27, -32
            str x11,[sp,#104]
            nop
            nop
            nop
            nop
.L_410c60:

            ldp w24,w18,[x0]
            eor w5,w8,w9
            and w5,w5,w7
            mov w1,#42104
            eor w5,w5,w9
            movk w1,#55146,lsl #16
            add w5,w5,w24
            add w1,w25,w1
            add w5,w5,w1
            eor w20,w7,w8
            mov w1,#46934
            mov w2,#28891
            movk w1,#59591,lsl #16
            ror w5,w5,#25
            add w5,w5,w7
            add w1,w9,w1
            and w20,w20,w5
            eor w14,w5,w7
            eor w20,w20,w8
            movk w2,#9248,lsl #16
            add w20,w20,w18
            add w2,w8,w2
            add w20,w20,w1
            mov w3,#52974
            ldp w11,w19,[x0,#8]
            ror w20,w20,#20
            add w20,w5,w20
            movk w3,#49597,lsl #16
            and w14,w14,w20
            eor w4,w5,w20
            eor w14,w14,w7
            add w6,w7,w3
            add w14,w14,w11
            mov w1,#4015
            add w14,w14,w2
            movk w1,#62844,lsl #16
            ldp w13,w21,[x0,#16]
            ror w14,w14,#15
            add w14,w20,w14
            mov w2,#38145
            and w4,w4,w14
            eor w22,w20,w14
            eor w4,w4,w5
            add w28,w13,w1
            add w4,w4,w19
            mov w1,#50730
            add w4,w4,w6
            movk w1,#18311,lsl #16
            add w16,w21,w1
            mov w1,#17939
            movk w1,#43056,lsl #16
            ror w4,w4,#10
            add w4,w14,w4
            movk w2,#64838,lsl #16
            and w22,w22,w4
            eor w22,w22,w20
            add w5,w22,w5
            eor w22,w14,w4
            add w28,w28,w5
            mov w5,#-42063
            ldp w15,w23,[x0,#24]
            ror w28,w28,#25
            add w28,w4,w28
            and w22,w22,w28
            add w1,w15,w1
            eor w22,w22,w14
            add w3,w23,w2
            add w22,w22,w20
            eor w20,w4,w28
            add w16,w16,w22
            mov w2,#39128
            ldp w17,w10,[x0,#32]
            ror w16,w16,#20
            add w16,w28,w16
            movk w2,#27008,lsl #16
            and w20,w20,w16
            add w27,w17,w2
            eor w20,w20,w4
            mov w2,#63407
            add w20,w20,w14
            eor w14,w28,w16
            add w1,w1,w20
            movk w2,#35652,lsl #16
            add w2,w10,w2
            mov w22,#55230
            movk w22,#35164,lsl #16
            ror w1,w1,#15
            add w1,w16,w1
            and w14,w14,w1
            eor w30,w16,w1
            eor w14,w14,w28
            add w4,w14,w4
            add w3,w3,w4
            mov w4,#4386
            ldp w6,w12,[x0,#40]
            ror w3,w3,#10
            add w3,w1,w3
            movk w4,#27536,lsl #16
            and w30,w30,w3
            add w5,w6,w5
            eor w30,w30,w16
            add w22,w12,w22
            add w30,w30,w28
            eor w28,w1,w3
            add w27,w27,w30
            ldp w20,w14,[x0,#48]
            ror w27,w27,#25
            add w27,w3,w27
            and w28,w28,w27
            add w4,w20,w4
            eor w28,w28,w1
            add w28,w28,w16
            eor w16,w3,w27
            add w2,w2,w28
            mov w28,#29075
            movk w28,#64920,lsl #16
            add w30,w14,w28
            ror w2,w2,#20
            add w2,w27,w2
            and w16,w16,w2
            eor w16,w16,w3
            add w16,w16,w1
            eor w1,w27,w2
            add w5,w5,w16
            ror w5,w5,#15
            add w5,w2,w5
            and w1,w1,w5
            eor w28,w2,w5
            eor w1,w1,w27
            add w1,w1,w3
            mov w3,#17294
            add w1,w22,w1
            movk w3,#42617,lsl #16
            ldp w22,w16,[x0,#56]
            ror w1,w1,#10
            add w1,w5,w1
            add x0,x0,#64
            and w28,w28,w1
            add w3,w22,w3
            eor w28,w28,w2
            add w28,w28,w27
            eor w27,w5,w1
            add w4,w4,w28
            ror w4,w4,#25
            add w4,w1,w4
            and w27,w27,w4
            eor w27,w27,w5
            add w2,w27,w2
            eor w27,w1,w4
            add w30,w30,w2
            mov w2,#2081
            movk w2,#18868,lsl #16
            add w2,w16,w2
            ror w30,w30,#20
            add w30,w4,w30
            and w27,w27,w30
            eor w27,w27,w1
            add w27,w27,w5
            eor w5,w4,w30
            add w3,w3,w27
            mov w27,#9570
            movk w27,#63006,lsl #16
            add w27,w18,w27
            ror w3,w3,#15
            add w3,w30,w3
            and w5,w5,w3
            eor w5,w5,w4
            add w5,w5,w1
            mov w1,#45888
            add w2,w2,w5
            movk w1,#49216,lsl #16
            add w28,w15,w1
            mov w1,#23121
            movk w1,#9822,lsl #16
            ror w2,w2,#10
            add w2,w3,w2
            add w1,w12,w1
            eor w5,w3,w2
            and w5,w5,w30
            eor w5,w5,w3
            add w5,w5,w4
            mov w4,#51114
            add w27,w27,w5
            movk w4,#59830,lsl #16
            add w5,w24,w4
            ror w27,w27,#27
            add w27,w2,w27
            eor w4,w2,w27
            and w4,w4,w3
            eor w4,w4,w2
            add w4,w4,w30
            add w28,w28,w4
            mov w4,#4189
            movk w4,#54831,lsl #16
            add w4,w21,w4
            ror w28,w28,#23
            add w28,w27,w28
            eor w30,w27,w28
            and w30,w30,w2
            eor w30,w30,w27
            add w30,w30,w3
            mov w3,#5203
            add w1,w1,w30
            movk w3,#580,lsl #16
            add w3,w6,w3
            ror w1,w1,#18
            add w1,w28,w1
            eor w30,w28,w1
            and w30,w30,w27
            eor w30,w30,w28
            add w30,w30,w2
            mov w2,#59009
            add w5,w5,w30
            movk w2,#55457,lsl #16
            add w2,w16,w2
            ror w5,w5,#12
            add w5,w1,w5
            eor w30,w1,w5
            and w30,w30,w28
            eor w30,w30,w1
            add w30,w30,w27
            mov w27,#64456
            add w4,w4,w30
            movk w27,#59347,lsl #16
            add w27,w13,w27
            ror w4,w4,#27
            add w4,w5,w4
            eor w30,w5,w4
            and w30,w30,w1
            eor w30,w30,w5
            add w30,w30,w28
            mov w28,#52710
            add w3,w3,w30
            movk w28,#8673,lsl #16
            add w28,w10,w28
            ror w3,w3,#23
            add w3,w4,w3
            eor w30,w4,w3
            and w30,w30,w5
            eor w30,w30,w4
            add w30,w30,w1
            mov w1,#2006
            add w2,w2,w30
            movk w1,#49975,lsl #16
            add w30,w22,w1
            ror w2,w2,#18
            add w2,w3,w2
            eor w1,w3,w2
            and w1,w1,w4
            eor w1,w1,w3
            add w1,w1,w5
            add w1,w27,w1
            mov w27,#3463
            movk w27,#62677,lsl #16
            add w27,w19,w27
            ror w1,w1,#12
            add w1,w2,w1
            eor w5,w2,w1
            and w5,w5,w3
            eor w5,w5,w2
            add w5,w5,w4
            add w5,w28,w5
            mov w28,#5357
            movk w28,#17754,lsl #16
            add w28,w17,w28
            ror w5,w5,#27
            add w5,w1,w5
            eor w4,w1,w5
            and w4,w4,w2
            eor w4,w4,w1
            add w4,w4,w3
            add w4,w30,w4
            mov w30,#59653
            movk w30,#43491,lsl #16
            add w30,w14,w30
            ror w4,w4,#23
            add w4,w5,w4
            eor w3,w5,w4
            and w3,w3,w1
            eor w3,w3,w5
            add w3,w3,w2
            add w3,w27,w3
            mov w27,#41976
            movk w27,#64751,lsl #16
            add w27,w11,w27
            ror w3,w3,#18
            add w3,w4,w3
            eor w2,w4,w3
            and w2,w2,w5
            eor w2,w2,w4
            add w2,w2,w1
            add w2,w28,w2
            mov w28,#729
            movk w28,#26479,lsl #16
            add w28,w23,w28
            ror w2,w2,#12
            add w2,w3,w2
            eor w1,w3,w2
            and w1,w1,w4
            eor w1,w1,w3
            add w1,w1,w5
            mov w5,#19594
            add w1,w30,w1
            movk w5,#36138,lsl #16
            add w5,w20,w5
            ror w1,w1,#27
            add w1,w2,w1
            eor w30,w2,w1
            and w30,w30,w3
            eor w30,w30,w2
            add w30,w30,w4
            sub w4,w21,#92,lsl #12
            add w27,w27,w30
            sub w4,w4,#1726
            ror w27,w27,#23
            add w27,w1,w27
            eor w30,w1,w27
            and w30,w30,w2
            eor w30,w30,w1
            add w30,w30,w3
            add w28,w28,w30
            ror w28,w28,#18
            add w28,w27,w28
            eor w3,w27,w28
            and w30,w3,w1
            eor w30,w30,w27
            add w30,w30,w2
            mov w2,#63105
            add w30,w5,w30
            movk w2,#34673,lsl #16
            add w2,w17,w2
            ror w30,w30,#12
            add w30,w28,w30
            eor w3,w3,w30
            eor w5,w28,w30
            add w3,w3,w1
            add w1,w4,w3
            mov w4,#24866
            movk w4,#28061,lsl #16
            add w4,w12,w4
            ror w1,w1,#28
            add w1,w30,w1
            eor w5,w5,w1
            eor w3,w30,w1
            add w5,w5,w27
            mov w27,#14348
            add w2,w2,w5
            movk w27,#64997,lsl #16
            add w27,w22,w27
            ror w2,w2,#21
            add w2,w1,w2
            eor w3,w3,w2
            eor w5,w1,w2
            add w3,w3,w28
            add w3,w4,w3
            mov w4,#59972
            movk w4,#42174,lsl #16
            add w4,w18,w4
            ror w3,w3,#16
            add w3,w2,w3
            eor w5,w5,w3
            eor w28,w2,w3
            add w5,w5,w30
            mov w30,#19296
            add w5,w27,w5
            mov w27,#53161
            movk w27,#19422,lsl #16
            add w27,w13,w27
            movk w30,#63163,lsl #16
            ror w5,w5,#9
            add w5,w3,w5
            add w30,w23,w30
            eor w28,w28,w5
            add w28,w28,w1
            eor w1,w3,w5
            add w4,w4,w28
            mov w28,#32454
            movk w28,#10395,lsl #16
            add w28,w14,w28
            ror w4,w4,#28
            add w4,w5,w4
            eor w1,w1,w4
            add w1,w1,w2
            eor w2,w5,w4
            add w1,w27,w1
            mov w27,#48240
            movk w27,#48831,lsl #16
            add w27,w6,w27
            sub w6,w6,#256,lsl #12
            ror w1,w1,#21
            add w1,w4,w1
            sub w6,w6,#2947
            eor w2,w2,w1
            add w2,w2,w3
            eor w3,w4,w1
            add w2,w30,w2
            ror w2,w2,#16
            add w2,w1,w2
            eor w3,w3,w2
            add w3,w3,w5
            eor w5,w1,w2
            add w3,w27,w3
            mov w27,#10234
            movk w27,#60065,lsl #16
            add w27,w24,w27
            ror w3,w3,#9
            add w3,w2,w3
            eor w5,w5,w3
            add w5,w5,w4
            eor w4,w2,w3
            add w5,w28,w5
            mov w28,#12421
            movk w28,#54511,lsl #16
            add w28,w19,w28
            ror w5,w5,#28
            add w5,w3,w5
            eor w4,w4,w5
            add w4,w4,w1
            eor w1,w3,w5
            add w4,w27,w4
            mov w27,#7429
            movk w27,#1160,lsl #16
            add w27,w15,w27
            ror w4,w4,#21
            add w4,w5,w4
            eor w1,w1,w4
            add w1,w1,w2
            eor w2,w5,w4
            add w1,w28,w1
            mov w28,#53305
            movk w28,#55764,lsl #16
            add w28,w10,w28
            ror w1,w1,#16
            add w1,w4,w1
            eor w2,w2,w1
            add w2,w2,w3
            eor w3,w4,w1
            add w2,w27,w2
            mov w27,#39397
            movk w27,#59099,lsl #16
            add w27,w20,w27
            ror w2,w2,#9
            add w2,w1,w2
            eor w3,w3,w2
            add w3,w3,w5
            eor w5,w1,w2
            add w3,w28,w3
            mov w28,#31992
            movk w28,#8098,lsl #16
            add w28,w16,w28
            ror w3,w3,#28
            add w3,w2,w3
            eor w5,w5,w3
            add w5,w5,w4
            eor w4,w2,w3
            add w5,w27,w5
            mov w27,#22117
            movk w27,#50348,lsl #16
            add w27,w11,w27
            ror w5,w5,#21
            add w5,w3,w5
            eor w4,w4,w5
            add w4,w4,w1
            eor w1,w3,w5
            add w4,w28,w4
            mov w28,#8772
            movk w28,#62505,lsl #16
            add w28,w24,w28
            mov w24,#65431
            ror w4,w4,#16
            add w4,w5,w4
            movk w24,#17194,lsl #16
            eor w1,w1,w4
            add w24,w23,w24
            add w1,w1,w2
            mov w23,#9127
            add w27,w27,w1
            mov w1,#41017
            movk w1,#64659,lsl #16
            add w21,w21,w1
            mov w1,#22979
            ror w27,w27,#9
            add w27,w4,w27
            movk w1,#25947,lsl #16
            add w20,w20,w1
            orn w1,w27,w5
            eor w1,w1,w4
            movk w23,#43924,lsl #16
            add w1,w1,w3
            add w22,w22,w23
            add w28,w28,w1
            mov w1,#32335
            movk w1,#28584,lsl #16
            add w17,w17,w1
            mov w2,#52370
            ror w28,w28,#26
            add w28,w27,w28
            movk w2,#36620,lsl #16
            orn w1,w28,w4
            add w19,w19,w2
            eor w1,w1,w27
            mov w2,#24017
            add w1,w1,w5
            movk w2,#34180,lsl #16
            add w24,w24,w1
            add w18,w18,w2
            mov w2,#59104
            mov w1,#32386
            movk w2,#65068,lsl #16
            ror w24,w24,#22
            add w24,w28,w24
            add w16,w16,w2
            orn w3,w24,w27
            mov w2,#17172
            eor w3,w3,w28
            movk w2,#41729,lsl #16
            add w4,w3,w4
            add w5,w15,w2
            add w22,w22,w4
            mov w4,#54161
            movk w4,#60294,lsl #16
            add w10,w10,w4
            mov w2,#4513
            ror w22,w22,#17
            add w22,w24,w22
            movk w2,#19976,lsl #16
            orn w4,w22,w28
            add w2,w14,w2
            eor w4,w4,w24
            movk w1,#63315,lsl #16
            add w4,w4,w27
            add w1,w13,w1
            add w21,w21,w4
            mov w13,#62005
            movk w13,#48442,lsl #16
            add w12,w12,w13
            mov w3,#53947
            ror w21,w21,#11
            add w21,w22,w21
            movk w3,#10967,lsl #16
            orn w4,w21,w24
            add w3,w11,w3
            eor w4,w4,w22
            add w4,w4,w28
            add w20,w20,w4
            ror w20,w20,#26
            add w20,w21,w20
            orn w4,w20,w22
            eor w4,w4,w21
            add w4,w4,w24
            add w19,w19,w4
            ror w19,w19,#22
            add w19,w20,w19
            orn w4,w19,w21
            eor w4,w4,w20
            add w4,w4,w22
            add w6,w6,w4
            ror w6,w6,#17
            add w6,w19,w6
            orn w4,w6,w20
            eor w4,w4,w19
            add w4,w4,w21
            add w18,w18,w4
            ror w18,w18,#11
            add w18,w6,w18
            orn w4,w18,w19
            eor w4,w4,w6
            add w4,w4,w20
            add w17,w17,w4
            ror w17,w17,#26
            add w17,w18,w17
            orn w4,w17,w6
            eor w4,w4,w18
            add w4,w4,w19
            add w16,w16,w4
            ror w16,w16,#22
            add w16,w17,w16
            orn w4,w16,w18
            eor w4,w4,w17
            add w4,w4,w6
            add w4,w5,w4
            ror w4,w4,#17
            add w4,w16,w4
            orn w5,w4,w17
            eor w5,w5,w16
            add w5,w5,w18
            add w2,w2,w5
            ror w2,w2,#11
            add w2,w4,w2
            orn w5,w2,w16
            eor w5,w5,w4
            add w5,w5,w17
            add w1,w1,w5
            ror w1,w1,#26
            add w1,w2,w1
            orn w5,w1,w4
            add w25,w25,w1
            eor w5,w5,w2
            add w5,w5,w16
            add w12,w12,w5
            ror w12,w12,#22
            add w12,w1,w12
            orn w5,w12,w2
            add w9,w9,w12
            eor w5,w5,w1
            add w4,w5,w4
            add w3,w3,w4
            ror w3,w3,#17
            add w3,w12,w3
            orn w1,w3,w1
            add w7,w3,w7
            eor w1,w1,w12
            add w8,w8,w3
            add w1,w1,w2
            add w10,w10,w1
            ror w10,w10,#11
            add w7,w7,w10
            cmp x26,x0
            b.hi .L_410c60

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
.cfi_restore 28
.cfi_restore 27
            ldr x11,[sp,#104]
.L_411620:

            stp w25,w7,[x11]
            stp w8,w9,[x11,#8]
            ldp x25,x26,[sp,#64]
            ldp fp,lr,[sp],#112
.cfi_restore 30
.cfi_restore 29
.cfi_restore 25
.cfi_restore 26
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
.size md5_process_block, . - md5_process_block
.align 4
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
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -32
.cfi_offset 20, -24
.cfi_offset 21, -16
.cfi_offset 22, -8
            cbz x0,.L_411748

            mov x20,x1
            cbz x1,.L_411724

            mov x19,x0
            ldr w0,[x0,#24]
            cmp w0,#55
            b.ls .L_411710

            mov x21,#128
            mov x2,#120
            mov x4,#31
            mov x5,#30
.L_41167c:

            ldp w1,w3,[x19,#16]
            adds w1,w1,w0
            str w1,[x19,#16]
            b.lo .L_411694

            add w3,w3,#1
            str w3,[x19,#20]
.L_411694:

            add x5,x19,x5, lsl #2
            add x4,x19,x4, lsl #2
            lsl w6,w1,#3
            extr w3,w3,w1,#29
            add x22,x19,#28
            mov w0,w0
            str w6,[x5,#28]
            adrp x1, leftkey_swap
            str w3,[x4,#28]
            add x1,x1, :lo12:leftkey_swap
            sub x2,x2,x0
            add x1,x1,#2704
            add x0,x22,x0
            bl memcpy

            mov x2,x19
            mov x1,x21
            mov x0,x22
            bl md5_process_block

            ldr w1,[x19]
            mov x0,x20
            str w1,[x20]
            ldr w1,[x19,#4]
            str w1,[x20,#4]
            ldr w1,[x19,#8]
            str w1,[x20,#8]
            ldr w1,[x19,#12]
            str w1,[x20,#12]
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
.L_411710:

.cfi_restore_state 
            mov x21,#64
            mov x2,#56
            mov x4,#15
            mov x5,#14
            b .L_41167c
.L_411724:

            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            adrp x1, .L_4156e0
            adrp x0, .L_415728
            add x3,x3,#2808
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_415728
            mov w2,#938
            bl __assert_fail
.L_411748:

            adrp x3, leftkey_swap
            add x3,x3, :lo12:leftkey_swap
            adrp x1, .L_4156e0
            adrp x0, .L_415718
            add x3,x3,#2808
            add x1,x1, :lo12:.L_4156e0
            add x0,x0, :lo12:.L_415718
            mov w2,#937
            bl __assert_fail
.cfi_endproc 
.size md5_finish_ctx, . - md5_finish_ctx
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
            stp x19,x20,[sp,#16]
.cfi_offset 19, -64
.cfi_offset 20, -56
            mov x19,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -48
.cfi_offset 22, -40
            mov x21,x2
            mov x22,x1
            ldr w0,[x2,#24]
            cbnz w0,.L_411878
.L_411790:

            cmp x22,#63
            b.ls .L_411864

            str x25,[sp,#64]
.cfi_offset 25, -16
            mov x25,x19
            tst x19,#3
            b.eq .L_411844

            cmp x22,#64
            b.eq .L_4118d0

            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            sub x24,x22,#65
            add x20,x21,#28
            lsr x24,x24,#6
            add x23,x24,#1
            add x23,x19,x23, lsl #6
.L_4117c8:

            ldp q29,q28,[x19]
            mov x2,x21
            ldp q31,q30,[x19,#32]
            mov x0,x20
            mov x1,#64
            add x19,x19,#64
            stp q29,q28,[x20]
            stp q31,q30,[x20,#32]
            bl md5_process_block

            cmp x19,x23
            b.ne .L_4117c8

            neg x24,x24, lsl #6
            add x25,x25,#64
            sub x22,x22,#64
            sub x19,x25,x24
            ldr x25,[sp,#64]
.cfi_restore 25
            add x22,x22,x24
.L_41180c:

            ldr w23,[x21,#24]
            mov x2,x22
            mov x1,x19
            add x0,x20,x23
            add x22,x23,x22
            bl memcpy

            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            cmp x22,#63
            b.hi .L_4118f8

            str w22,[x21,#24]
.L_411834:

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
.L_411844:

.cfi_def_cfa_offset 80
.cfi_offset 19, -64
.cfi_offset 20, -56
.cfi_offset 21, -48
.cfi_offset 22, -40
.cfi_offset 25, -16
.cfi_offset 29, -80
.cfi_offset 30, -72
            and x20,x22,#-64
            mov x0,x19
            mov x2,x21
            mov x1,x20
            bl md5_process_block

            add x19,x19,x20
            ldr x25,[sp,#64]
.cfi_restore 25
            and x22,x22,#63
.L_411864:

            cbnz x22,.L_411958

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
.L_411878:

.cfi_restore_state 
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            mov w23,w0
            mov x24,#128
            sub x24,x24,x23
            add x20,x2,#28
            cmp x24,x1
            add x0,x20,x23
            csel x24,x24,x1,ls
            mov x1,x19
            mov x2,x24
            str x25,[sp,#64]
.cfi_offset 25, -16
            bl memcpy

            ldr w25,[x21,#24]
            add w25,w25,w24
            str w25,[x21,#24]
            cmp w25,#64
            b.hi .L_411924
.L_4118bc:

            ldr x25,[sp,#64]
.cfi_restore 25
            add x19,x19,x24
            sub x22,x22,x24
            ldp x23,x24,[sp,#48]
.cfi_restore 24
.cfi_restore 23
            b .L_411790
.L_4118d0:

.cfi_offset 25, -16
            ldr w0,[x21,#24]
            add x20,x21,#28
            ldp q28,q30,[x19]
            add x1,x20,x0
            ldp q29,q31,[x19,#32]
            add x22,x0,#64
            str q28,[x20,x0]
            stp q30,q29,[x1,#16]
            str q31,[x1,#48]
            ldr x25,[sp,#64]
.L_4118f8:

.cfi_restore 25
            mov x2,x21
            mov x0,x20
            sub x22,x22,#64
            mov x1,#64
            bl md5_process_block

            mov x0,x20
            mov x2,x22
            add x1,x21,#92
            bl memcpy

            str w22,[x21,#24]
            b .L_411834
.L_411924:

.cfi_offset 23, -32
.cfi_offset 24, -24
.cfi_offset 25, -16
            mov x2,x21
            and x1,x25,#4294967232
            mov x0,x20
            bl md5_process_block

            add x0,x23,x24
            and w2,w25,#63
            str w2,[x21,#24]
            and x1,x0,#-64
            add x1,x20,x1
            mov x0,x20
            and x2,x2,#63
            bl memcpy

            b .L_4118bc
.L_411958:

.cfi_restore 23
.cfi_restore 24
.cfi_restore 25
            add x20,x21,#28
            stp x23,x24,[sp,#48]
.cfi_offset 24, -24
.cfi_offset 23, -32
            b .L_41180c
.cfi_endproc 
.size md5_process_bytes, . - md5_process_bytes
.align 2
#-----------------------------------
.globl md5_buffer
.type md5_buffer, @function
#-----------------------------------
md5_buffer:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-192]!
.cfi_def_cfa_offset 192
.cfi_offset 29, -192
.cfi_offset 30, -184
            adrp x3, .L_4158f0
            mov fp,sp
            ldr q31,[x3,:lo12:.L_4158f0]
            str x19,[sp,#16]
.cfi_offset 19, -176
            mov x19,x2
            add x2,sp,#32
            str xzr,[sp,#48]
            str q31,[sp,#32]
            str wzr,[sp,#56]
            bl md5_process_bytes

            mov x1,x19
            add x0,sp,#32
            bl md5_finish_ctx

            ldr x19,[sp,#16]
            ldp fp,lr,[sp],#192
.cfi_restore 30
.cfi_restore 29
.cfi_restore 19
.cfi_def_cfa_offset 0
            ret 
.cfi_endproc 
.size md5_buffer, . - md5_buffer
.align 3
#-----------------------------------
.globl hmac_md5
.type hmac_md5, @function
#-----------------------------------
hmac_md5:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            stp fp,lr,[sp,#-480]!
.cfi_def_cfa_offset 480
.cfi_offset 29, -480
.cfi_offset 30, -472
            mov fp,sp
            stp x19,x20,[sp,#16]
            stp x21,x22,[sp,#32]
.cfi_offset 19, -464
.cfi_offset 20, -456
.cfi_offset 21, -448
.cfi_offset 22, -440
            mov x22,x4
            stp x23,x24,[sp,#48]
.cfi_offset 23, -432
.cfi_offset 24, -424
            mov x23,x2
            mov x24,x3
            cmp x1,#64
            b.hi .L_411aac

            mov x19,x1
            mov x20,x0
            add x21,sp,#320
.L_4119dc:

            adrp x0, .L_4158f0
            mov x2,x19
            movi v31.16b,#54
            mov x1,x20
            ldr q30,[x0,:lo12:.L_4158f0]
            add x0,sp,#96
            str xzr,[sp,#176]
            stp q31,q31,[sp,#96]
            stp q31,q31,[sp,#128]
            str q30,[sp,#160]
            str wzr,[sp,#184]
            bl memxor

            add x2,sp,#160
            add x0,sp,#96
            mov x1,#64
            bl md5_process_block

            add x2,sp,#160
            mov x1,x24
            mov x0,x23
            bl md5_process_bytes

            add x1,sp,#80
            add x0,sp,#160
            bl md5_finish_ctx

            str xzr,[sp,#336]
            adrp x3, .L_4158f0
            mov x2,x19
            movi v31.16b,#92
            mov x1,x20
            ldr q30,[x3,:lo12:.L_4158f0]
            add x0,sp,#96
            str wzr,[sp,#344]
            stp q31,q31,[sp,#96]
            stp q31,q31,[sp,#128]
            str q30,[sp,#320]
            bl memxor

            mov x2,x21
            add x0,sp,#96
            mov x1,#64
            bl md5_process_block

            mov x2,x21
            add x0,sp,#80
            mov x1,#16
            bl md5_process_bytes

            mov x1,x22
            mov x0,x21
            bl md5_finish_ctx

            mov w0,#0
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            ldp x23,x24,[sp,#48]
            ldp fp,lr,[sp],#480
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
.L_411aac:

.cfi_restore_state 
            adrp x2, .L_4158f0
            add x21,sp,#320
            str xzr,[sp,#336]
            add x20,sp,#64
            ldr q31,[x2,:lo12:.L_4158f0]
            mov x2,x21
            str wzr,[sp,#344]
            mov x19,#16
            str q31,[sp,#320]
            bl md5_process_bytes

            add x1,sp,#64
            mov x0,x21
            bl md5_finish_ctx

            b .L_4119dc
.cfi_endproc 
.size hmac_md5, . - hmac_md5
.align 2
#-----------------------------------
.globl md5_stream
.type md5_stream, @function
#-----------------------------------
md5_stream:

.cfi_startproc 
.cfi_lsda 255
.cfi_personality 255
.cfi_def_cfa 31, 0
            mov x12,#4400
            sub sp,sp,x12
.cfi_def_cfa_offset 4400
            adrp x2, .L_4158f0
            stp fp,lr,[sp]
.cfi_offset 29, -4400
.cfi_offset 30, -4392
            mov fp,sp
            ldr q31,[x2,:lo12:.L_4158f0]
            stp x19,x20,[sp,#16]
.cfi_offset 19, -4384
.cfi_offset 20, -4376
            mov x20,x0
            stp x21,x22,[sp,#32]
.cfi_offset 21, -4368
.cfi_offset 22, -4360
            add x21,sp,#232
            mov x22,#4096
            str x23,[sp,#48]
.cfi_offset 23, -4352
            mov x23,x1
            str xzr,[sp,#80]
            str wzr,[sp,#88]
            str q31,[sp,#64]
.L_411b24:

            mov x19,#0
            b .L_411b38
.L_411b2c:

            cbz x2,.L_411b74

            bl feof

            cbnz w0,.L_411b84
.L_411b38:

            sub x2,x22,x19
            add x0,x21,x19
            mov x3,x20
            mov x1,#1
            bl fread

            mov x2,x0
            add x19,x19,x2
            mov x0,x20
            cmp x19,#1,lsl #12
            b.ne .L_411b2c

            mov x1,x19
            add x2,sp,#64
            mov x0,x21
            bl md5_process_block

            b .L_411b24
.L_411b74:

            bl ferror

            mov w1,w0
            mov w0,#1
            cbnz w1,.L_411b98
.L_411b84:

            cbnz x19,.L_411bb4
.L_411b88:

            mov x1,x23
            add x0,sp,#64
            bl md5_finish_ctx

            mov w0,#0
.L_411b98:

            ldr x23,[sp,#48]
            mov x12,#4400
            ldp fp,lr,[sp]
            ldp x19,x20,[sp,#16]
            ldp x21,x22,[sp,#32]
            add sp,sp,x12
.cfi_remember_state 
.cfi_restore 23
.cfi_restore 21
.cfi_restore 22
.cfi_restore 19
.cfi_restore 20
.cfi_restore 29
.cfi_restore 30
.cfi_def_cfa_offset 0
            ret 
.L_411bb4:

.cfi_restore_state 
            mov x1,x19
            mov x0,x21
            add x2,sp,#64
            bl md5_process_bytes

            b .L_411b88
.cfi_endproc 
.size md5_stream, . - md5_stream
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
.L_411bd4:

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
.L_411be0:
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
.L_411be8:
          .string "allow"
          .zero 2
.L_411bf0:
          .string "deny"
          .zero 3
.L_411bf8:
          .string "/"
          .zero 6
.L_411c00:
          .string "ACL netmask for %s is invalid\n"
          .zero 1
.L_411c20:
          .string "ACL source address %s is invalid\n"
          .zero 6
.L_411c48:
          .string "ACL only ipv4 source addresses are supported (%s)\n"
          .zero 5
.L_411c80:
          .string "Subnet definition might be incorrect: %s/%d\n"
          .zero 3
.L_411cb0:
          .string "New ACL rule: %s %s/%d\n"
.L_411cc8:
          .string "Credentials structure dump:"
          .zero 4
.L_411ce8:
          .string "Struct is not allocated!"
          .zero 7
.L_411d08:
          .string "User:       %s\n"
.L_411d18:
          .string "Domain:     %s\n"
.L_411d28:
          .string "Wks:        %s\n"
.L_411d38:
          .string "HashNTLMv2: %d\n"
.L_411d48:
          .string "HashNT:     %d\n"
.L_411d58:
          .string "HashLM:     %d\n"
.L_411d68:
          .string "Flags:      %X\n"
.L_411d78:
          .string "PassNTLMv2: %s\n"
.L_411d88:
          .string "PassNT:     %s\n"
.L_411d98:
          .ascii "PassLM:     %s\n\n"
.L_411da8:
          .zero 1
          .zero 7
.L_411db0:
          .string "r"
          .zero 6
.L_411db8:
          .string "#"
          .zero 6
.L_411dc0:
          .string "section: %s, %s = '%s'\n"
.L_411dd8:
          .string "NTLM "
          .zero 2
.L_411de0:
          .string "keep-alive"
          .zero 5
.L_411df0:
          .string "Connection"
          .zero 5
.L_411e00:
          .string "Authorization"
          .zero 2
.L_411e10:
          .string "0"
          .zero 6
.L_411e18:
          .string "Content-Length"
          .zero 1
.L_411e28:
          .string "Transfer-Encoding"
          .zero 6
.L_411e40:
          .string "\nSending WWW auth request..."
          .zero 3
.L_411e60:
          .string "\nReading WWW auth response..."
          .zero 2
.L_411e80:
          .string "WWW-Authenticate"
          .zero 7
.L_411e98:
          .string "No target info block. Cannot do NTLMv2!\n"
          .zero 7
.L_411ec8:
          .string "Invalid NTLM challenge from web server"
          .zero 1
.L_411ef0:
          .string "Server returning invalid challenge!\n"
          .zero 3
.L_411f18:
          .string "No challenge in WWW-Authenticate!\n"
          .zero 5
.L_411f40:
          .string "Web server reply missing NTLM challenge"
.L_411f68:
          .string "\nSending WWW auth..."
          .zero 3
.L_411f80:
          .string "\nReading final server response..."
          .zero 6
.L_411fa8:
          .string "Error during WWW-Authenticate"
          .zero 2
.L_411fc8:
          .string "Direct thread processing..."
          .zero 4
.L_411fe8:
          .string "Connection failed for %s:%d (%s)"
          .zero 7
.L_412010:
          .string "Invalid request URL"
          .zero 4
.L_412028:
          .string "CONNECT"
.L_412030:
          .string "\n******* Round %d C: %d, S: %d *******\n"
.L_412058:
          .string "Reading headers (%d)...\n"
          .zero 7
.L_412078:
          .string "\n******* D RETURN: %s *******\n"
          .zero 1
.L_412098:
          .string "%s %s %s"
          .zero 7
.L_4120a8:
          .string "Proxy-Authorization"
          .zero 4
.L_4120c0:
          .string "NTLM-to-basic: Credentials parsed: %s\\%s at %s\n"
.L_4120f0:
          .string "CONNECTing..."
          .zero 2
.L_412100:
          .string "Connection established"
          .zero 1
.L_412118:
          .string "NTLM"
          .zero 3
.L_412120:
          .string "close"
          .zero 2
.L_412128:
          .string "Reconnect before WWW auth"
          .zero 6
.L_412148:
          .string "WWW authentication reconnect failed"
          .zero 4
.L_412170:
          .string "WWW auth connection error."
          .zero 5
.L_412190:
          .string "Connection to remote server failed"
          .zero 5
.L_4121b8:
          .string "server reconnect after probe"
          .zero 3
.L_4121d8:
          .string "Sending headers (%d)...\n"
          .zero 7
.L_4121f8:
          .string "Proxy-Connection"
          .zero 7
.L_412210:
          .string "HEAD: %s %s %s\n"
.L_412220:
          .string "HEAD"
          .zero 3
.L_412228:
          .string "%s FORWARD %s"
          .zero 2
.L_412238:
          .string "Portforwarding to %s for client %d...\n"
          .zero 1
.L_412260:
          .string " (retry)"
          .zero 7
.L_412270:
          .string "src/forward.c"
          .zero 2
.L_412280:
          .string "thread_data != NULL"
          .zero 4
.L_412298:
          .string "Thread processing%s...\n"
.L_4122b0:
          .string "Found authenticated connection %d!\n"
          .zero 4
.L_4122d8:
          .string "Parent proxy unreachable"
          .zero 7
.L_4122f8:
          .string "\n******* Round %d C: %d, S: %d (authok=%d, noauth=%d) *******\n"
          .zero 1
.L_412338:
          .string "\n******* F RETURN: %s *******\n"
          .zero 1
.L_412358:
          .string "NTLM-to-basic: Returning client auth request."
          .zero 2
.L_412388:
          .string "Proxy auth connection error."
          .zero 3
.L_4123a8:
          .string "Proxy auth not requested - just forwarding."
          .zero 4
.L_4123d8:
          .string "\nFinal reply is 407 - retrying (cached=%d, noauth=%d).\n"
.L_412410:
          .string "Proxy-Authenticate"
          .zero 5
.L_412428:
          .string "Basic realm=\"Auth failed, you can try other credentials\""
          .zero 7
.L_412468:
          .string "Ok CONNECT response. Tunneling..."
          .zero 6
.L_412490:
          .string "PROXY CLOSING CONNECTION"
          .zero 7
.L_4124b0:
          .string "forward_request: palive=%d, authok=%d, ntlm=%d, closed=%d\n"
          .zero 5
.L_4124f0:
          .string "\nThread finished."
          .zero 6
.L_412508:
          .string "Storing the connection for reuse (%d:%d).\n"
          .zero 5
.L_412538:
          .string "HTTP/1.1"
          .zero 7
.L_412548:
          .string "Starting authentication..."
          .zero 5
.L_412568:
          .string "Sending real request:"
          .zero 2
.L_412580:
          .string "Sending request failed!"
.L_412598:
          .string "\nReading real response:"
.L_4125b0:
          .string "Reading response failed!"
          .zero 7
.L_4125d0:
          .string "Authentication for tunnel %s failed!\n"
          .zero 2
.L_4125f8:
          .string "Request for CONNECT to %s denied!\n"
          .zero 5
.L_412620:
          .string "Tunnel requests failed!\n"
          .zero 7
.L_412640:
          .string "%s TUNNEL %s"
          .zero 3
.L_412650:
          .string "Tunneling to %s for client %d...\n"
          .zero 6
.L_412678:
          .string "Cannot detect NTLM dialect - password or all its hashes must be defined, try -I"
.L_4126c8:
          .string "url != NULL"
          .zero 4
.L_4126d8:
          .string "://"
          .zero 4
.L_4126e0:
          .string "Invalid URL (%s)\n"
          .zero 6
.L_4126f8:
          .string "GET"
          .zero 4
.L_412700:
          .string "Host"
          .zero 3
.L_412708:
          .ascii "Config profile %2d/%d..."
.L_412720:
          .string " "
          .zero 6
.L_412728:
          .string "\nConnection to proxy failed, bailing out"
          .zero 7
.L_412758:
          .string "Auth not required (HTTP code: %d)\n"
          .zero 5
.L_412780:
          .string "Connection closed!? Proxy doesn't talk to us."
          .zero 2
.L_4127b0:
          .string "Credentials rejected (NTLM allowed)"
          .zero 4
.L_4127d8:
          .string "BASIC"
          .zero 2
.L_4127e0:
          .string "Proxy allows BASIC, Cntlm not required so it's not supported"
          .zero 3
.L_412820:
          .string "Proxy doesn't allow NTLM, Cntlm won't help"
          .zero 5
.L_412850:
          .string "OK (HTTP code: %d)\n"
          .zero 4
.L_412868:
          .string "----------------------------[ Profile %2d ]------\n"
          .zero 5
.L_4128a0:
          .string "Auth            %s\n"
          .zero 4
.L_4128b8:
          .string "Flags           0x%x\n"
          .zero 2
.L_4128d0:
          .string "PassNT          %s\n"
          .zero 4
.L_4128e8:
          .string "PassLM          %s\n"
          .zero 4
.L_412900:
          .string "PassNTLMv2      %s\n"
          .zero 4
.L_412918:
          .string "------------------------------------------------"
          .zero 7
.L_412950:
          .string "\nYour proxy is open, you don't need another proxy."
          .zero 5
.L_412988:
          .string "\nWrong credentials, invalid URL or proxy doesn't support NTLM."
          .zero 1
.L_4129c8:
          .string "NTLMv2"
          .zero 1
.L_4129d0:
          .string "LM"
          .zero 5
.L_4129d8:
          .string "NT"
          .zero 5
.L_4129e0:
          .string "NTLM2SR"
.L_4129e8:
          .string ":"
          .zero 6
.L_4129f0:
          .string "HEAD: %s"
          .zero 7
.L_412a00:
          .string "HTTP/"
          .zero 2
.L_412a08:
          .string "ICY"
          .zero 4
.L_412a10:
          .string " HTTP/"
          .zero 1
.L_412a18:
          .string "headers_recv: Unknown header (%s).\n"
          .zero 4
.L_412a40:
          .string "headers_recv: no host name (%s)\n"
          .zero 7
.L_412a68:
          .string "https"
          .zero 2
.L_412a70:
          .string "src/http.c"
          .zero 5
.L_412a80:
          .string "data->hostname != NULL"
          .zero 1
.L_412a98:
          .string "headers_recv: fd %d error %d\n"
          .zero 2
.L_412ab8:
          .ascii "%s %s %s"
.L_412ac0:
          .string "\r\n"
          .zero 5
.L_412ac8:
          .string "%s %03d %s\r\n"
          .zero 3
.L_412ad8:
          .string "%s: %s\r\n"
          .zero 7
.L_412ae8:
          .string "headers_send: fd %d warning %d (connection closed)\n"
          .zero 4
.L_412b20:
          .string "ok"
          .zero 5
.L_412b28:
          .string "data_send: read %d of %d / %d of %lld (errno = %s)\n"
          .zero 4
.L_412b60:
          .string "data_send: wrote %d of %d\n"
          .zero 5
.L_412b80:
          .string "data_send: fds %d:%d warning %d (connection closed)\n"
          .zero 3
.L_412bb8:
          .string "chunked_data_send: aborting, read error"
.L_412be0:
          .string "chunked_data_send: aborting, chunk size format error"
          .zero 3
.L_412c18:
          .string "chunked_data_send: aborting, data_send failed"
          .zero 2
.L_412c48:
          .string "tunnel: select cli: %d, srv: %d\n"
          .zero 7
.L_412c70:
          .string "Internal error in function http_has_body(): Both arguments to function seem to be invalid/NULL: request: %p response: %p\n"
          .zero 6
.L_412cf0:
          .string "Content-Type"
          .zero 3
.L_412d00:
          .string "chunked"
.L_412d08:
          .string "Chunked body sent.\n"
          .zero 4
.L_412d20:
          .string "Could not chunk send whole body\n"
          .zero 7
.L_412d48:
          .string "Body sent.\n"
          .zero 4
.L_412d58:
          .string "Could not send whole body\n"
          .zero 5
.L_412d78:
          .string "Chunked body included."
          .zero 1
.L_412d90:
          .string "%s"
          .zero 5
.L_412d98:
          .string "Body included. Length: %lld\n"
          .zero 3
.L_412db8:
          .string "No body."
          .zero 7
.L_412dc8:
          .string "Discarding chunked body."
          .zero 7
.L_412de8:
          .string "Discarding %lld bytes.\n"
.L_412e00:
          .string "basic"
          .zero 2
.L_412e08:
          .string "tmp != NULL"
          .zero 4
.L_412e18:
          .string "Signal %d received, issuing clean shutdown\n"
          .zero 4
.L_412e48:
          .string "Signal %d received, forcing shutdown\n"
          .zero 2
.L_412e70:
          .string "Cannot resolve listen address %s\n"
          .zero 6
.L_412e98:
          .string "New %s service on %s\n"
          .zero 2
.L_412eb0:
          .string "Invalid tunnel local port: %s\n"
          .zero 1
.L_412ed0:
          .string "Cannot resolve tunnel bind address: %s:%s\n"
          .zero 5
.L_412f00:
          .string "Invalid tunnel target: %s:%s\n"
          .zero 2
.L_412f20:
          .string "New tunnel to %s\n"
          .zero 6
.L_412f38:
          .string "Unable to bind tunnel"
          .zero 2
.L_412f50:
          .string "Tunnel specification incorrect ([laddress:]lport:rserver:rport)."
          .zero 7
.L_412f98:
          .string ", "
          .zero 5
.L_412fa0:
          .string "Adding no-proxy for: '%s'\n"
          .zero 5
.L_412fc0:
          .string "MATCH: %s (%s)\n"
.L_412fd0:
          .string "   NO: %s (%s)\n"
.L_412fe0:
          .string "\n******* Round 1 C: %d *******\n"
.L_413000:
          .string "proxy_thread: request rc = %p\n"
          .zero 1
.L_413020:
          .string "src/main.c"
          .zero 5
.L_413030:
          .string "SOCKS5: write() for accepting AUTH method failed.\n"
          .zero 5
.L_413068:
          .string "SOCKS5: write() for response of credentials check failed.\n"
          .zero 5
.L_4130a8:
          .string "%d"
          .zero 5
.L_4130b0:
          .string "SOCKS5: write() for reporting success for connect failed.\n"
          .zero 5
.L_4130f0:
          .string "%s SOCKS %s"
          .zero 4
.L_413100:
          .string "%d.%d.%d.%d"
          .zero 4
.L_413110:
          .string "cntlm"
          .zero 2
.L_413118:
          .string "Starting cntlm version 0.94beta1 for LITTLE endian\n"
          .zero 4
.L_413150:
          .string "*%s*"
          .zero 3
.L_413158:
          .string "Proxy"
          .zero 2
.L_413160:
          .string "SOCKS5 proxy"
          .zero 3
.L_413170:
          .string "Invalid username:password format for -R: %s\n"
          .zero 3
.L_4131a0:
          .string "Cannot create trace file.\n"
          .zero 5
.L_4131c0:
          .string "Redirecting all output to %s\n"
          .zero 2
.L_4131e0:
          .string "@"
          .zero 6
.L_4131e8:
          .string "This feature is available under Windows only!\n"
          .zero 1
.L_413218:
          .string ":-:T:a:c:d:fghIl:p:r:su:vw:x:A:BD:F:G:HL:M:N:O:P:R:S:U:X:q"
          .zero 5
.L_413258:
          .string "CNTLM - Accelerating NTLM Authentication Proxy version 0.94beta1"
          .zero 7
.L_4132a0:
          .string "Copyright (c) 2oo7-2o1o David Kubicek\n\nThis program comes with NO WARRANTY, to the extent permitted by law. You\nmay redistribute copies of it under the terms of the GNU GPL Version 2 or\nnewer. For more information about these matters, see the file LICENSE.\nFor copyright holders of included encryption routines see headers.\n"
          .zero 3
.L_4133e8:
          .string "Usage: %s [-AaBcDdFfGgHhILlMNOPpqRrSsTUuvwXx] <proxy_host>[:]<proxy_port> ...\n"
          .zero 1
.L_413438:
          .string "\t-A  <address>[/<net>]\n\t    ACL allow rule. IP or hostname, net must be a number (CIDR notation)\n"
          .zero 6
.L_4134a0:
          .string "\t-a  ntlm | nt | lm\n\t    Authentication type - combined NTLM, just LM, or just NT. Default NTLM.\n\t    NTLM is the most versatile setting and likely to work for you.\n"
          .zero 2
.L_413548:
          .string "\t-B  Enable NTLM-to-basic authentication.\n"
          .zero 5
.L_413578:
          .string "\t-c  <config_file>\n\t    Configuration file. Other arguments can be used as well, overriding\n\t    config file settings.\n"
.L_4135f0:
          .string "\t-D  <address>[/<net>]\n\t    ACL deny rule. Syntax same as -A.\n"
          .zero 1
.L_413630:
          .string "\t-d  <domain>\n\t    Domain/workgroup can be set separately.\n"
          .zero 4
.L_413670:
          .string "\t-F  <flags>\n\t    NTLM authentication flags.\n"
          .zero 2
.L_4136a0:
          .string "\t-f  Run in foreground, do not fork into daemon mode.\n"
          .zero 1
.L_4136d8:
          .string "\t-G  <pattern>\n\t    User-Agent matching for the trans-isa-scan plugin.\n"
.L_413720:
          .string "\t-g  Gateway mode - listen on all interfaces, not only loopback.\n"
          .zero 6
.L_413768:
          .string "\t-H  Print password hashes for use in config file (NTLMv2 needs -u and -d).\n"
          .zero 3
.L_4137b8:
          .string "\t-h  Print this help info along with version number.\n"
          .zero 2
.L_4137f0:
          .string "\t-I  Prompt for the password interactively.\n"
          .zero 3
.L_413820:
          .string "\t-L  [<saddr>:]<lport>:<rhost>:<rport>\n\t    Forwarding/tunneling a la OpenSSH. Same syntax - listen on lport\n\t    and forward all connections through the proxy to rhost:rport.\n\t    Can be used for direct tunneling without corkscrew, etc.\n"
          .zero 1
.L_413910:
          .string "\t-l  [<saddr>:]<lport>\n\t    Main listening port for the NTLM proxy.\n"
          .zero 3
.L_413958:
          .string "\t-M  <testurl>\n\t    Magic autodetection of proxy's NTLM dialect.\n"
          .zero 6
.L_4139a0:
          .string "\t-N  \"<hostname_wildcard1>[, <hostname_wildcardN>\"\n\t    List of URL's to serve directly as stand-alone proxy (e.g. '*.local')\n"
          .zero 1
.L_413a20:
          .string "\t-O  [<saddr>:]<lport>\n\t    Enable SOCKS5 proxy on port lport (binding to address saddr)\n"
          .zero 6
.L_413a80:
          .string "\t-P  <pidfile>\n\t    Create a PID file upon successful start.\n"
          .zero 2
.L_413ac0:
          .string "\t-p  <password>\n\t    Account password. Will not be visible in \"ps\", /proc, etc.\n"
          .zero 7
.L_413b18:
          .string "\t-q  Sets the Syslog logging level to DEBUG (default level is INFO).\n"
          .zero 2
.L_413b60:
          .string "\t-R  <username>:<password>\n\t    Enable authorization for SOCKS5 proxy, when enabled.\n\t    It can be used several times, to create a whole list of accounts.\n"
          .zero 3
.L_413c00:
          .string "\t-r  \"HeaderName: value\"\n\t    Add a header substitution. All such headers will be added/replaced\n\t    in the client's requests.\n"
          .zero 7
.L_413c88:
          .string "\t-S  <size_in_kb>\n\t    Enable automation of GFI WebMonitor ISA scanner for files < size_in_kb.\n"
.L_413ce8:
          .string "\t-s  Do not use threads, serialize all requests - for debugging only.\n"
          .zero 1
.L_413d30:
          .string "\t-T  <file.log>\n\t    Redirect all debug information into a trace file for support upload.\n\t    MUST be the first argument on the command line, implies -v.\n"
          .zero 4
.L_413dd0:
          .string "\t-U  <uid>\n\t    Run as uid. It is an important security measure not to run as root.\n"
          .zero 3
.L_413e28:
          .string "\t-u  <user>[@<domain]\n\t    Domain/workgroup can be set separately.\n"
          .zero 4
.L_413e70:
          .string "\t-v  Print debugging information.\n"
          .zero 5
.L_413e98:
          .string "\t-w  <workstation>\n\t    Some proxies require correct NetBIOS hostname.\n"
.L_413ee0:
          .string "\t-X  <sspi_handle_type>\n\t    Use SSPI with specified handle type. Works only under Windows.\n\t    Default is negotiate.\n"
.L_413f58:
          .string "Cntlm debug trace, version 0.94beta1"
          .zero 3
.L_413f80:
          .string ".\nCommand line: "
          .zero 7
.L_413f98:
          .string "%s "
          .zero 4
.L_413fa0:
          .string "Cannot access specified config file: %s\n"
          .zero 7
.L_413fd0:
          .string "Gateway"
.L_413fd8:
          .string "yes"
          .zero 4
.L_413fe0:
          .string "NTLMToBasic"
          .zero 4
.L_413ff0:
          .string "Tunnel"
          .zero 1
.L_413ff8:
          .string "Listen"
          .zero 1
.L_414000:
          .string "SOCKS5Proxy"
          .zero 4
.L_414010:
          .string "Invalid header format: %s\n"
          .zero 5
.L_414030:
          .string "Header"
          .zero 1
.L_414038:
          .string "Allow"
          .zero 2
.L_414040:
          .string "Deny"
          .zero 3
.L_414048:
          .string "Auth"
          .zero 3
.L_414050:
          .string "Domain"
          .zero 1
.L_414058:
          .string "Password"
          .zero 7
.L_414068:
          .string "PassNTLMv2"
          .zero 5
.L_414078:
          .string "PassNT"
          .zero 1
.L_414080:
          .string "PassLM"
          .zero 1
.L_414088:
          .string "Username"
          .zero 7
.L_414098:
          .string "Workstation"
          .zero 4
.L_4140a8:
          .string "Flags"
          .zero 2
.L_4140b0:
          .string "ISAScannerSize"
          .zero 1
.L_4140c0:
          .string "NoProxy"
.L_4140c8:
          .string "Invalid username:password format for SOCKS5User: %s\n"
          .zero 3
.L_414100:
          .string "SOCKS5Users"
          .zero 4
.L_414110:
          .string "ISAScannerAgent"
.L_414120:
          .string "Ignoring config file option: %s\n"
          .zero 7
.L_414148:
          .string "Parent proxy address missing.\n"
          .zero 1
.L_414168:
          .string "No proxy service ports were successfully opened.\n"
          .zero 6
.L_4141a0:
          .string "Workstation name used: %s\n"
          .zero 5
.L_4141c0:
          .string "ntlm"
          .zero 3
.L_4141c8:
          .string "lm"
          .zero 5
.L_4141d0:
          .string "ntlmv2"
          .zero 1
.L_4141d8:
          .string "ntlm2sr"
.L_4141e0:
          .string "Unknown NTLM auth combination.\n"
.L_414200:
          .string "SOCKS5 proxy will NOT require any authentication\n"
          .zero 6
.L_414238:
          .string "Using following NTLM hashes: NTLMv2(%d) NT(%d) LM(%d)\n"
          .zero 1
.L_414270:
          .string "Using manual NTLM flags: 0x%X\n"
          .zero 1
.L_414290:
          .string "Password: "
          .zero 5
.L_4142a0:
          .string "Invalid PassNTLMv2 hash, terminating\n"
          .zero 2
.L_4142c8:
          .string "Invalid PassNT hash, terminating\n"
          .zero 6
.L_4142f0:
          .string "Invalid PassLM hash, terminating\n"
          .zero 6
.L_414318:
          .string "PassNTLMv2      %s    # Only for user '%s', domain '%s'\n"
          .zero 7
.L_414358:
          .string "Parent proxy account password (or required hashes) missing.\n"
          .zero 3
.L_414398:
          .string "Cntlm ready, staying in the foreground"
          .zero 1
.L_4143c0:
          .string "Forking into background as requested."
          .zero 2
.L_4143e8:
          .string "Fork into background failed"
          .zero 4
.L_414408:
          .string "chdir(\"/\") failed"
          .zero 6
.L_414420:
          .string "/dev/null"
          .zero 6
.L_414430:
          .string "Daemon ready"
          .zero 3
.L_414440:
          .ascii "No root privileges; keeping identity %d:"
.L_414468:
          .string "%d\n"
          .zero 4
.L_414470:
          .string "Numerical uid parameter invalid\n"
          .zero 7
.L_414498:
          .string "Username %s in -U is invalid\n"
          .zero 2
.L_4144b8:
          .string "Setting group identity failed: %s\n"
          .zero 5
.L_4144e0:
          .string "Terminating\n"
          .zero 3
.L_4144f0:
          .string "Changing uid:gid to %d:%d - %s\n"
.L_414510:
          .string "Error creating a new PID file (%s)\n"
          .zero 4
.L_414538:
          .string "Error writing to the PID file\n"
          .zero 1
.L_414558:
          .string "Serious error during accept: %s\n"
          .zero 7
.L_414580:
          .string "Connection denied for %s:%d\n"
          .zero 3
.L_4145a0:
          .string "Serious error during pthread_create: %d\n"
          .zero 7
.L_4145d0:
          .string "Serious error during select: %s\n"
          .zero 7
.L_4145f8:
          .string "Terminated thread %lu; rc: %d\n"
          .zero 1
.L_414618:
          .string "Terminating with %u active threads\n"
          .zero 4
.L_414640:
          .string "You're requesting with empty auth_s?!"
          .zero 2
.L_414668:
          .string "NTLM Request:"
          .zero 2
.L_414678:
          .string "\t   Domain: %s\n"
.L_414688:
          .string "\t Hostname: %s\n"
.L_414698:
          .string "\t    Flags: 0x%X\n"
          .zero 6
.L_4146b0:
          .string "NTLM Challenge:"
.L_4146c0:
          .string "\tChallenge: %s (len: %d)\n"
          .zero 6
.L_4146e0:
          .string "\t   Server: "
          .zero 3
.L_4146f0:
          .string "\tNT domain: "
          .zero 3
.L_414700:
          .string "\t     FQDN: "
          .zero 3
.L_414710:
          .string "\t   Domain: "
          .zero 3
.L_414720:
          .string "\t      TLD: "
          .zero 3
.L_414730:
          .string "\t      %3d: "
          .zero 3
.L_414740:
          .string "\t    TBofs: %d\n\t    TBlen: %d\n\t    ttype: %d\n"
          .zero 2
.L_414770:
          .string "NTLMv2:\n\t    Nonce: %s\n\tTimestamp: %ld\n"
.L_414798:
          .string "NTLM Response:"
          .zero 1
.L_4147a8:
          .string "\t Hostname: '%s'\n"
          .zero 6
.L_4147c0:
          .string "\t   Domain: '%s'\n"
          .zero 6
.L_4147d8:
          .string "\t Username: '%s'\n"
          .zero 6
.L_4147f0:
          .string "\t Response: '%s' (%d)\n"
          .zero 1
.L_414808:
          .string "HTTP/1.0"
          .zero 7
.L_414818:
          .string "%s 407 Access denied\r\nProxy-Authenticate: Basic realm=\"Cntlm Proxy\"\r\nContent-Type: text/html\r\n\r\n<html><body><h1>407 Access denied</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> requests your credentials for proxy access.</p></body></html>"
.L_414908:
          .string "%s 401 Access denied\r\nWWW-Authenticate: Basic realm=\"%s:%d\"\r\nContent-Type: text/html\r\n\r\n<html><body><h1>401 Access denied</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> proxy requests your credentials for this URL.</p></body></html>"
          .zero 6
.L_4149f8:
          .string "client"
          .zero 1
.L_414a00:
          .string "HTTP/1.0 407 Access denied\r\nContent-Type: text/html\r\n\r\n<html><body><h1>Access denied</h1><p>Your request has been declined, %s is not allowed to connect.</p></body></html>"
          .zero 4
.L_414ab0:
          .string "Proxy error"
          .zero 4
.L_414ac0:
          .string "%s 502 %s\r\nContent-Type: text/html\r\n\r\n<html><body><h1>502 %s</h1><p><a href='http://cntlm.sf.net/'>Cntlm</a> proxy failed to complete the request.</p></body></html>"
          .zero 3
.L_414b68:
          .string "List data: %lu => DIRECT\n"
          .zero 6
.L_414b88:
          .string "List data: %lu => %s:%d\n"
          .zero 7
.L_414ba8:
          .string "Invalid port in proxy address %s\n"
          .zero 6
.L_414bd0:
          .string "Port not found in proxy address %s\n"
          .zero 4
.L_414bf8:
          .string ";"
          .zero 6
.L_414c00:
          .string "Parsed PAC Proxies:"
          .zero 4
.L_414c18:
          .string "PROXY"
          .zero 2
.L_414c20:
          .string "   %s %s %s\n"
          .zero 3
.L_414c30:
          .string "   %s\n"
          .zero 1
.L_414c38:
          .string "Created PAC list with %d item(s):\n"
          .zero 5
.L_414c60:
          .string "Found PAC list for [%s]\n"
          .zero 7
.L_414c80:
          .string "New PAC list for [%s]\n"
          .zero 1
.L_414c98:
          .string "src/proxy.c"
          .zero 4
.L_414ca8:
          .string "false"
          .zero 2
.L_414cb0:
          .string "Resolving proxy %s...\n"
          .zero 1
.L_414cc8:
          .string "Cannot resolve proxy %s\n"
          .zero 7
.L_414ce8:
          .string "Proxy connect failed, will try %s:%d\n"
          .zero 2
.L_414d10:
          .string "No proxy on the list works. You lose.\n"
          .zero 1
.L_414d38:
          .string "sent HEAD"
          .zero 6
.L_414d48:
          .string "has a body"
          .zero 5
.L_414d58:
          .string "Will send just a probe request."
.L_414d78:
          .string "\nSending PROXY auth request..."
          .zero 1
.L_414d98:
          .string "\nReading PROXY auth response..."
.L_414db8:
          .string "Proxy returning invalid challenge!\n"
          .zero 4
.L_414de0:
          .string "No Proxy-Authenticate, NTLM/Negotiate not supported?\n"
          .zero 2
.L_414e18:
          .string "Client %s - forcing second request.\n"
          .zero 3
.L_414e40:
          .string "Proxy closed on us, reconnect."
          .zero 1
.L_414e60:
          .ascii "User-Age"
.L_414e68:
          .string "nt"
          .zero 5
.L_414e70:
          .string "scanner_hook: matching U-A header (%s) to %s\n"
          .zero 2
.L_414ea0:
          .string "scanner_hook: positive match!"
          .zero 2
.L_414ec0:
          .string "scanner_hook: read %d of %d\n"
          .zero 3
.L_414ee0:
          .string "<title>Downloading status</title>"
          .zero 6
.L_414f08:
          .string "ISAServerUniqueID="
          .zero 5
.L_414f20:
          .string "scanner_hook: ISA id = %s\n"
          .zero 5
.L_414f40:
          .string "UpdatePage("
          .zero 4
.L_414f50:
          .string "DownloadFinished("
          .zero 6
.L_414f68:
          .string "scanner_hook: %s"
          .zero 7
.L_414f80:
          .string "To be downloaded"
          .zero 7
.L_414f98:
          .string "scanner_hook: file size detected: %ld KiBs (max: %ld)\n"
          .zero 1
.L_414fd0:
          .string "scanner_hook: file size unknown -- quitting"
          .zero 4
.L_415000:
          .string "%s 200 OK\r\n"
          .zero 4
.L_415010:
          .string "scanner_hook: Giving up, \"To be downloaded\" line not found!"
          .zero 4
.L_415050:
          .string "ISA-Scanner: %ld of %ld\r\n"
          .zero 6
.L_415070:
          .string "\",\""
          .zero 4
.L_415078:
          .string "%surl=%s&%sSaveToDisk=YES&%sOrig=%s"
          .zero 4
.L_4150a0:
          .string "scanner_hook: Getting file with URL data = %s\n"
          .zero 1
.L_4150d0:
          .string "POST"
          .zero 3
.L_4150d8:
          .string "Referer"
.L_4150e0:
          .string "application/x-www-form-urlencoded"
          .zero 6
.L_415108:
          .string "scanner_hook: Authentication OK, getting the file..."
          .zero 3
.L_415140:
          .string "scanner_hook: Authentication failed or refused!"
.L_415170:
          .string "%ld"
          .zero 4
.L_415178:
          .string "scanner_hook: New request failed"
          .zero 7
.L_4151a0:
          .string "scanner_hook: ISA id not found"
          .zero 1
.L_4151c0:
          .string "scanner_hook: flushing %d original bytes\n"
          .zero 6
.L_4151f0:
          .string "scanner_hook: failed to send headers"
          .zero 3
.L_415218:
          .string "scanner_hook: ending with %d\n"
          .zero 2
.L_415238:
          .string "so_resolv: %s failed: %s (%d)\n"
          .zero 1
.L_415258:
          .string "Resolve %s:\n"
          .zero 3
.L_415268:
          .string "     %s\n"
          .zero 7
.L_415278:
          .string "so_connect: create: %s\n"
.L_415290:
          .string "so_connect: %s : %i \n"
          .zero 2
.L_4152a8:
          .string "so_connect: get flags: %s\n"
          .zero 5
.L_4152c8:
          .string "so_connect: %s\n"
.L_4152d8:
          .string "so_connect: set blocking: %s\n"
          .zero 2
.L_4152f8:
          .string "so_listen: new socket: %s\n"
          .zero 5
.L_415318:
          .string "setsockopt() (option: SO_REUSEADDR, value: 1) failed: %s\n"
          .zero 6
.L_415358:
          .string "setsockopt() (option: IPV6_V6ONLY, value: 1) failed: %s\n"
          .zero 7
.L_415398:
          .string "Cannot bind address %s port %d: %s!\n"
          .zero 3
.L_4153c0:
          .string "so_listen: listening on %s:%d\n"
          .zero 1
.L_4153e0:
          .string "so_recvln(%d): realloc %d\n"
          .zero 5
.L_415400:
          .string "Exiting with error. Check daemon logs or run with -v.\n"
          .zero 1
.L_415438:
          .string "List data: %lu => 0x%8p\n"
          .zero 7
.L_415458:
          .string "%-30s => %s\n"
          .zero 3
.L_415468:
          .string "src/utils.c"
          .zero 4
.L_415478:
          .string "src != NULL"
          .zero 4
.L_415488:
          .string "pos >= 0"
          .zero 7
.L_415498:
          .string "len >= 0"
          .zero 7
.L_4154a8:
          .string "Internal error in reset_rr_data: Pointer data is NULL\n"
          .zero 1
.L_4154e0:
          .string "Internal error in copy_rr_data: Pointer dst is NULL\n"
          .zero 3
.L_415518:
          .string "Internal error in copy_rr_data: Pointer src is NULL\n"
          .zero 3
.L_415550:
          .string "Internal error in dup_rr_data: Pointer data is NULL\n"
          .zero 3
.L_415588:
          .string "Internal error in free_rr_data: Pointer pdata is NULL\n"
          .zero 1
.L_4155c0:
          .string "buf != NULL"
          .zero 4
.L_4155d0:
          .string "str != NULL"
          .zero 4
.L_4155e0:
          .string "key != NULL"
          .zero 4
.L_4155f0:
          .string "substr != NULL"
          .zero 1
.L_415600:
          .string "%%%X"
          .zero 3
.L_415608:
          .string "rb"
          .zero 5
.L_415610:
          .string "/dev/urandom"
          .zero 3
.L_415620:
          .string "fread for /dev/urandom failed: %s\n"
          .zero 5
.L_415648:
          .string "/dev/urandom can not be opened for reading"
          .zero 5
.L_415678:
          .string "write() failed with error %d: %s\n"
          .zero 6
.L_4156a0:
          .string "ERROR: write() only wrote %zu of %zu bytes after %zu retries.\n"
          .zero 1
.L_4156e0:
          .string "src/xcrypt.c"
          .zero 3
.L_4156f0:
          .string "(dest != NULL && src != NULL) || n == 0"
.L_415718:
          .string "ctx != NULL"
          .zero 4
.L_415728:
          .string "resbuf != NULL"
          .zero 1
.L_415738:
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_415740:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_415748:
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x2
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_415750:
          .byte 0x1
          .byte 0x1
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
          .byte 0x0
.L_415758:
#-----------------------------------
.type __PRETTY_FUNCTION__.2, @object
.size __PRETTY_FUNCTION__.2, 16
#-----------------------------------
__PRETTY_FUNCTION__.2:
          .string "forward_request"
.L_415768:
#-----------------------------------
.type __PRETTY_FUNCTION__.1, @object
.size __PRETTY_FUNCTION__.1, 15
#-----------------------------------
__PRETTY_FUNCTION__.1:
          .string "forward_tunnel"
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
.L_4157e0:
#-----------------------------------
.type __PRETTY_FUNCTION__.0, @object
.size __PRETTY_FUNCTION__.0, 18
#-----------------------------------
__PRETTY_FUNCTION__.0:
          .string "magic_auth_detect"
          .zero 6
          .quad .L_4129c8
          .quad .L_412118
          .quad .L_4129d0
          .quad .L_4129d8
          .quad .L_4129e0
.L_415820:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x415820_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x415820_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x415820_0:
          .string "headers_recv"
          .zero 3
.L_415830:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x415830_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x415830_0, 17
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x415830_0:
          .string "http_parse_basic"
          .zero 7
.L_415848:
          .short (.L_402b70-.L_402b70)/4
          .short (.L_402ff8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402b70-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402f78-.L_402b70)/4
          .short (.L_402f08-.L_402b70)/4
          .short (.L_402efc-.L_402b70)/4
          .short (.L_402ef0-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402ed8-.L_402b70)/4
          .short (.L_402ec4-.L_402b70)/4
          .short (.L_402e90-.L_402b70)/4
          .short (.L_402e70-.L_402b70)/4
          .short (.L_402e58-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402e14-.L_402b70)/4
          .short (.L_402df0-.L_402b70)/4
          .short (.L_402b94-.L_402b70)/4
          .short (.L_402dd8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402d98-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402dc0-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402cf8-.L_402b70)/4
          .short (.L_402ce0-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402be8-.L_402b70)/4
          .short (.L_403004-.L_402b70)/4
          .short (.L_402db4-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402d78-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402d18-.L_402b70)/4
          .short (.L_402d0c-.L_402b70)/4
          .short (.L_402c7c-.L_402b70)/4
          .short (.L_402c70-.L_402b70)/4
          .short (.L_4028a8-.L_402b70)/4
          .short (.L_402c00-.L_402b70)/4
          .short (.L_402bf0-.L_402b70)/4
          .short (.L_402cc8-.L_402b70)/4
          .zero 2
.L_4158b8:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x4158b8_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x4158b8_0, 14
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x4158b8_0:
          .string "tunnel_thread"
          .zero 10
.L_4158d0:
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
.L_4158e0:
          .byte 0x0
          .byte 0x0
          .byte 0x0
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
.L_4158f0:
          .byte 0x1
          .byte 0x23
          .byte 0x45
          .byte 0x67
          .byte 0x89
          .byte 0xab
          .byte 0xcd
          .byte 0xef
          .byte 0xfe
          .byte 0xdc
          .byte 0xba
          .byte 0x98
          .byte 0x76
          .byte 0x54
          .byte 0x32
          .byte 0x10
.L_415900:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x415900_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x415900_0, 14
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x415900_0:
          .string "proxy_connect"
          .zero 2
#-----------------------------------
.type __PRETTY_FUNCTION__.8, @object
.size __PRETTY_FUNCTION__.8, 7
#-----------------------------------
__PRETTY_FUNCTION__.8:
          .string "substr"
          .zero 1
#-----------------------------------
.type __PRETTY_FUNCTION__.5, @object
.size __PRETTY_FUNCTION__.5, 14
#-----------------------------------
__PRETTY_FUNCTION__.5:
          .string "reset_rr_data"
          .zero 2
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
.type __PRETTY_FUNCTION__.4, @object
.size __PRETTY_FUNCTION__.4, 13
#-----------------------------------
__PRETTY_FUNCTION__.4:
          .string "free_rr_data"
          .zero 3
.L_415958:
#-----------------------------------
.type __PRETTY_FUNCTION__.3, @object
.size __PRETTY_FUNCTION__.3, 6
#-----------------------------------
__PRETTY_FUNCTION__.3:
          .string "trimr"
          .zero 2
.L_415960:
#-----------------------------------
.type __PRETTY_FUNCTION__.2_disambig_0x415960_0, @object
.size __PRETTY_FUNCTION__.2_disambig_0x415960_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.2_disambig_0x415960_0:
          .string "lowercase"
          .zero 6
#-----------------------------------
.type __PRETTY_FUNCTION__.9, @object
.size __PRETTY_FUNCTION__.9, 17
#-----------------------------------
__PRETTY_FUNCTION__.9:
          .string "hlist_subcmp_all"
          .zero 7
.L_415988:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x415988_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x415988_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x415988_0:
          .string "uppercase"
          .zero 6
.L_415998:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x415998_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x415998_0, 10
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x415998_0:
          .string "urlencode"
          .zero 14
#-----------------------------------
.type hextab, @object
.size hextab, 17
#-----------------------------------
hextab:
          .string "0123456789ABCDEF"
          .zero 15
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
.L_4168e0:
#-----------------------------------
.type __PRETTY_FUNCTION__.3_disambig_0x4168e0_0, @object
.size __PRETTY_FUNCTION__.3_disambig_0x4168e0_0, 7
#-----------------------------------
__PRETTY_FUNCTION__.3_disambig_0x4168e0_0:
          .string "memxor"
          .zero 1
.L_4168e8:
#-----------------------------------
.type __PRETTY_FUNCTION__.2_disambig_0x4168e8_0, @object
.size __PRETTY_FUNCTION__.2_disambig_0x4168e8_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.2_disambig_0x4168e8_0:
          .string "md5_init_ctx"
          .zero 3
.L_4168f8:
#-----------------------------------
.type __PRETTY_FUNCTION__.1_disambig_0x4168f8_0, @object
.size __PRETTY_FUNCTION__.1_disambig_0x4168f8_0, 13
#-----------------------------------
__PRETTY_FUNCTION__.1_disambig_0x4168f8_0:
          .string "md5_read_ctx"
          .zero 3
.L_416908:
#-----------------------------------
.type __PRETTY_FUNCTION__.0_disambig_0x416908_0, @object
.size __PRETTY_FUNCTION__.0_disambig_0x416908_0, 15
#-----------------------------------
__PRETTY_FUNCTION__.0_disambig_0x416908_0:
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
.L_430328:
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
.globl quit
.type quit, @object
.size quit, 4
#-----------------------------------
quit:
          .zero 4
#-----------------------------------
.globl debug
.type debug, @object
.size debug, 4
#-----------------------------------
debug:
          .zero 4
#-----------------------------------
.globl noproxy_list
.type noproxy_list, @object
.size noproxy_list, 8
#-----------------------------------
noproxy_list:
          .zero 8
#-----------------------------------
.globl serialize
.type serialize, @object
.size serialize, 4
#-----------------------------------
serialize:
          .zero 8
#-----------------------------------
.globl threads_mtx
.type threads_mtx, @object
.size threads_mtx, 48
#-----------------------------------
threads_mtx:
          .zero 48
#-----------------------------------
.globl threads_list
.type threads_list, @object
.size threads_list, 8
#-----------------------------------
threads_list:
          .zero 8
#-----------------------------------
.globl users_list
.type users_list, @object
.size users_list, 8
#-----------------------------------
users_list:
          .zero 8
#-----------------------------------
.globl g_creds
.type g_creds, @object
.size g_creds, 8
#-----------------------------------
g_creds:
          .zero 8
#-----------------------------------
.globl ntlmbasic
.type ntlmbasic, @object
.size ntlmbasic, 4
#-----------------------------------
ntlmbasic:
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
.globl scanner_agent_list
.type scanner_agent_list, @object
.size scanner_agent_list, 8
#-----------------------------------
scanner_agent_list:
          .zero 8
#-----------------------------------
.globl header_list
.type header_list, @object
.size header_list, 8
#-----------------------------------
header_list:
          .zero 8
#-----------------------------------
.globl connection_mtx
.type connection_mtx, @object
.size connection_mtx, 48
#-----------------------------------
connection_mtx:
          .zero 48
#-----------------------------------
.globl connection_list
.type connection_list, @object
.size connection_list, 8
#-----------------------------------
connection_list:
          .zero 8
#-----------------------------------
.globl pac_initialized
.type pac_initialized, @object
.size pac_initialized, 4
#-----------------------------------
pac_initialized:
          .zero 8
#-----------------------------------
.globl parent_list
.type parent_list, @object
.size parent_list, 8
#-----------------------------------
parent_list:
          .zero 8
#-----------------------------------
.globl parent_count
.type parent_count, @object
.size parent_count, 4
#-----------------------------------
parent_count:
          .zero 8
#-----------------------------------
.globl pac_list
.type pac_list, @object
.size pac_list, 8
#-----------------------------------
pac_list:
          .zero 8
#-----------------------------------
.globl parent_mtx
.type parent_mtx, @object
.size parent_mtx, 48
#-----------------------------------
parent_mtx:
          .zero 48
#-----------------------------------
.globl parent_curr
.type parent_curr, @object
.size parent_curr, 8
#-----------------------------------
parent_curr:
          .zero 8
#-----------------------------------
.globl pac_mtx
.type pac_mtx, @object
.size pac_mtx, 48
#-----------------------------------
pac_mtx:
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
.L_4304b0:
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
.symver __ctype_toupper_loc,__ctype_toupper_loc@GLIBC_2.17
.globl __ctype_toupper_loc
.type __ctype_toupper_loc, @function
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
.symver strtoll,strtoll@GLIBC_2.17
.globl strtoll
.type strtoll, @function
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
