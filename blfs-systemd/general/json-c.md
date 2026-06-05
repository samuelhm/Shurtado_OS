::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](jansson.md "Jansson-2.15.0"){accesskey="p"}

    Jansson-2.15.0

-   [Next](json-glib.md "JSON-GLib-1.10.8"){accesskey="n"}

    JSON-GLib-1.10.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#json-c}JSON-C-0.18 {#json-c-0.18 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to JSON-C {#introduction-to-json-c .sect2}

The [JSON-C]{.application} implements a reference counting object model that allows you to easily construct JSON objects in C, output them as JSON formatted strings and parse JSON formatted strings back into the C representation of JSON objects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://s3.amazonaws.com/json-c_releases/releases/json-c-0.18.tar.gz](https://s3.amazonaws.com/json-c_releases/releases/json-c-0.18.tar.gz){.ulink}

-   Download MD5 sum: e6593766de7d8aa6e3a7e67ebf1e522f

-   Download size: 396 KB

-   Estimated disk space required: 7.9 MB

-   Estimated build time: 0.2 SBU (with tests)
:::

### JSON-C Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional (for documentation)

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (for dot tool)
:::::

::: {.installation lang="en"}
## Installation of JSON-C {#installation-of-json-c .sect2}

First, fix building this package with CMake-4.0:

``` userinput
sed -i 's/VERSION 2.8/VERSION 4.0/' apps/CMakeLists.txt  &&
sed -i 's/VERSION 3.9/VERSION 4.0/' tests/CMakeLists.txt
```

Install [JSON-C]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_STATIC_LIBS=OFF     \
      .. &&
make
```

If you have installed [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, you can build the documentation by running the following command:

``` userinput
doxygen doc/Doxyfile
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the documentation, install it by running the following commands as the `root`{.systemitem} user:

``` root
install -d -vm755 /usr/share/doc/json-c-0.18 &&
install -v -m644 doc/html/* /usr/share/doc/json-c-0.18
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libjson-c.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/json-c]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  []{#libjson-c}[`libjson-c.so`{.filename}]{.term}   contains the [JSON-C]{.application} API functions
  -------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](jansson.md "Jansson-2.15.0"){accesskey="p"}

    Jansson-2.15.0

-   [Next](json-glib.md "JSON-GLib-1.10.8"){accesskey="n"}

    JSON-GLib-1.10.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
