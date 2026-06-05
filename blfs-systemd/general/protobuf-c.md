::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](protobuf.md "Protobuf-35.0"){accesskey="p"}

    Protobuf-35.0

-   [Next](qca.md "Qca-2.3.10"){accesskey="n"}

    Qca-2.3.10

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#protobuf-c}Protobuf-c-1.5.2 {#protobuf-c-1.5.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Protobuf-c {#introduction-to-protobuf-c .sect2}

The [Protobuf-c]{.application} package contains an implementation of the Google Protocol Buffers data serialization format in C.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz](https://github.com/protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz){.ulink}

-   Download MD5 sum: 0612ee47cccaaf4ad1c4f0c8bdc13abf

-   Download size: 520 KB

-   Estimated disk space required: 56 MB

-   Estimated build time: 0.6 SBU (with tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/protobuf-c-1.5.2-protobuf34_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/protobuf-c-1.5.2-protobuf34_fix-1.patch){.ulink}
:::

### Protobuf-c Dependencies

#### Required

[Protobuf-35.0](protobuf.md "Protobuf-35.0"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Protobuf-c {#installation-of-protobuf-c .sect2}

First fix issues caused by protobuf-34 and later:

``` userinput
patch -Np1 -i ../protobuf-c-1.5.2-protobuf34_fix-1.patch
```

Install [Protobuf-c]{.application} by running the following commands:

``` userinput
CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++20" \
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++20"`{.envar}: Override the default C++ standard (C++ 2017) of this package, as the headers from protobuf-35 and later require C++ 2020 features.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [protoc-gen-c and protoc-c (symlinked to protoc-gen-c)]{.segbody}
:::

::: seg
**Installed Libraries:** [libprotobuf-c.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/google and /usr/include/protobuf-c]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------
  []{#protoc-c}[[**protoc-c**]{.command}]{.term}             generates C descriptor code from a .proto file
  []{#libprotobuf-c}[`libprotobuf-c.so`{.filename}]{.term}   contains a C implementation of the Google Protocol Buffers data serialization format
  ---------------------------------------------------------- --------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](protobuf.md "Protobuf-35.0"){accesskey="p"}

    Protobuf-35.0

-   [Next](qca.md "Qca-2.3.10"){accesskey="n"}

    Qca-2.3.10

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
