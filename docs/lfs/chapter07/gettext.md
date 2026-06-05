::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](createfiles.md "Creating Essential Files and Symlinks"){accesskey="p"}

    Creating Essential Files and Symlinks

-   [Next](bison.md "Bison-3.8.2"){accesskey="n"}

    Bison-3.8.2

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-gettext}7.7. Gettext-1.0 {#gettext-1.0 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gettext package contains utilities for internationalization and localization. These allow programs to be compiled with NLS (Native Language Support), enabling them to output messages in the user\'s native language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [526 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 7.7.1. Installation of Gettext {#installation-of-gettext .sect2}

For our temporary set of tools, we only need to install three programs from Gettext.

Prepare Gettext for compilation:

``` userinput
./configure --disable-shared
```

::: variablelist
**The meaning of the configure option:**

[*`--disable-shared`*]{.term}

:   We do not need to install any of the shared Gettext libraries at this time, therefore there is no need to build them.
:::

Compile the package:

``` userinput
make
```

Install the [**msgfmt**]{.command}, [**msgmerge**]{.command}, and [**xgettext**]{.command} programs:

``` userinput
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.34.2, "Contents of Gettext."](../chapter08/gettext.md#contents-gettext "8.34.2. Contents of Gettext"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](createfiles.md "Creating Essential Files and Symlinks"){accesskey="p"}

    Creating Essential Files and Symlinks

-   [Next](bison.md "Bison-3.8.2"){accesskey="n"}

    Bison-3.8.2

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
