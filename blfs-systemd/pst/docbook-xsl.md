::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook5.md "docbook-xml-5.0"){accesskey="p"}

    docbook-xml-5.0

-   [Next](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){accesskey="n"}

    docbook-xsl-ns-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#docbook-xsl}docbook-xsl-nons-1.79.2 {#docbook-xsl-nons-1.79.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to DocBook XSL Stylesheets {#introduction-to-docbook-xsl-stylesheets .sect2}

The [DocBook XSL Stylesheets]{.application} package contains XSL stylesheets. These are useful for performing transformations on XML DocBook files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2](https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2){.ulink}

-   Download MD5 sum: 2666d1488d6ced1551d15f31d7ed8c38

-   Download size: 22 MB

-   Estimated disk space required: 58 MB (includes installing optional documentation)

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-nons-1.79.2-stack_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-nons-1.79.2-stack_fix-1.patch){.ulink}
:::

::: itemizedlist
**Optional documentation**

-   Download (HTTP): [https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-doc-1.79.2.tar.bz2](https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-doc-1.79.2.tar.bz2){.ulink}

-   Download MD5 sum: 62375ca864fc198cb2b17d98209d0b8c

-   Download size: 522 KB
:::

### DocBook XSL Stylesheets Dependencies

#### Recommended (at runtime)

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional (all used at runtime)

[apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref} (to produce [“[webhelp]{.quote}”]{.quote} documents), [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (or any other XSLT processor), to process Docbook documents, [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref} (to utilize the [“[epub]{.quote}”]{.quote} stylesheets), [Zip-3.0](../general/zip.md "Zip-3.0"){.xref} (to produce [“[epub3]{.quote}”]{.quote} documents), and [Saxon6](https://sourceforge.net/projects/saxon/files/saxon6/){.ulink} and [Xerces2 Java](http://xerces.apache.org/xerces2-j/){.ulink} (used with [apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref} to produce [“[webhelp]{.quote}”]{.quote} documents)
:::::::

::: {.installation lang="en"}
## Installation of DocBook XSL Stylesheets {#installation-of-docbook-xsl-stylesheets .sect2}

First, fix a problem that causes stack overflows when doing recursion:

``` userinput
patch -Np1 -i ../docbook-xsl-nons-1.79.2-stack_fix-1.patch
```

If you downloaded the optional documentation tarball, unpack it with the following command:

``` userinput
tar -xf ../docbook-xsl-doc-1.79.2.tar.bz2 --strip-components=1
```

BLFS does not install the required packages to run the test suite and provide meaningful results.

Install [DocBook XSL Stylesheets]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

ln -svf VERSION /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2/VERSION.xsl &&

install -v -m644 -D README \
                    /usr/share/doc/docbook-xsl-nons-1.79.2/README.txt &&

install -v -m644    RELEASE-NOTES* NEWS* \
                    /usr/share/doc/docbook-xsl-nons-1.79.2
```

If you downloaded the optional documentation tarball, install the documentation by issuing the following command as the `root`{.systemitem} user:

``` root
cp -v -R doc/* /usr/share/doc/docbook-xsl-nons-1.79.2
```
:::

::::: {.configuration lang="en"}
## Configuring DocBook XSL Stylesheets {#configuring-docbook-xsl-stylesheets .sect2}

::: {.sect3 lang="en"}
### []{#docbook-xsl-config}Config Files {#config-files .sect3}

`/etc/xml/catalog`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Create (or append) and populate the XML catalog file using the following commands as the `root`{.systemitem} user (both [*http*]{.emphasis} and [*https*]{.emphasis} forms are used because upstream have had both in their documentation):

``` root
(set -e

 install -v -d -m755 /etc/xml
 [ -e /etc/xml/catalog ] || xmlcatalog --noout --create /etc/xml/catalog

 for uri in http{,s}://cdn.docbook.org/release/xsl-nons/{1.79.2,current} \
            http://docbook.sourceforge.net/release/xsl/current; do
   for rewrite in System URI; do
     xmlcatalog --noout --add "rewrite$rewrite"             \
       "$uri"                                               \
       "/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
       /etc/xml/catalog
   done
 done)
```

Occasionally, you may find the need to install other versions of the XSL stylesheets as some projects reference a specific version. One example is BLFS-6.0, which required the 1.67.2 version. In these instances you should install any other required version in its own versioned directory and create catalog entries as follows (substitute the desired version number for *`<version>`*):

``` userinput
xmlcatalog --noout --add "rewriteSystem"                          \
           "http://docbook.sourceforge.net/release/xsl/<version>" \
           "/usr/share/xml/docbook/xsl-stylesheets-<version>"     \
           /etc/xml/catalog &&

xmlcatalog --noout --add "rewriteURI"                             \
           "http://docbook.sourceforge.net/release/xsl/<version>" \
           "/usr/share/xml/docbook/xsl-stylesheets-<version>"     \
           /etc/xml/catalog
```
:::
:::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Files:** [/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2/\*/\*.xsl]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 and /usr/share/doc/docbook-xsl-nons-1.79.2]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ------------------------------------------------------
  []{#xsl-stylesheets}[`XSL Stylesheets`{.filename}]{.term}   are used for performing transformations on XML files
  ----------------------------------------------------------- ------------------------------------------------------
:::
::::::::
::::::::::::::::::

::: navfooter
-   [Prev](docbook5.md "docbook-xml-5.0"){accesskey="p"}

    docbook-xml-5.0

-   [Next](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){accesskey="n"}

    docbook-xsl-ns-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
