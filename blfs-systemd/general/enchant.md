::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](duktape.md "duktape-2.7.0"){accesskey="p"}

    duktape-2.7.0

-   [Next](exempi.md "Exempi-2.6.6"){accesskey="n"}

    Exempi-2.6.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#enchant}enchant-2.8.16 {#enchant-2.8.16 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to enchant {#introduction-to-enchant .sect2}

The [enchant]{.application} package provides a generic interface into various existing spell checking libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rrthomas/enchant/releases/download/v2.8.16/enchant-2.8.16.tar.gz](https://github.com/rrthomas/enchant/releases/download/v2.8.16/enchant-2.8.16.tar.gz){.ulink}

-   Download MD5 sum: af5a6f8e0e6379ac7b3dc1c4b02b77bb

-   Download size: 1.3 MB

-   Estimated disk space required: 70 MB (with tests)

-   Estimated build time: 0.2 SBU (add 0.8 SBU for tests)
:::

### enchant Dependencies

#### Required

[Aspell-0.60.8.2](aspell.md "Aspell-0.60.8.2"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[dbus-glib-0.114](dbus-glib.md "dbus-glib-0.114"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Hspell](http://hspell.ivrix.org.il/){.ulink}, [Hunspell](https://hunspell.github.io/){.ulink}, [Nuspell](https://nuspell.github.io/){.ulink}, [Voikko](https://hunspell.github.io/){.ulink}, and [unittest-cpp](https://github.com/unittest-cpp/unittest-cpp/releases){.ulink} (required for tests)
:::::

::: {.installation lang="en"}
## Installation of enchant {#installation-of-enchant .sect2}

Install [enchant]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/enchant-2.8.16 &&
make
```

To run tests, unittest-cpp must be installed and the `--enable-relocatable`{.option} option passed to configure above. If these conditions are present, the tests may be run with [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::: {.configuration lang="en"}
## Configuring enchant {#configuring-enchant .sect2}

::: {.sect3 lang="en"}
### []{#enchant-config}Config Files {#config-files .sect3}

`~/.enchant`{.filename} and `/usr/share/enchant/enchant.ordering`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

You can test your installation and configuration by creating a test file and running the following commands (you can replace the en_GB dictionary by any other downloaded when installing [Aspell-0.60.8.2](aspell.md "Aspell-0.60.8.2"){.xref}):

``` userinput
cat > /tmp/test-enchant.txt << "EOF"
Tel me more abot linux
Ther ar so many commads
EOF

enchant-2 -d en_GB -l /tmp/test-enchant.txt &&
enchant-2 -d en_GB -a /tmp/test-enchant.txt
```

You will see a list of the misspelled words followed by a list of alternatives for them.

See more details in the enchant manual page.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [enchant-2 and enchant-lsmod-2]{.segbody}
:::

::: seg
**Installed Libraries:** [libenchant-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/enchant-2, /usr/lib/enchant-2, /usr/share/enchant, and /usr/share/doc/enchant-2.8.16]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------
  []{#enchant-2}[[**enchant-2**]{.command}]{.term}               is a spellchecker
  []{#enchant-lsmod-2}[[**enchant-lsmod-2**]{.command}]{.term}   lists available backends, languages, and dictionaries
  []{#libenchant-2}[`libenchant-2.so`{.filename}]{.term}         contains spell checking interface API functions
  -------------------------------------------------------------- -------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](duktape.md "duktape-2.7.0"){accesskey="p"}

    duktape-2.7.0

-   [Next](exempi.md "Exempi-2.6.6"){accesskey="n"}

    Exempi-2.6.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
