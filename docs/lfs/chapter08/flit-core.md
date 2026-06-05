::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](Python.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](packaging.md "Packaging-26.2"){accesskey="n"}

    Packaging-26.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-flit-core}8.52. Flit-Core-3.12.0 {#flit-core-3.12.0 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Flit-core is the distribution-building parts of Flit (a packaging tool for simple Python modules).

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [1.3 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.52.1. Installation of Flit-Core {#installation-of-flit-core .sect2}

Build the package:

``` userinput
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
```

Install the package:

``` userinput
pip3 install --no-index --find-links dist flit_core
```

::: variablelist
**The meaning of the pip3 configuration options and commands:**

[[**wheel**]{.command}]{.term}

:   This command builds the wheel archive for this package.

[*`-w dist`*]{.term}

:   Instructs pip to put the created wheel into the `dist`{.filename} directory.

[*`--no-cache-dir`*]{.term}

:   Prevents pip from copying the created wheel into the `/root/.cache/pip`{.filename} directory.

[[**install**]{.command}]{.term}

:   This command installs the package.

[*`--no-build-isolation`*, *`--no-deps`*, and *`--no-index`*]{.term}

:   These options prevent fetching files from the online package repository (PyPI). If packages are installed in the correct order, pip won\'t need to fetch any files in the first place; these options add some safety in case of user error.

[*`--find-links dist`*]{.term}

:   Instructs pip to search for wheel archives in the `dist`{.filename} directory.
:::
::::

:::::: {.content lang="en"}
## []{#contents-flit-core}8.52.2. Contents of Flit-Core {#contents-of-flit-core .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed directory:** [/usr/lib/python3.14/site-packages/flit_core and /usr/lib/python3.14/site-packages/flit_core-3.12.0.dist-info]{.segbody}
:::
::::
:::::
::::::
::::::::::::::

::: navfooter
-   [Prev](Python.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](packaging.md "Packaging-26.2"){accesskey="n"}

    Packaging-26.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
