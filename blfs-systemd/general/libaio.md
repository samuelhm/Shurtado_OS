::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](keyutils.md "keyutils-1.6.3"){accesskey="p"}

    keyutils-1.6.3

-   [Next](libarchive.md "libarchive-3.8.7"){accesskey="n"}

    libarchive-3.8.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libaio}libaio-0.3.113 {#libaio-0.3.113 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libaio {#introduction-to-libaio .sect2}

The [libaio]{.application} package is an asynchronous I/O facility ("async I/O", or "aio") that has a richer API and capability set than the simple POSIX async I/O facility. This library, libaio, provides the Linux-native API for async I/O. The POSIX async I/O facility requires this library in order to provide kernel-accelerated async I/O capabilities, as do applications which require the Linux-native async I/O API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://pagure.io/libaio/archive/libaio-0.3.113/libaio-0.3.113.tar.gz](https://pagure.io/libaio/archive/libaio-0.3.113/libaio-0.3.113.tar.gz){.ulink}

-   Download MD5 sum: 605237f35de238dfacc83bcae406d95d

-   Download size: 48 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of libaio {#installation-of-libaio .sect2}

First, disable the installation of the static library:

``` userinput
sed -i '/install.*libaio.a/s/^/#/' src/Makefile
```

Next, fix an issue in the test suite:

``` userinput
case "$(uname -m)" in
  i?86) sed -e "s/off_t/off64_t/" -i harness/cases/23.t ;;
esac
```

Build [libaio]{.application} by running the following command:

``` userinput
make
```

To test the results, issue: [**make partcheck**]{.command}.

Now, install the package as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libaio.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -----------------------
  []{#libaio-lib}[`libaio.so`{.filename}]{.term}   is the libaio library
  ------------------------------------------------ -----------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](keyutils.md "keyutils-1.6.3"){accesskey="p"}

    keyutils-1.6.3

-   [Next](libarchive.md "libarchive-3.8.7"){accesskey="n"}

    libarchive-3.8.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
