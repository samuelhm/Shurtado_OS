::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](kquickimageeditor.md "kquickimageeditor-0.6.1"){accesskey="p"}

    kquickimageeditor-0.6.1

-   [Next](plasma-all.md "Building Plasma"){accesskey="n"}

    Building Plasma

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bolt}bolt-0.9.11 {#bolt-0.9.11 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to bolt {#introduction-to-bolt .sect2}

The [bolt]{.application} package is a system daemon to enable security levels for Thunderbolt.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/bolt/bolt/-/archive/0.9.11/bolt-0.9.11.tar.gz](https://gitlab.freedesktop.org/bolt/bolt/-/archive/0.9.11/bolt-0.9.11.tar.gz){.ulink}

-   Download MD5 sum: 6fade22d3875b3ff480e26058571b534

-   Download size: 252 KB

-   Estimated disk space required: 9.8 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### bolt Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}

#### Optional

[umockdev-0.19.7](../general/umockdev.md "Umockdev-0.19.7"){.xref} (for testing), and [asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} (for documentation)
:::::

::: {.installation lang="en"}
## Installation of bolt {#installation-of-bolt .sect2}

Install [bolt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. One test, test_journal_object, is known to fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [boltctl and boltd (in /usr/libexec)]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](kquickimageeditor.md "kquickimageeditor-0.6.1"){accesskey="p"}

    kquickimageeditor-0.6.1

-   [Next](plasma-all.md "Building Plasma"){accesskey="n"}

    Building Plasma

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
