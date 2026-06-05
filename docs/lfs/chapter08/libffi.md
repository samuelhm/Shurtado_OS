::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libelf.md "Libelf from Elfutils-0.195"){accesskey="p"}

    Libelf from Elfutils-0.195

-   [Next](sqlite.md "Sqlite-3530100"){accesskey="n"}

    Sqlite-3530100

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libffi}8.49. Libffi-3.5.2 {#libffi-3.5.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Libffi library provides a portable, high level programming interface to various calling conventions. This allows a programmer to call any function specified by a call interface description at run time.

FFI stands for Foreign Function Interface. An FFI allows a program written in one language to call a program written in another language. Specifically, Libffi can provide a bridge between an interpreter like Perl, or Python, and shared library subroutines written in C, or C++.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.7 SBU]{.segbody}
:::

::: seg
**Required disk space:** [10 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.49.1. Installation of Libffi {#installation-of-libffi .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Like GMP, Libffi builds with optimizations specific to the processor in use. If building for another system, change the value of the *`--with-gcc-arch=`* parameter in the following command to an architecture name fully implemented by [**both**]{.bold} the host CPU and the CPU on that system. If this is not done, all applications that link to `libffi`{.filename} will trigger Illegal Operation Errors. If you cannot figure out a value safe for both the CPUs, replace the parameter with `--without-gcc-arch`{.option} to produce a generic library.
:::

Prepare Libffi for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --with-gcc-arch=native
```

::: variablelist
**The meaning of the configure option:**

[*`--with-gcc-arch=native`*]{.term}

:   Ensure GCC optimizes for the current system. If this is not specified, the system is guessed and the code generated may not be correct. If the generated code will be copied from the native system to a less capable system, use the less capable system as a parameter. For details about alternative system types, see [the x86 options in the GCC manual](https://gcc.gnu.org/onlinedocs/gcc-16.1.0/gcc/x86-Options.html){.ulink}.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```
:::::

::::::: {.content lang="en"}
## []{#contents-libffi}8.49.2. Contents of Libffi {#contents-of-libffi .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed library:** [libffi.so]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------- -------------------------------------------------------
  []{#libffi}[`libffi`{.filename}]{.term}   Contains the foreign function interface API functions
  ----------------------------------------- -------------------------------------------------------
:::
:::::::
::::::::::::::::

::: navfooter
-   [Prev](libelf.md "Libelf from Elfutils-0.195"){accesskey="p"}

    Libelf from Elfutils-0.195

-   [Next](sqlite.md "Sqlite-3530100"){accesskey="n"}

    Sqlite-3530100

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
