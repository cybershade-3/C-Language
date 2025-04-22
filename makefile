# Use gcc instead of cc
CC = gcc

# Pattern rule: compile any .c file into an executable
%.c:
	$(CC) $< -o $(basename $<)

# Clean rule to delete all compiled executables
clean:
	del /Q *.exe 2>nul
	
#make hello	Compiles hello.c → hello.exe
#make clean	Deletes all .exe files
