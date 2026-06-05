<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](svnserver.md "Running a Subversion Server")

    Running a Subversion Server

-   [Next](tk.md "Tk-8.6.18")

    Tk-8.6.18

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SWIG-4.4.1 {#swig-4.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SWIG {#introduction-to-swig}

<span class="application">SWIG</span> (Simplified Wrapper and Interface Generator) is a compiler that integrates <span class="application">C</span> and <span class="application">C++</span> with languages including <span class="application">Perl</span>, <span class="application">Python</span>, <span class="application">Tcl</span>, <span class="application">Ruby</span>, <span class="application">PHP</span>, <span class="application">Java</span>, <span class="application">JavaScript</span>, <span class="application">C#</span>, <span class="application">D</span>, <span class="application">Go</span>, <span class="application">Lua</span>, <span class="application">Octave</span>, <span class="application">R</span>, <span class="application">Racket</span>, <span class="application">Scilab</span>, <span class="application">Scheme</span>, and <span class="application">Ocaml</span>. <span class="application">SWIG</span> can also export its parse tree into <span class="application">Lisp</span> s-expressions and <span class="application">XML</span>.

<span class="application">SWIG</span> reads annotated <span class="application">C/C++</span> header files and creates wrapper code (glue code) in order to make the corresponding <span class="application">C/C++</span> libraries available to the listed languages, or to extend <span class="application">C/C++</span> programs with a scripting language.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/swig/swig-4.4.1.tar.gz">https://downloads.sourceforge.net/swig/swig-4.4.1.tar.gz</a>

-   Download MD5 sum: 775105851d39ab2fbf093ad743cb1e0a

-   Download size: 8.3 MB

-   Estimated disk space required: 93 MB (2.5 GB with tests)

-   Estimated build time: 0.2 SBU (add up to 50 SBU for tests depending on languages installed; both using parallelism=4)
</div>

### SWIG Dependencies

#### Optional

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> for tests, and any of the languages mentioned in the introduction, as run-time dependencies
</div>

<div class="installation" lang="en">
## Installation of SWIG {#installation-of-swig}

Install <span class="application">SWIG</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make JSCXX=g++ TCL_INCLUDE= -k check</strong></span>. The unsetting of the variable <code class="envar">TCL_INCLUDE</code> is necessary since it is not correctly set by <span class="emphasis"><em>configure</em></span>. The tests are only executed for the languages installed on your machine, so the disk space and SBU values given for the tests may vary, and should be considered as mere orders of magnitude. According to <span class="application">SWIG</span>'s documentation, the failure of some tests should not be considered harmful. The go tests are buggy and may generate a lot of meaningless output. 8 of the tests in the JavaScript suite are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
cp -v -R Doc -T /usr/share/doc/swig-4.4.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--without-<language></code>: allows disabling the building of tests and examples for \<language\>, but all the languages capabilities of <span class="application">SWIG</span> are always built.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">swig and ccache-swig</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/swig-4.4.1 and /usr/share/swig</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="swig-prog"></a><span class="command"><span class="term"><strong>swig</strong></span></span>            takes an interface file containing C/C++ declarations and SWIG special instructions, and generates the corresponding wrapper code needed to build extension modules
  <a id="ccache-swig"></a><span class="command"><span class="term"><strong>ccache-swig</strong></span></span>   is a compiler cache, which speeds up re-compilation of C/C++/SWIG code
  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](svnserver.md "Running a Subversion Server")

    Running a Subversion Server

-   [Next](tk.md "Tk-8.6.18")

    Tk-8.6.18

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
