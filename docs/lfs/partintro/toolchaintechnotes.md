::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Important Preliminary Material

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](generalinstructions.md "General Compilation Instructions"){accesskey="n"}

    General Compilation Instructions

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-toolchaintechnotes}ii. Toolchain Technical Notes {#ii.-toolchain-technical-notes .sect1}

::::::::::::: {.sect1 lang="en"}
This section explains some of the rationale and technical details behind the overall build method. Don\'t try to immediately understand everything in this section. Most of this information will be clearer after performing an actual build. Come back and re-read this chapter at any time during the build process.

The overall goal of [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} is to produce a temporary area containing a set of tools that are known to be good, and that are isolated from the host system. By using the [**chroot**]{.command} command, the compilations in the remaining chapters will be isolated within that environment, ensuring a clean, trouble-free build of the target LFS system. The build process has been designed to minimize the risks for new readers, and to provide the most educational value at the same time.

This build process is based on [*cross-compilation*]{.emphasis}. Cross-compilation is normally used to build a compiler and its associated toolchain for a machine different from the one that is used for the build. This is not strictly necessary for LFS, since the machine where the new system will run is the same as the one used for the build. But cross-compilation has one great advantage: anything that is cross-compiled cannot depend on the host environment.

::::::: {.sect2 lang="en"}
## []{#cross-compile}About Cross-Compilation {#about-cross-compilation .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The LFS book is not (and does not contain) a general tutorial to build a cross- (or native) toolchain. Don\'t use the commands in the book for a cross-toolchain for some purpose other than building LFS, unless you really understand what you are doing.

It\'s known installing GCC pass 2 will break the cross-toolchain. We don\'t consider it a bug because GCC pass 2 is the last package to be cross-compiled in the book, and we won\'t ["[fix]{.quote}"]{.quote} it until we really need to cross-compile some package after GCC pass 2 in the future.
:::

Cross-compilation involves some concepts that deserve a section of their own. Although this section may be omitted on a first reading, coming back to it later will help you gain a fuller understanding of the process.

Let us first define some terms used in this context.

::: variablelist

[The build]{.term}

:   is the machine where we build programs. Note that this machine is also referred to as the ["[host.]{.quote}"]{.quote}

[The host]{.term}

:   is the machine/system where the built programs will run. Note that this use of ["[host]{.quote}"]{.quote} is not the same as in other sections.

[The target]{.term}

:   is only used for compilers. It is the machine the compiler produces code for. It may be different from both the build and the host.
:::

As an example, let us imagine the following scenario (sometimes referred to as ["[Canadian Cross]{.quote}"]{.quote}). We have a compiler on a slow machine only, let\'s call it machine A, and the compiler ccA. We also have a fast machine (B), but no compiler for (B), and we want to produce code for a third, slow machine (C). We will build a compiler for machine C in three stages.

::: informaltable
   Stage   Build   Host   Target  Action
  ------- ------- ------ -------- --------------------------------------------------
     1       A      A       B     Build cross-compiler cc1 using ccA on machine A.
     2       A      B       C     Build cross-compiler cc2 using cc1 on machine A.
     3       B      C       C     Build compiler ccC using cc2 on machine B.
:::

Then, all the programs needed by machine C can be compiled using cc2 on the fast machine B. Note that unless B can run programs produced for C, there is no way to test the newly built programs until machine C itself is running. For example, to run a test suite on ccC, we may want to add a fourth stage:

::: informaltable
   Stage   Build   Host   Target  Action
  ------- ------- ------ -------- ----------------------------------------------
     4       C      C       C     Rebuild and test ccC using ccC on machine C.
:::

In the example above, only cc1 and cc2 are cross-compilers, that is, they produce code for a machine different from the one they are run on. The other compilers ccA and ccC produce code for the machine they are run on. Such compilers are called [*native*]{.emphasis} compilers.
:::::::

:::::: {.sect2 lang="en"}
## []{#lfs-cross}Implementation of Cross-Compilation for LFS {#implementation-of-cross-compilation-for-lfs .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

All the cross-compiled packages in this book use an autoconf-based building system. The autoconf-based building system accepts system types in the form cpu-vendor-kernel-os, referred to as the system triplet. Since the vendor field is often irrelevant, autoconf lets you omit it.

An astute reader may wonder why a ["[triplet]{.quote}"]{.quote} refers to a four component name. The kernel field and the os field began as a single ["[system]{.quote}"]{.quote} field. Such a three-field form is still valid today for some systems, for example, `x86_64-unknown-freebsd`{.literal}. But two systems can share the same kernel and still be too different to use the same triplet to describe them. For example, Android running on a mobile phone is completely different from Ubuntu running on an ARM64 server, even though they are both running on the same type of CPU (ARM64) and using the same kernel (Linux).

Without an emulation layer, you cannot run an executable for a server on a mobile phone or vice versa. So the ["[system]{.quote}"]{.quote} field has been divided into kernel and os fields, to designate these systems unambiguously. In our example, the Android system is designated `aarch64-unknown-linux-android`{.literal}, and the Ubuntu system is designated `aarch64-unknown-linux-gnu`{.literal}.

The word ["[triplet]{.quote}"]{.quote} remains embedded in the lexicon. A simple way to determine your system triplet is to run the [**config.guess**]{.command} script that comes with the source for many packages. Unpack the binutils sources, run the script **`./config.guess`**, and note the output. For example, for a 32-bit Intel processor the output will be [*i686-pc-linux-gnu*]{.emphasis}. On a 64-bit system it will be [*x86_64-pc-linux-gnu*]{.emphasis}. On most Linux systems the even simpler [**gcc -dumpmachine**]{.command} command will give you similar information.

You should also be aware of the name of the platform\'s dynamic linker, often referred to as the dynamic loader (not to be confused with the standard linker [**ld**]{.command} that is part of binutils). The dynamic linker provided by package glibc finds and loads the shared libraries needed by a program, prepares the program to run, and then runs it. The name of the dynamic linker for a 32-bit Intel machine is `ld-linux.so.2`{.filename}; it\'s `ld-linux-x86-64.so.2`{.filename} on 64-bit systems. A sure-fire way to determine the name of the dynamic linker is to inspect a random binary from the host system by running: **`readelf -l <name of binary> | grep interpreter`** and noting the output. The authoritative reference covering all platforms is in [a Glibc wiki page](https://sourceware.org/glibc/wiki/ABIList){.ulink}.
:::

There are two key points for a cross-compilation:

::: itemizedlist
-   When producing and processing the machine code supposed to be executed on ["[the host,]{.quote}"]{.quote} the cross-toolchain must be used. Note that the native toolchain from ["[the build]{.quote}"]{.quote} may be still invoked to generate machine code supposed to be executed on ["[the build.]{.quote}"]{.quote} For example, the build system may compile a generator with the native toolchain, then generate a C source file with the generator, and finally compile the C source file with the cross-toolchain so the generated code will be able to run on ["[the host.]{.quote}"]{.quote}

    With an autoconf-based build system, this requirement is ensured by using the *`--host`* switch to specify ["[the host]{.quote}"]{.quote} triplet. With this switch the build system will use the toolchain components prefixed with *`<the host triplet>`* for generating and processing the machine code for ["[the host]{.quote}"]{.quote}; e.g. the compiler will be [***`<the host triplet>`*-gcc**]{.command} and the [**readelf**]{.command} tool will be [***`<the host triplet>`*-readelf**]{.command}.

-   The build system should not attempt to run any generated machine code supposed to be executed on ["[the host.]{.quote}"]{.quote} For example, when building a utility natively, its man page can be generated by running the utility with the *`--help`* switch and processing the output, but generally it\'s not possible to do so for a cross-compilation as the utility may fail to run on ["[the build]{.quote}"]{.quote}: it\'s obviously impossible to run ARM64 machine code on a x86 CPU (without an emulator).

    With an autoconf-based build system, this requirement is satisfied in ["[the cross-compilation mode]{.quote}"]{.quote} where the optional features requiring to run machine code for ["[the host]{.quote}"]{.quote} during the build time are disabled. When ["[the host]{.quote}"]{.quote} triplet is explicitly specified, ["[the cross-compilation mode]{.quote}"]{.quote} is enabled if and only if either the [**configure**]{.command} script fails to run a dummy program compiled into ["[the host]{.quote}"]{.quote} machine code, or ["[the build]{.quote}"]{.quote} triplet is explicitly specified via the *`--build`* switch and it\'s different from ["[the host]{.quote}"]{.quote} triplet.
:::

In order to cross-compile a package for the LFS temporary system, the name of the system triplet is slightly adjusted by changing the \"vendor\" field in the `LFS_TGT`{.envar} variable so it says \"lfs\" and `LFS_TGT`{.envar} is then specified as ["[the host]{.quote}"]{.quote} triplet via *`--host`*, so the cross-toolchain will be used for generating and processing the machine code running as a part of the LFS temporary system. And, we also need to enable ["[the cross-compilation mode]{.quote}"]{.quote}: despite ["[the host]{.quote}"]{.quote} machine code, i.e. the machine code for the LFS temporary system, is able to execute on the current CPU, it may refer to a library not available on the ["[the build]{.quote}"]{.quote} (the host distro), or some code or data non-exist or defined differently in the library even if it happens to be available. When cross-compiling a package for the LFS temporary system, we cannot rely on the [**configure**]{.command} script to detect this issue with the dummy program: the dummy only uses a few components in `libc`{.systemitem} that the host distro `libc`{.systemitem} likely provides (unless, maybe the host distro uses a different `libc`{.systemitem} implementation like Musl), so it won\'t fail like how the really useful programs would likely. Thus we must explicitly specify ["[the build]{.quote}"]{.quote} triplet to enable ["[the cross-compilation mode.]{.quote}"]{.quote} The value we use is just the default, i.e. the original system triplet from [**config.guess**]{.command} output, but ["[the cross-compilation mode]{.quote}"]{.quote} depends on an explicit specification as we\'ve discussed.

We use the *`--with-sysroot`* option when building the cross-linker and cross-compiler, to tell them where to find the needed files for ["[the host.]{.quote}"]{.quote} This nearly ensures that none of the other programs built in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} can link to libraries on ["[the build.]{.quote}"]{.quote} The word ["[nearly]{.quote}"]{.quote} is used because [**libtool**]{.command}, a ["[compatibility]{.quote}"]{.quote} wrapper of the compiler and the linker for autoconf-based build systems, can try to be too clever and mistakenly pass options allowing the linker to find libraries of ["[the build.]{.quote}"]{.quote} To prevent this fallout, we need to delete the libtool archive (`.la`{.filename}) files and fix up an outdated libtool copy shipped with the Binutils code.

