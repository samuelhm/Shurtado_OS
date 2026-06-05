::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook-xsl.md "docbook-xsl-nons-1.79.2"){accesskey="p"}

    docbook-xsl-nons-1.79.2

-   [Next](itstool.md "itstool-2.0.7"){accesskey="n"}

    itstool-2.0.7

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#docbook-xsl-ns}docbook-xsl-ns-1.79.2 {#docbook-xsl-ns-1.79.2 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to DocBook XSL Stylesheets (Namespaced) {#introduction-to-docbook-xsl-stylesheets-namespaced .sect2}

The [DocBook XSL Stylesheets (Namespaced)]{.application} package contains XSL stylesheets. These are useful for performing transformations on XML DocBook 5.0 files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-1.79.2.tar.bz2](https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-1.79.2.tar.bz2){.ulink}

-   Download MD5 sum: 4a400f0264a19329c7f95f69e098744a

-   Download size: 23 MB

-   Estimated disk space required: 49 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-1.79.2-stack_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-1.79.2-stack_fix-1.patch){.ulink}
:::

### DocBook XSL Stylesheets (Namespaced) Dependencies

#### Recommended (at runtime)

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional (all used at runtime)

[apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref} (to produce [“[webhelp]{.quote}”]{.quote} documents), [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (or any other XSLT processor), to process Docbook documents, [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref} (to utilize the [“[epub]{.quote}”]{.quote} stylesheets), [Zip-3.0](../general/zip.md "Zip-3.0"){.xref} (to produce [“[epub3]{.quote}”]{.quote} documents), and [Saxon6](https://sourceforge.net/projects/saxon/files/saxon6/){.ulink} and [Xerces2 Java](http://xerces.apache.org/xerces2-j/){.ulink} (used with [apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref} to produce [“[webhelp]{.quote}”]{.quote} documents)
::::::

::: {.installation lang="en"}
## Installation of DocBook XSL Stylesheets (Namespaced) {#installation-of-docbook-xsl-stylesheets-namespaced .sect2}

First, fix a problem that causes stack overflows when doing recursion:

``` userinput
patch -Np1 -i ../docbook-xsl-1.79.2-stack_fix-1.patch
```

BLFS does not install the required packages to run the test suite and provide meaningful results.

Install [DocBook XSL Stylesheets]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/xml/docbook/xsl-stylesheets-1.79.2 &&

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    /usr/share/xml/docbook/xsl-stylesheets-1.79.2 &&

ln -s VERSION /usr/share/xml/docbook/xsl-stylesheets-1.79.2/VERSION.xsl
```

The documentation for this package is shared with its non-namespaced counterpart, the [docbook-xsl-nons-1.79.2](docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} package. Install the latter if you want the documentation.
:::

::::: {.configuration lang="en"}
## Configuring DocBook XSL Stylesheets {#configuring-docbook-xsl-stylesheets .sect2}

::: {.sect3 lang="en"}
### []{#docbook-xsl-ns-config}Config Files {#config-files .sect3}

`/etc/xml/catalog`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Create (or append) and populate the XML catalog file using the following commands as the `root`{.systemitem} user (both [*http*]{.emphasis} and [*https*]{.emphasis} forms are used because upstream have had both in their documentation):

``` root
(set -e

 install -v -d -m755 /etc/xml
 [ -e /etc/xml/catalog ] || xmlcatalog --noout --create /etc/xml/catalog

 for uri in http{,s}://cdn.docbook.org/release/xsl/{1.79.2,current} \
            http://docbook.sourceforge.net/release/xsl-ns/current; do
   for rewrite in System URI; do
     xmlcatalog --noout --add "rewrite$rewrite"        \
       "$uri"                                          \
       "/usr/share/xml/docbook/xsl-stylesheets-1.79.2" \
       /etc/xml/catalog
   done
 done)
```
:::
:::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Files:** [/usr/share/xml/docbook/xsl-stylesheets-1.79.2/\*/\*.xsl]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/xml/docbook/xsl-stylesheets-1.79.2]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------------- ------------------------------------------------------
  []{#xsl-stylesheets-ns}[`XSL Stylesheets (Namespaced)`{.filename}]{.term}   are used for performing transformations on XML files
  --------------------------------------------------------------------------- ------------------------------------------------------
:::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](docbook-xsl.md "docbook-xsl-nons-1.79.2"){accesskey="p"}

    docbook-xsl-nons-1.79.2

-   [Next](itstool.md "itstool-2.0.7"){accesskey="n"}

    itstool-2.0.7

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
