::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](file.md "File-5.47"){accesskey="p"}

    File-5.47

-   [Next](pcre2.md "Pcre2-10.47"){accesskey="n"}

    Pcre2-10.47

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-readline}8.12. Readline-8.3 {#readline-8.3 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Readline package is a set of libraries that offer command-line editing and history capabilities.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [17 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.12.1. Installation of Readline {#installation-of-readline .sect2}

Reinstalling Readline will cause the old libraries to be moved to \<libraryname\>.old. While this is normally not a problem, in some cases it can trigger a linking bug in [**ldconfig**]{.command}. This can be avoided by issuing the following two seds:

``` userinput
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
```

Prevent hard coding library search paths (rpath) into the shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues:

``` userinput
sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf
```

Fix a problem identified upstream specifically for this version of readline:

``` userinput
sed -e '270a\
     else\
       chars_avail = 1;'      \
    -e '288i\   result = -1;' \
    -i.orig input.c
```

Prepare Readline for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/readline-8.3
```

::: variablelist
**The meaning of the new configure option:**

[*`--with-curses`*]{.term}

:   This option tells Readline that it can find the termcap library functions in the curses library, not a separate termcap library. This will generate the correct `readline.pc`{.filename} file.
:::

Compile the package:

``` userinput
make SHLIB_LIBS="-lncursesw"
```

::: variablelist
**The meaning of the make option:**

[*`SHLIB_LIBS="-lncursesw"`*]{.term}

:   This option forces Readline to link against the `libncursesw`{.filename} library. For details see the ["[Shared Libraries]{.quote}"]{.quote} section in the package\'s `README`{.filename} file.
:::

This package does not come with a test suite.

Install the package:

``` userinput
make install
```

If desired, install the documentation:

``` userinput
install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/readline-8.3
```
:::::

:::::::: {.content lang="en"}
## []{#contents-readline}8.12.2. Contents of Readline {#contents-of-readline .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed libraries:** [libhistory.so and libreadline.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/readline and /usr/share/doc/readline-8.3]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------------------------------
  []{#libhistory}[`libhistory`{.filename}]{.term}     Provides a consistent user interface for recalling lines of history
  []{#libreadline}[`libreadline`{.filename}]{.term}   Provides a set of commands for manipulating text entered in an interactive session of a program
  --------------------------------------------------- -------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](file.md "File-5.47"){accesskey="p"}

    File-5.47

-   [Next](pcre2.md "Pcre2-10.47"){accesskey="n"}

    Pcre2-10.47

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
