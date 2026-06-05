::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-config.md "lxqt-config-2.4.0"){accesskey="p"}

    lxqt-config-2.4.0

-   [Next](lxqt-sudo.md "lxqt-sudo-2.4.0"){accesskey="n"}

    lxqt-sudo-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-policykit}lxqt-policykit-2.4.0 {#lxqt-policykit-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-policykit {#introduction-to-lxqt-policykit .sect2}

The [lxqt-policykit]{.application} package is the [LXQt]{.application} PolicyKit agent.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-policykit/releases/download/2.4.0/lxqt-policykit-2.4.0.tar.xz](https://github.com/lxqt/lxqt-policykit/releases/download/2.4.0/lxqt-policykit-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 407421121bd60292723424e7827fc45e

-   Download size: 44 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: 0.1 SBU
:::

### lxqt-policykit Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref} and [polkit-qt-0.201.1](../kde/polkit-qt.md "Polkit-Qt-0.201.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-policykit {#installation-of-lxqt-policykit .sect2}

Install [lxqt-policykit]{.application} by running the following commands:

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
**Installed Program:** [lxqt-policykit-agent]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/lxqt/translations/lxqt-policykit-agent]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------------- ---------------------------------------------
  []{#lxqt-policykit-agent-prog}[[**lxqt-policykit-agent**]{.command}]{.term}   is the [LXQt]{.application} PolicyKit agent
  ----------------------------------------------------------------------------- ---------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-config.md "lxqt-config-2.4.0"){accesskey="p"}

    lxqt-config-2.4.0

-   [Next](lxqt-sudo.md "lxqt-sudo-2.4.0"){accesskey="n"}

    lxqt-sudo-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
