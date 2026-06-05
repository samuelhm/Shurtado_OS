::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](mpfr.md "MPFR-4.2.2"){accesskey="p"}

    MPFR-4.2.2

-   [Next](attr.md "Attr-2.5.2"){accesskey="n"}

    Attr-2.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-mpc}8.24. MPC-1.4.1 {#mpc-1.4.1 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The MPC package contains a library for the arithmetic of complex numbers with arbitrarily high precision and correct rounding of the result.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [22 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.24.1. Installation of MPC {#installation-of-mpc .sect2}

Prepare MPC for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.4.1
```

Compile the package and generate the HTML documentation:

``` userinput
make
make html
```

To test the results, issue:

``` userinput
make check
```

Install the package and its documentation:

``` userinput
make install
make install-html
```
:::

:::::::: {.content lang="en"}
## []{#contents-mpc}8.24.2. Contents of MPC {#contents-of-mpc .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed libraries:** [libmpc.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/mpc-1.4.1]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ----------------------------------------- ---------------------------------
  []{#libmpc}[`libmpc`{.filename}]{.term}   Contains complex math functions
  ----------------------------------------- ---------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](mpfr.md "MPFR-4.2.2"){accesskey="p"}

    MPFR-4.2.2

-   [Next](attr.md "Attr-2.5.2"){accesskey="n"}

    Attr-2.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
