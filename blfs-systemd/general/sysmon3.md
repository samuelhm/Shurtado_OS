::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysmond.md "sysmond-1.0.1"){accesskey="p"}

    sysmond-1.0.1

-   [Next](usbutils.md "usbutils-019"){accesskey="n"}

    usbutils-019

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sysmon3}sysmon3-3.0.3 {#sysmon3-3.0.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to sysmon3 {#introduction-to-sysmon3 .sect2}

The [sysmon3]{.application} package (pronounced sys-mon-3) is the client portion of the sysmond/sysmon3 client/server application that monitors system values including CPU usage, memory usage, and system temperatures in a compact screen window. Multiple instances of [sysmon3]{.application} can be run on a system to monitor values on different systems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/sysmon3/releases/download/3.0.3/sysmon3-3.0.3.tar.xz](https://github.com/lfs-book/sysmon3/releases/download/3.0.3/sysmon3-3.0.3.tar.xz){.ulink}

-   Download MD5 sum: 614be3041d908295430a54045901d2cd

-   Download size: 40 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: 0.4 SBU
:::

### sysmon3 Dependencies

#### Required

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (or qt5)

#### Required at runtime

[sysmond-1.0.1](sysmond.md "sysmond-1.0.1"){.xref} (runtime on the system to be monitored)
:::::

::: {.installation lang="en"}
## Installation of sysmon3 {#installation-of-sysmon3 .sect2}

Install [sysmon3]{.application} by running the following commands:

``` userinput
qmake sysmon3.pro &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -vm755 sysmon3 /usr/bin
```
:::

:::: {.configuration lang="en"}
## Configuring sysmon3 {#configuring-sysmon3 .sect2}

::: {.sect3 lang="en"}
### []{#sysmon3-config}Configuration Files {#configuration-files .sect3}

`$HOME/.config/LinuxFromScratch/<monitored system>.conf`{.filename}

The configuration files are created at run time for each system being monitored. They are not normally updated manually, but are managed by the program's configuration widgets.

When first run, the program asks for the system to be monitored. After testing that communication to the server is satisfactory and the server name is saved, the main window will start. After initial setup, the setup widget can be bypassed by passing the server name as an argument to the program.

The program is designed to take up minimal screen space so by default it does not have a frame. The frame can be toggled on and off with Ctrl-F. This can be useful for placing the window in the desired location. After initial placement, the location is saved in the configuration file for the next time the program is started.

A short operation menu is brought up with a right mouse click on the main window. Configuration widgets are brought up with F1.
:::
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [sysmon3]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [\$HOME/.config/LinuxFromScratch/]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](sysmond.md "sysmond-1.0.1"){accesskey="p"}

    sysmond-1.0.1

-   [Next](usbutils.md "usbutils-019"){accesskey="n"}

    usbutils-019

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
