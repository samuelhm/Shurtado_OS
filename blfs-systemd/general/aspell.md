::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](apr-util.md "Apr-Util-1.6.3"){accesskey="p"}

    Apr-Util-1.6.3

-   [Next](boost.md "boost-1.91.0-1"){accesskey="n"}

    boost-1.91.0-1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#aspell}Aspell-0.60.8.2 {#aspell-0.60.8.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Aspell {#introduction-to-aspell .sect2}

The [Aspell]{.application} package contains an interactive spell checking program and the [Aspell]{.application} libraries. [Aspell]{.application} can either be used as a library or as an independent spell checker.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/aspell/aspell-0.60.8.2.tar.gz](https://ftpmirror.gnu.org/aspell/aspell-0.60.8.2.tar.gz){.ulink}

-   Download MD5 sum: bc3f30321db5d44f112ab66084421225

-   Download size: 3.5 MB

-   Estimated disk space required: 56 MB (Additional 8 MB for EN dictionary)

-   Estimated build time: 0.4 SBU
:::

### Additional Downloads

You'll need to download at least one dictionary. The English dictionary is given as an example below. Dictionaries in many other languages can be found at [https://ftpmirror.gnu.org/aspell/dict](https://ftpmirror.gnu.org/aspell/dict){.ulink}.

::: itemizedlist
-   Aspell English dictionary: [https://ftpmirror.gnu.org/aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2](https://ftpmirror.gnu.org/aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2){.ulink}
:::

### Aspell Dependencies

#### Required

[Which-2.25](which.md "Which-2.25 and Alternatives"){.xref} (for the dictionaries)
::::::

::: {.installation lang="en"}
## Installation of Aspell {#installation-of-aspell .sect2}

Install [Aspell]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
ln -svfn aspell-0.60 /usr/lib/aspell &&

install -v -m755 -d /usr/share/doc/aspell-0.60.8.2/aspell{,-dev}.md &&

install -v -m644 manual/aspell.html/* \
    /usr/share/doc/aspell-0.60.8.2/aspell.md &&

install -v -m644 manual/aspell-dev.html/* \
    /usr/share/doc/aspell-0.60.8.2/aspell-dev.md
```

If you do not plan to install [Ispell]{.application}, then copy the wrapper script [**ispell**]{.command}:

``` root
install -v -m 755 scripts/ispell /usr/bin/
```

If you do not plan to install [Spell]{.application}, then copy the wrapper script [**spell**]{.command}:

``` root
install -v -m 755 scripts/spell /usr/bin/
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**ln -svfn aspell-0.60 /usr/lib/aspell**]{.command}: This command is useful for configuration of other applications, such as [enchant-2.8.16](enchant.md "enchant-2.8.16"){.xref}.
:::

:::: {.configuration lang="en"}
## Configuring Aspell {#configuring-aspell .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

After [Aspell]{.application} is installed, you must set up at least one dictionary. Install the English dictionary by running the following commands:

``` userinput
tar xf ../aspell6-en-2020.12.07-0.tar.bz2 &&
cd aspell6-en-2020.12.07-0                &&

./configure &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

Other dictionaries can be installed with the same instructions.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aspell, aspell-import, precat, preunzip, prezip, prezip-bin, pspell-config, run-with-aspell, word-list-compress and optionally, ispell and spell.]{.segbody}
:::

::: seg
**Installed Libraries:** [libaspell.so and libpspell.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pspell and /usr/lib/aspell-0.60]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aspell-prog}[[**aspell**]{.command}]{.term}                      is a utility that can function as an [**ispell -a**]{.command} replacement, as an independent spell checker, as a test utility to test out [Aspell]{.application} features, and as a utility for managing dictionaries
  []{#aspell-ispell}[[**ispell**]{.command}]{.term}                    is a wrapper around [**aspell**]{.command} to invoke it in [**ispell**]{.command} compatible mode
  []{#aspell-spell}[[**spell**]{.command}]{.term}                      is a wrapper around [**aspell**]{.command} to invoke it in [**spell**]{.command} compatible mode
  []{#aspell-import}[[**aspell-import**]{.command}]{.term}             imports old personal dictionaries into [Aspell]{.application}
  []{#precat}[[**precat**]{.command}]{.term}                           decompresses a [**prezip**]{.command}ped file to stdout
  []{#preunzip}[[**preunzip**]{.command}]{.term}                       decompresses a [**prezip**]{.command}ped file
  []{#prezip}[[**prezip**]{.command}]{.term}                           is a prefix delta compressor, used to compress sorted word lists or other similar text files
  []{#prezip-bin}[[**prezip-bin**]{.command}]{.term}                   is called by the various wrapper scripts to perform the actual compressing and decompressing
  []{#pspell-config}[[**pspell-config**]{.command}]{.term}             displays information about the `libpspell`{.filename} installation, mostly for use in build scripts
  []{#run-with-aspell}[[**run-with-aspell**]{.command}]{.term}         is a script to help use [Aspell]{.application} as an [**ispell**]{.command} replacement
  []{#word-list-compress}[[**word-list-compress**]{.command}]{.term}   compresses or decompresses sorted word lists for use with the [Aspell]{.application} spell checker
  []{#libaspell}[`libaspell.so`{.filename}]{.term}                     contains spell checking API functions
  []{#libpspell}[`libpspell.so`{.filename}]{.term}                     is an interface to the `libaspell`{.filename} library. All the spell checking functionality is now in `libaspell`{.filename} but this library is included for backward compatibility
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](apr-util.md "Apr-Util-1.6.3"){accesskey="p"}

    Apr-Util-1.6.3

-   [Next](boost.md "boost-1.91.0-1"){accesskey="n"}

    boost-1.91.0-1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
