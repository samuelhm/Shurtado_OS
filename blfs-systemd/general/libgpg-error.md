::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgcrypt.md "libgcrypt-1.12.2"){accesskey="p"}

    libgcrypt-1.12.2

-   [Next](libgsf.md "libgsf-1.14.58"){accesskey="n"}

    libgsf-1.14.58

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgpg-error}libgpg-error-1.61 {#libgpg-error-1.61 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgpg-error {#introduction-to-libgpg-error .sect2}

The [libgpg-error]{.application} package contains a library that defines common error values for all [GnuPG]{.application} components.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.61.tar.bz2](https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.61.tar.bz2){.ulink}

-   Download MD5 sum: c89a8c6825cb64c527d5c1c0fb36f245

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of libgpg-error {#installation-of-libgpg-error .sect2}

Install [libgpg-error]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 -D README /usr/share/doc/libgpg-error-1.61/README
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gpg-error, gpgrt-config, and yat2m]{.segbody}
:::

::: seg
**Installed Library:** [libgpg-error.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/common-lisp/source/gpg-error, /usr/share/libgpg-error, and /usr/share/doc/libgpg-error-1.61]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
  []{#gpg-error}[[**gpg-error**]{.command}]{.term}             is used to determine [libgpg-error]{.application} error codes
  []{#gpgrt-config}[[**gpgrt-config**]{.command}]{.term}       is a [**pkg-config**]{.command} style tool for querying the information about installed version of libgpg-error
  []{#yat2m}[[**yat2m**]{.command}]{.term}                     extracts man pages from a Texinfo source
  []{#libgpg-error-lib}[`libgpg-error.so`{.filename}]{.term}   contains the [libgpg-error]{.application} API functions
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libgcrypt.md "libgcrypt-1.12.2"){accesskey="p"}

    libgcrypt-1.12.2

-   [Next](libgsf.md "libgsf-1.14.58"){accesskey="n"}

    libgsf-1.14.58

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