::: informaltable
   Stage   Build   Host   Target  Action
  ------- ------- ------ -------- ------------------------------------------------------
     1      pc      pc     lfs    Build cross-compiler cc1 using cc-pc on pc.
     2      pc     lfs     lfs    Build compiler cc-lfs using cc1 on pc.
     3      lfs    lfs     lfs    Rebuild (and maybe test) cc-lfs using cc-lfs on lfs.
:::

In the preceding table, ["[on pc]{.quote}"]{.quote} means the commands are run on a machine using the already installed distribution. ["[On lfs]{.quote}"]{.quote} means the commands are run in a chrooted environment.

This is not yet the end of the story. The C language is not merely a compiler; it also defines a standard library. In this book, the GNU C library, named glibc, is used (there is an alternative, \"musl\"). This library must be compiled for the LFS machine; that is, using the cross-compiler cc1. But the compiler itself uses an internal library providing complex subroutines for functions not available in the assembler instruction set. This internal library is named libgcc, and it must be linked to the glibc library to be fully functional. Furthermore, the standard library for C++ (libstdc++) must also be linked with glibc. The solution to this chicken and egg problem is first to build a degraded cc1-based libgcc, lacking some functionalities such as threads and exception handling, and then to build glibc using this degraded compiler (glibc itself is not degraded), and also to build libstdc++. This last library will lack some of the functionality of libgcc.

The upshot of the preceding paragraph is that cc1 is unable to build a fully functional libstdc++ with the degraded libgcc, but cc1 is the only compiler available for building the C/C++ libraries during stage 2. As we\'ve discussed, we cannot run cc-lfs on pc (the host distro) because it may require some library, code, or data not available on ["[the build]{.quote}"]{.quote} (the host distro). So when we build gcc stage 2, we override the library search path to link libstdc++ against the newly rebuilt libgcc instead of the old, degraded build. This makes the rebuilt libstdc++ fully functional.

In [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref} (or ["[stage 3]{.quote}"]{.quote}), all the packages needed for the LFS system are built. Even if a package has already been installed into the LFS system in a previous chapter, we still rebuild the package. The main reason for rebuilding these packages is to make them stable: if we reinstall an LFS package on a completed LFS system, the reinstalled content of the package should be the same as the content of the same package when first installed in [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}. The temporary packages installed in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} or [Chapter 7](../chapter07/chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){.xref} cannot satisfy this requirement, because some optional features of them are disabled because of either the missing dependencies or the ["[cross-compilation mode.]{.quote}"]{.quote} Additionally, a minor reason for rebuilding the packages is to run the test suites.
::::::

