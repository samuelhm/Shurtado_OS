::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gavl.md "gavl-1.4.0"){accesskey="p"}

    gavl-1.4.0

-   [Next](gst10-plugins-base.md "gst-plugins-base-1.28.3"){accesskey="n"}

    gst-plugins-base-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gstreamer10}gstreamer-1.28.3 {#gstreamer-1.28.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gstreamer {#introduction-to-gstreamer .sect2}

[gstreamer]{.application} is a streaming media framework that enables applications to share a common set of plugins for tasks such as video encoding and decoding, audio encoding and decoding, audio and video filters, audio visualisation, web streaming and anything else that streams in real-time or otherwise. This package only provides base functionality and libraries. You may need at least [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref} and one of Good, Bad, Ugly or Libav plugins.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: a2cb777530dce369316a71bcab116907

-   Download size: 1.9 MB

-   Estimated disk space required: 73 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; with tests)
:::

### gstreamer Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME)

#### Optional

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for examples), [gsl-2.8](../general/gsl.md "gsl-2.8"){.xref} (used by one test if installed), [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [rustc-1.96.0](../general/rust.md "Rustc-1.96.0"){.xref} (for IEEE 1588:2008 PTP clock support), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [bash-completion](https://github.com/scop/bash-completion/){.ulink}, [hotdoc](https://pypi.org/project/hotdoc/){.ulink}, and [libdw](https://sourceware.org/elfutils/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of gstreamer {#installation-of-gstreamer .sect2}

Install [gstreamer]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gst_debug=false  &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you are reinstalling [gstreamer]{.application} from a previous version, it is best if you remove the prior version, including plugins, before installing the new version. If there is a mixture of versions installed, using processes may hang or not work properly. As the `root`{.systemitem} user:

``` userinput
rm -rf /usr/bin/gst-* /usr/{lib,libexec}/gstreamer-1.0
```
:::

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gst-inspect-1.0, gst-launch-1.0, gst-stats-1.0, gst-tester-1.0, and gst-typefind-1.0]{.segbody}
:::

::: seg
**Installed Libraries:** [libgstbase-1.0.so, libgstcheck-1.0.so, libgstcontroller-1.0.so, libgstnet-1.0.so, and libgstreamer-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,libexec,share}/gstreamer-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gst-inspect-1.0}[[**gst-inspect-1.0**]{.command}]{.term}             is a tool that prints out information on available [gstreamer]{.application} plugins, information about a particular plugin, or information about a particular element
  []{#gst-launch-1.0}[[**gst-launch-1.0**]{.command}]{.term}               is a tool that builds and runs basic [gstreamer]{.application} pipelines
  []{#gst-stats-1.0}[[**gst-stats-1.0**]{.command}]{.term}                 is a tool used to gather statistics about [gstreamer]{.application} operations
  []{#gst-tester-1.0}[[**gst-tester-1.0**]{.command}]{.term}               runs a test plan in TAP compatible format while integrating with the meson test harness
  []{#gst-typefind-1.0}[[**gst-typefind-1.0**]{.command}]{.term}           uses the [gstreamer]{.application} type finding system to determine the relevant [gstreamer]{.application} plugin to parse or decode files, and the corresponding MIME type
  []{#libgstbase-1.0}[`libgstbase-1.0.so`{.filename}]{.term}               provides some base classes to be extended by elements and utility classes that are most useful for plugin developers
  []{#libgstcheck-1.0}[`libgstcheck-1.0.so`{.filename}]{.term}             provides functionality for writing unit tests that use the check framework
  []{#libgstcontroller-1.0}[`libgstcontroller-1.0.so`{.filename}]{.term}   provides functionality to animate element properties over time
  []{#libgstnet-1.0}[`libgstnet-1.0.so`{.filename}]{.term}                 provides network elements and objects
  []{#libgstreamer-1.0}[`libgstreamer-1.0.so`{.filename}]{.term}           provides all of the core [gstreamer]{.application} services, including initialization, plugin management and types, as well as the object hierarchy that defines elements and bins, along with some more specialized elements
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gavl.md "gavl-1.4.0"){accesskey="p"}

    gavl-1.4.0

-   [Next](gst10-plugins-base.md "gst-plugins-base-1.28.3"){accesskey="n"}

    gst-plugins-base-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
