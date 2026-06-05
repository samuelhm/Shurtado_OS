::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](doxygen.md "Doxygen-1.17.0"){accesskey="p"}

    Doxygen-1.17.0

-   [Next](gcc.md "GCC-16.1.0"){accesskey="n"}

    GCC-16.1.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dtc}dtc-1.8.1 {#dtc-1.8.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Dtc {#introduction-to-dtc .sect2}

The [dtc]{.application} package contains the Device Tree Compiler for working with device tree source and binary files and also libfdt, a utility library for reading and manipulating device trees in the binary format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://kernel.org/pub/software/utils/dtc/dtc-1.8.1.tar.xz](https://kernel.org/pub/software/utils/dtc/dtc-1.8.1.tar.xz){.ulink}

-   Download MD5 sum: 9753bdbf18763efef1f5ae8c0cecb5f6

-   Download size: 176 KB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### Dtc Dependencies

#### Optional

[libyaml-0.2.5](libyaml.md "libyaml-0.2.5"){.xref}, [SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref}, and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Dtc {#installation-of-dtc .sect2}

Install [dtc]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D default_library=shared \
      -D python=disabled        &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed, you can build the PDF format of the documentation by issuing the following command:

``` userinput
pushd ../Documentation
  latexmk -bibtex --pdf dtc-paper &&
  latexmk -bibtex --pdf dtc-paper -c
popd
```

To install the documentation, as the `root`{.systemitem} user issue the following command:

``` root
cp -R ../Documentation -T /usr/share/doc/dtc-1.8.1
```

If you have installed [SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref} and you wish to install the Python 3 bindings of this package, build the Python 3 module:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir ..
```

As the `root`{.systemitem} user, install the Python 3 module:

``` userinput
pip3 install --no-index --find-links dist --no-user libfdt
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D python=disabled`*: This switch prevents building the Python 3 binding with the deprecated method (running [**setup.py**]{.command} directly). We will build the Python 3 binding with the [**pip3 wheel**]{.command} command separately if wanted.

`CC='gcc -Wl,-z,noexecstack'`{.envar}: This variable prevents marking the shared libraries in the test suite as requiring executable stack. Glibc 2.41 or later has stopped allowing `dlopen`{.function}ing such a shared library so the test suite would fail. But those shared libraries don't really need an executable stack, so we can use *`-Wl,-z,noexecstack`* to fix up the test suite. It's needed in the `CC`{.envar} environment for the [**meson test**]{.command} because those shared libraries are built by a test script instead of the [**meson**]{.command}/[**ninja**]{.command} building system, and the test script does not recognize other [“[common]{.quote}”]{.quote} environment variables like `LDFLAGS`{.envar}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [convert-dtsv0, dtc, dtdiff, fdtdump, fdtget, fdtoverlay, and fdtput]{.segbody}
:::

::: seg
**Installed Library:** [libfdt.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/python3.14/site-packages/libfdt-1.8.1.dist-info and /usr/share/doc/dtc-1.8.1 (optionally)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------------------------------------------------
  []{#convert-dtsv0}[[**convert-dtsv0**]{.command}]{.term}   converts device tree v0 source to device tree v1
  []{#dtc-prog}[[**dtc**]{.command}]{.term}                  compiles device tree source (dts) to device tree binary blob (dtb), or de-compiles dtb to dts
  []{#dtdiff}[[**dtdiff**]{.command}]{.term}                 compares two different device trees
  []{#fdtdump}[[**fdtdump**]{.command}]{.term}               prints a readable version of a flat device-tree file
  []{#fdtget}[[**fdtget**]{.command}]{.term}                 reads values from device-tree
  []{#fdtoverlay}[[**fdtoverlay**]{.command}]{.term}         applies a number of overlays to a base device tree blob
  []{#fdtput}[[**fdtput**]{.command}]{.term}                 writes a property value to a device tree
  []{#libfdt}[`libfdt.so`{.filename}]{.term}                 is a utility library for reading and manipulating device trees in the binary format
  ---------------------------------------------------------- -----------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](doxygen.md "Doxygen-1.17.0"){accesskey="p"}

    Doxygen-1.17.0

-   [Next](gcc.md "GCC-16.1.0"){accesskey="n"}

    GCC-16.1.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
