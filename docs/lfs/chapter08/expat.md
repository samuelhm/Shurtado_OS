::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gperf.md "Gperf-3.3"){accesskey="p"}

    Gperf-3.3

-   [Next](inetutils.md "Inetutils-2.8"){accesskey="n"}

    Inetutils-2.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-expat}8.41. Expat-2.8.1 {#expat-2.8.1 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Expat package contains a stream oriented C library for parsing XML.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [14 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.41.1. Installation of Expat {#installation-of-expat .sect2}

Prepare Expat for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.8.1
```

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```

If desired, install the documentation:

``` userinput
install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.8.1
```
:::

::::::::: {.content lang="en"}
## []{#contents-expat}8.41.2. Contents of Expat {#contents-of-expat .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed program:** [xmlwf]{.segbody}
:::

::: seg
**Installed libraries:** [libexpat.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/expat-2.8.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- -----------------------------------------------------------------------------------
  []{#xmlwf}[[**xmlwf**]{.command}]{.term}      Is a non-validating utility to check whether or not XML documents are well formed
  []{#libexpat}[`libexpat`{.filename}]{.term}   Contains API functions for parsing XML
  --------------------------------------------- -----------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gperf.md "Gperf-3.3"){accesskey="p"}

    Gperf-3.3

-   [Next](inetutils.md "Inetutils-2.8"){accesskey="n"}

    Inetutils-2.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
