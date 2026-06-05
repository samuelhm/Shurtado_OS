<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gitserver.md "Running a Git Server")

    Running a Git Server

-   [Next](llvm.md "LLVM-22.1.0")

    LLVM-22.1.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Guile-3.0.11 {#guile-3.0.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Guile {#introduction-to-guile}

The <span class="application">Guile</span> package contains the GNU Project's extension language library. <span class="application">Guile</span> also contains a stand alone <span class="application">Scheme</span> interpreter.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/guile/guile-3.0.11.tar.xz">https://ftpmirror.gnu.org/guile/guile-3.0.11.tar.xz</a>

-   Download MD5 sum: f215f364387f6c9b008efaa11e8079dc

-   Download size: 5.6 MB

-   Estimated disk space required: 195 MB (add 3 MB for tests)

-   Estimated build time: 4.2 SBU (Using parallelism=4; add 0.3 SBU for tests)
</div>

### Guile Dependencies

#### Required

<a class="xref" href="gc.md" title="GC-8.2.12">GC-8.2.12</a> and <a class="xref" href="libunistring.md" title="libunistring-1.4.2">libunistring-1.4.2</a>

#### Optional

<a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a> and <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> (run-time only dependencies).
</div>

<div class="installation" lang="en">
## Installation of Guile {#installation-of-guile}

Install <span class="application">Guile</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/guile-3.0.11 &&
make      &&
make html &&

makeinfo --plaintext -o doc/r5rs/r5rs.txt doc/r5rs/r5rs.texi &&
makeinfo --plaintext -o doc/ref/guile.txt doc/ref/guile.texi
```

When running the test suite, first remove a failing test that halts the tests: <span class="command"><strong>rm test-suite/tests/srfi-207.test</strong></span>. Then to test the results, issue: <span class="command"><strong>./check-guile</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install      &&
make install-html &&

mkdir -p                       /usr/share/gdb/auto-load/usr/lib &&
mv /usr/lib/libguile-*-gdb.scm /usr/share/gdb/auto-load/usr/lib &&
mv /usr/share/doc/guile-3.0.11/{guile.html,ref} &&
mv /usr/share/doc/guile-3.0.11/r5rs{.html,}     &&

find examples -name "Makefile*" -delete         &&
cp -vR examples   /usr/share/doc/guile-3.0.11   &&

for DIRNAME in r5rs ref; do
  install -v -m644  doc/${DIRNAME}/*.txt \
                    /usr/share/doc/guile-3.0.11/${DIRNAME}
done &&
unset DIRNAME
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">guild, guile, guile-config, guile-snarf and guile-tools</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libguile-3.0.so and guile-readline.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/guile, /usr/lib/guile, /usr/share/doc/guile-3.0.11 and /usr/share/guile</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="guile-prog"></a><span class="command"><span class="term"><strong>guile</strong></span></span>            is a stand-alone Scheme interpreter for <span class="application">Guile</span>
  <a id="guile-config"></a><span class="command"><span class="term"><strong>guile-config</strong></span></span>   is a <span class="application">Guile</span> script which provides the information necessary to link your programs against the <span class="application">Guile</span> library, in much the same way PkgConfig does
  <a id="guile-snarf"></a><span class="command"><span class="term"><strong>guile-snarf</strong></span></span>     is a script to parse declarations in your <span class="application">C</span> code for <span class="application">Scheme</span> visible <span class="application">C</span> functions
  <a id="guild"></a><span class="command"><span class="term"><strong>guild</strong></span></span>                 is a wrapper program installed along with <span class="command"><strong>guile</strong></span>, which knows where a particular module is installed and calls it, passing its arguments to the program
  <a id="guile-tools"></a><span class="command"><span class="term"><strong>guile-tools</strong></span></span>     is a symlink to <span class="command"><strong>guild</strong></span>
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gitserver.md "Running a Git Server")

    Running a Git Server

-   [Next](llvm.md "LLVM-22.1.0")

    LLVM-22.1.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
