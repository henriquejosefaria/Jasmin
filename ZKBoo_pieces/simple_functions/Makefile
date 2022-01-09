
BASIC_FUNCTIONS = 




all: clear basic_functions  mpc_functions
	


clear:
	clear

basic_functions:
	$(info )
	$(info ##############################################)
	$(info # - Testing SHA1 simple auxiliar functions - #)
	$(info ##############################################)
	$(info )
	./../../../jasminc -o compiled_Jasmin/GETBIT.s           GETBIT.jazz
	./../../../jasminc -o compiled_Jasmin/GETBIT_EXTENDED.s  GETBIT_EXTENDED.jazz
	./../../../jasminc -o compiled_Jasmin/GETBIT_u32.s       GETBIT_u32.jazz
	./../../../jasminc -o compiled_Jasmin/getBits.s          getBits.jazz
	./../../../jasminc -o compiled_Jasmin/LEFTROTATE.s       LEFTROTATE.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_words.s        mpc_words.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_xor.s          mpc_xor.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_xor_hHa.s      mpc_xor_hHa.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_xor_k.s        mpc_xor_k.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_xor_three.s    mpc_xor_three.jazz
	./../../../jasminc -o compiled_Jasmin/mpc_xor_w.s        mpc_xor_w.jazz
	./../../../jasminc -o compiled_Jasmin/RIGTHSHIFT.s       RIGHTSHIFT.jazz
	./../../../jasminc -o compiled_Jasmin/set_word.s         set_word.jazz
	./../../../jasminc -o compiled_Jasmin/SETBIT_U32.s       SETBIT_U32.jazz
	 


mpc_functions:
	$(info )
	$(info ################################################)
	$(info # - Testing SHA256 simple auxiliar functions - #)
	$(info ################################################)
	$(info )
	./../../../jasminc -o compiled_Jasmin/ROTLEFT.s   ROTLEFT.jazz
	./../../../jasminc -o compiled_Jasmin/ROTRIGHT.s  ROTRIGHT.jazz
	./../../../jasminc -o compiled_Jasmin/EP0.s       EP0.jazz
	./../../../jasminc -o compiled_Jasmin/EP1.s       EP1.jazz
	./../../../jasminc -o compiled_Jasmin/SIG0.s      SIG0.jazz
	./../../../jasminc -o compiled_Jasmin/SIG1.s      SIG1.jazz
	./../../../jasminc -o compiled_Jasmin/CH.s        CH.jazz
	./../../../jasminc -o compiled_Jasmin/MAJ.s       MAJ.jazz