::: {.sect2 lang="en"}
## []{#other-details}Other Procedural Details {#other-procedural-details .sect2}

The cross-compiler will be installed in a separate `$LFS/tools`{.filename} directory, since it will not be part of the final system.

Binutils is installed first because the [**configure**]{.command} runs of both gcc and glibc perform various feature tests on the assembler and linker to determine which software features to enable or disable. This is more important than one might realize at first. An incorrectly configured gcc or glibc can result in a subtly broken toolchain, where the impact of such breakage might not show up until near the end of the build of an entire distribution. A test suite failure will usually highlight this error before too much additional work is performed.

Binutils installs its assembler and linker in two locations, `$LFS/tools/bin`{.filename} and `$LFS/tools/$LFS_TGT/bin`{.filename}. The tools in one location are hard linked to the other. An important facet of the linker is its library search order. Detailed information can be obtained from [**ld**]{.command} by passing it the *`--verbose`* flag. For example, [**\$LFS_TGT-ld \--verbose \| grep SEARCH**]{.command} will illustrate the current search paths and their order. (Note that this example can be run as shown only while logged in as user `lfs`{.systemitem}. If you come back to this page later, replace [**\$LFS_TGT-ld**]{.command} with [**ld**]{.command}).

The next package installed is gcc. An example of what can be seen during its run of [**configure**]{.command} is:

