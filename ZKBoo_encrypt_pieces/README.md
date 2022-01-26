## Compilable (perfect) functions:

	-	GETBIT
	-	GETBIT_EXTENDED
	-	GETBIT_u32
	-	getBits
	-	LEFTROTATE
	-	RIGHTSHIFT
	-	SETBIT_u32
	-	set_word
	-	mpc_words
	-	mpc_xor
	-	mpc_xor_w
	-	mpc_xor_k
	-	mpc_xor_hHa
	-	mpc_xor_three
	-	RIGHTSHIFT
	-	mpc_xor_w
	-	mpc_xor_k
	-	mpc_xor_hHa
	-	ROTLEFT
	-	ROTRIGHT
	-	ROTRIGHT_ep
	-	EP0
	-	EP1
	-	ROTRIGHT_sig
	-	SIG0
	-	SIG1
	-	CH
	-	MAJ
	-	initializeK
	-	sha256_transform/sha256_transform_v2 (while/for loops  => has warnings / has no warnings)
	-	sha256_init
	-	sha256_update1/sha256_update1_v2     (while/for loops  => has warnings / has no warnings)
	-	sha256_update2/sha256_update2_v2     (while/for loops  => has warnings / has no warnings)
	-	sha256_update3/sha256_update3_v2     (while/for loops  => has warnings / has no warnings)
	-	sha256_update4/sha256_update4_v2     (while/for loops  => has warnings / has no warnings)
	-	sha256_update5/sha256_update5_v2     (while/for loops  => has warnings / has no warnings)
	-	sha256_update6/sha256_update6_v2     (while/for loops  => has warnings / has no warnings)
	-	mpc_AND
	-	mpc_MAJ
	-	mpc_ADD
	-	mpc_ADD_W
	-	mpc_ADD_K
	-	mpc_ADD_hHa
	-	mpc_sha1


## Functions issuing warnings:

	-	sha256_final2 (W. 0)
	-	H3            (W. 0)
	-	prove         (W. 0)



## Functions issuing errors:


## Functions issuing warnings and errors:

	-	sha256_final1 (W. 0, ER. 2) (Note => Real error: line 328; If you comment it, the function compiles)
	-	H 			  (W. 0, ER. 3) (Note => Real error: line 420; If you comment it, the function compiles)






## LIST OF WARNINGS

	-	WARNING 0 => WARNING: CAN NOT FIND IINFO 1

## LIST OF ERRORS

	-	ERROR 0 => Variable allocation r.606 and r.606: variable already set
	-	ERROR 1 => Fatal error: exception File "src/array_expand.ml", line 22, characters 16-22: Assertion failed
	-	ERROR 2 => assembler error compile_arg : not compatible asm_arg
	-	ERROR 3 => assembler error Invalid pexpr for word
	- 	ERROR 4 => register allocation: variable bit_idx.1381 must be allocated to conflicting register RCX { bit_idx.1242; bit_idx.1689 }

