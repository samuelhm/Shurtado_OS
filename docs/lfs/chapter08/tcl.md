::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](flex.md "Flex-2.6.4"){accesskey="p"}

    Flex-2.6.4

-   [Next](expect.md "Expect-5.45.4"){accesskey="n"}

    Expect-5.45.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-tcl}8.17. Tcl-8.6.18 {#tcl-8.6.18 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The [Tcl]{.application} package contains the Tool Command Language, a robust general-purpose scripting language. The [Expect]{.application} package is written in [Tcl]{.application} (pronounced \"tickle\").

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [2.9 SBU]{.segbody}
:::

::: seg
**Required disk space:** [91 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.17.1. Installation of Tcl {#installation-of-tcl .sect2}

This package and the next two (Expect and DejaGNU) are installed to support running the test suites for Binutils, GCC and other packages. Installing three packages for testing purposes may seem excessive, but it is very reassuring, if not essential, to know that the most important tools are working properly.

Prepare Tcl for compilation:

``` userinput
SRCDIR=$(pwd)
cd unix
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --disable-rpath
```

::: variablelist
**The meaning of the new configure parameters:**

[*`--disable-rpath`*]{.term}

:   This parameter prevents hard coding library search paths (rpath) into the binary executable files and shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.
:::

Build the package:

``` userinput
make

sed -e "s|$SRCDIR/unix|/usr/lib|" \
    -e "s|$SRCDIR|/usr/include|"  \
    -i tclConfig.sh

sed -e "s|$SRCDIR/unix/pkgs/tdbc1.1.13|/usr/lib/tdbc1.1.13|" \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13/generic|/usr/include|"     \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13/library|/usr/lib/tcl8.6|"  \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13|/usr/include|"             \
    -i pkgs/tdbc1.1.13/tdbcConfig.sh

sed -e "s|$SRCDIR/unix/pkgs/itcl4.3.7|/usr/lib/itcl4.3.7|" \
    -e "s|$SRCDIR/pkgs/itcl4.3.7/generic|/usr/include|"    \
    -e "s|$SRCDIR/pkgs/itcl4.3.7|/usr/include|"            \
    -i pkgs/itcl4.3.7/itclConfig.sh

unset SRCDIR
```

The various ["[sed]{.quote}"]{.quote} instructions after the ["[make]{.quote}"]{.quote} command remove references to the build directory from the configuration files and replace them with the install directory. This is not mandatory for the remainder of LFS, but may be needed if a package built later uses Tcl.

To test the results, issue:

``` userinput
LC_ALL=C.UTF-8 make test
```

Install the package:

``` userinput
make install 
chmod 644 /usr/lib/libtclstub8.6.a
```

Make the installed library writable so debugging symbols can be removed later:

``` userinput
chmod -v u+w /usr/lib/libtcl8.6.so
```

Install Tcl\'s headers. The next package, Expect, requires them.

``` userinput
make install-private-headers
```

Now make a necessary symbolic link:

``` userinput
ln -sfv tclsh8.6 /usr/bin/tclsh
```

Rename a man page that conflicts with a Perl man page:

``` userinput
mv -v /usr/share/man/man3/{Thread,Tcl_Thread}.3
```

Optionally, install the documentation by issuing the following commands:

``` userinput
cd ..
tar -xf ../tcl8.6.18-html.tar.gz --strip-components=1
mkdir -v -p /usr/share/doc/tcl-8.6.18
cp -v -r  ./html/* /usr/share/doc/tcl-8.6.18
```
::::

:::::::: {.content lang="en"}
## []{#contents-tcl}8.17.2. Contents of Tcl {#contents-of-tcl .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [tclsh (link to tclsh8.6) and tclsh8.6]{.segbody}
:::

::: seg
**Installed library:** [libtcl8.6.so and libtclstub8.6.a]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -----------------------
  []{#tclsh8.6}[[**tclsh8.6**]{.command}]{.term}              The Tcl command shell
  []{#tclsh}[[**tclsh**]{.command}]{.term}                    A link to tclsh8.6
  []{#libtcl8.6.so}[`libtcl8.6.so`{.filename}]{.term}         The Tcl library
  []{#libtclstub8.6.a}[`libtclstub8.6.a`{.filename}]{.term}   The Tcl Stub library
  ----------------------------------------------------------- -----------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](flex.md "Flex-2.6.4"){accesskey="p"}

    Flex-2.6.4

-   [Next](expect.md "Expect-5.45.4"){accesskey="n"}

    Expect-5.45.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
