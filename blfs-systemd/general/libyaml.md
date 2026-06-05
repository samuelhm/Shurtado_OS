::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libwacom.md "libwacom-2.19.0"){accesskey="p"}

    libwacom-2.19.0

-   [Next](libfyaml.md "libfyaml-0.9.6"){accesskey="n"}

    libfyaml-0.9.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libyaml}libyaml-0.2.5 {#libyaml-0.2.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libyaml {#introduction-to-libyaml .sect2}

The [yaml]{.application} package contains a C library for parsing and emitting YAML (YAML Ain't Markup Language) code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/yaml/libyaml/releases/download/0.2.5/yaml-0.2.5.tar.gz](https://github.com/yaml/libyaml/releases/download/0.2.5/yaml-0.2.5.tar.gz){.ulink}

-   Download MD5 sum: bb15429d8fb787e7d3f1c83ae129a999

-   Download size: 596 KB

-   Estimated disk space required: 6.4 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### libyaml Dependencies

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libyaml {#installation-of-libyaml .sect2}

Install [libyaml]{.application} by running the following commands:

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libyaml.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------
  []{#libyaml-lib}[`libyaml.so`{.filename}]{.term}   contains API functions for parsing and emitting YAML code
  -------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libwacom.md "libwacom-2.19.0"){accesskey="p"}

    libwacom-2.19.0

-   [Next](libfyaml.md "libfyaml-0.9.6"){accesskey="n"}

    libfyaml-0.9.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
