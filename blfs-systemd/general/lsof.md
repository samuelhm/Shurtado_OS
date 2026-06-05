::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](iso-codes.md "ISO Codes-4.20.1"){accesskey="p"}

    ISO Codes-4.20.1

-   [Next](pinentry.md "pinentry-1.3.2"){accesskey="n"}

    pinentry-1.3.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lsof}lsof-4.99.6 {#lsof-4.99.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lsof {#introduction-to-lsof .sect2}

The [lsof]{.application} package is useful to LiSt Open Files for a given running application or process.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lsof-org/lsof/releases/download/4.99.6/lsof-4.99.6.tar.gz](https://github.com/lsof-org/lsof/releases/download/4.99.6/lsof-4.99.6.tar.gz){.ulink}

-   Download MD5 sum: cae73a994aa9c075252b99bb6a613eaa

-   Download size: 1.1 MB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests)
:::

### lsof Dependencies

#### Required

[libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}

#### Optional

[Nmap-7.99](../basicnet/nmap.md "Nmap-7.99"){.xref} (with a symbolic link [**nc**]{.command} pointing to [**ncat**]{.command} in `/usr/bin`{.filename}; used in tests)
:::::

::: {.kernel lang="en"}
## []{#lsof-kernel}Kernel Configuration {#kernel-configuration .sect2}

To run the tests, the following option should be enabled in the kernel configuration:

``` screen
General setup --->
  [*] POSIX Message Queues                                        [POSIX_MQUEUE]
```
:::

::: {.installation lang="en"}
## Installation of lsof {#installation-of-lsof .sect2}

Install [lsof]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

The tests should be run as the `root`{.systemitem} user. They require that the POSIX message queues are enabled in the kernel, and that [Nmap-7.99](../basicnet/nmap.md "Nmap-7.99"){.xref} be installed with a symbolic link `/usr/bin/nc`{.filename} pointing to [**ncat**]{.command}.

``` root
make check
```

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
**Installed Program:** [lsof]{.segbody}
:::

::: seg
**Installed Libraries:** [liblsof.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------
  []{#lsof-app}[[**lsof**]{.command}]{.term}     lists open files for running processes
  []{#liblsof}[`liblsof.so`{.filename}]{.term}   contains an interface for applications to list open files
  ---------------------------------------------- -----------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](iso-codes.md "ISO Codes-4.20.1"){accesskey="p"}

    ISO Codes-4.20.1

-   [Next](pinentry.md "pinentry-1.3.2"){accesskey="n"}

    pinentry-1.3.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
