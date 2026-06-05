<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python-dependencies.md "Python Dependencies")

    Python Dependencies

-   [Next](rust.md "Rustc-1.96.0")

    Rustc-1.96.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Ruby-4.0.5 {#ruby-4.0.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ruby {#introduction-to-ruby}

The <span class="application">Ruby</span> package contains the <span class="application">Ruby</span> development environment. This is useful for object-oriented scripting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz">https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz</a>

-   Download MD5 sum: 89be441b4ece4bda98b1d8deca3c63d6

-   Download size: 17 MB

-   Estimated disk space required: 1.8 GB (with C API docs and tests)

-   Estimated build time: 1.7 SBU (with C API docs; using parallelism=4; add 0.5 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/ruby-4.0.5-openssl4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/ruby-4.0.5-openssl4_fixes-1.patch</a>
</div>

### Ruby Dependencies

#### Required

<a class="xref" href="libyaml.md" title="libyaml-0.2.5">libyaml-0.2.5</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>, <a class="xref" href="tk.md" title="Tk-8.6.18">Tk-8.6.18</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated) and <a class="ulink" href="https://dtrace.org/about/">DTrace</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Ruby {#installation-of-ruby}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have installed a package that provides a ruby gem, such as <a class="xref" href="asciidoctor.md" title="Asciidoctor-2.0.26">asciidoctor-2.0.26</a>, you must reinstall those packages when upgrading to a new minor version of Ruby.
</div>

First, apply a patch for compatibility with openssl4:

```bash
patch -Np1 -i ../ruby-4.0.5-openssl4_fixes-1.patch
```

Install <span class="application">Ruby</span> by running the following command:

```bash
./configure --prefix=/usr         \
            --disable-rpath       \
            --enable-shared       \
            --without-valgrind    \
            --without-baseruby    \
            ac_cv_func_qsort_r=no \
            --docdir=/usr/share/doc/ruby-4.0.5 &&
make
```

Optionally, build the CAPI documents by running the following commands:

```bash
make capi
```

To test the results, issue: <span class="command"><strong>make -k check</strong></span>. If the environment has variables related to proxy settings (<code class="envar">all_proxy</code>, <code class="envar">ALL_PROXY</code>, <code class="envar">http_proxy</code>, and etc.) set, the test suite will bail out early with messages like <code class="computeroutput">net/ftp is not found</code>. Make sure that you unset these variables for the test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
XDG_DATA_HOME=/tmp make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have Ruby-On-Rails applications installed and did an upgrade of <span class="application">Ruby</span> by installing this package, you might need to run an update there, too (as the <code class="systemitem">root</code> user):

```bash
cd /path/to/web/app
bundle update rake
```

and restart the webserver which serves the application.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-rpath`*: This switch disables embedding <code class="filename">/usr/lib</code> as a library search path into the <span class="command"><strong>ruby</strong></span> program. Doing so is not needed (because <code class="filename">/usr/lib</code> is a system library path) and it may cause the test suite running with the system <code class="filename">libruby.so</code> instead of the just built one when Ruby has been installed.

*`--enable-shared`*: This switch enables building the <code class="filename">libruby</code> shared library.

*`--without-baseruby`*: This switch prevents using the system <span class="command"><strong>ruby</strong></span> if it is already installed. The build system will use the newly built version instead.

*`ac_cv_func_qsort_r=no`*: This switch prevents using the <code class="function">qsort_r</code> function from Glibc. Ruby makes some aggressive optimization assuming some implementation details of the sorting algorithm, but the assumption is not true with the Glibc implementation. With this switch Ruby will use its own sort implementation instead.

<code class="option">--disable-install-doc</code>: This switch disables building and installing rdoc indexes and C API documents.

<code class="option">--disable-install-rdoc</code>: This switch disables building and installing rdoc indexes.

<code class="option">--disable-install-capi</code>: This switch disables building and installing C API documents.

<span class="command"><strong>XDG_DATA_HOME=/tmp ...</strong></span>: If <code class="envar">XDG_DATA_HOME</code> is not set, the installation process creates the <code class="filename">$HOME/.local/share</code> directory if it does not exist. Depending on the way root privileges have been acquired, this may create files owned by <code class="systemitem">root</code> in the user home directory, or in <code class="filename">/root</code>, which is not desirable either.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bundle, bundler, erb, gem, irb, racc, rake, rbs, rdbg, rdoc, ri, ruby, and typeprof</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libruby.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ruby-4.0.0, /usr/lib/ruby, /usr/share/doc/ruby-4.0.5 and /usr/share/ri</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  <a id="bundle"></a><span class="command"><span class="term"><strong>bundle</strong></span></span>     creates bundles of Ruby Gems
  <a id="bundler"></a><span class="command"><span class="term"><strong>bundler</strong></span></span>   manages an application's dependencies throughout its lifecycle
  <a id="erb"></a><span class="command"><span class="term"><strong>erb</strong></span></span>           is a command line front-end for eRuby, which provides a templating system for <span class="application">Ruby</span>
  <a id="gem"></a><span class="command"><span class="term"><strong>gem</strong></span></span>           is the command for RubyGems, which is a sophisticated package manager for <span class="application">Ruby</span>. This is similar to Python's 'pip' command
  <a id="irb"></a><span class="command"><span class="term"><strong>irb</strong></span></span>           is the interactive interface for <span class="application">Ruby</span>
  <a id="rake"></a><span class="command"><span class="term"><strong>rake</strong></span></span>         is a make-like build utility for <span class="application">Ruby</span>
  <a id="rdbg"></a><span class="command"><span class="term"><strong>rdbg</strong></span></span>         is an interactive debugger for <span class="application">Ruby</span>
  <a id="rdoc"></a><span class="command"><span class="term"><strong>rdoc</strong></span></span>         generates <span class="application">Ruby</span> documentation
  <a id="ri"></a><span class="command"><span class="term"><strong>ri</strong></span></span>             displays documentation from a database on <span class="application">Ruby</span> classes, modules, and methods
  <a id="ruby-prog"></a><span class="command"><span class="term"><strong>ruby</strong></span></span>    is an interpreted scripting language for quick and easy object-oriented programming
  <a id="libruby"></a><span class="term"><code class="filename">libruby.so</code></span>   contains the API functions required by <span class="application">Ruby</span>
  ---------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](python-dependencies.md "Python Dependencies")

    Python Dependencies

-   [Next](rust.md "Rustc-1.96.0")

    Rustc-1.96.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
