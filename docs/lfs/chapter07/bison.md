::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](gettext.md "Gettext-1.0"){accesskey="p"}

    Gettext-1.0

-   [Next](perl.md "Perl-5.42.2"){accesskey="n"}

    Perl-5.42.2

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-bison}7.8. Bison-3.8.2 {#bison-3.8.2 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bison package contains a parser generator.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [58 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 7.8.1. Installation of Bison {#installation-of-bison .sect2}

Prepare Bison for compilation:

``` userinput
./configure --prefix=/usr \
            --docdir=/usr/share/doc/bison-3.8.2
```

::: variablelist
**The meaning of the new configure option:**

[*`--docdir=/usr/share/doc/bison-3.8.2`*]{.term}

:   This tells the build system to install bison documentation into a versioned directory.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.35.2, "Contents of Bison."](../chapter08/bison.md#contents-bison "8.35.2. Contents of Bison"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](gettext.md "Gettext-1.0"){accesskey="p"}

    Gettext-1.0

-   [Next](perl.md "Perl-5.42.2"){accesskey="n"}

    Perl-5.42.2

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
