

all: clear simple_functions sha256_simple_functions sha256_complex_functions hash_funtions mpc_functions zkboo_functions
	

simple_functions: 
	$(info )
	$(info ##############################################)
	$(info # - Testing SHA1 simple auxiliar functions - #)
	$(info ##############################################)
	$(info )
	./../../jasminc -o simple_functions/compiled_Jasmin/GETBIT.s           simple_functions/GETBIT.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/GETBIT_EXTENDED.s  simple_functions/GETBIT_EXTENDED.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/GETBIT_u32.s       simple_functions/GETBIT_u32.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/getBits.s          simple_functions/getBits.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/LEFTROTATE.s       simple_functions/LEFTROTATE.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_words.s        simple_functions/mpc_words.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_xor.s          simple_functions/mpc_xor.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_xor_hHa.s      simple_functions/mpc_xor_hHa.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_xor_k.s        simple_functions/mpc_xor_k.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_xor_three.s    simple_functions/mpc_xor_three.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/mpc_xor_w.s        simple_functions/mpc_xor_w.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/RIGTHSHIFT.s       simple_functions/RIGHTSHIFT.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/set_word.s         simple_functions/set_word.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/SETBIT_U32.s       simple_functions/SETBIT_U32.jazz
	 

sha256_simple_functions: 
	$(info )
	$(info ################################################)
	$(info # - Testing SHA256 simple auxiliar functions - #)
	$(info ################################################)
	$(info )
	./../../jasminc -o simple_functions/compiled_Jasmin/ROTLEFT.s   simple_functions/ROTLEFT.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/ROTRIGHT.s  simple_functions/ROTRIGHT.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/EP0.s       simple_functions/EP0.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/EP1.s       simple_functions/EP1.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/SIG0.s      simple_functions/SIG0.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/SIG1.s      simple_functions/SIG1.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/CH.s        simple_functions/CH.jazz
	./../../jasminc -o simple_functions/compiled_Jasmin/MAJ.s       simple_functions/MAJ.jazz


sha256_complex_functions: 
	$(info )
	$(info ################################################)
	$(info # -     Testing SHA256 complex functions     - #)
	$(info ################################################)
	$(info )
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_transform.s     hash_functions/sha256_transform.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_transform_v2.s  hash_functions/sha256_transform_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_init.s          hash_functions/sha256_init.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update1_v2.s    hash_functions/sha256_update1_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update2_v2.s    hash_functions/sha256_update2_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update3_v2.s    hash_functions/sha256_update3_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update4_v2.s    hash_functions/sha256_update4_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update5_v2.s    hash_functions/sha256_update5_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update6_v2.s    hash_functions/sha256_update6_v2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_final2.s 	     hash_functions/sha256_final2.jazz


hash_funtions: 
	$(info )
	$(info ################################################)
	$(info # -             SHA256 function              - #)
	$(info ################################################)
	$(info )
	./../../jasminc -o hash_functions/compiled_Jasmin/H3.s                    hash_functions/H3.jazz


mpc_functions:
	$(info )
	$(info ################################################)
	$(info # -             MPC functions                - #)
	$(info ################################################)
	$(info )
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_ADD.s               mpc_functions/mpc_ADD.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_ADD_hHa.s           mpc_functions/mpc_ADD_hHa.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_ADD_K.s             mpc_functions/mpc_ADD_K.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_ADD_W.s             mpc_functions/mpc_ADD_W.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_AND.s               mpc_functions/mpc_AND.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_MAJ.s               mpc_functions/mpc_MAJ.jazz
	./../../jasminc -o mpc_functions/compiled_Jasmin/mpc_SHA1.s              mpc_functions/mpc_SHA1.jazz


zkboo_functions:	
	$(info )
	$(info ################################################)
	$(info # -             ZKBoo functions              - #)
	$(info ################################################)
	$(info )
	./../../jasminc -o simple_functions/compiled_Jasmin/prove.s           simple_functions/prove.jazz




quarantine_functions: clear
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update1.s       hash_functions/sha256_update1.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update2.s       hash_functions/sha256_update2.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update3.s       hash_functions/sha256_update3.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update4.s       hash_functions/sha256_update4.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update5.s       hash_functions/sha256_update5.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_update6.s       hash_functions/sha256_update6.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/H.s                    hash_functions/H.jazz
	./../../jasminc -o hash_functions/compiled_Jasmin/sha256_final1.s 	     hash_functions/sha256_final1.jazz



clear:
	clear

clean:
	rm -f hash_functions/compiled_Jasmin/*
	rm -f mpc_functions/compiled_Jasmin/*
	rm -f simple_functions/compiled_Jasmin/*


