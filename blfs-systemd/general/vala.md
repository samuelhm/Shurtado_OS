::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](unifdef.md "unifdef-2.12"){accesskey="p"}

    unifdef-2.12

-   [Next](valgrind.md "Valgrind-3.27.1"){accesskey="n"}

    Valgrind-3.27.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vala}Vala-0.56.19 {#vala-0.56.19 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Vala {#introduction-to-vala .sect2}

[Vala]{.application} is a new programming language that aims to bring modern programming language features to [GNOME]{.application} developers without imposing any additional runtime requirements and without using a different ABI compared to applications and libraries written in C.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/vala/0.56/vala-0.56.19.tar.xz](https://download.gnome.org/sources/vala/0.56/vala-0.56.19.tar.xz){.ulink}

-   Download MD5 sum: a2dc825de503fad703584cfb0ed50302

-   Download size: 3.8 MB

-   Estimated disk space required: 160 MB (add 16 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.9 SBU for tests; both using parallelism=4)
:::

### Vala Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for the tests)

#### Recommended

[Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (Required for valadoc)

#### Optional

[dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref} (Required for the tests), [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (Required for generating the documentation), [help2man](https://ftpmirror.gnu.org/gnu/help2man/){.ulink}, [jing](https://github.com/relaxng/jing-trang){.ulink}, and [weasyprint](https://weasyprint.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Vala {#installation-of-vala .sect2}

Install [Vala]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--disable-valadoc`{.option}: This option is required if [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [vala, vala-0.56, valac, valadoc, vala-gen-introspect, and vapigen (symlinks); valac-0.56, valadoc-0.56, vala-gen-introspect-0.56, and vapigen-0.56]{.segbody}
:::

::: seg
**Installed Library:** [libvala-0.56.so and libvaladoc-0.56.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/vala-0.56, /usr/include/valadoc-0.56, /usr/lib/vala-0.56, /usr/lib/valadoc-0.56, /usr/share/vala, /usr/share/vala-0.56, /usr/share/valadoc-0.56, and /usr/share/devhelp/books/vala-0.56]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  []{#valac}[[**valac**]{.command}]{.term}                               is a compiler that translates [Vala]{.application} source code into C source and header files
  []{#valadoc}[[**valadoc**]{.command}]{.term}                           is a documentation generator for generating API documentation from [Vala]{.application} source code based on libvala
  []{#vala-gen-introspect}[[**vala-gen-introspect**]{.command}]{.term}   generates a GI file for GObject and [GLib]{.application} based packages
  []{#vapigen}[[**vapigen**]{.command}]{.term}                           is a utility which generates [Vala]{.application} API (VAPI) files from GI files
  []{#libvala}[`libvala-0.56.so`{.filename}]{.term}                      contains the [Vala]{.application} API functions
  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](unifdef.md "unifdef-2.12"){accesskey="p"}

    unifdef-2.12

-   [Next](valgrind.md "Valgrind-3.27.1"){accesskey="n"}

    Valgrind-3.27.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
