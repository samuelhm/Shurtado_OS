::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](llvm.md "LLVM-22.1.0"){accesskey="p"}

    LLVM-22.1.0

-   [Next](luajit.md "luajit-20260213"){accesskey="n"}

    luajit-20260213

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lua}Lua-5.4.8 {#lua-5.4.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Lua {#introduction-to-lua .sect2}

[Lua]{.application} is a powerful light-weight programming language designed for extending applications. It is also frequently used as a general-purpose, stand-alone language. [Lua]{.application} is implemented as a small library of C functions, written in ANSI C, and compiles unmodified in all known platforms. The implementation goals are simplicity, efficiency, portability, and low embedding cost. The result is a fast language engine with small footprint, making it ideal in embedded systems too.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.lua.org/ftp/lua-5.4.8.tar.gz](https://www.lua.org/ftp/lua-5.4.8.tar.gz){.ulink}

-   Download MD5 sum: 81cf5265b8634967d8a7480d238168ce

-   Download size: 368 KB

-   Estimated disk space required: 3.7 MB (with Basic tests)

-   Estimated build time: less than 0.1 SBU (with Basic tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/lua-5.4.8-shared_library-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/lua-5.4.8-shared_library-1.patch){.ulink}

-   Optional Test Suite Download (HTTP): [https://www.lua.org/tests/lua-5.4.8-tests.tar.gz](https://www.lua.org/tests/lua-5.4.8-tests.tar.gz){.ulink}

-   Optional Test Suite Download MD5 sum: eafc6cebee86ce2e931b2c2f335de18e

-   Optional Test Suite Download size: 134 KB
:::
::::::

::: {.installation lang="en"}
## Installation of Lua {#installation-of-lua .sect2}

Some packages check for the [pkg-config]{.application} file for [Lua]{.application}, which is created with:

``` userinput
cat > lua.pc << "EOF"
V=5.4
R=5.4.8

prefix=/usr
INSTALL_BIN=${prefix}/bin
INSTALL_INC=${prefix}/include
INSTALL_LIB=${prefix}/lib
INSTALL_MAN=${prefix}/share/man/man1
INSTALL_LMOD=${prefix}/share/lua/${V}
INSTALL_CMOD=${prefix}/lib/lua/${V}
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: Lua
Description: An Extensible Extension Language
Version: ${R}
Requires:
Libs: -L${libdir} -llua -lm -ldl
Cflags: -I${includedir}
EOF
```

Install [Lua]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../lua-5.4.8-shared_library-1.patch &&
make linux
```

To test the results, issue: [**make test**]{.command}. [“[This will run the interpreter and print its version.]{.quote}”]{.quote} More comprehensive tests can be performed if you downloaded the "Test suite" tarball. Those tests need to be executed after the package is installed, thus we defer to the description below.

Now, as the `root`{.systemitem} user:

``` root
make INSTALL_TOP=/usr                \
     INSTALL_DATA="cp -d"            \
     INSTALL_MAN=/usr/share/man/man1 \
     TO_LIB="liblua.so liblua.so.5.4 liblua.so.5.4.8" \
     install &&

mkdir -pv                      /usr/share/doc/lua-5.4.8 &&
cp -v doc/*.{html,css,gif,png} /usr/share/doc/lua-5.4.8 &&

install -v -m644 -D lua.pc /usr/lib/pkgconfig/lua.pc
```

Here we describe only the "Basic tests". Untar the tarball and change to the `lua-5.4.8-tests`{.filename} directory, then issue [**lua -e "\_U=true" all.lua**]{.command}. If the tests finish without error, you will see a message containing the string "final OK".
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lua and luac]{.segbody}
:::

::: seg
**Installed Library:** [liblua.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,share}/lua and /usr/share/doc/lua-5.4.8]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- ------------------------------------------------
  []{#lua-prog}[[**lua**]{.command}]{.term}    is the standalone Lua interpreter
  []{#luac}[[**luac**]{.command}]{.term}       is the Lua compiler
  []{#liblua}[`liblua.so`{.filename}]{.term}   contains the [Lua]{.application} API functions
  -------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](llvm.md "LLVM-22.1.0"){accesskey="p"}

    LLVM-22.1.0

-   [Next](luajit.md "luajit-20260213"){accesskey="n"}

    luajit-20260213

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
