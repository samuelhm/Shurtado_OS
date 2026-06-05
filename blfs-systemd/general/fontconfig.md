::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](freetype2.md "FreeType-2.14.3"){accesskey="p"}

    FreeType-2.14.3

-   [Next](fribidi.md "FriBidi-1.0.16"){accesskey="n"}

    FriBidi-1.0.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fontconfig}Fontconfig-2.18.1 {#fontconfig-2.18.1 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Fontconfig {#introduction-to-fontconfig .sect2}

The [Fontconfig]{.application} package contains a library and support programs used for configuring and customizing font access.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/2.18.1/fontconfig-2.18.1.tar.xz](https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/2.18.1/fontconfig-2.18.1.tar.xz){.ulink}

-   Download MD5 sum: 7c28095f89559d9bdef9d2e5d9d882f6

-   Download size: 1.3 MB

-   Estimated disk space required: 18 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### Fontconfig Dependencies

#### Required

[FreeType-2.14.3](freetype2.md "FreeType-2.14.3"){.xref}

#### Optional

[bubblewrap-0.11.2](bubblewrap.md "Bubblewrap-0.11.2"){.xref} (used by some tests), [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} and [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref} (both used by some tests for downloading and extracting test files), [JSON-C-0.18](json-c.md "JSON-C-0.18"){.xref}, [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have [DocBook Utils]{.application} installed and you remove the *`--disable-docs`* parameter from the [**configure**]{.command} command below, you must also have [SGMLSpm-1.1](perl-modules.md#perl-sgmlspm "SGMLSpm-1.1"){.xref} and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed, or the [Fontconfig]{.application} build will fail.
:::
:::::::

::: {.installation lang="en"}
## Installation of Fontconfig {#installation-of-fontconfig .sect2}

Install [Fontconfig]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.18.1 &&
make
```

To test the results, issue: [**make check**]{.command}. One test is known to fail if the kernel does not support user namespaces. Some tests will download some font files via Internet.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you did not remove the *`--disable-docs`* parameter from the [**configure**]{.command} command, you can install the pre-generated documentation by using the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755 \
        /usr/share/{man/man{1,3,5},doc/fontconfig-2.18.1} &&
install -v -m644 fc-*/*.1         /usr/share/man/man1 &&
install -v -m644 doc/*.3          /usr/share/man/man3 &&
install -v -m644 doc/fonts-conf.5 /usr/share/man/man5 &&
install -v -m644 doc/*.{pdf,sgml,txt,html} \
                                  /usr/share/doc/fontconfig-2.18.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-docs`*: This switch avoids building the documentation (the release tarball includes pre-generated documentation).
:::

:::::: {.configuration lang="en"}
## Configuring Fontconfig {#configuring-fontconfig .sect2}

::: {.sect3 lang="en"}
### []{#fontconfig-config}Config Files {#config-files .sect3}

`/etc/fonts/*, /etc/fonts/conf.d/* and /usr/share/fontconfig/conf.avail/*`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The main configuration file for [Fontconfig]{.application} is `/etc/fonts/fonts.conf`{.filename}. Generally you do not want to edit this file. It will also read `/etc/fonts/local.conf`{.filename} and any files in `/etc/fonts/conf.d`{.filename}. To put a new font directory in the configuration, create (or update) the `/etc/fonts/local.conf`{.filename} file with your local information or add a new file in `/etc/fonts/conf.d`{.filename}. The default location of fonts in [Fontconfig]{.application} is:

::: itemizedlist
-   /usr/share/fonts

-   \~/.local/share/fonts

-   \~/.fonts [*(this is now deprecated, but for the moment it still works)*]{.emphasis}
:::

[Fontconfig]{.application} also ships many example configuration files in the `/usr/share/fontconfig/conf.avail`{.filename} directory. Symlinking specific files to `/etc/fonts/conf.d`{.filename} will enable them. The default setup is generally good enough for most users. See `/etc/fonts/conf.d/README`{.filename} for a description of the configuration files.

More information about configuring [Fontconfig]{.application} can be found in the user's manual in [file:///usr/share/doc/fontconfig-2.18.1/fontconfig-user.html](file:///usr/share/doc/fontconfig-2.18.1/fontconfig-user.md){.ulink}.
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fc-cache, fc-cat, fc-conflist, fc-list, fc-match, fc-pattern, fc-query, fc-scan, and fc-validate]{.segbody}
:::

::: seg
**Installed Library:** [libfontconfig.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/fonts, /usr/include/fontconfig, /usr/share/doc/fontconfig-2.18.1, /usr/share/fontconfig, /usr/share/xml/fontconfig, and /var/cache/fontconfig]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
  []{#fc-cache}[[**fc-cache**]{.command}]{.term}             is used to create font information caches
  []{#fc-cat}[[**fc-cat**]{.command}]{.term}                 is used to read font information caches
  []{#fc-conflist}[[**fc-conflist**]{.command}]{.term}       shows the ruleset files' information on the system
  []{#fc-list}[[**fc-list**]{.command}]{.term}               is used to create font lists
  []{#fc-match}[[**fc-match**]{.command}]{.term}             is used to match available fonts, or find fonts that match a given pattern
  []{#fc-pattern}[[**fc-pattern**]{.command}]{.term}         is used to parse pattern (empty pattern by default) and show the parsed result
  []{#fc-query}[[**fc-query**]{.command}]{.term}             is used to query fonts files and print resulting patterns
  []{#fc-scan}[[**fc-scan**]{.command}]{.term}               is used to scan font files and directories, and print resulting patterns
  []{#fc-validate}[[**fc-validate**]{.command}]{.term}       is used to validate font files
  []{#libfontconfig}[`libfontconfig.so`{.filename}]{.term}   contains functions used by the [Fontconfig]{.application} programs and also by other programs to configure or customize font access
  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](freetype2.md "FreeType-2.14.3"){accesskey="p"}

    FreeType-2.14.3

-   [Next](fribidi.md "FriBidi-1.0.16"){accesskey="n"}

    FriBidi-1.0.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
