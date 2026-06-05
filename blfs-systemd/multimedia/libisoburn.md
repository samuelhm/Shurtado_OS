::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](libburn.md "libburn-1.5.8"){accesskey="p"}

    libburn-1.5.8

-   [Next](libisofs.md "libisofs-1.5.8.pl02"){accesskey="n"}

    libisofs-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libisoburn}libisoburn-1.5.8.pl02 {#libisoburn-1.5.8.pl02 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libisoburn {#introduction-to-libisoburn .sect2}

[libisoburn]{.application} is a frontend for the [libburn]{.application} and [libisofs]{.application} libraries, which enables creation and expansion of ISO-9660 filesystems on all CD/DVD/BD media supported by [libburn]{.application}. This includes media like DVD+RW, which do not support multi-session management on the media level, and even plain disk files or block devices.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.libburnia-project.org/releases/libisoburn-1.5.8.pl02.tar.gz](https://files.libburnia-project.org/releases/libisoburn-1.5.8.pl02.tar.gz){.ulink}

-   Download MD5 sum: 008b9adc9ab3545e167495220b453413

-   Download size: 1.7 MB

-   Estimated disk space required: 17 MB (with Tk and HTML documentation)

-   Estimated build time: 0.2 SBU (with Tk and HTML documentation)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package expands to the libisoburn-1.5.8/ directory.
:::

### libisoburn Dependencies

#### Required

[libburn-1.5.8](libburn.md "libburn-1.5.8"){.xref} and [libisofs-1.5.8.pl02](libisofs.md "libisofs-1.5.8.pl02"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to generate HTML documentation), [Tk-8.6.18](../general/tk.md "Tk-8.6.18"){.xref} (for [**xorriso-tcltk**]{.command}), and [libjte](https://www.einval.com/~steve/software/JTE/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of libisoburn {#installation-of-libisoburn .sect2}

Install [libisoburn]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr              \
            --disable-static           \
            --enable-pkg-check-modules &&
make
```

If you have installed [Doxygen]{.application} and wish to generate the HTML documentation, issue the following command:

``` userinput
doxygen doc/doxygen.conf
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have built the HTML documentation, install it by running the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755 /usr/share/doc/libisoburn-1.5.8.pl02 &&
install -v -m644 doc/html/* /usr/share/doc/libisoburn-1.5.8.pl02
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-pkg-check-modules`*: This switch tells the configure script to use [pkg-config]{.application} to check for the [libburn]{.application} and [libisofs]{.application} libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [osirrox, xorrecord, xorriso, xorriso-dd-target, xorrisofs, and xorriso-tcltk]{.segbody}
:::

::: seg
**Installed Library:** [libisoburn.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libisoburn and /usr/share/doc/libisoburn-1.5.8.pl02]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
  []{#osirrox}[[**osirrox**]{.command}]{.term}                       is a symbolic link to [**xorriso**]{.command} that copies files from ISO image to a disk filesystem
  []{#xorrecord}[[**xorrecord**]{.command}]{.term}                   is a symbolic link to [**xorriso**]{.command} that provides a cdrecord type user interface
  []{#xorriso}[[**xorriso**]{.command}]{.term}                       is a program to create, load, manipulate, read, and write ISO 9660 filesystem images with Rock Ridge extensions
  []{#xorriso-dd-target}[[**xorriso-dd-target**]{.command}]{.term}   is a program to check a USB or memory card device to see whether it is suitable for image copying
  []{#xorrisofs}[[**xorrisofs**]{.command}]{.term}                   is a symbolic link to [**xorriso**]{.command} that provides a mkisofs type user interface
  []{#xorriso-tcltk}[[**xorriso-tcltk**]{.command}]{.term}           is a frontend that operates xorriso in dialog mode
  []{#libisoburn-lib}[`libisoburn.so`{.filename}]{.term}             contains the [libisoburn]{.application} API functions
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libburn.md "libburn-1.5.8"){accesskey="p"}

    libburn-1.5.8

-   [Next](libisofs.md "libisofs-1.5.8.pl02"){accesskey="n"}

    libisofs-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
