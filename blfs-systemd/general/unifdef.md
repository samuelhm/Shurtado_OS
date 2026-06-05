::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](tk.md "Tk-8.6.18"){accesskey="p"}

    Tk-8.6.18

-   [Next](vala.md "Vala-0.56.19"){accesskey="n"}

    Vala-0.56.19

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#unifdef}unifdef-2.12 {#unifdef-2.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to unifdef {#introduction-to-unifdef .sect2}

The [unifdef]{.application} package contains a utility that is useful for removing preprocessor conditionals from code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://dotat.at/prog/unifdef/unifdef-2.12.tar.gz](https://dotat.at/prog/unifdef/unifdef-2.12.tar.gz){.ulink}

-   Download MD5 sum: b225312c110cd2600ca7166bd0419751

-   Download size: 88 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of unifdef {#installation-of-unifdef .sect2}

First, fix a problem when building with gcc-15:

``` userinput
sed -i 's/constexpr/unifdef_&/g' unifdef.c
```

Now fix a problem if reinstalling the package:

``` userinput
sed -i 's/ln -s/ln -sf/' Makefile
```

Install [unifdef]{.application} by running the following commands:

``` userinput
make
```

To test the results, issue: [**LC_ALL=C make test**]{.command}.

Finally, finish the installation as the `root`{.systemitem} user:

``` root
make prefix=/usr install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [unifdef and unifdefall]{.segbody}
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

  ---------------------------------------------------- -----------------------------------------------------------------
  []{#unifdef-prog}[[**unifdef**]{.command}]{.term}    removes preprocessor conditionals from code
  []{#unifdefall}[[**unifdefall**]{.command}]{.term}   removes preprocessor conditionals from code across a whole tree
  ---------------------------------------------------- -----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](tk.md "Tk-8.6.18"){accesskey="p"}

    Tk-8.6.18

-   [Next](vala.md "Vala-0.56.19"){accesskey="n"}

    Vala-0.56.19

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
