::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](file-roller.md "File-Roller-44.6"){accesskey="p"}

    File-Roller-44.6

-   [Next](gnome-color-manager.md "gnome-color-manager-3.36.2"){accesskey="n"}

    gnome-color-manager-3.36.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-calculator}gnome-calculator-50.0 {#gnome-calculator-50.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Calculator {#introduction-to-gnome-calculator .sect2}

[GNOME Calculator]{.application} is a powerful graphical calculator with financial, logical and scientific modes. It uses a multiple precision package to do its arithmetic to give a high degree of accuracy.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-calculator/50/gnome-calculator-50.0.tar.xz](https://download.gnome.org/sources/gnome-calculator/50/gnome-calculator-50.0.tar.xz){.ulink}

-   Download MD5 sum: db7f8f49762a51c5c658f1b4c0ed74d8

-   Download size: 1.2 MB

-   Estimated disk space required: 44 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### GNOME Calculator Dependencies

#### Required

[blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [gtksourceview5-5.20.0](../x/gtksourceview5.md "gtksourceview5-5.20.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libgee-0.20.8](libgee.md "libgee-0.20.8"){.xref}, and [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Calculator {#installation-of-gnome-calculator .sect2}

Install [GNOME Calculator]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gcalccmd and gnome-calculator]{.segbody}
:::

::: seg
**Installed Library:** [libgcalc-2.so and libgci-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gcalc-2, /usr/include/gci-2, /usr/share/devhelp/books/{GCalc-2,GCi-1}, and /usr/share/help/\*/gnome-calculator]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------- -----------------------------------------------------------------
  []{#gnome-calculator-prog}[[**gnome-calculator**]{.command}]{.term}   is the official calculator of the [GNOME]{.application} Desktop
  []{#gcalccmd}[[**gcalccmd**]{.command}]{.term}                        is a command line version of [gnome-calculator]{.application}
  --------------------------------------------------------------------- -----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](file-roller.md "File-Roller-44.6"){accesskey="p"}

    File-Roller-44.6

-   [Next](gnome-color-manager.md "gnome-color-manager-3.36.2"){accesskey="n"}

    gnome-color-manager-3.36.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
