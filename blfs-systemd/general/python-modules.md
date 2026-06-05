<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python311.md "Python-3.11.1")

    Python-3.11.1

-   [Next](python-dependencies.md "Python Dependencies")

    Python Dependencies

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Python Modules {#python-modules}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Python Modules {#introduction-to-python-modules}

The <span class="application">Python</span> module packages add useful objects to the <span class="application">Python</span> language. Modules utilized by packages throughout BLFS are listed here, along with their dependencies.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

In BLFS, we normally build and install Python 3 modules with <span class="command"><strong>pip3</strong></span>. Please take care that the <span class="command"><strong>pip3 install</strong></span> commands in the book should be run as <code class="systemitem">root</code> unless it's for a Python virtual environment. Running <span class="command"><strong>pip3 install</strong></span> as a non-<code class="systemitem">root</code> user may seem to work fine, but it will cause the installed module to be inaccessible by other users.

<span class="command"><strong>pip3 install</strong></span> will not reinstall an already installed module by default. For using the <span class="command"><strong>pip3 install</strong></span> command to upgrade a module (for example, from meson-0.61.3 to meson-0.62.0), insert *`--upgrade`* into the command line. If it's really necessary to downgrade a module or reinstall the same version for some reason, insert *`--force-reinstall`* into the command line.

If you have installed <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before and have copied files from /etc/profile.d to a new system, you must install make-ca first prior to installing any Python modules from this page.
</div>

<div class="itemizedlist">
-   <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>

-   <a class="xref" href="python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>

-   <a class="xref" href="python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a>

-   <a class="xref" href="python-modules.md#cachecontrol" title="cachecontrol-0.14.4">cachecontrol-0.14.4</a>

-   <a class="xref" href="python-modules.md#cssselect" title="CSSSelect-1.4.0">cssselect-1.4.0</a>

-   <a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a>

-   <a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a>

-   <a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a>

-   <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>

-   <a class="xref" href="python-modules.md#doxypypy" title="Doxypypy-0.8.8.7">doxypypy-0.8.8.7</a>

-   <a class="xref" href="python-modules.md#doxyqml" title="Doxyqml-0.5.3">doxyqml-0.5.3</a>

-   <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>

-   <a class="xref" href="python-modules.md#html5lib" title="html5lib-1.1">html5lib-1.1</a>

-   <a class="xref" href="python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>

-   <a class="xref" href="python-modules.md#Mako" title="Mako-1.3.12">Mako-1.3.12</a>

-   <a class="xref" href="python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a>

-   <a class="xref" href="python-modules.md#psutil" title="psutil-7.2.2">psutil-7.2.2</a>

-   <a class="xref" href="python-modules.md#py3c" title="Py3c-1.4">Py3c-1.4</a>

-   <a class="xref" href="python-modules.md#pyatspi2" title="PyAtSpi2-2.58.2">PyAtSpi2-2.58.2</a>

-   <a class="xref" href="python-modules.md#pycairo" title="PyCairo-1.29.0">PyCairo-1.29.0</a>

-   <a class="xref" href="python-modules.md#pygdbmi" title="pygdbmi-0.11.0.0">pygdbmi-0.11.0.0</a>

-   <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>

-   <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

-   <a class="xref" href="python-modules.md#pyparsing" title="pyparsing-3.3.2">pyparsing-3.3.2</a>

-   <a class="xref" href="python-modules.md#pyserial" title="pySerial-3.5">pySerial-3.5</a>

-   <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>

-   <a class="xref" href="python-modules.md#pyxdg" title="PyXDG-0.28">PyXDG-0.28</a>

-   <a class="xref" href="python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a>

-   <a class="xref" href="python-modules.md#recommonmark" title="Recommonmark-0.7.1">recommonmark-0.7.1</a>

-   <a class="xref" href="python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>

-   <a class="xref" href="python-modules.md#sentry-sdk" title="sentry-sdk-2.53.0">sentry-sdk-2.53.0</a>

-   <a class="xref" href="python-modules.md#scour" title="Scour-0.38.2">Scour-0.38.2</a>

-   <a class="xref" href="python-modules.md#six" title="six-1.17.0">six-1.17.0</a>

-   <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>

-   <a class="xref" href="python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>
</div>
</div>

<div class="sect2" lang="en">
## Asciidoc-10.2.1 {#asciidoc-10.2.1}

<div class="package" lang="en">
### Introduction to Asciidoc Module {#introduction-to-asciidoc-module}

The <span class="application">Asciidoc</span> package is a text document format for writing notes, documentation, articles, books, ebooks, slideshows, web pages, man pages and blogs. AsciiDoc files can be translated to many formats including HTML, PDF, EPUB, and man page.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/a/asciidoc/asciidoc-10.2.1.tar.gz">https://files.pythonhosted.org/packages/source/a/asciidoc/asciidoc-10.2.1.tar.gz</a>

-   Download MD5 sum: 460824075b51381a4b5f478c60a18165

-   Download size: 228 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Asciidoc Dependencies

##### Optional (runtime)

<a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>, <a class="ulink" href="https://sourceforge.net/projects/dblatex/">dblatex</a>, and <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a>
</div>

<div class="installation" lang="en">
### Installation of Asciidoc {#installation-of-asciidoc}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user asciidoc
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">a2x and asciidoc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/asciidoc and /usr/lib/python3.14/site-packages/asciidoc-10.2.1.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="a2x"></a><span class="command"><span class="term"><strong>a2x</strong></span></span>                  is a toolchain manager for AsciiDoc (converts Asciidoc text files to other file formats)
  <a id="asciidoc-prog"></a><span class="command"><span class="term"><strong>asciidoc</strong></span></span>   converts an AsciiDoc text file to HTML or DocBook
  ----------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## blueprint-compiler-0.20.4 {#blueprint-compiler-0.20.4}

<div class="package" lang="en">
### Introduction to blueprint-compiler {#introduction-to-blueprint-compiler}

The <span class="application">blueprint-compiler</span> package contains a compiler for a markup language for GTK user interfaces. This is mostly used with GNOME applications at the moment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/blueprint-compiler/0.20/blueprint-compiler-0.20.4.tar.xz">https://download.gnome.org/sources/blueprint-compiler/0.20/blueprint-compiler-0.20.4.tar.xz</a>

-   Download MD5 sum: 8d7a50f71481ae03049969fe2da79379

-   Download size: 144 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### blueprint-compiler Dependencies

##### Required

<a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

##### Optional (required to run the tests)

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>

##### Optional (required to build the documentation)

<a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>
</div>

<div class="installation" lang="en">
### Installation of blueprint-compiler {#installation-of-blueprint-compiler}

Install <span class="application">blueprint-compiler</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests issue: <span class="command"><strong>ninja test</strong></span>. The tests need to be run in a graphical environment, and you must have <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> installed.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-1}

<code class="option">-D docs=true</code>: Use this option if you have <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> installed and you want to build the documentation.
</div>

<div class="content" lang="en">
### Contents {#contents-1}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">blueprint-compiler</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/blueprint-compiler</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  ------------------------------------------------------------------------- ----------------------------------------------
  <a id="blueprint-compiler-prog"></a><span class="command"><span class="term"><strong>blueprint-compiler</strong></span></span>   compiles blueprints into GTK user interfaces
  ------------------------------------------------------------------------- ----------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## build-1.5.0 {#build-1.5.0}

<div class="package" lang="en">
### Introduction to build {#introduction-to-build}

<span class="application">build</span> is a Python build frontend implementing the PEP-517 resolution.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/b/build/build-1.5.0.tar.gz">https://files.pythonhosted.org/packages/source/b/build/build-1.5.0.tar.gz</a>

-   Download MD5 sum: acb7ec7d66dc9b44ec25ae8a9c1922fd

-   Download size: 88 KB

