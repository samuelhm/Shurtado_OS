::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libavif.md "libavif-1.4.2"){accesskey="p"}

    libavif-1.4.2

-   [Next](libgxps.md "libgxps-0.3.2"){accesskey="n"}

    libgxps-0.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libexif}libexif-0.6.26 {#libexif-0.6.26 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libexif {#introduction-to-libexif .sect2}

The [libexif]{.application} package contains a library for parsing, editing, and saving EXIF data. Most digital cameras produce EXIF files, which are JPEG files with extra tags that contain information about the image. All EXIF tags described in EXIF standard 2.1 are supported.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libexif/libexif/releases/download/v0.6.26/libexif-0.6.26.tar.bz2](https://github.com/libexif/libexif/releases/download/v0.6.26/libexif-0.6.26.tar.bz2){.ulink}

-   Download MD5 sum: d659a750d1be6330105de54eb3bf627a

-   Download size: 2.0 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: less than 0.1 SBU
:::

### libexif Dependencies

#### Optional (to Build Documentation)

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libexif {#installation-of-libexif .sect2}

Install [libexif]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --with-doc-dir=/usr/share/doc/libexif-0.6.26 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Documentation was built and installed if you have the dependencies shown above installed. If you don't have the dependencies installed, there is a compressed tarball in the source tree `doc`{.filename} directory that can be unpacked into /usr/share/doc/libexif-0.6.26.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libexif.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libexif and /usr/share/doc/libexif-0.6.26]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------
  []{#libexif-lib}[`libexif.so`{.filename}]{.term}   contains functions used for parsing, editing, and saving EXIF data
  -------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libavif.md "libavif-1.4.2"){accesskey="p"}

    libavif-1.4.2

-   [Next](libgxps.md "libgxps-0.3.2"){accesskey="n"}

    libgxps-0.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
