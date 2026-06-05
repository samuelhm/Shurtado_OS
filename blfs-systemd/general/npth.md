::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](nodejs.md "Node.js-24.16.0"){accesskey="p"}

    Node.js-24.16.0

-   [Next](nspr.md "NSPR-4.39"){accesskey="n"}

    NSPR-4.39

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#npth}npth-1.8 {#npth-1.8 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to NPth {#introduction-to-npth .sect2}

The [NPth]{.application} package contains a very portable POSIX/ANSI-C based library for Unix platforms which provides non-preemptive priority-based scheduling for multiple threads of execution (multithreading) inside event-driven applications. All threads run in the same address space of the server application, but each thread has its own individual program-counter, run-time stack, signal mask and errno variable.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/npth/npth-1.8.tar.bz2](https://www.gnupg.org/ftp/gcrypt/npth/npth-1.8.tar.bz2){.ulink}

-   Download MD5 sum: cb4fc0402be5ba67544e499cb2c1a74d

-   Download size: 312 KB

-   Estimated disk space required: 2.9 MB (with checks)

-   Estimated build time: less than 0.1 SBU (with checks)
:::
:::::

::: {.installation lang="en"}
## Installation of NPth {#installation-of-npth .sect2}

Install [NPth]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Program:** [npth-config]{.segbody}
:::

::: seg
**Installed Library:** [libnpth.so]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#npth-config}[[**npth-config**]{.command}]{.term}   is a utility used to configure and build applications based on the npth library. It can be used to query the C compiler and linker flags which are required to correctly compile and link the application against the npth library
  []{#libnpth}[`libnpth.so`{.filename}]{.term}           contains the API functions used by the New Portable Threads Library
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](nodejs.md "Node.js-24.16.0"){accesskey="p"}

    Node.js-24.16.0

-   [Next](nspr.md "NSPR-4.39"){accesskey="n"}

    NSPR-4.39

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
