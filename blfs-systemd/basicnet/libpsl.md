::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libpcap.md "libpcap-1.10.6"){accesskey="p"}

    libpcap-1.10.6

-   [Next](libslirp.md "libslirp-4.9.3"){accesskey="n"}

    libslirp-4.9.3

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpsl}libpsl-0.21.5 {#libpsl-0.21.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libpsl {#introduction-to-libpsl .sect2}

The [libpsl]{.application} package provides a library for accessing and resolving information from the Public Suffix List (PSL). The PSL is a set of domain names beyond the standard suffixes, such as .com.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz](https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz){.ulink}

-   Download MD5 sum: 870a798ee9860b6e77896548428dba7b

-   Download size: 7.3 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: less than 0.1 SBU (including tests)
:::

### libpsl Dependencies

#### Recommended

[libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref} and [libunistring-1.4.2](../general/libunistring.md "libunistring-1.4.2"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for documentation), [ICU-78.3](../general/icu.md "icu-78.3"){.xref} (may be used instead of libidn2), [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref} (may be used instead of libidn2), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (for tests)
:::::

::: {.installation lang="en"}
## Installation of libpsl {#installation-of-libpsl .sect2}

Install [libpsl]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&

ninja
```

To test the results, issue: [**ninja test**]{.command}.

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
**Installed Program:** [psl]{.segbody}
:::

::: seg
**Installed Library:** [libpsl.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------
  []{#psl}[[**psl**]{.command}]{.term}             queries the Public Suffix List
  []{#libpsl-lib}[`libpsl.so`{.filename}]{.term}   contains a library used to access the Public Suffix List
  ------------------------------------------------ ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libpcap.md "libpcap-1.10.6"){accesskey="p"}

    libpcap-1.10.6

-   [Next](libslirp.md "libslirp-4.9.3"){accesskey="n"}

    libslirp-4.9.3

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
