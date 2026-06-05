::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libyaml.md "libyaml-0.2.5"){accesskey="p"}

    libyaml-0.2.5

-   [Next](log4cplus.md "log4cplus-2.1.2"){accesskey="n"}

    log4cplus-2.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libfyaml}libfyaml-0.9.6 {#libfyaml-0.9.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libfyaml {#introduction-to-libfyaml .sect2}

The [libfyaml]{.application} package contains a YAML 1.3 parser and writer. It also supports YAML 0.1 with the help of the libyaml library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/pantoniou/libfyaml/releases/download/v0.9.6/libfyaml-0.9.6.tar.gz](https://github.com/pantoniou/libfyaml/releases/download/v0.9.6/libfyaml-0.9.6.tar.gz){.ulink}

-   Download MD5 sum: f6d3756a80cb1ff99714e510cf4ce13d

-   Download size: 1.1 MB

-   Estimated disk space required: 280 MB (with tests)

-   Estimated build time: 0.4 SBU (add 1.8 SBU for tests)
:::

### libfyaml Dependencies

#### Recommended

[libyaml-0.2.5](libyaml.md "libyaml-0.2.5"){.xref} (for YAML 0.1 support)

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} and [sphinx_rtd_theme-3.1.0](python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref} (for documentation), [docker](https://www.docker.com/){.ulink}, [jq](https://jqlang.org/){.ulink}, and [check](https://libcheck.github.io/check/){.ulink} (for additional tests)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of libfyaml {#installation-of-libfyaml .sect2}

Install [libfyaml]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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
**Installed Programs:** [fy-compose (link to fy-tool), fy-dump (link to fy-tool), fy-filter (link to fy-tool), fy-join (link to fy-tool), fy-testsuite (link to fy-tool), fy-tool, and fy-ypath (link to fy-tool)]{.segbody}
:::

::: seg
**Installed Library:** [libfyaml.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------
  []{#fy-tool}[[**fy-tool**]{.command}]{.term}         manipulates YAML files up to version 1.3 of the standard
  []{#lib-libfyaml}[`libfyaml.so`{.filename}]{.term}   contains functions that can parse and emit YAML files up to version 1.3 of the standard
  ---------------------------------------------------- -----------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libyaml.md "libyaml-0.2.5"){accesskey="p"}

    libyaml-0.2.5

-   [Next](log4cplus.md "log4cplus-2.1.2"){accesskey="n"}

    log4cplus-2.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
