::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python311.md "Python-3.11.1"){accesskey="p"}

    Python-3.11.1

-   [Next](python-dependencies.md "Python Dependencies"){accesskey="n"}

    Python Dependencies

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#python-modules}Python Modules {#python-modules .sect1}

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Python Modules {#introduction-to-python-modules .sect2}

The [Python]{.application} module packages add useful objects to the [Python]{.application} language. Modules utilized by packages throughout BLFS are listed here, along with their dependencies.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

In BLFS, we normally build and install Python 3 modules with [**pip3**]{.command}. Please take care that the [**pip3 install**]{.command} commands in the book should be run as `root`{.systemitem} unless it's for a Python virtual environment. Running [**pip3 install**]{.command} as a non-`root`{.systemitem} user may seem to work fine, but it will cause the installed module to be inaccessible by other users.

[**pip3 install**]{.command} will not reinstall an already installed module by default. For using the [**pip3 install**]{.command} command to upgrade a module (for example, from meson-0.61.3 to meson-0.62.0), insert *`--upgrade`* into the command line. If it's really necessary to downgrade a module or reinstall the same version for some reason, insert *`--force-reinstall`* into the command line.

If you have installed [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before and have copied files from /etc/profile.d to a new system, you must install make-ca first prior to installing any Python modules from this page.
:::

::: itemizedlist
-   [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}

-   [blueprint-compiler-0.20.4](python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}

-   [build-1.5.0](python-modules.md#pypa-build "build-1.5.0"){.xref}

-   [cachecontrol-0.14.4](python-modules.md#cachecontrol "cachecontrol-0.14.4"){.xref}

-   [cssselect-1.4.0](python-modules.md#cssselect "CSSSelect-1.4.0"){.xref}

-   [cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref}

-   [dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref}

-   [D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref}

-   [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}

-   [doxypypy-0.8.8.7](python-modules.md#doxypypy "Doxypypy-0.8.8.7"){.xref}

-   [doxyqml-0.5.3](python-modules.md#doxyqml "Doxyqml-0.5.3"){.xref}

-   [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}

-   [html5lib-1.1](python-modules.md#html5lib "html5lib-1.1"){.xref}

-   [lxml-6.1.1](python-modules.md#lxml "lxml-6.1.1"){.xref}

-   [Mako-1.3.12](python-modules.md#Mako "Mako-1.3.12"){.xref}

-   [NumPy-2.4.6](python-modules.md#numpy "NumPy-2.4.6"){.xref}

-   [psutil-7.2.2](python-modules.md#psutil "psutil-7.2.2"){.xref}

-   [Py3c-1.4](python-modules.md#py3c "Py3c-1.4"){.xref}

-   [PyAtSpi2-2.58.2](python-modules.md#pyatspi2 "PyAtSpi2-2.58.2"){.xref}

-   [PyCairo-1.29.0](python-modules.md#pycairo "PyCairo-1.29.0"){.xref}

-   [pygdbmi-0.11.0.0](python-modules.md#pygdbmi "pygdbmi-0.11.0.0"){.xref}

-   [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}

-   [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

-   [pyparsing-3.3.2](python-modules.md#pyparsing "pyparsing-3.3.2"){.xref}

-   [pySerial-3.5](python-modules.md#pyserial "pySerial-3.5"){.xref}

-   [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}

-   [PyXDG-0.28](python-modules.md#pyxdg "PyXDG-0.28"){.xref}

-   [PyYAML-6.0.3](python-modules.md#PyYAML "PyYAML-6.0.3"){.xref}

-   [recommonmark-0.7.1](python-modules.md#recommonmark "Recommonmark-0.7.1"){.xref}

-   [requests-2.34.2](python-modules.md#requests "Requests-2.34.2"){.xref}

-   [sentry-sdk-2.53.0](python-modules.md#sentry-sdk "sentry-sdk-2.53.0"){.xref}

-   [Scour-0.38.2](python-modules.md#scour "Scour-0.38.2"){.xref}

-   [six-1.17.0](python-modules.md#six "six-1.17.0"){.xref}

-   [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}

-   [sphinx_rtd_theme-3.1.0](python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}
:::
:::::

::::::::::::::: {.sect2 lang="en"}
## []{#asciidoc}Asciidoc-10.2.1 {#asciidoc-10.2.1 .sect2}

::::: {.package lang="en"}
### Introduction to Asciidoc Module {#introduction-to-asciidoc-module .sect3}

The [Asciidoc]{.application} package is a text document format for writing notes, documentation, articles, books, ebooks, slideshows, web pages, man pages and blogs. AsciiDoc files can be translated to many formats including HTML, PDF, EPUB, and man page.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/a/asciidoc/asciidoc-10.2.1.tar.gz](https://files.pythonhosted.org/packages/source/a/asciidoc/asciidoc-10.2.1.tar.gz){.ulink}

-   Download MD5 sum: 460824075b51381a4b5f478c60a18165

-   Download size: 228 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Asciidoc Dependencies

##### Optional (runtime)

[docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref}, [dblatex](https://sourceforge.net/projects/dblatex/){.ulink}, and [W3m](https://w3m.sourceforge.net/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Asciidoc {#installation-of-asciidoc .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user asciidoc
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [a2x and asciidoc]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/asciidoc and /usr/lib/python3.14/site-packages/asciidoc-10.2.1.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#a2x}[[**a2x**]{.command}]{.term}                  is a toolchain manager for AsciiDoc (converts Asciidoc text files to other file formats)
  []{#asciidoc-prog}[[**asciidoc**]{.command}]{.term}   converts an AsciiDoc text file to HTML or DocBook
  ----------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#blueprint-compiler}blueprint-compiler-0.20.4 {#blueprint-compiler-0.20.4 .sect2}

::::: {.package lang="en"}
### Introduction to blueprint-compiler {#introduction-to-blueprint-compiler .sect3}

The [blueprint-compiler]{.application} package contains a compiler for a markup language for GTK user interfaces. This is mostly used with GNOME applications at the moment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/blueprint-compiler/0.20/blueprint-compiler-0.20.4.tar.xz](https://download.gnome.org/sources/blueprint-compiler/0.20/blueprint-compiler-0.20.4.tar.xz){.ulink}

-   Download MD5 sum: 8d7a50f71481ae03049969fe2da79379

-   Download size: 144 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: less than 0.1 SBU
:::

#### blueprint-compiler Dependencies

##### Required

[PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

##### Optional (required to run the tests)

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}

##### Optional (required to build the documentation)

[sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}
:::::

::: {.installation lang="en"}
### Installation of blueprint-compiler {#installation-of-blueprint-compiler .sect3}

Install [blueprint-compiler]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests issue: [**ninja test**]{.command}. The tests need to be run in a graphical environment, and you must have [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} installed.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-1 .sect3}

`-D docs=true`{.option}: Use this option if you have [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} installed and you want to build the documentation.
:::

::::::::: {.content lang="en"}
### Contents {#contents-1 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [blueprint-compiler]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/blueprint-compiler]{.segbody}
:::
::::::
:::::::

::: variablelist
#### Short Descriptions

  ------------------------------------------------------------------------- ----------------------------------------------
  []{#blueprint-compiler-prog}[[**blueprint-compiler**]{.command}]{.term}   compiles blueprints into GTK user interfaces
  ------------------------------------------------------------------------- ----------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#pypa-build}build-1.5.0 {#build-1.5.0 .sect2}

::::: {.package lang="en"}
### Introduction to build {#introduction-to-build .sect3}

[build]{.application} is a Python build frontend implementing the PEP-517 resolution.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/b/build/build-1.5.0.tar.gz](https://files.pythonhosted.org/packages/source/b/build/build-1.5.0.tar.gz){.ulink}

-   Download MD5 sum: acb7ec7d66dc9b44ec25ae8a9c1922fd

-   Download size: 88 KB

-   Estimated disk space required: 1.1 MB (add 128 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.6 SBU (with tests)
:::

#### build Dependencies

##### Required

[pyproject_hooks-1.2.0](python-dependencies.md#pyproject-hooks "Pyproject_Hooks-1.2.0"){.xref}

##### Optional (for tests)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [filelock](https://pypi.org/project/filelock/){.ulink}, [pytest-cov](https://pypi.org/project/pytest-cov/){.ulink}, [pytest-mock](https://pypi.org/project/pytest-mock/){.ulink}, [pytest-rerunfailures](https://pypi.org/project/pytest-rerunfailures/){.ulink}, [pytest-xdist](https://pypi.org/project/pytest-xdist/){.ulink}, [uv](https://pypi.org/project/uv/){.ulink}, and [virtualenv](https://pypi.org/project/virtualenv/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of build {#installation-of-build .sect3}

Build the package with:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user build
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed but the other optional dependencies are not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install --group test                      &&
python3 -m pytest
deactivate
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-2 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-2 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pyproject-build]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/build and /usr/lib/python3.14/site-packages/build-1.5.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------
  []{#pyproject-build}[[**pyproject-build**]{.command}]{.term}   is a simple [Python]{.application} build frontend
  -------------------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#cachecontrol}cachecontrol-0.14.4 {#cachecontrol-0.14.4 .sect2}

::::: {.package lang="en"}
### Introduction to cachecontrol Module {#introduction-to-cachecontrol-module .sect3}

[CacheControl]{.application} is a port of the caching algorithms in httplib2 for use with requests session object. It was written because httplib2's better support for caching is often mitigated by its lack of thread safety. The same is true of requests in terms of caching.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/psf/cachecontrol/archive/v0.14.4/cachecontrol-0.14.4.tar.gz](https://github.com/psf/cachecontrol/archive/v0.14.4/cachecontrol-0.14.4.tar.gz){.ulink}

-   Download MD5 sum: 05c8e0cb39b405094ae1d6cdea337521

-   Download size: 112 KB

-   Estimated disk space required: 348 KB (add 97 MB for the tests)

-   Estimated build time: less than 0.1 SBU
:::

#### CacheControl Dependencies

##### Required

[msgpack-1.1.2](python-dependencies.md#msgpack "Msgpack-1.1.2"){.xref}, [requests-2.34.2](python-modules.md#requests "Requests-2.34.2"){.xref}, and [uv_build-0.10.2](python-dependencies.md#uv_build "uv_build-0.10.2"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [redis](https://pypi.org/project/redis/){.ulink}, [filelock](https://pypi.org/project/filelock/){.ulink}, [CherryPy](https://pypi.org/project/CherryPy/){.ulink}, [cheroot](https://pypi.org/project/cheroot/){.ulink}, [codespell](https://pypi.org/project/codespell/){.ulink}, [furo](https://pypi.org/project/furo/){.ulink}, [mypy](https://pypi.org/project/mypy/){.ulink}, [pytest-cov](https://pypi.org/project/pytest-cov/){.ulink}, [ruff](https://pypi.org/project/ruff/){.ulink}, [sphinx-copybutton](https://pypi.org/project/sphinx-copybutton/){.ulink}, [types-redis](https://pypi.org/project/types-redis/){.ulink}, and [types-requests](https://pypi.org/project/types-requests/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of CacheControl {#installation-of-cachecontrol .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user cachecontrol
```

To run the tests, issue:

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install 'cachecontrol[dev]'   &&
testenv/bin/python3 -m pytest
```

pytest may output a warning about an unraisable exception after the tests are finished. This is expected due to the version of the 'cheroot' module that the tests download.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-3 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-3 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [doesitcache]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/CacheControl-0.14.4.dist-info and /usr/lib/python3.14/site-packages/cachecontrol]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ------------------------------------------------------ -----------------------------------------
  []{#doesitcache}[[**doesitcache**]{.command}]{.term}   is an undocumented command line script.
  ------------------------------------------------------ -----------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#cssselect}CSSSelect-1.4.0 {#cssselect-1.4.0 .sect2}

::::: {.package lang="en"}
### Introduction to CSSSelect Module {#introduction-to-cssselect-module .sect3}

[CSSSelect]{.application} provides CSS selectors for Python.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/c/cssselect/cssselect-1.4.0.tar.gz](https://files.pythonhosted.org/packages/source/c/cssselect/cssselect-1.4.0.tar.gz){.ulink}

-   Download MD5 sum: 3aca561a6fe4e51d2993e0a0f604e30a

-   Download size: 40 KB

-   Estimated disk space required: 1.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### CSSSelect Dependencies

##### Required

[hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref}

##### Optional (for testing)

[lxml-6.1.1](python-modules.md#lxml "lxml-6.1.1"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of CSSSelect {#installation-of-cssselect .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user cssselect
```

To test the installation issue [**pytest**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-4 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-4 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/cssselect]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#cython}Cython-3.2.5 {#cython-3.2.5 .sect2}

::::: {.package lang="en"}
### Introduction to Cython Module {#introduction-to-cython-module .sect3}

The [Cython]{.application} package provides a compiler for writing C extensions for the Python language.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/cython/cython/releases/download/3.2.5/cython-3.2.5.tar.gz](https://github.com/cython/cython/releases/download/3.2.5/cython-3.2.5.tar.gz){.ulink}

-   Download MD5 sum: 1329cfee4ab6b3ec44ee7cd15418d499

-   Download size: 3.2 MB

-   Estimated disk space required: 184 MB

-   Estimated build time: 1.0 SBU
:::

### Cython Dependencies

#### Optional (for tests)

[GDB-17.2](gdb.md "GDB-17.2"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Cython {#installation-of-cython .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Cython
```

This package does come with a test suite, but running it takes a long time (over 40 SBUs). The test suite will print data to the screen though to note to the user that it is still running. To run the tests, issue: [**python3 runtests.py**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-5 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-5 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cygdb, cython, and cythonize]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/Cython, /usr/lib/python3.14/site-packages/Cython-3.2.5.dist-info, and /usr/lib/python3.14/site-packages/pyximport]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  []{#cygdb}[[**cygdb**]{.command}]{.term}           is the Cython debugger
  []{#cython-prog}[[**cython**]{.command}]{.term}    is a compiler for code written in the Cython language. It outputs a C/C++ program which can be compiled with a C/C++ compiler
  []{#cythonize}[[**cythonize**]{.command}]{.term}   is a compiler for code written in the Cython language. It outputs an extension module which is directly importable from Python
  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#python-dbusmock}dbusmock-0.38.1 {#dbusmock-0.38.1 .sect2}

::::: {.package lang="en"}
### Introduction to dbusmock {#introduction-to-dbusmock .sect3}

[dbusmock]{.application} is a Python library useful for writing tests for software which talks to D-Bus services.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/python-dbusmock/python_dbusmock-0.38.1.tar.gz](https://files.pythonhosted.org/packages/source/p/python-dbusmock/python_dbusmock-0.38.1.tar.gz){.ulink}

-   Download MD5 sum: e90b10618f5a0c7f5dcc4d4a56c6ce07

-   Download size: 108 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
:::

#### dbusmock Dependencies

##### Required

[D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref}

##### Optional

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (required to run the test suite), [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (required to run the test suite), [BlueZ-5.86](bluez.md "BlueZ-5.86"){.xref} (optional for the test suite), and [UPower-1.91.2](upower.md "UPower-1.91.2"){.xref} (optional for the test suite; if not installed one test will fail)
:::::

::: {.installation lang="en"}
### Installation of dbusmock {#installation-of-dbusmock .sect3}

Build the package with:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user python-dbusmock
```

To test the results, issue: [**LC_ALL=C pytest**]{.command}. Several warnings about upcoming API changes in later versions of Python are printed during the tests.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-6 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-6 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/dbusmock and /usr/lib/python3.14/site-packages/python_dbusmock-0.38.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#dbus-python}D-Bus Python-1.4.0 {#d-bus-python-1.4.0 .sect2}

::::: {.package lang="en"}
### Introduction to D-Bus Python Module {#introduction-to-d-bus-python-module .sect3}

[D-Bus Python]{.application} provides [Python]{.application} bindings to the [D-Bus]{.application} API interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.4.0.tar.xz](https://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.4.0.tar.xz){.ulink}

-   Download MD5 sum: edca335d1c80f338e3255455eb876b72

-   Download size: 168 KB

-   Estimated disk space required: 1.7 MB

-   Estimated build time: less than 0.1 SBU
:::

#### D-Bus Python Dependencies

##### Required

[dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}, [meson_python-0.19.0](python-dependencies.md#meson_python "Meson_python-0.19.0"){.xref}, and [patchelf-0.18.0](patchelf.md "Patchelf-0.18.0"){.xref}

##### Optional

[PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for tests)
:::::

::: {.installation lang="en"}
### Installation of D-Bus Python {#installation-of-d-bus-python .sect3}

Build the D-Bus Python module by running the following command:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now install the module as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user dbus-python
```

To test the result, issue: [**DBUS_TOP_SRCDIR=\$PWD PYTHON=python3 dbus-run-session test/run-test.sh**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-7 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-7 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/dbus and /usr/lib/python3.14/site-packages/dbus_python-1.4.0.egg-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#docutils}docutils-0.23 {#docutils-0.23 .sect2}

::::: {.package lang="en"}
### Introduction to docutils {#introduction-to-docutils .sect3}

[docutils]{.application} is a set of [Python]{.application} modules and programs for processing plaintext docs into formats such as HTML, XML, or LaTeX.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/d/docutils/docutils-0.23.tar.gz](https://files.pythonhosted.org/packages/source/d/docutils/docutils-0.23.tar.gz){.ulink}

-   Download MD5 sum: 39d10acfd1fc81b87f5de84418b88be9

-   Download size: 2.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of docutils {#installation-of-docutils .sect3}

First, remove some files installed in a previous version that are no longer valid. As the `root`{.systemitem} user:

``` root
for f in /usr/bin/rst*.py; do
  rm -fv /usr/bin/$(basename $f .py)
done
```

To build the [Python 3]{.application} applications, run the following command:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the [Python]{.application} applications run the following as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user docutils
```

To test the installation, issue: [**test/alltests.py**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-8 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-8 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [docutils, rst2html4, rst2html5, rst2html, rst2latex, rst2man, rst2odt, rst2pseudoxml, rst2s5, rst2xetex, and rst2xml]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/docutils{,-0.23.dist-info}]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  []{#docutils-prog}[[**docutils**]{.command}]{.term}                  converts documents into various formats
  []{#rst2html}[[**rst2html**]{.command}]{.term}                       generates (X)HTML documents from standalone reStructuredText sources
  []{#rst2html4}[[**rst2html4**]{.command}]{.term}                     generates (X)HTML documents from standalone reStructuredText sources
  []{#rst2html5}[[**rst2html5**]{.command}]{.term}                     generates HTML5 documents from standalone reStructuredText sources
  []{#rst2latex}[[**rst2latex**]{.command}]{.term}                     generates LaTeX documents from standalone reStructuredText sources
  []{#rst2man}[[**rst2man**]{.command}]{.term}                         generates plain unix manual documents from standalone reStructuredText sources
  []{#rst2odt}[[**rst2odt**]{.command}]{.term}                         generates OpenDocument/OpenOffice/ODF documents from standalone reStructuredText sources
  []{#rst2odt_prepstyles}[[**rst2odt_prepstyles**]{.command}]{.term}   Fix a word-processor-generated styles.odt for odtwriter use
  []{#rst2pseudoxml}[[**rst2pseudoxml**]{.command}]{.term}             generates pseudo-XML from standalone reStructuredText sources (for testing purposes)
  []{#rst2s5}[[**rst2s5**]{.command}]{.term}                           generates S5 (X)HTML slideshow from standalone reStructuredText sources
  []{#rst2xetex}[[**rst2xetex**]{.command}]{.term}                     generates LaTeX documents from standalone reStructuredText sources for compilation with the Unicode-aware TeX variants XeLaTeX or LuaLaTeX
  []{#rst2xml}[[**rst2xml**]{.command}]{.term}                         generates Docutils-native XML from standalone reStructuredText sources
  []{#rstpep2html}[[**rstpep2html**]{.command}]{.term}                 generates (X)HTML from reStructuredText-format PEP files
  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#doxypypy}Doxypypy-0.8.8.7 {#doxypypy-0.8.8.7 .sect2}

::::: {.package lang="en"}
### Introduction to Doxypypy Module {#introduction-to-doxypypy-module .sect3}

The [Doxypypy]{.application} package is a doxygen filter for python.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/d/doxypypy/doxypypy-0.8.8.7.tar.gz](https://files.pythonhosted.org/packages/source/d/doxypypy/doxypypy-0.8.8.7.tar.gz){.ulink}

-   Download MD5 sum: 5773d0a7882df900cbda8ee5107e1ced

-   Download size: 45 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Doxypypy Dependencies

##### Required

[chardet-5.2.0](python-dependencies.md#chardet "Chardet-5.2.0"){.xref} and [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (at run time)
:::::

::: {.installation lang="en"}
### Installation of Doxypypy {#installation-of-doxypypy .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user doxypypy
```

This package does not come with a working test suite.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-9 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-9 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [doxypypy]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/doxypypy and /usr/lib/python3.14/site-packages/doxypypy-0.8.8.7.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  []{#doxypypy-prog}[[**doxypypy**]{.command}]{.term}   filters Python code for use with Doxygen, using a syntax-aware approach.
  ----------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#doxyqml}Doxyqml-0.5.3 {#doxyqml-0.5.3 .sect2}

::::: {.package lang="en"}
### Introduction to Doxyqml Module {#introduction-to-doxyqml-module .sect3}

The [Doxyqml]{.application} package allows using Doxygen to document QML classes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/d/doxyqml/doxyqml-0.5.3.tar.gz](https://files.pythonhosted.org/packages/source/d/doxyqml/doxyqml-0.5.3.tar.gz){.ulink}

-   Download MD5 sum: 3d394a0d896721e27beb62bf032f7f43

-   Download size: 28 KB

-   Estimated disk space required: 652 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Doxyqml Dependencies

##### Required (Run Time)

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Doxyqml {#installation-of-doxyqml .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user doxyqml
```

To test the installation, issue:

``` userinput
python3 tests/functional/tests.py &&
python3 tests/unit/tests.py
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-10 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-10 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [doxyqml]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/doxyqml and /usr/lib/python3.14/site-packages/doxyqml-0.5.3.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  --------------------------------------------------- ------------------------------------------
  []{#doxyqml-prog}[[**doxyqml**]{.command}]{.term}   is a Doxygen input filter for QML files.
  --------------------------------------------------- ------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#gi-docgen}Gi-DocGen-2026.1 {#gi-docgen-2026.1 .sect2}

::::: {.package lang="en"}
### Introduction to Gi-DocGen Module {#introduction-to-gi-docgen-module .sect3}

[Gi-DocGen]{.application} is a document generator for GObject-based libraries. GObject is the base type system of the GNOME project. Gi-DocGen reuses the introspection data generated by GObject-based libraries to generate the API reference of these libraries, as well as other ancillary documentation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/g/gi-docgen/gi_docgen-2026.1.tar.gz](https://files.pythonhosted.org/packages/source/g/gi-docgen/gi_docgen-2026.1.tar.gz){.ulink}

-   Download MD5 sum: 9ef6ef3a1224a4ceb809a59bf1620f58

-   Download size: 2.5 MB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Gi-DocGen Dependencies

##### Required

[Markdown-3.10.2](python-dependencies.md#markdown "Markdown-3.10.2"){.xref}, [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, and [typogrify-2.1.0](python-dependencies.md#typogrify "Typogrify-2.1.0"){.xref}

##### Optional

[Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (runtime, for visualizing class hierarchy graphs) and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (for testing)
:::::

::: {.installation lang="en"}
### Installation of gi-docgen {#installation-of-gi-docgen .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user gi-docgen
```

To test the installation, issue [**pytest**]{.command}. One test in `tests/test_utils.py`{.filename} will fail if the optional dependency [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} is not installed.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-11 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-11 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gi-docgen]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/gidocgen and /usr/lib/python3.14/site-packages/gi_docgen-2026.1.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------
  []{#gi-docgen-prog}[[**gi-docgen**]{.command}]{.term}   manages documentation for libgobject based libraries.
  ------------------------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#html5lib}html5lib-1.1 {#html5lib-1.1 .sect2}

:::::: {.package lang="en"}
### Introduction to html5lib Module {#introduction-to-html5lib-module .sect3}

[html5lib]{.application} provides a pure-python library for parsing HTML. It is designed to conform to the WHATWG HTML specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/h/html5lib/html5lib-1.1.tar.gz](https://files.pythonhosted.org/packages/source/h/html5lib/html5lib-1.1.tar.gz){.ulink}

-   Download MD5 sum: 6748742e2ec4cb99287a6bc82bcfe2b0

-   Download size: 268 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/html5lib-1.1-python_3.14_buildfix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/html5lib-1.1-python_3.14_buildfix-1.patch){.ulink}
:::

#### html5lib Dependencies

##### Required

[six-1.17.0](python-modules.md#six "six-1.17.0"){.xref} and [webencodings-0.5.1](python-dependencies.md#webencodings "webencodings-0.5.1"){.xref}
::::::

::: {.installation lang="en"}
### Installation of html5lib {#installation-of-html5lib .sect3}

First, fix a build failure with Python 3.14 caused by the removal of several methods from the 'ast' module:

``` userinput
patch -Np1 -i ../html5lib-1.1-python_3.14_buildfix-1.patch
```

Next, fix a build failure with setuptools-82.0.0:

``` userinput
sed -i 's/from pkg_resources import/from packaging.version import parse as/' setup.py &&
sed -i 's/import pkg_resources/pkg_resources = None/' setup.py
```

To build the [Python 3]{.application} module, run:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, issue the following command as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user html5lib
```

This package does have a test suite, but it is not functional due to depending on several hardcoded versions of packages that are only usable with Python 3.6.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-12 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-12 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/html5lib and /usr/lib/python3.14/site-packages/html5lib-1.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#lxml}lxml-6.1.1 {#lxml-6.1.1 .sect2}

::::: {.package lang="en"}
### Introduction to lxml Module {#introduction-to-lxml-module .sect3}

[lxml]{.application} provides [Python]{.application} bindings for [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/l/lxml/lxml-6.1.1.tar.gz](https://files.pythonhosted.org/packages/source/l/lxml/lxml-6.1.1.tar.gz){.ulink}

-   Download MD5 sum: 6bbd3674ecba1340b08c9180afef1829

-   Download size: 4.1 MB

-   Estimated disk space required: 134 MB

-   Estimated build time: 0.8 SBU
:::

#### lxml Dependencies

##### Required

[libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}
:::::

::: {.installation lang="en"}
### Installation of lxml {#installation-of-lxml .sect3}

To build the [Python 3]{.application} module, run:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, issue the following command as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user lxml
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-13 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-13 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/lxml and /usr/lib/python3.14/site-packages/lxml-6.1.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::::: {.sect2 lang="en"}
## []{#Mako}Mako-1.3.12 {#mako-1.3.12 .sect2}

:::::: {.package lang="en"}
### Introduction to Mako Module {#introduction-to-mako-module .sect3}

[Mako]{.application} is a [Python]{.application} module that implements hyperfast and lightweight templating for the [Python]{.application} platform.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/M/Mako/mako-1.3.12.tar.gz](https://files.pythonhosted.org/packages/source/M/Mako/mako-1.3.12.tar.gz){.ulink}

-   Download MD5 sum: 92390c7e8897e69da67a593a96e88c71

-   Download size: 392 KB

-   Estimated disk space required: 5.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tarball name has changed from Mako to mako, but still installs the module as Mako.
:::

#### Mako Dependencies

##### Optional (for Testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
::::::

::: {.installation lang="en"}
### Installation of Mako {#installation-of-mako .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the module as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Mako
```

To test the installation, issue [**pytest**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-14 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-14 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mako-render]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/mako and /usr/lib/python3.14/site-packages/Mako-1.3.12.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ------------------------------------------------------ --------------------
  []{#mako-render}[[**mako-render**]{.command}]{.term}   renders a template
  ------------------------------------------------------ --------------------
:::
:::::::::
::::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#numpy}NumPy-2.4.6 {#numpy-2.4.6 .sect2}

::::: {.package lang="en"}
### Introduction to NumPy Module {#introduction-to-numpy-module .sect3}

[NumPy]{.application} is the fundamental package for scientific computing with Python.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/n/numpy/numpy-2.4.6.tar.gz](https://files.pythonhosted.org/packages/source/n/numpy/numpy-2.4.6.tar.gz){.ulink}

-   Download MD5 sum: 2794346c22169a5a103cd117a3f1394f

-   Download size: 20 MB

-   Estimated disk space required: 112 MB (add 34 MB for tests)

-   Estimated build time: 0.6 SBU (add 1.2 SBU for tests)
:::

#### NumPy Dependencies

##### Required

[cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref}, [meson_python-0.19.0](python-dependencies.md#meson_python "Meson_python-0.19.0"){.xref}, and [pyproject-metadata-0.11.0](python-dependencies.md#pyproject-metadata "Pyproject-Metadata-0.11.0"){.xref}

##### Optional

fortran from [GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref}, [lapack and cblas](https://www.netlib.org/lapack/){.ulink}, and [openblas](https://www.openblas.net/){.ulink}

##### Optional (for testing)

[attrs-25.4.0](python-dependencies.md#attrs "Attrs-25.4.0"){.xref}, [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [pytz-2025.2](python-dependencies.md#pytz "Pytz-2025.2"){.xref}, and [hypothesis](https://pypi.org/project/hypothesis/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of NumPy {#installation-of-numpy .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir \
           -C setup-args=-Dallow-noblas=true $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user numpy
```

The installation can be tested with the following commands:

``` userinput
mkdir -p test                                  &&
cd       test                                  &&
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install hypothesis                        &&
python3 -c "import numpy, sys; sys.exit(numpy.test() is False)"
deactivate
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-15 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-15 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [f2py, f2py3 and f2py3.14 (3 copies of the same script)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/numpy]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ---------------------------------------- -------------------------------------------------------
  []{#f2py}[[**f2py**]{.command}]{.term}   is the Fortran to Python interface generator utility.
  ---------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#psutil}psutil-7.2.2 {#psutil-7.2.2 .sect2}

::::: {.package lang="en"}
### Introduction to psutil Module {#introduction-to-psutil-module .sect3}

psutil (process and system utilities) is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network, sensors) in Python. It is useful mainly for system monitoring, profiling and limiting process resources and management of running processes. It implements many functionalities offered by classic UNIX command line tools such as ps, top, iotop, lsof, netstat, ifconfig, free and others.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/psutil/psutil-7.2.2.tar.gz](https://files.pythonhosted.org/packages/source/p/psutil/psutil-7.2.2.tar.gz){.ulink}

-   Download MD5 sum: a1c5c30f68a927053be09592d1a4be53

-   Download size: 484 KB

-   Estimated disk space required: 94 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

#### Packaging Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [colorama](https://pypi.org/project/colorama/){.ulink}, [pyleak](https://pypi.org/project/pyleak/){.ulink}, [pyperf](https://pypi.org/project/pyperf/){.ulink}, [pypinfo](https://pypi.org/project/pypinfo/){.ulink}, [pytest-instafail](https://pypi.org/project/pytest-instafail/){.ulink}, [pytest-subtests](https://pypi.org/project/pytest-subtests/){.ulink}, and [pytest-xdist](https://pypi.org/project/pytest-xdist/){.ulink}
:::::

:::: {.installation lang="en"}
### Installation of psutil {#installation-of-psutil .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user psutil
```

In order to run the tests, the binary modules have to be copied:

``` userinput
cp build/lib*/psutil/*.so psutil
```

To test the results, issue:

``` userinput
python3 -m venv --system-site-packages testenv                      &&
testenv/bin/pip3 install colorama pytest-{instafail,subtests,xdist} \
                         psleak pyperf pypinfo                      &&
PSUTIL_DEBUG=1 testenv/bin/python3 -m pytest
```

::: itemizedlist
-   The tests named `TestSystemAPIs::test_disk_usage`{.literal}, `TestFetchAllProcesses::test_all`{.literal}, and `TestNetAPIs::test_net_if_addrs`{.literal} are known to fail.

-   The test named `TestSystemNetIfAddrs::test_ips`{.literal} is known to fail if IPv6 tunelling is enabled in the kernel.

-   The test named `TestAvailProcessAPIs::test_io_counters`{.literal} is known to fail if the kernel does not have `CONFIG_TASK_IO_ACCOUNTING`{.option} enabled.

-   The test named `TestExampleScripts::test_who`{.literal} is known to fail if the login manager does not write into `/run/utmp`{.filename} [(note that due to the potential year 2038 problem, if [Shadow-4.19.4](../postlfs/shadow.md "Shadow-4.19.4"){.xref} is already rebuilt in BLFS, it will stop writing into the file)]{.phrase}.

-   The test named `TestSystemAPIs::test_users`{.literal} is known to fail if the `/run/utmp`{.filename} file contains an entry for the login screen. It can also fail due to the same reason as `TestExampleScripts::test_who`{.literal}.
:::
::::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-16 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-16 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/psutil-7.2.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::::::::::::: {.sect2 lang="en"}
## []{#py3c}Py3c-1.4 {#py3c-1.4 .sect2}

::::: {.package lang="en"}
### Introduction to Py3c {#introduction-to-py3c .sect3}

[Py3c]{.application} helps you port C extensions to Python 3. It provides a detailed guide as well as a set of macros to make porting easier and reduce boilerplate.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/encukou/py3c/archive/v1.4/py3c-1.4.tar.gz](https://github.com/encukou/py3c/archive/v1.4/py3c-1.4.tar.gz){.ulink}

-   Download MD5 sum: 53029afde7e0cf8672a2d69d378a0cfc

-   Download size: 47 KB

-   Estimated disk space required: 608 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
### Installation of Py3c {#installation-of-py3c .sect3}

The [Py3c]{.application} package is a headers-only package and because of that, no configuration or compilation is required.

To test the package, issue:

``` userinput
make test-python3     &&
make test-python3-cpp
```

To install the [py3c]{.application} module, run the following command as the `root`{.systemitem} user:

``` root
make prefix=/usr install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-17 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/py3c]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::::::::::::: {.sect2 lang="en"}
## []{#pyatspi2}PyAtSpi2-2.58.2 {#pyatspi2-2.58.2 .sect2}

::::: {.package lang="en"}
### Introduction to PyAtSpi2 {#introduction-to-pyatspi2 .sect3}

The [PyAtSpi2]{.application} package contains [Python]{.application} bindings for the core components of the [GNOME]{.application} Accessibility.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/pyatspi/2.58/pyatspi-2.58.2.tar.xz](https://download.gnome.org/sources/pyatspi/2.58/pyatspi-2.58.2.tar.xz){.ulink}

-   Download MD5 sum: f7e9e8434159258031661ef9b86cc081

-   Download size: 84 KB

-   Estimated disk space required: 1.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

#### PyAtSpi2 Dependencies

##### Required

[D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref} and [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

##### Recommended

[at-spi2-core-2.60.4](../x/at-spi2-core.md "at-spi2-core-2.60.4"){.xref}
:::::

::: {.installation lang="en"}
### Installation of PyAtSpi2 {#installation-of-pyatspi2 .sect3}

To build [PyAtSpi2]{.application}, run the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D enable_tests=true .. &&
ninja
```

To run the tests issue: [**ninja test**]{.command}. The tests need to be run in a graphical environment.

To install the module, run the following command as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-18 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pyatspi]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::::::::::::: {.sect2 lang="en"}
## []{#pycairo}PyCairo-1.29.0 {#pycairo-1.29.0 .sect2}

::::: {.package lang="en"}
### Introduction to PyCairo Module {#introduction-to-pycairo-module .sect3}

PyCairo provides [Python]{.application} bindings to [Cairo]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/pygobject/pycairo/releases/download/v1.29.0/pycairo-1.29.0.tar.gz](https://github.com/pygobject/pycairo/releases/download/v1.29.0/pycairo-1.29.0.tar.gz){.ulink}

-   Download MD5 sum: 8202d252ea754e2a17852b9031e01b32

-   Download size: 652 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
:::

#### PyCairo Dependencies

##### Required

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}

##### Optional

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (for tests)
:::::

::: {.installation lang="en"}
### Installation of PyCairo {#installation-of-pycairo .sect3}

Install [PyCairo]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests, this package requires the optional pytest module. If it is installed, run the tests by running [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-19 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pycairo, /usr/lib/python3.14/site-packages/cairo, and /usr/lib/python3.14/site-packages/pycairo-1.29.0.egg-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pygdbmi}pygdbmi-0.11.0.0 {#pygdbmi-0.11.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to pygdbmi Module {#introduction-to-pygdbmi-module .sect3}

GDB/MI is a line based machine oriented text interface to GDB and is activated by specifying using the --interpreter command line option (see Mode Options). It is specifically intended to support the development of systems which use the debugger as just one small component of a larger system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pygdbmi/pygdbmi-0.11.0.0.tar.gz](https://files.pythonhosted.org/packages/source/p/pygdbmi/pygdbmi-0.11.0.0.tar.gz){.ulink}

-   Download MD5 sum: 34b1812e77469c6206002b3929798cab

-   Download size: 28 KB

-   Estimated disk space required: 280 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of pygdbmi {#installation-of-pygdbmi .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pygdbmi
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-17 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-20 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pygdbmi-0.11.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#pygments}Pygments-2.20.0 {#pygments-2.20.0 .sect2}

::::: {.package lang="en"}
### Introduction to Pygments Module {#introduction-to-pygments-module .sect3}

[Pygments]{.application} is a general syntax highlighter written in [Python]{.application}, for more than 300 languages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz](https://files.pythonhosted.org/packages/source/P/Pygments/pygments-2.20.0.tar.gz){.ulink}

-   Download MD5 sum: 358297d0a1db8e4beff8eebc0620960e

-   Download size: 4.8 MB

-   Estimated disk space required: 84 MB

-   Estimated build time: less than 0.1 SBU
:::

### Pygments Dependencies

#### Required

[hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref}

#### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [wcag-contrast-ratio](https://pypi.org/project/wcag-contrast-ratio){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Pygments {#installation-of-pygments .sect3}

Build the [Python 3]{.application} module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the package run the following as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Pygments
```

To test the installation, make sure [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed and run:

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install wcag-contrast-ratio   &&
testenv/bin/python -m pytest
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-18 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-21 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pygmentize]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pygments and /usr/lib/python3.14/site-packages/Pygments-2.20.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------
  []{#pygmentize}[[**pygmentize**]{.command}]{.term}   highlights an input file and writes the result to an output file
  ---------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pygobject3}PyGObject-3.56.3 {#pygobject-3.56.3 .sect2}

::::: {.package lang="en"}
### Introduction to PyGObject3 Module {#introduction-to-pygobject3-module .sect3}

[PyGObject3]{.application} provides [Python]{.application} bindings to the GObject class from [GLib]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/pygobject/3.56/pygobject-3.56.3.tar.gz](https://download.gnome.org/sources/pygobject/3.56/pygobject-3.56.3.tar.gz){.ulink}

-   Download MD5 sum: 7fe8fa9ff801a010eca0f0c79f59232b

-   Download size: 1.4 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

#### PyGObject3 Dependencies

##### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

##### Recommended

[PyCairo-1.29.0](python-modules.md#pycairo "PyCairo-1.29.0"){.xref}

##### Optional (for the tests)

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [pep8](https://pypi.python.org/pypi/pep8){.ulink}, [pyflakes](https://pypi.python.org/pypi/pyflakes){.ulink}, and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of PyGObject3 {#installation-of-pygobject3 .sect3}

First, if you do not have [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} installed, remove two tests:

``` userinput
mv -v tests/test_gdbus.py{,.nouse}         &&
mv -v tests/test_overrides_gtk.py{,.nouse}
```

Install [pygobject3]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. An already active graphical session with a bus address is necessary to run the tests.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-19 .sect3}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D pycairo=disabled`{.option}: use this switch if you do not have [PyCairo-1.29.0](python-modules.md#pycairo "PyCairo-1.29.0"){.xref} installed.
:::

:::::::: {.content lang="en"}
### Contents {#contents-22 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [/usr/lib/python3.14/site-packages/gi/\_gi{,\_cairo}.cpython-314-\<arch\>-linux-gnu.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pygobject-3.0 and /usr/lib/python3.14/site-packages/{gi,pygtkcompat}]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pyparsing}pyparsing-3.3.2 {#pyparsing-3.3.2 .sect2}

::::: {.package lang="en"}
### Introduction to pyparsing Module {#introduction-to-pyparsing-module .sect3}

The [pyparsing]{.application} module is an alternative approach to creating and executing simple grammars, vs. the traditional lex/yacc approach, or the use of regular expressions. It provides a library of classes that client code uses to construct the grammar directly in Python code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.3.2.tar.gz](https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.3.2.tar.gz){.ulink}

-   Download MD5 sum: ca3bea68cd1a84584b68cd7bed679464

-   Download size: 6.6 MB

-   Estimated disk space required: 113 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

#### pyparsing Dependencies

##### Optional

[railroad-diagrams](https://pypi.org/project/railroad-diagrams/){.ulink} and [matplotlib](https://matplotlib.org/){.ulink} (also needed for tests)

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of pyparsing {#installation-of-pyparsing .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pyparsing
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependency is not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install railroad-diagrams matplotlib      &&
python3 /usr/bin/pytest
deactivate
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-20 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-23 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pyparsing and /usr/lib/python3.14/site-packages/pyparsing-3.3.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#pyserial}pySerial-3.5 {#pyserial-3.5 .sect2}

::::: {.package lang="en"}
### Introduction to pySerial Module {#introduction-to-pyserial-module .sect3}

The [pySerial]{.application} module encapsulates access to the serial port.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pyserial/pyserial-3.5.tar.gz](https://files.pythonhosted.org/packages/source/p/pyserial/pyserial-3.5.tar.gz){.ulink}

-   Download MD5 sum: 1cf25a76da59b530dbfc2cf99392dc83

-   Download size: 156 KB

-   Estimated disk space required: 2.1 MB (add 0.2 MB for tests)

-   Estimated build time: less than 0.1 SBU
:::

#### pySerial Dependencies

##### Required

[setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of pySerial {#installation-of-pyserial .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pyserial
```

To test the installation issue [**pytest**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-21 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-24 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pyserial-miniterm and pyserial-ports]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pyserial-3.5.dist-info and /usr/lib/python3.14/site-packages/serial]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
  []{#pyserial-miniterm}[[**pyserial-miniterm**]{.command}]{.term}   is a console application that provides a small terminal application. It may inherit terminal features from the terminal in which it is run.
  []{#pyserial-ports}[[**pyserial-ports**]{.command}]{.term}         lists available ports.
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#pytest}Pytest-9.0.3 {#pytest-9.0.3 .sect2}

::::: {.package lang="en"}
### Introduction to Pytest Module {#introduction-to-pytest-module .sect3}

The [Pytest]{.application} framework makes it easy to write small, readable tests, and can scale to support complex functional testing for applications and libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pytest/pytest-9.0.3.tar.gz](https://files.pythonhosted.org/packages/source/p/pytest/pytest-9.0.3.tar.gz){.ulink}

-   Download MD5 sum: 0cd1c357553d2e3eb850d71843b375d1

-   Download size: 1.5 MB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 1.4 SBU (with tests)
:::

#### Pytest Dependencies

##### Required

[iniconfig-2.3.0](python-dependencies.md#iniconfig "Iniconfig-2.3.0"){.xref}, [pluggy-1.6.0](python-dependencies.md#pluggy "Pluggy-1.6.0"){.xref}, and [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}

##### Recommended

[setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

##### Optional (for testing)

[attrs-25.4.0](python-dependencies.md#attrs "Attrs-25.4.0"){.xref}, [requests-2.34.2](python-modules.md#requests "Requests-2.34.2"){.xref}, [argcomplete](https://pypi.org/project/argcomplete/){.ulink}, [hypothesis](https://pypi.org/project/hypothesis/){.ulink}, [mock](https://pypi.org/project/mock/){.ulink}, and [xmlschema](https://pypi.org/project/xmlschema/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Pytest {#installation-of-pytest .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pytest
```

The installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest[dev]                       &&
python3 /usr/bin/pytest
deactivate
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-22 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-25 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pytest and py.test (different files but with same content)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/\_pytest, /usr/lib/python3.14/site-packages/pytest, and /usr/lib/python3.14/site-packages/pytest-9.0.3.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ------------------------------------------------- -------------------------------------------------------------------------
  []{#pytest-prog}[[**pytest**]{.command}]{.term}   sets up, manages, and/or runs tests in python module source directories
  ------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::: {.sect2 lang="en"}
## []{#pyxdg}PyXDG-0.28 {#pyxdg-0.28 .sect2}

:::::: {.package lang="en"}
### Introduction to PyXDG Module {#introduction-to-pyxdg-module .sect3}

[PyXDG]{.application} is a [Python]{.application} library to access freedesktop.org standards.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz](https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz){.ulink}

-   Download MD5 sum: d9a1d04fe60c956f5e3b9de3b4ef4722

-   Download size: 76 KB

-   Estimated disk space required: 808 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/pyxdg-0.28-python3_14-fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/pyxdg-0.28-python3_14-fixes-1.patch){.ulink}
:::

#### PyXDG Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [shared-mime-info-2.4](shared-mime-info.md "shared-mime-info-2.4"){.xref}
::::::

::: {.installation lang="en"}
### Installation of PyXDG {#installation-of-pyxdg .sect3}

First, fix several problems caused by Python 3.14:

``` userinput
patch -Np1 -i ../pyxdg-0.28-python3_14-fixes-1.patch
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the module as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pyxdg
```

To test the results, issue: [**pytest**]{.command}. Note that two tests, `MimeTest::test_get_type`{.filename} and `MimeTest::test_get_type2`{.filename}, are known to fail due to small differences in MIME types from the recent versions of the shared-mime-info package.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-23 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::: {.content lang="en"}
### Contents {#contents-26 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Directory:** [/usr/lib/python3.14/site-packages/xdg and /usr/lib/python3.14/site-packages/pyxdg-0.28.dist-info]{.segbody}
:::
::::
:::::
::::::
:::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#PyYAML}PyYAML-6.0.3 {#pyyaml-6.0.3 .sect2}

::::: {.package lang="en"}
### Introduction to PyYAML Module {#introduction-to-pyyaml-module .sect3}

[PyYAML]{.application} is a [Python]{.application} module that implements the next generation YAML parser and emitter.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/P/PyYAML/pyyaml-6.0.3.tar.gz](https://files.pythonhosted.org/packages/source/P/PyYAML/pyyaml-6.0.3.tar.gz){.ulink}

-   Download MD5 sum: dbc6f815cd75160ccf12e470be1c8d6e

-   Download size: 128 KB

-   Estimated disk space required: 8.6 MB

-   Estimated build time: less than 0.1 SBU
:::

#### PyYAML Dependencies

##### Recommended

[cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref} and [libyaml-0.2.5](libyaml.md "libyaml-0.2.5"){.xref}

##### Optional

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (for testing)
:::::

::: {.installation lang="en"}
### Installation of PyYAML {#installation-of-pyyaml .sect3}

Build PyYAML with the following command:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, install the module as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user PyYAML
```

To test the results, issue: [**pytest**]{.command}. One warning is output from `tests/legacy_tests/test_dump_load.py`{.filename} during the test suite.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-24 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-27 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/PyYAML-0.2.5.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#recommonmark}Recommonmark-0.7.1 {#recommonmark-0.7.1 .sect2}

::::: {.package lang="en"}
### Introduction to Recommonmark Module {#introduction-to-recommonmark-module .sect3}

[Recommonmark]{.application} is a docutils-compatibility bridge to CommonMark. It allows writing CommonMark inside of Docutils and Sphinx projects. [Recommonmark]{.application} is now deprecated in favor of [MyST-Parser](https://pypi.org/project/myst-parser/){.ulink}. Unfortunately, [libinput-1.31.2](../x/x7driver.md#libinput "libinput-1.31.2"){.xref} depends on this module.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/r/recommonmark/recommonmark-0.7.1.tar.gz](https://files.pythonhosted.org/packages/source/r/recommonmark/recommonmark-0.7.1.tar.gz){.ulink}

-   Download MD5 sum: 3c550a76eb62006bf007843a9f1805bb

-   Download size: 34 KB

-   Estimated disk space required: 680 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Recommonmark Dependencies

##### Required

[commonmark-0.9.1](python-dependencies.md#commonmark "Commonmark-0.9.1"){.xref} and [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Recommonmark {#installation-of-recommonmark .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user recommonmark
```

[Recommonmark]{.application} is now deprecated in favor of [MyST-Parser](https://pypi.org/project/myst-parser/){.ulink}. For this reason, a lot of tests have to be disabled because they do not pass with recent versions of [Sphinx]{.application}. The installation can be partially tested with the following command:

``` userinput
DISABLED="test_integration or test_code or test_headings "
DISABLED+="or test_image or test_links or test_lists"

pytest -k "not ($DISABLED)"
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-25 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-28 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cm2html, cm2latex, cm2man, cm2pseudoxml, cm2xetex, and cm2xml]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/recommonmark and /usr/lib/python3.14/site-packages/recommonmark-0.7.1.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------
  []{#cm2html}[[**cm2html**]{.command}]{.term}             generates a html document from markdown sources
  []{#cm2latex}[[**cm2latex**]{.command}]{.term}           generates a latex document from markdown sources
  []{#cm2man}[[**cm2man**]{.command}]{.term}               generates a manpage from markdown sources
  []{#cm2pseudoxml}[[**cm2pseudoxml**]{.command}]{.term}   generates a pseudo-XML document from markdown sources
  []{#cm2xetex}[[**cm2xetex**]{.command}]{.term}           generates a xetex document from markdown sources
  []{#cm2xml}[[**cm2xml**]{.command}]{.term}               generates an XML document from markdown sources
  -------------------------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::::: {.sect2 lang="en"}
## []{#requests}Requests-2.34.2 {#requests-2.34.2 .sect2}

:::::: {.package lang="en"}
### Introduction to Requests Module {#introduction-to-requests-module .sect3}

The [Requests]{.application} package is an elegant and simple HTTP library for Python, built for human beings. It allows sending HTTP/1.1 requests extremely easily.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/r/requests/requests-2.34.2.tar.gz](https://files.pythonhosted.org/packages/source/r/requests/requests-2.34.2.tar.gz){.ulink}

-   Download MD5 sum: 611e438d0803e962500225f9807a475e

-   Download size: 140 KB

-   Estimated disk space required: 89 MB (with tests)

-   Estimated build time: less than 0.1 SBU (0.9 SBU for tests)
:::

#### Additional Download

::: itemizedlist
-   Recommended patch: [https://www.linuxfromscratch.org/patches/blfs/svn/requests-use_system_certs-2.patch](https://www.linuxfromscratch.org/patches/blfs/svn/requests-use_system_certs-2.patch){.ulink}
:::

#### Requests Dependencies

##### Required

[charset-normalizer-3.4.4](python-dependencies.md#charset-normalizer "Charset-normalizer-3.4.4"){.xref}, [idna-3.11](python-dependencies.md#idna "Idna-3.11"){.xref}, and [urllib3-2.7.0](python-dependencies.md#urllib3 "Urllib3-2.7.0"){.xref}

##### Recommended

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, with [p11-kit-0.26.2](../postlfs/p11-kit.md "p11-kit-0.26.2"){.xref} (both needed to use system https: certificates, removing an unnecessary dependency on the [Certifi]{.application} module).

##### Optional

[PySocks](https://pypi.org/project/PySocks/){.ulink} (also needed for testing)

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [pytest-mock](https://pypi.org/project/pytest-mock/){.ulink}, [pytest-httpbin](https://pypi.org/project/pytest-httpbin/){.ulink}, [pytest-cov](https://pypi.org/project/pytest-cov/){.ulink}, [pytest-xdist](https://pypi.org/project/pytest-xdist/){.ulink}, and [trustme](https://pypi.org/project/trustme/){.ulink}
::::::

::::: {.installation lang="en"}
### Installation of Requests {#installation-of-requests .sect3}

First apply a patch so that the same environment variable already used to point to system certificates in [Python3]{.application} following the installation of [make-ca]{.application} can also be used by this module:

``` userinput
patch -Np1 -i ../requests-use_system_certs-2.patch
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user requests
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some of the setup instructions below may indicate an error due to dependent module versions, but these errors do not affect the test results.
:::

``` userinput
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

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

See [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} for how to set the environment variable, and for how local copies of the Certifi and Requests modules installed in a virtual environment [*will*]{.emphasis} override the system certificates.
:::
:::::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-26 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-29 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/requests and /usr/lib/python3.14/site-packages/requests-2.34.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#scour}Scour-0.38.2 {#scour-0.38.2 .sect2}

::::: {.package lang="en"}
### Introduction to Scour Module {#introduction-to-scour-module .sect3}

[Scour]{.application} is an SVG (Scalable Vector Graphics) optimizer/cleaner that reduces their size by optimizing structure and removing unnecessary data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/scour-project/scour/archive/v0.38.2/scour-0.38.2.tar.gz](https://github.com/scour-project/scour/archive/v0.38.2/scour-0.38.2.tar.gz){.ulink}

-   Download MD5 sum: ae30f52602802f8c7df3a32e1f72b325

-   Download size: 100 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Scour Dependencies

##### Required

[six-1.17.0](python-modules.md#six "six-1.17.0"){.xref}

#### Optional (required for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of scour {#installation-of-scour .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To install the module, run the following command as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user scour
```

To test the results, issue: [**pytest**]{.command}
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-27 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-30 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [scour]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/scour and /usr/lib/python3.14/site-packages/scour-0.38.2.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ----------------------------------------------
  []{#scour-prog}[[**scour**]{.command}]{.term}   is a program to optimize and clean SVG files
  ----------------------------------------------- ----------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sentry-sdk}sentry-sdk-2.53.0 {#sentry-sdk-2.53.0 .sect2}

::::: {.package lang="en"}
### Introduction to sentry-sdk Module {#introduction-to-sentry-sdk-module .sect3}

The [sentry-sdk]{.application} module is the official Python SDK for Sentry.io.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/getsentry/sentry-python/releases/download/2.53.0/sentry_sdk-2.53.0.tar.gz](https://github.com/getsentry/sentry-python/releases/download/2.53.0/sentry_sdk-2.53.0.tar.gz){.ulink}

-   Download MD5 sum: 92cc3e1f9b54e7cd670e82ec7aa48dcd

-   Download size: 404 KB

-   Estimated disk space required: 4.8 MB

-   Estimated build time: less than 0.1 SBU
:::

#### sentry-sdk Dependencies

##### Required

[certifi-2026.1.4](python-dependencies.md#certifi "certifi-2026.1.4"){.xref} and [urllib3-2.7.0](python-dependencies.md#urllib3 "Urllib3-2.7.0"){.xref}
:::::

::: {.installation lang="en"}
### Installation of sentry-sdk {#installation-of-sentry-sdk .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sentry-sdk
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-28 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-31 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sentry_sdk-2.53.0.dist-info and /usr/lib/python3.14/site-packages/sentry_sdk]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#six}six-1.17.0 {#six-1.17.0 .sect2}

::::: {.package lang="en"}
### Introduction to Six Module {#introduction-to-six-module .sect3}

Six is a Python 2 to 3 compatibility library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/six/six-1.17.0.tar.gz](https://files.pythonhosted.org/packages/source/s/six/six-1.17.0.tar.gz){.ulink}

-   Download MD5 sum: a0387fe15662c71057b4fb2b7aa9056a

-   Download size: 36 KB

-   Estimated disk space required: 300 KB

-   Estimated build time: less than 0.1 SBU
:::

#### six Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Six {#installation-of-six .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user six
```

To run the tests, issue: [**pytest**]{.command}
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-29 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-32 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/six-1.17.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#sphinx}Sphinx-9.1.0 {#sphinx-9.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinx Module {#introduction-to-sphinx-module .sect3}

The [Sphinx]{.application} package is a set of tools for translating some structured text formats into pretty documentation in various formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinx/sphinx-9.1.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinx/sphinx-9.1.0.tar.gz){.ulink}

-   Download MD5 sum: 0f552d70cc8cee4d473ec4aec90b7d2c

-   Download size: 8.3 MB

-   Estimated disk space required: 58 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.8 SBU for tests)
:::

#### Sphinx Dependencies

##### Required

[alabaster-1.0.0](python-dependencies.md#alabaster "Alabaster-1.0.0"){.xref}, [babel-2.18.0](python-dependencies.md#babel "babel-2.18.0"){.xref}, [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}, [imagesize-1.4.1](python-dependencies.md#imagesize "Imagesize-1.4.1"){.xref}, [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, [requests-2.34.2](python-modules.md#requests "Requests-2.34.2"){.xref}, [roman-numerals-4.1.0](python-dependencies.md#roman-numerals "Roman-numerals-4.1.0"){.xref}, [snowballstemmer-3.0.1](python-dependencies.md#snowballstemmer "Snowballstemmer-3.0.1"){.xref}, [sphinxcontrib-applehelp-2.0.0](python-dependencies.md#sc-applehelp "Sphinxcontrib-applehelp-2.0.0"){.xref}, [sphinxcontrib-devhelp-2.0.0](python-dependencies.md#sc-devhelp "Sphinxcontrib-devhelp-2.0.0"){.xref}, [sphinxcontrib-htmlhelp-2.1.0](python-dependencies.md#sc-htmlhelp "Sphinxcontrib-htmlhelp-2.1.0"){.xref}, [sphinxcontrib-jsmath-1.0.1](python-dependencies.md#sc-jsmath "Sphinxcontrib-jsmath-1.0.1"){.xref}, [sphinxcontrib-qthelp-2.0.0](python-dependencies.md#sc-qthelp "Sphinxcontrib-qthelp-2.0.0"){.xref}, and [sphinxcontrib-serializinghtml-2.0.0](python-dependencies.md#sc-serializinghtml "Sphinxcontrib-serializinghtml-2.0.0"){.xref}

##### Optional (for tests)

[cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref}, [html5lib-1.1](python-modules.md#html5lib "html5lib-1.1"){.xref}, [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref}, [defusedxml](https://pypi.org/project/defusedxml/){.ulink}, and [typing_extensions](https://pypi.org/project/typing_extensions/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Sphinx {#installation-of-sphinx .sect3}

First allow [sphinx]{.application} to use [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}:

``` userinput
sed -i 's/0.23/0.24/' pyproject.toml
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinx
```

Assuming [cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} are installed, but the other optional dependencies are not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install sphinx[test] defusedxml           &&
python3 -m pytest
deactivate
```

Four tests (of over 2400 tests) are known to fail: Three in test_ext_autodoc.py and one in test_util_typing.py.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-30 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-33 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [sphinx-apidoc, sphinx-autogen, sphinx-build, and sphinx-quickstart]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinx and /usr/lib/python3.14/site-packages/sphinx-9.1.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------
  []{#sphinx-apidoc}[[**sphinx-apidoc**]{.command}]{.term}           creates an reST file from python modules and packages
  []{#sphinx-autogen}[[**sphinx-autogen**]{.command}]{.term}         generates ReStructuredText from special directives contained in given input files
  []{#sphinx-build}[[**sphinx-build**]{.command}]{.term}             generates documentation in various formats from ReStructuredText source files
  []{#sphinx-quickstart}[[**sphinx-quickstart**]{.command}]{.term}   generates required files for a sphinx project
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sphinx_rtd_theme}Sphinx_rtd_theme-3.1.0 {#sphinx_rtd_theme-3.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinx_rtd_theme Module {#introduction-to-sphinx_rtd_theme-module .sect3}

The [sphinx_rtd_theme]{.application} module is a Sphinx theme designed to provide a great reader experience for documentation users on both desktop and mobile devices. This theme is used primarily on Read the Docs but can work with any Sphinx project.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinx_rtd_theme/sphinx_rtd_theme-3.1.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinx_rtd_theme/sphinx_rtd_theme-3.1.0.tar.gz){.ulink}

-   Download MD5 sum: ac4255e53e5bed61a6b48e70ca80607c

-   Download size: 7.3 MB

-   Estimated disk space required: 40 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Sphinx_rtd_theme Dependencies

##### Required

[sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} and [sphinxcontrib-jquery-4.1](python-dependencies.md#sc-jquery "Sphinxcontrib-jquery-4.1"){.xref}

##### Optional (for tests)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [readthedocs-sphinx-ext](https://pypi.org/project/readthedocs-sphinx-ext){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Sphinx_rtd_theme {#installation-of-sphinx_rtd_theme .sect3}

First allow this package to use [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}:

``` userinput
sed -i 's/0.23/0.24/' setup.cfg
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinx_rtd_theme
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependency is not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install readthedocs-sphinx-ext            &&
python3 /usr/bin/pytest
deactivate
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-31 .sect3}

*`-w dist`*: builds the appropriate "wheel" for this module in the directory `dist`{.filename}.

*`--no-build-isolation`*: tells pip3 to run the build in the system environment instead of creating a temporary build environment.

*`--no-deps`*: prevents pip3 from building wheels for the project's dependencies.

*`--no-index`*: ignores the package index (only looking at --find-links URLs instead).

*`--find-links dist`*: looks for links to archives such as wheel (.whl) files in the directory `dist`{.filename}.

*`--no-cache-dir`*: Disables the cache to prevent a warning when installing as the `root`{.systemitem} user.

*`--no-user`*: Prevent mistakenly running the install command as a non-root user.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-34 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinx_rtd_theme and /usr/lib/python3.14/site-packages/sphinx_rtd_theme-3.1.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](python311.md "Python-3.11.1"){accesskey="p"}

    Python-3.11.1

-   [Next](python-dependencies.md "Python Dependencies"){accesskey="n"}

    Python Dependencies

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
