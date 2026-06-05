::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook.md "docbook-xml-4.5"){accesskey="p"}

    docbook-xml-4.5

-   [Next](docbook-xsl.md "docbook-xsl-nons-1.79.2"){accesskey="n"}

    docbook-xsl-nons-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#docbook5}docbook-xml-5.0 {#docbook-xml-5.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to DocBook XML DTD and Schemas 5.0 {#introduction-to-docbook-xml-dtd-and-schemas-5.0 .sect2}

The [DocBook XML DTD and Schemas]{.application}-5.0 package contains document type definitions and schemas for verification of XML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard. In addition to providing a DTD, version 5 introduced the RelaxNG schema and Schematron rules, and is incompatible with previous versions of DocBook XML.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.docbook.org/xml/5.0/docbook-5.0.zip](https://archive.docbook.org/xml/5.0/docbook-5.0.zip){.ulink}

-   Download MD5 sum: 2411c19ed4fb141f3fa3d389fae40736

-   Download size: 820 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: 0.1 SBU
:::

### DocBook XML DTD and Schemas 5.0 Dependencies

#### Required

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of DocBook XML DTD and Schemas 5.0 {#installation-of-docbook-xml-dtd-and-schemas-5.0 .sect2}

Install [DocBook XML DTD and Schemas]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
install -vdm755 /usr/share/xml/docbook/xml-5.0 &&
cp -rv catalog.xml dtd rng sch xsd /usr/share/xml/docbook/xml-5.0
```

Create (or update) and populate the system XML catalog (`/etc/xml/catalog`{.filename}) by running the following commands as the `root`{.systemitem} user:

``` root
if [ ! -e /etc/xml/catalog ]; then
    install -v -d -m755 /etc/xml &&
    xmlcatalog --noout --create /etc/xml/catalog
fi &&

xmlcatalog --noout --add "delegatePublic"             \
  "-//OASIS//DTD DocBook XML 5.0//EN                " \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog &&

xmlcatalog --noout --add "delegateSystem"             \
  "http://docbook.org/xml/5.0/dtd/"                   \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog &&

xmlcatalog --noout --add "delegateURI"                \
  "http://docbook.org/xml/5.0"                        \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog
```
:::

:::: {.configuration lang="en"}
## Configuring DocBook XML DTD and Schemas 5.0 {#configuring-docbook-xml-dtd-and-schemas-5.0 .sect2}

::: {.sect3 lang="en"}
### []{#docbook5-config}Config Files {#config-files .sect3}

`/etc/xml/catalog`{.filename}
:::
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Files:** [DTD, RNC, RNG, SCH and XSD files]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xml and /usr/share/xml/docbook/xml-5.0]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#DTD5-files}[`DTD files`{.filename}]{.term}                    contain the DocBook 5.0 document type definitions which define the element types and the attribute lists that can be used in the corresponding `XML`{.filename} files
  []{#Schema5-files}[`RNC, RNG, and SCH files`{.filename}]{.term}   contain the Docbook 5.0 RelaxNG, RelaxNG Compact, and Schematron schema definitions
  []{#XSD5-files}[`XSD files`{.filename}]{.term}                    files contain DocBook-5.0 Schematron rules
  ----------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](docbook.md "docbook-xml-4.5"){accesskey="p"}

    docbook-xml-4.5

-   [Next](docbook-xsl.md "docbook-xsl-nons-1.79.2"){accesskey="n"}

    docbook-xsl-nons-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
