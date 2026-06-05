::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python-modules.md "Python Modules"){accesskey="p"}

    Python Modules

-   [Next](ruby.md "Ruby-4.0.5"){accesskey="n"}

    Ruby-4.0.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#python-dependencies}Python Dependencies {#python-dependencies .sect1}

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Python Dependencies {#introduction-to-python-dependencies .sect2}

Python modules listed in [Python Modules](python-modules.md "Python Modules"){.xref} have dependencies that are not referenced by other packages in BLFS. These dependencies are listed here. They will not get updated on regular basis, unless a more recent version is needed.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

In BLFS, we normally build and install Python 3 modules with [**pip3**]{.command}. Please take care that the [**pip3 install**]{.command} commands in the book should be run as `root`{.systemitem} unless it's for a Python virtual environment. Running [**pip3 install**]{.command} as a non-`root`{.systemitem} user may seem to work fine, but it will cause the installed module to be inaccessible by other users.

[**pip3 install**]{.command} will not reinstall an already installed module by default. For using the [**pip3 install**]{.command} command to upgrade a module (for example, from meson-0.61.3 to meson-0.62.0), insert *`--upgrade`* into the command line. If it's really necessary to downgrade a module or reinstall the same version for some reason, insert *`--force-reinstall`* into the command line.
:::

::: itemizedlist
-   [alabaster-1.0.0](python-dependencies.md#alabaster "Alabaster-1.0.0"){.xref}

-   [attrs-25.4.0](python-dependencies.md#attrs "Attrs-25.4.0"){.xref}

-   [babel-2.18.0](python-dependencies.md#babel "babel-2.18.0"){.xref}

-   [certifi-2026.1.4](python-dependencies.md#certifi "certifi-2026.1.4"){.xref}

-   [chardet-5.2.0](python-dependencies.md#chardet "Chardet-5.2.0"){.xref}

-   [charset-normalizer-3.4.4](python-dependencies.md#charset-normalizer "Charset-normalizer-3.4.4"){.xref}

-   [commonmark-0.9.1](python-dependencies.md#commonmark "Commonmark-0.9.1"){.xref}

-   [editables-0.5](python-dependencies.md#editables "Editables-0.5"){.xref}

-   [hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref}

-   [hatch-fancy-pypi-readme-25.1.0](python-dependencies.md#hatch-fancy-pypi-readme "Hatch-Fancy-Pypi-Readme-25.1.0"){.xref}

-   [hatch_vcs-0.5.0](python-dependencies.md#hatch-vcs "Hatch_vcs-0.5.0"){.xref}

-   [idna-3.11](python-dependencies.md#idna "Idna-3.11"){.xref}

-   [imagesize-1.4.1](python-dependencies.md#imagesize "Imagesize-1.4.1"){.xref}

-   [iniconfig-2.3.0](python-dependencies.md#iniconfig "Iniconfig-2.3.0"){.xref}

-   [Markdown-3.10.2](python-dependencies.md#markdown "Markdown-3.10.2"){.xref}

-   [maturin-1.13.3](python-dependencies.md#maturin "maturin-1.13.3"){.xref}

-   [meson_python-0.19.0](python-dependencies.md#meson_python "Meson_python-0.19.0"){.xref}

-   [msgpack-1.1.2](python-dependencies.md#msgpack "Msgpack-1.1.2"){.xref}

-   [pathspec-1.0.4](python-dependencies.md#pathspec "Pathspec-1.0.4"){.xref}

-   [pluggy-1.6.0](python-dependencies.md#pluggy "Pluggy-1.6.0"){.xref}

-   [pyproject_hooks-1.2.0](python-dependencies.md#pyproject-hooks "Pyproject_Hooks-1.2.0"){.xref}

-   [pyproject-metadata-0.11.0](python-dependencies.md#pyproject-metadata "Pyproject-Metadata-0.11.0"){.xref}

-   [pytz-2025.2](python-dependencies.md#pytz "Pytz-2025.2"){.xref}

-   [roman-numerals-4.1.0](python-dependencies.md#roman-numerals "Roman-numerals-4.1.0"){.xref}

-   [semantic_version-2.10.0](python-dependencies.md#semantic_version "semantic_version-2.10.0"){.xref}

-   [setuptools_rust-1.12.0](python-dependencies.md#setuptools_rust "setuptools_rust-1.12.0"){.xref}

-   [setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

-   [smartypants-2.0.2](python-dependencies.md#smartypants "Smartypants-2.0.2"){.xref}

-   [snowballstemmer-3.0.1](python-dependencies.md#snowballstemmer "Snowballstemmer-3.0.1"){.xref}

-   [sphinxcontrib-applehelp-2.0.0](python-dependencies.md#sc-applehelp "Sphinxcontrib-applehelp-2.0.0"){.xref}

-   [sphinxcontrib-devhelp-2.0.0](python-dependencies.md#sc-devhelp "Sphinxcontrib-devhelp-2.0.0"){.xref}

-   [sphinxcontrib-htmlhelp-2.1.0](python-dependencies.md#sc-htmlhelp "Sphinxcontrib-htmlhelp-2.1.0"){.xref}

-   [sphinxcontrib-jquery-4.1](python-dependencies.md#sc-jquery "Sphinxcontrib-jquery-4.1"){.xref}

-   [sphinxcontrib-jsmath-1.0.1](python-dependencies.md#sc-jsmath "Sphinxcontrib-jsmath-1.0.1"){.xref}

-   [sphinxcontrib-qthelp-2.0.0](python-dependencies.md#sc-qthelp "Sphinxcontrib-qthelp-2.0.0"){.xref}

-   [sphinxcontrib-serializinghtml-2.0.0](python-dependencies.md#sc-serializinghtml "Sphinxcontrib-serializinghtml-2.0.0"){.xref}

-   [trove-classifiers-2026.1.14.14](python-dependencies.md#trove-classifiers "Trove-Classifiers-2026.1.14.14"){.xref}

-   [typogrify-2.1.0](python-dependencies.md#typogrify "Typogrify-2.1.0"){.xref}

-   [urllib3-2.7.0](python-dependencies.md#urllib3 "Urllib3-2.7.0"){.xref}

-   [uv_build-0.10.2](python-dependencies.md#uv_build "uv_build-0.10.2"){.xref}

-   [webencodings-0.5.1](python-dependencies.md#webencodings "webencodings-0.5.1"){.xref}
:::
:::::

:::::::::::::: {.sect2 lang="en"}
## []{#alabaster}Alabaster-1.0.0 {#alabaster-1.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to Alabaster Module {#introduction-to-alabaster-module .sect3}

The [Alabaster]{.application} package is a theme for the [sphinx]{.application} documentation system. Although developed separately, it is the default theme for sphinx.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/a/alabaster/alabaster-1.0.0.tar.gz](https://files.pythonhosted.org/packages/source/a/alabaster/alabaster-1.0.0.tar.gz){.ulink}

-   Download MD5 sum: c6c2173e5565fb12f08bef410ea50f72

-   Download size: 24 KB

-   Estimated disk space required: 160 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of Alabaster {#installation-of-alabaster .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user alabaster
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

:::::::: {.content lang="en"}
### Contents {#contents .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/alabaster and /usr/lib/python3.14/site-packages/alabaster-1.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#attrs}Attrs-25.4.0 {#attrs-25.4.0 .sect2}

::::: {.package lang="en"}
### Introduction to Attrs Module {#introduction-to-attrs-module .sect3}

The [Attrs]{.application} package is a python module that allows for writing attributes without extra boilerplate.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/a/attrs/attrs-25.4.0.tar.gz](https://files.pythonhosted.org/packages/source/a/attrs/attrs-25.4.0.tar.gz){.ulink}

-   Download MD5 sum: 6197561dfec99660529830edcfeee0ba

-   Download size: 912 KB

-   Estimated disk space required: 2.9 MB (add 89 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.3 SBU for tests)
:::

#### Attrs Dependencies

##### Required

[hatch-fancy-pypi-readme-25.1.0](python-dependencies.md#hatch-fancy-pypi-readme "Hatch-Fancy-Pypi-Readme-25.1.0"){.xref} and [hatch_vcs-0.5.0](python-dependencies.md#hatch-vcs "Hatch_vcs-0.5.0"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [cloudpickle](https://pypi.org/project/cloudpickle/){.ulink}, [hypothesis](https://pypi.org/project/hypothesis/){.ulink}, [Pympler](https://pypi.org/project/Pympler/){.ulink}, [mypy](https://pypi.org/project/mypy/){.ulink}, [pytest-mypy-plugins](https://pypi.org/project/pytest-mypy-plugins/){.ulink}, [pytest-xdist\[psutil\]](https://pypi.org/project/pytest-xdist/){.ulink}, and [zope.interface](https://pypi.org/project/zope.interface/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Attrs {#installation-of-attrs .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user attrs
```

To test the installation, run:

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group mypy          &&
PATH=$PWD/testenv/bin:$PATH testenv/bin/python -m pytest
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-1 .sect3}

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
### Contents {#contents-1 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/attr, /usr/lib/python3.14/site-packages/attrs, and /usr/lib/python3.14/site-packages/attrs-25.4.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#babel}babel-2.18.0 {#babel-2.18.0 .sect2}

::::: {.package lang="en"}
### Introduction to Babel Module {#introduction-to-babel-module .sect3}

The [Babel]{.application} package is an integrated collection of utilities that assist in internationalizing and localizing Python applications, with an emphasis on web-based applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/B/Babel/babel-2.18.0.tar.gz](https://files.pythonhosted.org/packages/source/B/Babel/babel-2.18.0.tar.gz){.ulink}

-   Download MD5 sum: b5ea9705c2ad6f8c630e4a66d3dd2cfa

-   Download size: 9.5 MB

-   Estimated disk space required: 129 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

#### Babel Dependencies

##### Required

[pytz-2025.2](python-dependencies.md#pytz "Pytz-2025.2"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [freezegun](https://pypi.org/project/freezegun/){.ulink}, and [pytest-cov](https://pypi.org/project/pytest-cov/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Babel {#installation-of-babel .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Babel
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest-cov freezegun              &&
python3 /usr/bin/pytest
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
**Installed Programs:** [pybabel]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/babel and /usr/lib/python3.14/site-packages/Babel-2.18.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------
  []{#pybabel}[[**pybabel**]{.command}]{.term}   is a command-line interface for working with message catalogs
  ---------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#certifi}certifi-2026.1.4 {#certifi-2026.1.4 .sect2}

::::: {.package lang="en"}
### Introduction to Certifi Module {#introduction-to-certifi-module .sect3}

The [certifi]{.application} module provides Mozilla’s carefully curated collection of Root Certificates for validating the trustworthiness of SSL certificates while verifying the identity of TLS hosts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.1.4.tar.gz](https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.1.4.tar.gz){.ulink}

-   Download MD5 sum: d8447ad858fa15af16f91e32f182aa85

-   Download size: 152 KB

-   Estimated disk space required: 792 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of certifi {#installation-of-certifi .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user certifi
```
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

:::::::: {.content lang="en"}
### Contents {#contents-3 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/certifi and /usr/lib/python3.14/site-packages/certifi-2026.1.4.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#chardet}Chardet-5.2.0 {#chardet-5.2.0 .sect2}

::::: {.package lang="en"}
### Introduction to chardet Module {#introduction-to-chardet-module .sect3}

[Chardet]{.application} is a universal character encoding detector.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/c/chardet/chardet-5.2.0.tar.gz](https://files.pythonhosted.org/packages/source/c/chardet/chardet-5.2.0.tar.gz){.ulink}

-   Download MD5 sum: cc2d8cc9a751641463b4f7cfecad2ffa

-   Download size: 2 MB

-   Estimated disk space required: 12 MB (add 1.1 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.3 SBU for tests)
:::

#### Chardet Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Chardet {#installation-of-chardet .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user chardet
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

::::::::: {.content lang="en"}
### Contents {#contents-4 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [chardetect]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/chardet and /usr/lib/python3.14/site-packages/chardet-5.2.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  []{#chardetect}[[**chardetect**]{.command}]{.term}   is a Universal Character Encoding Detector
  ---------------------------------------------------- --------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#charset-normalizer}Charset-normalizer-3.4.4 {#charset-normalizer-3.4.4 .sect2}

::::: {.package lang="en"}
### Introduction to charset-normalizer Module {#introduction-to-charset-normalizer-module .sect3}

The [charset-normalizer]{.application} library helps with reading text from an unknown character encoding.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.4.tar.gz](https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.4.tar.gz){.ulink}

-   Download MD5 sum: 3c73a3c5c05a896c1169d8b5298dc4e5

-   Download size: 128 KB

-   Estimated disk space required: 1.1 MB (add 15 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Charset-normalizer Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [pytest-cov](https://pypi.org/project/pytest-cov/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Charset-normalizer {#installation-of-charset-normalizer .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user charset-normalizer
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install pytest-cov                        &&
python3 /usr/bin/pytest                        &&
deactivate
```
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

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-5 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [normalizer]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/charset_normalizer and /usr/lib/python3.14/site-packages/charset_normalizer-3.4.4.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
##### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------
  []{#normalizer}[[**normalizer**]{.command}]{.term}   is a Universal Charset Detector (discovers originating encoding and normalizes text to unicode)
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#commonmark}Commonmark-0.9.1 {#commonmark-0.9.1 .sect2}

::::: {.package lang="en"}
### Introduction to Commonmark Module {#introduction-to-commonmark-module .sect3}

[Commonmark]{.application} Python parser for the CommonMark Markdown specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/c/commonmark/commonmark-0.9.1.tar.gz](https://files.pythonhosted.org/packages/source/c/commonmark/commonmark-0.9.1.tar.gz){.ulink}

-   Download MD5 sum: cd1dc70c4714d9ed4117a40490c25e00

-   Download size: 94 KB

-   Estimated disk space required: 1.3 MB (add 30 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.1 SBU for tests)
:::

#### Commonmark Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [hypothesis](https://pypi.org/project/hypothesis/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Commonmark {#installation-of-commonmark .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user commonmark
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed and the other optional dependency is not, the installation can be tested with:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install hypothesis                        &&
python3 /usr/bin/pytest commonmark/tests/unit_tests.py
python3 commonmark/tests/run_spec_tests.py
deactivate
```
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

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

::::::::: {.content lang="en"}
### Contents {#contents-6 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cmark]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/commonmark and /usr/lib/python3.14/site-packages/commonmark-0.9.1.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ --------------------------------------------------------------
  []{#cmark}[[**cmark**]{.command}]{.term}   processes Markdown according to the CommonMark specification
  ------------------------------------------ --------------------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#editables}Editables-0.5 {#editables-0.5 .sect2}

::::: {.package lang="en"}
### Introduction to Editables Module {#introduction-to-editables-module .sect3}

[Editables]{.application} is python library for creating [“[editable wheels.]{.quote}”]{.quote}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/e/editables/editables-0.5.tar.gz](https://files.pythonhosted.org/packages/source/e/editables/editables-0.5.tar.gz){.ulink}

-   Download MD5 sum: 520de8c3a9dc5dfb2b365d104541c9de

-   Download size: 4.6 KB

-   Estimated disk space required: 180 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Editables Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Editables {#installation-of-editables .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user editables
```

To test the installation, issue: [**pytest**]{.command}.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/editables and /usr/lib/python3.14/site-packages/editables-0.5.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#hatchling}Hatchling-1.28.0 {#hatchling-1.28.0 .sect2}

::::: {.package lang="en"}
### Introduction to Hatchling Module {#introduction-to-hatchling-module .sect3}

[Hatchling]{.application} is an extensible, standards compliant build backend for python modules.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/h/hatchling/hatchling-1.28.0.tar.gz](https://files.pythonhosted.org/packages/source/h/hatchling/hatchling-1.28.0.tar.gz){.ulink}

-   Download MD5 sum: 0d40370d4684147d6e3d1e3800298bd0

-   Download size: 57 KB

-   Estimated disk space required: 2.3 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Hatchling Dependencies

##### Required

[editables-0.5](python-dependencies.md#editables "Editables-0.5"){.xref}, [pathspec-1.0.4](python-dependencies.md#pathspec "Pathspec-1.0.4"){.xref}, [pluggy-1.6.0](python-dependencies.md#pluggy "Pluggy-1.6.0"){.xref}, and [trove-classifiers-2026.1.14.14](python-dependencies.md#trove-classifiers "Trove-Classifiers-2026.1.14.14"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Hatchling {#installation-of-hatchling .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user hatchling
```
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
**Installed Programs:** [hatchling]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/hatchling and /usr/lib/python3.14/site-packages/hatchling-1.28.0.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ----------------------------
  []{#hatchling-prog}[[**hatchling**]{.command}]{.term}   is a python module builder
  ------------------------------------------------------- ----------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#hatch-fancy-pypi-readme}Hatch-Fancy-Pypi-Readme-25.1.0 {#hatch-fancy-pypi-readme-25.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Hatch-Fancy-Pypi-Readme Module {#introduction-to-hatch-fancy-pypi-readme-module .sect3}

[Hatch-Fancy-Pypi-Readme]{.application} is a hatch plugin filling the readme field into the metadata of a Python module from markup language documentation files of the module.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/h/hatch-fancy-pypi-readme/hatch_fancy_pypi_readme-25.1.0.tar.gz](https://files.pythonhosted.org/packages/source/h/hatch-fancy-pypi-readme/hatch_fancy_pypi_readme-25.1.0.tar.gz){.ulink}

-   Download MD5 sum: 8e1ed2416887685adc1c909ed4fb63cb

-   Download size: 32 KB

-   Estimated disk space required: 388 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Hatch-Fancy-Pypi-Readme Dependencies

##### Required

[hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref}

##### Optional (for testing)

[build-1.5.0](python-modules.md#pypa-build "build-1.5.0"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Hatch-Fancy-Pypi-Readme {#installation-of-hatch-fancy-pypi-readme .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user hatch-fancy-pypi-readme
```

To test the installation, issue: [**pytest**]{.command}.
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

:::::::: {.content lang="en"}
### Contents {#contents-9 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/hatch_fancy_pypi_readme and /usr/lib/python3.14/site-packages/hatch_fancy_pypi_readme-25.1.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#hatch-vcs}Hatch_vcs-0.5.0 {#hatch_vcs-0.5.0 .sect2}

::::: {.package lang="en"}
### Introduction to Hatch-vcs Module {#introduction-to-hatch-vcs-module .sect3}

[Hatch_vcs]{.application} is a Hatch plugin for versioning with several Version Control Systems ( [VCS](../appendices/glossary.md#gVCS "VCS"){.xref} ).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/h/hatch-vcs/hatch_vcs-0.5.0.tar.gz](https://files.pythonhosted.org/packages/source/h/hatch-vcs/hatch_vcs-0.5.0.tar.gz){.ulink}

-   Download MD5 sum: 9a22a9f7203783e526959d34510a9672

-   Download size: 9.9 KB

-   Estimated disk space required: 436 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Hatch_vcs Dependencies

##### Required

[hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref} and [setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

##### Optional (for testing)

[git-2.54.0](git.md "Git-2.54.0"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Hatch_vcs {#installation-of-hatch_vcs .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user hatch_vcs
```

To test the installation, issue (`HOME=`{.literal} prevents the `.gitconfig`{.filename} file in the home directory from interfering the tests): [**HOME= pytest**]{.command}.
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

:::::::: {.content lang="en"}
### Contents {#contents-10 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/hatch_vcs and /usr/lib/python3.14/site-packages/hatch_vcs-0.5.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#idna}Idna-3.11 {#idna-3.11 .sect2}

::::: {.package lang="en"}
### Introduction to Idna Module {#introduction-to-idna-module .sect3}

The [Idna]{.application} module provides support for the Internationalized Domain Names in Applications (IDNA) protocol as specified in RFC 5891.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz](https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz){.ulink}

-   Download MD5 sum: 9a9c33db960e0d35cc5b257c37dabeff

-   Download size: 192 KB

-   Estimated disk space required: 5.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Idna Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Idna {#installation-of-idna .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user idna
```

To test the installation, run [**pytest**]{.command}.
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

:::::::: {.content lang="en"}
### Contents {#contents-11 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/idna and /usr/lib/python3.14/site-packages/idna-3.11.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#imagesize}Imagesize-1.4.1 {#imagesize-1.4.1 .sect2}

::::: {.package lang="en"}
### Introduction to Imagesize Module {#introduction-to-imagesize-module .sect3}

The [imagesize]{.application} package analyzes image file headers and returns the image size and DPI. It works with JPEG/JPEG 2000/PNG/GIF/TIFF/SVG/Netpbm/WebP formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/i/imagesize/imagesize-1.4.1.tar.gz](https://files.pythonhosted.org/packages/source/i/imagesize/imagesize-1.4.1.tar.gz){.ulink}

-   Download MD5 sum: 5a40586a25c07e1a8f16f6267252c321

-   Download size: 1.2 MB

-   Estimated disk space required: 1.8 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Imagesize Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [requests-2.34.2](python-modules.md#requests "Requests-2.34.2"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Imagesize {#installation-of-imagesize .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user imagesize
```

The tests for this package are known to be broken. To test the installation anyway, run [**pytest**]{.command}.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/imagesize and /usr/lib/python3.14/site-packages/imagesize-1.4.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#iniconfig}Iniconfig-2.3.0 {#iniconfig-2.3.0 .sect2}

::::: {.package lang="en"}
### Introduction to Iniconfig Module {#introduction-to-iniconfig-module .sect3}

[Iniconfig]{.application} is a small and simple INI-file parser module.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/i/iniconfig/iniconfig-2.3.0.tar.gz](https://files.pythonhosted.org/packages/source/i/iniconfig/iniconfig-2.3.0.tar.gz){.ulink}

-   Download MD5 sum: 5c1d9c21275feb3da71400bf716edd72

-   Download size: 24 KB

-   Estimated disk space required: 304 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Iniconfig Dependencies

##### Required

[setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Iniconfig {#installation-of-iniconfig .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user iniconfig
```

To test the results, issue: [**pytest**]{.command}
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/iniconfig and /usr/lib/python3.14/site-packages/iniconfig-2.3.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#maturin}maturin-1.13.3 {#maturin-1.13.3 .sect2}

::::: {.package lang="en"}
### Introduction to the maturin Module {#introduction-to-the-maturin-module .sect3}

The [maturin]{.application} module provides a build system for rust binaries and crates generated from Python packages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/PyO3/maturin/archive/v1.13.3/maturin-1.13.3.tar.gz](https://github.com/PyO3/maturin/archive/v1.13.3/maturin-1.13.3.tar.gz){.ulink}

-   Download MD5 sum: dd56fa57f2b0cca75d09b840f2688126

-   Download size: 744 KB

-   Estimated disk space required: 509 MB (add 3.2 GB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests)
:::

#### maturin Dependencies

##### Required

[rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref} and [setuptools_rust-1.12.0](python-dependencies.md#setuptools_rust "setuptools_rust-1.12.0"){.xref}

##### Optional

[patchelf-0.18.0](patchelf.md "Patchelf-0.18.0"){.xref} and [zig](https://ziglang.org/){.ulink}

##### Optional (for testing)

[cffi](https://pypi.org/project/cffi/){.ulink}, [pycparser](https://pypi.org/project/pycparser/){.ulink}, and [virtualenv](https://pypi.org/project/virtualenv/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of maturin {#installation-of-maturin .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user maturin
```

To test the installation, issue:

``` userinput
python3 -m venv --system-site-packages testenv     &&
testenv/bin/pip3 install cffi pycparser virtualenv &&
PATH=$PWD/testenv/bin:$PATH cargo test
```

One test, `module_writer::mock_writer::write_dist_info_uses_license_file_sources`{.filename}, is known to fail.
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
**Installed Programs:** [maturin]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/maturin and /usr/lib/python3.14/site-packages/maturin-1.13.3.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ------------------------------------------------------------------------------------------------
  []{#maturin-prog}[[**maturin**]{.command}]{.term}   builds crates with pyo3, cffi, and uniffi bindings as well as rust binaries as Python packages
  --------------------------------------------------- ------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#markdown}Markdown-3.10.2 {#markdown-3.10.2 .sect2}

::::: {.package lang="en"}
### Introduction to Markdown Module {#introduction-to-markdown-module .sect3}

[Markdown]{.application} is a Python parser for John Gruber's Markdown specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/M/Markdown/markdown-3.10.2.tar.gz](https://files.pythonhosted.org/packages/source/M/Markdown/markdown-3.10.2.tar.gz){.ulink}

-   Download MD5 sum: ec7bae2cc261dcb2c9a27271b60d40d4

-   Download size: 364 KB

-   Estimated disk space required: 21 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Markdown Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [PyYAML-6.0.3](python-modules.md#PyYAML "PyYAML-6.0.3"){.xref}, and [coverage](https://pypi.org/project/coverage/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Markdown {#installation-of-markdown .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Markdown
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [PyYAML-6.0.3](python-modules.md#PyYAML "PyYAML-6.0.3"){.xref} are installed and the other optional dependency is not, the installation can be tested with:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install coverage                          &&
python3 /usr/bin/pytest --ignore=tests/test_syntax/extensions/test_md_in_html.py
deactivate
```

The instructions above skip the `test_md_in_html`{.filename} test because it is incompatible with pytest-9.0 and later. One test, `test_apis.py::TestConvertFile::testFileNames`{.filename}, will output a deprecation warning because of Python 3.14.
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
**Installed Programs:** [markdown_py]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/markdown and /usr/lib/python3.14/site-packages/Markdown-3.10.2.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------
  []{#markdown_py}[[**markdown_py**]{.command}]{.term}   converts markdown files to (x)html
  ------------------------------------------------------ ------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#meson_python}Meson_python-0.19.0 {#meson_python-0.19.0 .sect2}

::::: {.package lang="en"}
### Introduction to Meson_python Module {#introduction-to-meson_python-module .sect3}

The [Meson_python]{.application} module contains a Python build backend (PEP 517) for Meson projects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/m/meson_python/meson_python-0.19.0.tar.gz](https://files.pythonhosted.org/packages/source/m/meson_python/meson_python-0.19.0.tar.gz){.ulink}

-   Download MD5 sum: 36c0a47464398008ea3939bbef334f31

-   Download size: 100 KB

-   Estimated disk space required: 104 MB (with tests)

-   Estimated build time: less than 0.1 SBU
:::

#### Meson_python Dependencies

##### Required

[pyproject-metadata-0.11.0](python-dependencies.md#pyproject-metadata "Pyproject-Metadata-0.11.0"){.xref}

##### Recommended (Runtime)

[patchelf-0.18.0](patchelf.md "Patchelf-0.18.0"){.xref}

##### Optional (for testing)

[build-1.5.0](python-modules.md#pypa-build "build-1.5.0"){.xref}, [cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, and [pytest-mock](https://pypi.org/project/pytest-mock/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Meson_python {#installation-of-meson_python .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user meson_python
```

To test the installation, make sure [git-2.54.0](git.md "Git-2.54.0"){.xref}, [patchelf-0.18.0](patchelf.md "Patchelf-0.18.0"){.xref}, and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} are installed, then issue (`HOME=`{.literal} prevents the `.gitconfig`{.filename} file in the home directory from interfering the tests):

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group=test          &&
HOME= testenv/bin/python -m pytest
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-16 .sect3}

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
**Installed Directories:** [/usr/lib/python3.14/site-packages/meson_python and /usr/lib/python3.14/site-packages/meson_python-0.19.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#msgpack}Msgpack-1.1.2 {#msgpack-1.1.2 .sect2}

::::: {.package lang="en"}
### Introduction to Msgpack Module {#introduction-to-msgpack-module .sect3}

[Msgpack]{.application} is an efficient binary serialization format. It lets you exchange data among multiple languages like JSON. But it's faster and smaller. This package provides CPython bindings for reading and writing Msgpack data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/m/msgpack/msgpack-1.1.2.tar.gz](https://files.pythonhosted.org/packages/source/m/msgpack/msgpack-1.1.2.tar.gz){.ulink}

-   Download MD5 sum: b69973fa3325abdced4051f5ef3847d3

-   Download size: 172 KB

-   Estimated disk space required: 4.1 MB (add 0.3 MB for tests)

-   Estimated build time: less than 0.1 SBU
:::

#### Msgpack Dependencies

##### Required

[cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Msgpack {#installation-of-msgpack .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user msgpack
```

To test the installation issue [**pytest**]{.command}.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/msgpack-1.1.2.dist-info and /usr/lib/python3.14/site-packages/msgpack]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pathspec}Pathspec-1.0.4 {#pathspec-1.0.4 .sect2}

::::: {.package lang="en"}
### Introduction to Pathspec Module {#introduction-to-pathspec-module .sect3}

[Pathspec]{.application} is a utility library for pattern matching of file paths.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pathspec/pathspec-1.0.4.tar.gz](https://files.pythonhosted.org/packages/source/p/pathspec/pathspec-1.0.4.tar.gz){.ulink}

-   Download MD5 sum: 18d9e6adb72e544b56a88c3e53094b4e

-   Download size: 128 KB

-   Estimated disk space required: 2.3 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Pathspec Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Pathspec {#installation-of-pathspec .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pathspec
```

To test the installation, issue [**pytest**]{.command}.
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

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/pathspec and /usr/lib/python3.14/site-packages/pathspec-1.0.4.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pluggy}Pluggy-1.6.0 {#pluggy-1.6.0 .sect2}

::::: {.package lang="en"}
### Introduction to Pluggy Module {#introduction-to-pluggy-module .sect3}

The [Pluggy]{.application} package gives users the ability to extend or modify the behaviour of a host program by installing a plugin for that program. The plugin code will run as part of normal program execution, changing or enhancing certain aspects of it. In essence, [pluggy]{.application} enables function hooking so a user can build [“[pluggable]{.quote}”]{.quote} systems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pluggy/pluggy-1.6.0.tar.gz](https://files.pythonhosted.org/packages/source/p/pluggy/pluggy-1.6.0.tar.gz){.ulink}

-   Download MD5 sum: 54391218af778acb006c2d915085d469

-   Download size: 68 KB

-   Estimated disk space required: 588 KB (add 18 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Pluggy Dependencies

##### Recommended

[setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Pluggy {#installation-of-pluggy .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pluggy
```

To test the installation, issue: [**pytest**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-19 .sect3}

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
### Contents {#contents-19 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pluggy and /usr/lib/python3.14/site-packages/pluggy-1.6.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pyproject-hooks}Pyproject_Hooks-1.2.0 {#pyproject_hooks-1.2.0 .sect2}

::::: {.package lang="en"}
### Introduction to Pyproject_Hooks Module {#introduction-to-pyproject_hooks-module .sect3}

[Pyproject_Hooks]{.application} is a low-level library for calling build-backends in `pyproject.toml`{.filename}-based projects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pyproject-hooks/pyproject_hooks-1.2.0.tar.gz](https://files.pythonhosted.org/packages/source/p/pyproject-hooks/pyproject_hooks-1.2.0.tar.gz){.ulink}

-   Download MD5 sum: ed3dd1b984339e83e35f676d7169c192

-   Download size: 19 KB

-   Estimated disk space required: 520 KB (14 MB with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Pyproject_Hooks Dependencies

##### Optional (for tests)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [testpath](https://pypi.org/project/testpath/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Pyproject_Hooks {#installation-of-pyproject_hooks .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pyproject_hooks
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependency is not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install testpath                          &&
python3 -m pytest
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/pyproject_hooks and /usr/lib/python3.14/site-packages/pyproject_hooks-1.2.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pyproject-metadata}Pyproject-Metadata-0.11.0 {#pyproject-metadata-0.11.0 .sect2}

::::: {.package lang="en"}
### Introduction to Pyproject-Metadata Module {#introduction-to-pyproject-metadata-module .sect3}

The [Pyproject-Metadata]{.application} module contains a data class for PEP 621 metadata with support for [“[core metadata]{.quote}”]{.quote} (PEP 643) generation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pyproject-metadata/pyproject_metadata-0.11.0.tar.gz](https://files.pythonhosted.org/packages/source/p/pyproject-metadata/pyproject_metadata-0.11.0.tar.gz){.ulink}

-   Download MD5 sum: f5f54a0951177667dfd7eefdfaa11372

-   Download size: 44 KB

-   Estimated disk space required: 700 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Pyproject-Metadata Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [exceptiongroup](https://pypi.org/project/exceptiongroup/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Pyproject-Metadata {#installation-of-pyproject-metadata .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pyproject-metadata
```

To test the installation, make sure [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed and run:

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install exceptiongroup        &&
testenv/bin/python3 -m pytest
```
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

:::::::: {.content lang="en"}
### Contents {#contents-21 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pyproject_metadata and /usr/lib/python3.14/site-packages/pyproject_metadata-0.11.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#pytz}Pytz-2025.2 {#pytz-2025.2 .sect2}

::::: {.package lang="en"}
### Introduction to Pytz Module {#introduction-to-pytz-module .sect3}

The [Pytz]{.application} library brings the IANA tz database into Python. It allows accurate and cross-platform timezone calculations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/p/pytz/pytz-2025.2.tar.gz](https://files.pythonhosted.org/packages/source/p/pytz/pytz-2025.2.tar.gz){.ulink}

-   Download MD5 sum: 6a7760c71e38b6c75577b34b18b89d5b

-   Download size: 316 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Pytz dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Pytz {#installation-of-pytz .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user pytz
```

To test the installation, run [**pytest**]{.command}. A few warnings are issued.
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

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-22 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/pytz and /usr/lib/python3.14/site-packages/pytz-2025.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#roman-numerals}Roman-numerals-4.1.0 {#roman-numerals-4.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Roman-numerals Module {#introduction-to-roman-numerals-module .sect3}

[Roman-numerals]{.application} is a python library for manipulating well-formed Roman numerals.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/r/roman-numerals/roman_numerals-4.1.0.tar.gz](https://files.pythonhosted.org/packages/source/r/roman-numerals/roman_numerals-4.1.0.tar.gz){.ulink}

-   Download MD5 sum: 0154d3518651ec46fb0ad1dfbdf86348

-   Download size: 12 KB

-   Estimated disk space required: 320 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Roman-numerals Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Roman-numerals {#installation-of-roman-numerals .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user roman-numerals
```

To test the installation, issue: [**pytest**]{.command}.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/roman_numerals and /usr/lib/python3.14/site-packages/roman_numerals-4.1.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#semantic_version}semantic_version-2.10.0 {#semantic_version-2.10.0 .sect2}

::::: {.package lang="en"}
### Introduction to the semantic_version Module {#introduction-to-the-semantic_version-module .sect3}

The [semantic_version]{.application} module brings a small library to handle the standard for [Semantic Versioning](http://semver.org/){.ulink} in Python.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/semantic_version/semantic_version-2.10.0.tar.gz](https://files.pythonhosted.org/packages/source/s/semantic_version/semantic_version-2.10.0.tar.gz){.ulink}

-   Download MD5 sum: e48abef93ba69abcd4eaf4640edfc38b

-   Download size: 52 KB

-   Estimated disk space required: 656 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### semantic_version Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [Django](http://www.djangoproject.com/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of semantic_version {#installation-of-semantic_version .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user semantic_version
```

To test the installation, run [**pytest**]{.command}. There are 500+ warnings issued due to deprecated syntax with newer versions of Python.
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
### Contents {#contents-24 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/semantic_version and /usr/lib/python3.14/site-packages/semantic_version-2.10.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#setuptools_rust}setuptools_rust-1.12.0 {#setuptools_rust-1.12.0 .sect2}

::::: {.package lang="en"}
### Introduction to the setuptools_rust Module {#introduction-to-the-setuptools_rust-module .sect3}

The [setuptools_rust]{.application} module provides a plugin to setuptools allowing for the compilation of Python extensions in Rust.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/setuptools_rust/setuptools_rust-1.12.0.tar.gz](https://files.pythonhosted.org/packages/source/s/setuptools_rust/setuptools_rust-1.12.0.tar.gz){.ulink}

-   Download MD5 sum: 6ecee3d9f3ac646a52d60155022fd0d0

-   Download size: 304 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### setuptools_rust Dependencies

##### Required

[semantic_version-2.10.0](python-dependencies.md#semantic_version "semantic_version-2.10.0"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of setuptools_rust {#installation-of-setuptools_rust .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user setuptools_rust
```

To test the installation, issue: [**pytest --doctest-modules setuptools_rust tests**]{.command}. One warning will be present about an API deprecation.
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

:::::::: {.content lang="en"}
### Contents {#contents-25 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/setuptools_rust and /usr/lib/python3.14/site-packages/setuptools_rust-1.12.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#setuptools_scm}Setuptools_scm-9.2.2 {#setuptools_scm-9.2.2 .sect2}

::::: {.package lang="en"}
### Introduction to Setuptools_scm Module {#introduction-to-setuptools_scm-module .sect3}

The [Setuptools_scm]{.application} package is used to extract Python package versions from git or hg metadata instead of declaring them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/setuptools_scm/setuptools_scm-9.2.2.tar.gz](https://files.pythonhosted.org/packages/source/s/setuptools_scm/setuptools_scm-9.2.2.tar.gz){.ulink}

-   Download MD5 sum: 72975fc3ec40a1ae06bb2d86ca8ac48d

-   Download size: 200 KB

-   Estimated disk space required: 1.6 MB (add 75 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
:::

#### Setuptools_scm Dependencies

##### Optional (for testing)

[build-1.5.0](python-modules.md#pypa-build "build-1.5.0"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [mercurial-7.2.2](mercurial.md "Mercurial-7.2.2"){.xref}, [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref}, [pytest-timeout](https://pypi.org/project/pytest-timeout/){.ulink}, [rich](https://pypi.org/project/rich/){.ulink}, [ruff](https://pypi.org/project/ruff/){.ulink}, [mypy](https://pypi.org/project/mypy/){.ulink}, [griffe](https://pypi.org/project/griffe/){.ulink}, and [flake8](https://pypi.org/project/flake8/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Setuptools_scm {#installation-of-setuptools_scm .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user setuptools_scm
```

To test the installation, make sure [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and the other optional dependencies are installed and run (`HOME=`{.literal} prevents the `.gitconfig`{.filename} file in the home directory from interfering the tests):

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install --group test          &&
TZ=UTC HOME= testenv/bin/python3 -m pytest
```

If [git-2.54.0](git.md "Git-2.54.0"){.xref} and/or [mercurial-7.2.2](mercurial.md "Mercurial-7.2.2"){.xref} are not installed, the tests depending on the missing one(s) will be skipped. Some tests may invoke [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} and request a password.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-26 .sect3}

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
### Contents {#contents-26 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/setuptools_scm and /usr/lib/python3.14/site-packages/setuptools_scm-9.2.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#smartypants}Smartypants-2.0.2 {#smartypants-2.0.2 .sect2}

::::: {.package lang="en"}
### Introduction to Smartypants Module {#introduction-to-smartypants-module .sect3}

[Smartypants]{.application} translates plain ASCII punctuation characters into [“[smart]{.quote}”]{.quote} typographic punctuation HTML entities.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/smartypants/smartypants-2.0.2.tar.gz](https://files.pythonhosted.org/packages/source/s/smartypants/smartypants-2.0.2.tar.gz){.ulink}

-   Download MD5 sum: 3149badecd0771c80ee9db4d09695edd

-   Download size: 17 KB

-   Estimated disk space required: 344 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Smartypants Dependencies

##### Optional (for testing)

[docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}, [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Smartypants {#installation-of-smartypants .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user smartypants
```

To test the results, issue:

``` userinput
cp /usr/bin/smartypants . &&
pytest
```

One test, `SetupTestCase::test_long_description`{.filename}, is known to print a warning about upcoming changes in docutils.
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
### Contents {#contents-27 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [smartypants]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/smartypants-2.0.2.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------
  []{#smartypants-prog}[[**smartypants**]{.command}]{.term}   translates ASCII punctuation to HTML punctuation.
  ----------------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#snowballstemmer}Snowballstemmer-3.0.1 {#snowballstemmer-3.0.1 .sect2}

::::: {.package lang="en"}
### Introduction to Snowballstemmer Module {#introduction-to-snowballstemmer-module .sect3}

The [Snowballstemmer]{.application} package is a small string processing language for creating stemming algorithms for use in Information Retrieval, plus a collection of stemming algorithms implemented using it. Stemming maps different forms of the same word to a common [“[stem]{.quote}”]{.quote} — for example, the English stemmer maps [*connection*]{.emphasis}, [*connections*]{.emphasis}, [*connective*]{.emphasis}, [*connected*]{.emphasis}, and [*connecting*]{.emphasis} to [*connect*]{.emphasis}. Running a search for [*connected*]{.emphasis} would also find documents which only have the other forms.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/snowballstemmer/snowballstemmer-3.0.1.tar.gz](https://files.pythonhosted.org/packages/source/s/snowballstemmer/snowballstemmer-3.0.1.tar.gz){.ulink}

-   Download MD5 sum: 25a584cc4898a0833f9b4c059685672c

-   Download size: 104 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of Snowballstemmer {#installation-of-snowballstemmer .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user snowballstemmer
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
### Contents {#contents-28 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/snowballstemmer and /usr/lib/python3.14/site-packages/snowballstemmer-3.0.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-applehelp}Sphinxcontrib-applehelp-2.0.0 {#sphinxcontrib-applehelp-2.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-applehelp Module {#introduction-to-sphinxcontrib-applehelp-module .sect3}

The [Sphinxcontrib-applehelp]{.application} package is a [Sphinx]{.application} extension which outputs Apple help books.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-applehelp/sphinxcontrib_applehelp-2.0.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-applehelp/sphinxcontrib_applehelp-2.0.0.tar.gz){.ulink}

-   Download MD5 sum: e16bb1d6199f686d411c180e64a8e831

-   Download size: 20 KB

-   Estimated disk space required: 1.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU
:::

#### Sphinxcontrib-applehelp Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency)
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-applehelp {#installation-of-sphinxcontrib-applehelp .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-applehelp
```

To test the installation, run [**pytest**]{.command}.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_applehelp-2.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-devhelp}Sphinxcontrib-devhelp-2.0.0 {#sphinxcontrib-devhelp-2.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-devhelp Module {#introduction-to-sphinxcontrib-devhelp-module .sect3}

The [Sphinxcontrib-devhelp]{.application} package is a [Sphinx]{.application} extension which outputs [Devhelp](https://wiki.gnome.org/Apps/Devhelp){.ulink} documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-devhelp/sphinxcontrib_devhelp-2.0.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-devhelp/sphinxcontrib_devhelp-2.0.0.tar.gz){.ulink}

-   Download MD5 sum: 79ef5937b8397f724f4fb065073cd24c

-   Download size: 16 KB

-   Estimated disk space required: 984 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Sphinxcontrib-devhelp Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency)
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-devhelp {#installation-of-sphinxcontrib-devhelp .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-devhelp
```

To test the installation, run [**pytest**]{.command}.

The test suite will print a warning about upcoming changes in sphinx-11.
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

`--upgrade`{.option}: Upgrade the package to the newest available version. This option is used with the install command if a version of the package is already installed.

`--force-reinstall`{.option}: Reinstall the package even if it is up-to-date. This option is used with the install command if reinstalling the package or reverting to an earlier version of the package.

`--no-deps`{.option}: Do not install package dependencies. This option may be needed with the --upgrade or --force-reinstall options.
:::

:::::::: {.content lang="en"}
### Contents {#contents-30 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_devhelp-2.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-htmlhelp}Sphinxcontrib-htmlhelp-2.1.0 {#sphinxcontrib-htmlhelp-2.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-htmlhelp Module {#introduction-to-sphinxcontrib-htmlhelp-module .sect3}

The [Sphinxcontrib-htmlhelp]{.application} package is a [Sphinx]{.application} extension which renders HTML help files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-htmlhelp/sphinxcontrib_htmlhelp-2.1.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-htmlhelp/sphinxcontrib_htmlhelp-2.1.0.tar.gz){.ulink}

-   Download MD5 sum: 1326f55f6bea49ab6a846c0088bc369e

-   Download size: 24 KB

-   Estimated disk space required: 1.2 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Sphinxcontrib-htmlhelp Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency), and [html5lib-1.1](python-modules.md#html5lib "html5lib-1.1"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-htmlhelp {#installation-of-sphinxcontrib-htmlhelp .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-htmlhelp
```

If the optional dependencies are installed, the package can be tested with the following commands. The first command fixes a problem with removed API in Sphinx.

``` userinput
sed -i 's/keyword/pair: keyword;/' tests/roots/test-chm/index.rst &&
pytest
```

The tests will output a deprecation notice about upcoming changes in sphinx-11.x.
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
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_htmlhelp-2.1.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-jquery}Sphinxcontrib-jquery-4.1 {#sphinxcontrib-jquery-4.1 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-jquery Module {#introduction-to-sphinxcontrib-jquery-module .sect3}

The [Sphinxcontrib-jquery]{.application} package is a [Sphinx]{.application} extension which includes jQuery on newer Sphinx releases.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jquery/sphinxcontrib-jquery-4.1.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jquery/sphinxcontrib-jquery-4.1.tar.gz){.ulink}

-   Download MD5 sum: 46ea52845b17343ed6c61e6963fb265d

-   Download size: 120 KB

-   Estimated disk space required: 552 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Sphinxcontrib-jquery Dependencies

##### Required

[sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-jquery {#installation-of-sphinxcontrib-jquery .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-jquery
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-32 .sect3}

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
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_jquery-4.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#sc-jsmath}Sphinxcontrib-jsmath-1.0.1 {#sphinxcontrib-jsmath-1.0.1 .sect2}

:::::: {.package lang="en"}
### Introduction to Sphinxcontrib-jsmath Module {#introduction-to-sphinxcontrib-jsmath-module .sect3}

The [Sphinxcontrib-jsmath]{.application} package is a [Sphinx]{.application} extension which renders display math in HTML via JavaScript.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jsmath/sphinxcontrib-jsmath-1.0.1.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jsmath/sphinxcontrib-jsmath-1.0.1.tar.gz){.ulink}

-   Download MD5 sum: e45179f0a3608b6766862e0f34c23b62

-   Download size: 5.7 KB

-   Estimated disk space required: 324 KB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch){.ulink}
:::

#### Sphinxcontrib-jsmath Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency)
::::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-jsmath {#installation-of-sphinxcontrib-jsmath .sect3}

First, fix several incompatibilities with Sphinx-9.1 and pytest-9.0.2:

``` userinput
patch -Np1 -i ../sphinxcontrib-jsmath-1.0.1-sphinx9_fixes-1.patch
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-jsmath
```

The installation can be tested with the following command:

``` userinput
pytest
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-33 .sect3}

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
### Contents {#contents-33 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_jsmath-1.0.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-qthelp}Sphinxcontrib-qthelp-2.0.0 {#sphinxcontrib-qthelp-2.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-qthelp Module {#introduction-to-sphinxcontrib-qthelp-module .sect3}

The [Sphinxcontrib-qthelp]{.application} package is a [Sphinx]{.application} extension which outputs QtHelp documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib-qthelp/sphinxcontrib_qthelp-2.0.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib-qthelp/sphinxcontrib_qthelp-2.0.0.tar.gz){.ulink}

-   Download MD5 sum: ed4f32003b71a54ac3d68aa651cb6573

-   Download size: 20 KB

-   Estimated disk space required: 18 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Sphinxcontrib-qthelp Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency), and [defusedxml](https://pypi.org/project/defusedxml/){.ulink}
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-qthelp {#installation-of-sphinxcontrib-qthelp .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-qthelp
```

The installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
testenv/bin/pip3 install defusedxml            &&
testenv/bin/python -m pytest
```

The test suite will print warnings about upcoming changes in Sphinx.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-34 .sect3}

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
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_qthelp-2.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#sc-serializinghtml}Sphinxcontrib-serializinghtml-2.0.0 {#sphinxcontrib-serializinghtml-2.0.0 .sect2}

::::: {.package lang="en"}
### Introduction to Sphinxcontrib-serializinghtml Module {#introduction-to-sphinxcontrib-serializinghtml-module .sect3}

The [Sphinxcontrib-serializinghtml]{.application} package is a [Sphinx]{.application} extension which outputs [“[serialized]{.quote}”]{.quote} HTML files (json and pickle).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/s/sphinxcontrib_serializinghtml/sphinxcontrib_serializinghtml-2.0.0.tar.gz](https://files.pythonhosted.org/packages/source/s/sphinxcontrib_serializinghtml/sphinxcontrib_serializinghtml-2.0.0.tar.gz){.ulink}

-   Download MD5 sum: b536ce248d5ca134a30018692a17c6ca

-   Download size: 16 KB

-   Estimated disk space required: 1.1 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Sphinxcontrib-serializinghtml Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (circular dependency)
:::::

::: {.installation lang="en"}
### Installation of Sphinxcontrib-serializinghtml {#installation-of-sphinxcontrib-serializinghtml .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user sphinxcontrib-serializinghtml
```

To test the installation, first install [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, then run [**pytest**]{.command}. The test suite will print two warnings about upcoming changes in Sphinx.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-35 .sect3}

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
### Contents {#contents-35 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/sphinxcontrib and /usr/lib/python3.14/site-packages/sphinxcontrib_serializinghtml-2.0.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#trove-classifiers}Trove-Classifiers-2026.1.14.14 {#trove-classifiers-2026.1.14.14 .sect2}

::::: {.package lang="en"}
### Introduction to Trove-Classifiers Module {#introduction-to-trove-classifiers-module .sect3}

[Trove-Classifiers]{.application} is a Python library to encompass all valid PyPI classifiers used to categorize projects and releases per PEP 301, for example `Topic :: System :: Filesystems`{.literal} and `Development Status :: 6 - Mature`{.literal}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/t/trove_classifiers/trove_classifiers-2026.1.14.14.tar.gz](https://files.pythonhosted.org/packages/source/t/trove_classifiers/trove_classifiers-2026.1.14.14.tar.gz){.ulink}

-   Download MD5 sum: ded610aa62cf3dc78360e96802ca72e8

-   Download size: 20 KB

-   Estimated disk space required: 540 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Trove-Classifiers Dependencies

##### Optional (for testing)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Trove-Classifiers {#installation-of-trove-classifiers .sect3}

First, hard code the package version into `setup.py`{.filename} to work around an issue causing the generated wheel to contain an incorrect version string when the [calver]{.application} module is not installed:

``` userinput
sed -i '/calver/s/^/#/;$iversion="2026.1.14.14"' setup.py
```

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user trove-classifiers
```

To test the installation, issue: [**pytest**]{.command}.
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-36 .sect3}

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
### Contents {#contents-36 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/trove_classifiers and /usr/lib/python3.14/site-packages/trove_classifiers-2026.1.14.14.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#typogrify}Typogrify-2.1.0 {#typogrify-2.1.0 .sect2}

::::: {.package lang="en"}
### Introduction to Typogrify Module {#introduction-to-typogrify-module .sect3}

[Typogrify]{.application} provides filters to enhance web typography, including support for Django and Jinja templates.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/t/typogrify/typogrify-2.1.0.tar.gz](https://files.pythonhosted.org/packages/source/t/typogrify/typogrify-2.1.0.tar.gz){.ulink}

-   Download MD5 sum: 7cc9a0a1de988329add3982519dc7971

-   Download size: 13 KB

-   Estimated disk space required: 404 KB

-   Estimated build time: less than 0.1 SBU
:::

#### Typogrify Dependencies

##### Required

[hatchling-1.28.0](python-dependencies.md#hatchling "Hatchling-1.28.0"){.xref} and [smartypants-2.0.2](python-dependencies.md#smartypants "Smartypants-2.0.2"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Typogrify {#installation-of-typogrify .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user typogrify
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-37 .sect3}

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
### Contents {#contents-37 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/typogrify and /usr/lib/python3.14/site-packages/typogrify-2.1.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::::::::::::::: {.sect2 lang="en"}
## []{#urllib3}Urllib3-2.7.0 {#urllib3-2.7.0 .sect2}

::::: {.package lang="en"}
### Introduction to Urllib3 Module {#introduction-to-urllib3-module .sect3}

The [Urllib3]{.application} module is a powerful, user-friendly HTTP client for Python. It brings many critical features that are missing from the Python standard libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.7.0.tar.gz](https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.7.0.tar.gz){.ulink}

-   Download MD5 sum: e79707b798a66c8165c9c441440f4e80

-   Download size: 424 KB

-   Estimated disk space required: 3.5 MB (add 123 MB for tests)

-   Estimated build time: less than 0.1 SBU (0.6 SBU for tests)
:::

#### Urllib3 Dependencies

##### Required

[hatch_vcs-0.5.0](python-dependencies.md#hatch-vcs "Hatch_vcs-0.5.0"){.xref}

##### Optional (for tests)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [httpx](https://pypi.org/project/httpx/){.ulink}, [hypercorn](https://pypi.org/project/Hypercorn/){.ulink}, [mock](https://pypi.org/project/mock/){.ulink}, [PySocks](https://pypi.org/project/PySocks/){.ulink}, [pytest-timeout](https://pypi.org/project/pytest-timeout/){.ulink}, [python-dateutil](https://pypi.org/project/python-dateutil/){.ulink}, [quart](https://pypi.org/project/Quart/){.ulink}, [quart-trio](https://pypi.org/project/quart-trio/){.ulink}, [tornado](https://pypi.org/project/tornado/){.ulink}, [trio](https://pypi.org/project/trio/){.ulink}, and [trustme](https://pypi.org/project/trustme/){.ulink}
:::::

:::: {.installation lang="en"}
### Installation of Urllib3 {#installation-of-urllib3 .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user urllib3
```

Assuming [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} is installed, but the other optional dependencies are not, the installation can be tested with the following commands:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install --group dev                       &&
python3 /usr/bin/pytest --timeout 10
deactivate
```

At least 46 failures are expected with the instructions above. There are several reasons. First, upstream uses a patched version of the hypercorn module for their own testing, that can only be obtained through [**git**]{.command} at [https://github.com/urllib3/hypercorn.git](https://github.com/urllib3/hypercorn.git){.ulink}, at revision [“[urllib3-changes]{.quote}”]{.quote}, and should be installed first in the virtual environment. Second, it seems the test suite has not been adapted to recent versions of Python, and to recent versions of the external Python modules. In particular, some tests will hang, so [**pytest**]{.command} needs the *`--timeout`* switch.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tests are currently broken with OpenSSL-4 as the pyopenssl module that is downloaded and installed into the virtual environment has not been adjusted for changes required by OpenSSL-4.
:::
::::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-38 .sect3}

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
### Contents {#contents-38 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/urllib3 and /usr/lib/python3.14/site-packages/urllib3-2.7.0.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#uv_build}uv_build-0.10.2 {#uv_build-0.10.2 .sect2}

::::: {.package lang="en"}
### Introduction to the uv_build Module {#introduction-to-the-uv_build-module .sect3}

The [uv_build]{.application} module provides the PEP 517 build backend from the 'uv' Python package management system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/u/uv_build/uv_build-0.10.2.tar.gz](https://files.pythonhosted.org/packages/source/u/uv_build/uv_build-0.10.2.tar.gz){.ulink}

-   Download MD5 sum: 93b4a0baf7b84d97cb8750d742ef164a

-   Download size: 328 KB

-   Estimated disk space required: 356 MB

-   Estimated build time: 0.9 SBU
:::

#### uv_build Dependencies

##### Required

[maturin-1.13.3](python-dependencies.md#maturin "maturin-1.13.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of uv_build {#installation-of-uv_build .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user uv_build
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-39 .sect3}

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
### Contents {#contents-39 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [uv_build]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/uv_build and /usr/lib/python3.14/site-packages/uv_build-0.10.2.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#webencodings}webencodings-0.5.1 {#webencodings-0.5.1 .sect2}

::::: {.package lang="en"}
### Introduction to Webencodings Module {#introduction-to-webencodings-module .sect3}

The [webencodings]{.application} module is a Python implementation of the [WHATWG Encoding standard](https://encoding.spec.whatwg.org/){.ulink}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.pythonhosted.org/packages/source/w/webencodings/webencodings-0.5.1.tar.gz](https://files.pythonhosted.org/packages/source/w/webencodings/webencodings-0.5.1.tar.gz){.ulink}

-   Download MD5 sum: 32f6e261d52e57bf7e1c4d41546d15b8

-   Download size: 12 KB

-   Estimated disk space required: 164 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
### Installation of webencodings {#installation-of-webencodings .sect3}

Build the module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user webencodings
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-40 .sect3}

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
### Contents {#contents-40 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/webencodings and /usr/lib/python3.14/site-packages/webencodings-0.5.1.dist-info]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](python-modules.md "Python Modules"){accesskey="p"}

    Python Modules

-   [Next](ruby.md "Ruby-4.0.5"){accesskey="n"}

    Ruby-4.0.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
