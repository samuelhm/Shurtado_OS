::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](konsole.md "Konsole-26.04.1"){accesskey="p"}

    Konsole-26.04.1

-   [Next](libkexiv2.md "libkexiv2-26.04.1"){accesskey="n"}

    libkexiv2-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#konversation}konversation-26.04.1 {#konversation-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to konversation {#introduction-to-konversation .sect2}

The [konversation]{.application} package is a KDE Frameworks-based IRC client.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/konversation-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/konversation-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 91e055f3cb0b05c7b808caf382b77c47

-   Download size: 4.3 MB

-   Estimated disk space required: 73 MB

-   Estimated build time: 0.8 SBU (using parallelism=4)
:::

### konversation Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}
:::::

::: {.installation lang="en"}
## Installation of konversation {#installation-of-konversation .sect2}

Install [konversation]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
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
**Installed Programs:** [konversation]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/doc/HTML/\*/konversation, and \$KF6_PREFIX/share/konversation]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------- ------------------
  []{#konversation-prog}[[**konversation**]{.command}]{.term}   is an IRC client
  ------------------------------------------------------------- ------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](konsole.md "Konsole-26.04.1"){accesskey="p"}

    Konsole-26.04.1

-   [Next](libkexiv2.md "libkexiv2-26.04.1"){accesskey="n"}

    libkexiv2-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
