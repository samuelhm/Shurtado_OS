::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](perl.md "Perl-5.42.2"){accesskey="p"}

    Perl-5.42.2

-   [Next](texinfo.md "Texinfo-7.3"){accesskey="n"}

    Texinfo-7.3

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-Python}7.10. Python-3.14.5 {#python-3.14.5 .sect1}

::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Python 3 package contains the Python development environment. It is useful for object-oriented programming, writing scripts, prototyping large programs, and developing entire applications. Python is an interpreted computer language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [592 MB]{.segbody}
:::
:::::
::::::
:::::::

:::::: {.installation lang="en"}
## 7.10.1. Installation of Python {#installation-of-python .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are two package files whose name starts with the ["[python]{.quote}"]{.quote} prefix. The one to extract from is `Python-3.14.5.tar.xz`{.filename} (notice the uppercase first letter).
:::

Prepare Python for compilation:

``` userinput
./configure --prefix=/usr       \
            --enable-shared     \
            --without-ensurepip \
            --without-static-libpython
```

::: variablelist
**The meaning of the configure option:**

[*`--enable-shared`*]{.term}

:   This switch prevents installation of static libraries.

[*`--without-ensurepip`*]{.term}

:   This switch disables the Python package installer, which is not needed at this stage.

[*`--without-static-libpython`*]{.term}

:   This switch prevents building a large, but unneeded, static library.
:::

Compile the package:

``` userinput
make
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some Python 3 modules can\'t be built now because the dependencies are not installed yet. For the `ssl`{.filename} module, a message `Python requires a OpenSSL 1.1.1 or newer`{.computeroutput} is outputted. The message should be ignored. Just make sure the toplevel [**make**]{.command} command has not failed. The optional modules are not needed now and they will be built in [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}.
:::

Install the package:

``` userinput
make install
```
::::::

::: {.content lang="en"}
Details on this package are located in [Section 8.51.2, "Contents of Python 3."](../chapter08/Python.md#contents-python "8.51.2. Contents of Python 3"){.xref}
:::
:::::::::::::

::: navfooter
-   [Prev](perl.md "Perl-5.42.2"){accesskey="p"}

    Perl-5.42.2

-   [Next](texinfo.md "Texinfo-7.3"){accesskey="n"}

    Texinfo-7.3

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
