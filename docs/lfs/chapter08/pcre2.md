::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](readline.md "Readline-8.3"){accesskey="p"}

    Readline-8.3

-   [Next](m4.md "M4-1.4.21"){accesskey="n"}

    M4-1.4.21

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-pcre2}8.13. Pcre2-10.47 {#pcre2-10.47 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The pcre2 package contains a new generation of the Perl Compatible Regular Expression libraries.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [28 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.13.1. Installation of Pcre2 {#installation-of-pcre2 .sect2}

Prepare pcre2 for compilation:

``` userinput
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/pcre2-10.47 \
            --enable-unicode                    \
            --enable-jit                        \
            --enable-pcre2-16                   \
            --enable-pcre2-32                   \
            --enable-pcre2grep-libz             \
            --enable-pcre2grep-libbz2           \
            --enable-pcre2test-libreadline      \
            --disable-static
```

::: variablelist
**The meaning of the new configure options:**

[*`--enable-unicode`*]{.term}

:   This option enables Unicode support and includes the functions for handling UTF-8/16/32 character strings in the library.

[*`--enable-jit`*]{.term}

:   This option enables Just-in-time compiling, which can greatly speed up pattern matching.

[*`--enable-pcre2-16`*]{.term}

:   This option enables 16 bit character support.

[*`--enable-pcre2-32`*]{.term}

:   This option enables 32 bit character support.

[*`--enable-pcre2grep-libz`*]{.term}

:   This option adds support for reading .gz compressed files to pcre2grep.

[*`--enable-pcre2grep-libbz2`*]{.term}

:   This option adds support for reading .bz2 compressed files to pcre2grep.

[*`--enable-pcre2test-libreadline`*]{.term}

:   This option adds line editing and history features to the pcre2test program.
:::

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
::::

:::::::: {.content lang="en"}
## []{#contents-pcre2}8.13.2. Contents of Pcre2 {#contents-of-pcre2 .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [pcre2grep and pcre2test]{.segbody}
:::

::: seg
**Installed library:** [libpcre2-8.so, libpcre2-16.so, libpcre2-32.so, and libpcre2-posix.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------
  []{#pcre2grep}[[**pcre2grep**]{.command}]{.term}   is a version of grep that understands Perl compatible regular expressions
  []{#pcre2test}[[**pcre2test**]{.command}]{.term}   can test a Perl compatible regular expression
  -------------------------------------------------- ---------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](readline.md "Readline-8.3"){accesskey="p"}

    Readline-8.3

-   [Next](m4.md "M4-1.4.21"){accesskey="n"}

    M4-1.4.21

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
