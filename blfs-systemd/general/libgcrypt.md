::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libdisplay-info.md "libdisplay-info-0.3.0"){accesskey="p"}

    libdisplay-info-0.3.0

-   [Next](libgpg-error.md "libgpg-error-1.61"){accesskey="n"}

    libgpg-error-1.61

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgcrypt}libgcrypt-1.12.2 {#libgcrypt-1.12.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgcrypt {#introduction-to-libgcrypt .sect2}

The [libgcrypt]{.application} package contains a general purpose crypto library based on the code used in [GnuPG]{.application}. The library provides a high level interface to cryptographic building blocks using an extendable and flexible API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2](https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2){.ulink}

-   Download MD5 sum: 4e98430cfc16d842a7231026c32418da

-   Download size: 4.3 MB

-   Estimated disk space required: 159 MB (with tests)

-   Estimated build time: 0.2 SBU (with documentation; add 0.9 SBU for tests)
:::

### libgcrypt Dependencies

#### Required

[libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})
:::::

::: {.installation lang="en"}
## Installation of libgcrypt {#installation-of-libgcrypt .sect2}

Install [libgcrypt]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/gcrypt_nochunks.md doc/gcrypt.texi &&
makeinfo --plaintext       -o doc/gcrypt.txt           doc/gcrypt.texi
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -dm755   /usr/share/doc/libgcrypt-1.12.2 &&
install -v -m644    README doc/{README.apichanges,fips*,libgcrypt*} \
                    /usr/share/doc/libgcrypt-1.12.2 &&

install -v -dm755   /usr/share/doc/libgcrypt-1.12.2/html &&
install -v -m644 doc/gcrypt.html/* \
                    /usr/share/doc/libgcrypt-1.12.2/html &&
install -v -m644 doc/gcrypt_nochunks.md \
                    /usr/share/doc/libgcrypt-1.12.2      &&
install -v -m644 doc/gcrypt.{txt,texi} \
                    /usr/share/doc/libgcrypt-1.12.2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--with-capabilities`{.option}: This option enables libcap2 support. Note that this breaks [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref}
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dumpsexp, hmac256, and mpicalc]{.segbody}
:::

::: seg
**Installed Library:** [libgcrypt.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libgcrypt-1.12.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------
  []{#dumpsexp}[[**dumpsexp**]{.command}]{.term}         is a debug tool for S-expressions
  []{#hmac256}[[**hmac256**]{.command}]{.term}           is a standalone HMAC-SHA-256 implementation used to compute an HMAC-SHA-256 authentication code
  []{#mpicalc}[[**mpicalc**]{.command}]{.term}           is a RPN (Reverse Polish Notation) calculator
  []{#libgcrypt-lib}[`libgcrypt.so`{.filename}]{.term}   contains the cryptographic API functions
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libdisplay-info.md "libdisplay-info-0.3.0"){accesskey="p"}

    libdisplay-info-0.3.0

-   [Next](libgpg-error.md "libgpg-error-1.61"){accesskey="n"}

    libgpg-error-1.61

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
