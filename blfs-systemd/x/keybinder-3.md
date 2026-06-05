::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](kimageannotator.md "kImageAnnotator-0.7.2"){accesskey="p"}

    kImageAnnotator-0.7.2

-   [Next](libadwaita.md "libadwaita-1.9.1"){accesskey="n"}

    libadwaita-1.9.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#keybinder3}keybinder-3.0-0.3.2 {#keybinder-3.0-0.3.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to keybinder-3.0 {#introduction-to-keybinder-3.0 .sect2}

The [keybinder-3.0]{.application} package contains a utility library registering global [X]{.application} keyboard shortcuts for [GTK+-3]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/kupferlauncher/keybinder/releases/download/keybinder-3.0-v0.3.2/keybinder-3.0-0.3.2.tar.gz](https://github.com/kupferlauncher/keybinder/releases/download/keybinder-3.0-v0.3.2/keybinder-3.0-0.3.2.tar.gz){.ulink}

-   Download MD5 sum: 97260321fda721fce799174ea6ba10cf

-   Download size: 370 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### keybinder-3.0 Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of keybinder-3.0 {#installation-of-keybinder-3.0 .sect2}

Install [keybinder-3.0]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libkeybinder-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/keybinder-3.0 and /usr/share/gtk-doc/html/keybinder-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------------------------------
  []{#keybinder3-lib}[`libkeybinder-3.0.so`{.filename}]{.term}   is the library that registers global [X]{.application} keyboard shortcuts
  -------------------------------------------------------------- ---------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kimageannotator.md "kImageAnnotator-0.7.2"){accesskey="p"}

    kImageAnnotator-0.7.2

-   [Next](libadwaita.md "libadwaita-1.9.1"){accesskey="n"}

    libadwaita-1.9.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
