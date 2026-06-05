::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](imagemagick.md "ImageMagick-7.1.2-13"){accesskey="p"}

    ImageMagick-7.1.2-13

-   [Next](iso-codes.md "ISO Codes-4.20.1"){accesskey="n"}

    ISO Codes-4.20.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#intltool}Intltool-0.51.0 {#intltool-0.51.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Intltool {#introduction-to-intltool .sect2}

The [Intltool]{.application} package provides an internationalization tool used for extracting translatable strings from source files, collecting the extracted strings with messages from traditional source files (`<source directory>/<package>/po`{.filename}) and merging the translations into `.xml`{.filename}, `.desktop`{.filename} and `.oaf`{.filename} files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz](http://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz){.ulink}

-   Download MD5 sum: 12e517cac2b57a0121cda351570f1e63

-   Download size: 159 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Intltool Dependencies

#### Required

[XML-Parser-2.59](perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Intltool {#installation-of-intltool .sect2}

First fix a warning that is caused by perl-5.22 and later:

``` userinput
sed -i 's:\\\${:\\\$\\{:' intltool-update.in
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The above regular expression looks unusual because of all the backslashes. What it does is add a backslash before the right brace character in the sequence '\\\${' resulting in '\\\$\\{'.
:::

Install [Intltool]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 -D doc/I18N-HOWTO -t /usr/share/doc/intltool-0.51.0
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [intltool-extract, intltool-merge, intltool-prepare, intltool-update, and intltoolize]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/intltool-0.51.0 and /usr/share/intltool]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------------------
  []{#intltoolize}[[**intltoolize**]{.command}]{.term}             prepares a package to use [intltool]{.application}.
  []{#intltool-extract}[[**intltool-extract**]{.command}]{.term}   generates header files that can be read by [**gettext**]{.command}.
  []{#intltool-merge}[[**intltool-merge**]{.command}]{.term}       merges translated strings into various file types.
  []{#intltool-prepare}[[**intltool-prepare**]{.command}]{.term}   updates pot files and merges them with translation files.
  []{#intltool-update}[[**intltool-update**]{.command}]{.term}     updates the `po`{.filename} template files and merges them with the translations.
  ---------------------------------------------------------------- -----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](imagemagick.md "ImageMagick-7.1.2-13"){accesskey="p"}

    ImageMagick-7.1.2-13

-   [Next](iso-codes.md "ISO Codes-4.20.1"){accesskey="n"}

    ISO Codes-4.20.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
