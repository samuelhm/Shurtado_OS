::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](slang.md "slang-2.3.3"){accesskey="p"}

    slang-2.3.3

-   [Next](svnserver.md "Running a Subversion Server"){accesskey="n"}

    Running a Subversion Server

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#subversion}Subversion-1.14.5 {#subversion-1.14.5 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Subversion {#introduction-to-subversion .sect2}

[Subversion]{.application} is a version control system that is designed to be a compelling replacement for [CVS]{.application} in the open source community. It extends and enhances [CVS]{.application}' feature set, while maintaining a similar interface for those already familiar with [CVS]{.application}. These instructions install the client and server software used to manipulate a [Subversion]{.application} repository. Creation of a repository is covered at [Running a Subversion Server](svnserver.md "Running a Subversion Server"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/subversion/subversion-1.14.5.tar.bz2](https://archive.apache.org/dist/subversion/subversion-1.14.5.tar.bz2){.ulink}

-   Download MD5 sum: af6001dc7af2f1242a4f72e8a5c565d2

-   Download size: 8.3 MB

-   Estimated disk space required: 260 MB (add 189 MB for bindings, 54 MB for docs, 1.3 GB for tests)

-   Estimated build time: 1.5 SBU (Using parallelism=4; add 2.0 SBU for bindings, 30 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/subversion-1.14.5-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/subversion-1.14.5-upstream_fixes-1.patch){.ulink}
:::

### Subversion Dependencies

#### Required

[Apr-Util-1.6.3](apr-util.md "Apr-Util-1.6.3"){.xref}

#### Recommended

