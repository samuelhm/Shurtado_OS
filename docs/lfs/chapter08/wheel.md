::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](packaging.md "Packaging-26.2"){accesskey="p"}

    Packaging-26.2

-   [Next](setuptools.md "Setuptools-82.0.1"){accesskey="n"}

    Setuptools-82.0.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-wheel}8.54. Wheel-0.47.0 {#wheel-0.47.0 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Wheel is a Python library that is the reference implementation of the Python wheel packaging standard.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [708 KB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.54.1. Installation of Wheel {#installation-of-wheel .sect2}

Compile Wheel with the following command:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

Install Wheel with the following command:

``` userinput
pip3 install --no-index --find-links dist wheel
```
:::

:::::::: {.content lang="en"}
## []{#contents-wheel}8.54.2. Contents of Wheel {#contents-of-wheel .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed program:** [wheel]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/python3.14/site-packages/wheel and /usr/lib/python3.14/site-packages/wheel-0.47.0.dist-info]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------
  []{#wheel-wheel}[[**wheel**]{.command}]{.term}   is a utility to unpack, pack, or convert wheel archives
  ------------------------------------------------ ---------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](packaging.md "Packaging-26.2"){accesskey="p"}

    Packaging-26.2

-   [Next](setuptools.md "Setuptools-82.0.1"){accesskey="n"}

    Setuptools-82.0.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
