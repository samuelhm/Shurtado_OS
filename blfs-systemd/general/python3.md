::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](php.md "PHP-8.5.6"){accesskey="p"}

    PHP-8.5.6

-   [Next](python311.md "Python-3.11.1"){accesskey="n"}

    Python-3.11.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#python3}Python-3.14.5 {#python-3.14.5 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
:::::::::: {.package lang="en"}
## Introduction to Python 3 {#introduction-to-python-3 .sect2}

The [Python 3]{.application} package contains the [Python]{.application} development environment. This is useful for object-oriented programming, writing scripts, prototyping large programs or developing entire applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Python 3]{.application} was installed in LFS. The only reason to rebuild it here is if optional modules are needed, or to upgrade this package.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If upgrading to a new Python-3 minor version (for example, from Python-3.13.x to Python-3.14.0), you will need to reinstall any Python modules you have installed. You should also reinstall packages that generate Python modules, including [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [opencv-4.13.0](opencv.md "opencv-4.13.0"){.xref}, [FontForge-20251009](../xsoft/fontforge.md "FontForge-20251009"){.xref}, [gnome-tweaks-49.0](../gnome/gnome-tweaks.md "gnome-tweaks-49.0"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, and [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (if swig is installed).

Before you upgrade, you can get a list of modules installed with [**pip3 list**]{.command}. The list may be incomplete as some Python modules are not installed with [**pip3**]{.command}, for example the `cracklib`{.literal} module installed by [CrackLib-2.10.3](../postlfs/cracklib.md "CrackLib-2.10.3"){.xref}. Use [**ls /usr/lib/python3.*`minor`*/site-packages**]{.command} for a comprehensive list.

The Python modules from LFS will also have to be reinstalled: [flit-core](../../../../lfs/view/systemd/chapter08/flit-core.md){.ulink}, [packaging](../../../../lfs/view/systemd/chapter08/packaging.md){.ulink}, [wheel](../../../../lfs/view/systemd/chapter08/wheel.md){.ulink}, [setuptools](../../../../lfs/view/systemd/chapter08/setuptools.md){.ulink}, [meson](../../../../lfs/view/systemd/chapter08/meson.md){.ulink}, [MarkupSafe](../../../../lfs/view/systemd/chapter08/markupsafe.md){.ulink}, and [Jinja2](../../../../lfs/view/systemd/chapter08/jinja2.md){.ulink}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.python.org/ftp/python/3.14.5/Python-3.14.5.tar.xz](https://www.python.org/ftp/python/3.14.5/Python-3.14.5.tar.xz){.ulink}

-   Download MD5 sum: 16beaf44e56ed4b8254f625504b08a7f

-   Download size: 23 MB

-   Estimated disk space required: 335 MB (add 65 MB for tests)

-   Estimated build time: 2.2 SBU (add 1.0 SBU for tests; both using parallelism=4)
:::

### Required Additional Download

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-security_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-security_fixes-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-openssl_4-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/Python-3.14.5-openssl_4-1.patch){.ulink}
:::

### Additional Optional Download

::: itemizedlist
-   Download (HTTP): [https://www.python.org/ftp/python/doc/3.14.5/python-3.14.5-docs-html.tar.bz2](https://www.python.org/ftp/python/doc/3.14.5/python-3.14.5-docs-html.tar.bz2){.ulink}

-   Download MD5 sum: b5e4e78aecd57de93837810d279598e2
:::

### Python 3 Dependencies

#### Optional

[BlueZ-5.86](bluez.md "BlueZ-5.86"){.xref}, [GDB-17.2](gdb.md "GDB-17.2"){.xref} (required for some tests), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, and [libmpdec](https://www.bytereef.org/mpdecimal/){.ulink}

#### Optional (For Additional Modules)

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [Tk-8.6.18](tk.md "Tk-8.6.18"){.xref}, and [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/Python3](https://wiki.linuxfromscratch.org/blfs/wiki/Python3){.ulink}
::::::::::

::: {.installation lang="en"}
## Installation of Python 3 {#installation-of-python-3 .sect2}

First, apply a patch consisting of security fixes from upstream:

``` userinput
patch -Np1 -i ../Python-3.14.5-security_fixes-1.patch
```

Next, apply a patch adapting this package to OpenSSL-4:

``` userinput
patch -Np1 -i ../Python-3.14.5-openssl_4-1.patch
```

Install [Python 3]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr              \
            --enable-shared            \
            --with-system-expat        \
            --enable-optimizations     \
            --without-static-libpython &&
make
```

Some tests are known to occasionally hang indefinitely. So to test the results, run the test suite but set a 2-minute time limit for each test case:

``` userinput
make test TESTOPTS="--timeout 120"
```

For a relatively slow system you may need to increase the time limit and 1 SBU (measured when building Binutils pass 1 with one CPU core) should be enough. Some tests are flaky, so the test suite will automatically re-run failed tests. If a test failed but then passed when re-run, it should be considered as passed.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If upgrading and the documentation has been downloaded, optionally install it as the `root`{.systemitem} user:

``` root
install -v -dm755 /usr/share/doc/python-3.14.5/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.14.5/html \
    -xvf ../python-3.14.5-docs-html.tar.bz2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**CXX="/usr/bin/g++" ./configure ...**]{.command}: Avoid an annoying message during configuration.

*`--with-system-expat`*: This switch enables linking against the system version of [Expat]{.application}.

*`--enable-optimizations`*: This switch enables stable, but expensive, optimizations.

`--with-lto`{.option}: This optional switch enables thick Link Time Optimization. Unusually, it creates a much larger `/usr/lib/python3.14/config-3.14-<arch>-linux-gnu/libpython3.14.a`{.filename} with a small increase in the time to compile [Python]{.application}. Run-time results do not appear to show any benefit from doing this.
:::

::: {.configuration lang="en"}
## Configuring Python 3 {#configuring-python-3 .sect2}

In order for [**python3**]{.command} to find the installed documentation, create the following version independent symlink:

``` root
ln -svfn python-3.14.5 /usr/share/doc/python-3
```

and add the following environment variable to the individual user's or system's profile:

``` root
export PYTHONDOCS=/usr/share/doc/python-3/html
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [idle3 (symlink) and idle3.14, pip3 and pip3.14, pydoc3 (symlink) and pydoc3.14, python3 (symlink) and python3.14, and python3-config (symlink) and python3.14-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libpython3.14.so and libpython3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/python3.14, /usr/lib/python3.14, and /usr/share/doc/python-3.14.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#idle3}[[**idle3**]{.command}]{.term}             is a wrapper script that opens a [Python]{.application} aware GUI editor. For this script to run, you must have installed [Tk]{.application} before Python so that the Tkinter Python module is built
  []{#pydoc3}[[**pydoc3**]{.command}]{.term}           is the [Python]{.application} documentation tool
  []{#python3-prog}[[**python3**]{.command}]{.term}    is an interpreted, interactive, object-oriented programming language
  []{#python-ver}[[**python3.14**]{.command}]{.term}   is a version-specific name for the [**python**]{.command} program
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](php.md "PHP-8.5.6"){accesskey="p"}

    PHP-8.5.6

-   [Next](python311.md "Python-3.11.1"){accesskey="n"}

    Python-3.11.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