``` screen
checking what assembler to use... /mnt/lfs/tools/i686-lfs-linux-gnu/bin/as
checking what linker to use... /mnt/lfs/tools/i686-lfs-linux-gnu/bin/ld
```

This is important for the reasons mentioned above. It also demonstrates that gcc\'s configure script does not search the PATH directories to find which tools to use. However, during the actual operation of [**gcc**]{.command} itself, the same search paths are not necessarily used. To find out which standard linker [**gcc**]{.command} will use, run: [**\$LFS_TGT-gcc -print-prog-name=ld**]{.command}. (Again, remove the [**\$LFS_TGT-**]{.command} prefix if coming back to this later.)

Detailed information can be obtained from [**gcc**]{.command} by passing it the *`-v`* command line option while compiling a program. For example, [**\$LFS_TGT-gcc -v *`example.c`***]{.command} (or without [**\$LFS_TGT-**]{.command} if coming back later) will show detailed information about the preprocessor, compilation, and assembly stages, including [**gcc**]{.command}\'s search paths for included headers and their order.

Next up: sanitized Linux API headers. These allow the standard C library (glibc) to interface with features that the Linux kernel will provide.

Next comes glibc. This is the first package that we cross-compile. We use the *`--host=$LFS_TGT`* option to make the build system to use those tools prefixed with `$LFS_TGT-`{.literal}, and the *`--build=$(../scripts/config.guess)`* option to enable ["[the cross-compilation mode]{.quote}"]{.quote} as we\'ve discussed. The `DESTDIR`{.envar} variable is used to force installation into the LFS file system.

As mentioned above, the standard C++ library is compiled next, followed in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} by other programs that must be cross-compiled to break circular dependencies at build time. The steps for those packages are similar to the steps for glibc.

At the end of [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} the native LFS compiler is installed. First binutils-pass2 is built, in the same `DESTDIR`{.envar} directory as the other programs, then the second pass of gcc is constructed, omitting some non-critical libraries.

Upon entering the chroot environment in [Chapter 7](../chapter07/chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){.xref}, the temporary installations of programs needed for the proper operation of the toolchain are performed. From this point onwards, the core toolchain is self-contained and self-hosted. In [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}, final versions of all the packages needed for a fully functional system are built, tested, and installed.
:::
:::::::::::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](generalinstructions.md "General Compilation Instructions"){accesskey="n"}

    General Compilation Instructions

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
