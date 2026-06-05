::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](qtwebengine.md "QtWebEngine-6.11.1"){accesskey="p"}

    QtWebEngine-6.11.1

-   [Next](vulkan-headers.md "Vulkan-Headers-1.4.350.0"){accesskey="n"}

    Vulkan-Headers-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#startup-notification}startup-notification-0.12 {#startup-notification-0.12 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to startup-notification {#introduction-to-startup-notification .sect2}

The [startup-notification]{.application} package contains `startup-notification`{.filename} libraries. These are useful for building a consistent manner to notify the user through the cursor that the application is loading.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz](https://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz){.ulink}

-   Download MD5 sum: 2cd77326d4dcaed9a5a23a1232fb38e9

-   Download size: 347 KB

-   Estimated disk space required: 4 MB

-   Estimated build time: less than 0.1 SBU
:::

### startup-notification Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref} and [xcb-util-0.4.1](xcb-util.md "xcb-util-0.4.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of startup-notification {#installation-of-startup-notification .sect2}

Install [startup-notification]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 -D doc/startup-notification.txt \
    /usr/share/doc/startup-notification-0.12/startup-notification.txt
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libstartup-notification-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/startup-notification-1.0 and /usr/share/doc/startup-notification-0.12]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#libstartup-notification-1}[`libstartup-notification-1.so`{.filename}]{.term}   provides the functions to assist applications in communicating with the cursor system to provide feedback to the user that the application is loading
  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](qtwebengine.md "QtWebEngine-6.11.1"){accesskey="p"}

    QtWebEngine-6.11.1

-   [Next](vulkan-headers.md "Vulkan-Headers-1.4.350.0"){accesskey="n"}

    Vulkan-Headers-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
