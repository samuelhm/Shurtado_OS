::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libstatgrab.md "libstatgrab-0.92.1"){accesskey="p"}

    libstatgrab-0.92.1

-   [Next](libunistring.md "libunistring-1.4.2"){accesskey="n"}

    libunistring-1.4.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libtasn1}libtasn1-4.21.0 {#libtasn1-4.21.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libtasn1 {#introduction-to-libtasn1 .sect2}

[libtasn1]{.application} is a highly portable C library that encodes and decodes DER/BER data following an ASN.1 schema.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libtasn1/libtasn1-4.21.0.tar.gz](https://ftpmirror.gnu.org/libtasn1/libtasn1-4.21.0.tar.gz){.ulink}

-   Download MD5 sum: 2ee1d9f3aa66f1e308c46a283aa9a8c2

-   Download size: 1.7 MB

-   Estimated disk space required: 16 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
:::

### libtasn1 Dependencies

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libtasn1 {#installation-of-libtasn1 .sect2}

Install [libtasn1]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you did not pass the `--enable-gtk-doc`{.option} parameter to the [**configure**]{.command} script, you can install the API documentation using the following command as the `root`{.systemitem} user:

``` root
make -C doc/reference install-data-local
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: This parameter is normally used if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [asn1Coding, asn1Decoding and asn1Parser]{.segbody}
:::

::: seg
**Installed Library:** [libtasn1.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/gtk-doc/html/libtasn1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  []{#asn1Coding}[[**asn1Coding**]{.command}]{.term}       is an ASN.1 DER encoder
  []{#asn1Decoding}[[**asn1Decoding**]{.command}]{.term}   is an ASN.1 DER decoder
  []{#asn1Parser}[[**asn1Parser**]{.command}]{.term}       is an ASN.1 syntax tree generator for [libtasn1]{.application}
  []{#libtasn1-lib}[`libtasn1.so`{.filename}]{.term}       is a library for Abstract Syntax Notation One (ASN.1) and Distinguish Encoding Rules (DER) manipulation
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libstatgrab.md "libstatgrab-0.92.1"){accesskey="p"}

    libstatgrab-0.92.1

-   [Next](libunistring.md "libunistring-1.4.2"){accesskey="n"}

    libunistring-1.4.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
