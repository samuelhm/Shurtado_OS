::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](faad2.md "FAAD2-2.11.2"){accesskey="p"}

    FAAD2-2.11.2

-   [Next](flac.md "FLAC-1.5.0"){accesskey="n"}

    FLAC-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fdk-aac}fdk-aac-2.0.3 {#fdk-aac-2.0.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to fdk-aac {#introduction-to-fdk-aac .sect2}

The [fdk-aac]{.application} package provides the Fraunhofer FDK AAC library, which is purported to be a high quality Advanced Audio Coding implementation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.3.tar.gz](https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.3.tar.gz){.ulink}

-   Download MD5 sum: f43e593991caefdce509ad837d3301bd

-   Download size: 2.8 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: 0.6 SBU (Using parallelism=4)
:::
:::::

::: {.installation lang="en"}
## Installation of fdk-aac {#installation-of-fdk-aac .sect2}

Install [fdk-aac]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
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
**Installed Library:** [libfdk-aac.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/fdk-aac]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------
  []{#libfdk-aac}[`libfdk-aac.so`{.filename}]{.term}   provides the functions used to encode audio in AAC format
  ---------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](faad2.md "FAAD2-2.11.2"){accesskey="p"}

    FAAD2-2.11.2

-   [Next](flac.md "FLAC-1.5.0"){accesskey="n"}

    FLAC-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
