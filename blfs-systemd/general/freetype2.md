::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](exiv2.md "Exiv2-0.28.8"){accesskey="p"}

    Exiv2-0.28.8

-   [Next](fontconfig.md "Fontconfig-2.18.1"){accesskey="n"}

    Fontconfig-2.18.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#freetype2}FreeType-2.14.3 {#freetype-2.14.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to FreeType2 {#introduction-to-freetype2 .sect2}

The [FreeType2]{.application} package contains a library which allows applications to properly render [TrueType]{.application} fonts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/freetype/freetype-2.14.3.tar.xz](https://downloads.sourceforge.net/freetype/freetype-2.14.3.tar.xz){.ulink}

-   Download MD5 sum: 5e78e6fdce5a61d3075e4c25e9852f84

-   Download size: 2.6 MB

-   Estimated disk space required: 51 MB (with additional documentation)

-   Estimated build time: 0.2 SBU (with additional documentation)
:::

### Additional Downloads

::: itemizedlist
**Additional Documentation**

-   Download (HTTP): [https://downloads.sourceforge.net/freetype/freetype-doc-2.14.3.tar.xz](https://downloads.sourceforge.net/freetype/freetype-doc-2.14.3.tar.xz){.ulink}

-   Download MD5 sum: a9a92aa403d7c1b4eed6ee452dc23305

-   Download size: 2.1 MB
:::

### FreeType2 Dependencies

#### Recommended

[harfBuzz-14.2.1](harfbuzz.md "harfBuzz-14.2.1"){.xref} (runtime), [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, and [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}

#### Optional

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref} and [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}

#### Optional (for documentation)

[docwriter](https://pypi.org/project/docwriter/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of FreeType2 {#installation-of-freetype2 .sect2}

If you downloaded the additional documentation, unpack it into the source tree using the following command:

``` userinput
tar -xf ../freetype-doc-2.14.3.tar.xz --strip-components=2 -C docs
```

Install [FreeType2]{.application} by running the following commands:

``` userinput
sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h   &&

./configure --prefix=/usr            \
            --disable-static         \
            --enable-freetype-config \
            --with-harfbuzz=dynamic  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you downloaded the optional documentation, install it as the `root`{.systemitem} user:

``` root
cp -v -R docs -T /usr/share/doc/freetype-2.14.3 &&
rm -v /usr/share/doc/freetype-2.14.3/freetype-config.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -ri ...**]{.command}: First command enables GX/AAT and OpenType table validation and second command enables Subpixel Rendering. Note that Subpixel Rendering may have patent issues. Be sure to read the `'Other patent issues'`{.literal} part of [https://freetype.org/patents.html](https://freetype.org/patents.md){.ulink} before enabling this option.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-freetype-config`*: This switch ensures that the man page for freetype-config is installed.

*`--with-harfbuzz=dynamic`*: This switch ensures that HarfBuzz is loaded dynamically, skipping the requirement to rebuild this package after HarfBuzz is installed.

`--without-harfbuzz`{.option}: If [harfbuzz]{.application} is installed prior to [freetype]{.application} without [freetype]{.application} support, use this switch to avoid a build failure.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [freetype-config]{.segbody}
:::

::: seg
**Installed Library:** [libfreetype.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/freetype2 and /usr/share/doc/freetype-2.14.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------------------------------------
  []{#freetype-config}[[**freetype-config**]{.command}]{.term}   is used to get [FreeType]{.application} compilation and linking information
  []{#libfreetype}[`libfreetype.so`{.filename}]{.term}           contains functions for rendering various font types, such as TrueType and Type1
  -------------------------------------------------------------- ---------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](exiv2.md "Exiv2-0.28.8"){accesskey="p"}

    Exiv2-0.28.8

-   [Next](fontconfig.md "Fontconfig-2.18.1"){accesskey="n"}

    Fontconfig-2.18.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
