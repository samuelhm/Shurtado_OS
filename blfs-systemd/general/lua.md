<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](llvm.md "LLVM-22.1.0")

    LLVM-22.1.0

-   [Next](luajit.md "luajit-20260213")

    luajit-20260213

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Lua-5.4.8 {#lua-5.4.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Lua {#introduction-to-lua}

<span class="application">Lua</span> is a powerful light-weight programming language designed for extending applications. It is also frequently used as a general-purpose, stand-alone language. <span class="application">Lua</span> is implemented as a small library of C functions, written in ANSI C, and compiles unmodified in all known platforms. The implementation goals are simplicity, efficiency, portability, and low embedding cost. The result is a fast language engine with small footprint, making it ideal in embedded systems too.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.lua.org/ftp/lua-5.4.8.tar.gz">https://www.lua.org/ftp/lua-5.4.8.tar.gz</a>

-   Download MD5 sum: 81cf5265b8634967d8a7480d238168ce

-   Download size: 368 KB

-   Estimated disk space required: 3.7 MB (with Basic tests)

-   Estimated build time: less than 0.1 SBU (with Basic tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/lua-5.4.8-shared_library-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/lua-5.4.8-shared_library-1.patch</a>

-   Optional Test Suite Download (HTTP): <a class="ulink" href="https://www.lua.org/tests/lua-5.4.8-tests.tar.gz">https://www.lua.org/tests/lua-5.4.8-tests.tar.gz</a>

-   Optional Test Suite Download MD5 sum: eafc6cebee86ce2e931b2c2f335de18e

-   Optional Test Suite Download size: 134 KB
</div>
</div>

<div class="installation" lang="en">
## Installation of Lua {#installation-of-lua}

Some packages check for the <span class="application">pkg-config</span> file for <span class="application">Lua</span>, which is created with:

```bash
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

Install <span class="application">Lua</span> by running the following commands:

```bash
patch -Np1 -i ../lua-5.4.8-shared_library-1.patch &&
make linux
```

To test the results, issue: <span class="command"><strong>make test</strong></span>. <span class="quote">“<span class="quote">This will run the interpreter and print its version.</span>”</span> More comprehensive tests can be performed if you downloaded the "Test suite" tarball. Those tests need to be executed after the package is installed, thus we defer to the description below.

Now, as the <code class="systemitem">root</code> user:

```bash
make INSTALL_TOP=/usr                \
     INSTALL_DATA="cp -d"            \
     INSTALL_MAN=/usr/share/man/man1 \
     TO_LIB="liblua.so liblua.so.5.4 liblua.so.5.4.8" \
     install &&

mkdir -pv                      /usr/share/doc/lua-5.4.8 &&
cp -v doc/*.{html,css,gif,png} /usr/share/doc/lua-5.4.8 &&

install -v -m644 -D lua.pc /usr/lib/pkgconfig/lua.pc
```

Here we describe only the "Basic tests". Untar the tarball and change to the <code class="filename">lua-5.4.8-tests</code> directory, then issue <span class="command"><strong>lua -e "\_U=true" all.lua</strong></span>. If the tests finish without error, you will see a message containing the string "final OK".
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lua and luac</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblua.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,share}/lua and /usr/share/doc/lua-5.4.8</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------- ------------------------------------------------
  <a id="lua-prog"></a><span class="command"><span class="term"><strong>lua</strong></span></span>    is the standalone Lua interpreter
  <a id="luac"></a><span class="command"><span class="term"><strong>luac</strong></span></span>       is the Lua compiler
  <a id="liblua"></a><span class="term"><code class="filename">liblua.so</code></span>   contains the <span class="application">Lua</span> API functions
  -------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](llvm.md "LLVM-22.1.0")

    LLVM-22.1.0

-   [Next](luajit.md "luajit-20260213")

    luajit-20260213

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
