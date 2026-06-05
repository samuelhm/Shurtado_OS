::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](upower.md "UPower-1.91.2"){accesskey="p"}

    UPower-1.91.2

-   [Next](xdotool.md "xdotool-4.20260303.1"){accesskey="n"}

    xdotool-4.20260303.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#which}Which-2.25 and Alternatives {#which-2.25-and-alternatives .sect1}

::::::::::::::: {.sect1 lang="en"}
The presence or absence of the [**which**]{.command} program in the main LFS book is probably one of the most contentious issues on the mailing lists. It has resulted in at least one flame war in the past. To hopefully put an end to this once and for all, presented here are two options for equipping your system with [**which**]{.command}. The question of which [“[[**which**]{.command}]{.quote}”]{.quote} is for you to decide.

::::: {.package lang="en"}
## Introduction to GNU Which {#introduction-to-gnu-which .sect2}

The first option is to install the actual GNU [which]{.application} package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/which/which-2.25.tar.gz](https://ftpmirror.gnu.org/which/which-2.25.tar.gz){.ulink}

-   Download MD5 sum: 60140cb2637634e4f4e68c2e98c6a07b

-   Download size: 200 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Which {#installation-of-which .sect2}

Install [which]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [which]{.segbody}
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

  ----------------------------------------------- --------------------------------------------------------------------------
  []{#which-prog}[[**which**]{.command}]{.term}   shows the full path of (shell) commands installed in your `PATH`{.envar}
  ----------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::

::: {.installation lang="en"}
## The 'which' Script {#the-which-script .sect2}

The second option (for those who don't want to install the package) is to create a simple script (execute as the `root`{.systemitem} user):

``` root
cat > /usr/bin/which << "EOF"
#!/bin/bash
type -pa "$@" | head -n 1 ; exit ${PIPESTATUS[0]}
EOF
chmod -v 755 /usr/bin/which
chown -v root:root /usr/bin/which
```

This should work OK and is probably the easiest solution for most cases, but is not the most comprehensive implementation.
:::
:::::::::::::::

::: navfooter
-   [Prev](upower.md "UPower-1.91.2"){accesskey="p"}

    UPower-1.91.2

-   [Next](xdotool.md "xdotool-4.20260303.1"){accesskey="n"}

    xdotool-4.20260303.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
