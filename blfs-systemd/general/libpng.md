::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libmypaint.md "libmypaint-1.6.1"){accesskey="p"}

    libmypaint-1.6.1

-   [Next](libqrencode.md "libqrencode-4.1.1"){accesskey="n"}

    libqrencode-4.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpng}libpng-1.6.58 {#libpng-1.6.58 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libpng {#introduction-to-libpng .sect2}

The [libpng]{.application} package contains libraries used by other programs for reading and writing PNG files. The PNG format was designed as a replacement for GIF and, to a lesser extent, TIFF, with many improvements and extensions and lack of patent problems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/libpng/libpng-1.6.58.tar.xz](https://downloads.sourceforge.net/libpng/libpng-1.6.58.tar.xz){.ulink}

-   Download MD5 sum: c6c372a9d7754c66e0b77a8d34987a3b

-   Download size: 1.1 MB

-   Estimated disk space required: 17 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### Additional Downloads

::: itemizedlist
-   Recommended patch to include animated png functionality in [libpng]{.application} (required to use the system [libpng]{.application} in [Firefox]{.application}, [Seamonkey]{.application}, and [Thunderbird]{.application}): [https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.58-apng.patch.gz](https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.58-apng.patch.gz){.ulink}

-   Patch md5sum: 1eef1ddd6def88814d1a65ce1f4dceb9
:::
::::::

::: {.installation lang="en"}
## Installation of libpng {#installation-of-libpng .sect2}

If you want to patch libpng to support apng files, apply it here:

``` userinput
zcat ../libpng-1.6.58-apng.patch.gz | patch -p1
```

Install [libpng]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -vDm644 README libpng-manual.txt -t /usr/share/doc/libpng-1.6.58
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [libpng-config (symlink), libpng16-config, pngfix and png-fix-itxt]{.segbody}
:::

::: seg
**Installed Libraries:** [libpng.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libpng16 and /usr/share/doc/libpng-1.6.58]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  []{#pngfix}[[**pngfix**]{.command}]{.term}                 tests, optimizes and optionally fixes the zlib header in PNG files. Optionally, when fixing, strips ancillary chunks from the file
  []{#png-fix-itxt}[[**png-fix-itxt**]{.command}]{.term}     fixes PNG files that have an incorrect length field in the iTXt chunks
  []{#libpng-config}[[**libpng-config**]{.command}]{.term}   is a shell script that provides configuration information for applications wanting to use [libpng]{.application}
  []{#libpng-lin}[`libpng.so`{.filename}]{.term}             contain routines used to create and manipulate PNG format graphics files
  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libmypaint.md "libmypaint-1.6.1"){accesskey="p"}

    libmypaint-1.6.1

-   [Next](libqrencode.md "libqrencode-4.1.1"){accesskey="n"}

    libqrencode-4.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
