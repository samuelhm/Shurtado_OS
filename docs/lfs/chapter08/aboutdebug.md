::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](e2fsprogs.md "E2fsprogs-1.47.4"){accesskey="p"}

    E2fsprogs-1.47.4

-   [Next](stripping.md "Stripping"){accesskey="n"}

    Stripping

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-aboutdebug}8.82. About Debugging Symbols {#about-debugging-symbols .sect1}

:::: {.sect1 lang="en"}
Most programs and libraries are, by default, compiled with debugging symbols included (with [**gcc**]{.command}\'s *`-g`* option). This means that when debugging a program or library that was compiled with debugging information, the debugger can provide not only memory addresses, but also the names of the routines and variables.

The inclusion of these debugging symbols enlarges a program or library significantly. Here are two examples of the amount of space these symbols occupy:

::: itemizedlist
-   A [**bash**]{.command} binary with debugging symbols: 1200 KB

-   A [**bash**]{.command} binary without debugging symbols: 480 KB (60% smaller)

-   Glibc and GCC files (`/lib`{.filename} and `/usr/lib`{.filename}) with debugging symbols: 87 MB

-   Glibc and GCC files without debugging symbols: 16 MB (82% smaller)
:::

Sizes will vary depending on which compiler and C library were used, but a program that has been stripped of debugging symbols is usually some 50% to 80% smaller than its unstripped counterpart. Because most users will never use a debugger on their system software, a lot of disk space can be regained by removing these symbols. The next section shows how to strip all debugging symbols from the programs and libraries.
::::

::: navfooter
-   [Prev](e2fsprogs.md "E2fsprogs-1.47.4"){accesskey="p"}

    E2fsprogs-1.47.4

-   [Next](stripping.md "Stripping"){accesskey="n"}

    Stripping

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
