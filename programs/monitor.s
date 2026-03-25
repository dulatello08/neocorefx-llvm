	.text
	.global	_start
_start:
	li	r15, #0x0000FFFC
	jal	r11, main
	halt
	.global	main                            ; -- Begin function main
main:                                   ; @main
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-332
	sw	r8, [r15 + #328]
	sw	r9, [r15 + #324]
	sw	r10, [r15 + #320]
	sw	r11, [r15 + #316]
	li	r2, #1073741836
	addi	r3, r0, #3
	sw	r3, [r2 + #0]
	li	r2, #1073741840
	addi	r3, r0, #346
	sw	r3, [r2 + #0]
	li	r8, #1073741832
	addi	r13, r0, #12
	sw	r13, [r8 + #0]
	addi	r10, r0, #0
L_BB0_1:                                ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_1
	b	L_BB0_2
L_BB0_2:
	li	r3, #1073741824
	addi	r4, r0, #13
	sw	r4, [r3 + #0]
L_BB0_3:                                ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_3
	b	L_BB0_4
L_BB0_4:
	addi	r5, r0, #10
	sw	r5, [r3 + #0]
L_BB0_5:                                ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_5
	b	L_BB0_6
L_BB0_6:
	addi	r6, r0, #110
	sw	r6, [r3 + #0]
L_BB0_7:                                ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_7
	b	L_BB0_8
L_BB0_8:
	addi	r2, r0, #101
	sw	r2, [r15 + #32]
	sw	r2, [r3 + #0]
L_BB0_9:                                ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_9
	b	L_BB0_10
L_BB0_10:
	addi	r2, r0, #111
	sw	r2, [r15 + #40]
	sw	r2, [r3 + #0]
L_BB0_11:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_11
	b	L_BB0_12
L_BB0_12:
	addi	r2, r0, #32
	sw	r2, [r15 + #80]
	sw	r2, [r3 + #0]
L_BB0_13:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_13
	b	L_BB0_14
L_BB0_14:
	addi	r2, r0, #109
	sw	r2, [r15 + #28]
	sw	r2, [r3 + #0]
L_BB0_15:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_15
	b	L_BB0_16
L_BB0_16:
	lw	r2, [r15 + #40]
	sw	r2, [r3 + #0]
L_BB0_17:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_17
	b	L_BB0_18
L_BB0_18:
	sw	r6, [r3 + #0]
L_BB0_19:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_19
	b	L_BB0_20
L_BB0_20:
	addi	r2, r0, #105
	sw	r2, [r15 + #16]
	sw	r2, [r3 + #0]
L_BB0_21:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_21
	b	L_BB0_22
L_BB0_22:
	addi	r2, r0, #116
	sw	r2, [r15 + #36]
	sw	r2, [r3 + #0]
L_BB0_23:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_23
	b	L_BB0_24
L_BB0_24:
	lw	r2, [r15 + #40]
	sw	r2, [r3 + #0]
L_BB0_25:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_25
	b	L_BB0_26
L_BB0_26:
	addi	r2, r0, #114
	sw	r2, [r15 + #0]
	sw	r2, [r3 + #0]
L_BB0_27:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_27
	b	L_BB0_28
L_BB0_28:
	sw	r4, [r3 + #0]
L_BB0_29:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_29
	b	L_BB0_30
L_BB0_30:
	sw	r5, [r3 + #0]
L_BB0_31:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_31
	b	L_BB0_32
L_BB0_32:
	lw	r2, [r15 + #36]
	sw	r2, [r3 + #0]
L_BB0_33:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_33
	b	L_BB0_34
L_BB0_34:
	addi	r2, r0, #121
	sw	r2, [r15 + #20]
	sw	r2, [r3 + #0]
L_BB0_35:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_35
	b	L_BB0_36
L_BB0_36:
	addi	r2, r0, #112
	sw	r2, [r15 + #4]
	sw	r2, [r3 + #0]
L_BB0_37:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_37
	b	L_BB0_38
L_BB0_38:
	lw	r2, [r15 + #32]
	sw	r2, [r3 + #0]
L_BB0_39:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_39
	b	L_BB0_40
L_BB0_40:
	lw	r2, [r15 + #80]
	sw	r2, [r3 + #0]
L_BB0_41:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_41
	b	L_BB0_42
L_BB0_42:
	addi	r2, r0, #63
	sw	r2, [r15 + #12]
	sw	r2, [r3 + #0]
L_BB0_43:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_43
	b	L_BB0_44
L_BB0_44:
	lw	r2, [r15 + #80]
	sw	r2, [r3 + #0]
L_BB0_45:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_45
	b	L_BB0_46
L_BB0_46:
	addi	r2, r0, #102
	sw	r2, [r3 + #0]
L_BB0_47:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_47
	b	L_BB0_48
L_BB0_48:
	lw	r2, [r15 + #40]
	sw	r2, [r3 + #0]
L_BB0_49:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_49
	b	L_BB0_50
L_BB0_50:
	lw	r2, [r15 + #0]
	sw	r2, [r3 + #0]
L_BB0_51:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_51
	b	L_BB0_52
L_BB0_52:
	lw	r2, [r15 + #80]
	sw	r2, [r3 + #0]
L_BB0_53:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_53
	b	L_BB0_54
L_BB0_54:
	addi	r2, r0, #104
	sw	r2, [r15 + #44]
	sw	r2, [r3 + #0]
L_BB0_55:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_55
	b	L_BB0_56
L_BB0_56:
	lw	r2, [r15 + #32]
	sw	r2, [r3 + #0]
L_BB0_57:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_57
	b	L_BB0_58
L_BB0_58:
	addi	r2, r0, #108
	sw	r2, [r15 + #24]
	sw	r2, [r3 + #0]
L_BB0_59:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_59
	b	L_BB0_60
L_BB0_60:
	lw	r2, [r15 + #4]
	sw	r2, [r3 + #0]
L_BB0_61:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_61
	b	L_BB0_62
L_BB0_62:
	sw	r6, [r15 + #8]
	sw	r4, [r15 + #112]
	sw	r4, [r3 + #0]
L_BB0_63:                               ; =>This Inner Loop Header: Depth=1
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_63
	b	L_BB0_64
L_BB0_64:
	sw	r5, [r15 + #76]
	sw	r5, [r3 + #0]
	addi	r2, r15, #156
	addi	r3, r2, #3
	sw	r3, [r15 + #68]
	addi	r3, r2, #1
	sw	r3, [r15 + #64]
	sw	r2, [r15 + #72]
	addi	r2, r2, #2
	sw	r2, [r15 + #52]
	addi	r2, r0, #92
	sw	r2, [r15 + #60]
	addi	r2, r0, #8
	sw	r2, [r15 + #148]
	addi	r2, r0, #1
	sw	r2, [r15 + #152]
	addi	r2, r0, #9
	sw	r2, [r15 + #104]
	sw	r13, [r15 + #56]
L_BB0_65:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_67 Depth 2
                                        ;     Child Loop BB0_69 Depth 2
                                        ;     Child Loop BB0_71 Depth 2
                                        ;     Child Loop BB0_73 Depth 2
                                        ;     Child Loop BB0_75 Depth 2
                                        ;     Child Loop BB0_77 Depth 2
                                        ;       Child Loop BB0_78 Depth 3
                                        ;       Child Loop BB0_97 Depth 3
                                        ;       Child Loop BB0_88 Depth 3
                                        ;       Child Loop BB0_90 Depth 3
                                        ;       Child Loop BB0_92 Depth 3
                                        ;     Child Loop BB0_84 Depth 2
                                        ;     Child Loop BB0_86 Depth 2
                                        ;     Child Loop BB0_100 Depth 2
                                        ;     Child Loop BB0_105 Depth 2
                                        ;     Child Loop BB0_111 Depth 2
                                        ;     Child Loop BB0_122 Depth 2
                                        ;     Child Loop BB0_125 Depth 2
                                        ;     Child Loop BB0_135 Depth 2
                                        ;       Child Loop BB0_136 Depth 3
                                        ;       Child Loop BB0_141 Depth 3
                                        ;       Child Loop BB0_153 Depth 3
                                        ;     Child Loop BB0_155 Depth 2
                                        ;     Child Loop BB0_157 Depth 2
                                        ;     Child Loop BB0_159 Depth 2
                                        ;     Child Loop BB0_162 Depth 2
                                        ;     Child Loop BB0_164 Depth 2
                                        ;     Child Loop BB0_166 Depth 2
                                        ;     Child Loop BB0_168 Depth 2
                                        ;     Child Loop BB0_170 Depth 2
                                        ;     Child Loop BB0_182 Depth 2
                                        ;     Child Loop BB0_191 Depth 2
                                        ;     Child Loop BB0_193 Depth 2
                                        ;     Child Loop BB0_185 Depth 2
                                        ;     Child Loop BB0_187 Depth 2
                                        ;     Child Loop BB0_189 Depth 2
                                        ;     Child Loop BB0_195 Depth 2
                                        ;     Child Loop BB0_197 Depth 2
                                        ;     Child Loop BB0_200 Depth 2
                                        ;     Child Loop BB0_377 Depth 2
                                        ;     Child Loop BB0_389 Depth 2
                                        ;     Child Loop BB0_398 Depth 2
                                        ;       Child Loop BB0_399 Depth 3
                                        ;       Child Loop BB0_404 Depth 3
                                        ;       Child Loop BB0_416 Depth 3
                                        ;     Child Loop BB0_418 Depth 2
                                        ;     Child Loop BB0_420 Depth 2
                                        ;     Child Loop BB0_422 Depth 2
                                        ;     Child Loop BB0_434 Depth 2
                                        ;     Child Loop BB0_436 Depth 2
                                        ;     Child Loop BB0_438 Depth 2
                                        ;     Child Loop BB0_440 Depth 2
                                        ;     Child Loop BB0_427 Depth 2
                                        ;       Child Loop BB0_429 Depth 3
                                        ;       Child Loop BB0_432 Depth 3
                                        ;     Child Loop BB0_392 Depth 2
                                        ;       Child Loop BB0_393 Depth 3
                                        ;       Child Loop BB0_396 Depth 3
                                        ;     Child Loop BB0_501 Depth 2
                                        ;     Child Loop BB0_513 Depth 2
                                        ;     Child Loop BB0_516 Depth 2
                                        ;     Child Loop BB0_527 Depth 2
                                        ;     Child Loop BB0_530 Depth 2
                                        ;     Child Loop BB0_541 Depth 2
                                        ;     Child Loop BB0_568 Depth 2
                                        ;     Child Loop BB0_563 Depth 2
                                        ;     Child Loop BB0_569 Depth 2
                                        ;     Child Loop BB0_571 Depth 2
                                        ;     Child Loop BB0_573 Depth 2
                                        ;     Child Loop BB0_575 Depth 2
                                        ;     Child Loop BB0_551 Depth 2
                                        ;     Child Loop BB0_553 Depth 2
                                        ;     Child Loop BB0_555 Depth 2
                                        ;     Child Loop BB0_557 Depth 2
                                        ;     Child Loop BB0_543 Depth 2
                                        ;       Child Loop BB0_544 Depth 3
                                        ;       Child Loop BB0_547 Depth 3
                                        ;     Child Loop BB0_762 Depth 2
                                        ;     Child Loop BB0_774 Depth 2
                                        ;     Child Loop BB0_807 Depth 2
                                        ;     Child Loop BB0_809 Depth 2
                                        ;     Child Loop BB0_811 Depth 2
                                        ;     Child Loop BB0_813 Depth 2
                                        ;     Child Loop BB0_815 Depth 2
                                        ;     Child Loop BB0_817 Depth 2
                                        ;     Child Loop BB0_819 Depth 2
                                        ;     Child Loop BB0_821 Depth 2
                                        ;     Child Loop BB0_823 Depth 2
                                        ;     Child Loop BB0_825 Depth 2
                                        ;     Child Loop BB0_827 Depth 2
                                        ;     Child Loop BB0_829 Depth 2
                                        ;     Child Loop BB0_831 Depth 2
                                        ;     Child Loop BB0_833 Depth 2
                                        ;     Child Loop BB0_835 Depth 2
                                        ;     Child Loop BB0_837 Depth 2
                                        ;     Child Loop BB0_839 Depth 2
                                        ;     Child Loop BB0_842 Depth 2
                                        ;     Child Loop BB0_844 Depth 2
                                        ;     Child Loop BB0_846 Depth 2
                                        ;     Child Loop BB0_848 Depth 2
                                        ;     Child Loop BB0_850 Depth 2
                                        ;     Child Loop BB0_852 Depth 2
                                        ;     Child Loop BB0_854 Depth 2
                                        ;     Child Loop BB0_856 Depth 2
                                        ;     Child Loop BB0_859 Depth 2
                                        ;     Child Loop BB0_861 Depth 2
                                        ;     Child Loop BB0_863 Depth 2
                                        ;     Child Loop BB0_865 Depth 2
                                        ;     Child Loop BB0_868 Depth 2
                                        ;     Child Loop BB0_870 Depth 2
                                        ;     Child Loop BB0_872 Depth 2
                                        ;     Child Loop BB0_874 Depth 2
                                        ;       Child Loop BB0_875 Depth 3
                                        ;       Child Loop BB0_878 Depth 3
                                        ;     Child Loop BB0_777 Depth 2
                                        ;     Child Loop BB0_779 Depth 2
                                        ;     Child Loop BB0_781 Depth 2
                                        ;     Child Loop BB0_783 Depth 2
                                        ;     Child Loop BB0_785 Depth 2
                                        ;     Child Loop BB0_787 Depth 2
                                        ;     Child Loop BB0_789 Depth 2
                                        ;     Child Loop BB0_791 Depth 2
                                        ;     Child Loop BB0_793 Depth 2
                                        ;     Child Loop BB0_795 Depth 2
                                        ;     Child Loop BB0_797 Depth 2
                                        ;     Child Loop BB0_799 Depth 2
                                        ;     Child Loop BB0_801 Depth 2
                                        ;     Child Loop BB0_803 Depth 2
                                        ;     Child Loop BB0_805 Depth 2
                                        ;     Child Loop BB0_442 Depth 2
                                        ;     Child Loop BB0_454 Depth 2
                                        ;     Child Loop BB0_457 Depth 2
                                        ;     Child Loop BB0_468 Depth 2
                                        ;     Child Loop BB0_471 Depth 2
                                        ;     Child Loop BB0_482 Depth 2
                                        ;     Child Loop BB0_492 Depth 2
                                        ;     Child Loop BB0_493 Depth 2
                                        ;     Child Loop BB0_495 Depth 2
                                        ;     Child Loop BB0_497 Depth 2
                                        ;     Child Loop BB0_499 Depth 2
                                        ;     Child Loop BB0_486 Depth 2
                                        ;       Child Loop BB0_487 Depth 3
                                        ;       Child Loop BB0_490 Depth 3
                                        ;     Child Loop BB0_325 Depth 2
                                        ;     Child Loop BB0_337 Depth 2
                                        ;     Child Loop BB0_346 Depth 2
                                        ;     Child Loop BB0_351 Depth 2
                                        ;     Child Loop BB0_363 Depth 2
                                        ;     Child Loop BB0_365 Depth 2
                                        ;       Child Loop BB0_366 Depth 3
                                        ;       Child Loop BB0_369 Depth 3
                                        ;     Child Loop BB0_373 Depth 2
                                        ;     Child Loop BB0_375 Depth 2
                                        ;     Child Loop BB0_340 Depth 2
                                        ;       Child Loop BB0_341 Depth 3
                                        ;       Child Loop BB0_344 Depth 3
                                        ;     Child Loop BB0_880 Depth 2
                                        ;     Child Loop BB0_882 Depth 2
                                        ;     Child Loop BB0_884 Depth 2
                                        ;     Child Loop BB0_577 Depth 2
                                        ;     Child Loop BB0_589 Depth 2
                                        ;     Child Loop BB0_592 Depth 2
                                        ;     Child Loop BB0_603 Depth 2
                                        ;     Child Loop BB0_606 Depth 2
                                        ;     Child Loop BB0_617 Depth 2
                                        ;     Child Loop BB0_655 Depth 2
                                        ;       Child Loop BB0_659 Depth 3
                                        ;       Child Loop BB0_661 Depth 3
                                        ;       Child Loop BB0_663 Depth 3
                                        ;       Child Loop BB0_665 Depth 3
                                        ;       Child Loop BB0_667 Depth 3
                                        ;       Child Loop BB0_669 Depth 3
                                        ;       Child Loop BB0_671 Depth 3
                                        ;       Child Loop BB0_673 Depth 3
                                        ;       Child Loop BB0_675 Depth 3
                                        ;       Child Loop BB0_677 Depth 3
                                        ;       Child Loop BB0_679 Depth 3
                                        ;       Child Loop BB0_681 Depth 3
                                        ;       Child Loop BB0_683 Depth 3
                                        ;       Child Loop BB0_686 Depth 3
                                        ;       Child Loop BB0_688 Depth 3
                                        ;       Child Loop BB0_690 Depth 3
                                        ;       Child Loop BB0_692 Depth 3
                                        ;       Child Loop BB0_694 Depth 3
                                        ;       Child Loop BB0_696 Depth 3
                                        ;       Child Loop BB0_698 Depth 3
                                        ;       Child Loop BB0_700 Depth 3
                                        ;       Child Loop BB0_703 Depth 3
                                        ;       Child Loop BB0_705 Depth 3
                                        ;       Child Loop BB0_708 Depth 3
                                        ;       Child Loop BB0_710 Depth 3
                                        ;       Child Loop BB0_712 Depth 3
                                        ;       Child Loop BB0_714 Depth 3
                                        ;       Child Loop BB0_716 Depth 3
                                        ;       Child Loop BB0_718 Depth 3
                                        ;       Child Loop BB0_720 Depth 3
                                        ;       Child Loop BB0_722 Depth 3
                                        ;       Child Loop BB0_724 Depth 3
                                        ;       Child Loop BB0_726 Depth 3
                                        ;       Child Loop BB0_728 Depth 3
                                        ;       Child Loop BB0_730 Depth 3
                                        ;       Child Loop BB0_732 Depth 3
                                        ;       Child Loop BB0_734 Depth 3
                                        ;       Child Loop BB0_736 Depth 3
                                        ;       Child Loop BB0_738 Depth 3
                                        ;       Child Loop BB0_740 Depth 3
                                        ;       Child Loop BB0_742 Depth 3
                                        ;       Child Loop BB0_744 Depth 3
                                        ;     Child Loop BB0_748 Depth 2
                                        ;     Child Loop BB0_750 Depth 2
                                        ;     Child Loop BB0_752 Depth 2
                                        ;     Child Loop BB0_754 Depth 2
                                        ;     Child Loop BB0_756 Depth 2
                                        ;     Child Loop BB0_758 Depth 2
                                        ;     Child Loop BB0_760 Depth 2
                                        ;     Child Loop BB0_620 Depth 2
                                        ;     Child Loop BB0_622 Depth 2
                                        ;     Child Loop BB0_624 Depth 2
                                        ;     Child Loop BB0_626 Depth 2
                                        ;     Child Loop BB0_628 Depth 2
                                        ;     Child Loop BB0_630 Depth 2
                                        ;     Child Loop BB0_632 Depth 2
                                        ;     Child Loop BB0_634 Depth 2
                                        ;     Child Loop BB0_636 Depth 2
                                        ;     Child Loop BB0_638 Depth 2
                                        ;     Child Loop BB0_640 Depth 2
                                        ;     Child Loop BB0_642 Depth 2
                                        ;     Child Loop BB0_644 Depth 2
                                        ;     Child Loop BB0_646 Depth 2
                                        ;     Child Loop BB0_648 Depth 2
                                        ;     Child Loop BB0_650 Depth 2
                                        ;     Child Loop BB0_652 Depth 2
                                        ;     Child Loop BB0_654 Depth 2
                                        ;     Child Loop BB0_222 Depth 2
                                        ;       Child Loop BB0_223 Depth 3
                                        ;       Child Loop BB0_226 Depth 3
                                        ;     Child Loop BB0_229 Depth 2
                                        ;       Child Loop BB0_230 Depth 3
                                        ;       Child Loop BB0_233 Depth 3
                                        ;     Child Loop BB0_236 Depth 2
                                        ;       Child Loop BB0_237 Depth 3
                                        ;       Child Loop BB0_240 Depth 3
                                        ;     Child Loop BB0_243 Depth 2
                                        ;       Child Loop BB0_244 Depth 3
                                        ;       Child Loop BB0_247 Depth 3
                                        ;     Child Loop BB0_250 Depth 2
                                        ;       Child Loop BB0_251 Depth 3
                                        ;       Child Loop BB0_254 Depth 3
                                        ;     Child Loop BB0_257 Depth 2
                                        ;       Child Loop BB0_258 Depth 3
                                        ;       Child Loop BB0_261 Depth 3
                                        ;     Child Loop BB0_264 Depth 2
                                        ;       Child Loop BB0_265 Depth 3
                                        ;       Child Loop BB0_268 Depth 3
                                        ;     Child Loop BB0_271 Depth 2
                                        ;       Child Loop BB0_272 Depth 3
                                        ;       Child Loop BB0_275 Depth 3
                                        ;     Child Loop BB0_277 Depth 2
                                        ;     Child Loop BB0_279 Depth 2
                                        ;     Child Loop BB0_281 Depth 2
                                        ;     Child Loop BB0_283 Depth 2
                                        ;     Child Loop BB0_285 Depth 2
                                        ;     Child Loop BB0_287 Depth 2
                                        ;     Child Loop BB0_289 Depth 2
                                        ;     Child Loop BB0_291 Depth 2
                                        ;     Child Loop BB0_293 Depth 2
                                        ;     Child Loop BB0_295 Depth 2
                                        ;     Child Loop BB0_297 Depth 2
                                        ;     Child Loop BB0_299 Depth 2
                                        ;     Child Loop BB0_301 Depth 2
                                        ;     Child Loop BB0_303 Depth 2
                                        ;     Child Loop BB0_305 Depth 2
                                        ;       Child Loop BB0_306 Depth 3
                                        ;       Child Loop BB0_309 Depth 3
                                        ;     Child Loop BB0_312 Depth 2
                                        ;       Child Loop BB0_313 Depth 3
                                        ;       Child Loop BB0_316 Depth 3
                                        ;     Child Loop BB0_319 Depth 2
                                        ;       Child Loop BB0_320 Depth 3
                                        ;       Child Loop BB0_323 Depth 3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_65
	b	L_BB0_66
L_BB0_66:                               ;   in Loop: Header=BB0_65 Depth=1
	li	r6, #1073741824
	lw	r7, [r15 + #112]
	sw	r7, [r6 + #0]
L_BB0_67:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_67
	b	L_BB0_68
L_BB0_68:                               ;   in Loop: Header=BB0_65 Depth=1
	lw	r12, [r15 + #76]
	sw	r12, [r6 + #0]
L_BB0_69:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_69
	b	L_BB0_70
L_BB0_70:                               ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r6 + #0]
L_BB0_71:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_71
	b	L_BB0_72
L_BB0_72:                               ;   in Loop: Header=BB0_65 Depth=1
	sw	r12, [r6 + #0]
	li	r9, #1073741828
L_BB0_73:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_73
	b	L_BB0_74
L_BB0_74:                               ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #60]
	sw	r2, [r6 + #0]
L_BB0_75:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r10, L_BB0_75
	b	L_BB0_76
L_BB0_76:                               ; %.preheader127
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #80]
	addi	r2, r10, #0
L_BB0_77:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_78 Depth 3
                                        ;       Child Loop BB0_97 Depth 3
                                        ;       Child Loop BB0_88 Depth 3
                                        ;       Child Loop BB0_90 Depth 3
                                        ;       Child Loop BB0_92 Depth 3
	sw	r3, [r6 + #0]
L_BB0_78:                               ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_77 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #2
	be	r3, r10, L_BB0_78
	b	L_BB0_79
L_BB0_79:                               ;   in Loop: Header=BB0_78 Depth=3
	lw	r3, [r9 + #0]
	andi	r4, r3, #255
	blt	r13, r4, L_BB0_82
	b	L_BB0_80
L_BB0_80:                               ;   in Loop: Header=BB0_78 Depth=3
	lw	r5, [r15 + #148]
	be	r4, r5, L_BB0_87
	b	L_BB0_81
L_BB0_81:                               ;   in Loop: Header=BB0_78 Depth=3
	be	r4, r12, L_BB0_84
	b	L_BB0_94
L_BB0_82:                               ;   in Loop: Header=BB0_78 Depth=3
	addi	r5, r0, #127
	be	r4, r5, L_BB0_87
	b	L_BB0_83
L_BB0_87:                               ;   in Loop: Header=BB0_78 Depth=3
	lw	r3, [r15 + #152]
	blt	r2, r3, L_BB0_78
	b	L_BB0_88
L_BB0_83:                               ;   in Loop: Header=BB0_78 Depth=3
	bne	r4, r7, L_BB0_94
	b	L_BB0_84
L_BB0_94:                               ;   in Loop: Header=BB0_78 Depth=3
	slli	r4, r3, #24
	srai	r4, r4, #24
	addi	r5, r0, #32
	blt	r4, r5, L_BB0_78
	b	L_BB0_95
L_BB0_95:                               ;   in Loop: Header=BB0_78 Depth=3
	addi	r4, r0, #158
	blt	r4, r2, L_BB0_78
	b	L_BB0_96
L_BB0_96:                               ;   in Loop: Header=BB0_77 Depth=2
	addi	r4, r15, #156
	add	r4, r4, r2
	sb	r3, [r4 + #0]
L_BB0_97:                               ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_77 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	addi	r5, r0, #0
	be	r4, r5, L_BB0_97
	b	L_BB0_98
L_BB0_98:                               ;   in Loop: Header=BB0_77 Depth=2
	andi	r3, r3, #127
	addi	r2, r2, #1
	b	L_BB0_77
L_BB0_88:                               ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_77 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r10, L_BB0_88
	b	L_BB0_89
L_BB0_89:                               ;   in Loop: Header=BB0_77 Depth=2
	lw	r3, [r15 + #148]
	sw	r3, [r6 + #0]
L_BB0_90:                               ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_77 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r10, L_BB0_90
	b	L_BB0_91
L_BB0_91:                               ;   in Loop: Header=BB0_77 Depth=2
	lw	r3, [r15 + #80]
	sw	r3, [r6 + #0]
L_BB0_92:                               ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_77 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r10, L_BB0_92
	b	L_BB0_93
L_BB0_93:                               ;   in Loop: Header=BB0_77 Depth=2
	addi	r2, r2, #-1
	lw	r3, [r15 + #148]
	b	L_BB0_77
L_BB0_84:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r10, L_BB0_84
	b	L_BB0_85
L_BB0_85:                               ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r6 + #0]
	lw	r4, [r15 + #104]
L_BB0_86:                               ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r10, L_BB0_86
	b	L_BB0_99
L_BB0_99:                               ;   in Loop: Header=BB0_65 Depth=1
	sw	r12, [r6 + #0]
	lw	r3, [r15 + #72]
	add	r2, r3, r2
	sb	r10, [r2 + #0]
	lw	r5, [r15 + #68]
	lw	r9, [r15 + #64]
	addi	r2, r3, #0
L_BB0_100:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r3, [r2 + #0]
	be	r3, r4, L_BB0_104
	b	L_BB0_101
L_BB0_101:                              ;   in Loop: Header=BB0_100 Depth=2
	addi	r6, r0, #32
	be	r3, r6, L_BB0_104
	b	L_BB0_102
L_BB0_104:                              ;   in Loop: Header=BB0_100 Depth=2
	addi	r5, r5, #1
	addi	r9, r9, #1
	addi	r2, r2, #1
	b	L_BB0_100
L_BB0_102:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	sw	r2, [r15 + #108]
	be	r3, r2, L_BB0_65
	b	L_BB0_103
L_BB0_103:                              ; %.preheader125
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r5, [r15 + #88]
	addi	r2, r15, #156
	lw	r7, [r15 + #52]
	lw	r4, [r15 + #104]
	b	L_BB0_105
L_BB0_107:                              ;   in Loop: Header=BB0_105 Depth=2
	addi	r7, r7, #1
	addi	r2, r2, #1
	b	L_BB0_105
L_BB0_105:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r12, [r2 + #0]
	be	r12, r6, L_BB0_107
	b	L_BB0_106
L_BB0_106:                              ;   in Loop: Header=BB0_105 Depth=2
	bne	r12, r4, L_BB0_108
	b	L_BB0_107
L_BB0_108:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r12, #-58
	andi	r2, r2, #255
	addi	r4, r0, #245
	addi	r5, r0, #250
	sw	r5, [r15 + #84]
	sw	r4, [r15 + #144]
	bltu	r4, r2, L_BB0_110
	b	L_BB0_109
L_BB0_109:                              ;   in Loop: Header=BB0_65 Depth=1
	andi	r2, r12, #223
	addi	r2, r2, #-71
	andi	r2, r2, #255
	lw	r4, [r15 + #84]
	bltu	r2, r4, L_BB0_199
	b	L_BB0_110
L_BB0_110:                              ; %.preheader123
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #104]
L_BB0_111:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_114
	b	L_BB0_112
L_BB0_112:                              ;   in Loop: Header=BB0_111 Depth=2
	be	r2, r6, L_BB0_114
	b	L_BB0_113
L_BB0_114:                              ;   in Loop: Header=BB0_111 Depth=2
	addi	r2, r7, #1
	addi	r4, r7, #-1
	lbu	r12, [r4 + #0]
	addi	r7, r2, #0
	b	L_BB0_111
L_BB0_113:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #48
	sw	r4, [r15 + #48]
	be	r2, r4, L_BB0_115
	b	L_BB0_118
L_BB0_115:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r7 + #-1]
	ori	r2, r2, #32
	addi	r4, r0, #120
	be	r2, r4, L_BB0_117
	b	L_BB0_116
L_BB0_117:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_119
L_BB0_118:                              ; %.loopexit124
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r7, #-2
L_BB0_119:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r12, #-58
	andi	r2, r2, #255
	addi	r4, r0, #246
	sltu	r5, r2, r4
	lw	r4, [r15 + #144]
	bltu	r4, r2, L_BB0_121
	b	L_BB0_120
L_BB0_120:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #-33
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	lw	r4, [r15 + #84]
	bltu	r2, r4, L_BB0_199
	b	L_BB0_121
L_BB0_199:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r3, #-97
	lw	r4, [r15 + #104]
	lw	r12, [r15 + #88]
L_BB0_200:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r7, [r9 + #0]
	be	r7, r6, L_BB0_202
	b	L_BB0_201
L_BB0_201:                              ;   in Loop: Header=BB0_200 Depth=2
	bne	r7, r4, L_BB0_203
	b	L_BB0_202
L_BB0_202:                              ;   in Loop: Header=BB0_200 Depth=2
	addi	r12, r12, #1
	addi	r9, r9, #1
	b	L_BB0_200
L_BB0_203:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r3, #-32
	xor	r5, r4, r3
	andi	r2, r2, #255
	addi	r4, r0, #26
	sltu	r2, r2, r4
	addi	r4, r0, #0
	sub	r2, r4, r2
	and	r2, r5, r2
	xor	r2, r3, r2
	andi	r3, r2, #255
	addi	r2, r0, #70
	blt	r2, r3, L_BB0_209
	b	L_BB0_204
L_BB0_204:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #67
	li	r9, #1073741824
	lw	r13, [r15 + #112]
	blt	r5, r3, L_BB0_207
	b	L_BB0_205
L_BB0_205:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #63
	lw	r4, [r15 + #104]
	be	r3, r2, L_BB0_221
	b	L_BB0_206
L_BB0_206:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r3, r5, L_BB0_215
	b	L_BB0_220
L_BB0_215:                              ; %.preheader100
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_577
L_BB0_580:                              ;   in Loop: Header=BB0_577 Depth=2
	addi	r2, r12, #1
	addi	r3, r12, #-1
	lbu	r7, [r3 + #0]
	addi	r12, r2, #0
	b	L_BB0_577
L_BB0_577:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r4, L_BB0_580
	b	L_BB0_578
L_BB0_578:                              ;   in Loop: Header=BB0_577 Depth=2
	addi	r3, r0, #32
	be	r2, r3, L_BB0_580
	b	L_BB0_579
L_BB0_579:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #48
	sw	r3, [r15 + #116]
	sw	r5, [r15 + #96]
	sw	r4, [r15 + #100]
	be	r2, r4, L_BB0_581
	b	L_BB0_585
L_BB0_581:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r12 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_584
	b	L_BB0_582
L_BB0_584:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_586
L_BB0_209:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #76
	li	r9, #1073741824
	lw	r13, [r15 + #112]
	blt	r2, r3, L_BB0_212
	b	L_BB0_210
L_BB0_210:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #71
	lw	r5, [r15 + #104]
	be	r3, r2, L_BB0_214
	b	L_BB0_211
L_BB0_211:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #72
	be	r3, r2, L_BB0_221
	b	L_BB0_220
L_BB0_221:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r15 + #92]
	addi	r2, r0, #0
	addi	r4, r0, #10
	addi	r5, r4, #0
	addi	r6, r2, #0
L_BB0_222:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_223 Depth 3
                                        ;       Child Loop BB0_226 Depth 3
	andi	r5, r5, #255
	bne	r5, r4, L_BB0_225
	b	L_BB0_223
L_BB0_223:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_222 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	addi	r7, r0, #0
	be	r3, r7, L_BB0_223
	b	L_BB0_224
L_BB0_224:                              ;   in Loop: Header=BB0_222 Depth=2
	sw	r13, [r9 + #0]
L_BB0_225:                              ;   in Loop: Header=BB0_222 Depth=2
	addi	r2, r2, #1
	sltu	r3, r0, r2
	xori	r3, r3, #1
	add	r6, r6, r3
L_BB0_226:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_222 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r7, r3, #1
	addi	r3, r0, #0
	be	r7, r3, L_BB0_226
	b	L_BB0_227
L_BB0_227:                              ;   in Loop: Header=BB0_222 Depth=2
	sw	r5, [r9 + #0]
	xori	r5, r2, #22
	or	r7, r5, r6
	la	r5, .L.str.8
	add	r5, r2, r5
	lbu	r5, [r5 + #0]
	bne	r7, r3, L_BB0_222
	b	L_BB0_228
L_BB0_228:                              ; %.preheader47
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r3, #0
	lw	r7, [r15 + #92]
L_BB0_229:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_230 Depth 3
                                        ;       Child Loop BB0_233 Depth 3
	andi	r5, r7, #255
	addi	r2, r0, #10
	bne	r5, r2, L_BB0_232
	b	L_BB0_230
L_BB0_230:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_229 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	addi	r7, r0, #0
	be	r4, r7, L_BB0_230
	b	L_BB0_231
L_BB0_231:                              ;   in Loop: Header=BB0_229 Depth=2
	sw	r13, [r9 + #0]
L_BB0_232:                              ;   in Loop: Header=BB0_229 Depth=2
	addi	r3, r3, #1
	sltu	r4, r0, r3
	xori	r4, r4, #1
	add	r6, r6, r4
L_BB0_233:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_229 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r7, r4, #1
	addi	r4, r0, #0
	be	r7, r4, L_BB0_233
	b	L_BB0_234
L_BB0_234:                              ;   in Loop: Header=BB0_229 Depth=2
	sw	r5, [r9 + #0]
	xori	r5, r3, #27
	or	r5, r5, r6
	la	r7, .L.str.9
	add	r7, r3, r7
	lbu	r7, [r7 + #0]
	bne	r5, r4, L_BB0_229
	b	L_BB0_235
L_BB0_235:                              ; %.preheader46
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r5, r4, #0
L_BB0_236:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_237 Depth 3
                                        ;       Child Loop BB0_240 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_239
	b	L_BB0_237
L_BB0_237:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_236 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	addi	r7, r0, #0
	be	r3, r7, L_BB0_237
	b	L_BB0_238
L_BB0_238:                              ;   in Loop: Header=BB0_236 Depth=2
	sw	r13, [r9 + #0]
L_BB0_239:                              ;   in Loop: Header=BB0_236 Depth=2
	addi	r4, r4, #1
	sltu	r3, r0, r4
	xori	r3, r3, #1
	add	r5, r5, r3
L_BB0_240:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_236 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r7, r3, #1
	addi	r3, r0, #0
	be	r7, r3, L_BB0_240
	b	L_BB0_241
L_BB0_241:                              ;   in Loop: Header=BB0_236 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r4, #34
	or	r7, r6, r5
	la	r6, .L.str.10
	add	r6, r4, r6
	lbu	r6, [r6 + #0]
	bne	r7, r3, L_BB0_236
	b	L_BB0_242
L_BB0_242:                              ; %.preheader45
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r5, r3, #0
L_BB0_243:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_244 Depth 3
                                        ;       Child Loop BB0_247 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_246
	b	L_BB0_244
L_BB0_244:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_243 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	addi	r7, r0, #0
	be	r4, r7, L_BB0_244
	b	L_BB0_245
L_BB0_245:                              ;   in Loop: Header=BB0_243 Depth=2
	sw	r13, [r9 + #0]
L_BB0_246:                              ;   in Loop: Header=BB0_243 Depth=2
	addi	r3, r3, #1
	sltu	r4, r0, r3
	xori	r4, r4, #1
	add	r5, r5, r4
L_BB0_247:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_243 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r7, r4, #1
	addi	r4, r0, #0
	be	r7, r4, L_BB0_247
	b	L_BB0_248
L_BB0_248:                              ;   in Loop: Header=BB0_243 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r3, #34
	or	r7, r6, r5
	la	r6, .L.str.11
	add	r6, r3, r6
	lbu	r6, [r6 + #0]
	bne	r7, r4, L_BB0_243
	b	L_BB0_249
L_BB0_249:                              ; %.preheader44
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r5, r4, #0
L_BB0_250:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_251 Depth 3
                                        ;       Child Loop BB0_254 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_253
	b	L_BB0_251
L_BB0_251:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_250 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	addi	r7, r0, #0
	be	r3, r7, L_BB0_251
	b	L_BB0_252
L_BB0_252:                              ;   in Loop: Header=BB0_250 Depth=2
	sw	r13, [r9 + #0]
L_BB0_253:                              ;   in Loop: Header=BB0_250 Depth=2
	addi	r4, r4, #1
	sltu	r3, r0, r4
	xori	r3, r3, #1
	add	r5, r5, r3
L_BB0_254:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_250 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r7, r3, #1
	addi	r3, r0, #0
	be	r7, r3, L_BB0_254
	b	L_BB0_255
L_BB0_255:                              ;   in Loop: Header=BB0_250 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r4, #33
	or	r7, r6, r5
	la	r6, .L.str.12
	add	r6, r4, r6
	lbu	r6, [r6 + #0]
	bne	r7, r3, L_BB0_250
	b	L_BB0_256
L_BB0_256:                              ; %.preheader43
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r5, r3, #0
L_BB0_257:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_258 Depth 3
                                        ;       Child Loop BB0_261 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_260
	b	L_BB0_258
L_BB0_258:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_257 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	addi	r7, r0, #0
	be	r4, r7, L_BB0_258
	b	L_BB0_259
L_BB0_259:                              ;   in Loop: Header=BB0_257 Depth=2
	sw	r13, [r9 + #0]
L_BB0_260:                              ;   in Loop: Header=BB0_257 Depth=2
	addi	r3, r3, #1
	sltu	r4, r0, r3
	xori	r4, r4, #1
	add	r5, r5, r4
L_BB0_261:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_257 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r7, r4, #1
	addi	r4, r0, #0
	be	r7, r4, L_BB0_261
	b	L_BB0_262
L_BB0_262:                              ;   in Loop: Header=BB0_257 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r3, #33
	or	r7, r6, r5
	la	r6, .L.str.13
	add	r6, r3, r6
	lbu	r6, [r6 + #0]
	bne	r7, r4, L_BB0_257
	b	L_BB0_263
L_BB0_263:                              ; %.preheader42
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r3, r4, #0
L_BB0_264:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_265 Depth 3
                                        ;       Child Loop BB0_268 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_267
	b	L_BB0_265
L_BB0_265:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_264 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	addi	r7, r0, #0
	be	r5, r7, L_BB0_265
	b	L_BB0_266
L_BB0_266:                              ;   in Loop: Header=BB0_264 Depth=2
	sw	r13, [r9 + #0]
L_BB0_267:                              ;   in Loop: Header=BB0_264 Depth=2
	addi	r4, r4, #1
	sltu	r5, r0, r4
	xori	r5, r5, #1
	add	r3, r3, r5
L_BB0_268:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_264 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r7, r5, #1
	addi	r5, r0, #0
	be	r7, r5, L_BB0_268
	b	L_BB0_269
L_BB0_269:                              ;   in Loop: Header=BB0_264 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r4, #36
	or	r7, r6, r3
	la	r6, .L.str.14
	add	r6, r4, r6
	lbu	r6, [r6 + #0]
	bne	r7, r5, L_BB0_264
	b	L_BB0_270
L_BB0_270:                              ; %.preheader41
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r4, r5, #0
L_BB0_271:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_272 Depth 3
                                        ;       Child Loop BB0_275 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_274
	b	L_BB0_272
L_BB0_272:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_271 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	addi	r7, r0, #0
	be	r3, r7, L_BB0_272
	b	L_BB0_273
L_BB0_273:                              ;   in Loop: Header=BB0_271 Depth=2
	sw	r13, [r9 + #0]
L_BB0_274:                              ;   in Loop: Header=BB0_271 Depth=2
	addi	r5, r5, #1
	sltu	r3, r0, r5
	xori	r3, r3, #1
	add	r4, r4, r3
L_BB0_275:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_271 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r7, r3, #1
	addi	r3, r0, #0
	be	r7, r3, L_BB0_275
	b	L_BB0_276
L_BB0_276:                              ;   in Loop: Header=BB0_271 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r5, #35
	or	r7, r6, r4
	la	r6, .L.str.15
	add	r6, r5, r6
	lbu	r6, [r6 + #0]
	bne	r7, r3, L_BB0_271
	b	L_BB0_277
L_BB0_277:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_277
	b	L_BB0_278
L_BB0_278:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r9 + #0]
L_BB0_279:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_279
	b	L_BB0_280
L_BB0_280:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
L_BB0_281:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_281
	b	L_BB0_282
L_BB0_282:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #119
	sw	r4, [r9 + #0]
L_BB0_283:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_283
	b	L_BB0_284
L_BB0_284:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #40]
	sw	r4, [r9 + #0]
L_BB0_285:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_285
	b	L_BB0_286
L_BB0_286:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #122
	sw	r4, [r9 + #0]
L_BB0_287:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_287
	b	L_BB0_288
L_BB0_288:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #32
	sw	r4, [r9 + #0]
L_BB0_289:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_289
	b	L_BB0_290
L_BB0_290:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #115
	sw	r5, [r9 + #0]
L_BB0_291:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_291
	b	L_BB0_292
L_BB0_292:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #36]
	sw	r5, [r9 + #0]
L_BB0_293:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_293
	b	L_BB0_294
L_BB0_294:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #20]
	sw	r5, [r9 + #0]
L_BB0_295:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_295
	b	L_BB0_296
L_BB0_296:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #24]
	sw	r5, [r9 + #0]
L_BB0_297:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_297
	b	L_BB0_298
L_BB0_298:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #32]
	sw	r5, [r9 + #0]
L_BB0_299:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_299
	b	L_BB0_300
L_BB0_300:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #58
	sw	r5, [r9 + #0]
L_BB0_301:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_301
	b	L_BB0_302
L_BB0_302:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r9 + #0]
L_BB0_303:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_303
	b	L_BB0_304
L_BB0_304:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
	addi	r6, r3, #0
L_BB0_305:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_306 Depth 3
                                        ;       Child Loop BB0_309 Depth 3
	andi	r4, r4, #255
	bne	r4, r2, L_BB0_308
	b	L_BB0_306
L_BB0_306:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_305 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	addi	r7, r0, #0
	be	r5, r7, L_BB0_306
	b	L_BB0_307
L_BB0_307:                              ;   in Loop: Header=BB0_305 Depth=2
	sw	r13, [r9 + #0]
L_BB0_308:                              ;   in Loop: Header=BB0_305 Depth=2
	addi	r3, r3, #1
	sltu	r5, r0, r3
	xori	r5, r5, #1
	add	r6, r6, r5
L_BB0_309:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_305 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r7, r5, #1
	addi	r5, r0, #0
	be	r7, r5, L_BB0_309
	b	L_BB0_310
L_BB0_310:                              ;   in Loop: Header=BB0_305 Depth=2
	sw	r4, [r9 + #0]
	xori	r4, r3, #37
	or	r7, r4, r6
	la	r4, .L.str.17
	add	r4, r3, r4
	lbu	r4, [r4 + #0]
	bne	r7, r5, L_BB0_305
	b	L_BB0_311
L_BB0_311:                              ; %.preheader39
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #32
	addi	r4, r5, #0
L_BB0_312:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_313 Depth 3
                                        ;       Child Loop BB0_316 Depth 3
	andi	r6, r6, #255
	bne	r6, r2, L_BB0_315
	b	L_BB0_313
L_BB0_313:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_312 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	addi	r7, r0, #0
	be	r3, r7, L_BB0_313
	b	L_BB0_314
L_BB0_314:                              ;   in Loop: Header=BB0_312 Depth=2
	sw	r13, [r9 + #0]
L_BB0_315:                              ;   in Loop: Header=BB0_312 Depth=2
	addi	r5, r5, #1
	sltu	r3, r0, r5
	xori	r3, r3, #1
	add	r4, r4, r3
L_BB0_316:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_312 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r7, r3, #1
	addi	r3, r0, #0
	be	r7, r3, L_BB0_316
	b	L_BB0_317
L_BB0_317:                              ;   in Loop: Header=BB0_312 Depth=2
	sw	r6, [r9 + #0]
	xori	r6, r5, #33
	or	r7, r6, r4
	la	r6, .L.str.18
	add	r6, r5, r6
	lbu	r6, [r6 + #0]
	bne	r7, r3, L_BB0_312
	b	L_BB0_318
L_BB0_318:                              ; %.preheader37
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #32
	addi	r4, r3, #0
	lw	r13, [r15 + #56]
L_BB0_319:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_320 Depth 3
                                        ;       Child Loop BB0_323 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r2, L_BB0_322
	b	L_BB0_320
L_BB0_320:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_319 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_320
	b	L_BB0_321
L_BB0_321:                              ;   in Loop: Header=BB0_319 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_322:                              ;   in Loop: Header=BB0_319 Depth=2
	addi	r3, r3, #1
	sltu	r6, r0, r3
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_323:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_319 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_323
	b	L_BB0_324
L_BB0_324:                              ;   in Loop: Header=BB0_319 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r3, #34
	or	r7, r5, r4
	la	r5, .L.str.19
	add	r5, r3, r5
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_319
L_BB0_207:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #68
	lw	r5, [r15 + #104]
	be	r3, r4, L_BB0_219
	b	L_BB0_208
L_BB0_208:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r3, r2, L_BB0_217
	b	L_BB0_220
L_BB0_217:                              ; %.preheader75
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_442
L_BB0_445:                              ;   in Loop: Header=BB0_442 Depth=2
	addi	r2, r12, #1
	addi	r3, r12, #-1
	lbu	r7, [r3 + #0]
	addi	r12, r2, #0
	b	L_BB0_442
L_BB0_442:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_445
	b	L_BB0_443
L_BB0_443:                              ;   in Loop: Header=BB0_442 Depth=2
	addi	r6, r0, #32
	be	r2, r6, L_BB0_445
	b	L_BB0_444
L_BB0_444:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #48
	sw	r3, [r15 + #116]
	be	r2, r3, L_BB0_446
	b	L_BB0_450
L_BB0_446:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r12 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_449
	b	L_BB0_447
L_BB0_449:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_451
L_BB0_212:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #77
	lw	r5, [r15 + #104]
	be	r3, r2, L_BB0_216
	b	L_BB0_213
L_BB0_213:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #87
	be	r3, r2, L_BB0_218
	b	L_BB0_220
L_BB0_218:                              ; %.preheader67
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r13, [r15 + #56]
	b	L_BB0_377
L_BB0_380:                              ;   in Loop: Header=BB0_377 Depth=2
	addi	r2, r12, #1
	addi	r3, r12, #-1
	lbu	r7, [r3 + #0]
	addi	r12, r2, #0
	b	L_BB0_377
L_BB0_377:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_380
	b	L_BB0_378
L_BB0_378:                              ;   in Loop: Header=BB0_377 Depth=2
	be	r2, r6, L_BB0_380
	b	L_BB0_379
L_BB0_379:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #48
	la	r9, .L.str.21
	sw	r3, [r15 + #120]
	be	r2, r3, L_BB0_381
	b	L_BB0_385
L_BB0_381:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r12 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_384
	b	L_BB0_382
L_BB0_384:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_386
L_BB0_214:                              ; %.preheader113
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_762
L_BB0_765:                              ;   in Loop: Header=BB0_762 Depth=2
	addi	r3, r12, #1
	addi	r4, r12, #-1
	lbu	r7, [r4 + #0]
	addi	r12, r3, #0
	b	L_BB0_762
L_BB0_762:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r7, #255
	be	r4, r5, L_BB0_765
	b	L_BB0_763
L_BB0_763:                              ;   in Loop: Header=BB0_762 Depth=2
	be	r4, r6, L_BB0_765
	b	L_BB0_764
L_BB0_764:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #48
	be	r4, r3, L_BB0_766
	b	L_BB0_770
L_BB0_766:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r12, #0
	lbu	r4, [r7 + #-1]
	ori	r4, r4, #32
	addi	r5, r0, #120
	be	r4, r5, L_BB0_769
	b	L_BB0_767
L_BB0_769:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r3, [r7 + #0]
	b	L_BB0_771
L_BB0_219:                              ; %.preheader56
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r13, [r15 + #56]
	b	L_BB0_325
L_BB0_328:                              ;   in Loop: Header=BB0_325 Depth=2
	addi	r2, r12, #1
	addi	r3, r12, #-1
	lbu	r7, [r3 + #0]
	addi	r12, r2, #0
	b	L_BB0_325
L_BB0_325:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_328
	b	L_BB0_326
L_BB0_326:                              ;   in Loop: Header=BB0_325 Depth=2
	addi	r6, r0, #32
	be	r2, r6, L_BB0_328
	b	L_BB0_327
L_BB0_327:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #48
	la	r3, .L.str.20
	sw	r3, [r15 + #120]
	sw	r4, [r15 + #116]
	be	r2, r4, L_BB0_329
	b	L_BB0_333
L_BB0_329:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r12 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_332
	b	L_BB0_330
L_BB0_332:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_334
L_BB0_216:                              ; %.preheader89
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_501
L_BB0_504:                              ;   in Loop: Header=BB0_501 Depth=2
	addi	r2, r12, #1
	addi	r3, r12, #-1
	lbu	r7, [r3 + #0]
	addi	r12, r2, #0
	b	L_BB0_501
L_BB0_501:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_504
	b	L_BB0_502
L_BB0_502:                              ;   in Loop: Header=BB0_501 Depth=2
	be	r2, r6, L_BB0_504
	b	L_BB0_503
L_BB0_503:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #48
	be	r2, r4, L_BB0_505
	b	L_BB0_509
L_BB0_505:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r12 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_508
	b	L_BB0_506
L_BB0_508:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_510
L_BB0_220:                              ; %.preheader36
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_880
L_BB0_880:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_880
	b	L_BB0_881
L_BB0_881:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r9 + #0]
L_BB0_882:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_882
	b	L_BB0_883
L_BB0_883:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #10
	sw	r3, [r9 + #0]
	lw	r13, [r15 + #56]
L_BB0_884:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_884
	b	L_BB0_885
L_BB0_885:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #63
	sw	r2, [r9 + #0]
	b	L_BB0_65
L_BB0_116:                              ; %._crit_edge
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r5, r0, #0
	b	L_BB0_121
L_BB0_121:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r5, [r15 + #136]
	sw	r6, [r15 + #92]
	addi	r2, r7, #4
	sw	r2, [r15 + #132]
	addi	r5, r7, #2
	lw	r2, [r15 + #108]
	sw	r2, [r15 + #140]
L_BB0_122:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sw	r5, [r15 + #128]
	lw	r2, [r15 + #132]
	lw	r4, [r15 + #136]
	andi	r4, r4, #1
	lw	r13, [r15 + #108]
	sub	r4, r13, r4
	addi	r5, r12, #-97
	andi	r5, r5, #255
	addi	r6, r0, #6
	sw	r6, [r15 + #120]
	sltu	r5, r5, r6
	sub	r5, r13, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r4, r5, r4
	addi	r5, r0, #-48
	sw	r5, [r15 + #116]
	xor	r4, r4, r5
	slli	r5, r12, #24
	srai	r5, r5, #24
	add	r4, r4, r5
	lw	r5, [r15 + #140]
	slli	r5, r5, #4
	or	r4, r4, r5
	sw	r4, [r15 + #140]
	addi	r7, r7, #1
	lbu	r12, [r7 + #0]
	addi	r4, r12, #-58
	andi	r13, r4, #255
	addi	r4, r0, #246
	sw	r4, [r15 + #124]
	sltu	r4, r13, r4
	sw	r4, [r15 + #136]
	sw	r2, [r15 + #100]
	addi	r2, r2, #1
	sw	r2, [r15 + #132]
	lw	r2, [r15 + #128]
	addi	r5, r2, #1
	lw	r6, [r15 + #144]
	bltu	r6, r13, L_BB0_122
	b	L_BB0_123
L_BB0_123:                              ;   in Loop: Header=BB0_122 Depth=2
	addi	r6, r0, #-33
	and	r13, r12, r6
	addi	r13, r13, #-71
	andi	r4, r13, #255
	sw	r4, [r15 + #96]
	addi	r13, r0, #249
	lw	r4, [r15 + #96]
	bltu	r13, r4, L_BB0_122
	b	L_BB0_124
L_BB0_124:                              ; %.preheader121
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r15 + #132]
	sw	r6, [r15 + #136]
	lw	r13, [r15 + #56]
	lw	r6, [r15 + #92]
	lw	r7, [r15 + #100]
L_BB0_125:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r12, #255
	addi	r5, r0, #31
	blt	r5, r4, L_BB0_128
	b	L_BB0_126
L_BB0_128:                              ;   in Loop: Header=BB0_125 Depth=2
	be	r4, r6, L_BB0_133
	b	L_BB0_129
L_BB0_126:                              ;   in Loop: Header=BB0_125 Depth=2
	lw	r5, [r15 + #104]
	be	r4, r5, L_BB0_133
	b	L_BB0_127
L_BB0_133:                              ;   in Loop: Header=BB0_125 Depth=2
	addi	r7, r7, #1
	addi	r4, r2, #1
	lbu	r12, [r2 + #0]
	addi	r2, r4, #0
	b	L_BB0_125
L_BB0_129:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #46
	be	r4, r5, L_BB0_132
	b	L_BB0_130
L_BB0_130:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #58
	be	r4, r5, L_BB0_134
	b	L_BB0_199
L_BB0_134:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r12, #1073741824
L_BB0_135:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_136 Depth 3
                                        ;       Child Loop BB0_141 Depth 3
                                        ;       Child Loop BB0_153 Depth 3
	addi	r4, r2, #2
	lw	r5, [r15 + #104]
L_BB0_136:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_135 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lbu	r6, [r2 + #0]
	be	r6, r5, L_BB0_140
	b	L_BB0_137
L_BB0_137:                              ;   in Loop: Header=BB0_136 Depth=3
	lw	r3, [r15 + #92]
	be	r6, r3, L_BB0_140
	b	L_BB0_138
L_BB0_140:                              ;   in Loop: Header=BB0_136 Depth=3
	addi	r4, r4, #1
	addi	r2, r2, #1
	b	L_BB0_136
L_BB0_138:                              ;   in Loop: Header=BB0_135 Depth=2
	addi	r3, r0, #0
	be	r6, r3, L_BB0_162
	b	L_BB0_139
L_BB0_139:                              ; %.preheader32
                                        ;   in Loop: Header=BB0_135 Depth=2
	lw	r9, [r15 + #132]
	b	L_BB0_141
L_BB0_144:                              ;   in Loop: Header=BB0_141 Depth=3
	addi	r2, r4, #1
	addi	r4, r4, #-1
	lbu	r6, [r4 + #0]
	addi	r4, r2, #0
	b	L_BB0_141
L_BB0_141:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_135 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	andi	r2, r6, #255
	be	r2, r5, L_BB0_144
	b	L_BB0_142
L_BB0_142:                              ;   in Loop: Header=BB0_141 Depth=3
	lw	r7, [r15 + #92]
	be	r2, r7, L_BB0_144
	b	L_BB0_143
L_BB0_143:                              ;   in Loop: Header=BB0_135 Depth=2
	lw	r5, [r15 + #48]
	be	r2, r5, L_BB0_145
	b	L_BB0_148
L_BB0_145:                              ;   in Loop: Header=BB0_135 Depth=2
	lbu	r2, [r4 + #-1]
	ori	r2, r2, #32
	addi	r5, r0, #120
	be	r2, r5, L_BB0_147
	b	L_BB0_146
L_BB0_147:                              ;   in Loop: Header=BB0_135 Depth=2
	lbu	r6, [r4 + #0]
	b	L_BB0_149
L_BB0_148:                              ; %.loopexit33
                                        ;   in Loop: Header=BB0_135 Depth=2
	addi	r4, r4, #-2
L_BB0_149:                              ;   in Loop: Header=BB0_135 Depth=2
	addi	r2, r6, #-58
	andi	r5, r2, #255
	lw	r2, [r15 + #124]
	sltu	r2, r5, r2
	lw	r7, [r15 + #144]
	bltu	r7, r5, L_BB0_152
	b	L_BB0_150
L_BB0_150:                              ;   in Loop: Header=BB0_135 Depth=2
	lw	r5, [r15 + #136]
	and	r5, r6, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	bltu	r9, r5, L_BB0_152
	b	L_BB0_151
L_BB0_146:                              ; %._crit_edge173
                                        ;   in Loop: Header=BB0_135 Depth=2
	addi	r4, r4, #-2
	addi	r2, r0, #0
	lw	r6, [r15 + #48]
	b	L_BB0_152
L_BB0_152:                              ;   in Loop: Header=BB0_135 Depth=2
	addi	r7, r3, #0
L_BB0_153:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_135 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	andi	r2, r2, #1
	sub	r2, r3, r2
	addi	r5, r6, #-97
	andi	r5, r5, #255
	lw	r9, [r15 + #120]
	sltu	r5, r5, r9
	sub	r5, r3, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r2, r5, r2
	lw	r5, [r15 + #116]
	xor	r2, r2, r5
	andi	r5, r6, #255
	add	r2, r2, r5
	slli	r5, r7, #4
	or	r7, r2, r5
	addi	r4, r4, #1
	lbu	r6, [r4 + #0]
	addi	r2, r6, #-58
	andi	r5, r2, #255
	lw	r2, [r15 + #124]
	sltu	r2, r5, r2
	lw	r9, [r15 + #144]
	bltu	r9, r5, L_BB0_153
	b	L_BB0_154
L_BB0_154:                              ;   in Loop: Header=BB0_153 Depth=3
	lw	r5, [r15 + #136]
	and	r5, r6, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	lw	r9, [r15 + #84]
	bltu	r5, r9, L_BB0_161
	b	L_BB0_153
L_BB0_161:                              ;   in Loop: Header=BB0_135 Depth=2
	lw	r2, [r15 + #140]
	sb	r7, [r2 + #0]
	addi	r2, r2, #1
	sw	r2, [r15 + #140]
	addi	r2, r4, #0
	b	L_BB0_135
L_BB0_162:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_162
	b	L_BB0_163
L_BB0_163:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #112]
	sw	r3, [r12 + #0]
L_BB0_164:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_164
	b	L_BB0_165
L_BB0_165:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #76]
	sw	r3, [r12 + #0]
L_BB0_166:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_166
	b	L_BB0_167
L_BB0_167:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #40]
	sw	r3, [r12 + #0]
L_BB0_168:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_168
	b	L_BB0_169
L_BB0_169:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #107
	sw	r2, [r12 + #0]
	b	L_BB0_65
L_BB0_127:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	be	r4, r2, L_BB0_131
	b	L_BB0_199
L_BB0_131:                              ; %.preheader120
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_195
L_BB0_195:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_195
	b	L_BB0_196
L_BB0_196:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r4, #1073741824
	lw	r3, [r15 + #112]
	sw	r3, [r4 + #0]
	lw	r5, [r15 + #76]
L_BB0_197:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_197
	b	L_BB0_198
L_BB0_198:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r5, [r4 + #0]
	lw	r2, [r15 + #140]
	addi	r3, r2, #127
	jal	r11, dump_range
	lw	r13, [r15 + #56]
	b	L_BB0_65
L_BB0_132:                              ; %.preheader118
                                        ;   in Loop: Header=BB0_65 Depth=1
	li	r12, #1073741824
	lw	r2, [r15 + #104]
	lw	r9, [r15 + #132]
	b	L_BB0_170
L_BB0_173:                              ;   in Loop: Header=BB0_170 Depth=2
	addi	r7, r7, #1
	b	L_BB0_170
L_BB0_170:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r3, [r7 + #-2]
	be	r3, r2, L_BB0_173
	b	L_BB0_171
L_BB0_171:                              ;   in Loop: Header=BB0_170 Depth=2
	be	r3, r6, L_BB0_173
	b	L_BB0_172
L_BB0_172:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #48
	be	r3, r2, L_BB0_174
	b	L_BB0_178
L_BB0_174:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r3, [r7 + #-1]
	ori	r3, r3, #32
	addi	r4, r0, #120
	lw	r5, [r15 + #136]
	be	r3, r4, L_BB0_177
	b	L_BB0_175
L_BB0_177:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r7, #0
	lbu	r2, [r7 + #0]
	b	L_BB0_179
L_BB0_770:                              ; %.loopexit114
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r3, r7, #0
L_BB0_771:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r3, #-58
	andi	r4, r4, #255
	addi	r5, r0, #246
	sltu	r7, r4, r5
	lw	r5, [r15 + #144]
	bltu	r5, r4, L_BB0_768
	b	L_BB0_772
L_BB0_772:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #-33
	and	r4, r3, r4
	addi	r4, r4, #-71
	andi	r4, r4, #255
	addi	r5, r0, #249
	bltu	r5, r4, L_BB0_768
	b	L_BB0_773
L_BB0_773:                              ; %.preheader102
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_777
L_BB0_777:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r4, r3, #1
	addi	r3, r0, #0
	be	r4, r3, L_BB0_777
	b	L_BB0_778
L_BB0_778:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r9 + #0]
L_BB0_779:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_779
	b	L_BB0_780
L_BB0_780:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #10
	sw	r4, [r9 + #0]
	lw	r13, [r15 + #56]
L_BB0_781:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_781
	b	L_BB0_782
L_BB0_782:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #117
	sw	r4, [r9 + #0]
L_BB0_783:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_783
	b	L_BB0_784
L_BB0_784:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #115
	sw	r4, [r9 + #0]
L_BB0_785:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_785
	b	L_BB0_786
L_BB0_786:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #97
	sw	r4, [r9 + #0]
L_BB0_787:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_787
	b	L_BB0_788
L_BB0_788:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #103
	sw	r5, [r9 + #0]
L_BB0_789:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_789
	b	L_BB0_790
L_BB0_790:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #32]
	sw	r5, [r9 + #0]
L_BB0_791:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_791
	b	L_BB0_792
L_BB0_792:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #58
	sw	r5, [r9 + #0]
L_BB0_793:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_793
	b	L_BB0_794
L_BB0_794:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_795:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_795
	b	L_BB0_796
L_BB0_796:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
L_BB0_797:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_797
	b	L_BB0_798
L_BB0_798:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_799:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_799
	b	L_BB0_800
L_BB0_800:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r9 + #0]
L_BB0_801:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_801
	b	L_BB0_802
L_BB0_802:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #100
	sw	r2, [r9 + #0]
L_BB0_803:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_803
	b	L_BB0_804
L_BB0_804:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
L_BB0_805:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_805
	b	L_BB0_806
L_BB0_806:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #0]
	sw	r2, [r9 + #0]
	b	L_BB0_65
L_BB0_333:                              ; %.loopexit57
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_334:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sltu	r2, r3, r2
	lw	r4, [r15 + #144]
	bltu	r4, r3, L_BB0_331
	b	L_BB0_335
L_BB0_335:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #-33
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r4, r0, #249
	bltu	r4, r3, L_BB0_331
	b	L_BB0_336
L_BB0_336:                              ; %.preheader48
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	addi	r3, r0, #10
	addi	r5, r3, #0
	addi	r4, r2, #0
	lw	r9, [r15 + #120]
	b	L_BB0_340
L_BB0_340:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_341 Depth 3
                                        ;       Child Loop BB0_344 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_343
	b	L_BB0_341
L_BB0_341:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_340 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_341
	b	L_BB0_342
L_BB0_342:                              ;   in Loop: Header=BB0_340 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_343:                              ;   in Loop: Header=BB0_340 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_344:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_340 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_344
	b	L_BB0_345
L_BB0_345:                              ;   in Loop: Header=BB0_340 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #20
	or	r7, r5, r4
	add	r5, r2, r9
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_340
L_BB0_509:                              ; %.loopexit90
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_510:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r2, r2, #255
	addi	r3, r0, #246
	sltu	r13, r2, r3
	lw	r3, [r15 + #144]
	bltu	r3, r2, L_BB0_507
	b	L_BB0_511
L_BB0_511:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #-33
	and	r2, r7, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	addi	r3, r0, #249
	bltu	r3, r2, L_BB0_507
	b	L_BB0_512
L_BB0_585:                              ; %.loopexit101
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_586:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sltu	r2, r3, r2
	lw	r4, [r15 + #144]
	bltu	r4, r3, L_BB0_583
	b	L_BB0_587
L_BB0_587:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #-33
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r4, r0, #249
	bltu	r4, r3, L_BB0_583
	b	L_BB0_588
L_BB0_450:                              ; %.loopexit76
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_451:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sltu	r2, r3, r2
	lw	r4, [r15 + #144]
	bltu	r4, r3, L_BB0_448
	b	L_BB0_452
L_BB0_452:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #-33
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r4, r0, #249
	bltu	r4, r3, L_BB0_448
	b	L_BB0_453
L_BB0_385:                              ; %.loopexit68
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_386:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sltu	r2, r3, r2
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_383
	b	L_BB0_387
L_BB0_387:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #-33
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r5, r0, #249
	bltu	r5, r3, L_BB0_383
	b	L_BB0_388
L_BB0_388:                              ; %.preheader58
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	addi	r3, r0, #10
	addi	r5, r3, #0
	addi	r4, r2, #0
	b	L_BB0_392
L_BB0_392:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_393 Depth 3
                                        ;       Child Loop BB0_396 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_395
	b	L_BB0_393
L_BB0_393:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_392 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_393
	b	L_BB0_394
L_BB0_394:                              ;   in Loop: Header=BB0_392 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_395:                              ;   in Loop: Header=BB0_392 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_396:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_392 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_396
	b	L_BB0_397
L_BB0_397:                              ;   in Loop: Header=BB0_392 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #24
	or	r7, r5, r4
	add	r5, r2, r9
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_392
L_BB0_178:                              ; %.loopexit119
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r7, #-2
	addi	r6, r7, #0
	addi	r2, r3, #0
	lw	r5, [r15 + #136]
L_BB0_179:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r2, #-58
	andi	r3, r3, #255
	lw	r4, [r15 + #124]
	sltu	r7, r3, r4
	lw	r4, [r15 + #144]
	bltu	r4, r3, L_BB0_176
	b	L_BB0_180
L_BB0_180:                              ;   in Loop: Header=BB0_65 Depth=1
	and	r3, r2, r5
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r9, r3, L_BB0_176
	b	L_BB0_181
L_BB0_181:                              ; %.preheader116
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_185
L_BB0_185:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_185
	b	L_BB0_186
L_BB0_186:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #112]
	sw	r3, [r12 + #0]
L_BB0_187:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_187
	b	L_BB0_188
L_BB0_188:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #76]
	sw	r3, [r12 + #0]
L_BB0_189:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_189
	b	L_BB0_190
L_BB0_190:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #12]
	sw	r2, [r12 + #0]
	b	L_BB0_65
L_BB0_767:                              ; %._crit_edge193
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r7, #-2
	addi	r12, r7, #0
	addi	r7, r0, #0
L_BB0_768:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r15 + #92]
	addi	r2, r12, #1
	addi	r12, r0, #0
	addi	r6, r12, #0
	b	L_BB0_774
L_BB0_774:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r7, #1
	sub	r4, r12, r4
	addi	r5, r3, #-97
	andi	r5, r5, #255
	addi	r7, r0, #6
	sltu	r5, r5, r7
	sub	r5, r12, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r4, r5, r4
	addi	r5, r0, #-48
	xor	r4, r4, r5
	slli	r3, r3, #24
	srai	r3, r3, #24
	add	r4, r4, r3
	slli	r3, r6, #4
	or	r6, r4, r3
	lbu	r3, [r2 + #0]
	addi	r5, r3, #-58
	andi	r5, r5, #255
	addi	r7, r0, #246
	sltu	r7, r5, r7
	addi	r2, r2, #1
	lw	r13, [r15 + #144]
	bltu	r13, r5, L_BB0_774
	b	L_BB0_775
L_BB0_775:                              ;   in Loop: Header=BB0_774 Depth=2
	addi	r5, r0, #-33
	and	r5, r3, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	addi	r13, r0, #249
	bltu	r13, r5, L_BB0_774
	b	L_BB0_776
L_BB0_776:                              ; %.preheader112
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_807
L_BB0_807:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_807
	b	L_BB0_808
L_BB0_808:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #112]
	sw	r3, [r9 + #0]
L_BB0_809:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_809
	b	L_BB0_810
L_BB0_810:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #10
	sw	r3, [r9 + #0]
L_BB0_811:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_811
	b	L_BB0_812
L_BB0_812:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #119
	sw	r5, [r9 + #0]
L_BB0_813:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_813
	b	L_BB0_814
L_BB0_814:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #40]
	sw	r5, [r9 + #0]
L_BB0_815:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_815
	b	L_BB0_816
L_BB0_816:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r0, #117
	sw	r7, [r9 + #0]
L_BB0_817:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_817
	b	L_BB0_818
L_BB0_818:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #24]
	sw	r5, [r9 + #0]
L_BB0_819:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_819
	b	L_BB0_820
L_BB0_820:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #100
	sw	r5, [r9 + #0]
L_BB0_821:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_821
	b	L_BB0_822
L_BB0_822:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #92]
	sw	r5, [r9 + #0]
L_BB0_823:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_823
	b	L_BB0_824
L_BB0_824:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r0, #106
	sw	r5, [r9 + #0]
L_BB0_825:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_825
	b	L_BB0_826
L_BB0_826:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r9 + #0]
L_BB0_827:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_827
	b	L_BB0_828
L_BB0_828:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #28]
	sw	r5, [r9 + #0]
L_BB0_829:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_829
	b	L_BB0_830
L_BB0_830:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #4]
	sw	r5, [r9 + #0]
L_BB0_831:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_831
	b	L_BB0_832
L_BB0_832:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #92]
	sw	r5, [r9 + #0]
L_BB0_833:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_833
	b	L_BB0_834
L_BB0_834:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #36]
	sw	r5, [r9 + #0]
L_BB0_835:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_835
	b	L_BB0_836
L_BB0_836:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #40]
	sw	r5, [r9 + #0]
L_BB0_837:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_837
	b	L_BB0_838
L_BB0_838:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #92]
	sw	r5, [r9 + #0]
	srli	r7, r6, #28
	la	r5, .L.str.7
	add	r7, r7, r5
	lbu	r12, [r7 + #0]
	bne	r12, r3, L_BB0_841
	b	L_BB0_839
L_BB0_839:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	addi	r13, r0, #0
	be	r7, r13, L_BB0_839
	b	L_BB0_840
L_BB0_840:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r7, [r15 + #112]
	sw	r7, [r9 + #0]
L_BB0_841:                              ;   in Loop: Header=BB0_65 Depth=1
	srli	r13, r6, #24
	srli	r7, r6, #16
L_BB0_842:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r9, [r8 + #0]
	andi	r9, r9, #1
	be	r9, r2, L_BB0_842
	b	L_BB0_843
L_BB0_843:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r9, #1073741824
	sw	r12, [r9 + #0]
	andi	r12, r13, #15
	add	r12, r12, r5
	lbu	r12, [r12 + #0]
	bne	r12, r3, L_BB0_846
	b	L_BB0_844
L_BB0_844:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	addi	r9, r0, #0
	be	r13, r9, L_BB0_844
	b	L_BB0_845
L_BB0_845:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r9, #1073741824
	lw	r13, [r15 + #112]
	sw	r13, [r9 + #0]
L_BB0_846:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r2, L_BB0_846
	b	L_BB0_847
L_BB0_847:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r12, [r9 + #0]
	srli	r12, r6, #20
	andi	r12, r12, #15
	add	r12, r12, r5
	lbu	r12, [r12 + #0]
	bne	r12, r3, L_BB0_850
	b	L_BB0_848
L_BB0_848:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	addi	r9, r0, #0
	be	r13, r9, L_BB0_848
	b	L_BB0_849
L_BB0_849:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r9, #1073741824
	lw	r13, [r15 + #112]
	sw	r13, [r9 + #0]
L_BB0_850:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r2, L_BB0_850
	b	L_BB0_851
L_BB0_851:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r12, [r9 + #0]
	andi	r7, r7, #15
	add	r7, r7, r5
	lbu	r7, [r7 + #0]
	bne	r7, r3, L_BB0_854
	b	L_BB0_852
L_BB0_852:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	addi	r13, r0, #0
	be	r12, r13, L_BB0_852
	b	L_BB0_853
L_BB0_853:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r12, [r15 + #112]
	sw	r12, [r9 + #0]
L_BB0_854:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r2, L_BB0_854
	b	L_BB0_855
L_BB0_855:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r9 + #0]
	srli	r7, r6, #12
	andi	r7, r7, #15
	add	r7, r7, r5
	lbu	r7, [r7 + #0]
	bne	r7, r3, L_BB0_858
	b	L_BB0_856
L_BB0_856:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	addi	r13, r0, #0
	be	r12, r13, L_BB0_856
	b	L_BB0_857
L_BB0_857:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r12, [r15 + #112]
	sw	r12, [r9 + #0]
L_BB0_858:                              ;   in Loop: Header=BB0_65 Depth=1
	srli	r12, r6, #8
L_BB0_859:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r2, L_BB0_859
	b	L_BB0_860
L_BB0_860:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r9 + #0]
	andi	r7, r12, #15
	add	r7, r7, r5
	lbu	r7, [r7 + #0]
	bne	r7, r3, L_BB0_863
	b	L_BB0_861
L_BB0_861:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	addi	r13, r0, #0
	be	r12, r13, L_BB0_861
	b	L_BB0_862
L_BB0_862:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r12, [r15 + #112]
	sw	r12, [r9 + #0]
L_BB0_863:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r2, L_BB0_863
	b	L_BB0_864
L_BB0_864:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r9 + #0]
	srli	r6, r6, #4
	andi	r6, r6, #15
	add	r6, r6, r5
	lbu	r6, [r6 + #0]
	lw	r13, [r15 + #56]
	bne	r6, r3, L_BB0_867
	b	L_BB0_865
L_BB0_865:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	addi	r12, r0, #0
	be	r7, r12, L_BB0_865
	b	L_BB0_866
L_BB0_866:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r7, [r15 + #112]
	sw	r7, [r9 + #0]
L_BB0_867:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r12, [r15 + #112]
L_BB0_868:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r2, L_BB0_868
	b	L_BB0_869
L_BB0_869:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
	andi	r4, r4, #15
	add	r4, r4, r5
	lbu	r4, [r4 + #0]
	bne	r4, r3, L_BB0_872
	b	L_BB0_870
L_BB0_870:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	addi	r6, r0, #0
	be	r5, r6, L_BB0_870
	b	L_BB0_871
L_BB0_871:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r12, [r9 + #0]
L_BB0_872:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_872
	b	L_BB0_873
L_BB0_873:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r9 + #0]
	addi	r5, r3, #0
	addi	r4, r2, #0
L_BB0_874:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_875 Depth 3
                                        ;       Child Loop BB0_878 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_877
	b	L_BB0_875
L_BB0_875:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_874 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_875
	b	L_BB0_876
L_BB0_876:                              ;   in Loop: Header=BB0_874 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_877:                              ;   in Loop: Header=BB0_874 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_878:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_874 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_878
	b	L_BB0_879
L_BB0_879:                              ;   in Loop: Header=BB0_874 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #44
	or	r7, r5, r4
	la	r5, .L.str.30
	add	r5, r2, r5
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_874
L_BB0_330:                              ; %._crit_edge336
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r2, r0, #0
L_BB0_331:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r15 + #108]
	addi	r6, r12, #0
	addi	r4, r12, #3
	addi	r12, r0, #0
	sw	r12, [r15 + #140]
	b	L_BB0_337
L_BB0_337:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r13, r4, #0
	andi	r2, r2, #1
	sub	r2, r12, r2
	addi	r3, r7, #-97
	andi	r3, r3, #255
	addi	r4, r0, #6
	sw	r4, [r15 + #132]
	sltu	r3, r3, r4
	sub	r3, r12, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	addi	r3, r0, #-48
	sw	r3, [r15 + #128]
	xor	r2, r2, r3
	slli	r3, r7, #24
	srai	r3, r3, #24
	add	r2, r2, r3
	lw	r3, [r15 + #140]
	slli	r3, r3, #4
	or	r2, r2, r3
	sw	r2, [r15 + #140]
	addi	r2, r6, #0
	addi	r2, r2, #1
	addi	r6, r2, #0
	lbu	r7, [r2 + #0]
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sw	r2, [r15 + #136]
	sltu	r2, r3, r2
	addi	r4, r13, #1
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_337
	b	L_BB0_338
L_BB0_338:                              ;   in Loop: Header=BB0_337 Depth=2
	addi	r9, r0, #-33
	and	r5, r7, r9
	addi	r5, r5, #-71
	andi	r3, r5, #255
	addi	r5, r0, #249
	bltu	r5, r3, L_BB0_337
	b	L_BB0_339
L_BB0_339:                              ; %.preheader54
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r9, [r15 + #124]
	lw	r12, [r15 + #116]
	lw	r4, [r15 + #108]
	b	L_BB0_346
L_BB0_350:                              ;   in Loop: Header=BB0_346 Depth=2
	addi	r13, r13, #1
	addi	r6, r6, #1
	lbu	r7, [r6 + #0]
	b	L_BB0_346
L_BB0_346:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	lw	r3, [r15 + #104]
	be	r2, r3, L_BB0_350
	b	L_BB0_347
L_BB0_347:                              ;   in Loop: Header=BB0_346 Depth=2
	be	r2, r4, L_BB0_350
	b	L_BB0_348
L_BB0_348:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r0, #0
	be	r2, r6, L_BB0_372
	b	L_BB0_349
L_BB0_372:                              ; %.loopexit55
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #128
L_BB0_373:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_373
	b	L_BB0_374
L_BB0_374:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r5, #1073741824
	lw	r3, [r15 + #112]
	sw	r3, [r5 + #0]
L_BB0_375:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_375
	b	L_BB0_376
L_BB0_376:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r5 + #0]
	lw	r2, [r15 + #140]
	add	r3, r2, r4
	addi	r3, r3, #-1
	jal	r11, dump_range
	lw	r13, [r15 + #56]
	b	L_BB0_65
L_BB0_349:                              ; %.preheader52
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_351
L_BB0_354:                              ;   in Loop: Header=BB0_351 Depth=2
	addi	r2, r13, #1
	addi	r3, r13, #-1
	lbu	r7, [r3 + #0]
	addi	r13, r2, #0
	b	L_BB0_351
L_BB0_351:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	lw	r3, [r15 + #104]
	be	r2, r3, L_BB0_354
	b	L_BB0_352
L_BB0_352:                              ;   in Loop: Header=BB0_351 Depth=2
	be	r2, r4, L_BB0_354
	b	L_BB0_353
L_BB0_353:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r2, r12, L_BB0_355
	b	L_BB0_359
L_BB0_355:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r13 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	lw	r9, [r15 + #120]
	lw	r7, [r15 + #124]
	be	r2, r3, L_BB0_358
	b	L_BB0_356
L_BB0_358:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r12, [r13 + #0]
	b	L_BB0_360
L_BB0_506:                              ; %._crit_edge239
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r13, r0, #0
L_BB0_507:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r15 + #116]
	sw	r12, [r15 + #88]
	addi	r5, r12, #3
	addi	r3, r0, #0
	sw	r3, [r15 + #140]
	b	L_BB0_513
L_BB0_513:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r12, r5, #0
	andi	r2, r13, #1
	sub	r2, r3, r2
	addi	r4, r7, #-97
	andi	r4, r4, #255
	addi	r5, r0, #6
	sw	r5, [r15 + #132]
	sltu	r4, r4, r5
	sub	r4, r3, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r2, r4, r2
	addi	r4, r0, #-48
	sw	r4, [r15 + #128]
	xor	r2, r2, r4
	slli	r5, r7, #24
	srai	r5, r5, #24
	add	r2, r2, r5
	lw	r4, [r15 + #140]
	slli	r5, r4, #4
	or	r2, r2, r5
	sw	r2, [r15 + #140]
	lw	r2, [r15 + #88]
	addi	r2, r2, #1
	sw	r2, [r15 + #88]
	lbu	r7, [r2 + #0]
	addi	r2, r7, #-58
	andi	r2, r2, #255
	addi	r4, r0, #246
	sw	r4, [r15 + #136]
	sltu	r13, r2, r4
	addi	r5, r12, #1
	lw	r4, [r15 + #144]
	bltu	r4, r2, L_BB0_513
	b	L_BB0_514
L_BB0_514:                              ;   in Loop: Header=BB0_513 Depth=2
	addi	r9, r0, #-33
	and	r2, r7, r9
	addi	r2, r2, #-71
	andi	r4, r2, #255
	addi	r2, r0, #249
	bltu	r2, r4, L_BB0_513
	b	L_BB0_515
L_BB0_515:                              ; %.preheader87
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #104]
	lw	r13, [r15 + #116]
L_BB0_516:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r7, #255
	be	r3, r5, L_BB0_519
	b	L_BB0_517
L_BB0_517:                              ;   in Loop: Header=BB0_516 Depth=2
	be	r3, r6, L_BB0_519
	b	L_BB0_518
L_BB0_519:                              ;   in Loop: Header=BB0_516 Depth=2
	addi	r3, r12, #1
	addi	r4, r12, #-1
	lbu	r7, [r4 + #0]
	addi	r12, r3, #0
	b	L_BB0_516
L_BB0_518:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r3, r13, L_BB0_520
	b	L_BB0_523
L_BB0_520:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r3, [r12 + #-1]
	ori	r3, r3, #32
	addi	r4, r0, #120
	be	r3, r4, L_BB0_522
	b	L_BB0_521
L_BB0_522:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r12 + #0]
	b	L_BB0_524
L_BB0_523:                              ; %.loopexit88
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
L_BB0_524:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r7, #-58
	andi	r4, r3, #255
	lw	r3, [r15 + #136]
	sltu	r3, r4, r3
	lw	r5, [r15 + #144]
	bltu	r5, r4, L_BB0_526
	b	L_BB0_525
L_BB0_525:                              ;   in Loop: Header=BB0_65 Depth=1
	and	r4, r7, r9
	addi	r4, r4, #-71
	andi	r4, r4, #255
	lw	r5, [r15 + #84]
	bltu	r4, r5, L_BB0_512
	b	L_BB0_526
L_BB0_582:                              ; %._crit_edge204
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r2, r0, #0
L_BB0_583:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r12, #3
	addi	r9, r0, #0
	sw	r9, [r15 + #140]
	b	L_BB0_589
L_BB0_589:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r13, r5, #0
	andi	r2, r2, #1
	sub	r2, r9, r2
	addi	r3, r7, #-97
	andi	r4, r3, #255
	addi	r3, r0, #6
	sw	r3, [r15 + #132]
	sltu	r4, r4, r3
	sub	r4, r9, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r2, r4, r2
	addi	r3, r0, #-48
	sw	r3, [r15 + #128]
	xor	r2, r2, r3
	slli	r4, r7, #24
	srai	r4, r4, #24
	add	r2, r2, r4
	lw	r3, [r15 + #140]
	slli	r4, r3, #4
	or	r2, r2, r4
	sw	r2, [r15 + #140]
	addi	r12, r12, #1
	lbu	r7, [r12 + #0]
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	sw	r2, [r15 + #136]
	sltu	r2, r3, r2
	addi	r5, r13, #1
	lw	r6, [r15 + #144]
	bltu	r6, r3, L_BB0_589
	b	L_BB0_590
L_BB0_590:                              ;   in Loop: Header=BB0_589 Depth=2
	addi	r6, r0, #-33
	and	r3, r7, r6
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r4, r0, #249
	bltu	r4, r3, L_BB0_589
	b	L_BB0_591
L_BB0_591:                              ; %.preheader98
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r15 + #108]
	sw	r6, [r15 + #120]
	li	r9, #1073741824
	lw	r5, [r15 + #104]
	lw	r6, [r15 + #116]
L_BB0_592:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_595
	b	L_BB0_593
L_BB0_593:                              ;   in Loop: Header=BB0_592 Depth=2
	be	r2, r6, L_BB0_595
	b	L_BB0_594
L_BB0_595:                              ;   in Loop: Header=BB0_592 Depth=2
	addi	r2, r13, #1
	addi	r3, r13, #-1
	lbu	r7, [r3 + #0]
	addi	r13, r2, #0
	b	L_BB0_592
L_BB0_594:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #100]
	be	r2, r3, L_BB0_596
	b	L_BB0_599
L_BB0_596:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r13 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_598
	b	L_BB0_597
L_BB0_598:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r13 + #0]
	b	L_BB0_600
L_BB0_599:                              ; %.loopexit99
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r13, r13, #-2
L_BB0_600:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_602
	b	L_BB0_601
L_BB0_601:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #120]
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r5, [r15 + #84]
	bltu	r3, r5, L_BB0_588
	b	L_BB0_602
L_BB0_447:                              ; %._crit_edge277
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r2, r0, #0
L_BB0_448:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r15 + #108]
	addi	r6, r12, #0
	addi	r5, r12, #3
	addi	r4, r0, #0
	sw	r4, [r15 + #140]
	b	L_BB0_454
L_BB0_454:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r9, r5, #0
	andi	r2, r2, #1
	sub	r2, r4, r2
	addi	r5, r7, #-97
	andi	r5, r5, #255
	addi	r3, r0, #6
	sw	r3, [r15 + #132]
	sltu	r5, r5, r3
	sub	r5, r4, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r2, r5, r2
	addi	r3, r0, #-48
	sw	r3, [r15 + #128]
	xor	r2, r2, r3
	slli	r5, r7, #24
	srai	r5, r5, #24
	add	r2, r2, r5
	lw	r3, [r15 + #140]
	slli	r3, r3, #4
	or	r2, r2, r3
	sw	r2, [r15 + #140]
	addi	r2, r6, #0
	addi	r2, r2, #1
	addi	r6, r2, #0
	lbu	r7, [r2 + #0]
	addi	r2, r7, #-58
	andi	r12, r2, #255
	addi	r2, r0, #246
	sw	r2, [r15 + #136]
	sltu	r2, r12, r2
	addi	r5, r9, #1
	lw	r3, [r15 + #144]
	bltu	r3, r12, L_BB0_454
	b	L_BB0_455
L_BB0_455:                              ;   in Loop: Header=BB0_454 Depth=2
	addi	r3, r0, #-33
	and	r12, r7, r3
	addi	r12, r12, #-71
	andi	r12, r12, #255
	addi	r13, r0, #249
	bltu	r13, r12, L_BB0_454
	b	L_BB0_456
L_BB0_456:                              ; %.preheader73
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r15 + #120]
	sw	r3, [r15 + #124]
	lw	r3, [r15 + #104]
	lw	r5, [r15 + #116]
	lw	r6, [r15 + #108]
L_BB0_457:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r3, L_BB0_460
	b	L_BB0_458
L_BB0_458:                              ;   in Loop: Header=BB0_457 Depth=2
	be	r2, r6, L_BB0_460
	b	L_BB0_459
L_BB0_460:                              ;   in Loop: Header=BB0_457 Depth=2
	addi	r2, r9, #1
	addi	r4, r9, #-1
	lbu	r7, [r4 + #0]
	addi	r9, r2, #0
	b	L_BB0_457
L_BB0_459:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r2, r5, L_BB0_461
	b	L_BB0_464
L_BB0_461:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r9 + #-1]
	ori	r2, r2, #32
	addi	r4, r0, #120
	be	r2, r4, L_BB0_463
	b	L_BB0_462
L_BB0_463:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r9 + #0]
	b	L_BB0_465
L_BB0_464:                              ; %.loopexit74
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r9, r9, #-2
L_BB0_465:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r7, #-58
	andi	r2, r2, #255
	lw	r3, [r15 + #136]
	sltu	r4, r2, r3
	lw	r3, [r15 + #144]
	bltu	r3, r2, L_BB0_467
	b	L_BB0_466
L_BB0_466:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #124]
	and	r2, r7, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	lw	r3, [r15 + #84]
	bltu	r2, r3, L_BB0_453
	b	L_BB0_467
L_BB0_382:                              ; %._crit_edge312
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r2, r0, #0
L_BB0_383:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r9, [r15 + #108]
	sw	r4, [r15 + #140]
	b	L_BB0_389
L_BB0_389:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r2, #1
	sub	r2, r4, r2
	addi	r3, r7, #-97
	andi	r3, r3, #255
	addi	r5, r0, #6
	sw	r5, [r15 + #136]
	sltu	r3, r3, r5
	sub	r3, r4, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	addi	r3, r0, #-48
	sw	r3, [r15 + #132]
	xor	r2, r2, r3
	slli	r3, r7, #24
	srai	r3, r3, #24
	add	r2, r2, r3
	lw	r3, [r15 + #140]
	slli	r3, r3, #4
	or	r2, r2, r3
	sw	r2, [r15 + #140]
	addi	r12, r12, #1
	lbu	r7, [r12 + #0]
	addi	r2, r7, #-58
	andi	r3, r2, #255
	addi	r2, r0, #246
	addi	r9, r2, #0
	sltu	r2, r3, r2
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_389
	b	L_BB0_390
L_BB0_390:                              ;   in Loop: Header=BB0_389 Depth=2
	addi	r5, r0, #-33
	and	r3, r7, r5
	addi	r3, r3, #-71
	andi	r3, r3, #255
	addi	r13, r0, #249
	bltu	r13, r3, L_BB0_389
	b	L_BB0_391
L_BB0_391:                              ; %.preheader66
                                        ;   in Loop: Header=BB0_65 Depth=1
	sw	r13, [r15 + #116]
	sw	r5, [r15 + #128]
	addi	r2, r0, #0
	sw	r2, [r15 + #124]
	lw	r5, [r15 + #104]
	lw	r13, [r15 + #132]
	b	L_BB0_398
L_BB0_398:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_399 Depth 3
                                        ;       Child Loop BB0_404 Depth 3
                                        ;       Child Loop BB0_416 Depth 3
	addi	r4, r12, #2
L_BB0_399:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_398 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lbu	r7, [r12 + #0]
	be	r7, r5, L_BB0_403
	b	L_BB0_400
L_BB0_400:                              ;   in Loop: Header=BB0_399 Depth=3
	be	r7, r6, L_BB0_403
	b	L_BB0_401
L_BB0_403:                              ;   in Loop: Header=BB0_399 Depth=3
	addi	r4, r4, #1
	addi	r12, r12, #1
	b	L_BB0_399
L_BB0_401:                              ;   in Loop: Header=BB0_398 Depth=2
	addi	r3, r0, #0
	be	r7, r3, L_BB0_424
	b	L_BB0_402
L_BB0_402:                              ; %.preheader15
                                        ;   in Loop: Header=BB0_398 Depth=2
	lw	r12, [r15 + #116]
	b	L_BB0_404
L_BB0_407:                              ;   in Loop: Header=BB0_404 Depth=3
	addi	r2, r4, #1
	addi	r4, r4, #-1
	lbu	r7, [r4 + #0]
	addi	r4, r2, #0
	b	L_BB0_404
L_BB0_404:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_398 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	andi	r2, r7, #255
	be	r2, r5, L_BB0_407
	b	L_BB0_405
L_BB0_405:                              ;   in Loop: Header=BB0_404 Depth=3
	be	r2, r6, L_BB0_407
	b	L_BB0_406
L_BB0_406:                              ;   in Loop: Header=BB0_398 Depth=2
	lw	r5, [r15 + #120]
	sw	r6, [r15 + #92]
	be	r2, r5, L_BB0_408
	b	L_BB0_411
L_BB0_408:                              ;   in Loop: Header=BB0_398 Depth=2
	lbu	r2, [r4 + #-1]
	ori	r2, r2, #32
	addi	r5, r0, #120
	be	r2, r5, L_BB0_410
	b	L_BB0_409
L_BB0_410:                              ;   in Loop: Header=BB0_398 Depth=2
	lbu	r7, [r4 + #0]
	b	L_BB0_412
L_BB0_411:                              ; %.loopexit
                                        ;   in Loop: Header=BB0_398 Depth=2
	addi	r4, r4, #-2
L_BB0_412:                              ;   in Loop: Header=BB0_398 Depth=2
	addi	r2, r7, #-58
	andi	r5, r2, #255
	sltu	r2, r5, r9
	lw	r6, [r15 + #144]
	bltu	r6, r5, L_BB0_415
	b	L_BB0_413
L_BB0_413:                              ;   in Loop: Header=BB0_398 Depth=2
	lw	r5, [r15 + #128]
	and	r5, r7, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	bltu	r12, r5, L_BB0_415
	b	L_BB0_414
L_BB0_409:                              ; %._crit_edge326
                                        ;   in Loop: Header=BB0_398 Depth=2
	addi	r4, r4, #-2
	addi	r2, r0, #0
	lw	r7, [r15 + #120]
	b	L_BB0_415
L_BB0_415:                              ;   in Loop: Header=BB0_398 Depth=2
	addi	r6, r3, #0
L_BB0_416:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_398 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	andi	r2, r2, #1
	sub	r2, r3, r2
	addi	r5, r7, #-97
	andi	r5, r5, #255
	lw	r12, [r15 + #136]
	sltu	r5, r5, r12
	sub	r5, r3, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r2, r5, r2
	xor	r2, r2, r13
	andi	r5, r7, #255
	add	r2, r2, r5
	slli	r5, r6, #4
	or	r6, r2, r5
	addi	r4, r4, #1
	lbu	r7, [r4 + #0]
	addi	r2, r7, #-58
	andi	r5, r2, #255
	sltu	r2, r5, r9
	lw	r12, [r15 + #144]
	bltu	r12, r5, L_BB0_416
	b	L_BB0_417
L_BB0_417:                              ;   in Loop: Header=BB0_416 Depth=3
	lw	r5, [r15 + #128]
	and	r5, r7, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	lw	r12, [r15 + #84]
	bltu	r5, r12, L_BB0_423
	b	L_BB0_416
L_BB0_423:                              ;   in Loop: Header=BB0_398 Depth=2
	lw	r2, [r15 + #140]
	sb	r6, [r2 + #0]
	lw	r3, [r15 + #124]
	addi	r3, r3, #1
	sw	r3, [r15 + #124]
	addi	r2, r2, #1
	sw	r2, [r15 + #140]
	addi	r12, r4, #0
	lw	r5, [r15 + #104]
	lw	r6, [r15 + #92]
	b	L_BB0_398
L_BB0_424:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	lw	r3, [r15 + #124]
	be	r3, r2, L_BB0_426
	b	L_BB0_425
L_BB0_425:                              ; %.preheader65
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r13, [r15 + #56]
	lw	r4, [r15 + #76]
	b	L_BB0_434
L_BB0_434:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_434
	b	L_BB0_435
L_BB0_435:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r5, #1073741824
	lw	r3, [r15 + #112]
	sw	r3, [r5 + #0]
L_BB0_436:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_436
	b	L_BB0_437
L_BB0_437:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r5 + #0]
L_BB0_438:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_438
	b	L_BB0_439
L_BB0_439:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #40]
	sw	r3, [r5 + #0]
L_BB0_440:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r4, r3, #1
	addi	r3, r0, #107
	be	r4, r2, L_BB0_440
	b	L_BB0_441
L_BB0_441:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r3, [r5 + #0]
	b	L_BB0_65
L_BB0_426:                              ; %.preheader62
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #76]
	addi	r3, r2, #0
	lw	r13, [r15 + #56]
	lw	r9, [r15 + #108]
L_BB0_427:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_429 Depth 3
                                        ;       Child Loop BB0_432 Depth 3
	andi	r4, r4, #255
	li	r7, #1073741824
	lw	r5, [r15 + #76]
	bne	r4, r5, L_BB0_431
	b	L_BB0_428
L_BB0_428:                              ; %.preheader14
                                        ;   in Loop: Header=BB0_427 Depth=2
	lw	r12, [r15 + #112]
L_BB0_429:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_427 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	addi	r6, r0, #0
	be	r5, r6, L_BB0_429
	b	L_BB0_430
L_BB0_430:                              ;   in Loop: Header=BB0_427 Depth=2
	sw	r12, [r7 + #0]
L_BB0_431:                              ;   in Loop: Header=BB0_427 Depth=2
	addi	r2, r2, #1
	sltu	r5, r0, r2
	xori	r5, r5, #1
	add	r3, r3, r5
L_BB0_432:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_427 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r6, r5, #1
	addi	r5, r0, #0
	be	r6, r5, L_BB0_432
	b	L_BB0_433
L_BB0_433:                              ;   in Loop: Header=BB0_427 Depth=2
	sw	r4, [r7 + #0]
	xori	r4, r2, #24
	or	r6, r4, r3
	add	r4, r2, r9
	lbu	r4, [r4 + #0]
	be	r6, r5, L_BB0_65
	b	L_BB0_427
L_BB0_359:                              ; %.loopexit53
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r13, r13, #-2
	addi	r12, r7, #0
	lw	r9, [r15 + #120]
	lw	r7, [r15 + #124]
L_BB0_360:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r12, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	lw	r4, [r15 + #144]
	bltu	r4, r3, L_BB0_357
	b	L_BB0_361
L_BB0_361:                              ;   in Loop: Header=BB0_65 Depth=1
	and	r3, r12, r7
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r5, r3, L_BB0_357
	b	L_BB0_362
L_BB0_362:                              ; %.preheader50
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	addi	r3, r0, #10
	addi	r5, r3, #0
	addi	r4, r2, #0
	lw	r13, [r15 + #56]
	b	L_BB0_365
L_BB0_365:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_366 Depth 3
                                        ;       Child Loop BB0_369 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_368
	b	L_BB0_366
L_BB0_366:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_365 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_366
	b	L_BB0_367
L_BB0_367:                              ;   in Loop: Header=BB0_365 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_368:                              ;   in Loop: Header=BB0_365 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_369:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_365 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_369
	b	L_BB0_370
L_BB0_370:                              ;   in Loop: Header=BB0_365 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #20
	or	r7, r5, r4
	add	r5, r2, r9
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_365
L_BB0_175:                              ; %._crit_edge158
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r7, r7, #-2
	addi	r6, r7, #0
	addi	r7, r0, #0
L_BB0_176:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r6, #1
	addi	r6, r0, #0
	addi	r3, r6, #0
	b	L_BB0_182
L_BB0_182:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r5, r7, #1
	sub	r5, r6, r5
	addi	r7, r2, #-97
	andi	r7, r7, #255
	lw	r13, [r15 + #120]
	sltu	r7, r7, r13
	sub	r7, r6, r7
	andi	r7, r7, #96
	ori	r7, r7, #25
	and	r5, r7, r5
	lw	r7, [r15 + #116]
	xor	r5, r5, r7
	slli	r2, r2, #24
	srai	r2, r2, #24
	add	r2, r5, r2
	slli	r3, r3, #4
	or	r3, r2, r3
	lbu	r2, [r4 + #0]
	addi	r5, r2, #-58
	andi	r5, r5, #255
	lw	r7, [r15 + #124]
	sltu	r7, r5, r7
	addi	r4, r4, #1
	lw	r13, [r15 + #144]
	bltu	r13, r5, L_BB0_182
	b	L_BB0_183
L_BB0_183:                              ;   in Loop: Header=BB0_182 Depth=2
	lw	r5, [r15 + #136]
	and	r5, r2, r5
	addi	r5, r5, #-71
	andi	r5, r5, #255
	bltu	r9, r5, L_BB0_182
	b	L_BB0_184
L_BB0_184:                              ; %.preheader117
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_191
L_BB0_191:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r4, r2, #1
	addi	r2, r0, #0
	be	r4, r2, L_BB0_191
	b	L_BB0_192
L_BB0_192:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #112]
	sw	r4, [r12 + #0]
L_BB0_193:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r2, L_BB0_193
	b	L_BB0_194
L_BB0_194:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #76]
	sw	r4, [r12 + #0]
	lw	r6, [r15 + #140]
	xor	r5, r3, r6
	sltu	r4, r3, r6
	sub	r4, r2, r4
	and	r4, r5, r4
	xor	r4, r6, r4
	sltu	r3, r6, r3
	sub	r2, r2, r3
	and	r2, r5, r2
	xor	r3, r6, r2
	addi	r2, r4, #0
	jal	r11, dump_range
	lw	r13, [r15 + #56]
	b	L_BB0_65
L_BB0_521:                              ; %._crit_edge251
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r12, #-2
	addi	r7, r0, #48
	addi	r3, r0, #0
	b	L_BB0_526
L_BB0_526:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r9, [r15 + #120]
	sw	r6, [r15 + #92]
	addi	r5, r12, #3
	addi	r9, r0, #0
	sw	r9, [r15 + #124]
L_BB0_527:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r5, #0
	andi	r3, r3, #1
	sub	r3, r9, r3
	addi	r4, r7, #-97
	andi	r4, r4, #255
	lw	r5, [r15 + #132]
	sltu	r4, r4, r5
	sub	r4, r9, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r3, r4, r3
	lw	r4, [r15 + #128]
	xor	r3, r3, r4
	slli	r4, r7, #24
	srai	r4, r4, #24
	add	r3, r3, r4
	lw	r4, [r15 + #124]
	slli	r4, r4, #4
	or	r3, r3, r4
	sw	r3, [r15 + #124]
	addi	r12, r12, #1
	lbu	r7, [r12 + #0]
	addi	r3, r7, #-58
	andi	r4, r3, #255
	lw	r3, [r15 + #136]
	sltu	r3, r4, r3
	addi	r5, r6, #1
	lw	r13, [r15 + #144]
	bltu	r13, r4, L_BB0_527
	b	L_BB0_528
L_BB0_528:                              ;   in Loop: Header=BB0_527 Depth=2
	lw	r4, [r15 + #120]
	and	r4, r7, r4
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r2, r4, L_BB0_527
	b	L_BB0_529
L_BB0_529:                              ; %.preheader85
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #104]
	lw	r13, [r15 + #116]
	lw	r9, [r15 + #120]
L_BB0_530:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r4, L_BB0_533
	b	L_BB0_531
L_BB0_531:                              ;   in Loop: Header=BB0_530 Depth=2
	lw	r3, [r15 + #92]
	be	r2, r3, L_BB0_533
	b	L_BB0_532
L_BB0_533:                              ;   in Loop: Header=BB0_530 Depth=2
	addi	r2, r6, #1
	addi	r3, r6, #-1
	lbu	r7, [r3 + #0]
	addi	r6, r2, #0
	b	L_BB0_530
L_BB0_532:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r2, r13, L_BB0_534
	b	L_BB0_537
L_BB0_534:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r6 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_536
	b	L_BB0_535
L_BB0_536:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r13, [r6 + #0]
	b	L_BB0_538
L_BB0_537:                              ; %.loopexit86
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r6, #-2
	addi	r13, r7, #0
L_BB0_538:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r13, #-58
	andi	r2, r2, #255
	lw	r3, [r15 + #136]
	sltu	r3, r2, r3
	lw	r4, [r15 + #144]
	bltu	r4, r2, L_BB0_540
	b	L_BB0_539
L_BB0_539:                              ;   in Loop: Header=BB0_65 Depth=1
	and	r2, r13, r9
	addi	r2, r2, #-71
	andi	r2, r2, #255
	lw	r4, [r15 + #84]
	bltu	r2, r4, L_BB0_512
	b	L_BB0_540
L_BB0_512:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	addi	r3, r0, #10
	addi	r5, r3, #0
	addi	r4, r2, #0
	lw	r13, [r15 + #56]
	b	L_BB0_543
L_BB0_543:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_544 Depth 3
                                        ;       Child Loop BB0_547 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_546
	b	L_BB0_544
L_BB0_544:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_543 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_544
	b	L_BB0_545
L_BB0_545:                              ;   in Loop: Header=BB0_543 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_546:                              ;   in Loop: Header=BB0_543 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_547:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_543 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_547
	b	L_BB0_548
L_BB0_548:                              ;   in Loop: Header=BB0_543 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #21
	or	r7, r5, r4
	la	r5, .L.str.23
	add	r5, r2, r5
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_543
L_BB0_597:                              ; %._crit_edge216
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r13, r13, #-2
	addi	r7, r0, #48
	addi	r2, r0, #0
	b	L_BB0_602
L_BB0_602:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r13, #3
	addi	r9, r0, #0
	sw	r9, [r15 + #124]
L_BB0_603:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r5, #0
	andi	r2, r2, #1
	sub	r2, r9, r2
	addi	r3, r7, #-97
	andi	r3, r3, #255
	lw	r5, [r15 + #132]
	sltu	r3, r3, r5
	sub	r3, r9, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	lw	r3, [r15 + #128]
	xor	r2, r2, r3
	slli	r3, r7, #24
	srai	r3, r3, #24
	add	r2, r2, r3
	lw	r3, [r15 + #124]
	slli	r3, r3, #4
	or	r2, r2, r3
	sw	r2, [r15 + #124]
	addi	r13, r13, #1
	lbu	r7, [r13 + #0]
	addi	r2, r7, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	addi	r5, r6, #1
	lw	r12, [r15 + #144]
	bltu	r12, r3, L_BB0_603
	b	L_BB0_604
L_BB0_604:                              ;   in Loop: Header=BB0_603 Depth=2
	lw	r3, [r15 + #120]
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r4, [r15 + #108]
	bltu	r4, r3, L_BB0_603
	b	L_BB0_605
L_BB0_605:                              ; %.preheader96
                                        ;   in Loop: Header=BB0_65 Depth=1
	li	r9, #1073741824
	lw	r5, [r15 + #104]
	lw	r13, [r15 + #100]
L_BB0_606:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r7, #255
	be	r2, r5, L_BB0_609
	b	L_BB0_607
L_BB0_607:                              ;   in Loop: Header=BB0_606 Depth=2
	lw	r3, [r15 + #116]
	be	r2, r3, L_BB0_609
	b	L_BB0_608
L_BB0_609:                              ;   in Loop: Header=BB0_606 Depth=2
	addi	r2, r6, #1
	addi	r3, r6, #-1
	lbu	r7, [r3 + #0]
	addi	r6, r2, #0
	b	L_BB0_606
L_BB0_608:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r2, r13, L_BB0_610
	b	L_BB0_613
L_BB0_610:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r2, [r6 + #-1]
	ori	r2, r2, #32
	addi	r3, r0, #120
	be	r2, r3, L_BB0_612
	b	L_BB0_611
L_BB0_612:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r6 + #0]
	b	L_BB0_614
L_BB0_613:                              ; %.loopexit97
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r6, #-2
L_BB0_614:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r13, r7, #0
	addi	r2, r7, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_616
	b	L_BB0_615
L_BB0_615:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #120]
	and	r3, r13, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r5, [r15 + #84]
	bltu	r3, r5, L_BB0_588
	b	L_BB0_616
L_BB0_588:                              ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_620
L_BB0_620:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	addi	r3, r0, #0
	be	r2, r3, L_BB0_620
	b	L_BB0_621
L_BB0_621:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #112]
	sw	r2, [r9 + #0]
	lw	r5, [r15 + #8]
L_BB0_622:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_622
	b	L_BB0_623
L_BB0_623:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r9 + #0]
L_BB0_624:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_624
	b	L_BB0_625
L_BB0_625:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #117
	sw	r2, [r9 + #0]
	lw	r13, [r15 + #56]
	lw	r6, [r15 + #116]
L_BB0_626:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_626
	b	L_BB0_627
L_BB0_627:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #115
	sw	r2, [r9 + #0]
L_BB0_628:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_628
	b	L_BB0_629
L_BB0_629:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #97
	sw	r2, [r9 + #0]
L_BB0_630:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_630
	b	L_BB0_631
L_BB0_631:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #103
	sw	r4, [r9 + #0]
L_BB0_632:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_632
	b	L_BB0_633
L_BB0_633:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #32]
	sw	r4, [r9 + #0]
L_BB0_634:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_634
	b	L_BB0_635
L_BB0_635:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #58
	sw	r4, [r9 + #0]
L_BB0_636:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_636
	b	L_BB0_637
L_BB0_637:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_638:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_638
	b	L_BB0_639
L_BB0_639:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r4, [r15 + #96]
	sw	r4, [r9 + #0]
L_BB0_640:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_640
	b	L_BB0_641
L_BB0_641:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_642:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_642
	b	L_BB0_643
L_BB0_643:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
L_BB0_644:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_644
	b	L_BB0_645
L_BB0_645:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_646:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_646
	b	L_BB0_647
L_BB0_647:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #98
	sw	r2, [r9 + #0]
L_BB0_648:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_648
	b	L_BB0_649
L_BB0_649:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r9 + #0]
L_BB0_650:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_650
	b	L_BB0_651
L_BB0_651:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #24]
	sw	r2, [r9 + #0]
L_BB0_652:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_652
	b	L_BB0_653
L_BB0_653:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #32]
	sw	r2, [r9 + #0]
L_BB0_654:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r4, r2, #1
	addi	r2, r5, #0
	be	r4, r3, L_BB0_654
	b	L_BB0_761
L_BB0_761:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r2, [r9 + #0]
	b	L_BB0_65
L_BB0_462:                              ; %._crit_edge289
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r9, r9, #-2
	addi	r7, r0, #48
	addi	r4, r0, #0
	b	L_BB0_467
L_BB0_467:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r12, r9, #3
	addi	r6, r0, #0
	addi	r13, r6, #0
L_BB0_468:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r2, r12, #0
	andi	r4, r4, #1
	sub	r4, r6, r4
	addi	r12, r7, #-97
	andi	r12, r12, #255
	lw	r3, [r15 + #132]
	sltu	r12, r12, r3
	sub	r12, r6, r12
	andi	r12, r12, #96
	ori	r12, r12, #25
	and	r4, r12, r4
	lw	r3, [r15 + #128]
	xor	r4, r4, r3
	slli	r7, r7, #24
	srai	r7, r7, #24
	add	r4, r4, r7
	slli	r5, r13, #4
	or	r13, r4, r5
	addi	r9, r9, #1
	lbu	r7, [r9 + #0]
	addi	r4, r7, #-58
	andi	r3, r4, #255
	lw	r4, [r15 + #136]
	sltu	r4, r3, r4
	addi	r12, r2, #1
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_468
	b	L_BB0_469
L_BB0_469:                              ;   in Loop: Header=BB0_468 Depth=2
	lw	r3, [r15 + #124]
	and	r3, r7, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r5, [r15 + #120]
	bltu	r5, r3, L_BB0_468
	b	L_BB0_470
L_BB0_470:                              ; %.preheader71
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #116]
	lw	r6, [r15 + #108]
L_BB0_471:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r7, #255
	lw	r3, [r15 + #104]
	be	r4, r3, L_BB0_474
	b	L_BB0_472
L_BB0_472:                              ;   in Loop: Header=BB0_471 Depth=2
	be	r4, r6, L_BB0_474
	b	L_BB0_473
L_BB0_474:                              ;   in Loop: Header=BB0_471 Depth=2
	addi	r3, r2, #1
	addi	r2, r2, #-1
	lbu	r7, [r2 + #0]
	addi	r2, r3, #0
	b	L_BB0_471
L_BB0_473:                              ;   in Loop: Header=BB0_65 Depth=1
	be	r4, r5, L_BB0_475
	b	L_BB0_478
L_BB0_475:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r3, [r2 + #-1]
	ori	r3, r3, #32
	addi	r4, r0, #120
	be	r3, r4, L_BB0_477
	b	L_BB0_476
L_BB0_477:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r7, [r2 + #0]
	b	L_BB0_479
L_BB0_478:                              ; %.loopexit72
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r2, #-2
L_BB0_479:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r7, [r15 + #116]
	addi	r3, r7, #-58
	andi	r3, r3, #255
	lw	r4, [r15 + #136]
	sltu	r4, r3, r4
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_481
	b	L_BB0_480
L_BB0_480:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #116]
	lw	r5, [r15 + #124]
	and	r3, r3, r5
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r5, [r15 + #84]
	bltu	r3, r5, L_BB0_453
	b	L_BB0_481
L_BB0_453:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	addi	r3, r0, #10
	addi	r5, r3, #0
	addi	r4, r2, #0
	lw	r13, [r15 + #56]
	b	L_BB0_486
L_BB0_486:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_487 Depth 3
                                        ;       Child Loop BB0_490 Depth 3
	andi	r5, r5, #255
	li	r12, #1073741824
	bne	r5, r3, L_BB0_489
	b	L_BB0_487
L_BB0_487:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_486 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	addi	r7, r0, #0
	be	r6, r7, L_BB0_487
	b	L_BB0_488
L_BB0_488:                              ;   in Loop: Header=BB0_486 Depth=2
	lw	r6, [r15 + #112]
	sw	r6, [r12 + #0]
L_BB0_489:                              ;   in Loop: Header=BB0_486 Depth=2
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r4, r4, r6
L_BB0_490:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_486 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r7, r6, #1
	addi	r6, r0, #0
	be	r7, r6, L_BB0_490
	b	L_BB0_491
L_BB0_491:                              ;   in Loop: Header=BB0_486 Depth=2
	sw	r5, [r12 + #0]
	xori	r5, r2, #23
	or	r7, r5, r4
	la	r5, .L.str.22
	add	r5, r2, r5
	lbu	r5, [r5 + #0]
	be	r7, r6, L_BB0_65
	b	L_BB0_486
L_BB0_535:                              ; %._crit_edge263
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r6, #-2
	addi	r3, r0, #0
	b	L_BB0_540
L_BB0_540:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r6, #1
	addi	r6, r0, #0
	addi	r2, r6, #0
L_BB0_541:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r3, #1
	sub	r3, r6, r3
	addi	r4, r13, #-97
	andi	r4, r4, #255
	lw	r7, [r15 + #132]
	sltu	r4, r4, r7
	sub	r4, r6, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r3, r4, r3
	lw	r4, [r15 + #128]
	xor	r3, r3, r4
	slli	r4, r13, #24
	srai	r4, r4, #24
	add	r7, r3, r4
	slli	r2, r2, #4
	or	r2, r7, r2
	lbu	r13, [r5 + #0]
	addi	r3, r13, #-58
	andi	r4, r3, #255
	lw	r3, [r15 + #136]
	sltu	r3, r4, r3
	addi	r5, r5, #1
	lw	r12, [r15 + #144]
	bltu	r12, r4, L_BB0_541
	b	L_BB0_542
L_BB0_542:                              ;   in Loop: Header=BB0_541 Depth=2
	and	r4, r13, r9
	addi	r4, r4, #-71
	andi	r4, r4, #255
	lw	r12, [r15 + #84]
	bltu	r4, r12, L_BB0_549
	b	L_BB0_541
L_BB0_549:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r3, r0, #0
	li	r12, #1073741824
	bne	r2, r3, L_BB0_558
	b	L_BB0_550
L_BB0_558:                              ;   in Loop: Header=BB0_65 Depth=1
	andi	r7, r7, #1
	lw	r13, [r15 + #56]
	lw	r6, [r15 + #140]
	lw	r9, [r15 + #124]
	bltu	r9, r6, L_BB0_560
	b	L_BB0_559
L_BB0_559:                              ;   in Loop: Header=BB0_65 Depth=1
	add	r5, r2, r6
	bltu	r9, r5, L_BB0_564
	b	L_BB0_560
L_BB0_564:                              ;   in Loop: Header=BB0_65 Depth=1
	add	r6, r2, r9
	addi	r4, r2, #0
	be	r7, r3, L_BB0_566
	b	L_BB0_565
L_BB0_565:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r5, #-1
	lbu	r4, [r5 + #0]
	sb	r4, [r6 + #-1]
	addi	r4, r2, #-1
	addi	r6, r6, #-1
L_BB0_566:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r7, [r15 + #152]
	be	r2, r7, L_BB0_569
	b	L_BB0_567
L_BB0_567:                              ; %.preheader83
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r5, #-2
	addi	r5, r6, #-2
L_BB0_568:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r2, #1
	lbu	r6, [r6 + #0]
	sb	r6, [r5 + #1]
	lbu	r6, [r2 + #0]
	sb	r6, [r5 + #0]
	addi	r2, r2, #-2
	addi	r5, r5, #-2
	addi	r4, r4, #-2
	bne	r4, r3, L_BB0_568
	b	L_BB0_569
L_BB0_560:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r2, #0
	be	r7, r3, L_BB0_562
	b	L_BB0_561
L_BB0_561:                              ;   in Loop: Header=BB0_65 Depth=1
	lbu	r4, [r6 + #0]
	sb	r4, [r9 + #0]
	addi	r4, r2, #-1
	addi	r9, r9, #1
	addi	r6, r6, #1
L_BB0_562:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r5, [r15 + #152]
	be	r2, r5, L_BB0_569
	b	L_BB0_563
L_BB0_563:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r2, [r6 + #0]
	sb	r2, [r9 + #0]
	addi	r2, r6, #1
	lbu	r2, [r2 + #0]
	sb	r2, [r9 + #1]
	addi	r4, r4, #-2
	addi	r9, r9, #2
	addi	r6, r6, #2
	be	r4, r3, L_BB0_569
	b	L_BB0_563
L_BB0_569:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_569
	b	L_BB0_570
L_BB0_570:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #112]
	sw	r2, [r12 + #0]
L_BB0_571:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_571
	b	L_BB0_572
L_BB0_572:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r12 + #0]
L_BB0_573:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_573
	b	L_BB0_574
L_BB0_574:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #40]
	sw	r2, [r12 + #0]
L_BB0_575:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_575
	b	L_BB0_576
L_BB0_550:                              ; %.preheader79
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r13, [r15 + #56]
L_BB0_551:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_551
	b	L_BB0_552
L_BB0_552:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #112]
	sw	r2, [r12 + #0]
L_BB0_553:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_553
	b	L_BB0_554
L_BB0_554:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r12 + #0]
L_BB0_555:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_555
	b	L_BB0_556
L_BB0_556:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #40]
	sw	r2, [r12 + #0]
L_BB0_557:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_557
	b	L_BB0_576
L_BB0_576:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #107
	sw	r2, [r12 + #0]
	b	L_BB0_65
L_BB0_611:                              ; %._crit_edge228
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r6, #-2
	addi	r2, r0, #0
	b	L_BB0_616
L_BB0_616:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r6, #1
	addi	r7, r0, #0
	addi	r12, r7, #0
	lw	r9, [r15 + #108]
L_BB0_617:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r2, #1
	sub	r2, r7, r2
	addi	r3, r13, #-97
	andi	r3, r3, #255
	lw	r5, [r15 + #132]
	sltu	r3, r3, r5
	sub	r3, r7, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	lw	r3, [r15 + #128]
	xor	r2, r2, r3
	slli	r3, r13, #24
	srai	r3, r3, #24
	add	r2, r2, r3
	slli	r3, r12, #4
	or	r12, r2, r3
	lbu	r13, [r6 + #0]
	addi	r2, r13, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	addi	r6, r6, #1
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_617
	b	L_BB0_618
L_BB0_618:                              ;   in Loop: Header=BB0_617 Depth=2
	lw	r3, [r15 + #120]
	and	r3, r13, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r9, r3, L_BB0_617
	b	L_BB0_619
L_BB0_619:                              ; %.preheader94
                                        ;   in Loop: Header=BB0_65 Depth=1
	lw	r13, [r15 + #56]
	lw	r6, [r15 + #116]
	lw	r5, [r15 + #140]
	lw	r2, [r15 + #124]
	b	L_BB0_655
L_BB0_746:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r12, r12, #-1
	addi	r2, r2, #1
	addi	r5, r5, #1
L_BB0_747:                              ;   in Loop: Header=BB0_655 Depth=2
	be	r4, r7, L_BB0_655
	b	L_BB0_65
L_BB0_655:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_659 Depth 3
                                        ;       Child Loop BB0_661 Depth 3
                                        ;       Child Loop BB0_663 Depth 3
                                        ;       Child Loop BB0_665 Depth 3
                                        ;       Child Loop BB0_667 Depth 3
                                        ;       Child Loop BB0_669 Depth 3
                                        ;       Child Loop BB0_671 Depth 3
                                        ;       Child Loop BB0_673 Depth 3
                                        ;       Child Loop BB0_675 Depth 3
                                        ;       Child Loop BB0_677 Depth 3
                                        ;       Child Loop BB0_679 Depth 3
                                        ;       Child Loop BB0_681 Depth 3
                                        ;       Child Loop BB0_683 Depth 3
                                        ;       Child Loop BB0_686 Depth 3
                                        ;       Child Loop BB0_688 Depth 3
                                        ;       Child Loop BB0_690 Depth 3
                                        ;       Child Loop BB0_692 Depth 3
                                        ;       Child Loop BB0_694 Depth 3
                                        ;       Child Loop BB0_696 Depth 3
                                        ;       Child Loop BB0_698 Depth 3
                                        ;       Child Loop BB0_700 Depth 3
                                        ;       Child Loop BB0_703 Depth 3
                                        ;       Child Loop BB0_705 Depth 3
                                        ;       Child Loop BB0_708 Depth 3
                                        ;       Child Loop BB0_710 Depth 3
                                        ;       Child Loop BB0_712 Depth 3
                                        ;       Child Loop BB0_714 Depth 3
                                        ;       Child Loop BB0_716 Depth 3
                                        ;       Child Loop BB0_718 Depth 3
                                        ;       Child Loop BB0_720 Depth 3
                                        ;       Child Loop BB0_722 Depth 3
                                        ;       Child Loop BB0_724 Depth 3
                                        ;       Child Loop BB0_726 Depth 3
                                        ;       Child Loop BB0_728 Depth 3
                                        ;       Child Loop BB0_730 Depth 3
                                        ;       Child Loop BB0_732 Depth 3
                                        ;       Child Loop BB0_734 Depth 3
                                        ;       Child Loop BB0_736 Depth 3
                                        ;       Child Loop BB0_738 Depth 3
                                        ;       Child Loop BB0_740 Depth 3
                                        ;       Child Loop BB0_742 Depth 3
                                        ;       Child Loop BB0_744 Depth 3
	addi	r3, r0, #0
	bne	r12, r3, L_BB0_657
	b	L_BB0_656
L_BB0_657:                              ;   in Loop: Header=BB0_655 Depth=2
	lbu	r4, [r5 + #0]
	lbu	r7, [r2 + #0]
	be	r4, r7, L_BB0_746
	b	L_BB0_658
L_BB0_658:                              ; %.preheader30
                                        ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r15 + #124]
L_BB0_659:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_659
	b	L_BB0_660
L_BB0_660:                              ;   in Loop: Header=BB0_655 Depth=2
	li	r9, #1073741824
	lw	r2, [r15 + #112]
	sw	r2, [r9 + #0]
L_BB0_661:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_661
	b	L_BB0_662
L_BB0_662:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r13, r0, #10
	sw	r13, [r9 + #0]
L_BB0_663:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_663
	b	L_BB0_664
L_BB0_664:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #28]
	sw	r2, [r9 + #0]
L_BB0_665:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_665
	b	L_BB0_666
L_BB0_666:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #16]
	sw	r2, [r9 + #0]
L_BB0_667:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_667
	b	L_BB0_668
L_BB0_668:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #115
	sw	r2, [r9 + #0]
L_BB0_669:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_669
	b	L_BB0_670
L_BB0_670:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #28]
	sw	r2, [r9 + #0]
L_BB0_671:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_671
	b	L_BB0_672
L_BB0_672:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #97
	sw	r2, [r9 + #0]
L_BB0_673:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_673
	b	L_BB0_674
L_BB0_674:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #36]
	sw	r2, [r9 + #0]
L_BB0_675:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_675
	b	L_BB0_676
L_BB0_676:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #99
	sw	r2, [r9 + #0]
L_BB0_677:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_677
	b	L_BB0_678
L_BB0_678:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #44]
	sw	r2, [r9 + #0]
L_BB0_679:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_679
	b	L_BB0_680
L_BB0_680:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r7, [r15 + #140]
	sw	r4, [r15 + #144]
	sw	r6, [r9 + #0]
L_BB0_681:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_681
	b	L_BB0_682
L_BB0_682:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #64
	sw	r2, [r9 + #0]
	srli	r2, r5, #28
	la	r7, .L.str.7
	add	r2, r2, r7
	lbu	r4, [r2 + #0]
	bne	r4, r13, L_BB0_685
	b	L_BB0_683
L_BB0_683:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_683
	b	L_BB0_684
L_BB0_684:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r2, [r15 + #112]
	sw	r2, [r9 + #0]
L_BB0_685:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r12, [r15 + #136]
	addi	r2, r5, #0
	srli	r5, r2, #24
	addi	r12, r2, #0
	srli	r2, r2, #16
L_BB0_686:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r3, L_BB0_686
	b	L_BB0_687
L_BB0_687:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r4, [r9 + #0]
	andi	r4, r5, #15
	add	r4, r4, r7
	lbu	r4, [r4 + #0]
	bne	r4, r13, L_BB0_690
	b	L_BB0_688
L_BB0_688:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_688
	b	L_BB0_689
L_BB0_689:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r5, [r15 + #112]
	sw	r5, [r9 + #0]
L_BB0_690:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_690
	b	L_BB0_691
L_BB0_691:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r4, [r9 + #0]
	srli	r4, r12, #20
	andi	r4, r4, #15
	add	r4, r4, r7
	lbu	r4, [r4 + #0]
	lw	r6, [r15 + #116]
	bne	r4, r13, L_BB0_694
	b	L_BB0_692
L_BB0_692:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_692
	b	L_BB0_693
L_BB0_693:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r5, [r15 + #112]
	sw	r5, [r9 + #0]
L_BB0_694:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_694
	b	L_BB0_695
L_BB0_695:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r4, [r9 + #0]
	andi	r2, r2, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	addi	r5, r12, #0
	bne	r2, r13, L_BB0_698
	b	L_BB0_696
L_BB0_696:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_696
	b	L_BB0_697
L_BB0_697:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_698:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_698
	b	L_BB0_699
L_BB0_699:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	srli	r2, r5, #12
	andi	r2, r2, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_702
	b	L_BB0_700
L_BB0_700:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_700
	b	L_BB0_701
L_BB0_701:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_702:                              ;   in Loop: Header=BB0_655 Depth=2
	srli	r4, r5, #8
L_BB0_703:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_703
	b	L_BB0_704
L_BB0_704:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	andi	r2, r4, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_707
	b	L_BB0_705
L_BB0_705:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_705
	b	L_BB0_706
L_BB0_706:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_707:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r5, r12, #0
L_BB0_708:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_708
	b	L_BB0_709
L_BB0_709:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	srli	r2, r5, #4
	andi	r2, r2, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	lw	r12, [r15 + #136]
	bne	r2, r13, L_BB0_712
	b	L_BB0_710
L_BB0_710:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_710
	b	L_BB0_711
L_BB0_711:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_712:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_712
	b	L_BB0_713
L_BB0_713:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	andi	r2, r5, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_716
	b	L_BB0_714
L_BB0_714:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_714
	b	L_BB0_715
L_BB0_715:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_716:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_716
	b	L_BB0_717
L_BB0_717:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
L_BB0_718:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_718
	b	L_BB0_719
L_BB0_719:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r6, [r9 + #0]
	lw	r4, [r15 + #144]
L_BB0_720:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_720
	b	L_BB0_721
L_BB0_721:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r6, [r9 + #0]
	srli	r2, r4, #4
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_724
	b	L_BB0_722
L_BB0_722:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_722
	b	L_BB0_723
L_BB0_723:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_724:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_724
	b	L_BB0_725
L_BB0_725:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	lw	r2, [r15 + #144]
	andi	r2, r2, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_728
	b	L_BB0_726
L_BB0_726:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_726
	b	L_BB0_727
L_BB0_727:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_728:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_728
	b	L_BB0_729
L_BB0_729:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
L_BB0_730:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_730
	b	L_BB0_731
L_BB0_731:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r6, [r9 + #0]
L_BB0_732:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_732
	b	L_BB0_733
L_BB0_733:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #33
	sw	r2, [r9 + #0]
L_BB0_734:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_734
	b	L_BB0_735
L_BB0_735:                              ;   in Loop: Header=BB0_655 Depth=2
	addi	r2, r0, #61
	sw	r2, [r9 + #0]
L_BB0_736:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_736
	b	L_BB0_737
L_BB0_737:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r6, [r9 + #0]
	lw	r2, [r15 + #140]
	srli	r2, r2, #4
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_740
	b	L_BB0_738
L_BB0_738:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_738
	b	L_BB0_739
L_BB0_739:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_740:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_740
	b	L_BB0_741
L_BB0_741:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	lw	r2, [r15 + #140]
	andi	r2, r2, #15
	add	r2, r2, r7
	lbu	r2, [r2 + #0]
	bne	r2, r13, L_BB0_744
	b	L_BB0_742
L_BB0_742:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_742
	b	L_BB0_743
L_BB0_743:                              ;   in Loop: Header=BB0_655 Depth=2
	lw	r4, [r15 + #112]
	sw	r4, [r9 + #0]
L_BB0_744:                              ;   Parent Loop BB0_65 Depth=1
                                        ;     Parent Loop BB0_655 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_744
	b	L_BB0_745
L_BB0_745:                              ;   in Loop: Header=BB0_655 Depth=2
	sw	r2, [r9 + #0]
	lw	r13, [r15 + #56]
	lw	r2, [r15 + #124]
	lw	r4, [r15 + #144]
	lw	r7, [r15 + #140]
	b	L_BB0_747
L_BB0_656:                              ; %.preheader93
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_748
L_BB0_748:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_748
	b	L_BB0_749
L_BB0_749:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r9, #1073741824
	lw	r2, [r15 + #112]
	sw	r2, [r9 + #0]
L_BB0_750:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_750
	b	L_BB0_751
L_BB0_751:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r9 + #0]
L_BB0_752:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_752
	b	L_BB0_753
L_BB0_753:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #28]
	sw	r2, [r9 + #0]
L_BB0_754:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_754
	b	L_BB0_755
L_BB0_755:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #97
	sw	r2, [r9 + #0]
L_BB0_756:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_756
	b	L_BB0_757
L_BB0_757:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #36]
	sw	r2, [r9 + #0]
L_BB0_758:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_758
	b	L_BB0_759
L_BB0_759:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #99
	sw	r2, [r9 + #0]
L_BB0_760:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r4, r2, #1
	lw	r2, [r15 + #44]
	be	r4, r3, L_BB0_760
	b	L_BB0_761
L_BB0_476:                              ; %._crit_edge301
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r2, #-2
	addi	r4, r0, #0
	b	L_BB0_481
L_BB0_481:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r6, r2, #1
	addi	r7, r0, #0
	addi	r2, r7, #0
	lw	r12, [r15 + #116]
	lw	r9, [r15 + #120]
L_BB0_482:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r4, #1
	sub	r3, r7, r3
	addi	r4, r12, #-97
	andi	r4, r4, #255
	lw	r5, [r15 + #132]
	sltu	r4, r4, r5
	sub	r4, r7, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r3, r4, r3
	lw	r4, [r15 + #128]
	xor	r3, r3, r4
	andi	r4, r12, #255
	add	r3, r3, r4
	slli	r2, r2, #4
	or	r2, r3, r2
	lbu	r12, [r6 + #0]
	addi	r3, r12, #-58
	andi	r3, r3, #255
	lw	r4, [r15 + #136]
	sltu	r4, r3, r4
	addi	r6, r6, #1
	lw	r5, [r15 + #144]
	bltu	r5, r3, L_BB0_482
	b	L_BB0_483
L_BB0_483:                              ;   in Loop: Header=BB0_482 Depth=2
	lw	r3, [r15 + #124]
	and	r3, r12, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r9, r3, L_BB0_482
	b	L_BB0_484
L_BB0_484:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r4, r0, #0
	li	r3, #1073741824
	lw	r6, [r15 + #112]
	lw	r5, [r15 + #140]
	be	r13, r4, L_BB0_493
	b	L_BB0_485
L_BB0_485:                              ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_492
L_BB0_492:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sb	r2, [r5 + #0]
	addi	r13, r13, #-1
	addi	r5, r5, #1
	bne	r13, r4, L_BB0_492
	b	L_BB0_493
L_BB0_493:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_493
	b	L_BB0_494
L_BB0_494:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r6, [r3 + #0]
	lw	r13, [r15 + #56]
L_BB0_495:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_495
	b	L_BB0_496
L_BB0_496:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #10
	sw	r2, [r3 + #0]
L_BB0_497:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_497
	b	L_BB0_498
L_BB0_498:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #40]
	sw	r2, [r3 + #0]
L_BB0_499:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_499
	b	L_BB0_500
L_BB0_500:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #107
	sw	r2, [r3 + #0]
	b	L_BB0_65
L_BB0_356:                              ; %._crit_edge354
                                        ;   in Loop: Header=BB0_65 Depth=1
	addi	r13, r13, #-2
	addi	r2, r0, #0
L_BB0_357:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r5, r13, #1
	addi	r4, r6, #0
	lw	r13, [r15 + #132]
	lw	r9, [r15 + #128]
	b	L_BB0_363
L_BB0_363:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r2, #1
	sub	r2, r6, r2
	addi	r3, r12, #-97
	andi	r3, r3, #255
	sltu	r3, r3, r13
	sub	r3, r6, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	xor	r2, r2, r9
	slli	r3, r12, #24
	srai	r3, r3, #24
	add	r2, r2, r3
	slli	r3, r4, #4
	or	r4, r2, r3
	lbu	r12, [r5 + #0]
	addi	r2, r12, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #136]
	sltu	r2, r3, r2
	addi	r5, r5, #1
	lw	r7, [r15 + #144]
	bltu	r7, r3, L_BB0_363
	b	L_BB0_364
L_BB0_364:                              ;   in Loop: Header=BB0_363 Depth=2
	lw	r3, [r15 + #124]
	and	r3, r12, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	lw	r7, [r15 + #84]
	bltu	r3, r7, L_BB0_371
	b	L_BB0_363
L_BB0_371:                              ;   in Loop: Header=BB0_65 Depth=1
	addi	r2, r0, #0
	lw	r13, [r15 + #56]
	be	r4, r2, L_BB0_65
	b	L_BB0_373
L_BB0_151:                              ; %.preheader115
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_155
L_BB0_155:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_155
	b	L_BB0_156
L_BB0_156:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #112]
	sw	r3, [r12 + #0]
L_BB0_157:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_157
	b	L_BB0_158
L_BB0_158:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r3, [r15 + #76]
	sw	r3, [r12 + #0]
L_BB0_159:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_159
	b	L_BB0_160
L_BB0_160:                              ;   in Loop: Header=BB0_65 Depth=1
	lw	r2, [r15 + #12]
	sw	r2, [r12 + #0]
	b	L_BB0_65
L_BB0_414:                              ; %.preheader61
                                        ;   in Loop: Header=BB0_65 Depth=1
	b	L_BB0_418
L_BB0_418:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_418
	b	L_BB0_419
L_BB0_419:                              ;   in Loop: Header=BB0_65 Depth=1
	li	r5, #1073741824
	lw	r3, [r15 + #112]
	sw	r3, [r5 + #0]
	lw	r13, [r15 + #56]
	lw	r4, [r15 + #76]
L_BB0_420:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_420
	b	L_BB0_421
L_BB0_421:                              ;   in Loop: Header=BB0_65 Depth=1
	sw	r4, [r5 + #0]
L_BB0_422:                              ;   Parent Loop BB0_65 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r4, r3, #1
	lw	r3, [r15 + #12]
	be	r4, r2, L_BB0_422
	b	L_BB0_441
	.cfi_endproc
                                        ; -- End function
dump_range:                             ; -- Begin function dump_range
                                        ; @dump_range
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-52
	sw	r8, [r15 + #48]
	sw	r9, [r15 + #44]
	sw	r10, [r15 + #40]
	sw	r11, [r15 + #36]
	addi	r13, r2, #0
	bltu	r3, r13, L_BB1_39
	b	L_BB1_1
L_BB1_1:                                ; %.preheader8
	li	r10, #1073741832
	addi	r8, r0, #0
	addi	r2, r0, #58
	sw	r2, [r15 + #4]
	addi	r9, r0, #32
	addi	r2, r0, #16
	sw	r2, [r15 + #0]
	addi	r2, r0, #13
	sw	r2, [r15 + #16]
	addi	r2, r0, #10
	sw	r2, [r15 + #32]
	addi	r2, r0, #95
	sw	r2, [r15 + #24]
	addi	r12, r0, #46
	la	r2, .L.str.7
	sw	r2, [r15 + #28]
	sw	r3, [r15 + #8]
	sw	r12, [r15 + #20]
L_BB1_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
                                        ;     Child Loop BB1_5 Depth 2
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_10 Depth 3
                                        ;       Child Loop BB1_12 Depth 3
                                        ;       Child Loop BB1_14 Depth 3
                                        ;       Child Loop BB1_16 Depth 3
                                        ;       Child Loop BB1_18 Depth 3
                                        ;       Child Loop BB1_20 Depth 3
                                        ;       Child Loop BB1_22 Depth 3
                                        ;     Child Loop BB1_24 Depth 2
                                        ;     Child Loop BB1_26 Depth 2
                                        ;       Child Loop BB1_31 Depth 3
                                        ;       Child Loop BB1_29 Depth 3
                                        ;     Child Loop BB1_35 Depth 2
                                        ;     Child Loop BB1_37 Depth 2
	sw	r13, [r15 + #12]
	lw	r2, [r15 + #24]
	srli	r2, r13, #16
	jal	r11, print_hex16
	lw	r2, [r15 + #12]
	andi	r2, r2, #65535
	jal	r11, print_hex16
L_BB1_3:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r10 + #0]
	andi	r2, r2, #1
	be	r2, r8, L_BB1_3
	b	L_BB1_4
L_BB1_4:                                ;   in Loop: Header=BB1_2 Depth=1
	li	r7, #1073741824
	lw	r2, [r15 + #4]
	sw	r2, [r7 + #0]
L_BB1_5:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r10 + #0]
	andi	r2, r2, #1
	be	r2, r8, L_BB1_5
	b	L_BB1_6
L_BB1_6:                                ;   in Loop: Header=BB1_2 Depth=1
	sw	r9, [r7 + #0]
	addi	r2, r8, #0
	addi	r12, r8, #0
	lw	r3, [r15 + #8]
	lw	r13, [r15 + #12]
L_BB1_7:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_10 Depth 3
                                        ;       Child Loop BB1_12 Depth 3
                                        ;       Child Loop BB1_14 Depth 3
                                        ;       Child Loop BB1_16 Depth 3
                                        ;       Child Loop BB1_18 Depth 3
                                        ;       Child Loop BB1_20 Depth 3
                                        ;       Child Loop BB1_22 Depth 3
	add	r4, r13, r12
	sltu	r5, r3, r4
	be	r5, r0, L_BB1_9
	b	L_BB1_8
L_BB1_8:                                ; %.preheader3
                                        ;   in Loop: Header=BB1_7 Depth=2
	b	L_BB1_18
L_BB1_18:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r10 + #0]
	andi	r4, r4, #1
	be	r4, r8, L_BB1_18
	b	L_BB1_19
L_BB1_19:                               ;   in Loop: Header=BB1_7 Depth=2
	sw	r9, [r7 + #0]
L_BB1_20:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r10 + #0]
	andi	r5, r4, #1
	addi	r4, r9, #0
	be	r5, r8, L_BB1_20
	b	L_BB1_21
L_BB1_9:                                ;   in Loop: Header=BB1_7 Depth=2
	lbu	r4, [r4 + #0]
	srli	r5, r4, #4
	lw	r6, [r15 + #28]
	add	r5, r5, r6
	lbu	r6, [r5 + #0]
	lw	r5, [r15 + #32]
	bne	r6, r5, L_BB1_12
	b	L_BB1_10
L_BB1_10:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r10 + #0]
	andi	r5, r5, #1
	addi	r7, r0, #0
	be	r5, r7, L_BB1_10
	b	L_BB1_11
L_BB1_11:                               ;   in Loop: Header=BB1_7 Depth=2
	li	r5, #1073741824
	lw	r7, [r15 + #16]
	sw	r7, [r5 + #0]
L_BB1_12:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r10 + #0]
	andi	r7, r5, #1
	addi	r5, r0, #0
	be	r7, r5, L_BB1_12
	b	L_BB1_13
L_BB1_13:                               ;   in Loop: Header=BB1_7 Depth=2
	li	r7, #1073741824
	sw	r6, [r7 + #0]
	andi	r4, r4, #15
	lw	r6, [r15 + #28]
	add	r4, r4, r6
	lbu	r4, [r4 + #0]
	lw	r6, [r15 + #32]
	bne	r4, r6, L_BB1_16
	b	L_BB1_14
L_BB1_14:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r10 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB1_14
	b	L_BB1_15
L_BB1_15:                               ;   in Loop: Header=BB1_7 Depth=2
	lw	r6, [r15 + #16]
	sw	r6, [r7 + #0]
L_BB1_16:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r10 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB1_16
	b	L_BB1_17
L_BB1_17:                               ;   in Loop: Header=BB1_7 Depth=2
	b	L_BB1_21
L_BB1_21:                               ;   in Loop: Header=BB1_7 Depth=2
	sw	r4, [r7 + #0]
L_BB1_22:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r10 + #0]
	andi	r4, r4, #1
	be	r4, r8, L_BB1_22
	b	L_BB1_23
L_BB1_23:                               ;   in Loop: Header=BB1_7 Depth=2
	sw	r9, [r7 + #0]
	addi	r12, r12, #1
	sltu	r4, r0, r12
	xori	r4, r4, #1
	add	r2, r2, r4
	xori	r4, r12, #16
	or	r4, r4, r2
	bne	r4, r8, L_BB1_7
	b	L_BB1_24
L_BB1_24:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r10 + #0]
	andi	r2, r2, #1
	be	r2, r8, L_BB1_24
	b	L_BB1_25
L_BB1_25:                               ;   in Loop: Header=BB1_2 Depth=1
	sw	r9, [r7 + #0]
	addi	r2, r8, #0
	addi	r6, r8, #0
	lw	r4, [r15 + #24]
	lw	r12, [r15 + #20]
L_BB1_26:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_31 Depth 3
                                        ;       Child Loop BB1_29 Depth 3
	add	r4, r13, r6
	bltu	r3, r4, L_BB1_33
	b	L_BB1_27
L_BB1_27:                               ;   in Loop: Header=BB1_26 Depth=2
	lbu	r4, [r4 + #0]
	addi	r5, r4, #-32
	andi	r5, r5, #255
	lw	r12, [r15 + #24]
	bltu	r5, r12, L_BB1_29
	b	L_BB1_28
L_BB1_29:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_26 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r10 + #0]
	andi	r5, r5, #1
	be	r5, r8, L_BB1_29
	b	L_BB1_30
L_BB1_30:                               ;   in Loop: Header=BB1_26 Depth=2
	lw	r12, [r15 + #20]
	b	L_BB1_32
L_BB1_28:                               ; %.preheader1
                                        ;   in Loop: Header=BB1_26 Depth=2
	lw	r12, [r15 + #20]
	b	L_BB1_31
L_BB1_31:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_26 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r10 + #0]
	andi	r5, r4, #1
	addi	r4, r12, #0
	be	r5, r8, L_BB1_31
	b	L_BB1_32
L_BB1_32:                               ;   in Loop: Header=BB1_26 Depth=2
	sw	r4, [r7 + #0]
L_BB1_33:                               ;   in Loop: Header=BB1_26 Depth=2
	addi	r6, r6, #1
	sltu	r4, r0, r6
	xori	r4, r4, #1
	add	r2, r2, r4
	xori	r4, r6, #16
	or	r4, r4, r2
	bne	r4, r8, L_BB1_26
	b	L_BB1_34
L_BB1_34:                               ;   in Loop: Header=BB1_2 Depth=1
	sub	r2, r3, r13
	lw	r4, [r15 + #0]
	bltu	r2, r4, L_BB1_39
	b	L_BB1_35
L_BB1_35:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r10 + #0]
	andi	r2, r2, #1
	be	r2, r8, L_BB1_35
	b	L_BB1_36
L_BB1_36:                               ;   in Loop: Header=BB1_2 Depth=1
	lw	r2, [r15 + #16]
	sw	r2, [r7 + #0]
L_BB1_37:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r10 + #0]
	andi	r2, r2, #1
	be	r2, r8, L_BB1_37
	b	L_BB1_38
L_BB1_38:                               ;   in Loop: Header=BB1_2 Depth=1
	lw	r2, [r15 + #32]
	sw	r2, [r7 + #0]
	addi	r13, r13, #16
	sltu	r2, r3, r13
	be	r2, r0, L_BB1_2
	b	L_BB1_39
L_BB1_39:
	lw	r11, [r15 + #36]
	lw	r10, [r15 + #40]
	lw	r9, [r15 + #44]
	lw	r8, [r15 + #48]
	addi	r15, r15, #52
	ret
	.cfi_endproc
                                        ; -- End function
print_hex16:                            ; -- Begin function print_hex16
                                        ; @print_hex16
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-4
	sw	r8, [r15 + #0]
	srli	r3, r2, #12
	andi	r3, r3, #15
	la	r6, .L.str.7
	add	r3, r3, r6
	lbu	r12, [r3 + #0]
	addi	r7, r0, #10
	li	r3, #1073741832
	addi	r5, r0, #0
	li	r4, #1073741824
	bne	r12, r7, L_BB2_3
	b	L_BB2_1
L_BB2_1:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_1
	b	L_BB2_2
L_BB2_2:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_3:
	srli	r13, r2, #8
L_BB2_4:                                ; =>This Inner Loop Header: Depth=1
	lw	r8, [r3 + #0]
	andi	r8, r8, #1
	be	r8, r5, L_BB2_4
	b	L_BB2_5
L_BB2_5:
	sw	r12, [r4 + #0]
	andi	r12, r13, #15
	add	r12, r12, r6
	lbu	r12, [r12 + #0]
	bne	r12, r7, L_BB2_8
	b	L_BB2_6
L_BB2_6:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_6
	b	L_BB2_7
L_BB2_7:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_8:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_8
	b	L_BB2_9
L_BB2_9:
	sw	r12, [r4 + #0]
	srli	r12, r2, #4
	andi	r12, r12, #15
	add	r12, r12, r6
	lbu	r12, [r12 + #0]
	bne	r12, r7, L_BB2_12
	b	L_BB2_10
L_BB2_10:                               ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_10
	b	L_BB2_11
L_BB2_11:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_12:                               ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_12
	b	L_BB2_13
L_BB2_13:
	sw	r12, [r4 + #0]
	andi	r2, r2, #15
	add	r2, r2, r6
	lbu	r2, [r2 + #0]
	bne	r2, r7, L_BB2_16
	b	L_BB2_14
L_BB2_14:                               ; =>This Inner Loop Header: Depth=1
	lw	r6, [r3 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB2_14
	b	L_BB2_15
L_BB2_15:
	addi	r6, r0, #13
	sw	r6, [r4 + #0]
L_BB2_16:                               ; =>This Inner Loop Header: Depth=1
	lw	r6, [r3 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB2_16
	b	L_BB2_17
L_BB2_17:
	sw	r2, [r4 + #0]
	lw	r8, [r15 + #0]
	addi	r15, r15, #4
	ret
	.cfi_endproc
                                        ; -- End function
	.data
.L.str.7:                               ; @.str.7
	db	48
	db	49
	db	50
	db	51
	db	52
	db	53
	db	54
	db	55
	db	56
	db	57
	db	65
	db	66
	db	67
	db	68
	db	69
	db	70
	db	0

.L.str.8:                               ; @.str.8
	db	10
	db	99
	db	111
	db	109
	db	109
	db	97
	db	110
	db	100
	db	115
	db	32
	db	40
	db	104
	db	101
	db	120
	db	32
	db	97
	db	114
	db	103
	db	115
	db	41
	db	58
	db	10
	db	0

.L.str.9:                               ; @.str.9
	db	32
	db	32
	db	63
	db	32
	db	47
	db	32
	db	72
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	104
	db	101
	db	108
	db	112
	db	10
	db	0

.L.str.10:                              ; @.str.10
	db	32
	db	32
	db	68
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	91
	db	108
	db	101
	db	110
	db	93
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	109
	db	101
	db	109
	db	111
	db	114
	db	121
	db	10
	db	0

.L.str.11:                              ; @.str.11
	db	32
	db	32
	db	87
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	98
	db	48
	db	32
	db	98
	db	49
	db	32
	db	46
	db	46
	db	46
	db	32
	db	32
	db	32
	db	32
	db	119
	db	114
	db	105
	db	116
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.12:                              ; @.str.12
	db	32
	db	32
	db	70
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	108
	db	101
	db	110
	db	32
	db	98
	db	121
	db	116
	db	101
	db	32
	db	32
	db	32
	db	32
	db	32
	db	102
	db	105
	db	108
	db	108
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.13:                              ; @.str.13
	db	32
	db	32
	db	77
	db	32
	db	115
	db	114
	db	99
	db	32
	db	100
	db	115
	db	116
	db	32
	db	108
	db	101
	db	110
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	109
	db	111
	db	118
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.14:                              ; @.str.14
	db	32
	db	32
	db	67
	db	32
	db	97
	db	32
	db	98
	db	32
	db	108
	db	101
	db	110
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	99
	db	111
	db	109
	db	112
	db	97
	db	114
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.15:                              ; @.str.15
	db	32
	db	32
	db	71
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	106
	db	117
	db	109
	db	112
	db	32
	db	116
	db	111
	db	32
	db	97
	db	100
	db	100
	db	114
	db	10
	db	0

.L.str.17:                              ; @.str.17
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	102
	db	114
	db	111
	db	109
	db	32
	db	65
	db	65
	db	65
	db	65
	db	10
	db	0

.L.str.18:                              ; @.str.18
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	46
	db	66
	db	66
	db	66
	db	66
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	114
	db	97
	db	110
	db	103
	db	101
	db	10
	db	0

.L.str.19:                              ; @.str.19
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	58
	db	32
	db	48
	db	49
	db	32
	db	48
	db	50
	db	32
	db	48
	db	51
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	119
	db	114
	db	105
	db	116
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.20:                              ; @.str.20
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	68
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	91
	db	108
	db	101
	db	110
	db	93
	db	0

.L.str.21:                              ; @.str.21
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	87
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	98
	db	48
	db	32
	db	98
	db	49
	db	32
	db	46
	db	46
	db	46
	db	0

.L.str.22:                              ; @.str.22
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	70
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	108
	db	101
	db	110
	db	32
	db	98
	db	121
	db	116
	db	101
	db	0

.L.str.23:                              ; @.str.23
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	77
	db	32
	db	115
	db	114
	db	99
	db	32
	db	100
	db	115
	db	116
	db	32
	db	108
	db	101
	db	110
	db	0

.L.str.30:                              ; @.str.30
	db	10
	db	105
	db	110
	db	100
	db	105
	db	114
	db	101
	db	99
	db	116
	db	32
	db	106
	db	117
	db	109
	db	112
	db	32
	db	110
	db	111
	db	116
	db	32
	db	115
	db	117
	db	112
	db	112
	db	111
	db	114
	db	116
	db	101
	db	100
	db	32
	db	98
	db	121
	db	32
	db	116
	db	104
	db	105
	db	115
	db	32
	db	98
	db	97
	db	99
	db	107
	db	101
	db	110
	db	100
	db	0

	.section	".note.GNU-stack","",@progbits
