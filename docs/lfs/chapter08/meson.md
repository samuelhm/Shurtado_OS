::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](ninja.md "Ninja-1.13.2"){accesskey="p"}

    Ninja-1.13.2

-   [Next](kmod.md "Kmod-34.2"){accesskey="n"}

    Kmod-34.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-meson}8.57. Meson-1.11.1 {#meson-1.11.1 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Meson is an open source build system designed to be both extremely fast and as user friendly as possible.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [48 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.57.1. Installation of Meson {#installation-of-meson .sect2}

Compile Meson with the following command:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

The test suite requires some packages outside the scope of LFS.

Install the package:

``` userinput
pip3 install --no-index --find-links dist meson
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson
```

::: variablelist
**The meaning of the install parameters:**

[*`-w dist`*]{.term}

:   Puts the created wheels into the `dist`{.filename} directory.

[*`--find-links dist`*]{.term}

:   Installs wheels from the `dist`{.filename} directory.
:::
::::

:::::::: {.content lang="en"}
## []{#contents-meson}8.57.2. Contents of Meson {#contents-of-meson .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [meson]{.segbody}
:::

::: seg
**Installed directory:** [/usr/lib/python3.14/site-packages/meson-1.11.1.dist-info and /usr/lib/python3.14/site-packages/mesonbuild]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ ----------------------------------
  []{#meson}[[**meson**]{.command}]{.term}   A high productivity build system
  ------------------------------------------ ----------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](ninja.md "Ninja-1.13.2"){accesskey="p"}

    Ninja-1.13.2

-   [Next](kmod.md "Kmod-34.2"){accesskey="n"}

    Kmod-34.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
