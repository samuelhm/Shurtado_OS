::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](colord.md "Colord-1.4.8"){accesskey="p"}

    Colord-1.4.8

-   [Next](cups-pk-helper.md "cups-pk-helper-0.2.7"){accesskey="n"}

    cups-pk-helper-0.2.7

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cpio}cpio-2.15 {#cpio-2.15 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to cpio {#introduction-to-cpio .sect2}

The [cpio]{.application} package contains tools for archiving.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/cpio/cpio-2.15.tar.bz2](https://ftpmirror.gnu.org/cpio/cpio-2.15.tar.bz2){.ulink}

-   Download MD5 sum: 3394d444ca1905ea56c94b628b706a0b

-   Download size: 1.6 MB

-   Estimated disk space required: 21 MB (with tests and docs)

-   Estimated build time: 0.3 SBU (with tests and docs)
:::

### CPIO Dependencies

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})
:::::

::: {.installation lang="en"}
## Installation of cpio {#installation-of-cpio .sect2}

Add a workaround for an issue shown by gcc15:

``` userinput
sed -e "/^extern int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
    -i src/extern.h
sed -e "/^int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
    -i src/global.c
```

Install [cpio]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr \
            --enable-mt   \
            --with-rmt=/usr/libexec/rmt &&
make &&
makeinfo --html            -o doc/html      doc/cpio.texi &&
makeinfo --html --no-split -o doc/cpio.md doc/cpio.texi &&
makeinfo --plaintext       -o doc/cpio.txt  doc/cpio.texi
```

If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed and wish to create PDF or Postscript documentation, issue one or both of the following commands:

``` userinput
make -C doc pdf &&
make -C doc ps
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755 -d /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/cpio.{html,txt} \
                    /usr/share/doc/cpio-2.15
```

If you built PDF or Postscript documentation, install it by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -m644 doc/cpio.{pdf,ps,dvi} \
                 /usr/share/doc/cpio-2.15
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-mt`*: This parameter forces the building and installation of the [**mt**]{.command} program.

*`--with-rmt=/usr/libexec/rmt`*: This parameter inhibits building the [**rmt**]{.command} program as it is already installed by the [Tar]{.application} package in LFS.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cpio and mt]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/cpio-2.15]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- -----------------------------------------
  []{#cpio-prog}[[**cpio**]{.command}]{.term}   copies files to and from archives
  []{#mt}[[**mt**]{.command}]{.term}            controls magnetic tape drive operations
  --------------------------------------------- -----------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](colord.md "Colord-1.4.8"){accesskey="p"}

    Colord-1.4.8

-   [Next](cups-pk-helper.md "cups-pk-helper-0.2.7"){accesskey="n"}

    cups-pk-helper-0.2.7

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
