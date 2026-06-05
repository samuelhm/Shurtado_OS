::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](linux-headers.md "Linux-7.0.10 API Headers"){accesskey="p"}

    Linux-7.0.10 API Headers

-   [Next](gcc-libstdc++.md "Libstdc++ from GCC-16.1.0"){accesskey="n"}

    Libstdc++ from GCC-16.1.0

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-glibc}5.5. Glibc-2.43 {#glibc-2.43 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Glibc package contains the main C library. This library provides the basic routines for allocating memory, searching directories, opening and closing files, reading and writing files, string handling, pattern matching, arithmetic, and so on.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.4 SBU]{.segbody}
:::

::: seg
**Required disk space:** [890 MB]{.segbody}
:::
:::::
::::::
:::::::

:::::::::: {.installation lang="en"}
## 5.5.1. Installation of Glibc {#installation-of-glibc .sect2}

First, create a symbolic link for LSB compliance. Additionally, for x86_64, create a compatibility symbolic link required for proper operation of the dynamic library loader:

``` userinput
case $(uname -m) in
    i?86)   ln -sfv ld-linux.so.2 $LFS/lib/ld-lsb.so.3
    ;;
    x86_64) ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64
            ln -sfv ../lib/ld-linux-x86-64.so.2 $LFS/lib64/ld-lsb-x86-64.so.3
    ;;
esac
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The above command is correct. The [**ln**]{.command} command has several syntactic versions, so be sure to check [**info coreutils ln**]{.command} and [ln(1)](https://man.archlinux.org/man/ln.1){.ulink} before reporting what may appear to be an error.
:::

Some of the Glibc programs use the non-FHS-compliant `/var/db`{.filename} directory to store their runtime data. Apply the following patch to make such programs store their runtime data in the FHS-compliant locations:

``` userinput
patch -Np1 -i ../glibc-fhs-1.patch
```

Now fix glibc to build against Linux 7:

``` userinput
patch -Np1 -i ../glibc-2.43-upstream_fixes-1.patch
```

The patch applied above also contains fixes of some security vulnerabilities. The fix is not needed but also harmless for a temporary glibc installation.

The Glibc documentation recommends building Glibc in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Ensure that the [**ldconfig**]{.command} and [**sln**]{.command} utilities are installed into `/usr/sbin`{.filename}:

``` userinput
echo "rootsbindir=/usr/sbin" > configparms
```

Next, prepare Glibc for compilation:

``` userinput
../configure                             \
      --prefix=/usr                      \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --disable-nscd                     \
      libc_cv_slibdir=/usr/lib           \
      --enable-kernel=5.10
```

::: variablelist
**The meaning of the configure options:**

[*`--host=$LFS_TGT, --build=$(../scripts/config.guess)`*]{.term}

:   The combined effect of these switches is that Glibc\'s build system configures itself to be cross-compiled, using the cross-linker and cross-compiler in `$LFS/tools`{.filename}.

[*`--enable-kernel=5.10`*]{.term}

:   This tells Glibc to compile the library with support for 5.10 and later Linux kernels. Workarounds for older kernels are not enabled.

[*`libc_cv_slibdir=/usr/lib`*]{.term}

:   This ensures that the library is installed in /usr/lib instead of the default /lib64 on 64-bit machines.

[*`--disable-nscd`*]{.term}

:   Do not build the name service cache daemon which is no longer used.
:::

During this stage the following warning might appear:

::: blockquote
> ``` screen
> configure: WARNING:
> *** These auxiliary programs are missing or
> *** incompatible versions: msgfmt
> *** some features will be disabled.
> *** Check the INSTALL file for required versions.
> ```
:::

The missing or incompatible [**msgfmt**]{.command} program is generally harmless. This [**msgfmt**]{.command} program is part of the Gettext package, which the host distribution should provide.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There have been reports that this package may fail when building as a ["[parallel make.]{.quote}"]{.quote} If that occurs, rerun the make command with the `-j1`{.option} option.
:::

Compile the package:

``` userinput
make
```

Install the package:

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If `LFS`{.envar} is not properly set, and despite the recommendations, you are building as `root`{.systemitem}, the next command will install the newly built Glibc to your host system, which will almost certainly render it unusable. So double-check that the environment is correctly set, and that you are not `root`{.systemitem}, before running the following command.
:::

``` userinput
make DESTDIR=$LFS install
```

::: variablelist
**The meaning of the [**make install**]{.command} option:**

[*`DESTDIR=$LFS`*]{.term}

:   The `DESTDIR`{.envar} make variable is used by almost all packages to define the location where the package should be installed. If it is not set, it defaults to the root (`/`{.filename}) directory. Here we specify that the package is installed in `$LFS`{.filename}, which will become the root directory in [Section 7.4, "Entering the Chroot Environment."](../chapter07/chroot.md "7.4. Entering the Chroot Environment"){.xref}
:::

Fix a hard coded path to the executable loader in the [**ldd**]{.command} script:

``` userinput
sed '/RTLDLIST=/s@/usr@@g' -i $LFS/usr/bin/ldd
```

Now that our cross toolchain is in place, it is important to ensure that compiling and linking will work as expected. We do this by performing some sanity checks:

``` userinput
echo 'int main(){}' | $LFS_TGT-gcc -x c - -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'
```

There should be no errors, and the output of the last command will be (allowing for platform-specific differences in the dynamic linker name):

``` screen
[Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
```

Note that this path should not contain `/mnt/lfs`{.filename} (or the value of the `LFS`{.envar} variable if you used a different one). The path is resolved when the compiled program is executed, and that should only happen after we enter the chroot environment where the kernel would consider `$LFS`{.filename} as the root directory (`/`{.filename}).

Now make sure that we\'re set up to use the correct start files:

``` userinput
grep -E -o "$LFS/lib.*/S?crt[1in].*succeeded" dummy.log
```

The output of the last command should be:

``` screen
/mnt/lfs/lib/../lib/Scrt1.o succeeded
/mnt/lfs/lib/../lib/crti.o succeeded
/mnt/lfs/lib/../lib/crtn.o succeeded
```

Verify that the compiler is searching for the correct header files:

``` userinput
grep -B3 "^ $LFS/usr/include" dummy.log
```

This command should return the following output:

``` screen
#include <...> search starts here:
 /mnt/lfs/tools/lib/gcc/x86_64-lfs-linux-gnu/16.1.0/include
 /mnt/lfs/tools/lib/gcc/x86_64-lfs-linux-gnu/16.1.0/include-fixed
 /mnt/lfs/usr/include
```

Again, the directory named after your target triplet may be different than the above, depending on your system architecture.

Next, verify that the new linker is being used with the correct search paths:

``` userinput
grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g'
```

References to paths that have components with \'-linux-gnu\' should be ignored, but otherwise the output of the last command should be:

``` screen
SEARCH_DIR("=/mnt/lfs/tools/x86_64-lfs-linux-gnu/lib64")
SEARCH_DIR("=/usr/local/lib64")
SEARCH_DIR("=/lib64")
SEARCH_DIR("=/usr/lib64")
SEARCH_DIR("=/mnt/lfs/tools/x86_64-lfs-linux-gnu/lib")
SEARCH_DIR("=/usr/local/lib")
SEARCH_DIR("=/lib")
SEARCH_DIR("=/usr/lib");
```

A 32-bit system may use a few other directories, but anyway the important facet here is all the paths should begin with an equal sign (`=`{.literal}), which would be replaced with the sysroot directory that we\'ve configured for the linker.

Next make sure that we\'re using the correct libc:

``` userinput
grep "/lib.*/libc.so.6 " dummy.log
```

The output of the last command should be:

``` screen
attempt to open /mnt/lfs/usr/lib/libc.so.6 succeeded
```

Make sure GCC is using the correct dynamic linker:

``` userinput
grep found dummy.log
```

The output of the last command should be (allowing for platform-specific differences in dynamic linker name):

``` screen
found ld-linux-x86-64.so.2 at /mnt/lfs/usr/lib/ld-linux-x86-64.so.2
```

If the output does not appear as shown above or is not received at all, then something is seriously wrong. Investigate and retrace the steps to find out where the problem is and correct it. Any issues should be resolved before continuing with the process.

Once everything is working correctly, clean up the test files:

``` userinput
rm -v a.out dummy.log
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Building the packages in the next chapter will serve as an additional check that the toolchain has been built properly. If some package, especially Binutils-pass2 or GCC-pass2, fails to build, it is an indication that something has gone wrong with the preceding Binutils, GCC, or Glibc installations.
:::
::::::::::

::: {.content lang="en"}
Details on this package are located in [Section 8.5.3, "Contents of Glibc."](../chapter08/glibc.md#contents-glibc "8.5.3. Contents of Glibc"){.xref}
:::
:::::::::::::::::

::: navfooter
-   [Prev](linux-headers.md "Linux-7.0.10 API Headers"){accesskey="p"}

    Linux-7.0.10 API Headers

-   [Next](gcc-libstdc++.md "Libstdc++ from GCC-16.1.0"){accesskey="n"}

    Libstdc++ from GCC-16.1.0

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
