::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](rasqal.md "Rasqal-0.9.33"){accesskey="p"}

    Rasqal-0.9.33

-   [Next](sysstat.md "Sysstat-12.7.9"){accesskey="n"}

    Sysstat-12.7.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#redland}Redland-1.0.17 {#redland-1.0.17 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Redland {#introduction-to-redland .sect2}

[Redland]{.application} is a set of free software C libraries that provide support for the Resource Description Framework (RDF).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.librdf.org/source/redland-1.0.17.tar.gz](https://download.librdf.org/source/redland-1.0.17.tar.gz){.ulink}

-   Download MD5 sum: e5be03eda13ef68aabab6e42aa67715e

-   Download size: 1.6 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.2 SBU
:::

### Redland Dependencies

#### Required

[Rasqal-0.9.33](rasqal.md "Rasqal-0.9.33"){.xref}

#### Optional

[MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated) [libiodbc](https://sourceforge.net/projects/iodbc/files/){.ulink}, [virtuoso](https://downloads.sourceforge.net/virtuoso/){.ulink}, and [3store](https://sourceforge.net/projects/threestore/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Redland {#installation-of-redland .sect2}

Install [Redland]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [rdfproc, redland-config and redland-db-upgrade]{.segbody}
:::

::: seg
**Installed Libraries:** [librdf.so and /usr/lib/redland/librdf_storage\_\*.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/redland, /usr/share/gtk-doc/html/redland and /usr/share/redland]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------
  []{#rdfproc}[[**rdfproc**]{.command}]{.term}                         is the Redland RDF processor utility
  []{#redland-config}[[**redland-config**]{.command}]{.term}           is a script to get information about the installed version of Redland
  []{#redland-db-upgrade}[[**redland-db-upgrade**]{.command}]{.term}   upgrades older Redland databases to 0.9.12 format
  -------------------------------------------------------------------- -----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](rasqal.md "Rasqal-0.9.33"){accesskey="p"}

    Rasqal-0.9.33

-   [Next](sysstat.md "Sysstat-12.7.9"){accesskey="n"}

    Sysstat-12.7.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
