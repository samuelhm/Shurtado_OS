::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](sgml-common.md "sgml-common-0.6.3"){accesskey="p"}

    sgml-common-0.6.3

-   [Next](docbook-4.5-dtd.md "docbook-4.5-dtd"){accesskey="n"}

    docbook-4.5-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sgml-dtd-3}docbook-3.1-dtd {#docbook-3.1-dtd .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to DocBook-3.1 SGML DTD {#introduction-to-docbook-3.1-sgml-dtd .sect2}

The [DocBook SGML DTD]{.application} package contains document type definitions for verification of SGML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.docbook.org/sgml/3.1/docbk31.zip](https://archive.docbook.org/sgml/3.1/docbk31.zip){.ulink}

-   Download MD5 sum: 432749c0c806dbae81c8bcb70da3b5d3

-   Download size: 55 KB

-   Estimated disk space required: 676 KB

-   Estimated build time: less than 0.1 SBU
:::

### DocBook-3.1 SGML DTD Dependencies

#### Required

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} and [sgml-common-0.6.3](sgml-common.md "sgml-common-0.6.3"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of DocBook-3.1 SGML DTD {#installation-of-docbook-3.1-sgml-dtd .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The package source is distributed in `zip`{.filename} format and requires [**unzip**]{.command} (actually a symlink to [**bsdunzip**]{.command} from [libarchive]{.application}). You should create a directory and change to that directory before unzipping the file to ease the removal of the source files after the package has been installed.
:::

Install [DocBook-3.1 SGML DTD]{.application} by running the following commands:

``` userinput
sed -i -e '/ISO 8879/d' \
       -e 's|DTDDECL "-//OASIS//DTD DocBook V3.1//EN"|SGMLDECL|g' \
       docbook.cat
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/sgml/docbook/sgml-dtd-3.1 &&
chown -R root:root . &&
install -v docbook.cat /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&
cp -v -af *.dtd *.mod *.dcl /usr/share/sgml/docbook/sgml-dtd-3.1 &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /etc/sgml/sgml-docbook.cat
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i -e '/ISO 8879/d' docbook.cat**]{.command}: This command removes the ENT definitions from the catalog file.

[**sed -i -e 's\|DTDDECL "-//OASIS//DTD Docbook V3.1//EN"\|SGMLDECL\|g' docbook.cat**]{.command}: This command replaces the DTDDECL catalog entry, which is not supported by Linux SGML tools, with the SGMLDECL catalog entry.
:::

::::: {.configuration lang="en"}
## Configuring DocBook-3.1 SGML DTD {#configuring-docbook-3.1-sgml-dtd .sect2}

::: {.sect3 lang="en"}
### []{#sgml-dtd-3-config}Config Files {#config-files .sect3}

`/etc/sgml/catalog`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The above installation script updates the catalog.

Using only the most current 3.x version of [DocBook SGML DTD]{.application} requires the following (perform as the `root`{.systemitem} user):

``` root
cat >> /usr/share/sgml/docbook/sgml-dtd-3.1/catalog << "EOF"
  -- Begin Single Major Version catalog changes --

PUBLIC "-//Davenport//DTD DocBook V3.0//EN" "docbook.dtd"

  -- End Single Major Version catalog changes --
EOF
```
:::
:::::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Files:** [SGML DTD and MOD files]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/sgml/docbook/sgml-dtd-3.1]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  []{#SGML-DTD-files}[`SGML DTD files`{.filename}]{.term}   contains a document type definition which defines the element types and the attribute lists that can be used in the corresponding SGML files
  []{#SGML-MOD-files}[`SGML MOD files`{.filename}]{.term}   contains components of the document type definition that are sourced into the `DTD`{.filename} files
  --------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](sgml-common.md "sgml-common-0.6.3"){accesskey="p"}

    sgml-common-0.6.3

-   [Next](docbook-4.5-dtd.md "docbook-4.5-dtd"){accesskey="n"}

    docbook-4.5-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
