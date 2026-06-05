::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](joe.md "JOE-4.6"){accesskey="p"}

    JOE-4.6

-   [Next](mousepad.md "mousepad-0.7.0"){accesskey="n"}

    mousepad-0.7.0

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kate}kate-26.04.1 {#kate-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Kate {#introduction-to-kate .sect2}

The [Kate]{.application} package contains an advanced KDE Frameworks-based graphical text editor.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/kate-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/kate-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 98d611f29f346f37dd843bb44899c22b

-   Download size: 8.2 MB

-   Estimated disk space required: 554 MB

-   Estimated build time: 0.9 SBU (using parallelism=4)
:::

### Kate Dependencies

#### Required

[KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Kate {#installation-of-kate .sect2}

Install [Kate]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX  \
      -D CMAKE_BUILD_TYPE=Release          \
      -D BUILD_TESTING=OFF                 \
      -W no-dev .. &&
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
**Installed Programs:** [kate and kwrite]{.segbody}
:::

::: seg
**Installed Libraries:** [Several plugins under \$KF6_PREFIX/lib/plugins]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/lib/plugins/ktexteditor, \$KF6_PREFIX/lib/plugins/plasma/dataengine, \$KF6_PREFIX/share/doc/HTML/\*/{kate,katepart,kwrite}, \$KF6_PREFIX/share/{kateproject,katexmltools}, and \$KF6_PREFIX/share/plasma/plasmoids/org.kde.plasma.katesessions]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ------------------------------------
  []{#kate-prog}[[**kate**]{.command}]{.term}   is an advanced text editor for KDE
  []{#kwrite}[[**kwrite**]{.command}]{.term}    is a minimal text editor for KDE
  --------------------------------------------- ------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](joe.md "JOE-4.6"){accesskey="p"}

    JOE-4.6

-   [Next](mousepad.md "mousepad-0.7.0"){accesskey="n"}

    mousepad-0.7.0

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
