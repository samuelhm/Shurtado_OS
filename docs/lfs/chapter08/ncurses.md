::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gcc.md "GCC-16.1.0"){accesskey="p"}

    GCC-16.1.0

-   [Next](sed.md "Sed-4.10"){accesskey="n"}

    Sed-4.10

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-ncurses}8.31. Ncurses-6.6 {#ncurses-6.6 .sect1}

:::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Ncurses package contains libraries for terminal-independent handling of character screens.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [47 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.31.1. Installation of Ncurses {#installation-of-ncurses .sect2}

Prepare Ncurses for compilation:

``` userinput
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-shared           \
            --without-debug         \
            --without-normal        \
            --with-cxx-shared       \
            --enable-pc-files       \
            --with-pkg-config-libdir=/usr/lib/pkgconfig
```

::: variablelist
**The meaning of the new configure options:**

[*`--with-shared`*]{.term}

:   This makes Ncurses build and install shared C libraries.

[*`--without-normal`*]{.term}

:   This prevents Ncurses building and installing static C libraries.

[*`--without-debug`*]{.term}

:   This prevents Ncurses building and installing debug libraries.

[*`--with-cxx-shared`*]{.term}

:   This makes Ncurses build and install shared C++ bindings. It also prevents it building and installing static C++ bindings.

[*`--enable-pc-files`*]{.term}

:   This switch generates and installs .pc files for pkg-config.
:::

Compile the package:

``` userinput
make
```

This package has a test suite, but it can only be run after the package has been installed. The tests reside in the `test/`{.filename} directory. See the `README`{.filename} file in that directory for further details.

The installation of this package will overwrite `libncursesw.so.6.6`{.filename} in-place. It may crash the shell process which is using code and data from the library file. Install the package with `DESTDIR`{.literal}, and replace the library file correctly using the *`--remove-destination`* option of [**cp**]{.command} (the header `curses.h`{.filename} is also edited to ensure the wide-character ABI to be used as what we\'ve done in [Section 6.3, "Ncurses-6.6"](../chapter06/ncurses.md "6.3. Ncurses-6.6"){.xref}):

``` userinput
make DESTDIR=$PWD/dest install
sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i dest/usr/include/curses.h
cp --remove-destination -av dest/* /
```

Many applications still expect the linker to be able to find non-wide-character Ncurses libraries. Trick such applications into linking with wide-character libraries by means of symlinks (note that the `.so`{.filename} links are only safe with `curses.h`{.filename} edited to always use the wide-character ABI):

``` userinput
for lib in ncurses form panel menu ; do
    ln -sfv lib${lib}w.so /usr/lib/lib${lib}.so
    ln -sfv ${lib}w.pc    /usr/lib/pkgconfig/${lib}.pc
done
```

Finally, make sure that old applications that look for `-lcurses`{.filename} at build time are still buildable:

``` userinput
ln -sfv libncursesw.so /usr/lib/libcurses.so
```

If desired, install the Ncurses documentation:

``` userinput
cp -v -R doc -T /usr/share/doc/ncurses-6.6
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The instructions above don\'t create non-wide-character Ncurses libraries since no package installed by compiling from sources would link against them at runtime. However, the only known binary-only applications that link against non-wide-character Ncurses libraries require version 5. If you must have such libraries because of some binary-only application or to be compliant with LSB, build the package again with the following commands:

``` userinput
make distclean
./configure --prefix=/usr    \
            --with-shared    \
            --without-normal \
            --without-debug  \
            --without-cxx-binding \
            --with-abi-version=5
make sources libs
cp -av lib/lib*.so.5* /usr/lib
```
:::
:::::

::::::::: {.content lang="en"}
## []{#contents-ncurses}8.31.2. Contents of Ncurses {#contents-of-ncurses .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [captoinfo (link to tic), clear, infocmp, infotocap (link to tic), ncursesw6-config, reset (link to tset), tabs, tic, toe, tput, and tset]{.segbody}
:::

::: seg
**Installed libraries:** [libcurses.so (symlink), libform.so (symlink), libformw.so, libmenu.so (symlink), libmenuw.so, libncurses.so (symlink), libncursesw.so, libncurses++w.so, libpanel.so (symlink), and libpanelw.so,]{.segbody}
:::

::: seg
**Installed directories:** [/usr/share/tabset, /usr/share/terminfo, and /usr/share/doc/ncurses-6.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#captoinfo}[[**captoinfo**]{.command}]{.term}                 Converts a termcap description into a terminfo description
  []{#clear}[[**clear**]{.command}]{.term}                         Clears the screen, if possible
  []{#infocmp}[[**infocmp**]{.command}]{.term}                     Compares or prints out terminfo descriptions
  []{#infotocap}[[**infotocap**]{.command}]{.term}                 Converts a terminfo description into a termcap description
  []{#ncursesw6-config}[[**ncursesw6-config**]{.command}]{.term}   Provides configuration information for ncurses
  []{#reset}[[**reset**]{.command}]{.term}                         Reinitializes a terminal to its default values
  []{#tabs}[[**tabs**]{.command}]{.term}                           Clears and sets tab stops on a terminal
  []{#tic}[[**tic**]{.command}]{.term}                             The terminfo entry-description compiler that translates a terminfo file from source format into the binary format needed for the ncurses library routines \[A terminfo file contains information on the capabilities of a certain terminal.\]
  []{#toe}[[**toe**]{.command}]{.term}                             Lists all available terminal types, giving the primary name and description for each
  []{#tput}[[**tput**]{.command}]{.term}                           Makes the values of terminal-dependent capabilities available to the shell; it can also be used to reset or initialize a terminal or report its long name
  []{#tset}[[**tset**]{.command}]{.term}                           Can be used to initialize terminals
  []{#libncursesw}[`libncursesw`{.filename}]{.term}                Contains functions to display text in many complex ways on a terminal screen; a good example of the use of these functions is the menu displayed during the kernel\'s [**make menuconfig**]{.command}
  []{#libncurses__w}[`libncurses++w`{.filename}]{.term}            Contains C++ binding for other libraries in this package
  []{#libformw}[`libformw`{.filename}]{.term}                      Contains functions to implement forms
  []{#libmenuw}[`libmenuw`{.filename}]{.term}                      Contains functions to implement menus
  []{#libpanelw}[`libpanelw`{.filename}]{.term}                    Contains functions to implement panels
  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](gcc.md "GCC-16.1.0"){accesskey="p"}

    GCC-16.1.0

-   [Next](sed.md "Sed-4.10"){accesskey="n"}

    Sed-4.10

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
