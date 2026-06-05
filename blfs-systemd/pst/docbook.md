::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](xml.md "Extensible Markup Language (XML)"){accesskey="p"}

    Extensible Markup Language (XML)

-   [Next](docbook5.md "docbook-xml-5.0"){accesskey="n"}

    docbook-xml-5.0

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#DocBook}docbook-xml-4.5 {#docbook-xml-4.5 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to DocBook-4.5 XML DTD {#introduction-to-docbook-4.5-xml-dtd .sect2}

The [DocBook-4.5 XML DTD]{.application}-4.5 package contains document type definitions for verification of XML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip](https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip){.ulink}

-   Download MD5 sum: 03083e288e87a7e829e437358da7ef9e

-   Download size: 96 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### DocBook-4.5 XML DTD Dependencies

#### Required

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of DocBook-4.5 XML DTD {#installation-of-docbook-4.5-xml-dtd .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The package source is distributed in `zip`{.filename} format and requires [**unzip**]{.command} (actually a symlink to [**bsdunzip**]{.command} from [libarchive]{.application}). You should create a directory and change to that directory before unzipping the file to ease the removal of the source files after the package has been installed.
:::

Install [DocBook XML DTD]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/xml/docbook/xml-dtd-4.5 &&
install -v -d -m755 /etc/xml                           &&
cp -v -af --no-preserve=ownership                      \
    catalog.xml docbook.cat *.dtd ent/ *.mod           \
    /usr/share/xml/docbook/xml-dtd-4.5
```

The shipped `catalog.xml`{.filename} file handles the formal public identifiers of the DocBook-4.5 XML DTD. We need add some entries into its installation to handle the URLs of the DTD as well, by running the following commands as the `root`{.systemitem} user:

``` root
xmlcatalog --noout --add "rewriteSystem"        \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml &&

xmlcatalog --noout --add "rewriteURI"           \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
```

Create (or update) and populate the `/etc/xml/catalog`{.filename} catalog file by running the following commands as the `root`{.systemitem} user:

``` root
if [ ! -e /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi &&

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//ENTITIES DocBook XML"                        \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//DTD DocBook XML"                             \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegateSystem"                   \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegateURI"                      \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog
```
::::

:::::: {.configuration lang="en"}
## Configuring DocBook-4.5 XML DTD {#configuring-docbook-4.5-xml-dtd .sect2}

::: {.sect3 lang="en"}
### []{#docbook-config}Config Files {#config-files .sect3}

`/etc/xml/catalog`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

Various BLFS packages request [DocBook XML DTD]{.application} version 4.x before V4.5, so the following step must be done for those packages to be built successfully.
:::

The above installation creates the files and updates the catalogs. In order to utilize [DocBook XML DTD]{.application} V4.5 when any version 4.x is requested in the System Identifier, you need to add additional statements to the catalog files. If you have any of the [DocBook XML DTD]{.application}'s referenced below already installed on your system, remove those entries from the [**for**]{.command} command below (issue the commands as the `root`{.systemitem} user):

``` root
for DTDVERSION in 4.1.2 4.2 4.3 4.4
do
  xmlcatalog --noout --add "public"                                  \
    "-//OASIS//DTD DocBook XML V$DTDVERSION//EN"                     \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/docbookx.dtd" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

  xmlcatalog --noout --add "rewriteSystem"              \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
  
  xmlcatalog --noout --add "rewriteURI"                 \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
done
```
::::
::::::

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
**Installed Files:** [DTD, MOD and ENT files]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xml and /usr/share/xml/docbook/xml-dtd-4.5]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#DTD-files}[`DTD files`{.filename}]{.term}   contain a document type definition which defines the element types and the attribute lists that can be used in the corresponding `XML`{.filename} files
  []{#MOD-files}[`MOD files`{.filename}]{.term}   contain components of the document type definition that are sourced into the `DTD`{.filename} files
  []{#ENT-files}[`ENT files`{.filename}]{.term}   contain lists of named character entities allowed in HTML
  ----------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](xml.md "Extensible Markup Language (XML)"){accesskey="p"}

    Extensible Markup Language (XML)

-   [Next](docbook5.md "docbook-xml-5.0"){accesskey="n"}

    docbook-xml-5.0

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
