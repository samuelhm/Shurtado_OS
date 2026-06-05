::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](flit-core.md "Flit-Core-3.12.0"){accesskey="p"}

    Flit-Core-3.12.0

-   [Next](wheel.md "Wheel-0.47.0"){accesskey="n"}

    Wheel-0.47.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-packaging}8.53. Packaging-26.2 {#packaging-26.2 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The packaging module is a Python library that provides utilities that implement the interoperability specifications which have clearly one correct behaviour (PEP440) or benefit greatly from having a single shared implementation (PEP425). This includes utilities for version handling, specifiers, markers, tags, and requirements.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [1.6 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.53.1. Installation of Packaging {#installation-of-packaging .sect2}

Compile packaging with the following command:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

Install packaging with the following command:

``` userinput
pip3 install --no-index --find-links dist packaging
```
:::

:::::: {.content lang="en"}
## []{#contents-packaging}8.53.2. Contents of Packaging {#contents-of-packaging .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed directories:** [/usr/lib/python3.14/site-packages/packaging and /usr/lib/python3.14/site-packages/packaging-26.2.dist-info]{.segbody}
:::
::::
:::::
::::::
:::::::::::::

::: navfooter
-   [Prev](flit-core.md "Flit-Core-3.12.0"){accesskey="p"}

    Flit-Core-3.12.0

-   [Next](wheel.md "Wheel-0.47.0"){accesskey="n"}

    Wheel-0.47.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
