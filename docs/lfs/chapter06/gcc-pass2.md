::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](binutils-pass2.md "Binutils-2.46.0 - Pass 2"){accesskey="p"}

    Binutils-2.46.0 - Pass 2

-   [Next](../chapter07/chapter07.md "Entering Chroot and Building Additional Temporary Tools"){accesskey="n"}

    Entering Chroot and Building Additional Temporary Tools

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-gcc-pass2}6.18. GCC-16.1.0 - Pass 2 {#gcc-16.1.0---pass-2 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The GCC package contains the GNU compiler collection, which includes the C and C++ compilers.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [4.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.0 GB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.18.1. Installation of GCC {#installation-of-gcc .sect2}

As in the first build of GCC, the GMP, MPFR, and MPC packages are required. Unpack the tarballs and move them into the required directories:

``` userinput
tar -xf ../mpfr-4.2.2.tar.xz
mv -v mpfr-4.2.2 mpfr
tar -xf ../gmp-6.3.0.tar.xz
mv -v gmp-6.3.0 gmp
tar -xf ../mpc-1.4.1.tar.xz
mv -v mpc-1.4.1 mpc
```

If you are building on x86_64, change the default directory name for 64-bit libraries to ["[lib]{.quote}"]{.quote}:

``` userinput
case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac
```

Create a separate build directory again:

``` userinput
mkdir -v build
cd       build
```

Before starting to build GCC, remember to unset any environment variables that override the default optimization flags.

Now prepare GCC for compilation:

``` userinput
../configure                   \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --target=$LFS_TGT          \
    --prefix=/usr              \
    --with-build-sysroot=$LFS  \
    --enable-default-pie       \
    --enable-default-ssp       \
    --disable-nls              \
    --disable-multilib         \
    --disable-libatomic        \
    --disable-libgomp          \
    --disable-libquadmath      \
    --disable-libsanitizer     \
    --disable-libssp           \
    --disable-libvtv           \
    --enable-languages=c,c++   \
    LDFLAGS_FOR_TARGET=-L$PWD/$LFS_TGT/libgcc \
    target_configargs=gcc_cv_target_thread_file=posix
```

::: variablelist
**The meaning of the new configure options:**

[*`--target=$LFS_TGT`*]{.term}

:   We are cross-compiling GCC, so it\'s impossible to build target libraries (`libgcc`{.filename} and `libstdc++`{.filename}) with the GCC binaries compiled in this pass---those binaries won\'t run on the host. The GCC build system will attempt to use the host\'s C and C++ compilers as a workaround by default. Building the GCC target libraries with a different version of GCC is not supported, so using the host\'s compilers may cause the build to fail. This parameter ensures the libraries are built by GCC pass 1.

[*`--with-build-sysroot=$LFS`*]{.term}

:   Normally, using *`--host`* ensures that a cross-compiler is used for building GCC, and that compiler knows that it has to look for headers and libraries in `$LFS`{.filename}. However, the build system for GCC uses additional tools which are not aware of this location. This switch is needed so those tools will find the needed files in `$LFS`{.filename}, and not on the host.

[*`--disable-libsanitizer`*]{.term}

:   Disable GCC sanitizer runtime libraries. They are not needed for the temporary installation. In [gcc-pass1](../chapter05/gcc-pass1.md "5.3. GCC-16.1.0 - Pass 1"){.xref} it was implied by *`--disable-libstdcxx`*, and now we can explicitly pass it.

[*`LDFLAGS_FOR_TARGET=...`*]{.term}

:   Allow `libstdc++`{.filename} to use the `libgcc`{.filename} being built in this pass, instead of the previous version built in [gcc-pass1](../chapter05/gcc-pass1.md "5.3. GCC-16.1.0 - Pass 1"){.xref}. The previous version cannot properly support C++ exception handling because it was built without libc support.

[*`target_configargs=gcc_cv_target_thread_file=posix`*]{.term}

:   Build the target libraries libgcc and libstdc++ with POSIX thread support enabled. The default is following the configuration of the compiler used for building the target library (in this case, [gcc-pass1](../chapter05/gcc-pass1.md "5.3. GCC-16.1.0 - Pass 1"){.xref} which was configured with none thread support).
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

As a finishing touch, create a utility symlink. Many programs and scripts run [**cc**]{.command} instead of [**gcc**]{.command}, which is used to keep programs generic and therefore usable on all kinds of UNIX systems where the GNU C compiler is not always installed. Running [**cc**]{.command} leaves the system administrator free to decide which C compiler to install:

``` userinput
ln -sv gcc $LFS/usr/bin/cc
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.30.2, "Contents of GCC."](../chapter08/gcc.md#contents-gcc "8.30.2. Contents of GCC"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](binutils-pass2.md "Binutils-2.46.0 - Pass 2"){accesskey="p"}

    Binutils-2.46.0 - Pass 2

-   [Next](../chapter07/chapter07.md "Entering Chroot and Building Additional Temporary Tools"){accesskey="n"}

    Entering Chroot and Building Additional Temporary Tools

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
