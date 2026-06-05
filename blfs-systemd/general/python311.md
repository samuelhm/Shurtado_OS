::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python3.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](python-modules.md "Python Modules"){accesskey="n"}

    Python Modules

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#python311}Python-3.11.1 {#python-3.11.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Python 3.11 {#introduction-to-python-3.11 .sect2}

The [Python 3.11]{.application} package contains an older version of the [Python]{.application} development environment. This is [**only**]{.bold} needed for building [seamonkey-2.53.23](../xsoft/seamonkey.md "Seamonkey-2.53.23"){.xref} because its build system has not been updated to support [Python-3.14.5](python3.md "Python-3.14.5"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Do NOT install this package if you are not installing Seamonkey.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tar.xz](https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tar.xz){.ulink}

-   Download MD5 sum: 4efe92adf28875c77d3b9b2e8d3bc44a

-   Download size: 19 MB

-   Estimated disk space required: 301 MB

-   Estimated build time: 1.1 SBU (Using parallelism=4)
:::
::::::

::: {.installation lang="en"}
## Installation of Python 3.11 {#installation-of-python-3.11 .sect2}

Install [Python 3.11]{.application} by running the following commands:

``` userinput
./configure --prefix=/opt/python3.11 \
            --disable-shared         \
            --with-system-expat      \
            --without-static-libpython &&
make
```

Since this package is only used in very limited situations, tests are not recommended.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**CXX="/usr/bin/g++" ./configure ...**]{.command}: Avoid an annoying message during configuration.

*`--prefix=/opt/python3.11`*: This installs python 3.11 into /opt in order to avoid conflicts with the system version of python, and allows for easy removal/isolation once programs update to python3.12 or later.

*`--disable-shared`*: This switch disables building shared libraries. Since all the packages that need python-3.11 have built in modules and don't directly link to python, it is safe to turn off shared library support.

*`--with-system-expat`*: This switch enables linking against the system version of [Expat]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [python3.11]{.segbody}
:::

::: seg
**Installed Libraries:** [libpython3.11.a]{.segbody}
:::

::: seg
**Installed Directories:** [/opt/python3.11/include/python3.11, and /opt/python3.11/lib/python3.11,]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------------
  []{#python311-ver}[[**python3.11**]{.command}]{.term}   is a version-specific name for the [**python**]{.command} program
  ------------------------------------------------------- -------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](python3.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](python-modules.md "Python Modules"){accesskey="n"}

    Python Modules

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
