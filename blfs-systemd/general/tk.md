::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](swig.md "SWIG-4.4.1"){accesskey="p"}

    SWIG-4.4.1

-   [Next](unifdef.md "unifdef-2.12"){accesskey="n"}

    unifdef-2.12

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tk}Tk-8.6.18 {#tk-8.6.18 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Tk {#introduction-to-tk .sect2}

The [Tk]{.application} package contains a TCL GUI Toolkit.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/tcl/tk8.6.18-src.tar.gz](https://downloads.sourceforge.net/tcl/tk8.6.18-src.tar.gz){.ulink}

-   Download MD5 sum: 63a13111a136118ec72faee1228143e6

-   Download size: 4.4 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.3 SBU (add 5.6 SBU for tests)
:::

### Tk Dependencies

#### Required

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Tk {#installation-of-tk .sect2}

Install [Tk]{.application} by running the following commands:

``` userinput
cd unix &&
./configure --prefix=/usr \
            --mandir=/usr/share/man \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&

make &&

sed -e "s@^\(TK_SRC_DIR='\).*@\1/usr/include'@" \
    -e "/TK_B/s@='\(-L\)\?.*unix@='\1/usr/lib@" \
    -i tkConfig.sh
```

Running the tests is not recommended. Failures will be reported during the tests, depending on the screen resolution/capabilities, fonts installed and other X related parameters, but the end report can show 0 failures. Some tests will steal focus and some might crash your X Server. To test the results anyway, issue: [**make test**]{.command}. Ensure you run it from an X Window display device with the GLX extensions loaded, but even so, tests might hang.

Now, as the `root`{.systemitem} user:

``` root
make install                      &&
make install-private-headers      &&
ln -v -sf wish8.6 /usr/bin/wish   &&
chmod -v 755 /usr/lib/libtk8.6.so
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-64bit`*: This switch is used to enable 64 bit support in [Tk]{.application} on 64 bit operating systems.

[**make install-private-headers**]{.command}: This command is used to install the [Tk]{.application} library interface headers used by other packages if they link to the [Tk]{.application} library.

[**ln -v -sf wish8.6 /usr/bin/wish**]{.command}: This command is used to create a compatibility symbolic link to the [**wish8.6**]{.command} file as many packages expect a file named [**wish**]{.command}.

[**sed -e ... tkConfig.sh**]{.command}: The [Tk]{.application} package expects that its source tree is preserved so that packages depending on it for their compilation can utilize it. This [**sed**]{.command} removes the references to the build directory and replaces them with saner system-wide locations.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [wish and wish8.6]{.segbody}
:::

::: seg
**Installed Libraries:** [libtk8.6.so and libtkstub8.6.a]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/tk8.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  []{#wish}[[**wish**]{.command}]{.term}            is a symlink to the [**wish8.6**]{.command} program
  []{#wish-eight}[[**wish8.6**]{.command}]{.term}   is a simple shell containing the [Tk]{.application} toolkit that creates a main window and then processes [Tcl]{.application} commands
  []{#libtk}[`libtk8.6.so`{.filename}]{.term}       contains the API functions required by [Tk]{.application}
  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](swig.md "SWIG-4.4.1"){accesskey="p"}

    SWIG-4.4.1

-   [Next](unifdef.md "unifdef-2.12"){accesskey="n"}

    unifdef-2.12

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