-   Estimated disk space required: 1.1 MB (add 128 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.6 SBU (with tests)
</div>

#### build Dependencies

##### Required

<a class="xref" href="python-dependencies.md#pyproject-hooks" title="Pyproject_Hooks-1.2.0">pyproject_hooks-1.2.0</a>

##### Optional (for tests)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/filelock/">filelock</a>, <a class="ulink" href="https://pypi.org/project/pytest-cov/">pytest-cov</a>, <a class="ulink" href="https://pypi.org/project/pytest-mock/">pytest-mock</a>, <a class="ulink" href="https://pypi.org/project/pytest-rerunfailures/">pytest-rerunfailures</a>, <a class="ulink" href="https://pypi.org/project/pytest-xdist/">pytest-xdist</a>, <a class="ulink" href="https://pypi.org/project/uv/">uv</a>, and <a class="ulink" href="https://pypi.org/project/virtualenv/">virtualenv</a>
</div>

<div class="installation" lang="en">
### Installation of build {#installation-of-build}

Build the package with:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user build
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed but the other optional dependencies are not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install --group test                      &&
python3 -m pytest
deactivate
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-2}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-2}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pyproject-build</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/build and /usr/lib/python3.14/site-packages/build-1.5.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------
  <a id="pyproject-build"></a><span class="command"><span class="term"><strong>pyproject-build</strong></span></span>   is a simple <span class="application">Python</span> build frontend
  -------------------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## cachecontrol-0.14.4 {#cachecontrol-0.14.4}

<div class="package" lang="en">
### Introduction to cachecontrol Module {#introduction-to-cachecontrol-module}

<span class="application">CacheControl</span> is a port of the caching algorithms in httplib2 for use with requests session object. It was written because httplib2's better support for caching is often mitigated by its lack of thread safety. The same is true of requests in terms of caching.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/psf/cachecontrol/archive/v0.14.4/cachecontrol-0.14.4.tar.gz">https://github.com/psf/cachecontrol/archive/v0.14.4/cachecontrol-0.14.4.tar.gz</a>

-   Download MD5 sum: 05c8e0cb39b405094ae1d6cdea337521

-   Download size: 112 KB

-   Estimated disk space required: 348 KB (add 97 MB for the tests)

-   Estimated build time: less than 0.1 SBU
</div>

#### CacheControl Dependencies

##### Required

<a class="xref" href="python-dependencies.md#msgpack" title="Msgpack-1.1.2">msgpack-1.1.2</a>, <a class="xref" href="python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>, and <a class="xref" href="python-dependencies.md#uv_build" title="uv_build-0.10.2">uv_build-0.10.2</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="ulink" href="https://pypi.org/project/redis/">redis</a>, <a class="ulink" href="https://pypi.org/project/filelock/">filelock</a>, <a class="ulink" href="https://pypi.org/project/CherryPy/">CherryPy</a>, <a class="ulink" href="https://pypi.org/project/cheroot/">cheroot</a>, <a class="ulink" href="https://pypi.org/project/codespell/">codespell</a>, <a class="ulink" href="https://pypi.org/project/furo/">furo</a>, <a class="ulink" href="https://pypi.org/project/mypy/">mypy</a>, <a class="ulink" href="https://pypi.org/project/pytest-cov/">pytest-cov</a>, <a class="ulink" href="https://pypi.org/project/ruff/">ruff</a>, <a class="ulink" href="https://pypi.org/project/sphinx-copybutton/">sphinx-copybutton</a>, <a class="ulink" href="https://pypi.org/project/types-redis/">types-redis</a>, and <a class="ulink" href="https://pypi.org/project/types-requests/">types-requests</a>
</div>

<div class="installation" lang="en">
### Installation of CacheControl {#installation-of-cachecontrol}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user cachecontrol
```

To run the tests, issue:

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install 'cachecontrol[dev]'   &&
testenv/bin/python3 -m pytest
```

pytest may output a warning about an unraisable exception after the tests are finished. This is expected due to the version of the 'cheroot' module that the tests download.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-3}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">doesitcache</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/CacheControl-0.14.4.dist-info and /usr/lib/python3.14/site-packages/cachecontrol</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ------------------------------------------------------ -----------------------------------------
  <a id="doesitcache"></a><span class="command"><span class="term"><strong>doesitcache</strong></span></span>   is an undocumented command line script.
  ------------------------------------------------------ -----------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## CSSSelect-1.4.0 {#cssselect-1.4.0}

<div class="package" lang="en">
### Introduction to CSSSelect Module {#introduction-to-cssselect-module}

<span class="application">CSSSelect</span> provides CSS selectors for Python.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/c/cssselect/cssselect-1.4.0.tar.gz">https://files.pythonhosted.org/packages/source/c/cssselect/cssselect-1.4.0.tar.gz</a>

-   Download MD5 sum: 3aca561a6fe4e51d2993e0a0f604e30a

-   Download size: 40 KB

-   Estimated disk space required: 1.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### CSSSelect Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of CSSSelect {#installation-of-cssselect}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user cssselect
```

To test the installation issue <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-4}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-4}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/cssselect</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Cython-3.2.5 {#cython-3.2.5}

<div class="package" lang="en">
### Introduction to Cython Module {#introduction-to-cython-module}

The <span class="application">Cython</span> package provides a compiler for writing C extensions for the Python language.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/cython/cython/releases/download/3.2.5/cython-3.2.5.tar.gz">https://github.com/cython/cython/releases/download/3.2.5/cython-3.2.5.tar.gz</a>

-   Download MD5 sum: 1329cfee4ab6b3ec44ee7cd15418d499

-   Download size: 3.2 MB

-   Estimated disk space required: 184 MB

-   Estimated build time: 1.0 SBU
</div>

### Cython Dependencies

#### Optional (for tests)

<a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Cython {#installation-of-cython}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Cython
```

This package does come with a test suite, but running it takes a long time (over 40 SBUs). The test suite will print data to the screen though to note to the user that it is still running. To run the tests, issue: <span class="command"><strong>python3 runtests.py</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-5}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-5}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cygdb, cython, and cythonize</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/Cython, /usr/lib/python3.14/site-packages/Cython-3.2.5.dist-info, and /usr/lib/python3.14/site-packages/pyximport</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  <a id="cygdb"></a><span class="command"><span class="term"><strong>cygdb</strong></span></span>           is the Cython debugger
  <a id="cython-prog"></a><span class="command"><span class="term"><strong>cython</strong></span></span>    is a compiler for code written in the Cython language. It outputs a C/C++ program which can be compiled with a C/C++ compiler
  <a id="cythonize"></a><span class="command"><span class="term"><strong>cythonize</strong></span></span>   is a compiler for code written in the Cython language. It outputs an extension module which is directly importable from Python
  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## dbusmock-0.38.1 {#dbusmock-0.38.1}

<div class="package" lang="en">
### Introduction to dbusmock {#introduction-to-dbusmock}

<span class="application">dbusmock</span> is a Python library useful for writing tests for software which talks to D-Bus services.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/python-dbusmock/python_dbusmock-0.38.1.tar.gz">https://files.pythonhosted.org/packages/source/p/python-dbusmock/python_dbusmock-0.38.1.tar.gz</a>

-   Download MD5 sum: e90b10618f5a0c7f5dcc4d4a56c6ce07

-   Download size: 108 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### dbusmock Dependencies

##### Required

<a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a>

##### Optional

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (required to run the test suite), <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (required to run the test suite), <a class="xref" href="bluez.md" title="BlueZ-5.86">BlueZ-5.86</a> (optional for the test suite), and <a class="xref" href="upower.md" title="UPower-1.91.2">UPower-1.91.2</a> (optional for the test suite; if not installed one test will fail)
</div>

<div class="installation" lang="en">
### Installation of dbusmock {#installation-of-dbusmock}

