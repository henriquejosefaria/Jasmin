
BASIC_FUNCTIONS = 




all: clear basic_functions  sha256_simple_functions sha256_complex_functions hash_funtions zkboo_functions
	

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
	 


sha256_simple_functions: 
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


sha256_complex_functions: 
	$(info )
	$(info ################################################)
	$(info # -     Testing SHA256 complex functions     - #)
	$(info ################################################)
	$(info )
	./../../../jasminc -o compiled_Jasmin/sha256_transform.s     sha256_transform.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_transform_v2.s  sha256_transform_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_init.s          sha256_init.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update1_v2.s    sha256_update1_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update2_v2.s    sha256_update2_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update3_v2.s    sha256_update3_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update4_v2.s    sha256_update4_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update5_v2.s    sha256_update5_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update6_v2.s    sha256_update6_v2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_final2.s 	     sha256_final2.jazz


hash_funtions: 
	$(info )
	$(info ################################################)
	$(info # -             SHA256 function              - #)
	$(info ################################################)
	$(info )
	./../../../jasminc -o compiled_Jasmin/H3.s                    H3.jazz



zkboo_functions:	
		$(info )
	$(info ################################################)
	$(info # -             ZKBoo functions              - #)
	$(info ################################################)
	$(info )
	./../../../jasminc -o compiled_Jasmin/prove.s                 prove.jazz


problematic_functions: clear
	./../../../jasminc -o compiled_Jasmin/sha256_update1.s       sha256_update1.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update2.s       sha256_update2.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update3.s       sha256_update3.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update4.s       sha256_update4.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update5.s       sha256_update5.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_update6.s       sha256_update6.jazz
	./../../../jasminc -o compiled_Jasmin/H.s                    H.jazz
	./../../../jasminc -o compiled_Jasmin/sha256_final1.s 	     sha256_final1.jazz



clear:
	clear

clean:
	rm -f compiled_Jasmin/*

