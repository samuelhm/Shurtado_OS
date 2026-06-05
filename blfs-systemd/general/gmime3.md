::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](glibmm2.md "GLibmm-2.88.0"){accesskey="p"}

    GLibmm-2.88.0

-   [Next](gmmlib.md "gmmlib-22.10.0"){accesskey="n"}

    gmmlib-22.10.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gmime3}GMime-3.2.15 {#gmime-3.2.15 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GMime {#introduction-to-gmime .sect2}

The [GMime]{.application} package contains a set of utilities for parsing and creating messages using the Multipurpose Internet Mail Extension (MIME) as defined by the applicable RFCs. See the [GMime web site](https://spruce.sourceforge.net/gmime/){.ulink} for the RFCs resourced. This is useful as it provides an API which adheres to the MIME specification as closely as possible while also providing programmers with an extremely easy to use interface to the API functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/jstedfast/gmime/releases/download/3.2.15/gmime-3.2.15.tar.xz](https://github.com/jstedfast/gmime/releases/download/3.2.15/gmime-3.2.15.tar.xz){.ulink}

-   Download MD5 sum: f7d6b4ad3253e73c72237fde5bced617

-   Download size: 2.1 MB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### GMime Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended) and [libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}

#### Optional

[DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}, [gpgme-2.1.0](../postlfs/gpgme.md "gpgme-2.1.0"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}, and [Gtk#](https://download.mono-project.com/sources/gtk-sharp/){.ulink} (requires [Mono](https://www.mono-project.com/Main_Page){.ulink})
:::::

::: {.installation lang="en"}
## Installation of GMime {#installation-of-gmime .sect2}

Install [GMime]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}. Two tests, test-pgp and test-pgpmime, are known to fail.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgmime-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gmime-3.0 and /usr/share/gtk-doc/html/gmime-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------
  []{#libgmime-3}[`libgmime-3.0.so`{.filename}]{.term}   contains API functions used by programs that need to comply to the MIME standards
  ------------------------------------------------------ -----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](glibmm2.md "GLibmm-2.88.0"){accesskey="p"}

    GLibmm-2.88.0

-   [Next](gmmlib.md "gmmlib-22.10.0"){accesskey="n"}

    gmmlib-22.10.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
