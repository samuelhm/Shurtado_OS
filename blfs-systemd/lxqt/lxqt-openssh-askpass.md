::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-sudo.md "lxqt-sudo-2.4.0"){accesskey="p"}

    lxqt-sudo-2.4.0

-   [Next](lxqt-session.md "lxqt-session-2.4.0"){accesskey="n"}

    lxqt-session-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-openssh-askpass}lxqt-openssh-askpass-2.4.0 {#lxqt-openssh-askpass-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-openssh-askpass {#introduction-to-lxqt-openssh-askpass .sect2}

The [lxqt-openssh-askpass]{.application} package is a GUI to query credentials on behalf of other programs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-openssh-askpass/releases/download/2.4.0/lxqt-openssh-askpass-2.4.0.tar.xz](https://github.com/lxqt/lxqt-openssh-askpass/releases/download/2.4.0/lxqt-openssh-askpass-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 33cc903f04f9bf36b40074dd6c261e15

-   Download size: 20 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### lxqt-openssh-askpass Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-openssh-askpass {#installation-of-lxqt-openssh-askpass .sect2}

Install [lxqt-openssh-askpass]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lxqt-openssh-askpass]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/translations/lxqt-openssh-askpass]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------------ -------------------------------------------------------------
  []{#lxqt-openssh-askpass-prog}[[**lxqt-config-openssh-askpass**]{.command}]{.term}   queries a user for credentials on behalf of another program
  ------------------------------------------------------------------------------------ -------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-sudo.md "lxqt-sudo-2.4.0"){accesskey="p"}

    lxqt-sudo-2.4.0

-   [Next](lxqt-session.md "lxqt-session-2.4.0"){accesskey="n"}

    lxqt-session-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
