::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](svt-av1.md "SVT-AV1-4.1.0"){accesskey="p"}

    SVT-AV1-4.1.0

-   [Next](v4l-utils.md "v4l-utils-1.32.0"){accesskey="n"}

    v4l-utils-1.32.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#taglib}Taglib-2.3 {#taglib-2.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Taglib {#introduction-to-taglib .sect2}

[Taglib]{.application} is a library used for reading, writing and manipulating audio file tags and is used by applications such as [VLC]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://taglib.org/releases/taglib-2.3.tar.gz](https://taglib.org/releases/taglib-2.3.tar.gz){.ulink}

-   Download MD5 sum: 5c38962970c698f8d18beddef0df7f9a

-   Download size: 1.6 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### Taglib Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} and [utfcpp-4.1.1](../general/utfcpp.md "utfcpp-4.1.1"){.xref}

#### Optional (for tests)

[Cppunit](https://freedesktop.org/wiki/Software/cppunit/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Taglib {#installation-of-taglib .sect2}

Install [Taglib]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON \
      .. &&
make
```

The test suite requires [Cppunit]{.application} but it's not a BLFS package.

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
**Installed Programs:** [taglib-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libtag.so and libtag_c.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/taglib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------
  []{#taglib-config}[[**taglib-config**]{.command}]{.term}   is a tool used to print information about the taglib installation
  ---------------------------------------------------------- -------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](svt-av1.md "SVT-AV1-4.1.0"){accesskey="p"}

    SVT-AV1-4.1.0

-   [Next](v4l-utils.md "v4l-utils-1.32.0"){accesskey="n"}

    v4l-utils-1.32.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
