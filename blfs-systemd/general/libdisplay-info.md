::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libdaemon.md "libdaemon-0.14"){accesskey="p"}

    libdaemon-0.14

-   [Next](libgcrypt.md "libgcrypt-1.12.2"){accesskey="n"}

    libgcrypt-1.12.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdisplay-info}libdisplay-info-0.3.0 {#libdisplay-info-0.3.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libdisplay-info {#introduction-to-libdisplay-info .sect2}

The [libdisplay-info]{.application} package provides a set of high-level and low-level functions to access detailed Extended Display Identification Data (EDID) information.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.3.0/downloads/libdisplay-info-0.3.0.tar.xz](https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.3.0/downloads/libdisplay-info-0.3.0.tar.xz){.ulink}

-   Download MD5 sum: f2a15697f6e8c66722b7760ceccbed60

-   Download size: 112 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: less than 0.1 SBU
:::

### libdisplay-info Dependencies

#### Required

[hwdata-0.408](hwdata.md "hwdata-0.408"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libdisplay-info {#installation-of-libdisplay-info .sect2}

Install [libdisplay-info]{.application} by running the following commands:

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

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [di-edid-decode]{.segbody}
:::

::: seg
**Installed Library:** [libdisplay-info.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libdisplay-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------
  []{#di-edid-decode}[[**di-edid-decode**]{.command}]{.term}         parses EDID file and prints information from the file in human-readable form
  []{#libdisplay-info-lib}[`libdisplay-info.so`{.filename}]{.term}   is a library for handling EDID and DisplayID
  ------------------------------------------------------------------ ------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libdaemon.md "libdaemon-0.14"){accesskey="p"}

    libdaemon-0.14

-   [Next](libgcrypt.md "libgcrypt-1.12.2"){accesskey="n"}

    libgcrypt-1.12.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
