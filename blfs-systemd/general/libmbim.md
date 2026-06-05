::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](liblinear.md "liblinear-250"){accesskey="p"}

    liblinear-250

-   [Next](libnvme.md "libnvme-1.16.1"){accesskey="n"}

    libnvme-1.16.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmbim}libmbim-1.34.0 {#libmbim-1.34.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libmbim {#introduction-to-libmbim .sect2}

The [libmbim]{.application} package contains a GLib-based library for talking to WWAN modems and devices which speak the Mobile Interface Broadband Model (MBIM) protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/mobile-broadband/libmbim/-/archive/1.34.0/libmbim-1.34.0.tar.gz](https://gitlab.freedesktop.org/mobile-broadband/libmbim/-/archive/1.34.0/libmbim-1.34.0.tar.gz){.ulink}

-   Download MD5 sum: e5c2b38c6a79a047b93cb0c9510bd91f

-   Download size: 292 KB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### libmbim Dependencies

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [bash-completion](https://github.com/scop/bash-completion){.ulink}, and [help2man](https://ftpmirror.gnu.org/gnu/help2man/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libmbim {#installation-of-libmbim .sect2}

Install [libmbim]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
      -D man=false             &&

ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bash_completion=false`*: Use this option if the external [bash-completion](https://github.com/scop/bash-completion){.ulink} package is not installed.

*`-D man=false`*: Use this option if the external [help2man](https://ftpmirror.gnu.org/gnu/help2man/){.ulink} package is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mbimcli and mbim-network]{.segbody}
:::

::: seg
**Installed Libraries:** [libmbim-glib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libmbim-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  []{#mbimcli}[[**mbimcli**]{.command}]{.term}             is a utility used to control MBIM devices
  []{#mbim-network}[[**mbim-network**]{.command}]{.term}   is a utility used for simple network management of MBIM devices
  []{#libmbim-glib}[`libmbim-glib.so`{.filename}]{.term}   contains API functions for talking to WWAN modems and devices which speak the Mobile Interface Broadband Model (MBIM) protocol
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](liblinear.md "liblinear-250"){accesskey="p"}

    liblinear-250

-   [Next](libnvme.md "libnvme-1.16.1"){accesskey="n"}

    libnvme-1.16.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
