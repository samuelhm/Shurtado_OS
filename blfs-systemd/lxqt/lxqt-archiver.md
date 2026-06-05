::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lximage-qt.md "lximage-qt-2.4.0"){accesskey="p"}

    lximage-qt-2.4.0

-   [Next](lxqt-notificationd.md "lxqt-notificationd-2.4.0"){accesskey="n"}

    lxqt-notificationd-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-archiver}lxqt-archiver-1.4.0 {#lxqt-archiver-1.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-archiver {#introduction-to-lxqt-archiver .sect2}

The [lxqt-archiver]{.application} package is a simple and lightweight desktop-agnostic Qt file archiver.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-archiver/releases/download/1.4.0/lxqt-archiver-1.4.0.tar.xz](https://github.com/lxqt/lxqt-archiver/releases/download/1.4.0/lxqt-archiver-1.4.0.tar.xz){.ulink}

-   Download MD5 sum: 8be174a519f9fe5512a4809671b040ce

-   Download size: 204 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.3 SBU
:::

### lxqt-archiver Dependencies

#### Required

[libfm-qt-2.4.0](libfm-qt.md "libfm-qt-2.4.0"){.xref}, [liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, and [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-archiver {#installation-of-lxqt-archiver .sect2}

Install [lxqt-archiver]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      ..                           &&
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
**Installed Programs:** [lxqt-archiver]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt-archiver]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- -----------------------------
  []{#lxqt-archiver-prog}[[**lxqt-archiver**]{.command}]{.term}   is a Qt-based file archiver
  --------------------------------------------------------------- -----------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lximage-qt.md "lximage-qt-2.4.0"){accesskey="p"}

    lximage-qt-2.4.0

-   [Next](lxqt-notificationd.md "lxqt-notificationd-2.4.0"){accesskey="n"}

    lxqt-notificationd-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
