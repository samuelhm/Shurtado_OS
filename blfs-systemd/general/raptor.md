::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](power-profiles-daemon.md "Power-profiles-daemon-0.30"){accesskey="p"}

    Power-profiles-daemon-0.30

-   [Next](rasqal.md "Rasqal-0.9.33"){accesskey="n"}

    Rasqal-0.9.33

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#raptor}Raptor-2.0.16 {#raptor-2.0.16 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Raptor {#introduction-to-raptor .sect2}

[Raptor]{.application} is a C library that provides a set of parsers and serializers that generate Resource Description Framework (RDF) triples.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.librdf.org/source/raptor2-2.0.16.tar.gz](https://download.librdf.org/source/raptor2-2.0.16.tar.gz){.ulink}

-   Download MD5 sum: 0a71f13b6eaa0a04bf411083d89d7bc2

-   Download size: 1.7 MB

-   Estimated disk space required: 25 MB (additional 2 MB for the tests)

-   Estimated build time: 0.1 SBU (additional 0.3 SBU for the tests)
:::

### Raptor Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [ICU-78.3](icu.md "icu-78.3"){.xref} and [libyajl](https://lloyd.github.io/yajl/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Raptor {#installation-of-raptor .sect2}

First, fix an incompatibility with libxml2-2.11.x:

``` userinput
sed -i 's/20627/20627 \&\& LIBXML_VERSION < 21100/' src/raptor_libxml.c
```

Install [Raptor]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}. Several of the XML tests may fail.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--with-icu-config=/usr/bin/icu-config`{.option}: Use this switch if you have installed [ICU-78.3](icu.md "icu-78.3"){.xref} and wish to build [Raptor]{.application} with its support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [rapper]{.segbody}
:::

::: seg
**Installed Libraries:** [libraptor2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/raptor2 and /usr/share/gtk-doc/html/raptor2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  []{#rapper}[[**rapper**]{.command}]{.term}           is a RDF parsing and serializing utility
  []{#libraptor2}[`libraptor2.so`{.filename}]{.term}   contains the [Raptor]{.application} API functions
  ---------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](power-profiles-daemon.md "Power-profiles-daemon-0.30"){accesskey="p"}

    Power-profiles-daemon-0.30

-   [Next](rasqal.md "Rasqal-0.9.33"){accesskey="n"}

    Rasqal-0.9.33

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
