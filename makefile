build : main.c
	gcc -O main.c
	./a
test : main.c
	gcc -E main.c