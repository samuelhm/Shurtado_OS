::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](tcl.md "Tcl-8.6.18"){accesskey="p"}

    Tcl-8.6.18

-   [Next](dejagnu.md "DejaGNU-1.6.3"){accesskey="n"}

    DejaGNU-1.6.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-expect}8.18. Expect-5.45.4 {#expect-5.45.4 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The [Expect]{.application} package contains tools for automating, via scripted dialogues, interactive applications such as [**telnet**]{.command}, [**ftp**]{.command}, [**passwd**]{.command}, [**fsck**]{.command}, [**rlogin**]{.command}, and [**tip**]{.command}. [Expect]{.application} is also useful for testing these same applications as well as easing all sorts of tasks that are prohibitively difficult with anything else. The [DejaGnu]{.application} framework is written in [Expect]{.application}.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [3.9 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.18.1. Installation of Expect {#installation-of-expect .sect2}

Expect needs PTYs to work. Verify that the PTYs are working properly inside the chroot environment by performing a simple test:

``` userinput
python3 -c 'from pty import spawn; spawn(["echo", "ok"])'
```

This command should output `ok`{.computeroutput}. If, instead, the output includes `OSError: out of pty devices`{.computeroutput}, then the environment is not set up for proper PTY operation. You need to exit from the chroot environment, read [Section 7.3, "Preparing Virtual Kernel File Systems"](../chapter07/kernfs.md "7.3. Preparing Virtual Kernel File Systems"){.xref} again, and ensure the `devpts`{.systemitem} file system (and other virtual kernel file systems) mounted correctly. Then reenter the chroot environment following [Section 7.4, "Entering the Chroot Environment"](../chapter07/chroot.md "7.4. Entering the Chroot Environment"){.xref}. This issue needs to be resolved before continuing, or the test suites requiring Expect (for example the test suites of Bash, Binutils, GCC, GDBM, and of course Expect itself) will fail catastrophically, and other subtle breakages may also happen.

Now, make some changes to allow the package with gcc-15.1 or later:

``` userinput
patch -Np1 -i ../expect-5.45.4-gcc15-1.patch
```

Prepare Expect for compilation:

``` userinput
./configure --prefix=/usr           \
            --with-tcl=/usr/lib     \
            --enable-shared         \
            --disable-rpath         \
            --mandir=/usr/share/man \
            --with-tclinclude=/usr/include
```

::: variablelist
**The meaning of the configure options:**

[*`--with-tcl=/usr/lib`*]{.term}

:   This parameter is needed to tell [**configure**]{.command} where the [**tclConfig.sh**]{.command} script is located.

[*`--with-tclinclude=/usr/include`*]{.term}

:   This explicitly tells Expect where to find Tcl\'s internal headers.
:::

Build the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make test
```

Install the package:

``` userinput
make install
ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib
```
::::

:::::::: {.content lang="en"}
## []{#contents-expect}8.18.2. Contents of Expect {#contents-of-expect .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed program:** [expect]{.segbody}
:::

::: seg
**Installed library:** [libexpect5.45.4.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  []{#expect}[[**expect**]{.command}]{.term}                Communicates with other interactive programs according to a script
  []{#libexpect}[`libexpect-5.45.4.so`{.filename}]{.term}   Contains functions that allow Expect to be used as a Tcl extension or to be used directly from C or C++ (without Tcl)
  --------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](tcl.md "Tcl-8.6.18"){accesskey="p"}

    Tcl-8.6.18

-   [Next](dejagnu.md "DejaGNU-1.6.3"){accesskey="n"}

    DejaGNU-1.6.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
