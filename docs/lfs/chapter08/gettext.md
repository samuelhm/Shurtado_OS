::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](psmisc.md "Psmisc-23.7"){accesskey="p"}

    Psmisc-23.7

-   [Next](bison.md "Bison-3.8.2"){accesskey="n"}

    Bison-3.8.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gettext}8.34. Gettext-1.0 {#gettext-1.0 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gettext package contains utilities for internationalization and localization. These allow programs to be compiled with NLS (Native Language Support), enabling them to output messages in the user\'s native language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [2.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [447 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.34.1. Installation of Gettext {#installation-of-gettext .sect2}

Prepare Gettext for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-1.0
```

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
chmod -v 0755 /usr/lib/preloadable_libintl.so
```
:::

::::::::: {.content lang="en"}
## []{#contents-gettext}8.34.2. Contents of Gettext {#contents-of-gettext .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [autopoint, envsubst, gettext, gettext.sh, gettextize, msgattrib, msgcat, msgcmp, msgcomm, msgconv, msgen, msgexec, msgfilter, msgfmt, msggrep, msginit, msgmerge, msgunfmt, msguniq, ngettext, recode-sr-latin, and xgettext]{.segbody}
:::

::: seg
**Installed libraries:** [libasprintf.so, libgettextlib.so, libgettextpo.so, libgettextsrc.so, libtextstyle.so, and preloadable_libintl.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/gettext, /usr/share/doc/gettext-1.0, /usr/share/gettext, and /usr/share/gettext-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#autopoint}[[**autopoint**]{.command}]{.term}                    Copies standard Gettext infrastructure files into a source package
  []{#envsubst}[[**envsubst**]{.command}]{.term}                      Substitutes environment variables in shell format strings
  []{#gettext}[[**gettext**]{.command}]{.term}                        Translates a natural language message into the user\'s language by looking up the translation in a message catalog
  []{#gettext.sh}[[**gettext.sh**]{.command}]{.term}                  Primarily serves as a shell function library for gettext
  []{#gettextize}[[**gettextize**]{.command}]{.term}                  Copies all standard Gettext files into the given top-level directory of a package to begin internationalizing it
  []{#msgattrib}[[**msgattrib**]{.command}]{.term}                    Filters the messages of a translation catalog according to their attributes and manipulates the attributes
  []{#msgcat}[[**msgcat**]{.command}]{.term}                          Concatenates and merges the given `.po`{.filename} files
  []{#msgcmp}[[**msgcmp**]{.command}]{.term}                          Compares two `.po`{.filename} files to check that both contain the same set of msgid strings
  []{#msgcomm}[[**msgcomm**]{.command}]{.term}                        Finds the messages that are common to the given `.po`{.filename} files
  []{#msgconv}[[**msgconv**]{.command}]{.term}                        Converts a translation catalog to a different character encoding
  []{#msgen}[[**msgen**]{.command}]{.term}                            Creates an English translation catalog
  []{#msgexec}[[**msgexec**]{.command}]{.term}                        Applies a command to all translations of a translation catalog
  []{#msgfilter}[[**msgfilter**]{.command}]{.term}                    Applies a filter to all translations of a translation catalog
  []{#msgfmt}[[**msgfmt**]{.command}]{.term}                          Generates a binary message catalog from a translation catalog
  []{#msggrep}[[**msggrep**]{.command}]{.term}                        Extracts all messages of a translation catalog that match a given pattern or belong to some given source files
  []{#msginit}[[**msginit**]{.command}]{.term}                        Creates a new `.po`{.filename} file, initializing the meta information with values from the user\'s environment
  []{#msgmerge}[[**msgmerge**]{.command}]{.term}                      Combines two raw translations into a single file
  []{#msgunfmt}[[**msgunfmt**]{.command}]{.term}                      Decompiles a binary message catalog into raw translation text
  []{#msguniq}[[**msguniq**]{.command}]{.term}                        Unifies duplicate translations in a translation catalog
  []{#ngettext}[[**ngettext**]{.command}]{.term}                      Displays native language translations of a textual message whose grammatical form depends on a number
  []{#recode-sr-latin}[[**recode-sr-latin**]{.command}]{.term}        Recodes Serbian text from Cyrillic to Latin script
  []{#xgettext}[[**xgettext**]{.command}]{.term}                      Extracts the translatable message lines from the given source files to make the first translation template
  []{#libasprintf}[`libasprintf`{.filename}]{.term}                   Defines the [*autosprintf*]{.emphasis} class, which makes C formatted output routines usable in C++ programs, for use with the [*\<string\>*]{.emphasis} strings and the [*\<iostream\>*]{.emphasis} streams
  []{#libgettextlib}[`libgettextlib`{.filename}]{.term}               Contains common routines used by the various Gettext programs; these are not intended for general use
  []{#libgettextpo}[`libgettextpo`{.filename}]{.term}                 Used to write specialized programs that process `.po`{.filename} files; this library is used when the standard applications shipped with Gettext (such as [**msgcomm**]{.command}, [**msgcmp**]{.command}, [**msgattrib**]{.command}, and [**msgen**]{.command}) will not suffice
  []{#libgettextsrc}[`libgettextsrc`{.filename}]{.term}               Provides common routines used by the various Gettext programs; these are not intended for general use
  []{#libtextstyle}[`libtextstyle`{.filename}]{.term}                 Text styling library
  []{#preloadable_libintl}[`preloadable_libintl`{.filename}]{.term}   A library, intended to be used by LD_PRELOAD, that helps `libintl`{.filename} log untranslated messages
  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](psmisc.md "Psmisc-23.7"){accesskey="p"}

    Psmisc-23.7

-   [Next](bison.md "Bison-3.8.2"){accesskey="n"}

    Bison-3.8.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
