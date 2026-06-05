::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmpeg2.md "libmpeg2-0.5.1"){accesskey="p"}

    libmpeg2-0.5.1

-   [Next](libogg.md "libogg-1.3.6"){accesskey="n"}

    libogg-1.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmusicbrainz5}libmusicbrainz-5.1.0 {#libmusicbrainz-5.1.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libmusicbrainz {#introduction-to-libmusicbrainz .sect2}

The [libmusicbrainz]{.application} package contains a library which allows you to access the data held on the MusicBrainz server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz](https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz){.ulink}

-   Download MD5 sum: 4cc5556aa40ff7ab8f8cb83965535bc3

-   Download size: 76 KB

-   Estimated disk space required: 6.6 MB (additional 4.4 MB for the API documentation)

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libmusicbrainz-5.1.0-cmake_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libmusicbrainz-5.1.0-cmake_fixes-1.patch){.ulink}
:::

### libmusicbrainz Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} and [neon-0.37.1](../basicnet/neon.md "neon-0.37.1"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
::::::

::: {.installation lang="en"}
## Installation of libmusicbrainz {#installation-of-libmusicbrainz .sect2}

First, fix a problem caused by CMake-3.18.0 and later:

``` userinput
patch -Np1 -i ../libmusicbrainz-5.1.0-cmake_fixes-1.patch
```

Fix also a problem caused by libxml-2.12.x:

``` userinput
sed -e 's/xmlErrorPtr /const xmlError */'     \
    -i src/xmlParser.cc
```

Install [libmusicbrainz]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 .. &&
make
```

If you have installed [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, optionally build the API documentation:

``` userinput
doxygen ../Doxyfile
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have built the API documentation, install, as the `root`{.systemitem} user:

``` root
rm -rf /usr/share/doc/libmusicbrainz-5.1.0 &&
cp -vr docs/ /usr/share/doc/libmusicbrainz-5.1.0
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libmusicbrainz5.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libmusicbrainz5 and /usr/share/doc/libmusicbrainz-5.1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------
  []{#libmusicbrainz5-lib}[`libmusicbrainz5.so`{.filename}]{.term}   contains API functions for accessing the MusicBrainz database
  ------------------------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libmpeg2.md "libmpeg2-0.5.1"){accesskey="p"}

    libmpeg2-0.5.1

-   [Next](libogg.md "libogg-1.3.6"){accesskey="n"}

    libogg-1.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
