<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cbindgen.md "Cbindgen-0.29.3")

    Cbindgen-0.29.3

-   [Next](cmake.md "CMake-4.3.3")

    CMake-4.3.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Clisp-2.49.95 {#clisp-2.49.95}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Clisp {#introduction-to-clisp}

<span class="application">GNU Clisp</span> is a Common Lisp implementation which includes an interpreter, compiler, debugger, and many extensions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package has not had a 'stable' release since 2010. The package here was created from the <a class="ulink" href="https://gitlab.com/gnu-clisp/clisp">upstream git repository</a> in order to enable it to be built with gcc-15. The most recent commit was May 2025.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/clisp/clisp-2.49.95.tar.xz">https://anduin.linuxfromscratch.org/BLFS/clisp/clisp-2.49.95.tar.xz</a>

-   Download MD5 sum: e3b3ba6b3432280e4d4a766404f02d6f

-   Download size: 7.1 MB

-   Estimated disk space required: 146 MB (with tests; 34 MB installed)

-   Estimated build time: 0.6 SBU (Using parallelism=4; add 0.3 SBU for tests)
</div>

### Clisp Dependencies

#### Recommended

<a class="xref" href="libsigsegv.md" title="libsigsegv-2.15">libsigsegv-2.15</a>

#### Optional

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a> and <a class="ulink" href="https://www.gnu.org/software/libffcall/">libffcall</a>
</div>

<div class="installation" lang="en">
## Installation of Clisp {#installation-of-clisp}

Install <span class="application">Clisp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

../configure --srcdir=../  \
             --prefix=/usr \
             --docdir=/usr/share/doc/clisp-2.49.95 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--docdir=/usr/share/doc/clisp-2.49.95`*: this switch forces the HTML documentation to be installed into a versioned directory.

<code class="option">--with-libffcall-prefix=/usr</code>: use this to tell <span class="command"><strong>configure</strong></span> that you have installed the optional <span class="package">libffcall</span> package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">clisp and clisp-link</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">various static libraries in <code class="filename">/usr/lib/clisp-2.49.95+/base/</code></span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/clisp-2.49.95+, /usr/share/doc/clisp-2.49.95, and /usr/share/emacs/site-lisp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------
  <a id="clisp-prog"></a><span class="command"><span class="term"><strong>clisp</strong></span></span>        is an ANSI Common Lisp compiler, interpreter, and debugger
  <a id="clisp-link"></a><span class="command"><span class="term"><strong>clisp-link</strong></span></span>   is used to link an external module to clisp
  ---------------------------------------------------- ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cbindgen.md "Cbindgen-0.29.3")

    Cbindgen-0.29.3

-   [Next](cmake.md "CMake-4.3.3")

    CMake-4.3.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
