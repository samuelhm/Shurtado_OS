::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](vte.md "VTE-0.84.0"){accesskey="p"}

    VTE-0.84.0

-   [Next](geocode-glib.md "geocode-glib-3.26.4"){accesskey="n"}

    geocode-glib-3.26.4

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#yelp-xsl}yelp-xsl-49.0 {#yelp-xsl-49.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Yelp XSL {#introduction-to-yelp-xsl .sect2}

The [Yelp XSL]{.application} package contains XSL stylesheets that are used by the [Yelp]{.application} help browser to format Docbook and Mallard documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/yelp-xsl/49/yelp-xsl-49.0.tar.xz](https://download.gnome.org/sources/yelp-xsl/49/yelp-xsl-49.0.tar.xz){.ulink}

-   Download MD5 sum: 78a347ceef497c9e83abf7f644a753b0

-   Download size: 388 KB

-   Estimated disk space required: 8.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Yelp XSL Dependencies

#### Required

[libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} and [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Yelp XSL {#installation-of-yelp-xsl .sect2}

Install [Yelp XSL]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/yelp-xsl]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](vte.md "VTE-0.84.0"){accesskey="p"}

    VTE-0.84.0

-   [Next](geocode-glib.md "geocode-glib-3.26.4"){accesskey="n"}

    geocode-glib-3.26.4

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
