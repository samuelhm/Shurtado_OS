::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](uchardet.md "Uchardet-0.0.8"){accesskey="p"}

    Uchardet-0.0.8

-   [Next](utfcpp.md "utfcpp-4.1.1"){accesskey="n"}

    utfcpp-4.1.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#umockdev}Umockdev-0.19.7 {#umockdev-0.19.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Umockdev {#introduction-to-umockdev .sect2}

The [Umockdev]{.application} package contains a framework that allows a developer to mock devices for use in unit testing.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/martinpitt/umockdev/releases/download/0.19.7/umockdev-0.19.7.tar.xz](https://github.com/martinpitt/umockdev/releases/download/0.19.7/umockdev-0.19.7.tar.xz){.ulink}

-   Download MD5 sum: c673fd819d8850d28692736956feea79

-   Download size: 488 KB

-   Estimated disk space required: 8.0 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Umockdev Dependencies

#### Required

[libgudev-238](libgudev.md "libgudev-238"){.xref}, [libpcap-1.10.6](../basicnet/libpcap.md "libpcap-1.10.6"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for tests), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref} (for tests), and [libgphoto2](http://www.gphoto.org/){.ulink} (for tests)
:::::

::: {.installation lang="en"}
## Installation of Umockdev {#installation-of-umockdev .sect2}

Install [Umockdev]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue as the `root`{.systemitem} user: [**ninja test**]{.command}. One test needs to be run in an X session.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D gtk_doc=true`{.option}: Use this switch if you have [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [umockdev-record, umockdev-run, and umockdev-wrapper]{.segbody}
:::

::: seg
**Installed Libraries:** [libumockdev-preload.so and libumockdev.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/umockdev-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#umockdev-record}[[**umockdev-record**]{.command}]{.term}     records Linux devices and their ancestors from sysfs/udev or records ioctls for a device
  []{#umockdev-run}[[**umockdev-run**]{.command}]{.term}           runs a program under an [umockdev]{.application} testbed
  []{#umockdev-wrapper}[[**umockdev-wrapper**]{.command}]{.term}   wraps a program around `libumockdev-preload.so.0`{.filename} through LD_PRELOAD
  []{#libumockdev}[`libumockdev.so`{.filename}]{.term}             provides API functions that allow mocking hardware devices for unit testing
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](uchardet.md "Uchardet-0.0.8"){accesskey="p"}

    Uchardet-0.0.8

-   [Next](utfcpp.md "utfcpp-4.1.1"){accesskey="n"}

    utfcpp-4.1.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
