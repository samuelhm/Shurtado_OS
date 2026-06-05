::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxkbcommon.md "libxkbcommon-1.13.2"){accesskey="p"}

    libxkbcommon-1.13.2

-   [Next](libxmlb.md "libxmlb-0.3.27"){accesskey="n"}

    libxmlb-0.3.27

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxml2}libxml2-2.15.3 {#libxml2-2.15.3 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libxml2 {#introduction-to-libxml2 .sect2}

The [libxml2]{.application} package contains libraries and utilities used for parsing XML files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.3.tar.xz](https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.3.tar.xz){.ulink}

-   Download MD5 sum: b7b0123654f86ebf630a5cbedaafdece

-   Download size: 3.1 MB

-   Estimated disk space required: 64 MB (add 27 MB for documentation and 17 MB for tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests and documentation)
:::

### Additional Downloads

::: itemizedlist
-   Optional Test Suite: [https://www.w3.org/XML/Test/xmlts20130923.tar.gz](https://www.w3.org/XML/Test/xmlts20130923.tar.gz){.ulink} - This enables [**make check**]{.command} to do complete testing.
:::

### libxml2 Dependencies

#### Recommended

[ICU-78.3](icu.md "icu-78.3"){.xref}

#### Optional (for generating the documentation)

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of libxml2 {#installation-of-libxml2 .sect2}

First, remove an unnecessary call to [**git**]{.command} in `meson.build`{.filename}:

``` userinput
sed -i "/'git'/,+3d" meson.build
```

Install [libxml2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D history=enabled  \
      -D icu=enabled      &&
ninja
```

If you wish to build and install the manual pages and the documentation, you should have [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} and [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} installed, and run:

``` userinput
sed -e "/^dir_doc/s/\$/ + '-' + meson.project_version()/" \
    -i ../meson.build                                     &&
meson configure -D docs=enabled                           &&
ninja
```

If you downloaded the test suite, issue the following command:

``` userinput
tar xf ../../xmlts20130923.tar.gz -C ..
```

To test the results, issue: [**ninja test**]{.command}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tests use [http://localhost/](http://localhost/){.ulink} to test parsing of external entities. If the machine where you run the tests serves as a web site, the tests may hang, depending on the content of the file served. It is therefore recommended to shut down the server during the tests, as the `root`{.systemitem} user:

``` userinput
systemctl stop httpd.service
```
:::

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

The [**xml2-config**]{.command} may return flags needed to link against the static library for the project, including the references to the [ICU-78.3](icu.md "icu-78.3"){.xref} libraries. That would be pointless because we only install the shared library. To make things worse, that may cause some packages using [libxml2]{.application} to be unnecessarily linked against some [ICU-78.3](icu.md "icu-78.3"){.xref} library, then those packages will need a rebuild if ICU is upgraded to a new major version. Fix this by issuing, as `root`{.systemitem}:

``` root
sed "s/--static/--shared/" -i /usr/bin/xml2-config
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D history=enabled`*: This switch enables [Readline]{.application} support when running [**xmlcatalog**]{.command} or [**xmllint**]{.command} in shell mode.

*`-D icu=enabled`*: This switch enables support for [ICU]{.application}, which provides additional Unicode support. This is needed for some packages in BLFS, such as for QtWebEngine.

`-D python=enabled`{.option}: This switch enables the libxml2 Python bindings. Note that those bindings are deprecated due to flaws in the API design and they will be removed in libxml2-2.16.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xml2-config, xmlcatalog, and xmllint]{.segbody}
:::

::: seg
**Installed Libraries:** [libxml2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libxml2, /usr/lib/cmake/libxml2, and /usr/share/doc/libxml2-2.15.3,]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
  []{#xml2-config}[[**xml2-config**]{.command}]{.term}   determines the compile and linker flags that should be used to compile and link programs that use `libxml2`{.filename}
  []{#xmlcatalog}[[**xmlcatalog**]{.command}]{.term}     is used to monitor and manipulate XML and SGML catalogs
  []{#xmllint}[[**xmllint**]{.command}]{.term}           parses XML files and outputs reports (based upon options) to detect errors in XML coding
  []{#libxml2-lib}[`libxml2.so`{.filename}]{.term}       provides functions for programs to parse files that use the XML format
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libxkbcommon.md "libxkbcommon-1.13.2"){accesskey="p"}

    libxkbcommon-1.13.2

-   [Next](libxmlb.md "libxmlb-0.3.27"){accesskey="n"}

    libxmlb-0.3.27

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
