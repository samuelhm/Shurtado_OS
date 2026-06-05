::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnl.md "libnl-3.12.0"){accesskey="p"}

    libnl-3.12.0

-   [Next](libnsl.md "libnsl-2.0.1"){accesskey="n"}

    libnsl-2.0.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libnma}libnma-1.10.6 {#libnma-1.10.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libnma {#introduction-to-libnma .sect2}

The [libnma]{.application} package contains an implementation of the [NetworkManager]{.application} GUI functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libnma/1.10/libnma-1.10.6.tar.xz](https://download.gnome.org/sources/libnma/1.10/libnma-1.10.6.tar.xz){.ulink}

-   Download MD5 sum: 71c7ce674fea1fae8f1368a7fcb6ff43

-   Download size: 688 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4; with test)
:::

### libnma Dependencies

#### Required

[Gcr-3.41.2](../gnome/gcr.md "Gcr-3.41.2"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, and [NetworkManager-1.56.1](networkmanager.md "NetworkManager-1.56.1"){.xref}

#### Recommended

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[mobile-broadband-provider-info](https://gitlab.gnome.org/GNOME/mobile-broadband-provider-info){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libnma {#installation-of-libnma .sect2}

Install [libnma]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk_doc=false    \
      -D libnma_gtk4=true \
      -D mobile_broadband_provider_info=false &&
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

*`-D gtk_doc=false`*: This parameter disables generating API documentation using gtk-doc. If you have [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to generate the API documentation, omit this switch.

*`-D libnma_gtk4=true`*: This parameter builds the GTK-4 version of libnma. It is needed by [gnome-control-center-50.2](../gnome/gnome-control-center.md "gnome-control-center-50.2"){.xref}.

*`-D mobile_broadband_provider_info=false`*: This switch disables WWAN support because mobile-broadband-provider-info is not in BLFS. Omit this switch if you have it installed and wish to enable WWAN support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libnma.so and libnma-gtk4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libnma]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------
  []{#libnma-lib}[`libnma.so`{.filename}]{.term}         contains the [NetworkManager]{.application} GUI library
  []{#libnma-gtk4}[`libnma-gtk4.so`{.filename}]{.term}   contains the GTK-4 version of the [NetworkManager]{.application} GUI library
  ------------------------------------------------------ ------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libnl.md "libnl-3.12.0"){accesskey="p"}

    libnl-3.12.0

-   [Next](libnsl.md "libnsl-2.0.1"){accesskey="n"}

    libnsl-2.0.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
