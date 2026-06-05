::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](scons.md "SCons-4.10.1"){accesskey="p"}

    SCons-4.10.1

-   [Next](subversion.md "Subversion-1.14.5"){accesskey="n"}

    Subversion-1.14.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#slang}slang-2.3.3 {#slang-2.3.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to slang {#introduction-to-slang .sect2}

[S-Lang]{.application} (slang) is an interpreted language that may be embedded into an application to make the application extensible. It provides facilities required by interactive applications such as display/screen management, keyboard input and keymaps.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.jedsoft.org/releases/slang/slang-2.3.3.tar.bz2](https://www.jedsoft.org/releases/slang/slang-2.3.3.tar.bz2){.ulink}

-   Download MD5 sum: 69015c8300088373eb65ffcc6ed4db8c

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB (add 15 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests)
:::

### Slang Dependencies

#### Optional

[libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref} and [Oniguruma](https://github.com/kkos/oniguruma){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Slang {#installation-of-slang .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
:::

Install [slang]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --with-readline=gnu &&
make -j1 RPATH=
```

To test the results, issue: [**LC_ALL=C make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install_doc_dir=/usr/share/doc/slang-2.3.3   \
     SLSH_DOC_DIR=/usr/share/doc/slang-2.3.3/slsh \
     RPATH= install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-readline=gnu`*: This parameter sets GNU [Readline]{.application} to be used by the parser interface instead of the [slang]{.application} internal version.

*`RPATH=`*: This overridden [**make**]{.command} variable prevents hard coding library search paths (rpath) into the binary executable files and shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`install_doc_dir=/usr/share/doc/slang-2.3.3 SLSH_DOC_DIR=/usr/share/doc/slang-2.3.3/slsh`*: These overridden [**make**]{.command} variables ensure installing this package with a versioned documentation installation directory.
:::

:::: {.configuration lang="en"}
## Configuring slang {#configuring-slang .sect2}

::: {.sect3 lang="en"}
### []{#slang-config}Config Files {#config-files .sect3}

`~/.slshrc`{.filename} and `/etc/slsh.rc`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [slsh]{.segbody}
:::

::: seg
**Installed Libraries:** [libslang.so and numerous support modules]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/slang, /usr/share/doc/slang-2.3.3 and /usr/share/slsh]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#slsh}[[**slsh**]{.command}]{.term}   is a simple program for interpreting [slang]{.application} scripts. It supports dynamic loading of [slang]{.application} modules and includes a [Readline]{.application} interface for interactive use
  ---------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](scons.md "SCons-4.10.1"){accesskey="p"}

    SCons-4.10.1

-   [Next](subversion.md "Subversion-1.14.5"){accesskey="n"}

    Subversion-1.14.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