[Serf-1.3.10](../basicnet/serf.md "Serf-1.3.10"){.xref} (for handling http:// and https:// URLs) and [SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref} (for regenerating the build system)

#### Optional

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref}, [Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref}, [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for generating HTML documentation), [gnome-keyring-50.0](../gnome/gnome-keyring.md "gnome-keyring-50.0"){.xref}, [libsecret-0.21.7](../gnome/libsecret.md "libsecret-0.21.7"){.xref}, [Py3c-1.4](python-modules.md#py3c "Py3c-1.4"){.xref} (for the python bindings, and tests), [Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}, [SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref}, and [UTF8proc](https://juliastrings.github.io/utf8proc/){.ulink}

#### Optional (for the Java Bindings)

One of [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref}, [Dante](https://www.inet.no/dante/){.ulink} or [Jikes](https://jikes.sourceforge.net/){.ulink}, [JUnit 4](https://junit.org/junit4/){.ulink} (to test the Java bindings) and [apache-ant-1.10.17](apache-ant.md "apache-ant-1.10.17"){.xref}.
::::::

::: {.installation lang="en"}
## Installation of Subversion {#installation-of-subversion .sect2}

First, fix several problems with Python 3.14 and SWIG-4.4:

``` userinput
patch -Np1 -i ../subversion-1.14.5-upstream_fixes-1.patch
```

Install [Subversion]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr            \
            --disable-static         \
            --with-apache-libexecdir \
            --with-utf8proc=internal &&
make
```

If you have [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} installed and you wish to build the API documentation, issue:

``` userinput
doxygen doc/doxygen.conf
```

If you wish to build the Java bindings pass the `--enable-javahl`{.option} parameter to the [**configure**]{.command} command. In addition, if you want to run the Java test suite, you have to specify the location of the [JUnit]{.application} file by adding `--with-junit=<path to junit jar>`{.option} (for instance `--with-junit=/usr/local/java/lib/junit-4.13.jar`{.option}) to [**configure**]{.command}. The JUnit jar file is no longer included in [apache-ant-1.10.17](apache-ant.md "apache-ant-1.10.17"){.xref} and must be downloaded separately. To build the Java bindings, issue the following command:

``` screen
make -j1 javahl
```

If you are going to compile the [Ruby]{.application} bindings, set the C standard to prevent the build from failing:

``` screen
sed -i 's/Wno-int-to-pointer-cast/std=gnu17/' Makefile
```

If you want to compile [Perl]{.application}, [Python]{.application}, or [Ruby]{.application} bindings, issue any of the following command:

``` screen
make swig-pl # for Perl
make swig-py \
     swig_pydir=/usr/lib/python3.14/site-packages/libsvn \
     swig_pydir_extra=/usr/lib/python3.14/site-packages/svn # for Python
make swig-rb # for Ruby
```

To test the results, issue: [**make check**]{.command}. Four tests in the `commit_tests.py`{.filename}, `prop_tests.py`{.filename}, and `update_tests.py`{.filename} suites are known to fail due to output differences with newer versions of Python.

To test the results of any of the [SWIG]{.application} bindings, you can use any of the following commands: [**make check-swig-pl**]{.command}, [**make check-swig-py**]{.command}, or [**make check-swig-rb**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755 -d /usr/share/doc/subversion-1.14.5 &&
cp      -v -R doc/* /usr/share/doc/subversion-1.14.5
```

If you built the Java bindings, issue the following command as the `root`{.systemitem} user to install them:

``` screen
make install-javahl
```

If you built the [Perl]{.application}, [Python]{.application}, or [Ruby]{.application} bindings, issue any of the following commands as the `root`{.systemitem} user to install them:

``` screen
make install-swig-pl
make install-swig-py \
      swig_pydir=/usr/lib/python3.14/site-packages/libsvn \
      swig_pydir_extra=/usr/lib/python3.14/site-packages/svn
make install-swig-rb
```

The java bindings need to be installed in order for the tests to run, since the tests attempt to look for them in CLASSPATH. To test the results of the Java bindings build, issue [**LANG=C make check-javahl**]{.command}.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-apache-libexecdir`*: If [Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref} is installed, the shared [Apache]{.application} modules are built. This switch allows to have those modules installed to [Apache]{.application}'s configured module dir instead of `/usr/libexec`{.filename}. It has no effect if [Apache]{.application} is not installed.

*`--with-utf8proc=internal`*: Remove these switches if you have installed the optional dependencies.

`--enable-javahl`{.option}: enables compilation of Java high level bindings. Running [**make javahl**]{.command} is necessary to do the compilation.

`--with-junit=<location of the junit jar file>`{.option}: gives the location of the junit jar, otherwise the javahl tests cannot be run.

`--disable-gmock`{.option}: Do not use the Googlemock testing framework.
:::

::::: {.configuration lang="en"}
## Configuring Subversion {#configuring-subversion .sect2}

::: {.sect3 lang="en"}
### []{#subversion-config}Config Files {#config-files .sect3}

`~/.subversion/config`{.filename} and `/etc/subversion/config`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

`/etc/subversion/config`{.filename} is the [Subversion]{.application} system-wide configuration file. This file is used to specify defaults for different [**svn**]{.command} commands.

`~/.subversion/config`{.filename} is the user's personal configuration file. It is used to override the system-wide defaults set in `/etc/subversion/config`{.filename}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [svn, svnadmin, svnbench, svndumpfilter, svnfsfs, svnlook, svnmucc, svnrdump, svnserve, svnsync, and svnversion]{.segbody}
:::

::: seg
**Installed Libraries:** [libsvn\_\*-1.so and optionally, a Java library, the mod_dav_svn.so and mod_authz_svn.so [Apache HTTP]{.application} DSO modules and various [Perl]{.application}, [Python]{.application} and [Ruby]{.application} modules.]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/subversion-1, /usr/lib/perl5/site_perl/5.42/{,auto/}SVN, /usr/lib/python3.14/site-packages/{libsvn,svn}, /usr/lib/ruby/site_ruby/\<x.y.z\>/{,\<arch-linux\>-linux/}svn, /usr/lib/svn-javahl, and /usr/share/doc/subversion-1.14.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#svn}[[**svn**]{.command}]{.term}                       is a command-line client program used to access [Subversion]{.application} repositories
  []{#svnadmin}[[**svnadmin**]{.command}]{.term}             is a tool for creating, tweaking or repairing a [Subversion]{.application} repository
  []{#svnbench}[[**svnbench**]{.command}]{.term}             is a benchmarking tool
  []{#svndumpfilter}[[**svndumpfilter**]{.command}]{.term}   is a program for filtering [Subversion]{.application} repository dumpfile format streams
  []{#svnfsfs}[[**svnfsfs**]{.command}]{.term}               is the FSFS (FileSystem atop of the FileSystem - [Subversion]{.application} filesystem implementation) repository manipulation tool
  []{#svnlook}[[**svnlook**]{.command}]{.term}               is a tool for inspecting a [Subversion]{.application} repository
  []{#svnmucc}[[**svnmucc**]{.command}]{.term}               is a Multiple URL Command Client for [Subversion]{.application}
  []{#svnrdump}[[**svnrdump**]{.command}]{.term}             is a tool for dumping or loading a remote [Subversion]{.application} repository
  []{#svnserve}[[**svnserve**]{.command}]{.term}             is a custom standalone server program, able to run as a daemon process or invoked by SSH
  []{#svnsync}[[**svnsync**]{.command}]{.term}               is a [Subversion]{.application} repository synchronisation tool
  []{#svnversion}[[**svnversion**]{.command}]{.term}         is used to report the version number and state of a working [Subversion]{.application} repository copy
  []{#libsvn_star-1}[`libsvn_*-1.so`{.filename}]{.term}      are the support libraries used by the [Subversion]{.application} programs
  []{#mod_authz_svn}[`mod_authz_svn.so`{.filename}]{.term}   is a plug-in module for the [Apache]{.application} HTTP server, used to authenticate users to a [Subversion]{.application} repository over the Internet or an intranet
  []{#mod_dav_svn}[`mod_dav_svn.so`{.filename}]{.term}       is a plug-in module for the [Apache]{.application} HTTP server, used to make a [Subversion]{.application} repository available to others over the Internet or an intranet
  ---------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](slang.md "slang-2.3.3"){accesskey="p"}

    slang-2.3.3

-   [Next](svnserver.md "Running a Subversion Server"){accesskey="n"}

    Running a Subversion Server

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
