CFLAGS = -I/usr/local/opt/openssl@1.1/include -L/usr/local/opt/openssl@1.1/lib -lcrypto -L/usr/local/Cellar/libomp -lomp

COMPILED = compiled_jasmin

JASMIN_ROOT = ./../jasmin/compiler/jasminc

CONTROL_DIR = control
ASSEMBLEY_FILES = picnic_signature_functions.s
PICNIC_SIGNATURE_FUNCTIONS = picnic_signature_functions
TEST_DIR = picnicl1full

all: full


full:
	clear
	$(JASMIN_ROOT) -o $(TEST_DIR)/$(COMPILED)/$(PICNIC_SIGNATURE_FUNCTIONS).s $(TEST_DIR)/$(PICNIC_SIGNATURE_FUNCTIONS).jazz
	cd $(TEST_DIR) && make example
	./$(TEST_DIR)/example
	


test:
	clear
	#rm -r $(COMPILED)
	$(JASMIN_ROOT) -o $(TEST_DIR)/$(COMPILED)/$(PICNIC_SIGNATURE_FUNCTIONS).s $(TEST_DIR)/$(PICNIC_SIGNATURE_FUNCTIONS).jazz
	cd $(TEST_DIR) && make example
	./$(TEST_DIR)/example

