<h1 align="center">
assembly-testing
</h1>

In this repository I experiment with writing assembly. Especially during the development of my [C compiler](https://github.com/SvenHepkema/rust-c-compiler) written in Rust.

# Compilation

Use the following command to compile and run any of the `.asm` files in the [assembly](assembly) folder.

```sh
make <filename>.asm && ./bin/<filename>
```

# Documentation

- [asm system calls/interrupts a register values](https://github.com/ilbers/linux/blob/master/arch/sh/include/uapi/asm/unistd_64.h)

