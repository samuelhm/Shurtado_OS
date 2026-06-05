::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](chapter05.md "Compiling a Cross-Toolchain"){accesskey="p"}

    Compiling a Cross-Toolchain

-   [Next](binutils-pass1.md "Binutils-2.46.0 - Pass 1"){accesskey="n"}

    Binutils-2.46.0 - Pass 1

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-introduction}5.1. Introduction {#introduction .sect1}

::: {.sect1 lang="en"}
This chapter shows how to build a cross-compiler and its associated tools. Although here cross-compilation is faked, the principles are the same as for a real cross-toolchain.

The programs compiled in this chapter will be installed under the `$LFS/tools`{.filename} directory to keep them separate from the files installed in the following chapters. The libraries, on the other hand, are installed into their final place, since they pertain to the system we want to build.
:::

::: navfooter
-   [Prev](chapter05.md "Compiling a Cross-Toolchain"){accesskey="p"}

    Compiling a Cross-Toolchain

-   [Next](binutils-pass1.md "Binutils-2.46.0 - Pass 1"){accesskey="n"}

    Binutils-2.46.0 - Pass 1

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
