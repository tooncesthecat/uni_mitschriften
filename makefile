all: theo ep

theo: 
		cd theo3/ ; make

ep:
		cd ep4/ ; make

clean:
		cd theo3/ ; make clean
		cd ep4/ ; make clean
		
.PHONY: all theo ep clean
.SILENT: theo ep clean

