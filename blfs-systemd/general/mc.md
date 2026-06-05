::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](logrotate.md "Logrotate-3.22.0"){accesskey="p"}

    Logrotate-3.22.0

-   [Next](ModemManager.md "ModemManager-1.24.2"){accesskey="n"}

    ModemManager-1.24.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mc}MC-4.8.33 {#mc-4.8.33 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to MC {#introduction-to-mc .sect2}

[MC]{.application} (Midnight Commander) is a text-mode full-screen file manager and visual shell. It provides a clear, user-friendly, and somewhat protected interface to a Unix system while making many frequent file operations more efficient and preserving the full power of the command prompt.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://ftp.midnight-commander.org/mc-4.8.33.tar.xz](http://ftp.midnight-commander.org/mc-4.8.33.tar.xz){.ulink}

-   Download MD5 sum: b3596c1f092b9822a6cd9c9a1aef8dde

-   Download size: 2.3 MB

-   Estimated disk space required: 71 MB (add 97 MB for tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; add 0.1 SBU for tests)
:::

### MC Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}

#### Recommended

[slang-2.3.3](slang.md "slang-2.3.3"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [GPM-1.20.7](gpm.md "GPM-1.20.7"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, [libssh2-1.11.1](libssh2.md "libssh2-1.11.1"){.xref}, [Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, and [Zip-3.0](zip.md "Zip-3.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of MC {#installation-of-mc .sect2}

Install [MC]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-charset  &&
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

*`--sysconfdir=/etc`*: This switch places the global configuration directory in `/etc`{.filename}.

*`--enable-charset`*: This switch adds support to [**mcedit**]{.command} for editing files in encodings different from the one implied by the current locale.

*`--with-screen=ncurses`*: Use this if you don't have [slang-2.3.3](slang.md "slang-2.3.3"){.xref} installed.

`--with-search-engine=pcre2`{.option}: Use this switch if you would prefer to use pcre from LFS instead of GLib for the built-in search engine.
:::

::::: {.configuration lang="en"}
## Configuring MC {#configuring-mc .sect2}

::: {.sect3 lang="en"}
### []{#mc-config}Config Files {#config-files .sect3}

`~/.config/mc/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The `~/.config/mc`{.filename} directory and its contents are created when you start [**mc**]{.command} for the first time. Then you can edit the main `~/.config/mc/ini`{.filename} configuration file manually or through the [MC]{.application} shell. Consult the [mc(1)](https://man.archlinux.org/man/mc.1){.ulink} man page for details.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mc and the symlinks mcdiff, mcedit and mcview]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/mc and /usr/{libexec,share}/mc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- ---------------------------------
  []{#mc-prog}[[**mc**]{.command}]{.term}      is a visual shell
  []{#mcdiff}[[**mcdiff**]{.command}]{.term}   is an internal visual diff tool
  []{#mcedit}[[**mcedit**]{.command}]{.term}   is an internal file editor
  []{#mcview}[[**mcview**]{.command}]{.term}   is an internal file viewer
  -------------------------------------------- ---------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](logrotate.md "Logrotate-3.22.0"){accesskey="p"}

    Logrotate-3.22.0

-   [Next](ModemManager.md "ModemManager-1.24.2"){accesskey="n"}

    ModemManager-1.24.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
