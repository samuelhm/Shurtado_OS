::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](expect.md "Expect-5.45.4"){accesskey="p"}

    Expect-5.45.4

-   [Next](pkgconf.md "Pkgconf-2.5.1"){accesskey="n"}

    Pkgconf-2.5.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-dejagnu}8.19. DejaGNU-1.6.3 {#dejagnu-1.6.3 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The [DejaGnu]{.application} package contains a framework for running test suites on GNU tools. It is written in [**expect**]{.command}, which itself uses [Tcl]{.application} (Tool Command Language).

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.9 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.19.1. Installation of DejaGNU {#installation-of-dejagnu .sect2}

The upstream recommends building DejaGNU in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Prepare DejaGNU for compilation:

``` userinput
../configure --prefix=/usr
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
install -v -dm755  /usr/share/doc/dejagnu-1.6.3
install -v -m644   doc/dejagnu.{html,txt} /usr/share/doc/dejagnu-1.6.3
```
:::

::::::: {.content lang="en"}
## []{#contents-dejagnu}8.19.2. Contents of DejaGNU {#contents-of-dejagnu .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed program:** [dejagnu and runtest]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------------------------------------
  []{#dejagnu}[[**dejagnu**]{.command}]{.term}   DejaGNU auxiliary command launcher
  []{#runtest}[[**runtest**]{.command}]{.term}   A wrapper script that locates the proper [**expect**]{.command} shell and then runs DejaGNU
  ---------------------------------------------- ---------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](expect.md "Expect-5.45.4"){accesskey="p"}

    Expect-5.45.4

-   [Next](pkgconf.md "Pkgconf-2.5.1"){accesskey="n"}

    Pkgconf-2.5.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
