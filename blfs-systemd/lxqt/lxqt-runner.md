::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0"){accesskey="p"}

    lxqt-powermanagement-2.4.0

-   [Next](lxqt-themes.md "lxqt-themes-2.4.0"){accesskey="n"}

    lxqt-themes-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-runner}lxqt-runner-2.4.0 {#lxqt-runner-2.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-runner {#introduction-to-lxqt-runner .sect2}

The [lxqt-runner]{.application} package provides a tool used to launch programs quickly by typing their names.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-runner/releases/download/2.4.0/lxqt-runner-2.4.0.tar.xz](https://github.com/lxqt/lxqt-runner/releases/download/2.4.0/lxqt-runner-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 9ceae166db36448dfbc5825434c2dc08

-   Download size: 232 KB

-   Estimated disk space required: 6.4 MB

-   Estimated build time: 0.2 SBU
:::

### lxqt-runner Dependencies

#### Required

[lxqt-globalkeys-2.4.0](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){.xref}, [kwindowsystem-6.26.0 for lxqt](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){.xref}, and [muparser-2.3.5](muparser.md "muparser-2.3.5"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-runner {#installation-of-lxqt-runner .sect2}

Install [lxqt-runner]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.use lang="en"}
## Using lxqt-runner {#using-lxqt-runner .sect2}

To use [lxqt-runner]{.application}, simultaneously press the Alt-F2 keys. A dialog window appears in the top center of the screen. When you start typing a command, a list of possible matches appears and changes as you keep typing.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [lxqt-runner]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------------------
  []{#lxqt-runner-prog}[[**lxqt-runner**]{.command}]{.term}   launches a graphical dialog box for quickly running a program
  ----------------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0"){accesskey="p"}

    lxqt-powermanagement-2.4.0

-   [Next](lxqt-themes.md "lxqt-themes-2.4.0"){accesskey="n"}

    lxqt-themes-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
