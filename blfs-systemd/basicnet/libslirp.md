::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libpsl.md "libpsl-0.21.5"){accesskey="p"}

    libpsl-0.21.5

-   [Next](libsoup3.md "libsoup-3.6.6"){accesskey="n"}

    libsoup-3.6.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libslirp}libslirp-4.9.3 {#libslirp-4.9.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libslirp {#introduction-to-libslirp .sect2}

[Libslirp]{.application} is a user-mode networking library used by virtual machines, containers or various tools.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v4.9.3/libslirp-v4.9.3.tar.bz2](https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v4.9.3/libslirp-v4.9.3.tar.bz2){.ulink}

-   Download MD5 sum: bf2162cee75eef0faf0eb3fe60ec0da3

-   Download size: 132 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### libslirp Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Libslirp {#installation-of-libslirp .sect2}

Install [libslirp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&

ninja
```

To test the results, issue: [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libslirp.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/slirp]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------
  []{#libslirp-lib}[`libclirp.so`{.filename}]{.term}   contains user-mode TCP-IP emulation functions
  ---------------------------------------------------- -----------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libpsl.md "libpsl-0.21.5"){accesskey="p"}

    libpsl-0.21.5

-   [Next](libsoup3.md "libsoup-3.6.6"){accesskey="n"}

    libsoup-3.6.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
