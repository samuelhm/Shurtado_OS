::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](rust-bindgen.md "rust-bindgen-0.72.1"){accesskey="p"}

    rust-bindgen-0.72.1

-   [Next](slang.md "slang-2.3.3"){accesskey="n"}

    slang-2.3.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#scons}SCons-4.10.1 {#scons-4.10.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to SCons {#introduction-to-scons .sect2}

[SCons]{.application} is a tool for building software (and other files) implemented in [Python]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When expanding the tarball the package expands to scons-4.10.1, not the expected SCons-4.10.1.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/scons/SCons-4.10.1.tar.gz](https://downloads.sourceforge.net/scons/SCons-4.10.1.tar.gz){.ulink}

-   Download MD5 sum: 8decd1df686532bc0bf7d50c5f12a678

-   Download size: 3.1 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: less than 0.1 SBU
:::
::::::

::: {.installation lang="en"}
## Installation of SCons {#installation-of-scons .sect2}

Build the package:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

As the `root`{.systemitem} user, install the package:

``` root
pip3 install --no-index --find-links dist --no-user SCons &&
install -v -m664 *.1 /usr/share/man/man1
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [scons, scons-configure-cache, and sconsign]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/python3.14/site-packages/SCons{,-4.10.1.dist-info}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- ---------------------------------------------------------------------------------
  []{#scons-prog}[[**scons**]{.command}]{.term}                              is a software construction tool
  []{#scons-configure-cache}[[**scons-configure-cache**]{.command}]{.term}   shows or converts the configuration of an [SCons]{.application} cache directory
  []{#sconsign}[[**sconsign**]{.command}]{.term}                             prints [SCons]{.application} `.sconsign`{.filename} file information
  -------------------------------------------------------------------------- ---------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](rust-bindgen.md "rust-bindgen-0.72.1"){accesskey="p"}

    rust-bindgen-0.72.1

-   [Next](slang.md "slang-2.3.3"){accesskey="n"}

    slang-2.3.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
