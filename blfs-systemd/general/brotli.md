::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](boost.md "boost-1.91.0-1"){accesskey="p"}

    boost-1.91.0-1

-   [Next](clucene.md "CLucene-2.3.3.4"){accesskey="n"}

    CLucene-2.3.3.4

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#brotli}brotli-1.2.0 {#brotli-1.2.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Brotli {#introduction-to-brotli .sect2}

[Brotli]{.application} provides a general-purpose lossless compression algorithm that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling. Its libraries are particularly used for WOFF2 fonts on webpages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/google/brotli/archive/v1.2.0/brotli-1.2.0.tar.gz](https://github.com/google/brotli/archive/v1.2.0/brotli-1.2.0.tar.gz){.ulink}

-   Download MD5 sum: 8fbfae9a5ecbc278ae7f761ecb6d1285

-   Download size: 632 KB

-   Estimated disk space required: 33 MB (with python3 bindings)

-   Estimated build time: 0.3 SBU (with python3 bindings; parallelism=4)
:::

### Brotli Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (for testing Python3 bindings)
:::::

::: {.installation lang="en"}
## Installation of Brotli {#installation-of-brotli .sect2}

Install [brotli]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If desired, build the [Python3]{.application} bindings:

``` userinput
cd .. &&

sed -e '/libraries +=/s/=.*/= [required_system_library[3:]]/' \
    -e '/package_configuration/d'                             \
    -e '/pkgconfig/d'                                         \
    -i setup.py                                               &&

USE_SYSTEM_BROTLI=1 \
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the [Python3]{.application} bindings as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user Brotli
```

To test the [Python3]{.application} binding, issue: [**pytest**]{.command}.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... -i setup.py**]{.command}: Allow building the [Python3]{.application} binding with `USE_SYSTEM_BROTLI=1`{.envar} but without the Python 3 pkgconfig module (that BLFS does not provide) installed.

`USE_SYSTEM_BROTLI=1`{.envar}: Stop `setup.py`{.filename} from rebuilding the entire package all over again, use the already installed libraries for the [Python3]{.application} binding instead.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [brotli]{.segbody}
:::

::: seg
**Installed Libraries:** [libbrotlicommon.so, libbrotlidec.so, and libbrotlienc.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/brotli and /usr/lib/python3.14/site-packages/Brotli-1.2.0.dist-info (if you built and installed the Python3 bindings)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- -----------------------------------------------------------------------------
  []{#brotli-prog}[[**brotli**]{.command}]{.term}                            can compress or decompress files, or test the integrity of compressed files
  []{#libbrotlicommon}[`libbrotlicommon{-static.a,.so}`{.filename}]{.term}   is the Brotli common dictionary library
  []{#libbrotlidec}[`libbrotlidec{-static.a,.so}`{.filename}]{.term}         is the Brotli decoder library
  []{#libbrotlienc}[`libbrotlienc{-static.a,.so}`{.filename}]{.term}         is the Brotli common encoder library
  -------------------------------------------------------------------------- -----------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](boost.md "boost-1.91.0-1"){accesskey="p"}

    boost-1.91.0-1

-   [Next](clucene.md "CLucene-2.3.3.4"){accesskey="n"}

    CLucene-2.3.3.4

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