Build the package with:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user python-dbusmock
```

To test the results, issue: <span class="command"><strong>LC_ALL=C pytest</strong></span>. Several warnings about upcoming API changes in later versions of Python are printed during the tests.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-6}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-6}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/dbusmock and /usr/lib/python3.14/site-packages/python_dbusmock-0.38.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## D-Bus Python-1.4.0 {#d-bus-python-1.4.0}

<div class="package" lang="en">
### Introduction to D-Bus Python Module {#introduction-to-d-bus-python-module}

<span class="application">D-Bus Python</span> provides <span class="application">Python</span> bindings to the <span class="application">D-Bus</span> API interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.4.0.tar.xz">https://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.4.0.tar.xz</a>

-   Download MD5 sum: edca335d1c80f338e3255455eb876b72

-   Download size: 168 KB

-   Estimated disk space required: 1.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### D-Bus Python Dependencies

##### Required

<a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="python-dependencies.md#meson_python" title="Meson_python-0.19.0">meson_python-0.19.0</a>, and <a class="xref" href="patchelf.md" title="Patchelf-0.18.0">patchelf-0.18.0</a>

##### Optional

<a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for tests)
</div>

<div class="installation" lang="en">
### Installation of D-Bus Python {#installation-of-d-bus-python}

Build the D-Bus Python module by running the following command:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now install the module as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user dbus-python
```

To test the result, issue: <span class="command"><strong>DBUS_TOP_SRCDIR=\$PWD PYTHON=python3 dbus-run-session test/run-test.sh</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-7}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-7}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/dbus and /usr/lib/python3.14/site-packages/dbus_python-1.4.0.egg-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## docutils-0.23 {#docutils-0.23}

<div class="package" lang="en">
### Introduction to docutils {#introduction-to-docutils}

<span class="application">docutils</span> is a set of <span class="application">Python</span> modules and programs for processing plaintext docs into formats such as HTML, XML, or LaTeX.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/d/docutils/docutils-0.23.tar.gz">https://files.pythonhosted.org/packages/source/d/docutils/docutils-0.23.tar.gz</a>

-   Download MD5 sum: 39d10acfd1fc81b87f5de84418b88be9

-   Download size: 2.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of docutils {#installation-of-docutils}

First, remove some files installed in a previous version that are no longer valid. As the <code class="systemitem">root</code> user:

```bash
for f in /usr/bin/rst*.py; do
  rm -fv /usr/bin/$(basename $f .py)
done
```

To build the <span class="application">Python 3</span> applications, run the following command:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the <span class="application">Python</span> applications run the following as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user docutils
```

To test the installation, issue: <span class="command"><strong>test/alltests.py</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-8}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-8}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">docutils, rst2html4, rst2html5, rst2html, rst2latex, rst2man, rst2odt, rst2pseudoxml, rst2s5, rst2xetex, and rst2xml</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/docutils{,-0.23.dist-info}</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  <a id="docutils-prog"></a><span class="command"><span class="term"><strong>docutils</strong></span></span>                  converts documents into various formats
  <a id="rst2html"></a><span class="command"><span class="term"><strong>rst2html</strong></span></span>                       generates (X)HTML documents from standalone reStructuredText sources
  <a id="rst2html4"></a><span class="command"><span class="term"><strong>rst2html4</strong></span></span>                     generates (X)HTML documents from standalone reStructuredText sources
  <a id="rst2html5"></a><span class="command"><span class="term"><strong>rst2html5</strong></span></span>                     generates HTML5 documents from standalone reStructuredText sources
  <a id="rst2latex"></a><span class="command"><span class="term"><strong>rst2latex</strong></span></span>                     generates LaTeX documents from standalone reStructuredText sources
  <a id="rst2man"></a><span class="command"><span class="term"><strong>rst2man</strong></span></span>                         generates plain unix manual documents from standalone reStructuredText sources
  <a id="rst2odt"></a><span class="command"><span class="term"><strong>rst2odt</strong></span></span>                         generates OpenDocument/OpenOffice/ODF documents from standalone reStructuredText sources
  <a id="rst2odt_prepstyles"></a><span class="command"><span class="term"><strong>rst2odt_prepstyles</strong></span></span>   Fix a word-processor-generated styles.odt for odtwriter use
  <a id="rst2pseudoxml"></a><span class="command"><span class="term"><strong>rst2pseudoxml</strong></span></span>             generates pseudo-XML from standalone reStructuredText sources (for testing purposes)
  <a id="rst2s5"></a><span class="command"><span class="term"><strong>rst2s5</strong></span></span>                           generates S5 (X)HTML slideshow from standalone reStructuredText sources
  <a id="rst2xetex"></a><span class="command"><span class="term"><strong>rst2xetex</strong></span></span>                     generates LaTeX documents from standalone reStructuredText sources for compilation with the Unicode-aware TeX variants XeLaTeX or LuaLaTeX
  <a id="rst2xml"></a><span class="command"><span class="term"><strong>rst2xml</strong></span></span>                         generates Docutils-native XML from standalone reStructuredText sources
  <a id="rstpep2html"></a><span class="command"><span class="term"><strong>rstpep2html</strong></span></span>                 generates (X)HTML from reStructuredText-format PEP files
  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Doxypypy-0.8.8.7 {#doxypypy-0.8.8.7}

<div class="package" lang="en">
### Introduction to Doxypypy Module {#introduction-to-doxypypy-module}

The <span class="application">Doxypypy</span> package is a doxygen filter for python.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/d/doxypypy/doxypypy-0.8.8.7.tar.gz">https://files.pythonhosted.org/packages/source/d/doxypypy/doxypypy-0.8.8.7.tar.gz</a>

-   Download MD5 sum: 5773d0a7882df900cbda8ee5107e1ced

-   Download size: 45 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Doxypypy Dependencies

##### Required

<a class="xref" href="python-dependencies.md#chardet" title="Chardet-5.2.0">chardet-5.2.0</a> and <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (at run time)
</div>

<div class="installation" lang="en">
### Installation of Doxypypy {#installation-of-doxypypy}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user doxypypy
```

This package does not come with a working test suite.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-9}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-9}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">doxypypy</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/doxypypy and /usr/lib/python3.14/site-packages/doxypypy-0.8.8.7.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  <a id="doxypypy-prog"></a><span class="command"><span class="term"><strong>doxypypy</strong></span></span>   filters Python code for use with Doxygen, using a syntax-aware approach.
  ----------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Doxyqml-0.5.3 {#doxyqml-0.5.3}

<div class="package" lang="en">
### Introduction to Doxyqml Module {#introduction-to-doxyqml-module}

The <span class="application">Doxyqml</span> package allows using Doxygen to document QML classes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/d/doxyqml/doxyqml-0.5.3.tar.gz">https://files.pythonhosted.org/packages/source/d/doxyqml/doxyqml-0.5.3.tar.gz</a>

-   Download MD5 sum: 3d394a0d896721e27beb62bf032f7f43

-   Download size: 28 KB

-   Estimated disk space required: 652 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Doxyqml Dependencies

##### Required (Run Time)

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Doxyqml {#installation-of-doxyqml}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user doxyqml
```

To test the installation, issue:

```bash
python3 tests/functional/tests.py &&
python3 tests/unit/tests.py
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-10}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-10}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">doxyqml</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/doxyqml and /usr/lib/python3.14/site-packages/doxyqml-0.5.3.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  --------------------------------------------------- ------------------------------------------
  <a id="doxyqml-prog"></a><span class="command"><span class="term"><strong>doxyqml</strong></span></span>   is a Doxygen input filter for QML files.
  --------------------------------------------------- ------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Gi-DocGen-2026.1 {#gi-docgen-2026.1}

<div class="package" lang="en">
### Introduction to Gi-DocGen Module {#introduction-to-gi-docgen-module}

<span class="application">Gi-DocGen</span> is a document generator for GObject-based libraries. GObject is the base type system of the GNOME project. Gi-DocGen reuses the introspection data generated by GObject-based libraries to generate the API reference of these libraries, as well as other ancillary documentation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/g/gi-docgen/gi_docgen-2026.1.tar.gz">https://files.pythonhosted.org/packages/source/g/gi-docgen/gi_docgen-2026.1.tar.gz</a>

-   Download MD5 sum: 9ef6ef3a1224a4ceb809a59bf1620f58

-   Download size: 2.5 MB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Gi-DocGen Dependencies

##### Required

<a class="xref" href="python-dependencies.md#markdown" title="Markdown-3.10.2">Markdown-3.10.2</a>, <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, and <a class="xref" href="python-dependencies.md#typogrify" title="Typogrify-2.1.0">typogrify-2.1.0</a>

##### Optional

<a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (runtime, for visualizing class hierarchy graphs) and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for testing)
</div>

