Problem 1:

ERROR: stack allocation: the region associated to variable X (defined at line y) is partial

Reason: This error refers to a variable that has the same memory address as another variable.

Example:

inline
fn example( stack u8[2] x1, stack u8[2] x2) -> stack u8[2], stack u8[2] {

		x1 = swap(x1);
		x1 = swap(x2);

		return x1, x2;
}

The previous function emmits the error because on line 13 the result of swap(x2) was stored on x1 instead of x2. This made x2 and x1 have the same memory address.


================================================================================


Problem 2:

ERROR: asmgen: not able to assemble address : (RSP +
                                       ((((64u) 4) * (u64)[RSP ((64u) 0)]) +
                                       ((64u) 1208)))


Reason: This error can be caused by several reasons: 

1) You may be accessing an array using a stack value as an addition; 
2) You may have not specified the type of value you are storing from the register that points to an array in memory.





=================================================================================

Problem 3:

ERROR: asmgen: instruction DIV_64 is given incompatible args.

Reason: You may be dividing a number by an integer instead a value in memory (If you are dividing by two consider shifting 1 bit to the right);



================================================================================
Problem 4:

ERROR: asmgen: invalid pexpr for oprd (u64)[R9 ((64u) ((int of u64) RDI))]


Reason: You may be storing a value of an array pointed to by a register u64 in a diferent type register ex: u32.


Solution: You just need to cast the type to u32.
 


================================================================================
Problem 5:

ERROR: Variable allocation: i (defined at line 1575) and i (defined at line 1575) : variable already set



===============================================================================

Problem 6:

ERROR: register allocation: conflicting variables “i.XXXXX” and “j.XXYYX” must be merged due to: ...

Reason: 

1) You have a stack variable passed to a function that is expecting a register.

2) You are storing in register j a operation using i and another value (Fixable by separating the atribution of i to j and after operate over j). 





