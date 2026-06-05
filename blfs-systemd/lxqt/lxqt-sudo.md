::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-policykit.md "lxqt-policykit-2.4.0"){accesskey="p"}

    lxqt-policykit-2.4.0

-   [Next](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0"){accesskey="n"}

    lxqt-openssh-askpass-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-sudo}lxqt-sudo-2.4.0 {#lxqt-sudo-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-sudo {#introduction-to-lxqt-sudo .sect2}

The [lxqt-sudo]{.application} package is a graphical front end to [sudo]{.application} and [su]{.application} respectively.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-sudo/releases/download/2.4.0/lxqt-sudo-2.4.0.tar.xz](https://github.com/lxqt/lxqt-sudo/releases/download/2.4.0/lxqt-sudo-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 03a9150184475ed85fe41124a81a0223

-   Download size: 44 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: 0.1 SBU
:::

### lxqt-sudo Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-sudo {#installation-of-lxqt-sudo .sect2}

Install [lxqt-sudo]{.application} by running the following commands:

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
**Installed Programs:** [lxdoas (symlinkk to lxqt-sudo), lxqt-sudo, lxsu (symlinkk to lxqt-sudo), and lxsudo (symlinkk to lxqt-sudo)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/translations/lxqt-sudo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- --------------------------------------------------
  []{#lxdoas}[[**lxdoas**]{.command}]{.term}              is a graphical frontend for [**doas**]{.command}
  []{#lxqt-sudo-prog}[[**lxqt-sudo**]{.command}]{.term}   is a graphical frontend for [**sudo**]{.command}
  []{#lxsudo}[[**lxsudo**]{.command}]{.term}              is a graphical frontend for [**sudo**]{.command}
  []{#lxsu}[[**lxsu**]{.command}]{.term}                  is a graphical frontend for [**su**]{.command}
  ------------------------------------------------------- --------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-policykit.md "lxqt-policykit-2.4.0"){accesskey="p"}

    lxqt-policykit-2.4.0

-   [Next](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0"){accesskey="n"}

    lxqt-openssh-askpass-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