<div class="installation" lang="en">
### Installation of gi-docgen {#installation-of-gi-docgen}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user gi-docgen
```

To test the installation, issue <span class="command"><strong>pytest</strong></span>. One test in <code class="filename">tests/test_utils.py</code> will fail if the optional dependency <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> is not installed.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-11}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-11}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gi-docgen</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/gidocgen and /usr/lib/python3.14/site-packages/gi_docgen-2026.1.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------
  <a id="gi-docgen-prog"></a><span class="command"><span class="term"><strong>gi-docgen</strong></span></span>   manages documentation for libgobject based libraries.
  ------------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## html5lib-1.1 {#html5lib-1.1}

<div class="package" lang="en">
### Introduction to html5lib Module {#introduction-to-html5lib-module}

<span class="application">html5lib</span> provides a pure-python library for parsing HTML. It is designed to conform to the WHATWG HTML specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/h/html5lib/html5lib-1.1.tar.gz">https://files.pythonhosted.org/packages/source/h/html5lib/html5lib-1.1.tar.gz</a>

-   Download MD5 sum: 6748742e2ec4cb99287a6bc82bcfe2b0

-   Download size: 268 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/html5lib-1.1-python_3.14_buildfix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/html5lib-1.1-python_3.14_buildfix-1.patch</a>
</div>

#### html5lib Dependencies

##### Required

<a class="xref" href="python-modules.md#six" title="six-1.17.0">six-1.17.0</a> and <a class="xref" href="python-dependencies.md#webencodings" title="webencodings-0.5.1">webencodings-0.5.1</a>
</div>

<div class="installation" lang="en">
### Installation of html5lib {#installation-of-html5lib}

First, fix a build failure with Python 3.14 caused by the removal of several methods from the 'ast' module:

```bash
patch -Np1 -i ../html5lib-1.1-python_3.14_buildfix-1.patch
```

Next, fix a build failure with setuptools-82.0.0:

```bash
sed -i 's/from pkg_resources import/from packaging.version import parse as/' setup.py &&
sed -i 's/import pkg_resources/pkg_resources = None/' setup.py
```

To build the <span class="application">Python 3</span> module, run:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, issue the following command as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user html5lib
```

This package does have a test suite, but it is not functional due to depending on several hardcoded versions of packages that are only usable with Python 3.6.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-12}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-12}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/html5lib and /usr/lib/python3.14/site-packages/html5lib-1.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## lxml-6.1.1 {#lxml-6.1.1}

<div class="package" lang="en">
### Introduction to lxml Module {#introduction-to-lxml-module}

<span class="application">lxml</span> provides <span class="application">Python</span> bindings for <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/l/lxml/lxml-6.1.1.tar.gz">https://files.pythonhosted.org/packages/source/l/lxml/lxml-6.1.1.tar.gz</a>

-   Download MD5 sum: 6bbd3674ecba1340b08c9180afef1829

-   Download size: 4.1 MB

-   Estimated disk space required: 134 MB

-   Estimated build time: 0.8 SBU
</div>

#### lxml Dependencies

##### Required

<a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
### Installation of lxml {#installation-of-lxml}

