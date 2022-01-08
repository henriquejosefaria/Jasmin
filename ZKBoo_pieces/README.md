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

## Functions issuing warnings:
	
	-	RIGHTSHIFT  (ISS. 0)
	-	mpc_xor_w   (ISS. 0)
	-	mpc_xor_k   (ISS. 0)
	-	mpc_xor_hHa (ISS. 0)


## Non compilable Jasmin files:

	-	mpc_ADD     (ER. 0)
	-	mpc_ADD_W   (ER. 0)
	-	mpc_ADD_K   (ER. 1) (Note: Arrays switched from stack to reg) 
	-	mpc_ADD_hHa (ER. 0)
	-	mpc_AND	    (ER. 1) (Note: Arrays switched from stack to reg) 
	-	mpc_MAJ     (ER. 0)

## LIST OF WARNINGS

	-	ISSUE 0 => WARNING: CAN NOT FIND IINFO 1

## LIST OF ERRORS

	-	ERROR 0 => compilation error in functions test and test at position line 40 from
                                                         line 171 from
                                                         line 244: Variable allocation r.606 and r.606: variable already set
	-	ERROR 1 => Fatal error: exception File "src/array_expand.ml", line 22, characters 16-22: Assertion failed
