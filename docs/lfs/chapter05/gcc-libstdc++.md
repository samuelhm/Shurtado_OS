::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](glibc.md "Glibc-2.43"){accesskey="p"}

    Glibc-2.43

-   [Next](../chapter06/chapter06.md "Cross Compiling Temporary Tools"){accesskey="n"}

    Cross Compiling Temporary Tools

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-libstdcpp}5.6. Libstdc++ from GCC-16.1.0 {#libstdc-from-gcc-16.1.0 .sect1}

:::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Libstdc++ is the standard C++ library. It is needed to compile C++ code (part of GCC is written in C++), but we had to defer its installation when we built [gcc-pass1](gcc-pass1.md "5.3. GCC-16.1.0 - Pass 1"){.xref} because Libstdc++ depends on Glibc, which was not yet available in the target directory.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [1.3 GB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 5.6.1. Installation of Target Libstdc++ {#installation-of-target-libstdc .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Libstdc++]{.application} is part of the GCC sources. You should first unpack the GCC tarball and change to the `gcc-16.1.0`{.filename} directory.
:::

Create a separate build directory for Libstdc++ and enter it:

``` userinput
mkdir -v build
cd       build
```

Prepare Libstdc++ for compilation:

``` userinput
../libstdc++-v3/configure      \
    --host=$LFS_TGT            \
    --build=$(../config.guess) \
    --prefix=/usr              \
    --disable-multilib         \
    --disable-nls              \
    --disable-libstdcxx-pch    \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/16.1.0
```

::: variablelist
**The meaning of the configure options:**

[*`--host=...`*]{.term}

:   Specifies that the cross-compiler we have just built should be used instead of the one in `/usr/bin`{.filename}.

[*`--disable-libstdcxx-pch`*]{.term}

:   This switch prevents the installation of precompiled include files, which are not needed at this stage.

[*`--with-gxx-include-dir=/tools/$LFS_TGT/include/c++/16.1.0`*]{.term}

:   This specifies the installation directory for include files. Because Libstdc++ is the standard C++ library for LFS, this directory should match the location where the C++ compiler ([**\$LFS_TGT-g++**]{.command}) would search for the standard C++ include files. In a normal build, this information is automatically passed to the Libstdc++ [**configure**]{.command} options from the top level directory. In our case, this information must be explicitly given. The C++ compiler will prepend the sysroot path `$LFS`{.filename} (specified when building GCC-pass1) to the include file search path, so it will actually search in `$LFS/tools/$LFS_TGT/include/c++/16.1.0`{.filename}. The combination of the *`DESTDIR`* variable (in the [**make install**]{.command} command below) and this switch causes the headers to be installed there.
:::

Compile Libstdc++ by running:

``` userinput
make
```

Install the library:

``` userinput
make DESTDIR=$LFS install
```

Remove the libtool archive files because they are harmful for cross-compilation:

``` userinput
rm -v $LFS/usr/lib/lib{stdc++{,exp,fs},supc++}.la
```
:::::

::: {.content lang="en"}
Details on this package are located in [Section 8.30.2, "Contents of GCC."](../chapter08/gcc.md#contents-gcc "8.30.2. Contents of GCC"){.xref}
:::
::::::::::::

::: navfooter
-   [Prev](glibc.md "Glibc-2.43"){accesskey="p"}

    Glibc-2.43

-   [Next](../chapter06/chapter06.md "Cross Compiling Temporary Tools"){accesskey="n"}

    Cross Compiling Temporary Tools

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
