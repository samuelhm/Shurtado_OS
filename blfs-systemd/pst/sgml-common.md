::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](sgml.md "Standard Generalized Markup Language (SGML)"){accesskey="p"}

    Standard Generalized Markup Language (SGML)

-   [Next](docbook-3.1-dtd.md "docbook-3.1-dtd"){accesskey="n"}

    docbook-3.1-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sgml-common}sgml-common-0.6.3 {#sgml-common-0.6.3 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to SGML Common {#introduction-to-sgml-common .sect2}

The [SGML Common]{.application} package contains [**install-catalog**]{.command}. This is useful for creating and maintaining centralized SGML catalogs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz](https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz){.ulink}

-   Download MD5 sum: 103c9828f24820df86e55e7862e28974

-   Download size: 75 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/sgml-common-0.6.3-manpage-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/sgml-common-0.6.3-manpage-1.patch){.ulink}
:::
::::::

:::: {.installation lang="en"}
## Installation of SGML Common {#installation-of-sgml-common .sect2}

Instead of the normal convention of including the autotools files in the package, the maintainers included symlinks to the files in `/usr/share/automake`{.filename}. For previous versions of [Automake]{.application} this convention is valid, but more recent versions of [Automake]{.application} install the internal files in version specific directories. This causes the [**configure**]{.command} script to abort because it is unable to find these files. To fix this problem, the build system needs to be regenerated. Since the included `Makefile.am`{.filename} file uses syntax for installing the manual page that is not supported by current versions of [Automake]{.application}, a patch is required to correct the syntax.

``` userinput
patch -Np1 -i ../sgml-common-0.6.3-manpage-1.patch &&
autoreconf -f -i
```

Install [SGML Common]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc install &&

install-catalog --add /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog &&

install-catalog --add /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat
```

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Update Hint

Remove the above catalog items prior to upgrading (as the `root`{.systemitem} user) with:

``` userinput
install-catalog --remove /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog &&

install-catalog --remove /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat
```
:::
::::

::::: {.configuration lang="en"}
## Configuring SGML Common {#configuring-sgml-common .sect2}

::: {.sect3 lang="en"}
### []{#sgml-common-config}Config Files {#config-files .sect3}

`/etc/sgml/sgml.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

No change in this file is necessary.
:::
:::::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Programs:** [install-catalog and sgmlwhich]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Files:** [SGML and XML DocBook entity files]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/sgml, /usr/share/doc/sgml-common-0.6.3, and /usr/share/sgml]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  []{#install-catalog}[[**install-catalog**]{.command}]{.term}   creates a centralized catalog that maintains references to catalogs scattered throughout the `/usr/share/sgml`{.filename} directory tree
  []{#sgmlwhich}[[**sgmlwhich**]{.command}]{.term}               prints the name of the main configuration file to standard output
  []{#SGML-entities}[`SGML entities files`{.filename}]{.term}    contains the basic character entities defined with SDATA entries
  []{#XML-entities}[`XML entities files`{.filename}]{.term}      contains the basic character entities defined by a hexadecimal representation of the Unicode character number
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](sgml.md "Standard Generalized Markup Language (SGML)"){accesskey="p"}

    Standard Generalized Markup Language (SGML)

-   [Next](docbook-3.1-dtd.md "docbook-3.1-dtd"){accesskey="n"}

    docbook-3.1-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
