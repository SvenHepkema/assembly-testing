%.asm: assembly/%.asm
	nasm -f elf64 $^ -O0 -o obj/$*.o
	ld -s -o bin/$* obj/$*.o 

clean:
	rm obj/* -f
	rm bin/* -f
