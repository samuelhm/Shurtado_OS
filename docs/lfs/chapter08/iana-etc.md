::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](man-pages.md "Man-pages-6.18"){accesskey="p"}

    Man-pages-6.18

-   [Next](glibc.md "Glibc-2.43"){accesskey="n"}

    Glibc-2.43

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-iana-etc}8.4. Iana-Etc-20260529 {#iana-etc-20260529 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Iana-Etc package provides data for network services and protocols.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [4.8 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.4.1. Installation of Iana-Etc {#installation-of-iana-etc .sect2}

For this package, we only need to copy the files into place:

``` userinput
cp -v services protocols /etc
```
:::

::::::: {.content lang="en"}
## []{#contents-iana-etc}8.4.2. Contents of Iana-Etc {#contents-of-iana-etc .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed files:** [/etc/protocols and /etc/services]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  []{#protocols}[`/etc/protocols`{.filename}]{.term}   Describes the various DARPA Internet protocols that are available from the TCP/IP subsystem
  []{#services}[`/etc/services`{.filename}]{.term}     Provides a mapping between friendly textual names for internet services, and their underlying assigned port numbers and protocol types
  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](man-pages.md "Man-pages-6.18"){accesskey="p"}

    Man-pages-6.18

-   [Next](glibc.md "Glibc-2.43"){accesskey="n"}

    Glibc-2.43

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
