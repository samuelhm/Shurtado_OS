::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](binutils.md "Binutils-2.46.0"){accesskey="p"}

    Binutils-2.46.0

-   [Next](mpfr.md "MPFR-4.2.2"){accesskey="n"}

    MPFR-4.2.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gmp}8.22. GMP-6.3.0 {#gmp-6.3.0 .sect1}

:::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The GMP package contains math libraries. These have useful functions for arbitrary precision arithmetic.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [54 MB]{.segbody}
:::
:::::
::::::
:::::::

:::::::: {.installation lang="en"}
## 8.22.1. Installation of GMP {#installation-of-gmp .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are building for 32-bit x86, but you have a CPU which is capable of running 64-bit code [*and*]{.emphasis} you have specified `CFLAGS`{.envar} in the environment, the configure script will attempt to configure for 64-bits and fail. Avoid this by invoking the configure command below with

``` userinput
ABI=32 ./configure ...
```
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The default settings of GMP produce libraries optimized for the host processor. If libraries suitable for processors less capable than the host\'s CPU are desired, generic libraries can be created by appending the `--host=none-linux-gnu`{.option} option to the [**configure**]{.command} command.
:::

First, make an adjustment for compatibility with gcc-15 and later:

``` userinput
sed -i '/long long t1;/,+1s/()/(...)/' configure
```

Prepare GMP for compilation:

``` userinput
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0
```

::: variablelist
**The meaning of the new configure options:**

[*`--enable-cxx`*]{.term}

:   This parameter enables C++ support

[*`--docdir=/usr/share/doc/gmp-6.3.0`*]{.term}

:   This variable specifies the correct place for the documentation.
:::

Compile the package and generate the HTML documentation:

``` userinput
make
make html
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

The test suite for GMP in this section is considered critical. Do not skip it under any circumstances.
:::

Test the results:

``` userinput
make check 2>&1 | tee gmp-check-log
```

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

The code in gmp is highly optimized for the processor where it is built. Occasionally, the code that detects the processor misidentifies the system capabilities and there will be errors in the tests or other applications using the gmp libraries with the message `Illegal instruction`{.computeroutput}. In this case, gmp should be reconfigured with the option `--host=none-linux-gnu`{.option} and rebuilt.
:::

Ensure that at least 199 tests in the test suite passed. Check the results by issuing the following command:

``` userinput
awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
```

Install the package and its documentation:

``` userinput
make install
make install-html
```
::::::::

:::::::: {.content lang="en"}
## []{#contents-gmp}8.22.2. Contents of GMP {#contents-of-gmp .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed libraries:** [libgmp.so and libgmpxx.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/gmp-6.3.0]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ---------------------------------------
  []{#libgmp}[`libgmp`{.filename}]{.term}       Contains precision math functions
  []{#libgmpxx}[`libgmpxx`{.filename}]{.term}   Contains C++ precision math functions
  --------------------------------------------- ---------------------------------------
:::
::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](binutils.md "Binutils-2.46.0"){accesskey="p"}

    Binutils-2.46.0

-   [Next](mpfr.md "MPFR-4.2.2"){accesskey="n"}

    MPFR-4.2.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
