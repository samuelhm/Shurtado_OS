::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){accesskey="p"}

    libglycin-gtk4 from glycin-2.1.1

-   [Next](harfbuzz.md "harfBuzz-14.2.1"){accesskey="n"}

    harfBuzz-14.2.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#graphite2}Graphite2-1.3.14 {#graphite2-1.3.14 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Graphite2 {#introduction-to-graphite2 .sect2}

[Graphite2]{.application} is a rendering engine for graphite fonts. These are TrueType fonts with additional tables containing smart rendering information and were originally developed to support complex non-Roman writing systems. They may contain rules for e.g. ligatures, glyph substitution, kerning, justification - this can make them useful even on text written in Roman writing systems such as English. Note that [firefox]{.application} by default provides an internal copy of the graphite engine and cannot use a system version (although it can now be patched to use it), but it too should benefit from the availability of graphite fonts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz](https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz){.ulink}

-   Download MD5 sum: 1bccb985a7da01092bfb53bb5041e836

-   Download size: 6.3 MB

-   Estimated disk space required: 30 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### Graphite2 Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[FreeType-2.14.3](freetype2.md "FreeType-2.14.3"){.xref}, [silgraphite](https://sourceforge.net/projects/silgraphite/files/silgraphite/2.3.1/){.ulink} to build the [**comparerender**]{.command} test and benchmarking tool, and if that is present, and [harfBuzz-14.2.1](harfbuzz.md "harfBuzz-14.2.1"){.xref} to add more functionality to it (this is a circular dependency, you would need to first build [graphite2]{.application} without [harfbuzz]{.application}).

To build the documentation: [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), and [dblatex](https://dblatex.sourceforge.net/){.ulink} (for PDF docs)

To execute the test suite you will need [FontTools](https://pypi.python.org/pypi/FontTools){.ulink} (Python 3 module), otherwise, the "cmp" tests fail.

#### Optional (at runtime)

You will need at least one suitable [graphite font](https://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_fonts){.ulink} for the package to be useful.
:::::

::: {.installation lang="en"}
## Installation of Graphite2 {#installation-of-graphite2 .sect2}

Some tests fail if [FontTools](https://pypi.python.org/pypi/FontTools){.ulink} (Python 3 module) is not installed. These tests can be removed with:

``` userinput
sed -i '/cmptest/d' tests/CMakeLists.txt
```

Fix building this package with CMake 4.0 by updating its syntax to conform to newer versions of CMake:

``` userinput
sed -i '/cmake_policy(SET CMP0012 NEW)/d' CMakeLists.txt &&
sed -i 's/PythonInterp/Python3/' CMakeLists.txt          &&
find . -name CMakeLists.txt | xargs sed -i 's/VERSION 2.8.0 FATAL_ERROR/VERSION 4.0.0/'
```

Now fix a problem when building with gcc-15:

``` userinput
sed -i '/Font.h/i #include <cstdint>' tests/featuremap/featuremaptest.cpp
```

Install [Graphite2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

If you wish to build the documentation, issue:

``` userinput
make docs
```

To test the results, issue: [**make test**]{.command}. One test named `nametabletest`{.filename} is known to fail.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the documentation, install, as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/doc/graphite2-1.3.14 &&

cp      -v -f    doc/{GTF,manual}.md \
                    /usr/share/doc/graphite2-1.3.14 &&
cp      -v -f    doc/{GTF,manual}.pdf \
                    /usr/share/doc/graphite2-1.3.14
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D CMAKE_VERBOSE_MAKEFILE=ON`{.option}: This switch turns on build verbose mode.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gr2fonttest, and optionally comparerender]{.segbody}
:::

::: seg
**Installed Libraries:** [libgraphite2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,share}/graphite2 and optionally /usr/share/doc/graphite2-1.3.14]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------
  []{#comparerender}[[**comparerender**]{.command}]{.term}   is a test and benchmarking tool
  []{#gr2fonttest}[[**gr2fonttest**]{.command}]{.term}       is a diagnostic console tool for graphite fonts
  []{#libgraphite2}[`libgraphite2.so`{.filename}]{.term}     is a rendering engine for graphite fonts
  ---------------------------------------------------------- -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){accesskey="p"}

    libglycin-gtk4 from glycin-2.1.1

-   [Next](harfbuzz.md "harfBuzz-14.2.1"){accesskey="n"}

    harfBuzz-14.2.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
