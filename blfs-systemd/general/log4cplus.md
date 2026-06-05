::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libfyaml.md "libfyaml-0.9.6"){accesskey="p"}

    libfyaml-0.9.6

-   [Next](lzo.md "LZO-2.10"){accesskey="n"}

    LZO-2.10

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#log4cplus}log4cplus-2.1.2 {#log4cplus-2.1.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to log4cplus {#introduction-to-log4cplus .sect2}

[log4cplus]{.application} is an easy to use C++20 logging API providing thread-safe, flexible, and arbitrarily granular control over log management and configuration. It is modeled after the Java log4j API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/log4cplus/log4cplus/releases/download/REL_2_1_2/log4cplus-2.1.2.tar.xz](https://github.com/log4cplus/log4cplus/releases/download/REL_2_1_2/log4cplus-2.1.2.tar.xz){.ulink}

-   Download MD5 sum: 9b07ce88a3130673848a26e7e983aa5b

-   Download size: 931 KB

-   Estimated disk space required: 73 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4; add 0.5 SBU for tests)
:::
:::::

::: {.installation lang="en"}
## Installation of log4cplus {#installation-of-log4cplus .sect2}

Build [log4cplus]{.application} by running the following command:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Library:** [log4cplus.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------
  []{#log4cplus-lib}[`log4cplus.so`{.filename}]{.term}   is the log4cplus library
  ------------------------------------------------------ --------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libfyaml.md "libfyaml-0.9.6"){accesskey="p"}

    libfyaml-0.9.6

-   [Next](lzo.md "LZO-2.10"){accesskey="n"}

    LZO-2.10

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
