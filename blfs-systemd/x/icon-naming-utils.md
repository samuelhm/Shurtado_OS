::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){accesskey="p"}

    hicolor-icon-theme-0.18

-   [Next](lxde-icon-theme.md "lxde-icon-theme-0.5.1"){accesskey="n"}

    lxde-icon-theme-0.5.1

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#icon-naming-utils}icon-naming-utils-0.8.90 {#icon-naming-utils-0.8.90 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to icon-naming-utils {#introduction-to-icon-naming-utils .sect2}

The [icon-naming-utils]{.application} package contains a [Perl]{.application} script used for maintaining backwards compatibility with current desktop icon themes, while migrating to the names specified in the [Icon Naming Specification](https://specifications.freedesktop.org/icon-naming-spec/latest/){.ulink}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2](https://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2){.ulink}

-   Download MD5 sum: dd8108b56130b9eedc4042df634efa66

-   Download size: 57 KB

-   Estimated disk space required: 440 KB

-   Estimated build time: less than 0.1 SBU
:::

### icon-naming-utils Dependencies

#### Required

[XML-Simple-2.25](../general/perl-modules.md#perl-xml-simple "XML::Simple-2.25"){.xref}
:::::

::: {.installation lang="en"}
## Installation of icon-naming-utils {#installation-of-icon-naming-utils .sect2}

Install [icon-naming-utils]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [icon-name-mapping]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/dtds and /usr/share/icon-naming-utils]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#icon-name-mapping}[[**icon-name-mapping**]{.command}]{.term}   is a [Perl]{.application} script used for maintaining backwards compatibility with current desktop icon themes, while migrating to the names specified in the Icon Naming Specification
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){accesskey="p"}

    hicolor-icon-theme-0.18

-   [Next](lxde-icon-theme.md "lxde-icon-theme-0.5.1"){accesskey="n"}

    lxde-icon-theme-0.5.1

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
