::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](shared-mime-info.md "shared-mime-info-2.4"){accesskey="p"}

    shared-mime-info-2.4

-   [Next](tidy-html5.md "tidy-html5-5.8.0"){accesskey="n"}

    tidy-html5-5.8.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sharutils}Sharutils-4.15.2 {#sharutils-4.15.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Sharutils {#introduction-to-sharutils .sect2}

The [Sharutils]{.application} package contains utilities that can create 'shell' archives.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/sharutils/sharutils-4.15.2.tar.xz](https://ftpmirror.gnu.org/sharutils/sharutils-4.15.2.tar.xz){.ulink}

-   Download MD5 sum: 5975ce21da36491d7aa6dc2b0d9788e0

-   Download size: 1.1 MB

-   Estimated disk space required: 22 MB (with the test suite)

-   Estimated build time: 0.4 SBU (with the test suite)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/sharutils-4.15.2-consolidated-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/sharutils-4.15.2-consolidated-1.patch){.ulink}
:::
::::::

::: {.installation lang="en"}
## Installation of Sharutils {#installation-of-sharutils .sect2}

First, fix issues exposed by current GCC versions:

``` userinput
patch -Np1 -i ../sharutils-4.15.2-consolidated-1.patch
```

Install [Sharutils]{.application} by running the following commands:

``` userinput
autoreconf -fiv                                         &&
./configure --prefix=/usr --disable-dependency-tracking &&
make
```

To test the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-dependency-tracking`*: This switch is used to disable unneeded code in the build system.

*`--with-openssl`*: This optional switch is used to enable incorporation of integrity checks into the package's executable programs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [shar, unshar, uudecode, and uuencode]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#shar}[[**shar**]{.command}]{.term}           creates "shell archives" (or shar files) which are in text format and can be mailed
  []{#unshar}[[**unshar**]{.command}]{.term}       unpacks a shar file
  []{#uudecode}[[**uudecode**]{.command}]{.term}   reads a file (or by default the standard input) and writes an encoded version to the standard output. The encoding uses only printing ASCII characters
  []{#uuencode}[[**uuencode**]{.command}]{.term}   reads a file (or by default the standard input) and decodes the uuencoded version to the standard output
  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](shared-mime-info.md "shared-mime-info-2.4"){accesskey="p"}

    shared-mime-info-2.4

-   [Next](tidy-html5.md "tidy-html5-5.8.0"){accesskey="n"}

    tidy-html5-5.8.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
