::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](pkgmgt.md "Package Management"){accesskey="p"}

    Package Management

-   [Next](iana-etc.md "Iana-Etc-20260529"){accesskey="n"}

    Iana-Etc-20260529

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-man-pages}8.3. Man-pages-6.18 {#man-pages-6.18 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Man-pages package contains over 2,400 man pages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [54 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.3.1. Installation of Man-pages {#installation-of-man-pages .sect2}

Remove two man pages for password hashing functions. [Libxcrypt]{.application} will provide a better version of these man pages:

``` userinput
rm -v man3/crypt*
```

Install Man-pages by running:

``` userinput
make -R GIT=false prefix=/usr install
```

::: variablelist
**The meaning of the options:**

[*`-R`*]{.term}

:   This prevents [**make**]{.command} from setting any built-in variables. The building system of man-pages does not work well with built-in variables, but currently there is no way to disable them except passing *`-R`* explicitly via the command line.

[*`GIT=false`*]{.term}

:   This prevents the building system from emitting many `git: command not found`{.computeroutput} warnings lines.
:::
::::

::::::: {.content lang="en"}
## []{#contents-manpages}8.3.2. Contents of Man-pages {#contents-of-man-pages .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed files:** [various man pages]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------------------------------------------------------------
  []{#man-pages}[`man pages`{.filename}]{.term}   Describe C programming language functions, important device files, and significant configuration files
  ----------------------------------------------- --------------------------------------------------------------------------------------------------------
:::
:::::::
:::::::::::::::

::: navfooter
-   [Prev](pkgmgt.md "Package Management"){accesskey="p"}

    Package Management

-   [Next](iana-etc.md "Iana-Etc-20260529"){accesskey="n"}

    Iana-Etc-20260529

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
