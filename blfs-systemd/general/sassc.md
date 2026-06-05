::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](qpdf.md "Qpdf-12.3.2"){accesskey="p"}

    Qpdf-12.3.2

-   [Next](woff2.md "woff2-1.0.2"){accesskey="n"}

    woff2-1.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sassc}sassc-3.6.2 {#sassc-3.6.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to sassc {#introduction-to-sassc .sect2}

SassC is a wrapper around libsass, a CSS pre-processor language.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz](https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz){.ulink}

-   Download MD5 sum: 4c3b06ce2979f2a9f0a35093e501d8bb

-   Download size: 28 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Download (HTTP): [https://github.com/sass/libsass/archive/3.6.6/libsass-3.6.6.tar.gz](https://github.com/sass/libsass/archive/3.6.6/libsass-3.6.6.tar.gz){.ulink}

-   Download MD5 sum: afda97284d75a030cabadf5b9f998a3b

-   Download size: 336 KB

-   Estimated disk space required: 135 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
:::
::::::

::: {.installation lang="en"}
## Installation of sassc {#installation-of-sassc .sect2}

First, build the library:

``` userinput
tar -xf ../libsass-3.6.6.tar.gz &&
pushd libsass-3.6.6 &&

autoreconf -fi &&

./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Build the command line wrapper:

``` userinput
popd &&
autoreconf -fi &&

./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

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
**Installed Programs:** [sassc]{.segbody}
:::

::: seg
**Installed Libraries:** [libsass.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/sass]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ----------------------------------------------------------
  []{#sassc-prog}[[**sassc**]{.command}]{.term}   provides a command line interface to the libsass library
  ----------------------------------------------- ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](qpdf.md "Qpdf-12.3.2"){accesskey="p"}

    Qpdf-12.3.2

-   [Next](woff2.md "woff2-1.0.2"){accesskey="n"}

    woff2-1.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
