::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libblockdev.md "libblockdev-3.5.0"){accesskey="p"}

    libblockdev-3.5.0

-   [Next](libclc.md "libclc-22.1.0"){accesskey="n"}

    libclc-22.1.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libbytesize}libbytesize-2.12 {#libbytesize-2.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libbytesize {#introduction-to-libbytesize .sect2}

The [libbytesize]{.application} package is a library which facilitates the common operations with sizes in bytes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/storaged-project/libbytesize/releases/download/2.12/libbytesize-2.12.tar.gz](https://github.com/storaged-project/libbytesize/releases/download/2.12/libbytesize-2.12.tar.gz){.ulink}

-   Download MD5 sum: 5314b773b20d1f3acdf3b2bf0c92549f

-   Download size: 464 KB

-   Estimated disk space required: 3.6 MB

-   Estimated build time: less than 0.1 SBU (including tests)
:::

### libbytesize Dependencies

#### Required

[Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [pocketlint](https://github.com/rhinstaller/pocketlint/releases){.ulink} (python module for one test), and [polib](https://pypi.python.org/pypi/polib){.ulink} (python module for one test)
:::::

::: {.installation lang="en"}
## Installation of libbytesize {#installation-of-libbytesize .sect2}

Install [libbytesize]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

If you have the optional python modules installed, the regression tests can be run with: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bscalc]{.segbody}
:::

::: seg
**Installed Library:** [libbytesize.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/bytesize and /usr/lib/python3.14/site-packages/bytesize]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------
  []{#bscalc}[[**bscalc**]{.command}]{.term}                 converts from a larger unit, such as MB or TB, back to a value in bytes
  []{#libbytesize-lib}[`libbytesize.so`{.filename}]{.term}   contains functions used to handle common read/write operations with sizes in bytes
  ---------------------------------------------------------- ------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libblockdev.md "libblockdev-3.5.0"){accesskey="p"}

    libblockdev-3.5.0

-   [Next](libclc.md "libclc-22.1.0"){accesskey="n"}

    libclc-22.1.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
