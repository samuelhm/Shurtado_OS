::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](opensp.md "OpenSP-1.5.2"){accesskey="p"}

    OpenSP-1.5.2

-   [Next](docbook-dsssl.md "docbook-dsssl-1.79"){accesskey="n"}

    docbook-dsssl-1.79

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openjade}OpenJade-1.3.2 {#openjade-1.3.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to OpenJade {#introduction-to-openjade .sect2}

The [OpenJade]{.application} package contains a DSSSL engine. This is useful for SGML and XML transformations into RTF, TeX, SGML and XML.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz](https://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz){.ulink}

-   Download MD5 sum: 7df692e3186109cc00db6825b777201e

-   Download size: 880 KB

-   Estimated disk space required: 19.2 MB

-   Estimated build time: 0.7 SBU
:::

### Additional Download

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/openjade-1.3.2-upstream-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/openjade-1.3.2-upstream-1.patch){.ulink}
:::

### OpenJade Dependencies

#### Required

[OpenSP-1.5.2](opensp.md "OpenSP-1.5.2"){.xref}
::::::

::: {.installation lang="en"}
## Installation of OpenJade {#installation-of-openjade .sect2}

First fix problems when building with newer compilers:

``` userinput
patch -Np1 -i ../openjade-1.3.2-upstream-1.patch
```

Now fix a compilation problem with perl-5.16 and later:

``` userinput
sed -i -e '/getopts/{N;s#&G#g#;s#do .getopts.pl.;##;}' \
       -e '/use POSIX/ause Getopt::Std;' msggen.pl
```

Install [OpenJade]{.application} by running the following commands:

``` userinput
export CXXFLAGS="${CXXFLAGS:--O2 -g} -fno-lifetime-dse"            &&
./configure --prefix=/usr                                \
            --mandir=/usr/share/man                      \
            --enable-http                                \
            --disable-static                             \
            --enable-default-catalog=/etc/sgml/catalog   \
            --enable-default-search-path=/usr/share/sgml \
            --datadir=/usr/share/sgml/openjade-1.3.2   &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                                                   &&
make install-man                                               &&
ln -v -sf openjade /usr/bin/jade                               &&
ln -v -sf libogrove.so /usr/lib/libgrove.so                    &&
ln -v -sf libospgrove.so /usr/lib/libspgrove.so                &&
ln -v -sf libostyle.so /usr/lib/libstyle.so                    &&

install -v -m644 dsssl/catalog /usr/share/sgml/openjade-1.3.2/ &&

install -v -m644 dsssl/*.{dtd,dsl,sgm}              \
    /usr/share/sgml/openjade-1.3.2                             &&

install-catalog --add /etc/sgml/openjade-1.3.2.cat  \
    /usr/share/sgml/openjade-1.3.2/catalog                     &&

install-catalog --add /etc/sgml/sgml-docbook.cat    \
    /etc/sgml/openjade-1.3.2.cat
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export CXXFLAGS=...**]{.command}: This command prevents segmentation faults when the package is compiled with [gcc-6.1]{.application}.

[**make install-man**]{.command}: This command installs the [**openjade**]{.command} man page.

*`--disable-static`*: This switch prevents the building of the static library.

*`--enable-http`*: This switch adds support for HTTP.

*`--enable-default-catalog=/etc/sgml/catalog`*: This switch sets the path to the centralized catalog.

*`--enable-default-search-path`*: This switch sets the default value of `SGML_SEARCH_PATH`{.envar}.

*`--datadir=/usr/share/sgml/openjade-1.3.2`*: This switch puts data files in `/usr/share/sgml/openjade-1.3.2`{.filename} instead of `/usr/share`{.filename}.

[**ln -v -sf ...**]{.command}: These commands create the [Jade]{.application} equivalents of [OpenJade]{.application} executables and libraries.
:::

:::: {.configuration lang="en"}
## Configuring OpenJade {#configuring-openjade .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

As the `root`{.systemitem} user:

``` root
echo "SYSTEM \"http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd\" \
    \"/usr/share/xml/docbook/xml-dtd-4.5/docbookx.dtd\"" >> \
    /usr/share/sgml/openjade-1.3.2/catalog
```

This configuration is only necessary if you intend to use [OpenJade]{.application} to process the BLFS XML files through DSSSL Stylesheets.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [openjade and the [Jade]{.application} equivalent symlink, jade]{.segbody}
:::

::: seg
**Installed Libraries:** [libogrove.so, libospgrove.so, libostyle.so, and the [Jade]{.application} equivalent symlinks: libgrove.so, libspgrove.so, and libstyle.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/sgml/openjade-1.3.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------
  []{#openjade-prog}[[**openjade**]{.command}]{.term}   is a DSSSL engine used for transformations
  []{#jade}[[**jade**]{.command}]{.term}                is a symlink to [**openjade**]{.command}
  ----------------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](opensp.md "OpenSP-1.5.2"){accesskey="p"}

    OpenSP-1.5.2

-   [Next](docbook-dsssl.md "docbook-dsssl-1.79"){accesskey="n"}

    docbook-dsssl-1.79

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
