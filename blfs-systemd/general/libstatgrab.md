::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libssh2.md "libssh2-1.11.1"){accesskey="p"}

    libssh2-1.11.1

-   [Next](libtasn1.md "libtasn1-4.21.0"){accesskey="n"}

    libtasn1-4.21.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libstatgrab}libstatgrab-0.92.1 {#libstatgrab-0.92.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libstatgrab {#introduction-to-libstatgrab .sect2}

This is a library that provides cross platform access to statistics about the system on which it's run. It's written in C and presents a selection of useful interfaces which can be used to access key system statistics. The current list of statistics includes CPU usage, memory utilisation, disk usage, process counts, network traffic, disk I/O, and more.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.1.tar.gz](https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.1.tar.gz){.ulink}

-   Download MD5 sum: af685494e985229e0ac46365bc0cd50e

-   Download size: 800 KB

-   Estimated disk space required: 7.6 MB (with tests)

-   Estimated build time: 0.1 SBU (add 1.5 SBU for tests)
:::

### libstatgrab Dependencies

#### Optional

[log4cplus-2.1.2](log4cplus.md "log4cplus-2.1.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libstatgrab {#installation-of-libstatgrab .sect2}

Install [libstatgrab]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libstatgrab-0.92.1 &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [saidar, statgrab, statgrab-make-mrtg-config, and statgrab-make-mrtg-index]{.segbody}
:::

::: seg
**Installed Library:** [libstatgrab.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/libstatgrab-0.92.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------
  []{#saidar}[[**saidar**]{.command}]{.term}                                         is a curses-based tool for viewing system statistics
  []{#statgrab}[[**statgrab**]{.command}]{.term}                                     is a sysctl-style interface to system statistics
  []{#statgrab-make-mrtg-config}[[**statgrab-make-mrtg-config**]{.command}]{.term}   generates MRTG configuration
  []{#statgrab-make-mrtg-index}[[**statgrab-make-mrtg-index**]{.command}]{.term}     generates an XHTML index page from MRTG configuration files or stdin
  []{#libstatgrab-lib}[`libstatgrab.so`{.filename}]{.term}                           contains the [libstatgrab]{.application} API functions
  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libssh2.md "libssh2-1.11.1"){accesskey="p"}

    libssh2-1.11.1

-   [Next](libtasn1.md "libtasn1-4.21.0"){accesskey="n"}

    libtasn1-4.21.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
