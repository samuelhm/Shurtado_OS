::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){accesskey="p"}

    docbook-xsl-ns-1.79.2

-   [Next](xmlto.md "xmlto-0.0.29"){accesskey="n"}

    xmlto-0.0.29

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#itstool}itstool-2.0.7 {#itstool-2.0.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to itstool {#introduction-to-itstool .sect2}

[Itstool]{.application} extracts messages from XML files and outputs PO template files, then merges translations from MO files to create translated XML files. It determines what to translate and how to chunk it into messages using the W3C Internationalization Tag Set (ITS).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/itstool/itstool/archive/2.0.7/itstool-2.0.7.tar.gz](https://github.com/itstool/itstool/archive/2.0.7/itstool-2.0.7.tar.gz){.ulink}

-   Download MD5 sum: e759b258617a912acce630de3fa43957

-   Download size: 79 KB

-   Estimated disk space required: 688 KB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/itstool-2.0.7-lxml-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/itstool-2.0.7-lxml-1.patch){.ulink}
:::

### Itstool Dependencies

#### Required

[docbook-xml-4.5](docbook.md "docbook-xml-4.5"){.xref} and [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of itstool {#installation-of-itstool .sect2}

First, apply a patch to use [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref} for handling the XML files instead of the deprecated (disabled by default) Python module from [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}:

``` userinput
patch -Np1 -i ../itstool-2.0.7-lxml-1.patch
```

Install [itstool]{.application} by running the following commands:

``` userinput
PYTHON=/usr/bin/python3 ./autogen.sh --prefix=/usr &&
make
```

To test the results, issue: [**python3 tests/run_tests.py**]{.command}.

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
**Installed Program:** [itstool]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/itstool]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ----------------------------------------
  []{#itstool-prog}[[**itstool**]{.command}]{.term}   is used to create translated XML files
  --------------------------------------------------- ----------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){accesskey="p"}

    docbook-xsl-ns-1.79.2

-   [Next](xmlto.md "xmlto-0.0.29"){accesskey="n"}

    xmlto-0.0.29

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
