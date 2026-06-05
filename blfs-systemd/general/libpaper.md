::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libnvme.md "libnvme-1.16.1"){accesskey="p"}

    libnvme-1.16.1

-   [Next](libportal.md "libportal-0.9.1"){accesskey="n"}

    libportal-0.9.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpaper}libpaper-2.2.8 {#libpaper-2.2.8 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libpaper {#introduction-to-libpaper .sect2}

This package is intended to provide a simple way for applications to take actions based on a system or user-specified paper size.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rrthomas/libpaper/releases/download/v2.2.8/libpaper-2.2.8.tar.gz](https://github.com/rrthomas/libpaper/releases/download/v2.2.8/libpaper-2.2.8.tar.gz){.ulink}

-   Download MD5 sum: 6ec14207927c291631062338e148bf27

-   Download size: 1.3 MB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of libpaper {#installation-of-libpaper .sect2}

Install [libpaper]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/libpaper-2.2.8 &&
make
```

The test suite of this package does not work with a configuration using the standard installation location.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

:::: {.configuration lang="en"}
## Configuring libpaper {#configuring-libpaper .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The paper size is automatically determined from the system locale; see `LC_PAPER`{.literal} in [locale(7)](https://man.archlinux.org/man/locale.7){.ulink}. If you want to override it, create a `papersize`{.filename} file in the user configuration directory. For example:

``` userinput
mkdir -pv ~/.config &&
echo "a4" > ~/.config/papersize
```

If you want to override the paper size globally (for all users), set up the `PAPERSIZE`{.envar} environment variable. For example:

``` userinput
echo "PAPERSIZE=a4" > /etc/profile.d/libpaper.sh
```

You may use a different paper size, such as `letter`{.literal}.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [paper and paperconf]{.segbody}
:::

::: seg
**Installed Library:** [libpaper.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/libpaper-2.2.8]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------
  []{#paper}[[**paper**]{.command}]{.term}             prints paper configuration information
  []{#paperconf}[[**paperconf**]{.command}]{.term}     prints paper configuration information in a compatibility mode
  []{#libpaper-lib}[`libpaper.so`{.filename}]{.term}   contains functions for interrogating the paper library
  ---------------------------------------------------- ----------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libnvme.md "libnvme-1.16.1"){accesskey="p"}

    libnvme-1.16.1

-   [Next](libportal.md "libportal-0.9.1"){accesskey="n"}

    libportal-0.9.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
