::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 1. Introduction

-   [Prev](chapter01.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](whatsnew.md "What's new since the last release"){accesskey="n"}

    What\'s new since the last release

-   [Up](chapter01.md "Chapter 1. Introduction"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-intro-how}1.1. How to Build an LFS System {#how-to-build-an-lfs-system .sect1}

::::: {.sect1 lang="en"}
The LFS system will be built by using an already installed Linux distribution (such as Debian, OpenMandriva, Fedora, or openSUSE). This existing Linux system (the host) will be used as a starting point to provide necessary programs, including a compiler, linker, and shell, to build the new system. Select the ["[development]{.quote}"]{.quote} option during the distribution installation to include these tools.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are many ways to install a Linux distribution and the defaults are usually not optimal for building an LFS system. For suggestions on setting up a commercial distribution see: [https://www.linuxfromscratch.org/hints/downloads/files/partitioning-for-lfs.txt](https://www.linuxfromscratch.org/hints/downloads/files/partitioning-for-lfs.txt){.ulink}.
:::

As an alternative to installing a separate distribution on your machine, you may wish to use a LiveCD from a commercial distribution.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The host distro must satisfy [Host System Requirements](../chapter02/hostreqs.md "2.2. Host System Requirements"){.xref}.
:::

[Chapter 2](../chapter02/chapter02.md "Chapter 2. Preparing the Host System"){.xref} of this book describes how to create a new Linux native partition and file system, where the new LFS system will be compiled and installed. [Chapter 3](../chapter03/chapter03.md "Chapter 3. Packages and Patches"){.xref} explains which packages and patches must be downloaded to build an LFS system, and how to store them on the new file system. [Chapter 4](../chapter04/chapter04.md "Chapter 4. Final Preparations"){.xref} discusses the setup of an appropriate working environment. Please read [Chapter 4](../chapter04/chapter04.md "Chapter 4. Final Preparations"){.xref} carefully as it explains several important issues you should be aware of before you begin to work your way through [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and beyond.

[Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} explains the installation of the initial tool chain, (binutils, gcc, and glibc) using cross-compilation techniques to isolate the new tools from the host system.

[Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} shows you how to cross-compile basic utilities using the just built cross-toolchain.

[Chapter 7](../chapter07/chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){.xref} then enters a \"chroot\" environment, where we use the new tools to build all the rest of the tools needed to create the LFS system.

This effort to isolate the new system from the host distribution may seem excessive. A full technical explanation as to why this is done is provided in [Toolchain Technical Notes](../partintro/toolchaintechnotes.md "Toolchain Technical Notes"){.xref}.

In [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref} the full-blown LFS system is built. Another advantage provided by the chroot environment is that it allows you to continue using the host system while LFS is being built. While waiting for package compilations to complete, you can continue using your computer as usual.

To finish the installation, the basic system configuration is set up in [Chapter 9](../chapter09/chapter09.md "Chapter 9. System Configuration"){.xref}, and the kernel and boot loader are created in [Chapter 10](../chapter10/chapter10.md "Chapter 10. Making the LFS System Bootable"){.xref}. [Chapter 11](../chapter11/chapter11.md "Chapter 11. The End"){.xref} contains information on continuing the LFS experience beyond this book. After the steps in this chapter have been implemented, the computer is ready to boot into the new LFS system.

This is the process in a nutshell. Detailed information on each step is presented in the following chapters. Items that seem complicated now will be clarified, and everything will fall into place as you commence your LFS adventure.
:::::

::: navfooter
-   [Prev](chapter01.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](whatsnew.md "What's new since the last release"){accesskey="n"}

    What\'s new since the last release

-   [Up](chapter01.md "Chapter 1. Introduction"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
