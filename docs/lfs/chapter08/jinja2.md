::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](markupsafe.md "MarkupSafe-3.0.3"){accesskey="p"}

    MarkupSafe-3.0.3

-   [Next](systemd.md "Systemd-260.2"){accesskey="n"}

    Systemd-260.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-jinja2}8.75. Jinja2-3.1.6 {#jinja2-3.1.6 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Jinja2 is a Python module that implements a simple pythonic template language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [2.7 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.75.1. Installation of Jinja2 {#installation-of-jinja2 .sect2}

Build the package:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

Install the package:

``` userinput
pip3 install --no-index --find-links dist Jinja2
```
:::

:::::: {.content lang="en"}
## []{#contents-jinja2}8.75.2. Contents of Jinja2 {#contents-of-jinja2 .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed directory:** [/usr/lib/python3.14/site-packages/Jinja2-3.1.6.dist-info]{.segbody}
:::
::::
:::::
::::::
:::::::::::::

::: navfooter
-   [Prev](markupsafe.md "MarkupSafe-3.0.3"){accesskey="p"}

    MarkupSafe-3.0.3

-   [Next](systemd.md "Systemd-260.2"){accesskey="n"}

    Systemd-260.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
