::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](sqlite.md "Sqlite-3530100"){accesskey="p"}

    Sqlite-3530100

-   [Next](flit-core.md "Flit-Core-3.12.0"){accesskey="n"}

    Flit-Core-3.12.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-Python}8.51. Python-3.14.5 {#python-3.14.5 .sect1}

::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Python 3 package contains the Python development environment. It is useful for object-oriented programming, writing scripts, prototyping large programs, and developing entire applications. Python is an interpreted computer language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [2.6 SBU]{.segbody}
:::

::: seg
**Required disk space:** [494 MB]{.segbody}
:::
:::::
::::::
:::::::

:::::: {.installation lang="en"}
## 8.51.1. Installation of Python 3 {#installation-of-python-3 .sect2}

First, apply a patch for compatibility with OpenSSL 4:

``` userinput
patch -Np1 -i ../Python-3.14.5-openssl_4-1.patch
```

Next, fix two security vulnerabilities:

``` userinput
patch -Np1 -i ../Python-3.14.5-security_fixes-1.patch
```

Prepare Python for compilation:

``` userinput
./configure --prefix=/usr          \
            --enable-shared        \
            --with-system-expat    \
            --enable-optimizations \
            --without-static-libpython
```

::: variablelist
**The meaning of the configure options:**

[*`--with-system-expat`*]{.term}

:   This switch enables linking against the system version of [Expat]{.application}.

[*`--enable-optimizations`*]{.term}

:   This switch enables extensive, but time-consuming, optimization steps. The interpreter is built twice; tests performed on the first build are used to improve the optimized final version.
:::

Compile the package:

``` userinput
make
```

Some tests are known to occasionally hang indefinitely. So to test the results, run the test suite but set a 2-minute time limit for each test case:

``` userinput
make test TESTOPTS="--timeout 120"
```

For a relatively slow system you may need to increase the time limit and 1 SBU (measured when building Binutils pass 1 with one CPU core) should be enough. Some tests are flaky, so the test suite will automatically re-run failed tests. If a test failed but then passed when re-run, it should be considered as passed.

Two tests, `test_urllib2`{.literal} and `test_urllibnet`{.literal}, are known to fail because name resolution is not configured in the incomplete LFS environment.

Install the package:

``` userinput
make install
```

We use the [**pip3**]{.command} command to install Python 3 programs and modules for all users as `root`{.systemitem} in several places in this book. This conflicts with the Python developers\' recommendation: to install packages into a virtual environment, or into the home directory of a regular user (by running [**pip3**]{.command} as this user). A multi-line warning is triggered whenever [**pip3**]{.command} is issued by the `root`{.systemitem} user.

The main reason for the recommendation is to avoid conflicts with the system\'s package manager ([**dpkg**]{.command}, for example). LFS does not have a system-wide package manager, so this is not a problem. Also, [**pip3**]{.command} will check for a new version of itself whenever it\'s run. Since domain name resolution is not yet configured in the LFS chroot environment, [**pip3**]{.command} cannot check for a new version of itself, and will produce a warning.

After we boot the LFS system and set up a network connection, a different warning will be issued, telling the user to update [**pip3**]{.command} from a pre-built wheel on PyPI (whenever a new version is available). But LFS considers [**pip3**]{.command} to be a part of Python 3, so it should not be updated separately. Also, an update from a pre-built wheel would deviate from our objective: to build a Linux system from source code. So the warning about a new version of [**pip3**]{.command} should be ignored as well. If you wish, you can suppress all these warnings by running the following command, which creates a configuration file:

``` userinput
cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

In LFS and BLFS we normally build and install Python modules with the [**pip3**]{.command} command. Please be sure that the [**pip3 install**]{.command} commands in both books are run as the `root`{.systemitem} user (unless it\'s for a Python virtual environment). Running [**pip3 install**]{.command} as a non-`root`{.systemitem} user may seem to work, but it will cause the installed module to be inaccessible by other users.

[**pip3 install**]{.command} will not reinstall an already installed module automatically. When using the [**pip3 install**]{.command} command to upgrade a module (for example, from meson-0.61.3 to meson-0.62.0), insert the option *`--upgrade`* into the command line. If it\'s really necessary to downgrade a module, or reinstall the same version for some reason, insert *`--force-reinstall --no-deps`* into the command line.
:::

If desired, install the preformatted documentation:

``` userinput
install -v -dm755 /usr/share/doc/python-3.14.5/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.14.5/html \
    -xvf ../python-3.14.5-docs-html.tar.bz2
```

::: variablelist
**The meaning of the documentation install commands:**

[`--no-same-owner`{.option} and `--no-same-permissions`{.option}]{.term}

:   Ensure the installed files have the correct ownership and permissions. Without these options, [tar]{.application} will install the package files with the upstream creator\'s values.
:::
::::::

::::::::: {.content lang="en"}
## []{#contents-python}8.51.2. Contents of Python 3 {#contents-of-python-3 .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [idle3, pip3, pydoc3, python3, and python3-config]{.segbody}
:::

::: seg
**Installed library:** [libpython3.14.so and libpython3.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/python3.14, /usr/lib/python3, and /usr/share/doc/python-3.14.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#idle3}[[**idle3**]{.command}]{.term}       is a wrapper script that opens a [Python]{.application} aware GUI editor. For this script to run, you must have installed [Tk]{.application} before Python, so that the Tkinter Python module is built.
  []{#pip3}[[**pip3**]{.command}]{.term}         The package installer for Python. You can use pip to install packages from Python Package Index and other indexes.
  []{#pydoc3}[[**pydoc3**]{.command}]{.term}     is the [Python]{.application} documentation tool
  []{#python3}[[**python3**]{.command}]{.term}   is the interpreter for Python, an interpreted, interactive, object-oriented programming language
  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](sqlite.md "Sqlite-3530100"){accesskey="p"}

    Sqlite-3530100

-   [Next](flit-core.md "Flit-Core-3.12.0"){accesskey="n"}

    Flit-Core-3.12.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
