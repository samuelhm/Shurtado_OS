::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libqalculate.md "libqalculate-5.11.0"){accesskey="p"}

    libqalculate-5.11.0

-   [Next](libseccomp.md "libseccomp-2.6.0"){accesskey="n"}

    libseccomp-2.6.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libqmi}libqmi-1.38.0 {#libqmi-1.38.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libqmi {#introduction-to-libqmi .sect2}

The [libqmi]{.application} package contains a GLib-based library for talking to WWAN modems and devices which speak the Qualcomm MSM Interface (QMI) protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/mobile-broadband/libqmi/-/archive/1.38.0/libqmi-1.38.0.tar.gz](https://gitlab.freedesktop.org/mobile-broadband/libqmi/-/archive/1.38.0/libqmi-1.38.0.tar.gz){.ulink}

-   Download MD5 sum: 4ed2c13150611007f56f84b896449d46

-   Download size: 4.2 MB

-   Estimated disk space required: 75 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
:::

### libqmi Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended) and [libgudev-238](libgudev.md "libgudev-238"){.xref}

#### Recommended

[libmbim-1.34.0](libmbim.md "libmbim-1.34.0"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [help2man](https://ftpmirror.gnu.org/gnu/help2man/){.ulink}, and [libqrtr-glib](https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libqmi {#installation-of-libqmi .sect2}

Install [libqmi]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
      -D qrtr=false            \
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

*`-D qrtr=false`*: This switch disables support for the QRTR protocol which needs the external [libqrtr-glib](https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib){.ulink} package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [qmicli, qmi-firmware-update, and qmi-network]{.segbody}
:::

::: seg
**Installed Libraries:** [libqmi-glib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libqmi-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  []{#qmicli}[[**qmicli**]{.command}]{.term}                             is a utility used to control QMI devices
  []{#qmi-firmware-update}[[**qmi-firmware-update**]{.command}]{.term}   is a utility used to perform firmware updates on QMI devices
  []{#qmi-network}[[**qmi-network**]{.command}]{.term}                   is a utility used for simple network management of QMI devices
  []{#libqmi-glib}[`libqmi-glib.so`{.filename}]{.term}                   contains API functions for talking to WWAN modems and devices which speak the Qualcomm MSM Interface (QMI) protocol
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libqalculate.md "libqalculate-5.11.0"){accesskey="p"}

    libqalculate-5.11.0

-   [Next](libseccomp.md "libseccomp-2.6.0"){accesskey="n"}

    libseccomp-2.6.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
