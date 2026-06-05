::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](docbook-4.5-dtd.md "docbook-4.5-dtd"){accesskey="p"}

    docbook-4.5-dtd

-   [Next](openjade.md "OpenJade-1.3.2"){accesskey="n"}

    OpenJade-1.3.2

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#opensp}OpenSP-1.5.2 {#opensp-1.5.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to OpenSP {#introduction-to-opensp .sect2}

The [OpenSP]{.application} package contains a [C++]{.application} library for using SGML/XML files. This is useful for validating, parsing and manipulating SGML and XML documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz](https://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz){.ulink}

-   Download MD5 sum: 670b223c5d12cee40c9137be86b6c39b

-   Download size: 1.5 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 1.0 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/OpenSP-1.5.2-gcc14-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/OpenSP-1.5.2-gcc14-1.patch){.ulink}
:::

### OpenSP Dependencies

#### Required

[sgml-common-0.6.3](sgml-common.md "sgml-common-0.6.3"){.xref}

#### Optional

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref} and [xmlto-0.0.29](xmlto.md "xmlto-0.0.29"){.xref}
::::::

::: {.installation lang="en"}
## Installation of OpenSP {#installation-of-opensp .sect2}

Install [OpenSP]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../OpenSP-1.5.2-gcc14-1.patch              &&
sed -i 's/32,/253,/' lib/Syntax.cxx                      &&
sed -i 's/LITLEN          240 /LITLEN          8092/'    \
    unicode/{gensyntax.pl,unicode.syn}                   &&

./configure --prefix=/usr                                \
            --disable-static                             \
            --disable-doc-build                          \
            --enable-default-catalog=/etc/sgml/catalog   \
            --enable-http                                \
            --enable-default-search-path=/usr/share/sgml &&

make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2
```

To test the results, issue: [**make check**]{.command}. The `catalog-2`{.filename}, `af-7`{.filename}, `af-8`{.filename}, `af-9`{.filename}, `af-10`{.filename}, and `af-11`{.filename} tests are known to fail.

Now, as the `root`{.systemitem} user:

``` root
make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2 \
     docdir=/usr/share/doc/OpenSP-1.5.2      \
     install &&

ln -v -sf onsgmls   /usr/bin/nsgmls   &&
ln -v -sf osgmlnorm /usr/bin/sgmlnorm &&
ln -v -sf ospam     /usr/bin/spam     &&
ln -v -sf ospcat    /usr/bin/spcat    &&
ln -v -sf ospent    /usr/bin/spent    &&
ln -v -sf osx       /usr/bin/sx       &&
ln -v -sf osx       /usr/bin/sgml2xml &&
ln -v -sf libosp.so /usr/lib/libsp.so
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i 's/32,/253,/...unicode.syn}**]{.command}: These seds prevent some annoying messages that may otherwise appear while running [**openjade**]{.command}.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-http`*: This switch adds support for HTTP.

*`--disable-doc-build`*: This switch prevents the [**configure**]{.command} script checking if you have [xmlto]{.application} installed. If you have [xmlto]{.application}, you can remove this option.

*`--enable-default-catalog=/etc/sgml/catalog`*: This switch sets the path to the centralized catalog.

*`--enable-default-search-path`*: This switch sets the default value of `SGML_SEARCH_PATH`{.envar}.

`--enable-xml-messages`{.option}: This switch adds support for XML Formatted Messages.

[**make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2**]{.command} : This sets the pkgdatadir variable in the `Makefile`{.filename} from `/usr/share/OpenSP`{.filename} to `/usr/share/sgml/OpenSP-1.5.2`{.filename}.

[**ln -v -sf ...**]{.command}: These commands create the [SP]{.application} equivalents of [OpenSP]{.application} executables and libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [onsgmls, osgmlnorm, ospam, ospcat, ospent, osx, and the [SP]{.application} equivalent symlinks: nsgmls, sgml2xml, sgmlnorm, spam, spcat, spent, and sx]{.segbody}
:::

::: seg
**Installed Library:** [libosp.so and the [SP]{.application} equivalent symlink: libsp.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/OpenSP, /usr/share/doc/OpenSP, and /usr/share/sgml/OpenSP-1.5.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#onsgmls}[[**onsgmls**]{.command}]{.term}       is used to process SGML files
  []{#osgmlnorm}[[**osgmlnorm**]{.command}]{.term}   prints on the standard output a normalized document instance for the SGML document contained in the concatenation of the entities with system identifiers .nf and .fi
  []{#ospam}[[**ospam**]{.command}]{.term}           is a markup stream editor
  []{#ospcat}[[**ospcat**]{.command}]{.term}         prints effective system identifiers found in the catalogs
  []{#ospent}[[**ospent**]{.command}]{.term}         provides access to [OpenSP]{.application}'s entity manager
  []{#osx}[[**osx**]{.command}]{.term}               is an SGML normalizer or used to convert SGML files to XML files
  []{#nsgmls}[[**nsgmls**]{.command}]{.term}         is a symlink to [**onsgmls**]{.command}
  []{#sgml2xml}[[**sgml2xml**]{.command}]{.term}     is a symlink to [**osx**]{.command}
  []{#sgmlnorm}[[**sgmlnorm**]{.command}]{.term}     is a symlink to [**osgmlnorm**]{.command}
  []{#spam}[[**spam**]{.command}]{.term}             is a symlink to [**ospam**]{.command}
  []{#spcat}[[**spcat**]{.command}]{.term}           is a symlink to [**ospcat**]{.command}
  []{#spent}[[**spent**]{.command}]{.term}           is a symlink to [**ospent**]{.command}
  []{#sx}[[**sx**]{.command}]{.term}                 is a symlink to [**osx**]{.command}
  []{#libosp}[`libosp.so`{.filename}]{.term}         contains functions required by the [OpenSP]{.application} programs to parse, validate and manipulate SGML and XML files
  []{#libsp}[`libsp.so`{.filename}]{.term}           is a symlink to `libosp.so`{.filename}
  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](docbook-4.5-dtd.md "docbook-4.5-dtd"){accesskey="p"}

    docbook-4.5-dtd

-   [Next](openjade.md "OpenJade-1.3.2"){accesskey="n"}

    OpenJade-1.3.2

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
