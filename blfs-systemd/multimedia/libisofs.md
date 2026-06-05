::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](libisoburn.md "libisoburn-1.5.8.pl02"){accesskey="p"}

    libisoburn-1.5.8.pl02

-   [Next](../pst/pst.md "Printing, Scanning and Typesetting"){accesskey="n"}

    Printing, Scanning and Typesetting

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libisofs}libisofs-1.5.8.pl02 {#libisofs-1.5.8.pl02 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libisofs {#introduction-to-libisofs .sect2}

[libisofs]{.application} is a library to create an ISO-9660 filesystem with extensions like RockRidge or Joliet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.libburnia-project.org/releases/libisofs-1.5.8.pl02.tar.gz](https://files.libburnia-project.org/releases/libisofs-1.5.8.pl02.tar.gz){.ulink}

-   Download MD5 sum: 48150014510f8e65de66cb687ff63957

-   Download size: 884 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package expands to the libisofs-1.5.8/ directory.
:::

### libisofs Dependencies

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to generate HTML documentation) and [libjte](https://www.einval.com/~steve/software/JTE/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of libisofs {#installation-of-libisofs .sect2}

Install [libisofs]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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
install -v -dm755 /usr/share/doc/libisofs-1.5.8.pl02 &&
install -v -m644 doc/html/* /usr/share/doc/libisofs-1.5.8.pl02
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
**Installed Library:** [libisofs.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libisofs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------
  []{#libisofs-lib}[`libisofs.so`{.filename}]{.term}   contains the [libisofs]{.application} API functions
  ---------------------------------------------------- -----------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libisoburn.md "libisoburn-1.5.8.pl02"){accesskey="p"}

    libisoburn-1.5.8.pl02

-   [Next](../pst/pst.md "Printing, Scanning and Typesetting"){accesskey="n"}

    Printing, Scanning and Typesetting

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
