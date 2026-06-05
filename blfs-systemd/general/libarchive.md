::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libaio.md "libaio-0.3.113"){accesskey="p"}

    libaio-0.3.113

-   [Next](libassuan.md "libassuan-3.0.2"){accesskey="n"}

    libassuan-3.0.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libarchive}libarchive-3.8.7 {#libarchive-3.8.7 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libarchive {#introduction-to-libarchive .sect2}

The [libarchive]{.application} library provides a single interface for reading/writing various compression formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libarchive/libarchive/releases/download/v3.8.7/libarchive-3.8.7.tar.xz](https://github.com/libarchive/libarchive/releases/download/v3.8.7/libarchive-3.8.7.tar.xz){.ulink}

-   Download MD5 sum: dd48e73d519e309ce08ce76a004fb0e0

-   Download size: 5.8 MB

-   Estimated disk space required: 86 MB (with tests)

-   Estimated build time: 0.2 SBU (add 0.3 SBU for tests)
:::

### libarchive Dependencies

#### Optional

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [LZO-2.10](lzo.md "LZO-2.10"){.xref}, and [Nettle-4.0](../postlfs/nettle.md "Nettle-4.0"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of libarchive {#installation-of-libarchive .sect2}

Install [libarchive]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command} as a non-`root`{.systemitem} user.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Still as the `root`{.systemitem} user, create a symlink so we can use [**bsdunzip**]{.command} as [**unzip**]{.command}, instead of relying on the unmaintained Unzip package:

``` root
ln -sfv bsdunzip /usr/bin/unzip
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

As discussed in [Wrong Filename Encoding](../introduction/locale-issues.md#locale-wrong-filename-encoding "The Program Uses or Creates Filenames in the Wrong Encoding"){.xref}, if the Zip archive to be extracted contains any file with a name containing any non-Latin characters, you need to manually specify the encoding of those characters or they will be turned into unreadable sequences in the extracted file name. For example, if a Zip archive created with WinZip, `archive.zip`{.filename}, contains a file named with Simplified Chinese characters, the encoding should be CP936 and the *`-I cp936`* option should be used. I.e. the command to extract the archive should be [**unzip -I cp936 archive.zip**]{.command}.
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--without-xml2`{.option}: This switch uses expat for xar archive format support instead of libxml2 (which is preferred) if both packages are installed.

`--with-nettle`{.option}: This switch uses Nettle for crypto support instead of OpenSSL. This support is known to be broken upstream due to Nettle-4.0.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bsdcat, bsdcpio, bsdtar, bsdunzip, and unzip (symlink to bsdunzip)]{.segbody}
:::

::: seg
**Installed Libraries:** [libarchive.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------------------------
  []{#bsdcat}[[**bsdcat**]{.command}]{.term}               expands files to standard output
  []{#bsdcpio}[[**bsdcpio**]{.command}]{.term}             is a tool similar to [**cpio**]{.command}
  []{#bsdtar}[[**bsdtar**]{.command}]{.term}               is a tool similar to GNU [**tar**]{.command}
  []{#bsdunzip}[[**bsdunzip**]{.command}]{.term}           is a tool similar to Info-ZIP [**unzip**]{.command}
  []{#libarchive-lib}[`libarchive.so`{.filename}]{.term}   is a library that can create and read several streaming archive formats
  -------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libaio.md "libaio-0.3.113"){accesskey="p"}

    libaio-0.3.113

-   [Next](libassuan.md "libassuan-3.0.2"){accesskey="n"}

    libassuan-3.0.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
