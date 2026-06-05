::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](itstool.md "itstool-2.0.7"){accesskey="p"}

    itstool-2.0.7

-   [Next](ps.md "PostScript"){accesskey="n"}

    PostScript

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xmlto}xmlto-0.0.29 {#xmlto-0.0.29 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xmlto {#introduction-to-xmlto .sect2}

The [xmlto]{.application} package is a front-end to a XSL toolchain. It chooses an appropriate stylesheet for the conversion you want and applies it using an external XSLT processor. It also performs any necessary post-processing.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://pagure.io/xmlto/archive/0.0.29/xmlto-0.0.29.tar.gz](https://pagure.io/xmlto/archive/0.0.29/xmlto-0.0.29.tar.gz){.ulink}

-   Download MD5 sum: 556f2642cdcd005749bd4c08bc621c37

-   Download size: 64 KB

-   Estimated disk space required: 1.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### xmlto Dependencies

#### Required

[docbook-xml-4.5](docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}

#### Optional (for DVI, PDF, and postscript backend post-processing)

[fop-2.11](fop.md "fop-2.11"){.xref}, [dblatex](https://sourceforge.net/projects/dblatex/files/dblatex/){.ulink}, and [PassiveTeX](https://www.garshol.priv.no/download/xmltools/prod/PassiveTeX.md){.ulink}

#### Optional (for text backend post-processing)

One of [Links-2.30](../basicnet/links.md "Links-2.30"){.xref}, [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref}, [W3m](https://w3m.sourceforge.net/){.ulink}, or [ELinks](http://elinks.or.cz){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/xmlto](https://wiki.linuxfromscratch.org/blfs/wiki/xmlto){.ulink}
:::::

::: {.installation lang="en"}
## Installation of xmlto {#installation-of-xmlto .sect2}

Install [xmlto]{.application} by running the following commands:

``` userinput
autoreconf -fiv                                  &&
LINKS="/usr/bin/links" ./configure --prefix=/usr &&

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

`LINKS="/usr/bin/links"`{.envar}: This environment variable fixes a bug causing [**xmlto**]{.command} to think that [**links**]{.command} command is the same as [**elinks**]{.command}. Setting this variable does not cause problems if [Links-2.30](../basicnet/links.md "Links-2.30"){.xref} is not installed, unless you have [ELinks](http://elinks.or.cz/){.ulink} installed, and you wish to use it for text backend post-processing. If you do wish to ELinks, you should remove this environment variable.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xmlif and xmlto]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xmlto]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------
  []{#xmlif}[[**xmlif**]{.command}]{.term}        is a conditional processing instructions for XML
  []{#xmlto-prog}[[**xmlto**]{.command}]{.term}   applies an XSL stylesheet to an XML document
  ----------------------------------------------- --------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](itstool.md "itstool-2.0.7"){accesskey="p"}

    itstool-2.0.7

-   [Next](ps.md "PostScript"){accesskey="n"}

    PostScript

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
