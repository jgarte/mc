TEXT bld$cpufeatures+0(SB),$0
	MOVL	$0x1,AX
	CPUID
	MOVL	CX,AX
	ROLQ	$32, AX
	SHRQ	$32, DX
	ORQ	DX, AX
	RET
