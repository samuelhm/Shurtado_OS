::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](raptor.md "Raptor-2.0.16"){accesskey="p"}

    Raptor-2.0.16

-   [Next](redland.md "Redland-1.0.17"){accesskey="n"}

    Redland-1.0.17

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rasqal}Rasqal-0.9.33 {#rasqal-0.9.33 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Rasqal {#introduction-to-rasqal .sect2}

[Rasqal]{.application} is a C library that handles Resource Description Framework (RDF) query language syntaxes, query construction, and execution of queries returning results as bindings, boolean, RDF graphs/triples or syntaxes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.librdf.org/source/rasqal-0.9.33.tar.gz](https://download.librdf.org/source/rasqal-0.9.33.tar.gz){.ulink}

-   Download MD5 sum: 1f5def51ca0026cd192958ef07228b52

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB (additional 4 MB for the tests)

-   Estimated build time: 0.3 SBU (additional 0.7 SBU for the tests)
:::

### Rasqal Dependencies

#### Required

[Raptor-2.0.16](raptor.md "Raptor-2.0.16"){.xref}

#### Optional

[libgcrypt-1.12.2](libgcrypt.md "libgcrypt-1.12.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Rasqal {#installation-of-rasqal .sect2}

Install [Rasqal]{.application} by running the following commands:

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
**Installed Programs:** [rasqal-config and roqet]{.segbody}
:::

::: seg
**Installed Library:** [librasqal.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/rasqal and /usr/share/gtk-doc/html/rasqal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------
  []{#rasqal-config}[[**rasqal-config**]{.command}]{.term}   is a utility for retrieving the installation options of [Rasqal]{.application}
  []{#roqet}[[**roqet**]{.command}]{.term}                   is an RDF query utility
  ---------------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](raptor.md "Raptor-2.0.16"){accesskey="p"}

    Raptor-2.0.16

-   [Next](redland.md "Redland-1.0.17"){accesskey="n"}

    Redland-1.0.17

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
