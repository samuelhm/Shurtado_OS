::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](mypaint-brushes.md "mypaint-brushes-2.0.2"){accesskey="p"}

    mypaint-brushes-2.0.2

-   [Next](opencv.md "opencv-4.13.0"){accesskey="n"}

    opencv-4.13.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#newt}newt-0.52.25 {#newt-0.52.25 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to newt {#introduction-to-newt .sect2}

[Newt]{.application} is a programming library for color text mode, widget based user interfaces. It can be used to add stacked windows, entry widgets, checkboxes, radio buttons, labels, plain text fields, scrollbars, etc., to text mode user interfaces. [Newt]{.application} is based on the S-Lang library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://releases.pagure.org/newt/newt-0.52.25.tar.gz](https://releases.pagure.org/newt/newt-0.52.25.tar.gz){.ulink}

-   Download MD5 sum: cca66ed1d8774fb9e3f6a33525de416d

-   Download size: 176 KB

-   Estimated disk space required: 3.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Newt Dependencies

#### Required

[popt-1.19](popt.md "Popt-1.19"){.xref} and [slang-2.3.3](slang.md "slang-2.3.3"){.xref}

#### Recommended

[GPM-1.20.7](gpm.md "GPM-1.20.7"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of newt {#installation-of-newt .sect2}

Install [newt]{.application} by running the following command:

``` userinput
sed -e '/install -m 644 $(LIBNEWT)/ s/^/#/' \
    -e '/$(LIBNEWT):/,/rv/ s/^/#/'          \
    -e 's/$(LIBNEWT)/$(LIBNEWTSH)/g'        \
    -i Makefile.in                          &&

./configure --prefix=/usr      \
            --with-gpm-support &&
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

[**sed -e ... -i Makefile.in**]{.command}: Disables installation of a static library.

*`--with-gpm-support`*: This switch enables mouse support for newt applications through GPM.

*`--with-python=python3.14`*: By giving explicitly the name of the directory where python modules reside, this switch prevents building the python2 module.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [whiptail]{.segbody}
:::

::: seg
**Installed Library:** [libnewt.so, whiptcl.so, and /usr/lib/python3.14/site-packages/\_snack.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------
  []{#whiptail-prog}[[**whiptail**]{.command}]{.term}   displays dialog boxes from shell scripts
  []{#libnewt-lib}[`libnewt.so`{.filename}]{.term}      is the library for color text mode, widget based user interfaces
  ----------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mypaint-brushes.md "mypaint-brushes-2.0.2"){accesskey="p"}

    mypaint-brushes-2.0.2

-   [Next](opencv.md "opencv-4.13.0"){accesskey="n"}

    opencv-4.13.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
