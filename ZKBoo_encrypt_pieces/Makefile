SIMPLE = simple_functions
SIMPLE_COMPILED = simple_functions/compiled_Jasmin
HASH = hash_functions
HASH_COMPILED = hash_functions/compiled_Jasmin
MPC = mpc_functions
MPC_COMPILED = mpc_functions/compiled_Jasmin


EXEC = ./../../jasminc -o


all: clear sha1_simple_functions sha256_simple_functions sha256_complex_functions hash_funtions main_functions zkboo_functions
	

sha1_simple_functions: 
	$(info )
	$(info ##############################################)
	$(info # - Testing SHA1 simple auxiliar functions - #)
	$(info ##############################################)
	$(info )
	$(EXEC) $(SIMPLE_COMPILED)/GETBIT.s          $(SIMPLE)/GETBIT.jazz
	$(EXEC) $(SIMPLE_COMPILED)/GETBIT_EXTENDED.s $(SIMPLE)/GETBIT_EXTENDED.jazz
	$(EXEC) $(SIMPLE_COMPILED)/GETBIT_u32.s      $(SIMPLE)/GETBIT_u32.jazz
	$(EXEC) $(SIMPLE_COMPILED)/getBits.s         $(SIMPLE)/getBits.jazz
	$(EXEC) $(SIMPLE_COMPILED)/LEFTROTATE.s      $(SIMPLE)/LEFTROTATE.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_words.s       $(SIMPLE)/mpc_words.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_xor.s         $(SIMPLE)/mpc_xor.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_xor_hHa.s     $(SIMPLE)/mpc_xor_hHa.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_xor_k.s       $(SIMPLE)/mpc_xor_k.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_xor_three.s   $(SIMPLE)/mpc_xor_three.jazz
	$(EXEC) $(SIMPLE_COMPILED)/mpc_xor_w.s       $(SIMPLE)/mpc_xor_w.jazz
	$(EXEC) $(SIMPLE_COMPILED)/RIGTHSHIFT.s      $(SIMPLE)/RIGHTSHIFT.jazz
	$(EXEC) $(SIMPLE_COMPILED)/set_word.s        $(SIMPLE)/set_word.jazz
	$(EXEC) $(SIMPLE_COMPILED)/SETBIT_U32.s      $(SIMPLE)/SETBIT_U32.jazz
	 

sha256_simple_functions: 
	$(info )
	$(info ################################################)
	$(info # - Testing SHA256 simple auxiliar functions - #)
	$(info ################################################)
	$(info )
	$(EXEC) $(SIMPLE_COMPILED)/ROTLEFT.s    $(SIMPLE)/ROTLEFT.jazz
	$(EXEC) $(SIMPLE_COMPILED)/ROTRIGHT.s   $(SIMPLE)/ROTRIGHT.jazz
	$(EXEC) $(SIMPLE_COMPILED)/EP0.s        $(SIMPLE)/EP0.jazz
	$(EXEC) $(SIMPLE_COMPILED)/EP1.s        $(SIMPLE)/EP1.jazz
	$(EXEC) $(SIMPLE_COMPILED)/SIG0.s       $(SIMPLE)/SIG0.jazz
	$(EXEC) $(SIMPLE_COMPILED)/SIG1.s       $(SIMPLE)/SIG1.jazz
	$(EXEC) $(SIMPLE_COMPILED)/CH.s         $(SIMPLE)/CH.jazz
	$(EXEC) $(SIMPLE_COMPILED)/MAJ.s        $(SIMPLE)/MAJ.jazz


sha256_complex_functions: 
	$(info )
	$(info ################################################)
	$(info # -     Testing SHA256 complex functions     - #)
	$(info ################################################)
	$(info )
	$(EXEC) $(HASH_COMPILED)/sha256_transform.s    $(HASH)/sha256_transform.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_transform_v2.s $(HASH)/sha256_transform_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_init.s         $(HASH)/sha256_init.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update1_v2.s   $(HASH)/sha256_update1_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update2_v2.s   $(HASH)/sha256_update2_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update3_v2.s   $(HASH)/sha256_update3_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update4_v2.s   $(HASH)/sha256_update4_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update5_v2.s   $(HASH)/sha256_update5_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update6_v2.s   $(HASH)/sha256_update6_v2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_final1.s       $(HASH)/sha256_final1.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_final2.s       $(HASH)/sha256_final2.jazz


hash_funtions: 
	$(info )
	$(info ################################################)
	$(info # -             SHA256 function              - #)
	$(info ################################################)
	$(info )
	$(EXEC) $(HASH_COMPILED)/H3.s 		$(HASH)/H3.jazz
	$(EXEC) $(HASH_COMPILED)/H.s 		$(HASH)/H.jazz


main_functions:
	$(info )
	$(info ################################################)
	$(info # -             MPC functions                - #)
	$(info ################################################)
	$(info )
	$(EXEC) $(MPC_COMPILED)/mpc_ADD.s       $(MPC)/mpc_ADD.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_ADD_hHa.s   $(MPC)/mpc_ADD_hHa.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_ADD_K.s     $(MPC)/mpc_ADD_K.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_ADD_W.s     $(MPC)/mpc_ADD_W.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_AND.s       $(MPC)/mpc_AND.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_MAJ.s       $(MPC)/mpc_MAJ.jazz
	$(EXEC) $(MPC_COMPILED)/mpc_SHA1.s      $(MPC)/mpc_SHA1.jazz


zkboo_functions:	
	$(info )
	$(info ################################################)
	$(info # -             ZKBoo functions              - #)
	$(info ################################################)
	$(info )
	$(EXEC) $(SIMPLE_COMPILED)/prove.s 	$(SIMPLE)/prove.jazz


quarantine_functions: clear
	$(EXEC) $(HASH_COMPILED)/sha256_update1.s      $(HASH)/sha256_update1.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update2.s      $(HASH)/sha256_update2.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update3.s      $(HASH)/sha256_update3.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update4.s      $(HASH)/sha256_update4.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update5.s      $(HASH)/sha256_update5.jazz
	$(EXEC) $(HASH_COMPILED)/sha256_update6.s      $(HASH)/sha256_update6.jazz



clear:
	clear

clean:
	rm -f hash_functions/compiled_Jasmin/*
	rm -f mpc_functions/compiled_Jasmin/*
	rm -f simple_functions/compiled_Jasmin/*


