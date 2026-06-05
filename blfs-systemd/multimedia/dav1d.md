::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](audiofile.md "AudioFile-0.3.6"){accesskey="p"}

    AudioFile-0.3.6

-   [Next](faac.md "faac-1.50"){accesskey="n"}

    faac-1.50

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dav1d}dav1d-1.5.3 {#dav1d-1.5.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dav1d {#introduction-to-dav1d .sect2}

The dav1d package contains an AV1 decoder.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://code.videolan.org/videolan/dav1d/-/archive/1.5.3/dav1d-1.5.3.tar.gz](https://code.videolan.org/videolan/dav1d/-/archive/1.5.3/dav1d-1.5.3.tar.gz){.ulink}

-   Download MD5 sum: e22d5377b91936ef0b43662364c8973e

-   Download size: 1.7 MB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; with tests)
:::

### dav1d Dependencies

#### Recommended

[NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}

#### Optional

[xxhash](https://xxhash.com/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of dav1d {#installation-of-dav1d .sect2}

Install dav1d by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, run [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dav1d]{.segbody}
:::

::: seg
**Installed Libraries:** [libdav1d.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/dav1d]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------
  []{#dav1d-app}[[**dav1d**]{.command}]{.term}     is the dav1d decoder utility
  []{#libdav1d}[`libdav1d.so`{.filename}]{.term}   contains functions that enable decoding files that use the AV1 codec
  ------------------------------------------------ ----------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](audiofile.md "AudioFile-0.3.6"){accesskey="p"}

    AudioFile-0.3.6

-   [Next](faac.md "faac-1.50"){accesskey="n"}

    faac-1.50

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
