::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](appstream-glib.md "appstream-glib-0.8.3"){accesskey="p"}

    appstream-glib-0.8.3

-   [Next](apr-util.md "Apr-Util-1.6.3"){accesskey="n"}

    Apr-Util-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#apr}Apr-1.7.6 {#apr-1.7.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Apr {#introduction-to-apr .sect2}

The Apache Portable Runtime (APR) is a supporting library for the Apache web server. It provides a set of application programming interfaces (APIs) that map to the underlying Operating System (OS). Where the OS doesn't support a particular function, APR will provide an emulation. Thus programmers can use the APR to make a program portable across different platforms.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/apr/apr-1.7.6.tar.bz2](https://archive.apache.org/dist/apr/apr-1.7.6.tar.bz2){.ulink}

-   Download MD5 sum: 2ebb58910e426e5a83af97bc94cae66d

-   Download size: 879 KB

-   Estimated disk space required: 11 MB (additional 4 MB for the tests)

-   Estimated build time: 0.2 SBU (add 1.7 SBU for tests)
:::
:::::

::: {.installation lang="en"}
## Installation of Apr {#installation-of-apr .sect2}

Install [Apr]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --with-installbuilddir=/usr/share/apr-1/build &&
make
```

To test the results, issue: [**make test**]{.command}.

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
**Installed Program:** [apr-1-config]{.segbody}
:::

::: seg
**Installed Library:** [libapr-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/apr-1 and /usr/share/apr-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------
  []{#apr-1-config}[[**apr-1-config**]{.command}]{.term}   is a shell script used to retrieve information about the apr library in the system. It is typically used to compile and link against the library
  []{#libapr-1}[`libapr-1.so`{.filename}]{.term}           is the Apache Portable Runtime library
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](appstream-glib.md "appstream-glib-0.8.3"){accesskey="p"}

    appstream-glib-0.8.3

-   [Next](apr-util.md "Apr-Util-1.6.3"){accesskey="n"}

    Apr-Util-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
