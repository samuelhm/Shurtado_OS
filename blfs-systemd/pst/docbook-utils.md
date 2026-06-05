::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](docbook-dsssl.md "docbook-dsssl-1.79"){accesskey="p"}

    docbook-dsssl-1.79

-   [Next](xml.md "Extensible Markup Language (XML)"){accesskey="n"}

    Extensible Markup Language (XML)

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#docbook-utils}DocBook-utils-0.6.14 {#docbook-utils-0.6.14 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to DocBook-utils {#introduction-to-docbook-utils .sect2}

The [DocBook-utils]{.application} package is a collection of utility scripts used to convert and analyze SGML documents in general, and DocBook files in particular. The scripts are used to convert from DocBook or other SGML formats into [“[classical]{.quote}”]{.quote} file formats like HTML, man, info, RTF and many more. There's also a utility to compare two SGML files and only display the differences in markup. This is useful for comparing documents prepared for different languages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz](https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz){.ulink}

-   Download MD5 sum: 6b41b18c365c01f225bc417cf632d81c

-   Download size: 124 KB

-   Estimated disk space required: 1.44 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/docbook-utils-0.6.14-grep_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/docbook-utils-0.6.14-grep_fix-1.patch){.ulink}
:::

### DocBook-utils Dependencies

#### Required

[OpenJade-1.3.2](openjade.md "OpenJade-1.3.2"){.xref}, [docbook-dsssl-1.79](docbook-dsssl.md "docbook-dsssl-1.79"){.xref}, and [docbook-3.1-dtd](docbook-3.1-dtd.md "docbook-3.1-dtd"){.xref}

#### Recommended (Runtime Dependencies Only)

[SGMLSpm-1.1](../general/perl-modules.md#perl-sgmlspm "SGMLSpm-1.1"){.xref} (for conversion to man and texinfo), and [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} or [Links-2.30](../basicnet/links.md "Links-2.30"){.xref} or [W3m](https://w3m.sourceforge.net/){.ulink} (for conversion to ASCII text)
::::::

:::: {.installation lang="en"}
## Installation of DocBook-utils {#installation-of-docbook-utils .sect2}

Install [DocBook-utils]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../docbook-utils-0.6.14-grep_fix-1.patch &&
sed -i 's:/html::' doc/HTML/Makefile.in                &&

./configure --prefix=/usr --mandir=/usr/share/man      &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc install
```

Many packages use an alternate name for the [DocBook-utils]{.application} scripts. If you wish to create these alternate names, use the following command as the `root`{.systemitem} user:

``` root
for doctype in html ps dvi man pdf rtf tex texi txt
do
    ln -svf docbook2$doctype /usr/bin/db2$doctype
done
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [**jw**]{.command} script uses the [**which**]{.command} command to locate required utilities. You must install [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref} before attempting to use any of the [DocBook-utils]{.application} programs.
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**patch -Np1 -i ../docbook-utils-0.6.14-grep_fix-1.patch**]{.command}: This patch corrects the syntax in the jw (Jade Wrapper) script which is at the heart of much db2\* processing, so that the current version of [grep]{.application} will not reject it.

[**sed -i 's:/html::' doc/HTML/Makefile.in**]{.command}: This command changes the installation directory of the HTML documents.

*`docdir=/usr/share/doc`*: This option is placed on the [**make install**]{.command} line because it is not recognized by [**configure**]{.command}.
:::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Programs:** [docbook2dvi, docbook2html, docbook2man, docbook2pdf, docbook2ps, docbook2rtf, docbook2tex, docbook2texi, docbook2txt, jw, and sgmldiff]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/docbook-utils-0.6.14 and /usr/share/sgml/docbook/utils-0.6.14]{.segbody}
:::

::: seg
**Installed Symlinks:** [db2dvi, db2html, db2man, db2pdf, db2ps, db2rtf, db2tex, db2texi, and db2txt]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#docbook2}[[**docbook2\***]{.command}]{.term}   are simple one-line wrapper scripts to [**jw**]{.command}. They are provided as easy-to-remember names used to convert DocBook or other SGML files to the respective format
  []{#db2}[[**db2\***]{.command}]{.term}             are symlinks pointing at the respectively named [**docbook2\***]{.command} commands, created to satisfy some program's use of these names
  []{#jw}[[**jw**]{.command}]{.term}                 is a script used to convert DocBook or other SGML files to various output formats. It hides most of [OpenJade]{.application}'s complexity and adds comfortable features
  []{#sgmldiff}[[**sgmldiff**]{.command}]{.term}     is used to compare two SGML files and only return the differences in the markup. This is especially useful to compare files that should be identical except for language differences in the content
  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::

::: navfooter
-   [Prev](docbook-dsssl.md "docbook-dsssl-1.79"){accesskey="p"}

    docbook-dsssl-1.79

-   [Next](xml.md "Extensible Markup Language (XML)"){accesskey="n"}

    Extensible Markup Language (XML)

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
