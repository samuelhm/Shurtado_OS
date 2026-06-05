::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](svnserver.md "Running a Subversion Server"){accesskey="p"}

    Running a Subversion Server

-   [Next](tk.md "Tk-8.6.18"){accesskey="n"}

    Tk-8.6.18

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#swig}SWIG-4.4.1 {#swig-4.4.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SWIG {#introduction-to-swig .sect2}

[SWIG]{.application} (Simplified Wrapper and Interface Generator) is a compiler that integrates [C]{.application} and [C++]{.application} with languages including [Perl]{.application}, [Python]{.application}, [Tcl]{.application}, [Ruby]{.application}, [PHP]{.application}, [Java]{.application}, [JavaScript]{.application}, [C#]{.application}, [D]{.application}, [Go]{.application}, [Lua]{.application}, [Octave]{.application}, [R]{.application}, [Racket]{.application}, [Scilab]{.application}, [Scheme]{.application}, and [Ocaml]{.application}. [SWIG]{.application} can also export its parse tree into [Lisp]{.application} s-expressions and [XML]{.application}.

[SWIG]{.application} reads annotated [C/C++]{.application} header files and creates wrapper code (glue code) in order to make the corresponding [C/C++]{.application} libraries available to the listed languages, or to extend [C/C++]{.application} programs with a scripting language.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/swig/swig-4.4.1.tar.gz](https://downloads.sourceforge.net/swig/swig-4.4.1.tar.gz){.ulink}

-   Download MD5 sum: 775105851d39ab2fbf093ad743cb1e0a

-   Download size: 8.3 MB

-   Estimated disk space required: 93 MB (2.5 GB with tests)

-   Estimated build time: 0.2 SBU (add up to 50 SBU for tests depending on languages installed; both using parallelism=4)
:::

### SWIG Dependencies

#### Optional

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref} for tests, and any of the languages mentioned in the introduction, as run-time dependencies
:::::

::: {.installation lang="en"}
## Installation of SWIG {#installation-of-swig .sect2}

Install [SWIG]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make JSCXX=g++ TCL_INCLUDE= -k check**]{.command}. The unsetting of the variable `TCL_INCLUDE`{.envar} is necessary since it is not correctly set by [*configure*]{.emphasis}. The tests are only executed for the languages installed on your machine, so the disk space and SBU values given for the tests may vary, and should be considered as mere orders of magnitude. According to [SWIG]{.application}'s documentation, the failure of some tests should not be considered harmful. The go tests are buggy and may generate a lot of meaningless output. 8 of the tests in the JavaScript suite are known to fail.

Now, as the `root`{.systemitem} user:

``` root
make install &&
cp -v -R Doc -T /usr/share/doc/swig-4.4.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--without-<language>`{.option}: allows disabling the building of tests and examples for \<language\>, but all the languages capabilities of [SWIG]{.application} are always built.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [swig and ccache-swig]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/swig-4.4.1 and /usr/share/swig]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#swig-prog}[[**swig**]{.command}]{.term}            takes an interface file containing C/C++ declarations and SWIG special instructions, and generates the corresponding wrapper code needed to build extension modules
  []{#ccache-swig}[[**ccache-swig**]{.command}]{.term}   is a compiler cache, which speeds up re-compilation of C/C++/SWIG code
  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](svnserver.md "Running a Subversion Server"){accesskey="p"}

    Running a Subversion Server

-   [Next](tk.md "Tk-8.6.18"){accesskey="n"}

    Tk-8.6.18

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
