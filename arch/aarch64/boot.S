.global start
start:
	/* Save device tree address */
	adrp	x1, dtb
	str	x0, [x1, #:lo12:dtb]

	adrp    x0, init_stack_top
	mov     sp, x0

	bl	start_kernel

	bl	halt

halt:	wfi
	b	halt

.bss
.align 16
init_stack_bottom = .
. = . + 4096
init_stack_top = .
