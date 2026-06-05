::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python-dependencies.md "Python Dependencies"){accesskey="p"}

    Python Dependencies

-   [Next](rust.md "Rustc-1.96.0"){accesskey="n"}

    Rustc-1.96.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ruby}Ruby-4.0.5 {#ruby-4.0.5 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Ruby {#introduction-to-ruby .sect2}

The [Ruby]{.application} package contains the [Ruby]{.application} development environment. This is useful for object-oriented scripting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz](https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz){.ulink}

-   Download MD5 sum: 89be441b4ece4bda98b1d8deca3c63d6

-   Download size: 17 MB

-   Estimated disk space required: 1.8 GB (with C API docs and tests)

-   Estimated build time: 1.7 SBU (with C API docs; using parallelism=4; add 0.5 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/ruby-4.0.5-openssl4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/ruby-4.0.5-openssl4_fixes-1.patch){.ulink}
:::

### Ruby Dependencies

#### Required

[libyaml-0.2.5](libyaml.md "libyaml-0.2.5"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}, [Tk-8.6.18](tk.md "Tk-8.6.18"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated) and [DTrace](https://dtrace.org/about/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
:::::::

::::: {.installation lang="en"}
## Installation of Ruby {#installation-of-ruby .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have installed a package that provides a ruby gem, such as [asciidoctor-2.0.26](asciidoctor.md "Asciidoctor-2.0.26"){.xref}, you must reinstall those packages when upgrading to a new minor version of Ruby.
:::

First, apply a patch for compatibility with openssl4:

``` userinput
patch -Np1 -i ../ruby-4.0.5-openssl4_fixes-1.patch
```

Install [Ruby]{.application} by running the following command:

``` userinput
./configure --prefix=/usr         \
            --disable-rpath       \
            --enable-shared       \
            --without-valgrind    \
            --without-baseruby    \
            ac_cv_func_qsort_r=no \
            --docdir=/usr/share/doc/ruby-4.0.5 &&
make
```

Optionally, build the CAPI documents by running the following commands:

``` userinput
make capi
```

To test the results, issue: [**make -k check**]{.command}. If the environment has variables related to proxy settings (`all_proxy`{.envar}, `ALL_PROXY`{.envar}, `http_proxy`{.envar}, and etc.) set, the test suite will bail out early with messages like `net/ftp is not found`{.computeroutput}. Make sure that you unset these variables for the test suite.

Now, as the `root`{.systemitem} user:

``` root
XDG_DATA_HOME=/tmp make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have Ruby-On-Rails applications installed and did an upgrade of [Ruby]{.application} by installing this package, you might need to run an update there, too (as the `root`{.systemitem} user):

``` userinput
cd /path/to/web/app
bundle update rake
```

and restart the webserver which serves the application.
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-rpath`*: This switch disables embedding `/usr/lib`{.filename} as a library search path into the [**ruby**]{.command} program. Doing so is not needed (because `/usr/lib`{.filename} is a system library path) and it may cause the test suite running with the system `libruby.so`{.filename} instead of the just built one when Ruby has been installed.

*`--enable-shared`*: This switch enables building the `libruby`{.filename} shared library.

*`--without-baseruby`*: This switch prevents using the system [**ruby**]{.command} if it is already installed. The build system will use the newly built version instead.

*`ac_cv_func_qsort_r=no`*: This switch prevents using the `qsort_r`{.function} function from Glibc. Ruby makes some aggressive optimization assuming some implementation details of the sorting algorithm, but the assumption is not true with the Glibc implementation. With this switch Ruby will use its own sort implementation instead.

`--disable-install-doc`{.option}: This switch disables building and installing rdoc indexes and C API documents.

`--disable-install-rdoc`{.option}: This switch disables building and installing rdoc indexes.

`--disable-install-capi`{.option}: This switch disables building and installing C API documents.

[**XDG_DATA_HOME=/tmp ...**]{.command}: If `XDG_DATA_HOME`{.envar} is not set, the installation process creates the `$HOME/.local/share`{.filename} directory if it does not exist. Depending on the way root privileges have been acquired, this may create files owned by `root`{.systemitem} in the user home directory, or in `/root`{.filename}, which is not desirable either.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bundle, bundler, erb, gem, irb, racc, rake, rbs, rdbg, rdoc, ri, ruby, and typeprof]{.segbody}
:::

::: seg
**Installed Libraries:** [libruby.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ruby-4.0.0, /usr/lib/ruby, /usr/share/doc/ruby-4.0.5 and /usr/share/ri]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  []{#bundle}[[**bundle**]{.command}]{.term}     creates bundles of Ruby Gems
  []{#bundler}[[**bundler**]{.command}]{.term}   manages an application's dependencies throughout its lifecycle
  []{#erb}[[**erb**]{.command}]{.term}           is a command line front-end for eRuby, which provides a templating system for [Ruby]{.application}
  []{#gem}[[**gem**]{.command}]{.term}           is the command for RubyGems, which is a sophisticated package manager for [Ruby]{.application}. This is similar to Python's 'pip' command
  []{#irb}[[**irb**]{.command}]{.term}           is the interactive interface for [Ruby]{.application}
  []{#rake}[[**rake**]{.command}]{.term}         is a make-like build utility for [Ruby]{.application}
  []{#rdbg}[[**rdbg**]{.command}]{.term}         is an interactive debugger for [Ruby]{.application}
  []{#rdoc}[[**rdoc**]{.command}]{.term}         generates [Ruby]{.application} documentation
  []{#ri}[[**ri**]{.command}]{.term}             displays documentation from a database on [Ruby]{.application} classes, modules, and methods
  []{#ruby-prog}[[**ruby**]{.command}]{.term}    is an interpreted scripting language for quick and easy object-oriented programming
  []{#libruby}[`libruby.so`{.filename}]{.term}   contains the API functions required by [Ruby]{.application}
  ---------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](python-dependencies.md "Python Dependencies"){accesskey="p"}

    Python Dependencies

-   [Next](rust.md "Rustc-1.96.0"){accesskey="n"}

    Rustc-1.96.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
