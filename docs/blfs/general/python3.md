<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](php.md "PHP-8.5.6")

    PHP-8.5.6

-   [Next](python311.md "Python-3.11.1")

    Python-3.11.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Python-3.14.5 {#python-3.14.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Python 3 {#introduction-to-python-3}

The <span class="application">Python 3</span> package contains the <span class="application">Python</span> development environment. This is useful for object-oriented programming, writing scripts, prototyping large programs or developing entire applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">Python 3</span> was installed in LFS. The only reason to rebuild it here is if optional modules are needed, or to upgrade this package.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

If upgrading to a new Python-3 minor version (for example, from Python-3.13.x to Python-3.14.0), you will need to reinstall any Python modules you have installed. You should also reinstall packages that generate Python modules, including <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="opencv.md" title="opencv-4.13.0">opencv-4.13.0</a>, <a class="xref" href="../xsoft/fontforge.md" title="FontForge-20251009">FontForge-20251009</a>, <a class="xref" href="../gnome/gnome-tweaks.md" title="gnome-tweaks-49.0">gnome-tweaks-49.0</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, and <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (if swig is installed).

Before you upgrade, you can get a list of modules installed with <span class="command"><strong>pip3 list</strong></span>. The list may be incomplete as some Python modules are not installed with <span class="command"><strong>pip3</strong></span>, for example the <code class="literal">cracklib</code> module installed by <a class="xref" href="../postlfs/cracklib.md" title="CrackLib-2.10.3">CrackLib-2.10.3</a>. Use <span class="command"><strong>ls /usr/lib/python3.<em>`minor`</em>/site-packages</strong></span> for a comprehensive list.

The Python modules from LFS will also have to be reinstalled: <a class="ulink" href="../../../../lfs/view/systemd/chapter08/flit-core.md">flit-core</a>, <a class="ulink" href="../../../../lfs/view/systemd/chapter08/packaging.md">packaging</a>, <a class="ulink" href="../../../../lfs/view/systemd/chapter08/wheel.md">wheel</a>, <a class="ulink" href="../../../../lfs/view/systemd/chapter08/setuptools.md">setuptools</a>, <a class="ulink" href="../../../../lfs/view/systemd/chapter08/meson.md">meson</a>, <a class="ulink" href="../../../../lfs/view/systemd/chapter08/markupsafe.md">MarkupSafe</a>, and <a class="ulink" href="../../../../lfs/view/systemd/chapter08/jinja2.md">Jinja2</a>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.python.org/ftp/python/3.14.5/Python-3.14.5.tar.xz">https://www.python.org/ftp/python/3.14.5/Python-3.14.5.tar.xz</a>

-   Download MD5 sum: 16beaf44e56ed4b8254f625504b08a7f

-   Download size: 23 MB

-   Estimated disk space required: 335 MB (add 65 MB for tests)

-   Estimated build time: 2.2 SBU (add 1.0 SBU for tests; both using parallelism=4)
</div>

### Required Additional Download

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-security_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-security_fixes-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-openssl_4-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-openssl_4-1.patch</a>
</div>

### Additional Optional Download

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.python.org/ftp/python/doc/3.14.5/python-3.14.5-docs-html.tar.bz2">https://www.python.org/ftp/python/doc/3.14.5/python-3.14.5-docs-html.tar.bz2</a>

-   Download MD5 sum: b5e4e78aecd57de93837810d279598e2
</div>

### Python 3 Dependencies

#### Optional

<a class="xref" href="bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> (required for some tests), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://www.bytereef.org/mpdecimal/">libmpdec</a>

#### Optional (For Additional Modules)

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="tk.md" title="Tk-8.6.18">Tk-8.6.18</a>, and <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/Python3">https://wiki.linuxfromscratch.org/blfs/wiki/Python3</a>
</div>

<div class="installation" lang="en">
## Installation of Python 3 {#installation-of-python-3}

First, apply a patch consisting of security fixes from upstream:

```bash
patch -Np1 -i ../Python-3.14.5-security_fixes-1.patch
```

Next, apply a patch adapting this package to OpenSSL-4:

```bash
patch -Np1 -i ../Python-3.14.5-openssl_4-1.patch
```

Install <span class="application">Python 3</span> by running the following commands:

```bash
./configure --prefix=/usr              \
            --enable-shared            \
            --with-system-expat        \
            --enable-optimizations     \
            --without-static-libpython &&
make
```

Some tests are known to occasionally hang indefinitely. So to test the results, run the test suite but set a 2-minute time limit for each test case:

```bash
make test TESTOPTS="--timeout 120"
```

For a relatively slow system you may need to increase the time limit and 1 SBU (measured when building Binutils pass 1 with one CPU core) should be enough. Some tests are flaky, so the test suite will automatically re-run failed tests. If a test failed but then passed when re-run, it should be considered as passed.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If upgrading and the documentation has been downloaded, optionally install it as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /usr/share/doc/python-3.14.5/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.14.5/html \
    -xvf ../python-3.14.5-docs-html.tar.bz2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>CXX="/usr/bin/g++" ./configure ...</strong></span>: Avoid an annoying message during configuration.

*`--with-system-expat`*: This switch enables linking against the system version of <span class="application">Expat</span>.

*`--enable-optimizations`*: This switch enables stable, but expensive, optimizations.

<code class="option">--with-lto</code>: This optional switch enables thick Link Time Optimization. Unusually, it creates a much larger <code class="filename">/usr/lib/python3.14/config-3.14-<arch>-linux-gnu/libpython3.14.a</code> with a small increase in the time to compile <span class="application">Python</span>. Run-time results do not appear to show any benefit from doing this.
</div>

<div class="configuration" lang="en">
## Configuring Python 3 {#configuring-python-3}

In order for <span class="command"><strong>python3</strong></span> to find the installed documentation, create the following version independent symlink:

```bash
ln -svfn python-3.14.5 /usr/share/doc/python-3
```

and add the following environment variable to the individual user's or system's profile:

```bash
export PYTHONDOCS=/usr/share/doc/python-3/html
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">idle3 (symlink) and idle3.14, pip3 and pip3.14, pydoc3 (symlink) and pydoc3.14, python3 (symlink) and python3.14, and python3-config (symlink) and python3.14-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpython3.14.so and libpython3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/python3.14, /usr/lib/python3.14, and /usr/share/doc/python-3.14.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="idle3"></a><span class="command"><span class="term"><strong>idle3</strong></span></span>             is a wrapper script that opens a <span class="application">Python</span> aware GUI editor. For this script to run, you must have installed <span class="application">Tk</span> before Python so that the Tkinter Python module is built
  <a id="pydoc3"></a><span class="command"><span class="term"><strong>pydoc3</strong></span></span>           is the <span class="application">Python</span> documentation tool
  <a id="python3-prog"></a><span class="command"><span class="term"><strong>python3</strong></span></span>    is an interpreted, interactive, object-oriented programming language
  <a id="python-ver"></a><span class="command"><span class="term"><strong>python3.14</strong></span></span>   is a version-specific name for the <span class="command"><strong>python</strong></span> program
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](php.md "PHP-8.5.6")

    PHP-8.5.6

-   [Next](python311.md "Python-3.11.1")

    Python-3.11.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
