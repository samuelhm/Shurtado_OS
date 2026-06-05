::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](screen.md "Screen-5.0.1"){accesskey="p"}

    Screen-5.0.1

-   [Next](sharutils.md "Sharutils-4.15.2"){accesskey="n"}

    Sharutils-4.15.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#shared-mime-info}shared-mime-info-2.4 {#shared-mime-info-2.4 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Shared Mime Info {#introduction-to-shared-mime-info .sect2}

The [Shared Mime Info]{.application} package contains a MIME database. This allows central updates of MIME information for all supporting applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.4/shared-mime-info-2.4.tar.gz](https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.4/shared-mime-info-2.4.tar.gz){.ulink}

-   Download MD5 sum: aac56db912b7b12a04fb0018e28f2f36

-   Download size: 7.5 MB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Additional Downloads

::: itemizedlist
-   Optional download, required to run the test suite: [https://anduin.linuxfromscratch.org/BLFS/xdgmime/xdgmime.tar.xz](https://anduin.linuxfromscratch.org/BLFS/xdgmime/xdgmime.tar.xz){.ulink}

    xdgmime md5sum: 7dfb4446705d345d3acd672024049e86
:::

### Shared Mime Info Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Shared Mime Info {#installation-of-shared-mime-info .sect2}

Install [Shared Mime Info]{.application} by running the following commands:

If you wish to run the test suite, you must first extract the `xdgmime`{.filename} tarball into the current directory, and compile it so that [**meson**]{.command} can find it:

``` userinput
tar -xf ../xdgmime.tar.xz &&
make -C xdgmime
```

Now build the package:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D update-mimedb=true .. &&
ninja
```

If you have followed the instructions above to build [xdgmime]{.application}, to test the result issue [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D update-mimedb=true`*: This parameter tells the build system to run [**update-mime-database**]{.command} during installation. Otherwise, this must be done manually in order to be able to use the MIME database.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [update-mime-database]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/mime]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------
  []{#update-mime-database}[[**update-mime-database**]{.command}]{.term}   assists in adding MIME data to the database
  ------------------------------------------------------------------------ ---------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](screen.md "Screen-5.0.1"){accesskey="p"}

    Screen-5.0.1

-   [Next](sharutils.md "Sharutils-4.15.2"){accesskey="n"}

    Sharutils-4.15.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
