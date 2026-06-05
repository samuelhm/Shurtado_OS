::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](ps.md "PostScript"){accesskey="p"}

    PostScript

-   [Next](epdfview.md "ePDFView-gtk3-20200814"){accesskey="n"}

    ePDFView-gtk3-20200814

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#enscript}Enscript-1.6.6 {#enscript-1.6.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Enscript {#introduction-to-enscript .sect2}

[Enscript]{.application} converts ASCII text files to PostScript, HTML, RTF, ANSI and overstrikes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

[Enscript]{.application} cannot convert UTF-8 encoded text to PostScript. The issue is discussed in detail in the [Needed Encoding Not a Valid Option](../introduction/locale-issues.md#locale-not-valid-option "The Needed Encoding is Not a Valid Option in the Program"){.xref} section of the [Locale Related Issues](../introduction/locale-issues.md "Locale Related Issues"){.xref} page. The solution is to use [paps-0.8.0](paps.md "paps-0.8.0"){.xref}, instead of [Enscript]{.application}, for converting UTF-8 encoded text to PostScript.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/enscript/enscript-1.6.6.tar.gz](https://ftpmirror.gnu.org/enscript/enscript-1.6.6.tar.gz){.ulink}

-   Download MD5 sum: 3acc242b829adacabcaf28533f049afd

-   Download size: 1.3 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
:::

### Enscript Dependencies

#### Optional

[texlive-20250308](texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](tl-installer.md "install-tl-unx"){.xref})
::::::

::: {.installation lang="en"}
## Installation of Enscript {#installation-of-enscript .sect2}

Install [Enscript]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr              \
            --sysconfdir=/etc/enscript \
            --localstatedir=/var       \
            --with-media=Letter        &&
make CC="gcc -std=gnu17"               &&

pushd docs &&
  makeinfo --plaintext -o enscript.txt enscript.texi &&
popd
```

If you have [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} installed, you can create Postscript and PDF documentation by issuing (does not support parallel make):

``` userinput
make -j1 -C docs ps pdf
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755 -d /usr/share/doc/enscript-1.6.6 &&
install -v -m644    README* *.txt docs/*.txt \
                    /usr/share/doc/enscript-1.6.6
```

If you built Postscript and PDF documentation, install it using the following command as the `root`{.systemitem} user:

``` root
install -v -m644 docs/*.{dvi,pdf,ps} \
                 /usr/share/doc/enscript-1.6.6
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc/enscript`*: This switch puts configuration data in `/etc/enscript`{.filename} instead of `/usr/etc`{.filename}.

*`--localstatedir=/var`*: This switch sets the directory for runtime data to `/var`{.filename} instead of `/usr/var`{.filename}.

*`--with-media=Letter`*: This switch sets the medium format to letter size instead of the A4 default.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [diffpp, enscript, mkafmmap, over, sliceprint, and states]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/enscript, /usr/share/doc/enscript-1.6.6, and /usr/share/enscript]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#diffpp}[[**diffpp**]{.command}]{.term}            converts [**diff**]{.command} output files to a format suitable to be printed with [**enscript**]{.command}
  []{#enscript-prog}[[**enscript**]{.command}]{.term}   is a filter, used primarily by printing scripts, that converts ASCII text files to PostScript, HTML, RTF, ANSI and overstrikes
  []{#mkafmmap}[[**mkafmmap**]{.command}]{.term}        creates a font map from a given file
  []{#over}[[**over**]{.command}]{.term}                is a script which calls [**enscript**]{.command} and passes the correct parameters to create overstriked fonts
  []{#sliceprint}[[**sliceprint**]{.command}]{.term}    slices documents with long lines
  []{#states}[[**states**]{.command}]{.term}            is an [**awk**]{.command}-like text processing tool with some state machine extensions. It is designed for program source code highlighting and for similar tasks where state information helps input processing
  ----------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](ps.md "PostScript"){accesskey="p"}

    PostScript

-   [Next](epdfview.md "ePDFView-gtk3-20200814"){accesskey="n"}

    ePDFView-gtk3-20200814

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
