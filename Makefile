help:
	@echo "make help"
	@echo "make all"
	
	
ADT_stack.o: ADT_stack.c
	g++ -c ADT_stack.c
	
main.o: main.c
	g++ -c main.c
	
all: ADT_stack.o main.o
	g++ -o stack.exe main.o ADT_stack.o
	
run: all
	stack.exe
	
clean:
	del *.o
	
cleanup: clean
	del *.exe