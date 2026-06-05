::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](vim.md "Vim-9.2.0567"){accesskey="p"}

    Vim-9.2.0567

-   [Next](jinja2.md "Jinja2-3.1.6"){accesskey="n"}

    Jinja2-3.1.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-markupsafe}8.74. MarkupSafe-3.0.3 {#markupsafe-3.0.3 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
MarkupSafe is a Python module that implements an XML/HTML/XHTML Markup safe string.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [692 KB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.74.1. Installation of MarkupSafe {#installation-of-markupsafe .sect2}

Compile MarkupSafe with the following command:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

This package does not come with a test suite.

Install the package:

``` userinput
pip3 install --no-index --find-links dist Markupsafe
```
:::

:::::: {.content lang="en"}
## []{#contents-markupsafe}8.74.2. Contents of MarkupSafe {#contents-of-markupsafe .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed directory:** [/usr/lib/python3.14/site-packages/MarkupSafe-3.0.3.dist-info]{.segbody}
:::
::::
:::::
::::::
:::::::::::::

::: navfooter
-   [Prev](vim.md "Vim-9.2.0567"){accesskey="p"}

    Vim-9.2.0567

-   [Next](jinja2.md "Jinja2-3.1.6"){accesskey="n"}

    Jinja2-3.1.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