To build the <span class="application">Python 3</span> module, run:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, issue the following command as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user lxml
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-13}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-13}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/lxml and /usr/lib/python3.14/site-packages/lxml-6.1.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Mako-1.3.12 {#mako-1.3.12}

<div class="package" lang="en">
### Introduction to Mako Module {#introduction-to-mako-module}

<span class="application">Mako</span> is a <span class="application">Python</span> module that implements hyperfast and lightweight templating for the <span class="application">Python</span> platform.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/M/Mako/mako-1.3.12.tar.gz">https://files.pythonhosted.org/packages/source/M/Mako/mako-1.3.12.tar.gz</a>

-   Download MD5 sum: 92390c7e8897e69da67a593a96e88c71

-   Download size: 392 KB

-   Estimated disk space required: 5.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tarball name has changed from Mako to mako, but still installs the module as Mako.
</div>

#### Mako Dependencies

##### Optional (for Testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Mako {#installation-of-mako}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the module as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Mako
```

To test the installation, issue <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-14}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-14}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mako-render</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/mako and /usr/lib/python3.14/site-packages/Mako-1.3.12.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ------------------------------------------------------ --------------------
  <a id="mako-render"></a><span class="command"><span class="term"><strong>mako-render</strong></span></span>   renders a template
  ------------------------------------------------------ --------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## NumPy-2.4.6 {#numpy-2.4.6}

<div class="package" lang="en">
### Introduction to NumPy Module {#introduction-to-numpy-module}

<span class="application">NumPy</span> is the fundamental package for scientific computing with Python.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/n/numpy/numpy-2.4.6.tar.gz">https://files.pythonhosted.org/packages/source/n/numpy/numpy-2.4.6.tar.gz</a>

-   Download MD5 sum: 2794346c22169a5a103cd117a3f1394f

-   Download size: 20 MB

-   Estimated disk space required: 112 MB (add 34 MB for tests)

-   Estimated build time: 0.6 SBU (add 1.2 SBU for tests)
</div>

#### NumPy Dependencies

##### Required

<a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a>, <a class="xref" href="python-dependencies.md#meson_python" title="Meson_python-0.19.0">meson_python-0.19.0</a>, and <a class="xref" href="python-dependencies.md#pyproject-metadata" title="Pyproject-Metadata-0.11.0">pyproject-metadata-0.11.0</a>

##### Optional

fortran from <a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a>, <a class="ulink" href="https://www.netlib.org/lapack/">lapack and cblas</a>, and <a class="ulink" href="https://www.openblas.net/">openblas</a>

##### Optional (for testing)

<a class="xref" href="python-dependencies.md#attrs" title="Attrs-25.4.0">attrs-25.4.0</a>, <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="python-dependencies.md#pytz" title="Pytz-2025.2">pytz-2025.2</a>, and <a class="ulink" href="https://pypi.org/project/hypothesis/">hypothesis</a>
</div>

<div class="installation" lang="en">
### Installation of NumPy {#installation-of-numpy}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir \
           -C setup-args=-Dallow-noblas=true $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user numpy
```

The installation can be tested with the following commands:

```bash
mkdir -p test                                  &&
cd       test                                  &&
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install hypothesis                        &&
python3 -c "import numpy, sys; sys.exit(numpy.test() is False)"
deactivate
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-15}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-15}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">f2py, f2py3 and f2py3.14 (3 copies of the same script)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/numpy</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ---------------------------------------- -------------------------------------------------------
  <a id="f2py"></a><span class="command"><span class="term"><strong>f2py</strong></span></span>   is the Fortran to Python interface generator utility.
  ---------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## psutil-7.2.2 {#psutil-7.2.2}

<div class="package" lang="en">
### Introduction to psutil Module {#introduction-to-psutil-module}

psutil (process and system utilities) is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network, sensors) in Python. It is useful mainly for system monitoring, profiling and limiting process resources and management of running processes. It implements many functionalities offered by classic UNIX command line tools such as ps, top, iotop, lsof, netstat, ifconfig, free and others.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/psutil/psutil-7.2.2.tar.gz">https://files.pythonhosted.org/packages/source/p/psutil/psutil-7.2.2.tar.gz</a>

-   Download MD5 sum: a1c5c30f68a927053be09592d1a4be53

-   Download size: 484 KB

-   Estimated disk space required: 94 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

#### Packaging Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/colorama/">colorama</a>, <a class="ulink" href="https://pypi.org/project/pyleak/">pyleak</a>, <a class="ulink" href="https://pypi.org/project/pyperf/">pyperf</a>, <a class="ulink" href="https://pypi.org/project/pypinfo/">pypinfo</a>, <a class="ulink" href="https://pypi.org/project/pytest-instafail/">pytest-instafail</a>, <a class="ulink" href="https://pypi.org/project/pytest-subtests/">pytest-subtests</a>, and <a class="ulink" href="https://pypi.org/project/pytest-xdist/">pytest-xdist</a>
</div>

<div class="installation" lang="en">
### Installation of psutil {#installation-of-psutil}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user psutil
```

In order to run the tests, the binary modules have to be copied:

```bash
cp build/lib*/psutil/*.so psutil
```

To test the results, issue:

```bash
python3 -m venv --system-site-packages testenv                      &&
testenv/bin/pip3 install colorama pytest-{instafail,subtests,xdist} \
                         psleak pyperf pypinfo                      &&
PSUTIL_DEBUG=1 testenv/bin/python3 -m pytest
```

<div class="itemizedlist">
-   The tests named <code class="literal">TestSystemAPIs::test_disk_usage</code>, <code class="literal">TestFetchAllProcesses::test_all</code>, and <code class="literal">TestNetAPIs::test_net_if_addrs</code> are known to fail.

-   The test named <code class="literal">TestSystemNetIfAddrs::test_ips</code> is known to fail if IPv6 tunelling is enabled in the kernel.

-   The test named <code class="literal">TestAvailProcessAPIs::test_io_counters</code> is known to fail if the kernel does not have <code class="option">CONFIG_TASK_IO_ACCOUNTING</code> enabled.

-   The test named <code class="literal">TestExampleScripts::test_who</code> is known to fail if the login manager does not write into <code class="filename">/run/utmp</code> <a class="xref" href="../postlfs/shadow.md" title="Shadow-4.19.4">(note that due to the potential year 2038 problem, if <span class="phrase">Shadow-4.19.4</a> is already rebuilt in BLFS, it will stop writing into the file)</span>.

-   The test named <code class="literal">TestSystemAPIs::test_users</code> is known to fail if the <code class="filename">/run/utmp</code> file contains an entry for the login screen. It can also fail due to the same reason as <code class="literal">TestExampleScripts::test_who</code>.
</div>
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-16}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-16}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/psutil-7.2.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Py3c-1.4 {#py3c-1.4}

<div class="package" lang="en">
### Introduction to Py3c {#introduction-to-py3c}

<span class="application">Py3c</span> helps you port C extensions to Python 3. It provides a detailed guide as well as a set of macros to make porting easier and reduce boilerplate.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/encukou/py3c/archive/v1.4/py3c-1.4.tar.gz">https://github.com/encukou/py3c/archive/v1.4/py3c-1.4.tar.gz</a>

-   Download MD5 sum: 53029afde7e0cf8672a2d69d378a0cfc

-   Download size: 47 KB

-   Estimated disk space required: 608 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
### Installation of Py3c {#installation-of-py3c}

The <span class="application">Py3c</span> package is a headers-only package and because of that, no configuration or compilation is required.

To test the package, issue:

```bash
make test-python3     &&
make test-python3-cpp
```

To install the <span class="application">py3c</span> module, run the following command as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install
```
</div>

<div class="content" lang="en">
### Contents {#contents-17}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/py3c</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## PyAtSpi2-2.58.2 {#pyatspi2-2.58.2}

<div class="package" lang="en">
### Introduction to PyAtSpi2 {#introduction-to-pyatspi2}

The <span class="application">PyAtSpi2</span> package contains <span class="application">Python</span> bindings for the core components of the <span class="application">GNOME</span> Accessibility.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/pyatspi/2.58/pyatspi-2.58.2.tar.xz">https://download.gnome.org/sources/pyatspi/2.58/pyatspi-2.58.2.tar.xz</a>

-   Download MD5 sum: f7e9e8434159258031661ef9b86cc081

-   Download size: 84 KB

-   Estimated disk space required: 1.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

#### PyAtSpi2 Dependencies

##### Required

<a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a> and <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

##### Recommended

<a class="xref" href="../x/at-spi2-core.md" title="at-spi2-core-2.60.4">at-spi2-core-2.60.4</a>
</div>

<div class="installation" lang="en">
### Installation of PyAtSpi2 {#installation-of-pyatspi2}

To build <span class="application">PyAtSpi2</span>, run the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D enable_tests=true .. &&
ninja
```

To run the tests issue: <span class="command"><strong>ninja test</strong></span>. The tests need to be run in a graphical environment.

To install the module, run the following command as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
### Contents {#contents-18}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pyatspi</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## PyCairo-1.29.0 {#pycairo-1.29.0}

<div class="package" lang="en">
### Introduction to PyCairo Module {#introduction-to-pycairo-module}

PyCairo provides <span class="application">Python</span> bindings to <span class="application">Cairo</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/pygobject/pycairo/releases/download/v1.29.0/pycairo-1.29.0.tar.gz">https://github.com/pygobject/pycairo/releases/download/v1.29.0/pycairo-1.29.0.tar.gz</a>

-   Download MD5 sum: 8202d252ea754e2a17852b9031e01b32

-   Download size: 652 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### PyCairo Dependencies

##### Required

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>

##### Optional

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for tests)
</div>

<div class="installation" lang="en">
### Installation of PyCairo {#installation-of-pycairo}

Install <span class="application">PyCairo</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests, this package requires the optional pytest module. If it is installed, run the tests by running <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
### Contents {#contents-19}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pycairo, /usr/lib/python3.14/site-packages/cairo, and /usr/lib/python3.14/site-packages/pycairo-1.29.0.egg-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## pygdbmi-0.11.0.0 {#pygdbmi-0.11.0.0}

<div class="package" lang="en">
### Introduction to pygdbmi Module {#introduction-to-pygdbmi-module}

GDB/MI is a line based machine oriented text interface to GDB and is activated by specifying using the --interpreter command line option (see Mode Options). It is specifically intended to support the development of systems which use the debugger as just one small component of a larger system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pygdbmi/pygdbmi-0.11.0.0.tar.gz">https://files.pythonhosted.org/packages/source/p/pygdbmi/pygdbmi-0.11.0.0.tar.gz</a>

-   Download MD5 sum: 34b1812e77469c6206002b3929798cab

-   Download size: 28 KB

