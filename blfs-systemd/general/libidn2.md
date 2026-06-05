::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libidn.md "libidn-1.43"){accesskey="p"}

    libidn-1.43

-   [Next](libksba.md "libksba-1.8.0"){accesskey="n"}

    libksba-1.8.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libidn2}libidn2-2.3.8 {#libidn2-2.3.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libidn2 {#introduction-to-libidn2 .sect2}

[libidn2]{.application} is a package designed for internationalized string handling based on standards from the Internet Engineering Task Force (IETF)'s IDN working group, designed for internationalized domain names.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libidn/libidn2-2.3.8.tar.gz](https://ftpmirror.gnu.org/libidn/libidn2-2.3.8.tar.gz){.ulink}

-   Download MD5 sum: a8e113e040d57a523684e141970eea7a

-   Download size: 2.1 MB

-   Estimated disk space required: 21 MB (add 3 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.6 SBU for tests)
:::

### libidn2 Dependencies

#### Recommended

[libunistring-1.4.2](libunistring.md "libunistring-1.4.2"){.xref}

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref} and [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libidn2 {#installation-of-libidn2 .sect2}

Install [libidn2]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [idn2]{.segbody}
:::

::: seg
**Installed Library:** [libidn2.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/gtk-doc/html/libidn2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------
  []{#idn2}[[**idn2**]{.command}]{.term}             is a command line interface to the internationalized domain library
  []{#libidn2-lib}[`libidn2.so`{.filename}]{.term}   contains a generic Stringprep implementation used for internationalized string handling
  -------------------------------------------------- -----------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libidn.md "libidn-1.43"){accesskey="p"}

    libidn-1.43

-   [Next](libksba.md "libksba-1.8.0"){accesskey="n"}

    libksba-1.8.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
