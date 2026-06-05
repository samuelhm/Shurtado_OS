::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](ncurses.md "Ncurses-6.6"){accesskey="p"}

    Ncurses-6.6

-   [Next](coreutils.md "Coreutils-9.11"){accesskey="n"}

    Coreutils-9.11

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-bash}6.4. Bash-5.3 {#bash-5.3 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bash package contains the Bourne-Again Shell.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [72 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.4.1. Installation of Bash {#installation-of-bash .sect2}

Prepare Bash for compilation:

``` userinput
./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc              \
            --docdir=/usr/share/doc/bash-5.3
```

::: variablelist
**The meaning of the configure options:**

[*`--without-bash-malloc`*]{.term}

:   This option turns off the use of Bash\'s memory allocation (`malloc`{.function}) function which is known to cause segmentation faults. By turning this option off, Bash will use the `malloc`{.function} functions from Glibc which are more stable.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

Make a link for the programs that use [**sh**]{.command} for a shell:

``` userinput
ln -sv bash $LFS/bin/sh
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.37.2, "Contents of Bash."](../chapter08/bash.md#contents-bash "8.37.2. Contents of Bash"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](ncurses.md "Ncurses-6.6"){accesskey="p"}

    Ncurses-6.6

-   [Next](coreutils.md "Coreutils-9.11"){accesskey="n"}

    Coreutils-9.11

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
