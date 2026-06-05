::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](dbus.md "D-Bus-1.16.2"){accesskey="p"}

    D-Bus-1.16.2

-   [Next](procps-ng.md "Procps-ng-4.0.6"){accesskey="n"}

    Procps-ng-4.0.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-man-db}8.78. Man-DB-2.13.1 {#man-db-2.13.1 .sect1}

::::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Man-DB package contains programs for finding and viewing man pages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [44 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.78.1. Installation of Man-DB {#installation-of-man-db .sect2}

Prepare Man-DB for compilation:

``` userinput
./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.13.1 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap
```

::: variablelist
**The meaning of the configure options:**

[*`--disable-setuid`*]{.term}

:   This disables making the [**man**]{.command} program setuid to user `man`{.systemitem}.

[*`--enable-cache-owner=bin`*]{.term}

:   This changes ownership of the system-wide cache files to user `bin`{.systemitem}.

[*`--with-...`*]{.term}

:   These three parameters are used to set some default programs. [**lynx**]{.command} is a text-based web browser (see BLFS for installation instructions), [**vgrind**]{.command} converts program sources to Groff input, and [**grap**]{.command} is useful for typesetting graphs in Groff documents. The [**vgrind**]{.command} and [**grap**]{.command} programs are not normally needed for viewing manual pages. They are not part of LFS or BLFS, but you should be able to install them yourself after finishing LFS if you wish to do so.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```
::::

:::::: {.sect2 lang="en"}
## 8.78.2. Non-English Manual Pages in LFS {#non-english-manual-pages-in-lfs .sect2}

The following table shows the character set that Man-DB assumes manual pages installed under `/usr/share/man/<ll>`{.filename} will be encoded with. In addition to this, Man-DB correctly determines if manual pages installed in that directory are UTF-8 encoded.

:::: table
[]{#idm140276753085792}

**Table 8.1. Expected character encoding of legacy 8-bit manual pages**

::: table-contents
  Language (code)          Encoding     Language (code)                          Encoding
  ------------------------ ------------ ---------------------------------------- -------------
  Danish (da)              ISO-8859-1   Croatian (hr)                            ISO-8859-2
  German (de)              ISO-8859-1   Hungarian (hu)                           ISO-8859-2
  English (en)             ISO-8859-1   Japanese (ja)                            EUC-JP
  Spanish (es)             ISO-8859-1   Korean (ko)                              EUC-KR
  Estonian (et)            ISO-8859-1   Lithuanian (lt)                          ISO-8859-13
  Finnish (fi)             ISO-8859-1   Latvian (lv)                             ISO-8859-13
  French (fr)              ISO-8859-1   Macedonian (mk)                          ISO-8859-5
  Irish (ga)               ISO-8859-1   Polish (pl)                              ISO-8859-2
  Galician (gl)            ISO-8859-1   Romanian (ro)                            ISO-8859-2
  Indonesian (id)          ISO-8859-1   Greek (el)                               ISO-8859-7
  Icelandic (is)           ISO-8859-1   Slovak (sk)                              ISO-8859-2
  Italian (it)             ISO-8859-1   Slovenian (sl)                           ISO-8859-2
  Norwegian Bokmal (nb)    ISO-8859-1   Serbian Latin (sr@latin)                 ISO-8859-2
  Dutch (nl)               ISO-8859-1   Serbian (sr)                             ISO-8859-5
  Norwegian Nynorsk (nn)   ISO-8859-1   Turkish (tr)                             ISO-8859-9
  Norwegian (no)           ISO-8859-1   Ukrainian (uk)                           KOI8-U
  Portuguese (pt)          ISO-8859-1   Vietnamese (vi)                          TCVN5712-1
  Swedish (sv)             ISO-8859-1   Simplified Chinese (zh_CN)               GBK
  Belarusian (be)          CP1251       Simplified Chinese, Singapore (zh_SG)    GBK
  Bulgarian (bg)           CP1251       Traditional Chinese, Hong Kong (zh_HK)   BIG5HKSCS
  Czech (cs)               ISO-8859-2   Traditional Chinese (zh_TW)              BIG5
:::
::::

\

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Manual pages in languages not in the list are not supported.
:::
::::::

::::::::: {.content lang="en"}
## []{#contents-man-db}8.78.3. Contents of Man-DB {#contents-of-man-db .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [accessdb, apropos (link to whatis), catman, lexgrog, man, man-recode, mandb, manpath, and whatis]{.segbody}
:::

::: seg
**Installed libraries:** [libman.so and libmandb.so (both in /usr/lib/man-db)]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/man-db, /usr/libexec/man-db, and /usr/share/doc/man-db-2.13.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#accessdb}[[**accessdb**]{.command}]{.term}       Dumps the [**whatis**]{.command} database contents in human-readable form
  []{#apropos}[[**apropos**]{.command}]{.term}         Searches the [**whatis**]{.command} database and displays the short descriptions of system commands that contain a given string
  []{#catman}[[**catman**]{.command}]{.term}           Creates or updates the pre-formatted manual pages
  []{#lexgrog}[[**lexgrog**]{.command}]{.term}         Displays one-line summary information about a given manual page
  []{#man}[[**man**]{.command}]{.term}                 Formats and displays the requested manual page
  []{#man-recode}[[**man-recode**]{.command}]{.term}   Converts manual pages to another encoding
  []{#mandb}[[**mandb**]{.command}]{.term}             Creates or updates the [**whatis**]{.command} database
  []{#manpath}[[**manpath**]{.command}]{.term}         Displays the contents of \$MANPATH or (if \$MANPATH is not set) a suitable search path based on the settings in man.conf and the user\'s environment
  []{#whatis}[[**whatis**]{.command}]{.term}           Searches the [**whatis**]{.command} database and displays the short descriptions of system commands that contain the given keyword as a separate word
  []{#libman}[`libman`{.filename}]{.term}              Contains run-time support for [**man**]{.command}
  []{#libmandb}[`libmandb`{.filename}]{.term}          Contains run-time support for [**man**]{.command}
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](dbus.md "D-Bus-1.16.2"){accesskey="p"}

    D-Bus-1.16.2

-   [Next](procps-ng.md "Procps-ng-4.0.6"){accesskey="n"}

    Procps-ng-4.0.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
