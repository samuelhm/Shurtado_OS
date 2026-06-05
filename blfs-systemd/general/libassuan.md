::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libarchive.md "libarchive-3.8.7"){accesskey="p"}

    libarchive-3.8.7

-   [Next](libatasmart.md "libatasmart-0.19"){accesskey="n"}

    libatasmart-0.19

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libassuan}libassuan-3.0.2 {#libassuan-3.0.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libassuan {#introduction-to-libassuan .sect2}

The [libassuan]{.application} package contains an inter process communication library used by some of the other [GnuPG]{.application} related packages. [libassuan]{.application}'s primary use is to allow a client to interact with a non-persistent server. [libassuan]{.application} is not, however, limited to use with [GnuPG]{.application} servers and clients. It was designed to be flexible enough to meet the demands of many transaction based environments with non-persistent servers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-3.0.2.tar.bz2](https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-3.0.2.tar.bz2){.ulink}

-   Download MD5 sum: c6f1bf4bd2aaa79cd1635dcc070ba51a

-   Download size: 580 KB

-   Estimated disk space required: 6.5 MB (with tests, add 3.4 MB for pdf documentation)

-   Estimated build time: 0.1 SBU (with tests and html documentation)
:::

### libassuan Dependencies

#### Required

[libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})
:::::

::: {.installation lang="en"}
## Installation of libassuan {#installation-of-libassuan .sect2}

Install [libassuan]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/assuan_nochunks.md doc/assuan.texi &&
makeinfo --plaintext       -o doc/assuan.txt           doc/assuan.texi
```

The above commands build the documentation in html and plaintext formats. If you wish to build alternate formats of the documentation, you must have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed and issue the following commands:

``` userinput
make -C doc pdf ps
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -dm755   /usr/share/doc/libassuan-3.0.2/html &&
install -v -m644 doc/assuan.html/* \
                    /usr/share/doc/libassuan-3.0.2/html &&
install -v -m644 doc/assuan_nochunks.md \
                    /usr/share/doc/libassuan-3.0.2      &&
install -v -m644 doc/assuan.{txt,texi} \
                    /usr/share/doc/libassuan-3.0.2
```

If you built alternate formats of the documentation, install them by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m644  doc/assuan.{pdf,ps,dvi} \
                  /usr/share/doc/libassuan-3.0.2
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libassuan.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libassuan-3.0.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------
  []{#libassuan-lib}[`libassuan.so`{.filename}]{.term}   is an inter process communication library which implements the Assuan protocol
  ------------------------------------------------------ --------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libarchive.md "libarchive-3.8.7"){accesskey="p"}

    libarchive-3.8.7

-   [Next](libatasmart.md "libatasmart-0.19"){accesskey="n"}

    libatasmart-0.19

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
