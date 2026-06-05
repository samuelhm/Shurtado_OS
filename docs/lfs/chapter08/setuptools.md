::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](wheel.md "Wheel-0.47.0"){accesskey="p"}

    Wheel-0.47.0

-   [Next](ninja.md "Ninja-1.13.2"){accesskey="n"}

    Ninja-1.13.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-setuptools}8.55. Setuptools-82.0.1 {#setuptools-82.0.1 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Setuptools is a tool used to download, build, install, upgrade, and uninstall Python packages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [22 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.55.1. Installation of Setuptools {#installation-of-setuptools .sect2}

Build the package:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

Install the package:

``` userinput
pip3 install --no-index --find-links dist setuptools
```
:::

:::::: {.content lang="en"}
## []{#contents-setuptools}8.55.2. Contents of Setuptools {#contents-of-setuptools .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed directory:** [/usr/lib/python3.14/site-packages/\_distutils_hack, /usr/lib/python3.14/site-packages/pkg_resources, /usr/lib/python3.14/site-packages/setuptools, and /usr/lib/python3.14/site-packages/setuptools-82.0.1.dist-info]{.segbody}
:::
::::
:::::
::::::
:::::::::::::

::: navfooter
-   [Prev](wheel.md "Wheel-0.47.0"){accesskey="p"}

    Wheel-0.47.0

-   [Next](ninja.md "Ninja-1.13.2"){accesskey="n"}

    Ninja-1.13.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
