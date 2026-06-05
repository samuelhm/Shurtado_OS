::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](bluefish.md "Bluefish-2.4.1"){accesskey="p"}

    Bluefish-2.4.1

-   [Next](emacs.md "Emacs-30.2"){accesskey="n"}

    Emacs-30.2

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ed}Ed-1.22.5 {#ed-1.22.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Ed {#introduction-to-ed .sect2}

[Ed]{.application} is a line-oriented text editor. It is used to create, display, modify and otherwise manipulate text files, both interactively and via shell scripts. Ed isn't something which many people use. It's described here because it can be used by the patch program if you encounter an ed-based patch file. This happens rarely because diff-based patches are preferred these days.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/ed/ed-1.22.5.tar.lz](https://ftpmirror.gnu.org/ed/ed-1.22.5.tar.lz){.ulink}

-   Download MD5 sum: be4d48fec1535162059b9416d913e531

-   Download size: 72 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### Ed Dependencies

#### Required to uncompress the tarball

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} (for bsdtar)
:::::

::: {.installation lang="en"}
## Installation of Ed {#installation-of-ed .sect2}

Install [Ed]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ed and red]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  []{#ed-prog}[[**ed**]{.command}]{.term}   is a line-oriented text editor
  []{#red}[[**red**]{.command}]{.term}      is a restricted [**ed**]{.command}—it can only edit files in the current directory and cannot execute shell commands
  ----------------------------------------- ----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](bluefish.md "Bluefish-2.4.1"){accesskey="p"}

    Bluefish-2.4.1

-   [Next](emacs.md "Emacs-30.2"){accesskey="n"}

    Emacs-30.2

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