-   Estimated disk space required: 280 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of pygdbmi {#installation-of-pygdbmi}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pygdbmi
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-17}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-20}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pygdbmi-0.11.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pygments-2.20.0 {#pygments-2.20.0}

<div class="package" lang="en">
### Introduction to Pygments Module {#introduction-to-pygments-module}

<span class="application">Pygments</span> is a general syntax highlighter written in <span class="application">Python</span>, for more than 300 languages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz">https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz</a>

-   Download MD5 sum: 358297d0a1db8e4beff8eebc0620960e

-   Download size: 4.8 MB

-   Estimated disk space required: 84 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Pygments Dependencies

#### Required

<a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a>

#### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/wcag-contrast-ratio">wcag-contrast-ratio</a>
</div>

<div class="installation" lang="en">
### Installation of Pygments {#installation-of-pygments}

Build the <span class="application">Python 3</span> module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Pygments
```

To test the installation, make sure <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed and run:

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install wcag-contrast-ratio   &&
testenv/bin/python -m pytest
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-18}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-21}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pygmentize</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pygments and /usr/lib/python3.14/site-packages/Pygments-2.20.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------
  <a id="pygmentize"></a><span class="command"><span class="term"><strong>pygmentize</strong></span></span>   highlights an input file and writes the result to an output file
  ---------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## PyGObject-3.56.3 {#pygobject-3.56.3}

<div class="package" lang="en">
### Introduction to PyGObject3 Module {#introduction-to-pygobject3-module}

<span class="application">PyGObject3</span> provides <span class="application">Python</span> bindings to the GObject class from <span class="application">GLib</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/pygobject/3.56/pygobject-3.56.3.tar.gz">https://download.gnome.org/sources/pygobject/3.56/pygobject-3.56.3.tar.gz</a>

-   Download MD5 sum: 7fe8fa9ff801a010eca0f0c79f59232b

-   Download size: 1.4 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

#### PyGObject3 Dependencies

##### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

##### Recommended

<a class="xref" href="python-modules.md#pycairo" title="PyCairo-1.29.0">PyCairo-1.29.0</a>

##### Optional (for the tests)

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="ulink" href="https://pypi.python.org/pypi/pep8">pep8</a>, <a class="ulink" href="https://pypi.python.org/pypi/pyflakes">pyflakes</a>, and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of PyGObject3 {#installation-of-pygobject3}

First, if you do not have <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> installed, remove two tests:

```bash
mv -v tests/test_gdbus.py{,.nouse}         &&
mv -v tests/test_overrides_gtk.py{,.nouse}
```

Install <span class="application">pygobject3</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. An already active graphical session with a bus address is necessary to run the tests.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-19}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D pycairo=disabled</code>: use this switch if you do not have <a class="xref" href="python-modules.md#pycairo" title="PyCairo-1.29.0">PyCairo-1.29.0</a> installed.
</div>

<div class="content" lang="en">
### Contents {#contents-22}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">/usr/lib/python3.14/site-packages/gi/\_gi{,\_cairo}.cpython-314-\<arch\>-linux-gnu.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pygobject-3.0 and /usr/lib/python3.14/site-packages/{gi,pygtkcompat}</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## pyparsing-3.3.2 {#pyparsing-3.3.2}

<div class="package" lang="en">
### Introduction to pyparsing Module {#introduction-to-pyparsing-module}

The <span class="application">pyparsing</span> module is an alternative approach to creating and executing simple grammars, vs. the traditional lex/yacc approach, or the use of regular expressions. It provides a library of classes that client code uses to construct the grammar directly in Python code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.3.2.tar.gz">https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.3.2.tar.gz</a>

-   Download MD5 sum: ca3bea68cd1a84584b68cd7bed679464

-   Download size: 6.6 MB

-   Estimated disk space required: 113 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

#### pyparsing Dependencies

##### Optional

<a class="ulink" href="https://pypi.org/project/railroad-diagrams/">railroad-diagrams</a> and <a class="ulink" href="https://matplotlib.org/">matplotlib</a> (also needed for tests)

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of pyparsing {#installation-of-pyparsing}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pyparsing
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependency is not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install railroad-diagrams matplotlib      &&
python3 /usr/bin/pytest
deactivate
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-20}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-23}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pyparsing and /usr/lib/python3.14/site-packages/pyparsing-3.3.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## pySerial-3.5 {#pyserial-3.5}

<div class="package" lang="en">
### Introduction to pySerial Module {#introduction-to-pyserial-module}

The <span class="application">pySerial</span> module encapsulates access to the serial port.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pyserial/pyserial-3.5.tar.gz">https://files.pythonhosted.org/packages/source/p/pyserial/pyserial-3.5.tar.gz</a>

-   Download MD5 sum: 1cf25a76da59b530dbfc2cf99392dc83

-   Download size: 156 KB

-   Estimated disk space required: 2.1 MB (add 0.2 MB for tests)

-   Estimated build time: less than 0.1 SBU
</div>

#### pySerial Dependencies

##### Required

<a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of pySerial {#installation-of-pyserial}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pyserial
```

To test the installation issue <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-21}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-24}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pyserial-miniterm and pyserial-ports</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pyserial-3.5.dist-info and /usr/lib/python3.14/site-packages/serial</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
  <a id="pyserial-miniterm"></a><span class="command"><span class="term"><strong>pyserial-miniterm</strong></span></span>   is a console application that provides a small terminal application. It may inherit terminal features from the terminal in which it is run.
  <a id="pyserial-ports"></a><span class="command"><span class="term"><strong>pyserial-ports</strong></span></span>         lists available ports.
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pytest-9.0.3 {#pytest-9.0.3}

<div class="package" lang="en">
### Introduction to Pytest Module {#introduction-to-pytest-module}

The <span class="application">Pytest</span> framework makes it easy to write small, readable tests, and can scale to support complex functional testing for applications and libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pytest/pytest-9.0.3.tar.gz">https://files.pythonhosted.org/packages/source/p/pytest/pytest-9.0.3.tar.gz</a>

-   Download MD5 sum: 0cd1c357553d2e3eb850d71843b375d1

-   Download size: 1.5 MB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 1.4 SBU (with tests)
</div>

#### Pytest Dependencies

##### Required

<a class="xref" href="python-dependencies.md#iniconfig" title="Iniconfig-2.3.0">iniconfig-2.3.0</a>, <a class="xref" href="python-dependencies.md#pluggy" title="Pluggy-1.6.0">pluggy-1.6.0</a>, and <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>

##### Recommended

<a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

##### Optional (for testing)

<a class="xref" href="python-dependencies.md#attrs" title="Attrs-25.4.0">attrs-25.4.0</a>, <a class="xref" href="python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>, <a class="ulink" href="https://pypi.org/project/argcomplete/">argcomplete</a>, <a class="ulink" href="https://pypi.org/project/hypothesis/">hypothesis</a>, <a class="ulink" href="https://pypi.org/project/mock/">mock</a>, and <a class="ulink" href="https://pypi.org/project/xmlschema/">xmlschema</a>
</div>

<div class="installation" lang="en">
### Installation of Pytest {#installation-of-pytest}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pytest
```

The installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest[dev]                       &&
python3 /usr/bin/pytest
deactivate
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-22}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-25}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pytest and py.test (different files but with same content)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/\_pytest, /usr/lib/python3.14/site-packages/pytest, and /usr/lib/python3.14/site-packages/pytest-9.0.3.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ------------------------------------------------- -------------------------------------------------------------------------
  <a id="pytest-prog"></a><span class="command"><span class="term"><strong>pytest</strong></span></span>   sets up, manages, and/or runs tests in python module source directories
  ------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## PyXDG-0.28 {#pyxdg-0.28}

<div class="package" lang="en">
### Introduction to PyXDG Module {#introduction-to-pyxdg-module}

<span class="application">PyXDG</span> is a <span class="application">Python</span> library to access freedesktop.org standards.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz">https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz</a>

-   Download MD5 sum: d9a1d04fe60c956f5e3b9de3b4ef4722

-   Download size: 76 KB

-   Estimated disk space required: 808 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/pyxdg-0.28-python3_14-fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/pyxdg-0.28-python3_14-fixes-1.patch</a>
</div>

#### PyXDG Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>
</div>

<div class="installation" lang="en">
### Installation of PyXDG {#installation-of-pyxdg}

First, fix several problems caused by Python 3.14:

```bash
patch -Np1 -i ../pyxdg-0.28-python3_14-fixes-1.patch
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the module as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pyxdg
```

To test the results, issue: <span class="command"><strong>pytest</strong></span>. Note that two tests, <code class="filename">MimeTest::test_get_type</code> and <code class="filename">MimeTest::test_get_type2</code>, are known to fail due to small differences in MIME types from the recent versions of the shared-mime-info package.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-23}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-26}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/python3.14/site-packages/xdg and /usr/lib/python3.14/site-packages/pyxdg-0.28.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## PyYAML-6.0.3 {#pyyaml-6.0.3}

<div class="package" lang="en">
### Introduction to PyYAML Module {#introduction-to-pyyaml-module}

<span class="application">PyYAML</span> is a <span class="application">Python</span> module that implements the next generation YAML parser and emitter.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/P/PyYAML/pyyaml-6.0.3.tar.gz">https://files.pythonhosted.org/packages/source/P/PyYAML/pyyaml-6.0.3.tar.gz</a>

-   Download MD5 sum: dbc6f815cd75160ccf12e470be1c8d6e

-   Download size: 128 KB

-   Estimated disk space required: 8.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### PyYAML Dependencies

##### Recommended

<a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a> and <a class="xref" href="libyaml.md" title="libyaml-0.2.5">libyaml-0.2.5</a>

##### Optional

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for testing)
</div>

<div class="installation" lang="en">
### Installation of PyYAML {#installation-of-pyyaml}

Build PyYAML with the following command:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, install the module as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user PyYAML
```

To test the results, issue: <span class="command"><strong>pytest</strong></span>. One warning is output from <code class="filename">tests/legacy_tests/test_dump_load.py</code> during the test suite.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-24}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-27}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/PyYAML-0.2.5.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Recommonmark-0.7.1 {#recommonmark-0.7.1}

<div class="package" lang="en">
### Introduction to Recommonmark Module {#introduction-to-recommonmark-module}

<span class="application">Recommonmark</span> is a docutils-compatibility bridge to CommonMark. It allows writing CommonMark inside of Docutils and Sphinx projects. <span class="application">Recommonmark</span> is now deprecated in favor of <a class="ulink" href="https://pypi.org/project/myst-parser/">MyST-Parser</a>. Unfortunately, <a class="xref" href="../x/x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a> depends on this module.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/r/recommonmark/recommonmark-0.7.1.tar.gz">https://files.pythonhosted.org/packages/source/r/recommonmark/recommonmark-0.7.1.tar.gz</a>

-   Download MD5 sum: 3c550a76eb62006bf007843a9f1805bb

-   Download size: 34 KB

-   Estimated disk space required: 680 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Recommonmark Dependencies

##### Required

<a class="xref" href="python-dependencies.md#commonmark" title="Commonmark-0.9.1">commonmark-0.9.1</a> and <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Recommonmark {#installation-of-recommonmark}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user recommonmark
```

<span class="application">Recommonmark</span> is now deprecated in favor of <a class="ulink" href="https://pypi.org/project/myst-parser/">MyST-Parser</a>. For this reason, a lot of tests have to be disabled because they do not pass with recent versions of <span class="application">Sphinx</span>. The installation can be partially tested with the following command:

```bash
DISABLED="test_integration or test_code or test_headings "
DISABLED+="or test_image or test_links or test_lists"

pytest -k "not ($DISABLED)"
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-25}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-28}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cm2html, cm2latex, cm2man, cm2pseudoxml, cm2xetex, and cm2xml</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/recommonmark and /usr/lib/python3.14/site-packages/recommonmark-0.7.1.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------
  <a id="cm2html"></a><span class="command"><span class="term"><strong>cm2html</strong></span></span>             generates a html document from markdown sources
  <a id="cm2latex"></a><span class="command"><span class="term"><strong>cm2latex</strong></span></span>           generates a latex document from markdown sources
  <a id="cm2man"></a><span class="command"><span class="term"><strong>cm2man</strong></span></span>               generates a manpage from markdown sources
  <a id="cm2pseudoxml"></a><span class="command"><span class="term"><strong>cm2pseudoxml</strong></span></span>   generates a pseudo-XML document from markdown sources
  <a id="cm2xetex"></a><span class="command"><span class="term"><strong>cm2xetex</strong></span></span>           generates a xetex document from markdown sources
  <a id="cm2xml"></a><span class="command"><span class="term"><strong>cm2xml</strong></span></span>               generates an XML document from markdown sources
  -------------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Requests-2.34.2 {#requests-2.34.2}

<div class="package" lang="en">
### Introduction to Requests Module {#introduction-to-requests-module}

The <span class="application">Requests</span> package is an elegant and simple HTTP library for Python, built for human beings. It allows sending HTTP/1.1 requests extremely easily.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/r/requests/requests-2.34.2.tar.gz">https://files.pythonhosted.org/packages/source/r/requests/requests-2.34.2.tar.gz</a>

-   Download MD5 sum: 611e438d0803e962500225f9807a475e

-   Download size: 140 KB

-   Estimated disk space required: 89 MB (with tests)

-   Estimated build time: less than 0.1 SBU (0.9 SBU for tests)
</div>

#### Additional Download

<div class="itemizedlist">
-   Recommended patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/requests-use_system_certs-2.patch">https://www.linuxfromscratch.org/patches/blfs/svn/requests-use_system_certs-2.patch</a>
</div>

#### Requests Dependencies

##### Required

<a class="xref" href="python-dependencies.md#charset-normalizer" title="Charset-normalizer-3.4.4">charset-normalizer-3.4.4</a>, <a class="xref" href="python-dependencies.md#idna" title="Idna-3.11">idna-3.11</a>, and <a class="xref" href="python-dependencies.md#urllib3" title="Urllib3-2.7.0">urllib3-2.7.0</a>

##### Recommended

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, with <a class="xref" href="../postlfs/p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> (both needed to use system https: certificates, removing an unnecessary dependency on the <span class="application">Certifi</span> module).

##### Optional

<a class="ulink" href="https://pypi.org/project/PySocks/">PySocks</a> (also needed for testing)

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/pytest-mock/">pytest-mock</a>, <a class="ulink" href="https://pypi.org/project/pytest-httpbin/">pytest-httpbin</a>, <a class="ulink" href="https://pypi.org/project/pytest-cov/">pytest-cov</a>, <a class="ulink" href="https://pypi.org/project/pytest-xdist/">pytest-xdist</a>, and <a class="ulink" href="https://pypi.org/project/trustme/">trustme</a>
</div>

<div class="installation" lang="en">
### Installation of Requests {#installation-of-requests}

First apply a patch so that the same environment variable already used to point to system certificates in <span class="application">Python3</span> following the installation of <span class="application">make-ca</span> can also be used by this module:

```bash
patch -Np1 -i ../requests-use_system_certs-2.patch
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user requests
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Some of the setup instructions below may indicate an error due to dependent module versions, but these errors do not affect the test results.
</div>

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest-mock    \
             pytest-httpbin \
             pytest-cov     \
             pytest-xdist   \
             pysocks        \
             trustme                           &&
python3 /usr/bin/pytest tests
deactivate
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

See <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> for how to set the environment variable, and for how local copies of the Certifi and Requests modules installed in a virtual environment <span class="emphasis"><em>will</em></span> override the system certificates.
</div>
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-26}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-29}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/requests and /usr/lib/python3.14/site-packages/requests-2.34.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Scour-0.38.2 {#scour-0.38.2}

<div class="package" lang="en">
### Introduction to Scour Module {#introduction-to-scour-module}

<span class="application">Scour</span> is an SVG (Scalable Vector Graphics) optimizer/cleaner that reduces their size by optimizing structure and removing unnecessary data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/scour-project/scour/archive/v0.38.2/scour-0.38.2.tar.gz">https://github.com/scour-project/scour/archive/v0.38.2/scour-0.38.2.tar.gz</a>

-   Download MD5 sum: ae30f52602802f8c7df3a32e1f72b325

-   Download size: 100 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Scour Dependencies

##### Required

<a class="xref" href="python-modules.md#six" title="six-1.17.0">six-1.17.0</a>

#### Optional (required for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of scour {#installation-of-scour}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, run the following command as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user scour
```

To test the results, issue: <span class="command"><strong>pytest</strong></span>
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-27}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-30}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">scour</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/scour and /usr/lib/python3.14/site-packages/scour-0.38.2.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- ----------------------------------------------
  <a id="scour-prog"></a><span class="command"><span class="term"><strong>scour</strong></span></span>   is a program to optimize and clean SVG files
  ----------------------------------------------- ----------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## sentry-sdk-2.53.0 {#sentry-sdk-2.53.0}

