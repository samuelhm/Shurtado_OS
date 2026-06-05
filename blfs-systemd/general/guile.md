::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gitserver.md "Running a Git Server"){accesskey="p"}

    Running a Git Server

-   [Next](llvm.md "LLVM-22.1.0"){accesskey="n"}

    LLVM-22.1.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#guile}Guile-3.0.11 {#guile-3.0.11 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Guile {#introduction-to-guile .sect2}

The [Guile]{.application} package contains the GNU Project's extension language library. [Guile]{.application} also contains a stand alone [Scheme]{.application} interpreter.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/guile/guile-3.0.11.tar.xz](https://ftpmirror.gnu.org/guile/guile-3.0.11.tar.xz){.ulink}

-   Download MD5 sum: f215f364387f6c9b008efaa11e8079dc

-   Download size: 5.6 MB

-   Estimated disk space required: 195 MB (add 3 MB for tests)

-   Estimated build time: 4.2 SBU (Using parallelism=4; add 0.3 SBU for tests)
:::

### Guile Dependencies

#### Required

[GC-8.2.12](gc.md "GC-8.2.12"){.xref} and [libunistring-1.4.2](libunistring.md "libunistring-1.4.2"){.xref}

#### Optional

[Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref} and [GDB-17.2](gdb.md "GDB-17.2"){.xref} (run-time only dependencies).
:::::

::: {.installation lang="en"}
## Installation of Guile {#installation-of-guile .sect2}

Install [Guile]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/guile-3.0.11 &&
make      &&
make html &&

makeinfo --plaintext -o doc/r5rs/r5rs.txt doc/r5rs/r5rs.texi &&
makeinfo --plaintext -o doc/ref/guile.txt doc/ref/guile.texi
```

When running the test suite, first remove a failing test that halts the tests: [**rm test-suite/tests/srfi-207.test**]{.command}. Then to test the results, issue: [**./check-guile**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install      &&
make install-html &&

mkdir -p                       /usr/share/gdb/auto-load/usr/lib &&
mv /usr/lib/libguile-*-gdb.scm /usr/share/gdb/auto-load/usr/lib &&
mv /usr/share/doc/guile-3.0.11/{guile.html,ref} &&
mv /usr/share/doc/guile-3.0.11/r5rs{.html,}     &&

find examples -name "Makefile*" -delete         &&
cp -vR examples   /usr/share/doc/guile-3.0.11   &&

for DIRNAME in r5rs ref; do
  install -v -m644  doc/${DIRNAME}/*.txt \
                    /usr/share/doc/guile-3.0.11/${DIRNAME}
done &&
unset DIRNAME
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
**Installed Programs:** [guild, guile, guile-config, guile-snarf and guile-tools]{.segbody}
:::

::: seg
**Installed Libraries:** [libguile-3.0.so and guile-readline.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/guile, /usr/lib/guile, /usr/share/doc/guile-3.0.11 and /usr/share/guile]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#guile-prog}[[**guile**]{.command}]{.term}            is a stand-alone Scheme interpreter for [Guile]{.application}
  []{#guile-config}[[**guile-config**]{.command}]{.term}   is a [Guile]{.application} script which provides the information necessary to link your programs against the [Guile]{.application} library, in much the same way PkgConfig does
  []{#guile-snarf}[[**guile-snarf**]{.command}]{.term}     is a script to parse declarations in your [C]{.application} code for [Scheme]{.application} visible [C]{.application} functions
  []{#guild}[[**guild**]{.command}]{.term}                 is a wrapper program installed along with [**guile**]{.command}, which knows where a particular module is installed and calls it, passing its arguments to the program
  []{#guile-tools}[[**guile-tools**]{.command}]{.term}     is a symlink to [**guild**]{.command}
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gitserver.md "Running a Git Server"){accesskey="p"}

    Running a Git Server

-   [Next](llvm.md "LLVM-22.1.0"){accesskey="n"}

    LLVM-22.1.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
