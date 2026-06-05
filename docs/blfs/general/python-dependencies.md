<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python-modules.md "Python Modules")

    Python Modules

-   [Next](ruby.md "Ruby-4.0.5")

    Ruby-4.0.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Python Dependencies {#python-dependencies}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Python Dependencies {#introduction-to-python-dependencies}

Python modules listed in <a class="xref" href="python-modules.md" title="Python Modules">Python Modules</a> have dependencies that are not referenced by other packages in BLFS. These dependencies are listed here. They will not get updated on regular basis, unless a more recent version is needed.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

In BLFS, we normally build and install Python 3 modules with <span class="command"><strong>pip3</strong></span>. Please take care that the <span class="command"><strong>pip3 install</strong></span> commands in the book should be run as <code class="systemitem">root</code> unless it's for a Python virtual environment. Running <span class="command"><strong>pip3 install</strong></span> as a non-<code class="systemitem">root</code> user may seem to work fine, but it will cause the installed module to be inaccessible by other users.

<span class="command"><strong>pip3 install</strong></span> will not reinstall an already installed module by default. For using the <span class="command"><strong>pip3 install</strong></span> command to upgrade a module (for example, from meson-0.61.3 to meson-0.62.0), insert *`--upgrade`* into the command line. If it's really necessary to downgrade a module or reinstall the same version for some reason, insert *`--force-reinstall`* into the command line.
</div>

<div class="itemizedlist">
-   <a class="xref" href="python-dependencies.md#alabaster" title="Alabaster-1.0.0">alabaster-1.0.0</a>

-   <a class="xref" href="python-dependencies.md#attrs" title="Attrs-25.4.0">attrs-25.4.0</a>

-   <a class="xref" href="python-dependencies.md#babel" title="babel-2.18.0">babel-2.18.0</a>

-   <a class="xref" href="python-dependencies.md#certifi" title="certifi-2026.1.4">certifi-2026.1.4</a>

-   <a class="xref" href="python-dependencies.md#chardet" title="Chardet-5.2.0">chardet-5.2.0</a>

-   <a class="xref" href="python-dependencies.md#charset-normalizer" title="Charset-normalizer-3.4.4">charset-normalizer-3.4.4</a>

-   <a class="xref" href="python-dependencies.md#commonmark" title="Commonmark-0.9.1">commonmark-0.9.1</a>

-   <a class="xref" href="python-dependencies.md#editables" title="Editables-0.5">editables-0.5</a>

-   <a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a>

-   <a class="xref" href="python-dependencies.md#hatch-fancy-pypi-readme" title="Hatch-Fancy-Pypi-Readme-25.1.0">hatch-fancy-pypi-readme-25.1.0</a>

-   <a class="xref" href="python-dependencies.md#hatch-vcs" title="Hatch_vcs-0.5.0">hatch_vcs-0.5.0</a>

-   <a class="xref" href="python-dependencies.md#idna" title="Idna-3.11">idna-3.11</a>

-   <a class="xref" href="python-dependencies.md#imagesize" title="Imagesize-1.4.1">imagesize-1.4.1</a>

-   <a class="xref" href="python-dependencies.md#iniconfig" title="Iniconfig-2.3.0">iniconfig-2.3.0</a>

-   <a class="xref" href="python-dependencies.md#markdown" title="Markdown-3.10.2">Markdown-3.10.2</a>

-   <a class="xref" href="python-dependencies.md#maturin" title="maturin-1.13.3">maturin-1.13.3</a>

-   <a class="xref" href="python-dependencies.md#meson_python" title="Meson_python-0.19.0">meson_python-0.19.0</a>

-   <a class="xref" href="python-dependencies.md#msgpack" title="Msgpack-1.1.2">msgpack-1.1.2</a>

-   <a class="xref" href="python-dependencies.md#pathspec" title="Pathspec-1.0.4">pathspec-1.0.4</a>

-   <a class="xref" href="python-dependencies.md#pluggy" title="Pluggy-1.6.0">pluggy-1.6.0</a>

-   <a class="xref" href="python-dependencies.md#pyproject-hooks" title="Pyproject_Hooks-1.2.0">pyproject_hooks-1.2.0</a>

-   <a class="xref" href="python-dependencies.md#pyproject-metadata" title="Pyproject-Metadata-0.11.0">pyproject-metadata-0.11.0</a>

-   <a class="xref" href="python-dependencies.md#pytz" title="Pytz-2025.2">pytz-2025.2</a>

-   <a class="xref" href="python-dependencies.md#roman-numerals" title="Roman-numerals-4.1.0">roman-numerals-4.1.0</a>

-   <a class="xref" href="python-dependencies.md#semantic_version" title="semantic_version-2.10.0">semantic_version-2.10.0</a>

-   <a class="xref" href="python-dependencies.md#setuptools_rust" title="setuptools_rust-1.12.0">setuptools_rust-1.12.0</a>

-   <a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

-   <a class="xref" href="python-dependencies.md#smartypants" title="Smartypants-2.0.2">smartypants-2.0.2</a>

-   <a class="xref" href="python-dependencies.md#snowballstemmer" title="Snowballstemmer-3.0.1">snowballstemmer-3.0.1</a>

-   <a class="xref" href="python-dependencies.md#sc-applehelp" title="Sphinxcontrib-applehelp-2.0.0">sphinxcontrib-applehelp-2.0.0</a>

-   <a class="xref" href="python-dependencies.md#sc-devhelp" title="Sphinxcontrib-devhelp-2.0.0">sphinxcontrib-devhelp-2.0.0</a>

-   <a class="xref" href="python-dependencies.md#sc-htmlhelp" title="Sphinxcontrib-htmlhelp-2.1.0">sphinxcontrib-htmlhelp-2.1.0</a>

-   <a class="xref" href="python-dependencies.md#sc-jquery" title="Sphinxcontrib-jquery-4.1">sphinxcontrib-jquery-4.1</a>

-   <a class="xref" href="python-dependencies.md#sc-jsmath" title="Sphinxcontrib-jsmath-1.0.1">sphinxcontrib-jsmath-1.0.1</a>

-   <a class="xref" href="python-dependencies.md#sc-qthelp" title="Sphinxcontrib-qthelp-2.0.0">sphinxcontrib-qthelp-2.0.0</a>

-   <a class="xref" href="python-dependencies.md#sc-serializinghtml" title="Sphinxcontrib-serializinghtml-2.0.0">sphinxcontrib-serializinghtml-2.0.0</a>

-   <a class="xref" href="python-dependencies.md#trove-classifiers" title="Trove-Classifiers-2026.1.14.14">trove-classifiers-2026.1.14.14</a>

-   <a class="xref" href="python-dependencies.md#typogrify" title="Typogrify-2.1.0">typogrify-2.1.0</a>

-   <a class="xref" href="python-dependencies.md#urllib3" title="Urllib3-2.7.0">urllib3-2.7.0</a>

-   <a class="xref" href="python-dependencies.md#uv_build" title="uv_build-0.10.2">uv_build-0.10.2</a>

-   <a class="xref" href="python-dependencies.md#webencodings" title="webencodings-0.5.1">webencodings-0.5.1</a>
</div>
</div>

<div class="sect2" lang="en">
## Alabaster-1.0.0 {#alabaster-1.0.0}

<div class="package" lang="en">
### Introduction to Alabaster Module {#introduction-to-alabaster-module}

The <span class="application">Alabaster</span> package is a theme for the <span class="application">sphinx</span> documentation system. Although developed separately, it is the default theme for sphinx.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/a/alabaster/alabaster-1.0.0.tar.gz">https://files.pythonhosted.org/packages/source/a/alabaster/alabaster-1.0.0.tar.gz</a>

-   Download MD5 sum: c6c2173e5565fb12f08bef410ea50f72

-   Download size: 24 KB

-   Estimated disk space required: 160 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of Alabaster {#installation-of-alabaster}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user alabaster
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/alabaster and /usr/lib/python3.14/site-packages/alabaster-1.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Attrs-25.4.0 {#attrs-25.4.0}

<div class="package" lang="en">
### Introduction to Attrs Module {#introduction-to-attrs-module}

The <span class="application">Attrs</span> package is a python module that allows for writing attributes without extra boilerplate.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/a/attrs/attrs-25.4.0.tar.gz">https://files.pythonhosted.org/packages/source/a/attrs/attrs-25.4.0.tar.gz</a>

-   Download MD5 sum: 6197561dfec99660529830edcfeee0ba

-   Download size: 912 KB

-   Estimated disk space required: 2.9 MB (add 89 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.3 SBU for tests)
</div>

#### Attrs Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatch-fancy-pypi-readme" title="Hatch-Fancy-Pypi-Readme-25.1.0">hatch-fancy-pypi-readme-25.1.0</a> and <a class="xref" href="python-dependencies.md#hatch-vcs" title="Hatch_vcs-0.5.0">hatch_vcs-0.5.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/cloudpickle/">cloudpickle</a>, <a class="ulink" href="https://pypi.org/project/hypothesis/">hypothesis</a>, <a class="ulink" href="https://pypi.org/project/Pympler/">Pympler</a>, <a class="ulink" href="https://pypi.org/project/mypy/">mypy</a>, <a class="ulink" href="https://pypi.org/project/pytest-mypy-plugins/">pytest-mypy-plugins</a>, [pytest-xdist\[psutil\]](https://pypi.org/project/pytest-xdist/){.ulink}, and <a class="ulink" href="https://pypi.org/project/zope.interface/">zope.interface</a>
</div>

<div class="installation" lang="en">
### Installation of Attrs {#installation-of-attrs}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user attrs
```

To test the installation, run:

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group mypy          &&
PATH=$PWD/testenv/bin:$PATH testenv/bin/python -m pytest
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-1}

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
### Contents {#contents-1}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/attr, /usr/lib/python3.14/site-packages/attrs, and /usr/lib/python3.14/site-packages/attrs-25.4.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## babel-2.18.0 {#babel-2.18.0}

<div class="package" lang="en">
### Introduction to Babel Module {#introduction-to-babel-module}

The <span class="application">Babel</span> package is an integrated collection of utilities that assist in internationalizing and localizing Python applications, with an emphasis on web-based applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/B/Babel/babel-2.18.0.tar.gz">https://files.pythonhosted.org/packages/source/B/Babel/babel-2.18.0.tar.gz</a>

-   Download MD5 sum: b5ea9705c2ad6f8c630e4a66d3dd2cfa

-   Download size: 9.5 MB

-   Estimated disk space required: 129 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

#### Babel Dependencies

##### Required

<a class="xref" href="python-dependencies.md#pytz" title="Pytz-2025.2">pytz-2025.2</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/freezegun/">freezegun</a>, and <a class="ulink" href="https://pypi.org/project/pytest-cov/">pytest-cov</a>
</div>

<div class="installation" lang="en">
### Installation of Babel {#installation-of-babel}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Babel
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest-cov freezegun              &&
python3 /usr/bin/pytest
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
**Installed Programs:** <span class="segbody">pybabel</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/babel and /usr/lib/python3.14/site-packages/Babel-2.18.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------
  <a id="pybabel"></a><span class="command"><span class="term"><strong>pybabel</strong></span></span>   is a command-line interface for working with message catalogs
  ---------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## certifi-2026.1.4 {#certifi-2026.1.4}

<div class="package" lang="en">
### Introduction to Certifi Module {#introduction-to-certifi-module}

The <span class="application">certifi</span> module provides Mozilla’s carefully curated collection of Root Certificates for validating the trustworthiness of SSL certificates while verifying the identity of TLS hosts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.1.4.tar.gz">https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.1.4.tar.gz</a>

-   Download MD5 sum: d8447ad858fa15af16f91e32f182aa85

-   Download size: 152 KB

-   Estimated disk space required: 792 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of certifi {#installation-of-certifi}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user certifi
```
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/certifi and /usr/lib/python3.14/site-packages/certifi-2026.1.4.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Chardet-5.2.0 {#chardet-5.2.0}

<div class="package" lang="en">
### Introduction to chardet Module {#introduction-to-chardet-module}

<span class="application">Chardet</span> is a universal character encoding detector.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/c/chardet/chardet-5.2.0.tar.gz">https://files.pythonhosted.org/packages/source/c/chardet/chardet-5.2.0.tar.gz</a>

-   Download MD5 sum: cc2d8cc9a751641463b4f7cfecad2ffa

-   Download size: 2 MB

-   Estimated disk space required: 12 MB (add 1.1 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.3 SBU for tests)
</div>

#### Chardet Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Chardet {#installation-of-chardet}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user chardet
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
**Installed Programs:** <span class="segbody">chardetect</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/chardet and /usr/lib/python3.14/site-packages/chardet-5.2.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  <a id="chardetect"></a><span class="command"><span class="term"><strong>chardetect</strong></span></span>   is a Universal Character Encoding Detector
  ---------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Charset-normalizer-3.4.4 {#charset-normalizer-3.4.4}

<div class="package" lang="en">
### Introduction to charset-normalizer Module {#introduction-to-charset-normalizer-module}

The <span class="application">charset-normalizer</span> library helps with reading text from an unknown character encoding.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.4.tar.gz">https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.4.tar.gz</a>

-   Download MD5 sum: 3c73a3c5c05a896c1169d8b5298dc4e5

-   Download size: 128 KB

-   Estimated disk space required: 1.1 MB (add 15 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Charset-normalizer Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/pytest-cov/">pytest-cov</a>
</div>

<div class="installation" lang="en">
### Installation of Charset-normalizer {#installation-of-charset-normalizer}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user charset-normalizer
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest-cov                        &&
python3 /usr/bin/pytest                        &&
deactivate
```
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

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-5}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">normalizer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/charset_normalizer and /usr/lib/python3.14/site-packages/charset_normalizer-3.4.4.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
##### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------
  <a id="normalizer"></a><span class="command"><span class="term"><strong>normalizer</strong></span></span>   is a Universal Charset Detector (discovers originating encoding and normalizes text to unicode)
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Commonmark-0.9.1 {#commonmark-0.9.1}

<div class="package" lang="en">
### Introduction to Commonmark Module {#introduction-to-commonmark-module}

<span class="application">Commonmark</span> Python parser for the CommonMark Markdown specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/c/commonmark/commonmark-0.9.1.tar.gz">https://files.pythonhosted.org/packages/source/c/commonmark/commonmark-0.9.1.tar.gz</a>

-   Download MD5 sum: cd1dc70c4714d9ed4117a40490c25e00

-   Download size: 94 KB

-   Estimated disk space required: 1.3 MB (add 30 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.1 SBU for tests)
</div>

#### Commonmark Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/hypothesis/">hypothesis</a>
</div>

<div class="installation" lang="en">
### Installation of Commonmark {#installation-of-commonmark}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user commonmark
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed and the other optional dependency is not, the installation can be tested with:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install hypothesis                        &&
python3 /usr/bin/pytest commonmark/tests/unit_tests.py
python3 commonmark/tests/run_spec_tests.py
deactivate
```
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

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-6}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cmark</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/commonmark and /usr/lib/python3.14/site-packages/commonmark-0.9.1.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------ --------------------------------------------------------------
  <a id="cmark"></a><span class="command"><span class="term"><strong>cmark</strong></span></span>   processes Markdown according to the CommonMark specification
  ------------------------------------------ --------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Editables-0.5 {#editables-0.5}

<div class="package" lang="en">
### Introduction to Editables Module {#introduction-to-editables-module}

<span class="application">Editables</span> is python library for creating <span class="quote">“<span class="quote">editable wheels.</span>”</span>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/e/editables/editables-0.5.tar.gz">https://files.pythonhosted.org/packages/source/e/editables/editables-0.5.tar.gz</a>

-   Download MD5 sum: 520de8c3a9dc5dfb2b365d104541c9de

-   Download size: 4.6 KB

-   Estimated disk space required: 180 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Editables Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Editables {#installation-of-editables}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user editables
```

To test the installation, issue: <span class="command"><strong>pytest</strong></span>.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/editables and /usr/lib/python3.14/site-packages/editables-0.5.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Hatchling-1.28.0 {#hatchling-1.28.0}

<div class="package" lang="en">
### Introduction to Hatchling Module {#introduction-to-hatchling-module}

<span class="application">Hatchling</span> is an extensible, standards compliant build backend for python modules.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/h/hatchling/hatchling-1.28.0.tar.gz">https://files.pythonhosted.org/packages/source/h/hatchling/hatchling-1.28.0.tar.gz</a>

-   Download MD5 sum: 0d40370d4684147d6e3d1e3800298bd0

-   Download size: 57 KB

-   Estimated disk space required: 2.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Hatchling Dependencies

##### Required

<a class="xref" href="python-dependencies.md#editables" title="Editables-0.5">editables-0.5</a>, <a class="xref" href="python-dependencies.md#pathspec" title="Pathspec-1.0.4">pathspec-1.0.4</a>, <a class="xref" href="python-dependencies.md#pluggy" title="Pluggy-1.6.0">pluggy-1.6.0</a>, and <a class="xref" href="python-dependencies.md#trove-classifiers" title="Trove-Classifiers-2026.1.14.14">trove-classifiers-2026.1.14.14</a>
</div>

<div class="installation" lang="en">
### Installation of Hatchling {#installation-of-hatchling}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user hatchling
```
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
**Installed Programs:** <span class="segbody">hatchling</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/hatchling and /usr/lib/python3.14/site-packages/hatchling-1.28.0.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ----------------------------
  <a id="hatchling-prog"></a><span class="command"><span class="term"><strong>hatchling</strong></span></span>   is a python module builder
  ------------------------------------------------------- ----------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Hatch-Fancy-Pypi-Readme-25.1.0 {#hatch-fancy-pypi-readme-25.1.0}

<div class="package" lang="en">
### Introduction to Hatch-Fancy-Pypi-Readme Module {#introduction-to-hatch-fancy-pypi-readme-module}

<span class="application">Hatch-Fancy-Pypi-Readme</span> is a hatch plugin filling the readme field into the metadata of a Python module from markup language documentation files of the module.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/h/hatch-fancy-pypi-readme/hatch_fancy_pypi_readme-25.1.0.tar.gz">https://files.pythonhosted.org/packages/source/h/hatch-fancy-pypi-readme/hatch_fancy_pypi_readme-25.1.0.tar.gz</a>

-   Download MD5 sum: 8e1ed2416887685adc1c909ed4fb63cb

-   Download size: 32 KB

-   Estimated disk space required: 388 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Hatch-Fancy-Pypi-Readme Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Hatch-Fancy-Pypi-Readme {#installation-of-hatch-fancy-pypi-readme}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user hatch-fancy-pypi-readme
```

To test the installation, issue: <span class="command"><strong>pytest</strong></span>.
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/hatch_fancy_pypi_readme and /usr/lib/python3.14/site-packages/hatch_fancy_pypi_readme-25.1.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Hatch_vcs-0.5.0 {#hatch_vcs-0.5.0}

<div class="package" lang="en">
### Introduction to Hatch-vcs Module {#introduction-to-hatch-vcs-module}

<span class="application">Hatch_vcs</span> is a Hatch plugin for versioning with several Version Control Systems ( <a class="xref" href="../appendices/glossary.md#gVCS" title="VCS">VCS</a> ).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/h/hatch-vcs/hatch_vcs-0.5.0.tar.gz">https://files.pythonhosted.org/packages/source/h/hatch-vcs/hatch_vcs-0.5.0.tar.gz</a>

-   Download MD5 sum: 9a22a9f7203783e526959d34510a9672

-   Download size: 9.9 KB

-   Estimated disk space required: 436 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Hatch_vcs Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a> and <a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

##### Optional (for testing)

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Hatch_vcs {#installation-of-hatch_vcs}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user hatch_vcs
```

To test the installation, issue (<code class="literal">HOME=</code> prevents the <code class="filename">.gitconfig</code> file in the home directory from interfering the tests): <span class="command"><strong>HOME= pytest</strong></span>.
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/hatch_vcs and /usr/lib/python3.14/site-packages/hatch_vcs-0.5.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Idna-3.11 {#idna-3.11}

<div class="package" lang="en">
### Introduction to Idna Module {#introduction-to-idna-module}

The <span class="application">Idna</span> module provides support for the Internationalized Domain Names in Applications (IDNA) protocol as specified in RFC 5891.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz">https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz</a>

-   Download MD5 sum: 9a9c33db960e0d35cc5b257c37dabeff

-   Download size: 192 KB

-   Estimated disk space required: 5.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Idna Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Idna {#installation-of-idna}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user idna
```

To test the installation, run <span class="command"><strong>pytest</strong></span>.
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/idna and /usr/lib/python3.14/site-packages/idna-3.11.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Imagesize-1.4.1 {#imagesize-1.4.1}

<div class="package" lang="en">
### Introduction to Imagesize Module {#introduction-to-imagesize-module}

The <span class="application">imagesize</span> package analyzes image file headers and returns the image size and DPI. It works with JPEG/JPEG 2000/PNG/GIF/TIFF/SVG/Netpbm/WebP formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/i/imagesize/imagesize-1.4.1.tar.gz">https://files.pythonhosted.org/packages/source/i/imagesize/imagesize-1.4.1.tar.gz</a>

-   Download MD5 sum: 5a40586a25c07e1a8f16f6267252c321

-   Download size: 1.2 MB

-   Estimated disk space required: 1.8 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Imagesize Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>
</div>

<div class="installation" lang="en">
### Installation of Imagesize {#installation-of-imagesize}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user imagesize
```

The tests for this package are known to be broken. To test the installation anyway, run <span class="command"><strong>pytest</strong></span>.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/imagesize and /usr/lib/python3.14/site-packages/imagesize-1.4.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Iniconfig-2.3.0 {#iniconfig-2.3.0}

<div class="package" lang="en">
### Introduction to Iniconfig Module {#introduction-to-iniconfig-module}

<span class="application">Iniconfig</span> is a small and simple INI-file parser module.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/i/iniconfig/iniconfig-2.3.0.tar.gz">https://files.pythonhosted.org/packages/source/i/iniconfig/iniconfig-2.3.0.tar.gz</a>

-   Download MD5 sum: 5c1d9c21275feb3da71400bf716edd72

-   Download size: 24 KB

-   Estimated disk space required: 304 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Iniconfig Dependencies

##### Required

<a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Iniconfig {#installation-of-iniconfig}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user iniconfig
```

To test the results, issue: <span class="command"><strong>pytest</strong></span>
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/iniconfig and /usr/lib/python3.14/site-packages/iniconfig-2.3.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## maturin-1.13.3 {#maturin-1.13.3}

<div class="package" lang="en">
### Introduction to the maturin Module {#introduction-to-the-maturin-module}

The <span class="application">maturin</span> module provides a build system for rust binaries and crates generated from Python packages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/PyO3/maturin/archive/v1.13.3/maturin-1.13.3.tar.gz">https://github.com/PyO3/maturin/archive/v1.13.3/maturin-1.13.3.tar.gz</a>

-   Download MD5 sum: dd56fa57f2b0cca75d09b840f2688126

-   Download size: 744 KB

-   Estimated disk space required: 509 MB (add 3.2 GB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests)
</div>

#### maturin Dependencies

##### Required

<a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> and <a class="xref" href="python-dependencies.md#setuptools_rust" title="setuptools_rust-1.12.0">setuptools_rust-1.12.0</a>

##### Optional

<a class="xref" href="patchelf.md" title="Patchelf-0.18.0">patchelf-0.18.0</a> and <a class="ulink" href="https://ziglang.org/">zig</a>

##### Optional (for testing)

<a class="ulink" href="https://pypi.org/project/cffi/">cffi</a>, <a class="ulink" href="https://pypi.org/project/pycparser/">pycparser</a>, and <a class="ulink" href="https://pypi.org/project/virtualenv/">virtualenv</a>
</div>

<div class="installation" lang="en">
### Installation of maturin {#installation-of-maturin}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user maturin
```

To test the installation, issue:

```bash
python3 -m venv --system-site-packages testenv     &&
testenv/bin/pip3 install cffi pycparser virtualenv &&
PATH=$PWD/testenv/bin:$PATH cargo test
```

One test, <code class="filename">module_writer::mock_writer::write_dist_info_uses_license_file_sources</code>, is known to fail.
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
**Installed Programs:** <span class="segbody">maturin</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/maturin and /usr/lib/python3.14/site-packages/maturin-1.13.3.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ------------------------------------------------------------------------------------------------
  <a id="maturin-prog"></a><span class="command"><span class="term"><strong>maturin</strong></span></span>   builds crates with pyo3, cffi, and uniffi bindings as well as rust binaries as Python packages
  --------------------------------------------------- ------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Markdown-3.10.2 {#markdown-3.10.2}

<div class="package" lang="en">
### Introduction to Markdown Module {#introduction-to-markdown-module}

<span class="application">Markdown</span> is a Python parser for John Gruber's Markdown specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/M/Markdown/markdown-3.10.2.tar.gz">https://files.pythonhosted.org/packages/source/M/Markdown/markdown-3.10.2.tar.gz</a>

-   Download MD5 sum: ec7bae2cc261dcb2c9a27271b60d40d4

-   Download size: 364 KB

-   Estimated disk space required: 21 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Markdown Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a>, and <a class="ulink" href="https://pypi.org/project/coverage/">coverage</a>
</div>

<div class="installation" lang="en">
### Installation of Markdown {#installation-of-markdown}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Markdown
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a> are installed and the other optional dependency is not, the installation can be tested with:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install coverage                          &&
python3 /usr/bin/pytest --ignore=tests/test_syntax/extensions/test_md_in_html.py
deactivate
```

The instructions above skip the <code class="filename">test_md_in_html</code> test because it is incompatible with pytest-9.0 and later. One test, <code class="filename">test_apis.py::TestConvertFile::testFileNames</code>, will output a deprecation warning because of Python 3.14.
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
**Installed Programs:** <span class="segbody">markdown_py</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/markdown and /usr/lib/python3.14/site-packages/Markdown-3.10.2.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------
  <a id="markdown_py"></a><span class="command"><span class="term"><strong>markdown_py</strong></span></span>   converts markdown files to (x)html
  ------------------------------------------------------ ------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Meson_python-0.19.0 {#meson_python-0.19.0}

<div class="package" lang="en">
### Introduction to Meson_python Module {#introduction-to-meson_python-module}

The <span class="application">Meson_python</span> module contains a Python build backend (PEP 517) for Meson projects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/m/meson_python/meson_python-0.19.0.tar.gz">https://files.pythonhosted.org/packages/source/m/meson_python/meson_python-0.19.0.tar.gz</a>

-   Download MD5 sum: 36c0a47464398008ea3939bbef334f31

-   Download size: 100 KB

-   Estimated disk space required: 104 MB (with tests)

-   Estimated build time: less than 0.1 SBU
</div>

#### Meson_python Dependencies

##### Required

<a class="xref" href="python-dependencies.md#pyproject-metadata" title="Pyproject-Metadata-0.11.0">pyproject-metadata-0.11.0</a>

##### Recommended (Runtime)

<a class="xref" href="patchelf.md" title="Patchelf-0.18.0">patchelf-0.18.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a>, <a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, and <a class="ulink" href="https://pypi.org/project/pytest-mock/">pytest-mock</a>
</div>

<div class="installation" lang="en">
### Installation of Meson_python {#installation-of-meson_python}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user meson_python
```

To test the installation, make sure <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="patchelf.md" title="Patchelf-0.18.0">patchelf-0.18.0</a>, and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> are installed, then issue (<code class="literal">HOME=</code> prevents the <code class="filename">.gitconfig</code> file in the home directory from interfering the tests):

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group=test          &&
HOME= testenv/bin/python -m pytest
```
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

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/meson_python and /usr/lib/python3.14/site-packages/meson_python-0.19.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Msgpack-1.1.2 {#msgpack-1.1.2}

<div class="package" lang="en">
### Introduction to Msgpack Module {#introduction-to-msgpack-module}

<span class="application">Msgpack</span> is an efficient binary serialization format. It lets you exchange data among multiple languages like JSON. But it's faster and smaller. This package provides CPython bindings for reading and writing Msgpack data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/m/msgpack/msgpack-1.1.2.tar.gz">https://files.pythonhosted.org/packages/source/m/msgpack/msgpack-1.1.2.tar.gz</a>

-   Download MD5 sum: b69973fa3325abdced4051f5ef3847d3

-   Download size: 172 KB

-   Estimated disk space required: 4.1 MB (add 0.3 MB for tests)

-   Estimated build time: less than 0.1 SBU
</div>

#### Msgpack Dependencies

##### Required

<a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Msgpack {#installation-of-msgpack}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user msgpack
```

To test the installation issue <span class="command"><strong>pytest</strong></span>.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/msgpack-1.1.2.dist-info and /usr/lib/python3.14/site-packages/msgpack</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pathspec-1.0.4 {#pathspec-1.0.4}

<div class="package" lang="en">
### Introduction to Pathspec Module {#introduction-to-pathspec-module}

<span class="application">Pathspec</span> is a utility library for pattern matching of file paths.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pathspec/pathspec-1.0.4.tar.gz">https://files.pythonhosted.org/packages/source/p/pathspec/pathspec-1.0.4.tar.gz</a>

-   Download MD5 sum: 18d9e6adb72e544b56a88c3e53094b4e

-   Download size: 128 KB

-   Estimated disk space required: 2.3 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Pathspec Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Pathspec {#installation-of-pathspec}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pathspec
```

To test the installation, issue <span class="command"><strong>pytest</strong></span>.
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

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pathspec and /usr/lib/python3.14/site-packages/pathspec-1.0.4.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pluggy-1.6.0 {#pluggy-1.6.0}

<div class="package" lang="en">
### Introduction to Pluggy Module {#introduction-to-pluggy-module}

The <span class="application">Pluggy</span> package gives users the ability to extend or modify the behaviour of a host program by installing a plugin for that program. The plugin code will run as part of normal program execution, changing or enhancing certain aspects of it. In essence, <span class="application">pluggy</span> enables function hooking so a user can build <span class="quote">“<span class="quote">pluggable</span>”</span> systems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pluggy/pluggy-1.6.0.tar.gz">https://files.pythonhosted.org/packages/source/p/pluggy/pluggy-1.6.0.tar.gz</a>

-   Download MD5 sum: 54391218af778acb006c2d915085d469

-   Download size: 68 KB

-   Estimated disk space required: 588 KB (add 18 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Pluggy Dependencies

##### Recommended

<a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Pluggy {#installation-of-pluggy}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pluggy
```

To test the installation, issue: <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-19}

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
### Contents {#contents-19}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pluggy and /usr/lib/python3.14/site-packages/pluggy-1.6.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pyproject_Hooks-1.2.0 {#pyproject_hooks-1.2.0}

<div class="package" lang="en">
### Introduction to Pyproject_Hooks Module {#introduction-to-pyproject_hooks-module}

<span class="application">Pyproject_Hooks</span> is a low-level library for calling build-backends in <code class="filename">pyproject.toml</code>-based projects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pyproject-hooks/pyproject_hooks-1.2.0.tar.gz">https://files.pythonhosted.org/packages/source/p/pyproject-hooks/pyproject_hooks-1.2.0.tar.gz</a>

-   Download MD5 sum: ed3dd1b984339e83e35f676d7169c192

-   Download size: 19 KB

-   Estimated disk space required: 520 KB (14 MB with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Pyproject_Hooks Dependencies

##### Optional (for tests)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/testpath/">testpath</a>
</div>

<div class="installation" lang="en">
### Installation of Pyproject_Hooks {#installation-of-pyproject_hooks}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pyproject_hooks
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependency is not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install testpath                          &&
python3 -m pytest
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pyproject_hooks and /usr/lib/python3.14/site-packages/pyproject_hooks-1.2.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pyproject-Metadata-0.11.0 {#pyproject-metadata-0.11.0}

<div class="package" lang="en">
### Introduction to Pyproject-Metadata Module {#introduction-to-pyproject-metadata-module}

The <span class="application">Pyproject-Metadata</span> module contains a data class for PEP 621 metadata with support for <span class="quote">“<span class="quote">core metadata</span>”</span> (PEP 643) generation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pyproject-metadata/pyproject_metadata-0.11.0.tar.gz">https://files.pythonhosted.org/packages/source/p/pyproject-metadata/pyproject_metadata-0.11.0.tar.gz</a>

-   Download MD5 sum: f5f54a0951177667dfd7eefdfaa11372

-   Download size: 44 KB

-   Estimated disk space required: 700 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Pyproject-Metadata Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="https://pypi.org/project/exceptiongroup/">exceptiongroup</a>
</div>

<div class="installation" lang="en">
### Installation of Pyproject-Metadata {#installation-of-pyproject-metadata}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pyproject-metadata
```

To test the installation, make sure <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed and run:

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install exceptiongroup        &&
testenv/bin/python3 -m pytest
```
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
### Contents {#contents-21}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pyproject_metadata and /usr/lib/python3.14/site-packages/pyproject_metadata-0.11.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Pytz-2025.2 {#pytz-2025.2}

<div class="package" lang="en">
### Introduction to Pytz Module {#introduction-to-pytz-module}

The <span class="application">Pytz</span> library brings the IANA tz database into Python. It allows accurate and cross-platform timezone calculations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/p/pytz/pytz-2025.2.tar.gz">https://files.pythonhosted.org/packages/source/p/pytz/pytz-2025.2.tar.gz</a>

-   Download MD5 sum: 6a7760c71e38b6c75577b34b18b89d5b

-   Download size: 316 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Pytz dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Pytz {#installation-of-pytz}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user pytz
```

To test the installation, run <span class="command"><strong>pytest</strong></span>. A few warnings are issued.
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

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-22}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/pytz and /usr/lib/python3.14/site-packages/pytz-2025.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Roman-numerals-4.1.0 {#roman-numerals-4.1.0}

<div class="package" lang="en">
### Introduction to Roman-numerals Module {#introduction-to-roman-numerals-module}

<span class="application">Roman-numerals</span> is a python library for manipulating well-formed Roman numerals.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/r/roman-numerals/roman_numerals-4.1.0.tar.gz">https://files.pythonhosted.org/packages/source/r/roman-numerals/roman_numerals-4.1.0.tar.gz</a>

-   Download MD5 sum: 0154d3518651ec46fb0ad1dfbdf86348

-   Download size: 12 KB

-   Estimated disk space required: 320 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Roman-numerals Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Roman-numerals {#installation-of-roman-numerals}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user roman-numerals
```

To test the installation, issue: <span class="command"><strong>pytest</strong></span>.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/roman_numerals and /usr/lib/python3.14/site-packages/roman_numerals-4.1.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## semantic_version-2.10.0 {#semantic_version-2.10.0}

<div class="package" lang="en">
### Introduction to the semantic_version Module {#introduction-to-the-semantic_version-module}

The <span class="application">semantic_version</span> module brings a small library to handle the standard for <a class="ulink" href="http://semver.org/">Semantic Versioning</a> in Python.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/semantic_version/semantic_version-2.10.0.tar.gz">https://files.pythonhosted.org/packages/source/s/semantic_version/semantic_version-2.10.0.tar.gz</a>

-   Download MD5 sum: e48abef93ba69abcd4eaf4640edfc38b

-   Download size: 52 KB

-   Estimated disk space required: 656 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### semantic_version Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="ulink" href="http://www.djangoproject.com/">Django</a>
</div>

<div class="installation" lang="en">
### Installation of semantic_version {#installation-of-semantic_version}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user semantic_version
```

To test the installation, run <span class="command"><strong>pytest</strong></span>. There are 500+ warnings issued due to deprecated syntax with newer versions of Python.
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
### Contents {#contents-24}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/semantic_version and /usr/lib/python3.14/site-packages/semantic_version-2.10.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## setuptools_rust-1.12.0 {#setuptools_rust-1.12.0}

<div class="package" lang="en">
### Introduction to the setuptools_rust Module {#introduction-to-the-setuptools_rust-module}

The <span class="application">setuptools_rust</span> module provides a plugin to setuptools allowing for the compilation of Python extensions in Rust.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/setuptools_rust/setuptools_rust-1.12.0.tar.gz">https://files.pythonhosted.org/packages/source/s/setuptools_rust/setuptools_rust-1.12.0.tar.gz</a>

-   Download MD5 sum: 6ecee3d9f3ac646a52d60155022fd0d0

-   Download size: 304 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### setuptools_rust Dependencies

##### Required

<a class="xref" href="python-dependencies.md#semantic_version" title="semantic_version-2.10.0">semantic_version-2.10.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of setuptools_rust {#installation-of-setuptools_rust}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user setuptools_rust
```

To test the installation, issue: <span class="command"><strong>pytest --doctest-modules setuptools_rust tests</strong></span>. One warning will be present about an API deprecation.
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
### Contents {#contents-25}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/setuptools_rust and /usr/lib/python3.14/site-packages/setuptools_rust-1.12.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Setuptools_scm-9.2.2 {#setuptools_scm-9.2.2}

<div class="package" lang="en">
### Introduction to Setuptools_scm Module {#introduction-to-setuptools_scm-module}

The <span class="application">Setuptools_scm</span> package is used to extract Python package versions from git or hg metadata instead of declaring them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/setuptools_scm/setuptools_scm-9.2.2.tar.gz">https://files.pythonhosted.org/packages/source/s/setuptools_scm/setuptools_scm-9.2.2.tar.gz</a>

-   Download MD5 sum: 72975fc3ec40a1ae06bb2d86ca8ac48d

-   Download size: 200 KB

-   Estimated disk space required: 1.6 MB (add 75 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
</div>

#### Setuptools_scm Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="mercurial.md" title="Mercurial-7.2.2">mercurial-7.2.2</a>, <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a>, <a class="ulink" href="https://pypi.org/project/pytest-timeout/">pytest-timeout</a>, <a class="ulink" href="https://pypi.org/project/rich/">rich</a>, <a class="ulink" href="https://pypi.org/project/ruff/">ruff</a>, <a class="ulink" href="https://pypi.org/project/mypy/">mypy</a>, <a class="ulink" href="https://pypi.org/project/griffe/">griffe</a>, and <a class="ulink" href="https://pypi.org/project/flake8/">flake8</a>
</div>

<div class="installation" lang="en">
### Installation of Setuptools_scm {#installation-of-setuptools_scm}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user setuptools_scm
```

To test the installation, make sure <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and the other optional dependencies are installed and run (<code class="literal">HOME=</code> prevents the <code class="filename">.gitconfig</code> file in the home directory from interfering the tests):

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group test          &&
TZ=UTC HOME= testenv/bin/python3 -m pytest
```

If <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> and/or <a class="xref" href="mercurial.md" title="Mercurial-7.2.2">mercurial-7.2.2</a> are not installed, the tests depending on the missing one(s) will be skipped. Some tests may invoke <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> and request a password.
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

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-26}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/setuptools_scm and /usr/lib/python3.14/site-packages/setuptools_scm-9.2.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Smartypants-2.0.2 {#smartypants-2.0.2}

<div class="package" lang="en">
### Introduction to Smartypants Module {#introduction-to-smartypants-module}

<span class="application">Smartypants</span> translates plain ASCII punctuation characters into <span class="quote">“<span class="quote">smart</span>”</span> typographic punctuation HTML entities.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/smartypants/smartypants-2.0.2.tar.gz">https://files.pythonhosted.org/packages/source/s/smartypants/smartypants-2.0.2.tar.gz</a>

-   Download MD5 sum: 3149badecd0771c80ee9db4d09695edd

-   Download size: 17 KB

-   Estimated disk space required: 344 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Smartypants Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Smartypants {#installation-of-smartypants}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user smartypants
```

To test the results, issue:

```bash
cp /usr/bin/smartypants . &&
pytest
```

One test, <code class="filename">SetupTestCase::test_long_description</code>, is known to print a warning about upcoming changes in docutils.
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
### Contents {#contents-27}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">smartypants</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/smartypants-2.0.2.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------
  <a id="smartypants-prog"></a><span class="command"><span class="term"><strong>smartypants</strong></span></span>   translates ASCII punctuation to HTML punctuation.
  ----------------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Snowballstemmer-3.0.1 {#snowballstemmer-3.0.1}

<div class="package" lang="en">
### Introduction to Snowballstemmer Module {#introduction-to-snowballstemmer-module}

The <span class="application">Snowballstemmer</span> package is a small string processing language for creating stemming algorithms for use in Information Retrieval, plus a collection of stemming algorithms implemented using it. Stemming maps different forms of the same word to a common <span class="quote">“<span class="quote">stem</span>”</span> — for example, the English stemmer maps <span class="emphasis"><em>connection</em></span>, <span class="emphasis"><em>connections</em></span>, <span class="emphasis"><em>connective</em></span>, <span class="emphasis"><em>connected</em></span>, and <span class="emphasis"><em>connecting</em></span> to <span class="emphasis"><em>connect</em></span>. Running a search for <span class="emphasis"><em>connected</em></span> would also find documents which only have the other forms.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/snowballstemmer/snowballstemmer-3.0.1.tar.gz">https://files.pythonhosted.org/packages/source/s/snowballstemmer/snowballstemmer-3.0.1.tar.gz</a>

-   Download MD5 sum: 25a584cc4898a0833f9b4c059685672c

-   Download size: 104 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of Snowballstemmer {#installation-of-snowballstemmer}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user snowballstemmer
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
### Contents {#contents-28}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/snowballstemmer and /usr/lib/python3.14/site-packages/snowballstemmer-3.0.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-applehelp-2.0.0 {#sphinxcontrib-applehelp-2.0.0}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-applehelp Module {#introduction-to-sphinxcontrib-applehelp-module}

The <span class="application">Sphinxcontrib-applehelp</span> package is a <span class="application">Sphinx</span> extension which outputs Apple help books.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-applehelp/sphinxcontrib_applehelp-2.0.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-applehelp/sphinxcontrib_applehelp-2.0.0.tar.gz</a>

-   Download MD5 sum: e16bb1d6199f686d411c180e64a8e831

-   Download size: 20 KB

-   Estimated disk space required: 1.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU
</div>

#### Sphinxcontrib-applehelp Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency)
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-applehelp {#installation-of-sphinxcontrib-applehelp}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-applehelp
```

To test the installation, run <span class="command"><strong>pytest</strong></span>.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_applehelp-2.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-devhelp-2.0.0 {#sphinxcontrib-devhelp-2.0.0}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-devhelp Module {#introduction-to-sphinxcontrib-devhelp-module}

The <span class="application">Sphinxcontrib-devhelp</span> package is a <span class="application">Sphinx</span> extension which outputs <a class="ulink" href="https://wiki.gnome.org/Apps/Devhelp">Devhelp</a> documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-devhelp/sphinxcontrib_devhelp-2.0.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-devhelp/sphinxcontrib_devhelp-2.0.0.tar.gz</a>

-   Download MD5 sum: 79ef5937b8397f724f4fb065073cd24c

-   Download size: 16 KB

-   Estimated disk space required: 984 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Sphinxcontrib-devhelp Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency)
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-devhelp {#installation-of-sphinxcontrib-devhelp}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-devhelp
```

To test the installation, run <span class="command"><strong>pytest</strong></span>.

The test suite will print a warning about upcoming changes in sphinx-11.
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

<code class="option">--upgrade</code>: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

<code class="option">--force-reinstall</code>: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

<code class="option">--no-deps</code>: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
</div>

<div class="content" lang="en">
### Contents {#contents-30}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_devhelp-2.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-htmlhelp-2.1.0 {#sphinxcontrib-htmlhelp-2.1.0}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-htmlhelp Module {#introduction-to-sphinxcontrib-htmlhelp-module}

The <span class="application">Sphinxcontrib-htmlhelp</span> package is a <span class="application">Sphinx</span> extension which renders HTML help files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-htmlhelp/sphinxcontrib_htmlhelp-2.1.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-htmlhelp/sphinxcontrib_htmlhelp-2.1.0.tar.gz</a>

-   Download MD5 sum: 1326f55f6bea49ab6a846c0088bc369e

-   Download size: 24 KB

-   Estimated disk space required: 1.2 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Sphinxcontrib-htmlhelp Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency), and <a class="xref" href="python-modules.md#html5lib" title="html5lib-1.1">html5lib-1.1</a>
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-htmlhelp {#installation-of-sphinxcontrib-htmlhelp}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-htmlhelp
```

If the optional dependencies are installed, the package can be tested with the following commands. The first command fixes a problem with removed API in Sphinx.

```bash
sed -i 's/keyword/pair: keyword;/' tests/roots/test-chm/index.rst &&
pytest
```

The tests will output a deprecation notice about upcoming changes in sphinx-11.x.
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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_htmlhelp-2.1.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-jquery-4.1 {#sphinxcontrib-jquery-4.1}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-jquery Module {#introduction-to-sphinxcontrib-jquery-module}

The <span class="application">Sphinxcontrib-jquery</span> package is a <span class="application">Sphinx</span> extension which includes jQuery on newer Sphinx releases.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jquery/sphinxcontrib-jquery-4.1.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jquery/sphinxcontrib-jquery-4.1.tar.gz</a>

-   Download MD5 sum: 46ea52845b17343ed6c61e6963fb265d

-   Download size: 120 KB

-   Estimated disk space required: 552 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Sphinxcontrib-jquery Dependencies

##### Required

<a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-jquery {#installation-of-sphinxcontrib-jquery}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-jquery
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-32}

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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_jquery-4.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-jsmath-1.0.1 {#sphinxcontrib-jsmath-1.0.1}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-jsmath Module {#introduction-to-sphinxcontrib-jsmath-module}

The <span class="application">Sphinxcontrib-jsmath</span> package is a <span class="application">Sphinx</span> extension which renders display math in HTML via JavaScript.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jsmath/sphinxcontrib-jsmath-1.0.1.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jsmath/sphinxcontrib-jsmath-1.0.1.tar.gz</a>

-   Download MD5 sum: e45179f0a3608b6766862e0f34c23b62

-   Download size: 5.7 KB

-   Estimated disk space required: 324 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch</a>
</div>

#### Sphinxcontrib-jsmath Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency)
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-jsmath {#installation-of-sphinxcontrib-jsmath}

First, fix several incompatibilities with Sphinx-9.1 and pytest-9.0.2:

```bash
patch -Np1 -i ../sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-jsmath
```

The installation can be tested with the following command:

```bash
pytest
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-33}

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
### Contents {#contents-33}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_jsmath-1.0.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-qthelp-2.0.0 {#sphinxcontrib-qthelp-2.0.0}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-qthelp Module {#introduction-to-sphinxcontrib-qthelp-module}

The <span class="application">Sphinxcontrib-qthelp</span> package is a <span class="application">Sphinx</span> extension which outputs QtHelp documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib-qthelp/sphinxcontrib_qthelp-2.0.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib-qthelp/sphinxcontrib_qthelp-2.0.0.tar.gz</a>

-   Download MD5 sum: ed4f32003b71a54ac3d68aa651cb6573

-   Download size: 20 KB

-   Estimated disk space required: 18 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Sphinxcontrib-qthelp Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency), and <a class="ulink" href="https://pypi.org/project/defusedxml/">defusedxml</a>
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-qthelp {#installation-of-sphinxcontrib-qthelp}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-qthelp
```

The installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install defusedxml            &&
testenv/bin/python -m pytest
```

The test suite will print warnings about upcoming changes in Sphinx.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-34}

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
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_qthelp-2.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sphinxcontrib-serializinghtml-2.0.0 {#sphinxcontrib-serializinghtml-2.0.0}

<div class="package" lang="en">
### Introduction to Sphinxcontrib-serializinghtml Module {#introduction-to-sphinxcontrib-serializinghtml-module}

The <span class="application">Sphinxcontrib-serializinghtml</span> package is a <span class="application">Sphinx</span> extension which outputs <span class="quote">“<span class="quote">serialized</span>”</span> HTML files (json and pickle).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/s/sphinxcontrib_serializinghtml/sphinxcontrib_serializinghtml-2.0.0.tar.gz">https://files.pythonhosted.org/packages/source/s/sphinxcontrib_serializinghtml/sphinxcontrib_serializinghtml-2.0.0.tar.gz</a>

-   Download MD5 sum: b536ce248d5ca134a30018692a17c6ca

-   Download size: 16 KB

-   Estimated disk space required: 1.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Sphinxcontrib-serializinghtml Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (circular dependency)
</div>

<div class="installation" lang="en">
### Installation of Sphinxcontrib-serializinghtml {#installation-of-sphinxcontrib-serializinghtml}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user sphinxcontrib-serializinghtml
```

To test the installation, first install <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, then run <span class="command"><strong>pytest</strong></span>. The test suite will print two warnings about upcoming changes in Sphinx.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-35}

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
### Contents {#contents-35}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_serializinghtml-2.0.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Trove-Classifiers-2026.1.14.14 {#trove-classifiers-2026.1.14.14}

<div class="package" lang="en">
### Introduction to Trove-Classifiers Module {#introduction-to-trove-classifiers-module}

<span class="application">Trove-Classifiers</span> is a Python library to encompass all valid PyPI classifiers used to categorize projects and releases per PEP 301, for example <code class="literal">Topic :: System :: Filesystems</code> and <code class="literal">Development Status :: 6 - Mature</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/t/trove_classifiers/trove_classifiers-2026.1.14.14.tar.gz">https://files.pythonhosted.org/packages/source/t/trove_classifiers/trove_classifiers-2026.1.14.14.tar.gz</a>

-   Download MD5 sum: ded610aa62cf3dc78360e96802ca72e8

-   Download size: 20 KB

-   Estimated disk space required: 540 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Trove-Classifiers Dependencies

##### Optional (for testing)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>
</div>

<div class="installation" lang="en">
### Installation of Trove-Classifiers {#installation-of-trove-classifiers}

First, hard code the package version into <code class="filename">setup.py</code> to work around an issue causing the generated wheel to contain an incorrect version string when the <span class="application">calver</span> module is not installed:

```bash
sed -i '/calver/s/^/#/;$iversion="2026.1.14.14"' setup.py
```

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user trove-classifiers
```

To test the installation, issue: <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-36}

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
### Contents {#contents-36}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/trove_classifiers and /usr/lib/python3.14/site-packages/trove_classifiers-2026.1.14.14.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Typogrify-2.1.0 {#typogrify-2.1.0}

<div class="package" lang="en">
### Introduction to Typogrify Module {#introduction-to-typogrify-module}

<span class="application">Typogrify</span> provides filters to enhance web typography, including support for Django and Jinja templates.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/t/typogrify/typogrify-2.1.0.tar.gz">https://files.pythonhosted.org/packages/source/t/typogrify/typogrify-2.1.0.tar.gz</a>

-   Download MD5 sum: 7cc9a0a1de988329add3982519dc7971

-   Download size: 13 KB

-   Estimated disk space required: 404 KB

-   Estimated build time: less than 0.1 SBU
</div>

#### Typogrify Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatchling" title="Hatchling-1.28.0">hatchling-1.28.0</a> and <a class="xref" href="python-dependencies.md#smartypants" title="Smartypants-2.0.2">smartypants-2.0.2</a>
</div>

<div class="installation" lang="en">
### Installation of Typogrify {#installation-of-typogrify}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user typogrify
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-37}

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
### Contents {#contents-37}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/typogrify and /usr/lib/python3.14/site-packages/typogrify-2.1.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## Urllib3-2.7.0 {#urllib3-2.7.0}

<div class="package" lang="en">
### Introduction to Urllib3 Module {#introduction-to-urllib3-module}

The <span class="application">Urllib3</span> module is a powerful, user-friendly HTTP client for Python. It brings many critical features that are missing from the Python standard libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.7.0.tar.gz">https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.7.0.tar.gz</a>

-   Download MD5 sum: e79707b798a66c8165c9c441440f4e80

-   Download size: 424 KB

-   Estimated disk space required: 3.5 MB (add 123 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.6 SBU for tests)
</div>

#### Urllib3 Dependencies

##### Required

<a class="xref" href="python-dependencies.md#hatch-vcs" title="Hatch_vcs-0.5.0">hatch_vcs-0.5.0</a>

##### Optional (for tests)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.org/project/httpx/">httpx</a>, <a class="ulink" href="https://pypi.org/project/Hypercorn/">hypercorn</a>, <a class="ulink" href="https://pypi.org/project/mock/">mock</a>, <a class="ulink" href="https://pypi.org/project/PySocks/">PySocks</a>, <a class="ulink" href="https://pypi.org/project/pytest-timeout/">pytest-timeout</a>, <a class="ulink" href="https://pypi.org/project/python-dateutil/">python-dateutil</a>, <a class="ulink" href="https://pypi.org/project/Quart/">quart</a>, <a class="ulink" href="https://pypi.org/project/quart-trio/">quart-trio</a>, <a class="ulink" href="https://pypi.org/project/tornado/">tornado</a>, <a class="ulink" href="https://pypi.org/project/trio/">trio</a>, and <a class="ulink" href="https://pypi.org/project/trustme/">trustme</a>
</div>

<div class="installation" lang="en">
### Installation of Urllib3 {#installation-of-urllib3}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user urllib3
```

Assuming <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install --group dev                       &&
python3 /usr/bin/pytest --timeout 10
deactivate
```

At least 46 failures are expected with the instructions above. There are several reasons. First, upstream uses a patched version of the hypercorn module for their own testing, that can only be obtained through <span class="command"><strong>git</strong></span> at <a class="ulink" href="https://github.com/urllib3/hypercorn.git">https://github.com/urllib3/hypercorn.git</a>, at revision <span class="quote">“<span class="quote">urllib3-changes</span>”</span>, and should be installed first in the virtual environment. Second, it seems the test suite has not been adapted to recent versions of Python, and to recent versions of the external Python modules. In particular, some tests will hang, so <span class="command"><strong>pytest</strong></span> needs the *`--timeout`* switch.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tests are currently broken with OpenSSL-4 as the pyopenssl module that is downloaded and installed into the virtual environment has not been adjusted for changes required by OpenSSL-4.
</div>
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-38}

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
### Contents {#contents-38}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/urllib3 and /usr/lib/python3.14/site-packages/urllib3-2.7.0.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## uv_build-0.10.2 {#uv_build-0.10.2}

<div class="package" lang="en">
### Introduction to the uv_build Module {#introduction-to-the-uv_build-module}

The <span class="application">uv_build</span> module provides the PEP 517 build backend from the 'uv' Python package management system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/u/uv_build/uv_build-0.10.2.tar.gz">https://files.pythonhosted.org/packages/source/u/uv_build/uv_build-0.10.2.tar.gz</a>

-   Download MD5 sum: 93b4a0baf7b84d97cb8750d742ef164a

-   Download size: 328 KB

-   Estimated disk space required: 356 MB

-   Estimated build time: 0.9 SBU
</div>

#### uv_build Dependencies

##### Required

<a class="xref" href="python-dependencies.md#maturin" title="maturin-1.13.3">maturin-1.13.3</a>
</div>

<div class="installation" lang="en">
### Installation of uv_build {#installation-of-uv_build}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user uv_build
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-39}

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
### Contents {#contents-39}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">uv_build</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/uv_build and /usr/lib/python3.14/site-packages/uv_build-0.10.2.dist-info</span>
</div>
</div>
</div>
</div>
</div>

<div class="sect2" lang="en">
## webencodings-0.5.1 {#webencodings-0.5.1}

<div class="package" lang="en">
### Introduction to Webencodings Module {#introduction-to-webencodings-module}

The <span class="application">webencodings</span> module is a Python implementation of the <a class="ulink" href="https://encoding.spec.whatwg.org/">WHATWG Encoding standard</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.pythonhosted.org/packages/source/w/webencodings/webencodings-0.5.1.tar.gz">https://files.pythonhosted.org/packages/source/w/webencodings/webencodings-0.5.1.tar.gz</a>

-   Download MD5 sum: 32f6e261d52e57bf7e1c4d41546d15b8

-   Download size: 12 KB

-   Estimated disk space required: 164 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
### Installation of webencodings {#installation-of-webencodings}

Build the module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user webencodings
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-40}

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
### Contents {#contents-40}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/webencodings and /usr/lib/python3.14/site-packages/webencodings-0.5.1.dist-info</span>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](python-modules.md "Python Modules")

    Python Modules

-   [Next](ruby.md "Ruby-4.0.5")

    Ruby-4.0.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
