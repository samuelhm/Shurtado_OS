::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gucharmap.md "Gucharmap-17.0.2"){accesskey="p"}

    Gucharmap-17.0.2

-   [Next](seahorse.md "Seahorse-47.0.1"){accesskey="n"}

    Seahorse-47.0.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#loupe}Loupe-49.2 {#loupe-49.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Loupe {#introduction-to-loupe .sect2}

[Loupe]{.application} is an application used for viewing image files on the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/loupe/49/loupe-49.2.tar.xz](https://download.gnome.org/sources/loupe/49/loupe-49.2.tar.xz){.ulink}

-   Download MD5 sum: fbfd6f3e60b342094dd67932f3818eb0

-   Download size: 372 KB

-   Estimated disk space required: 1.0 GB (11 MB installed, add 2 MB for tests)

-   Estimated build time: 1.4 SBU (with 4 jobs, add 2.6 SBU for tests)
:::

### Loupe Dependencies

#### Required

[glycin-2.1.1](../general/glycin.md "glycin-2.1.1"){.xref} (runtime), [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, and [rustc-1.96.0](../general/rust.md "Rustc-1.96.0"){.xref}

#### Optional

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Loupe {#installation-of-loupe .sect2}

Install [Loupe]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            ..                  &&
ninja
```

Running the test suite will rebuild the entire package with a different configuration, and the package will be built for three times if installing it after running the test suite. So it's better to run the test suite after the installation.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**ninja test**]{.command}

If you've installed Eog (which is unmaintained and removed from BLFS) before and you want file managers (such as Nautilus) to open image files using Loupe instead of Eog, remove the desktop file for Eog as the `root`{.systemitem} user:

``` root
rm -fv /usr/share/applications/org.gnome.eog.desktop
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [loupe]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/help/\*/loupe]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------------------------------------------------
  []{#loupe-prog}[[**loupe**]{.command}]{.term}   is a fast and functional image viewer designed to be used with the [GNOME]{.application} desktop.
  ----------------------------------------------- ---------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gucharmap.md "Gucharmap-17.0.2"){accesskey="p"}

    Gucharmap-17.0.2

-   [Next](seahorse.md "Seahorse-47.0.1"){accesskey="n"}

    Seahorse-47.0.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
