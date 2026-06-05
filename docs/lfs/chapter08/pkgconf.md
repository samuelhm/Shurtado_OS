::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](dejagnu.md "DejaGNU-1.6.3"){accesskey="p"}

    DejaGNU-1.6.3

-   [Next](binutils.md "Binutils-2.46.0"){accesskey="n"}

    Binutils-2.46.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-pkgconf}8.20. Pkgconf-2.5.1 {#pkgconf-2.5.1 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The pkgconf package is a successor to pkg-config and contains a tool for passing the include path and/or library paths to build tools during the configure and make phases of package installations.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [5.0 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.20.1. Installation of Pkgconf {#installation-of-pkgconf .sect2}

Prepare Pkgconf for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/pkgconf-2.5.1
```

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```

To maintain compatibility with the original Pkg-config create two symlinks:

``` userinput
ln -sv pkgconf   /usr/bin/pkg-config
ln -sv pkgconf.1 /usr/share/man/man1/pkg-config.1
```
:::

::::::::: {.content lang="en"}
## []{#contents-pkgconf}8.20.2. Contents of Pkgconf {#contents-of-pkgconf .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [pkgconf, pkg-config (link to pkgconf), and bomtool]{.segbody}
:::

::: seg
**Installed library:** [libpkgconf.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/pkgconf-2.5.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  []{#pkgconf}[[**pkgconf**]{.command}]{.term}      Returns meta information for the specified library or package
  []{#bomtool}[[**bomtool**]{.command}]{.term}      Generates a Software Bill Of Materials from pkg-config .pc files
  []{#libpkgconf}[`libpkgconf`{.filename}]{.term}   Contains most of pkgconf\'s functionality, while allowing other tools like IDEs and compilers to use its frameworks
  ------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](dejagnu.md "DejaGNU-1.6.3"){accesskey="p"}

    DejaGNU-1.6.3

-   [Next](binutils.md "Binutils-2.46.0"){accesskey="n"}

    Binutils-2.46.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
