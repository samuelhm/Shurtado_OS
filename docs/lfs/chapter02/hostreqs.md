::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](stages.md "Building LFS in Stages"){accesskey="n"}

    Building LFS in Stages

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-hostreqs}2.2. Host System Requirements {#host-system-requirements .sect1}

::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## 2.2.1. Hardware {#hardware .sect2}

The LFS editors recommend that the system CPU have at least four cores and that the system have at least 8 GB of memory. Older systems that do not meet these requirements will still work, but the time to build packages will be significantly longer than documented.
:::

::::::: {.sect2 lang="en"}
## 2.2.2. Software {#software .sect2}

Your host system should have the following software with the minimum versions indicated. This should not be an issue for most modern Linux distributions. Also note that many distributions will place software headers into separate packages, often in the form of *`<package-name>`*`-devel`{.literal} or *`<package-name>`*`-dev`{.literal}. Be sure to install those if your distribution provides them.

Earlier versions of the listed software packages may work, but have not been tested.

:::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Be aware that GCC newer than 16.1.0 or Binutils newer than 2.46.0 are not tested. A newer GCC is highly likely to break the build of this LFS release. Do not report such a breakage to the LFS editors. If your host distro has newer versions of these packages, you have several options:

::: itemizedlist
-   Use a newer release of the LFS book if one exists
-   Use an older host distro
-   Downgrade GCC if that is supported by the host distro
-   Use the latest LFS development book. Updates to the latest version of packages in LFS are usually added within two to four weeks after release.
:::
::::

::: itemizedlist
-   [**Bash-3.2**]{.strong} (/bin/sh should be a symbolic or hard link to bash)

-   [**Binutils-2.13.1**]{.strong} (Versions greater than 2.46.0 may not work as they have not been tested)

-   [**Bison-2.7**]{.strong} (/usr/bin/yacc should be a link to bison or a small script that executes bison)

-   [**GNU Coreutils-8.1**]{.strong} or [**Uutils Coreutils-0.8**]{.strong}

-   [**Diffutils-2.8.1**]{.strong}

-   [**Findutils-4.2.31**]{.strong}

-   [**Gawk-4.0.1**]{.strong} (/usr/bin/awk should be a link to gawk)

-   [**GCC-5.4**]{.strong} including the C++ compiler, [**g++**]{.command} (Versions greater than 16.1.0 may not work as they have not been tested). C and C++ standard libraries (with headers) must also be present so the C++ compiler can build hosted programs

-   [**Grep-2.5.1a**]{.strong}

-   [**Gzip-1.3.12**]{.strong}

-   [**Linux Kernel-5.10**]{.strong}

    The reason for the kernel version requirement is that we specify that version when building [glibc]{.application} in [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}, so the workarounds for older kernels are not enabled and the compiled [glibc]{.application} is slightly faster and smaller. As at Dec 2024, 5.10 is the oldest kernel release still supported by the kernel developers. Some kernel releases older than 5.10 may be still supported by third-party teams, but they are not considered official upstream kernel releases; read [https://kernel.org/category/releases.html](https://kernel.org/category/releases.html){.ulink} for the details.

    If the host kernel is earlier than 5.10 you will need to replace the kernel with a more up-to-date version. There are two ways you can go about this. First, see if your Linux vendor provides a 5.10 or later kernel package. If so, you may wish to install it. If your vendor doesn\'t offer an acceptable kernel package, or you would prefer not to install it, you can compile a kernel yourself. Instructions for compiling the kernel and configuring the boot loader (assuming the host uses GRUB) are located in [Chapter 10](../chapter10/chapter10.md "Chapter 10. Making the LFS System Bootable"){.xref}.

    We require the host kernel to support UNIX 98 pseudo terminal (PTY). It should be enabled on all desktop or server distros shipping Linux 5.10 or a newer kernel. If you are building a custom host kernel, ensure `CONFIG_UNIX98_PTYS`{.option} is set to `y`{.literal} in the kernel configuration.

-   [**M4-1.4.10**]{.strong}

-   [**Make-4.0**]{.strong}

-   [**Patch-2.5.4**]{.strong}

-   [**Perl-5.8.8**]{.strong}

-   [**Python-3.4**]{.strong}

-   [**Sed-4.1.5**]{.strong}

-   [**Tar-1.22**]{.strong}

-   [**Texinfo-5.0**]{.strong}

-   [**Xz-5.0.0**]{.strong}
:::

Additionally, if you need to create a new ESP (EFI System Partition, read [Section 2.5, "Creating a File System on the Partition"](creatingfilesystem.md "2.5. Creating a File System on the Partition"){.xref} for details), [dosfstools](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/dosfstools.html){.ulink} is needed.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Note that the symlinks mentioned above are required to build an LFS system using the instructions contained within this book. Symlinks that point to other software (such as dash, mawk, etc.) may work, but are not tested or supported by the LFS development team, and may require either deviation from the instructions or additional patches to some packages.
:::

## []{#version-check}

To see whether your host system has all the appropriate versions, and the ability to compile programs, run the following commands:

``` userinput
cat > version-check.sh << "EOF"
#!/bin/bash
# A script to list version numbers of critical development tools

# If you have tools installed in other directories, adjust PATH here AND
# in ~lfs/.bashrc (section 4.4) as well.

LC_ALL=C 
PATH=/usr/bin:/bin

bail() { echo "FATAL: $1"; exit 1; }
grep --version > /dev/null 2> /dev/null || bail "grep does not work"
sed '' /dev/null || bail "sed does not work"
sort   /dev/null || bail "sort does not work"

ver_check()
{
   if ! type -p $2 &>/dev/null
   then 
     echo "ERROR: Cannot find $2 ($1)"; return 1; 
   fi
   v=$($2 --version 2>&1 | grep -E -o '[0-9]+\.[0-9\.]+[a-z]*' | head -n1)
   if printf '%s\n' $3 $v | sort --version-sort --check &>/dev/null
   then 
     printf "OK:    %-9s %-6s >= $3\n" "$1" "$v"; return 0;
   else 
     printf "ERROR: %-9s is TOO OLD ($3 or later required)\n" "$1"; 
     return 1; 
   fi
}

ver_kernel()
{
   kver=$(uname -r | grep -E -o '^[0-9\.]+')
   if printf '%s\n' $1 $kver | sort --version-sort --check &>/dev/null
   then 
     printf "OK:    Linux Kernel $kver >= $1\n"; return 0;
   else 
     printf "ERROR: Linux Kernel ($kver) is TOO OLD ($1 or later required)\n" "$kver"; 
     return 1; 
   fi
}

# Coreutils first because --version-sort needs Coreutils >= 7.0
if sort --version |& grep -q uutils; then
    ver_check Coreutils  sort     0.8 || bail "Uutils Coreutils too old, stop"
else
    ver_check Coreutils  sort     8.1 || bail "GNU Coreutils too old, stop"
fi
ver_check Bash           bash     3.2
ver_check Binutils       ld       2.13.1
ver_check Bison          bison    2.7
ver_check Diffutils      diff     2.8.1
ver_check Findutils      find     4.2.31
ver_check Gawk           gawk     4.0.1
ver_check GCC            gcc      5.4
ver_check "GCC (C++)"    g++      5.4
ver_check Grep           grep     2.5.1a
ver_check Gzip           gzip     1.3.12
ver_check M4             m4       1.4.10
ver_check Make           make     4.0
ver_check Patch          patch    2.5.4
ver_check Perl           perl     5.8.8
ver_check Python         python3  3.4
ver_check Sed            sed      4.1.5
ver_check Tar            tar      1.22
ver_check Texinfo        texi2any 5.0
ver_check Xz             xz       5.0.0
ver_kernel 5.10

if mount | grep -q 'devpts on /dev/pts' && [ -e /dev/ptmx ]
then echo "OK:    Linux Kernel supports UNIX 98 PTY";
else echo "ERROR: Linux Kernel does NOT support UNIX 98 PTY"; fi

alias_check() {
   if $1 --version 2>&1 | grep -qi $2
   then printf "OK:    %-4s is $2\n" "$1";
   else printf "ERROR: %-4s is NOT $2\n" "$1"; fi
}
echo "Aliases:"
alias_check awk GNU
alias_check yacc Bison
alias_check sh Bash

echo "Compiler check:"
if printf "int main(){}" | g++ -x c++ -
then echo "OK:    g++ works";
else echo "ERROR: g++ does NOT work"; fi
rm -f a.out

if [ "$(nproc)" = "" ]; then
   echo "ERROR: nproc is not available or it produces empty output"
else
   echo "OK: nproc reports $(nproc) logical cores are available"
fi
EOF

bash version-check.sh
```
:::::::
:::::::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](stages.md "Building LFS in Stages"){accesskey="n"}

    Building LFS in Stages

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
