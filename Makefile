$?FLASCC:=/path/to/FLASCC/SDK

all:
	@mkdir -p install/usr/lib
	@mkdir -p install/usr/include

	@echo "Compiling libGL.cpp"
	@$(FLASCC)/usr/bin/g++ -fno-exceptions -O4 -c -Iinstall/usr/include/ libGL.cpp
	@$(FLASCC)/usr/bin/ar crus install/usr/lib/libGL.a install/usr/lib/libGL.abc libGL.o 

	@rm -f libGL.o 
