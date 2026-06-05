::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](double-conversion.md "Double-conversion-3.4.0"){accesskey="p"}

    Double-conversion-3.4.0

-   [Next](enchant.md "enchant-2.8.16"){accesskey="n"}

    enchant-2.8.16

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#duktape}duktape-2.7.0 {#duktape-2.7.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to duktape {#introduction-to-duktape .sect2}

[duktape]{.application} is an embeddable Javascript engine, with a focus on portability and compact footprint.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://duktape.org/duktape-2.7.0.tar.xz](https://duktape.org/duktape-2.7.0.tar.xz){.ulink}

-   Download MD5 sum: b3200b02ab80125b694bae887d7c1ca6

-   Download size: 1003 KB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.3 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of duktape {#installation-of-duktape .sect2}

Install [duktape]{.application} by running the following commands:

``` userinput
sed -i 's/-Os/-O2/' Makefile.sharedlibrary
make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr
```

Now, as the `root`{.systemitem} user:

``` root
make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libduktape.so and libduktaped.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------
  []{#libduktape}[`libduktape.so`{.filename}]{.term}     is an embeddable Javascript engine
  []{#libduktaped}[`libduktaped.so`{.filename}]{.term}   is a debug version of `libduktape.so`{.filename}
  ------------------------------------------------------ --------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](double-conversion.md "Double-conversion-3.4.0"){accesskey="p"}

    Double-conversion-3.4.0

-   [Next](enchant.md "enchant-2.8.16"){accesskey="n"}

    enchant-2.8.16

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
