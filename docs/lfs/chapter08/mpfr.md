::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gmp.md "GMP-6.3.0"){accesskey="p"}

    GMP-6.3.0

-   [Next](mpc.md "MPC-1.4.1"){accesskey="n"}

    MPC-1.4.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-mpfr}8.23. MPFR-4.2.2 {#mpfr-4.2.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The MPFR package contains functions for multiple precision math.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [43 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.23.1. Installation of MPFR {#installation-of-mpfr .sect2}

Prepare MPFR for compilation:

``` userinput
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.2
```

Compile the package and generate the HTML documentation:

``` userinput
make
make html
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

The test suite for MPFR in this section is considered critical. Do not skip it under any circumstances.
:::

Test the results and ensure that all 198 tests passed:

``` userinput
make check
```

Install the package and its documentation:

``` userinput
make install
make install-html
```
::::

:::::::: {.content lang="en"}
## []{#contents-mpfr}8.23.2. Contents of MPFR {#contents-of-mpfr .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed libraries:** [libmpfr.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/mpfr-4.2.2]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- --------------------------------------------
  []{#libmpfr}[`libmpfr`{.filename}]{.term}   Contains multiple-precision math functions
  ------------------------------------------- --------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](gmp.md "GMP-6.3.0"){accesskey="p"}

    GMP-6.3.0

-   [Next](mpc.md "MPC-1.4.1"){accesskey="n"}

    MPC-1.4.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
