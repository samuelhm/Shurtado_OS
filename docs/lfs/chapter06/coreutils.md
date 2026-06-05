::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](bash.md "Bash-5.3"){accesskey="p"}

    Bash-5.3

-   [Next](diffutils.md "Diffutils-3.12"){accesskey="n"}

    Diffutils-3.12

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-coreutils}6.5. Coreutils-9.11 {#coreutils-9.11 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Coreutils package contains the basic utility programs needed by every operating system.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [185 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.5.1. Installation of Coreutils {#installation-of-coreutils .sect2}

Prepare Coreutils for compilation:

``` userinput
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --enable-install-program=hostname \
            --enable-no-install-program=kill,uptime
```

::: variablelist
**The meaning of the configure options:**

[`--enable-install-program=hostname`{.envar}]{.term}

:   This enables the [**hostname**]{.command} binary to be built and installed -- it is disabled by default but is required by the Perl test suite.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

Move programs to their final expected locations. Although this is not necessary in this temporary environment, we must do so because some programs hardcode executable locations:

``` userinput
mv -v $LFS/usr/bin/chroot              $LFS/usr/sbin
mkdir -pv $LFS/usr/share/man/man8
mv -v $LFS/usr/share/man/man1/chroot.1 $LFS/usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/'                    $LFS/usr/share/man/man8/chroot.8
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.59.2, "Contents of Coreutils."](../chapter08/coreutils.md#contents-coreutils "8.59.2. Contents of Coreutils"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](bash.md "Bash-5.3"){accesskey="p"}

    Bash-5.3

-   [Next](diffutils.md "Diffutils-3.12"){accesskey="n"}

    Diffutils-3.12

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
