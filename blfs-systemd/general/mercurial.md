::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](luajit.md "luajit-20260213"){accesskey="p"}

    luajit-20260213

-   [Next](nasm.md "NASM-3.01"){accesskey="n"}

    NASM-3.01

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mercurial}Mercurial-7.2.2 {#mercurial-7.2.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Mercurial {#introduction-to-mercurial .sect2}

[Mercurial]{.application} is a distributed source control management tool similar to [Git]{.application} and [Bazaar]{.application}. [Mercurial]{.application} is written in [Python]{.application} and is used by projects such as Mozilla for Firefox and Thunderbird.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.mercurial-scm.org/release/mercurial-7.2.2.tar.gz](https://www.mercurial-scm.org/release/mercurial-7.2.2.tar.gz){.ulink}

-   Download MD5 sum: 9a637d4fc411da358cfa341cd18d0a12

-   Download size: 8.8 MB

-   Estimated disk space required: 124 MB (with docs, add 2.5 GB for tests)

-   Estimated build time: 0.3 SBU (with docs; add 24 SBU for tests; both using parallelism=4)
:::

### Mercurial Dependencies

#### Required

[setuptools_scm-9.2.2](python-dependencies.md#setuptools_scm "Setuptools_scm-9.2.2"){.xref}

#### Optional

[build-1.5.0](python-modules.md#pypa-build "build-1.5.0"){.xref}, [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} (required to build the documentation), [git-2.54.0](git.md "Git-2.54.0"){.xref}, [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} (runtime, to access ssh://... repositories), [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref} (see `rust/README.rst`{.filename} and `rust/rhg/README.md`{.filename}), [Subversion-1.14.5](subversion.md "Subversion-1.14.5"){.xref} (with Python bindings), [uv_build-0.10.2](python-dependencies.md#uv_build "uv_build-0.10.2"){.xref} (for an alternate build method), [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref} (used in one test), [CVS](https://www.nongnu.org/cvs/){.ulink}, [pyflakes](https://pypi.python.org/pypi/pyflakes){.ulink}, and [re2](https://github.com/google/re2/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Mercurial {#installation-of-mercurial .sect2}

First, remove some commands that conflict with openssl4:

``` root
sed -i "15,23 s/^/#/" setup.py
```

[Mercurial]{.application} is built and installed in a single command as the `root`{.systemitem} user:

``` root
make PREFIX=/usr install
```

The documentation is built by the above command (in man and html formats), but only the manual pages are installed. If you wish to install the html documentation, issue as the `root`{.systemitem} user:

``` root
mkdir /usr/share/doc/mercurial-7.2.2 &&
cp -R doc/html /usr/share/doc/mercurial-7.2.2
```

In order to run the tests, make sure all the files are owned by an unprivileged user. This fixes a problem with permissions in the build directory since the above [**install**]{.command} command has created files owned by `root`{.systemitem}. To remedy this, issue, as the `root`{.systemitem} user:

``` root
chown -Rv username .
```

Where *`username`* should be replaced with the user name of the person running the tests.

The test suite tries to run some tests that are incompatible with [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}. Remove them with:

``` userinput
sed -i "177,181 s/^/#/" Makefile
```

Now, run the test suite with:

``` userinput
TESTFLAGS="-j<N> --with-hg /usr/bin/hg" make check
```

where *`<N>`* is an integer between one and the number of ( processor X threads ), inclusive (default is the total number of processors as returned by [**nproc**]{.command}). Tests may fail because some error messages have changed in Python or some deprecation warnings are printed that were not present when the test was designed. Also, some tests use a lot of memory, and may be killed by the kernel if the system is running low on memory.

In order to investigate any apparently failing tests, you may use the [**run-tests.py**]{.command} script in the `tests`{.filename} directory. To see the almost forty switches, some of them very useful, issue [**tests/run-tests.py --help**]{.command}. Running the following commands, you will execute only the tests that failed before:

``` userinput
pushd tests  &&
  ./run-tests.py --with-hg /usr/bin/hg --retest
popd
```

An interesting switch is `--time`{.option}, which will generate a table of all the executed tests and their respective start, end, user, system and real times once the tests are complete. Note that these switches may be used with [**make check**]{.command} by including them in the `TESTFLAGS`{.envar} environment variable.

After installation, two very quick and simple tests should run correctly. The first one needs some configuration:

``` userinput
cat >> ~/.hgrc << "EOF"
[ui]
username = <user_name> <user@mail>
EOF
```

where you must replace \<user_name\> and \<user@mail\> (mail is optional and can be omitted, but if you keep it, you should also keep the angle brackets [“[\<\>]{.quote}”]{.quote}). With the user identity defined, run [**hg debuginstall**]{.command} and several lines will be displayed, the last one reading "no problems detected". Another quick and simple test is just [**hg**]{.command}, which should output basic commands that can be used with [**hg**]{.command}.
:::

:::: {.configuration lang="en"}
## Configuring Mercurial {#configuring-mercurial .sect2}

::: {.sect3 lang="en"}
### []{#mercurial-config}Config Files {#config-files .sect3}

`/etc/mercurial/hgrc`{.filename} and `~/.hgrc`{.filename}

The great majority of extensions are disabled by default. Run [**hg help extensions**]{.command} if you need to enable any, e.g. when investigating test failures. This will output a list of enabled and disabled extensions, as well as more information such as how to enable or disable extensions using configuration files.

If you have installed [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} and want [Mercurial]{.application} to use the certificates, as the `root`{.systemitem} user, issue:

``` root
install -v -d -m755 /etc/mercurial &&
cat > /etc/mercurial/hgrc << "EOF"
[web]
cacerts = /etc/pki/tls/certs/ca-bundle.crt
EOF
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [hg]{.segbody}
:::

::: seg
**Installed Libraries:** [numerous internal modules under /usr/lib/python3.14/site-packages/mercurial]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/mercurial, /usr/lib/python3.14/site-packages/hgdemandimport, /usr/lib/python3.14/site-packages/hgext, /usr/lib/python3.14/site-packages/hgext3rd, /usr/lib/python3.14/site-packages/mercurial, /usr/lib/python3.14/site-packages/mercurial-7.2.2.dist-info, and /usr/share/doc/mercurial-7.2.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------ -----------------------------------------
  []{#hg}[[**hg**]{.command}]{.term}   is the mercurial version control system
  ------------------------------------ -----------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](luajit.md "luajit-20260213"){accesskey="p"}

    luajit-20260213

-   [Next](nasm.md "NASM-3.01"){accesskey="n"}

    NASM-3.01

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
