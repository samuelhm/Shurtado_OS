::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](utfcpp.md "utfcpp-4.1.1"){accesskey="p"}

    utfcpp-4.1.1

-   [Next](wayland-protocols.md "Wayland-Protocols-1.48"){accesskey="n"}

    Wayland-Protocols-1.48

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wayland}Wayland-1.25.0 {#wayland-1.25.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Wayland {#introduction-to-wayland .sect2}

[Wayland]{.application} is a project to define a protocol for a compositor to talk to its clients as well as a library implementation of the protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.25.0/downloads/wayland-1.25.0.tar.xz](https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.25.0/downloads/wayland-1.25.0.tar.xz){.ulink}

-   Download MD5 sum: bdc1ad361f85cc41b85be99a3bf3d002

-   Download size: 596 KB

-   Estimated disk space required: 9.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Wayland Dependencies

#### Required

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} and [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (to build the API documentation) and [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (to build the manual pages)
:::::

::: {.installation lang="en"}
## Installation of Wayland {#installation-of-wayland .sect2}

Install [Wayland]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D documentation=false &&
ninja
```

To test the results, issue: [**env -u XDG_RUNTIME_DIR ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D documentation=false`*: This switch is used to disable building of the API documentation. Remove it if you have installed optional dependencies.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [wayland-scanner]{.segbody}
:::

::: seg
**Installed Libraries:** [libwayland-client.so, libwayland-cursor.so, libwayland-egl.so, and libwayland-server.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/wayland]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------
  []{#wayland-scanner}[[**wayland-scanner**]{.command}]{.term}       is a tool to generate proxy methods in wayland-client-protocol.h and wayland-server-protocol.h
  []{#libwayland-client}[`libwayland-client.so`{.filename}]{.term}   contains API functions for writing [Wayland]{.application} applications
  []{#libwayland-cursor}[`libwayland-cursor.so`{.filename}]{.term}   contains API functions for managing cursors in [Wayland]{.application} applications
  []{#libwayland-egl}[`libwayland-egl.so`{.filename}]{.term}         contains API functions for handling OpenGL calls in [Wayland]{.application} applications
  []{#libwayland-server}[`libwayland-server.so`{.filename}]{.term}   contains API functions for writing [Wayland]{.application} compositors
  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](utfcpp.md "utfcpp-4.1.1"){accesskey="p"}

    utfcpp-4.1.1

-   [Next](wayland-protocols.md "Wayland-Protocols-1.48"){accesskey="n"}

    Wayland-Protocols-1.48

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
