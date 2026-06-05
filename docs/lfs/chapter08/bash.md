::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](grep.md "Grep-3.12"){accesskey="p"}

    Grep-3.12

-   [Next](libtool.md "Libtool-2.5.4"){accesskey="n"}

    Libtool-2.5.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-bash}8.37. Bash-5.3 {#bash-5.3 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bash package contains the Bourne-Again Shell.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [56 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.37.1. Installation of Bash {#installation-of-bash .sect2}

Prepare Bash for compilation:

``` userinput
./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.3
```

::: variablelist
**The meaning of the new configure option:**

[*`--with-installed-readline`*]{.term}

:   This option tells Bash to use the `readline`{.filename} library that is already installed on the system rather than using its own readline version.
:::

Compile the package:

``` userinput
make
```

Skip down to ["[Install the package]{.quote}"]{.quote} if not running the test suite.

To prepare the tests, ensure that the `tester`{.systemitem} user can write to the sources tree:

``` userinput
chown -R tester .
```

The test suite of this package is designed to be run as a non-`root`{.systemitem} user who owns the terminal connected to standard input. To satisfy the requirement, spawn a new pseudo terminal using [Expect]{.application} and run the tests as the `tester`{.systemitem} user:

``` userinput
LC_ALL=C.UTF-8 su -s /usr/bin/expect tester << "EOF"
set timeout -1
spawn make tests
expect eof
lassign [wait] _ _ _ value
exit $value
EOF
```

The test suite uses [**diff**]{.command} to detect the difference between test script output and the expected output. Any output from [**diff**]{.command} (prefixed with `<`{.computeroutput} and `>`{.computeroutput}) indicates a test failure, unless there is a message saying the difference can be ignored. The test named `run-builtins`{.filename} is known to fail on some host distros with a difference on the 479 and 480 lines of the output. Some other tests need the `zh_TW.BIG5`{.literal} and `ja_JP.SJIS`{.literal} locales, they are known to fail unless those locales are installed.

Install the package:

``` userinput
make install
```

Run the newly compiled [**bash**]{.command} program (replacing the one that is currently being executed):

``` userinput
exec /usr/bin/bash --login
```
::::

:::::::: {.content lang="en"}
## []{#contents-bash}8.37.2. Contents of Bash {#contents-of-bash .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [bash, bashbug, and sh (link to bash)]{.segbody}
:::

::: seg
**Installed directory:** [/usr/include/bash, /usr/lib/bash, and /usr/share/doc/bash-5.3]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#bash}[[**bash**]{.command}]{.term}         A widely-used command interpreter; it performs many types of expansions and substitutions on a given command line before executing it, thus making this interpreter a powerful tool
  []{#bashbug}[[**bashbug**]{.command}]{.term}   A shell script to help the user compose and mail standard formatted bug reports concerning [**bash**]{.command}
  []{#sh}[[**sh**]{.command}]{.term}             A symlink to the [**bash**]{.command} program; when invoked as [**sh**]{.command}, [**bash**]{.command} tries to mimic the startup behavior of historical versions of [**sh**]{.command} as closely as possible, while conforming to the POSIX standard as well
  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](grep.md "Grep-3.12"){accesskey="p"}

    Grep-3.12

-   [Next](libtool.md "Libtool-2.5.4"){accesskey="n"}

    Libtool-2.5.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
