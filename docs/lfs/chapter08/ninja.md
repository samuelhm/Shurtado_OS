::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](setuptools.md "Setuptools-82.0.1"){accesskey="p"}

    Setuptools-82.0.1

-   [Next](meson.md "Meson-1.11.1"){accesskey="n"}

    Meson-1.11.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-ninja}8.56. Ninja-1.13.2 {#ninja-1.13.2 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Ninja is a small build system with a focus on speed.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [43 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.56.1. Installation of Ninja {#installation-of-ninja .sect2}

When run, [**ninja**]{.command} normally utilizes the greatest possible number of processes in parallel. By default this is the number of cores on the system, plus two. This may overheat the CPU, or make the system run out of memory. When [**ninja**]{.command} is invoked from the command line, passing the -jN parameter will limit the number of parallel processes. Some packages embed the execution of [**ninja**]{.command}, and do not pass the -j parameter on to it.

Using the [*optional*]{.emphasis} procedure below allows a user to limit the number of parallel processes via an environment variable, NINJAJOBS. [**For example**]{.bold}, setting:

``` screen
export NINJAJOBS=4
```

will limit [**ninja**]{.command} to four parallel processes.

If desired, make [**ninja**]{.command} recognize the environment variable NINJAJOBS by running the stream editor:

``` userinput
sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc
```

Build Ninja with:

``` userinput
python3 configure.py --bootstrap --verbose
```

::: variablelist
**The meaning of the build option:**

[*`--bootstrap`*]{.term}

:   This parameter forces Ninja to rebuild itself for the current system.

[*`--verbose`*]{.term}

:   This parameter makes [**configure.py**]{.command} show the progress building Ninja.
:::

The package tests cannot run in the chroot environment. They require [cmake](https://www.linuxfromscratch.org/blfs/view/systemd/general/cmake.html){.ulink}. But the basic function of this package is already tested by rebuilding itself (with the *`--bootstrap`* option) anyway.

Install the package:

``` userinput
install -vm755 ninja /usr/bin/
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  /usr/share/zsh/site-functions/_ninja
```
::::

::::::: {.content lang="en"}
## []{#contents-ninja}8.56.2. Contents of Ninja {#contents-of-ninja .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [ninja]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------ ---------------------------
  []{#ninja}[[**ninja**]{.command}]{.term}   is the Ninja build system
  ------------------------------------------ ---------------------------
:::
:::::::
:::::::::::::::

::: navfooter
-   [Prev](setuptools.md "Setuptools-82.0.1"){accesskey="p"}

    Setuptools-82.0.1

-   [Next](meson.md "Meson-1.11.1"){accesskey="n"}

    Meson-1.11.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
