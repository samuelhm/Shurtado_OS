::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](sharutils.md "Sharutils-4.15.2"){accesskey="p"}

    Sharutils-4.15.2

-   [Next](time.md "Time-1.10"){accesskey="n"}

    Time-1.10

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tidy-html5}tidy-html5-5.8.0 {#tidy-html5-5.8.0 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Tidy HTML5 {#introduction-to-tidy-html5 .sect2}

The [Tidy HTML5]{.application} package contains a command line tool and libraries used to read HTML, XHTML and XML files and write cleaned up markup. It detects and corrects many common coding errors and strives to produce visually equivalent markup that is both W3C compliant and compatible with most browsers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/htacg/tidy-html5/archive/5.8.0/tidy-html5-5.8.0.tar.gz](https://github.com/htacg/tidy-html5/archive/5.8.0/tidy-html5-5.8.0.tar.gz){.ulink}

-   Download MD5 sum: 0f6c55ef651e258adbe5750f555af50f

-   Download size: 992 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/tidy-html5-5.8.0-cmake4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/tidy-html5-5.8.0-cmake4_fixes-1.patch){.ulink}
:::

### Tidy HTML5 Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Tidy HTML5 {#installation-of-tidy-html5 .sect2}

First, fix a build failure that occurs when using CMake 4.0 and later:

``` userinput
patch -Np1 -i ../tidy-html5-5.8.0-cmake4_fixes-1.patch
```

Install [Tidy HTML5]{.application} by running the following commands:

``` userinput
cd build/cmake &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TAB2SPACE=ON        \
      ../..    &&

make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
rm -fv /usr/lib/libtidy.a &&
install -v -m755 tab2space /usr/bin
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to build the release library without any debug \`assert\` in the code.

*`-D BUILD_TAB2SPACE=ON`*: This switch is used to enable building the [**tab2space**]{.command} utility.
:::

::::: {.configuration lang="en"}
## Configuring Tidy HTML5 {#configuring-tidy-html5 .sect2}

::: {.sect3 lang="en"}
### Config Files {#config-files .sect3}

The absolute path of the file specified in `HTML_TIDY`{.envar}.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The default configuration options can be set in the file defined in `HTML_TIDY`{.envar}. Additional configuration options can be passed to [**tidy**]{.command} via command line parameters or the `-config <file>`{.option} parameter.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [tab2space and tidy]{.segbody}
:::

::: seg
**Installed Library:** [libtidy.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/tidy-5.8.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  []{#tab2space}[[**tab2space**]{.command}]{.term}   is a utility to expand tabs and ensure consistent line endings
  []{#tidy}[[**tidy**]{.command}]{.term}             validates, corrects, and pretty-prints HTML files
  []{#libtidy} [`libtidy.so`{.filename}]{.term}      library provides the [Tidy HTML5]{.application} API functions to [**tidy**]{.command} and can also be called by other programs
  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](sharutils.md "Sharutils-4.15.2"){accesskey="p"}

    Sharutils-4.15.2

-   [Next](time.md "Time-1.10"){accesskey="n"}

    Time-1.10

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
