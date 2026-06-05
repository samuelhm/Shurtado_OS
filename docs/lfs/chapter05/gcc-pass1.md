::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](binutils-pass1.md "Binutils-2.46.0 - Pass 1"){accesskey="p"}

    Binutils-2.46.0 - Pass 1

-   [Next](linux-headers.md "Linux-7.0.10 API Headers"){accesskey="n"}

    Linux-7.0.10 API Headers

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-gcc-pass1}5.3. GCC-16.1.0 - Pass 1 {#gcc-16.1.0---pass-1 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The GCC package contains the GNU compiler collection, which includes the C and C++ compilers.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [3.8 SBU]{.segbody}
:::

::: seg
**Required disk space:** [5.4 GB]{.segbody}
:::
:::::
::::::
:::::::

:::::: {.installation lang="en"}
## 5.3.1. Installation of Cross GCC {#installation-of-cross-gcc .sect2}

GCC requires the GMP, MPFR and MPC packages. As these packages may not be included in your host distribution, they will be built with GCC. Unpack each package into the GCC source directory and rename the resulting directories so the GCC build procedures will automatically use them:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are frequent misunderstandings about the instructions here. The procedures are the same as every other package, as explained earlier ([Package build instructions](../partintro/generalinstructions.md#buildinstr){.xref}). First, extract the gcc-16.1.0 tarball from the sources directory, and then change to the directory created. Only then should you proceed with the instructions below.
:::

``` userinput
tar -xf ../mpfr-4.2.2.tar.xz
mv -v mpfr-4.2.2 mpfr
tar -xf ../gmp-6.3.0.tar.xz
mv -v gmp-6.3.0 gmp
tar -xf ../mpc-1.4.1.tar.xz
mv -v mpc-1.4.1 mpc
```

On x86_64 hosts, set the default directory name for 64-bit libraries to ["[lib]{.quote}"]{.quote}:

``` userinput
case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
 ;;
esac
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This example demonstrates the use of the *`-i.orig`* switch. It makes the [**sed**]{.command} copy the `t-linux64`{.filename} file to `t-linux64.orig`{.filename}, and then edit the original `t-linux64`{.filename} file inplace. So you may run [**diff -u gcc/config/i386/t-linux64{.orig,}**]{.command} to visualize the change done by the [**sed**]{.command} command afterwards. We\'ll simply use *`-i`* (which just edits the original file inplace without copying it) for all other packages in the book, but you can change it to *`-i.orig`* in any case you want to keep a copy of the original file.
:::

The GCC documentation recommends building GCC in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Prepare GCC for compilation:

``` userinput
../configure                  \
    --target=$LFS_TGT         \
    --prefix=$LFS/tools       \
    --with-glibc-version=2.43 \
    --with-sysroot=$LFS       \
    --with-newlib             \
    --without-headers         \
    --enable-default-pie      \
    --enable-default-ssp      \
    --disable-nls             \
    --disable-shared          \
    --disable-multilib        \
    --disable-threads         \
    --disable-libatomic       \
    --disable-libgomp         \
    --disable-libquadmath     \
    --disable-libssp          \
    --disable-libvtv          \
    --disable-libstdcxx       \
    --enable-languages=c,c++
```

::: variablelist
**The meaning of the configure options:**

[*`--with-glibc-version=2.43`*]{.term}

:   This option specifies the version of Glibc which will be used on the target. It is not relevant to the libc of the host distro because everything compiled by pass1 GCC will run in the chroot environment, which is isolated from libc of the host distro.

[*`--with-newlib`*]{.term}

:   Since a working C library is not yet available, this ensures that the inhibit_libc constant is defined when building libgcc. This prevents the compiling of any code that requires libc support.

[*`--without-headers`*]{.term}

:   When creating a complete cross-compiler, GCC requires standard headers compatible with the target system. For our purposes these headers will not be needed. This switch prevents GCC from looking for them.

[*`--enable-default-pie and --enable-default-ssp`*]{.term}

:   Those switches allow GCC to compile programs with some hardening security features (more information on those in the [note on PIE and SSP](../chapter08/gcc.md#pie-ssp-info){.xref} in chapter 8) by default. They are not strictly needed at this stage, since the compiler will only produce temporary executables. But it is cleaner to have the temporary packages be as close as possible to the final ones.

[*`--disable-shared`*]{.term}

:   This switch forces GCC to link its internal libraries statically. We need this because the shared libraries require Glibc, which is not yet installed on the target system.

[*`--disable-multilib`*]{.term}

:   On x86_64, LFS does not support a multilib configuration. This switch is harmless for x86.

[*`--disable-threads, --disable-libatomic, --disable-libgomp, --disable-libquadmath, --disable-libssp, --disable-libvtv, --disable-libstdcxx`*]{.term}

:   These switches disable support for threading, libatomic, libgomp, libquadmath, libssp, libvtv, and the C++ standard library respectively. These features may fail to compile when building a cross-compiler and are not necessary for the task of cross-compiling the temporary libc.

[*`--enable-languages=c,c++`*]{.term}

:   This option ensures that only the C and C++ compilers are built. These are the only languages needed now.
:::

Compile GCC by running:

``` userinput
make
```

Install the package:

``` userinput
make install
```

This build of GCC has installed a couple of internal system headers. Normally one of them, `limits.h`{.filename}, would in turn include the corresponding system `limits.h`{.filename} header, in this case, `$LFS/usr/include/limits.h`{.filename}. However, at the time of this build of GCC `$LFS/usr/include/limits.h`{.filename} does not exist, so the internal header that has just been installed is a partial, self-contained file and does not include the extended features of the system header. This is adequate for building Glibc, but the full internal header will be needed later. Create a full version of the internal header using a command that is identical to what the GCC build system does in normal circumstances:

``` userinput
cat ../gcc/{limitx,glimits,limity}.h  > \
  $($LFS_TGT-gcc -print-file-name=include)/limits.h
```
::::::

::: {.content lang="en"}
Details on this package are located in [Section 8.30.2, "Contents of GCC."](../chapter08/gcc.md#contents-gcc "8.30.2. Contents of GCC"){.xref}
:::
:::::::::::::

::: navfooter
-   [Prev](binutils-pass1.md "Binutils-2.46.0 - Pass 1"){accesskey="p"}

    Binutils-2.46.0 - Pass 1

-   [Next](linux-headers.md "Linux-7.0.10 API Headers"){accesskey="n"}

    Linux-7.0.10 API Headers

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
