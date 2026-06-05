::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](m4.md "M4-1.4.21"){accesskey="p"}

    M4-1.4.21

-   [Next](bash.md "Bash-5.3"){accesskey="n"}

    Bash-5.3

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-ncurses}6.3. Ncurses-6.6 {#ncurses-6.6 .sect1}

:::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Ncurses package contains libraries for terminal-independent handling of character screens.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.4 SBU]{.segbody}
:::

::: seg
**Required disk space:** [54 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 6.3.1. Installation of Ncurses {#installation-of-ncurses .sect2}

First, run the following commands to build the [**tic**]{.command} program on the build host. We install it in `$LFS/tools`{.filename}, so that it is found in the `PATH`{.envar} when needed:

``` userinput
mkdir build
pushd build
  ../configure --prefix=$LFS/tools AWK=gawk
  make -C include
  make -C progs tic
  install progs/tic $LFS/tools/bin
popd
```

Prepare Ncurses for compilation:

``` userinput
./configure --prefix=/usr                \
            --host=$LFS_TGT              \
            --build=$(./config.guess)    \
            --mandir=/usr/share/man      \
            --with-manpage-format=normal \
            --with-shared                \
            --without-normal             \
            --with-cxx-shared            \
            --without-debug              \
            --without-ada                \
            --disable-stripping          \
            AWK=gawk
```

::: variablelist
**The meaning of the new configure options:**

[*`--with-manpage-format=normal`*]{.term}

:   This prevents Ncurses from installing compressed manual pages, which may happen if the host distribution itself has compressed manual pages.

[*`--with-shared`*]{.term}

:   This makes Ncurses build and install shared C libraries.

[*`--without-normal`*]{.term}

:   This prevents Ncurses from building and installing static C libraries.

[*`--without-debug`*]{.term}

:   This prevents Ncurses from building and installing debug libraries.

[*`--with-cxx-shared`*]{.term}

:   This makes Ncurses build and install shared C++ bindings. It also prevents it building and installing static C++ bindings.

[*`--without-ada`*]{.term}

:   This ensures that Ncurses does not build support for the Ada compiler, which may be present on the host but will not be available once we enter the [**chroot**]{.command} environment.

[*`--disable-stripping`*]{.term}

:   This switch prevents the building system from using the [**strip**]{.command} program from the host. Using host tools on cross-compiled programs can cause failure.

[*`AWK=gawk`*]{.term}

:   This switch prevents the building system from using the [**mawk**]{.command} program from the host. Some versions of [**mawk**]{.command} can cause this package to fail to build.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
ln -sv libncursesw.so $LFS/usr/lib/libncurses.so
sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i $LFS/usr/include/curses.h
```

::: variablelist
**The meaning of the install options:**

[[**ln -sv libncursesw.so \$LFS/usr/lib/libncurses.so**]{.command}]{.term}

:   The `libncurses.so`{.filename} library is needed by a few packages we will build soon. We create this symlink to use `libncursesw.so`{.filename} as a replacement.

[[**sed -e \'s/\^#if.\*XOPEN.\*\$/#if 1/\' \...**]{.command}]{.term}

:   The header file `curses.h`{.filename} contains the definition of various Ncurses data structures. With different preprocessor macro definitions two different sets of the data structure definition may be used: the 8-bit definition is compatible with `libncurses.so`{.filename} and the wide-character definition is compatible with `libncursesw.so`{.filename}. Since we are using `libncursesw.so`{.filename} as a replacement of `libncurses.so`{.filename}, edit the header file so it will always use the wide-character data structure definition compatible with `libncursesw.so`{.filename}.
:::
:::::

::: {.content lang="en"}
Details on this package are located in [Section 8.31.2, "Contents of Ncurses."](../chapter08/ncurses.md#contents-ncurses "8.31.2. Contents of Ncurses"){.xref}
:::
::::::::::::

::: navfooter
-   [Prev](m4.md "M4-1.4.21"){accesskey="p"}

    M4-1.4.21

-   [Next](bash.md "Bash-5.3"){accesskey="n"}

    Bash-5.3

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
