::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libical.md "libical-4.0.2"){accesskey="p"}

    libical-4.0.2

-   [Next](libidn2.md "libidn2-2.3.8"){accesskey="n"}

    libidn2-2.3.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libidn}libidn-1.43 {#libidn-1.43 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libidn {#introduction-to-libidn .sect2}

[libidn]{.application} is a package designed for internationalized string handling based on the [Stringprep](https://www.ietf.org/rfc/rfc3454.txt){.ulink}, [Punycode](https://www.ietf.org/rfc/rfc3492.txt){.ulink} and [IDNA](https://www.ietf.org/rfc/rfc3490.txt){.ulink} specifications defined by the Internet Engineering Task Force (IETF) Internationalized Domain Names (IDN) working group, used for internationalized domain names. This is useful for converting data from the system's native representation into UTF-8, transforming Unicode strings into ASCII strings, allowing applications to use certain ASCII name labels (beginning with a special prefix) to represent non-ASCII name labels, and converting entire domain names to and from the ASCII Compatible Encoding (ACE) form.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libidn/libidn-1.43.tar.gz](https://ftpmirror.gnu.org/libidn/libidn-1.43.tar.gz){.ulink}

-   Download MD5 sum: 4a32cafa4e9de86943fbae9a75c41f01

-   Download size: 2.4 MB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### libidn Dependencies

#### Optional

[Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, and [Mono](https://www.mono-project.com/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libidn {#installation-of-libidn .sect2}

Install [libidn]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, run:

``` userinput
pushd tests  &&
  make check &&
popd 
```

Now, as the `root`{.systemitem} user:

``` root
make install &&

find doc -name "Makefile*" -delete            &&
rm -rf -v doc/{gdoc,idn.1,stamp-vti,man,texi} &&
mkdir -v       /usr/share/doc/libidn-1.43     &&
cp -r -v doc/* /usr/share/doc/libidn-1.43
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.

`--enable-java`{.option}: Use this switch to enable building the Java implementation of [libidn]{.application}. Note that [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref} must be installed to use this option.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [idn]{.segbody}
:::

::: seg
**Installed Library:** [libidn.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/libidn-1.43 and /usr/share/gtk-doc/html/libidn]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#idn}[[**idn**]{.command}]{.term}             is a command line interface to the internationalized domain name library
  []{#libidn-lib}[`libidn.so`{.filename}]{.term}   contains a generic Stringprep implementation that does Unicode 3.2 NFKC normalization, mapping and prohibition of characters, and bidirectional character handling. Profiles for Nameprep, iSCSI, SASL and XMPP are included as well as support for Punycode and ASCII Compatible Encoding (ACE) via IDNA. A mechanism to define Top-Level Domain (TLD) specific validation tables, and to compare strings against those tables, as well as default tables for some TLDs are included
  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libical.md "libical-4.0.2"){accesskey="p"}

    libical-4.0.2

-   [Next](libidn2.md "libidn2-2.3.8"){accesskey="n"}

    libidn2-2.3.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
