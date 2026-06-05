::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libtasn1.md "libtasn1-4.21.0"){accesskey="p"}

    libtasn1-4.21.0

-   [Next](libunwind.md "libunwind-1.8.3"){accesskey="n"}

    libunwind-1.8.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libunistring}libunistring-1.4.2 {#libunistring-1.4.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libunistring {#introduction-to-libunistring .sect2}

[libunistring]{.application} is a library that provides functions for manipulating Unicode strings and for manipulating C strings according to the Unicode standard.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libunistring/libunistring-1.4.2.tar.xz](https://ftpmirror.gnu.org/libunistring/libunistring-1.4.2.tar.xz){.ulink}

-   Download MD5 sum: e033195d90d0803063f3fecc77148124

-   Download size: 2.7 MB

-   Estimated disk space required: 58 MB (add 46 MB for tests)

-   Estimated build time: 0.6 SBU (add 0.3 SBU for tests; both using parallelism=4)
:::

### libunistring Dependencies

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}) (to rebuild the documentation)
:::::

::: {.installation lang="en"}
## Installation of libunistring {#installation-of-libunistring .sect2}

Install [libunistring]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libunistring-1.4.2 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libunistring.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/unistring and /usr/share/doc/libunistring-1.4.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- -----------------------------------------
  []{#libunistring-lib}[[**libunistring.so**]{.command}]{.term}   provides the unicode string library API
  --------------------------------------------------------------- -----------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libtasn1.md "libtasn1-4.21.0"){accesskey="p"}

    libtasn1-4.21.0

-   [Next](libunwind.md "libunwind-1.8.3"){accesskey="n"}

    libunwind-1.8.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
