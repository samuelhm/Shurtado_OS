::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){accesskey="p"}

    gnome-online-accounts-3.58.1

-   [Next](libgtop.md "libgtop-2.41.3"){accesskey="n"}

    libgtop-2.41.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgee}libgee-0.20.8 {#libgee-0.20.8 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgee {#introduction-to-libgee .sect2}

The [libgee]{.application} package is a collection library providing GObject based interfaces and classes for commonly used data structures.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgee/0.20/libgee-0.20.8.tar.xz](https://download.gnome.org/sources/libgee/0.20/libgee-0.20.8.tar.xz){.ulink}

-   Download MD5 sum: e8e37df1c7a93aa5ba08be12ae7e7cad

-   Download size: 676 KB

-   Estimated disk space required: 32 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### libgee Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended) and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[LCOV](https://github.com/linux-test-project/lcov){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libgee {#installation-of-libgee .sect2}

Install [libgee]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --enable-vala &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgee-0.8.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/gee-0.8]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  []{#libgee-lib}[`libgee-0.8.so`{.filename}]{.term}   contains the [libgee]{.application} API functions
  ---------------------------------------------------- ---------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){accesskey="p"}

    gnome-online-accounts-3.58.1

-   [Next](libgtop.md "libgtop-2.41.3"){accesskey="n"}

    libgtop-2.41.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