<div class="package" lang="en">
### Introduction to sentry-sdk Module {#introduction-to-sentry-sdk-module}

The <span class="application">sentry-sdk</span> module is the official Python SDK for Sentry.io.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/getsentry/sentry-python/releases/download/2.53.0/sentry_sdk-2.53.0.tar.gz">https://github.com/getsentry/sentry-python/releases/download/2.53.0/sentry_sdk-2.53.0.tar.gz</a>

-   Download MD5 sum: 92cc3e1f9b54e7cd670e82ec7aa48dcd

-   Download size: 404 KB

-   Estimated disk space required: 4.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### sentry-sdk Dependencies

##### Required

<a class="xref" href="python-dependencies.md#certifi" title="certifi-2026.1.4">certifi-2026.1.4</a> and <a class="xref" href="python-dependencies.md#urllib3" title="Urllib3-2.7.0">urllib3-2.7.0</a>
</div>

<div class="installation" lang="en">
### Installation of sentry-sdk {#installation-of-sentry-sdk}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sentry-sdk
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-28}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-31}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sentry_sdk-2.53.0.dist-info and /usr/lib/python3.14/site-packages/sentry_sdk</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## six-1.17.0 {#six-1.17.0}

<div class="package" lang="en">
### Introduction to Six Module {#introduction-to-six-module}

Six is a Python 2 to 3 compatibility library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/six/six-1.17.0.tar.gz">https://files.pythonhosted.org/packages/source/s/six/six-1.17.0.tar.gz</a>

-   Download MD5 sum: a0387fe15662c71057b4fb2b7aa9056a

-   Download size: 36 KB

-   Estimated disk space required: 300 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### six Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Six {#installation-of-six}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user six
```

To run the tests, issue: <span class="command"><strong>pytest</strong></span>
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-29}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-32}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/six-1.17.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinx-9.1.0 {#sphinx-9.1.0}

<div class="package" lang="en">
### Introduction to Sphinx Module {#introduction-to-sphinx-module}

The <span class="application">Sphinx</span> package is a set of tools for translating some structured text formats into pretty documentation in various formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinx/sphinx-9.1.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinx/sphinx-9.1.0.tar.gz</a>

-   Download MD5 sum: 0f552d70cc8cee4d473ec4aec90b7d2c

-   Download size: 8.3 MB

-   Estimated disk space required: 58 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.8 SBU for tests)
</div>

#### Sphinx Dependencies

##### Required

<a class="xref" href="python-dependencies.md#alabaster" title="Alabaster-1.0.0">alabaster-1.0.0</a>, <a class="xref" href="python-dependencies.md#babel" title="babel-2.18.0">babel-2.18.0</a>, <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, <a class="xref" href="python-dependencies.md#imagesize" title="Imagesize-1.4.1">imagesize-1.4.1</a>, <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, <a class="xref" href="python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>, <a class="xref" href="python-dependencies.md#roman-numerals" title="Roman-numerals-4.1.0">roman-numerals-4.1.0</a>, <a class="xref" href="python-dependencies.md#snowballstemmer" title="Snowballstemmer-3.0.1">snowballstemmer-3.0.1</a>, <a class="xref" href="python-dependencies.md#sc-applehelp" title="Sphinxcontrib-applehelp-2.0.0">sphinxcontrib-applehelp-2.0.0</a>, <a class="xref" href="python-dependencies.md#sc-devhelp" title="Sphinxcontrib-devhelp-2.0.0">sphinxcontrib-devhelp-2.0.0</a>, <a class="xref" href="python-dependencies.md#sc-htmlhelp" title="Sphinxcontrib-htmlhelp-2.1.0">sphinxcontrib-htmlhelp-2.1.0</a>, <a class="xref" href="python-dependencies.md#sc-jsmath" title="Sphinxcontrib-jsmath-1.0.1">sphinxcontrib-jsmath-1.0.1</a>, <a class="xref" href="python-dependencies.md#sc-qthelp" title="Sphinxcontrib-qthelp-2.0.0">sphinxcontrib-qthelp-2.0.0</a>, and <a class="xref" href="python-dependencies.md#sc-serializinghtml" title="Sphinxcontrib-serializinghtml-2.0.0">sphinxcontrib-serializinghtml-2.0.0</a>

##### Optional (for tests)

<a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a>, <a class="xref" href="python-modules.md#html5lib" title="html5lib-1.1">html5lib-1.1</a>, <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a>, <a class="ulink" href="https://pypi.org/project/defusedxml/">defusedxml</a>, and <a class="ulink" href="https://pypi.org/project/typing_extensions/">typing_extensions</a>
</div>

<div class="installation" lang="en">
### Installation of Sphinx {#installation-of-sphinx}

First allow <span class="application">sphinx</span> to use <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>:

```bash
sed -i 's/0.23/0.24/' pyproject.toml
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinx
```

Assuming <a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> are installed, but the other optional dependencies are not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install sphinx[test] defusedxml           &&
python3 -m pytest
deactivate
```

Four tests (of over 2400 tests) are known to fail: Three in test_ext_autodoc.py and one in test_util_typing.py.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-30}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-33}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sphinx-apidoc, sphinx-autogen, sphinx-build, and sphinx-quickstart</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinx and /usr/lib/python3.14/site-packages/sphinx-9.1.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------
  <a id="sphinx-apidoc"></a><span class="command"><span class="term"><strong>sphinx-apidoc</strong></span></span>           creates an reST file from python modules and packages
  <a id="sphinx-autogen"></a><span class="command"><span class="term"><strong>sphinx-autogen</strong></span></span>         generates ReStructuredText from special directives contained in given input files
  <a id="sphinx-build"></a><span class="command"><span class="term"><strong>sphinx-build</strong></span></span>             generates documentation in various formats from ReStructuredText source files
  <a id="sphinx-quickstart"></a><span class="command"><span class="term"><strong>sphinx-quickstart</strong></span></span>   generates required files for a sphinx project
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinx_rtd_theme-3.1.0 {#sphinx_rtd_theme-3.1.0}

<div class="package" lang="en">
### Introduction to Sphinx_rtd_theme Module {#introduction-to-sphinx_rtd_theme-module}

The <span class="application">sphinx_rtd_theme</span> module is a Sphinx theme designed to provide a great reader experience for documentation users on both desktop and mobile devices. This theme is used primarily on Read the Docs but can work with any Sphinx project.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinx_rtd_theme/sphinx_rtd_theme-3.1.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinx_rtd_theme/sphinx_rtd_theme-3.1.0.tar.gz</a>

-   Download MD5 sum: ac4255e53e5bed61a6b48e70ca80607c

-   Download size: 7.3 MB

-   Estimated disk space required: 40 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Sphinx_rtd_theme Dependencies

##### Required

<a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> and <a class="xref" href="python-dependencies.md#sc-jquery" title="Sphinxcontrib-jquery-4.1">sphinxcontrib-jquery-4.1</a>

##### Optional (for tests)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/readthedocs-sphinx-ext">readthedocs-sphinx-ext</a>
</div>

<div class="installation" lang="en">
### Installation of Sphinx_rtd_theme {#installation-of-sphinx_rtd_theme}

First allow this package to use <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>:

```bash
sed -i 's/0.23/0.24/' setup.cfg
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinx_rtd_theme
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependency is not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install readthedocs-sphinx-ext            &&
python3 /usr/bin/pytest
deactivate
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-31}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory <code class="filename">dist</code>.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory <code class="filename">dist</code>.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the <code class="systemitem">root</code> user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-34}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinx_rtd_theme and /usr/lib/python3.14/site-packages/sphinx_rtd_theme-3.1.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](python311.md "Python-3.11.1")

    Python-3.11.1

-   [Next](python-dependencies.md "Python Dependencies")

    Python Dependencies

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
