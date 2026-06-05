::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 1. Welcome to BLFS

-   [Prev](which.md "Which Sections of the Book Do I Want?"){accesskey="p"}

    Which Sections of the Book Do I Want?

-   [Next](version.md "Book Version"){accesskey="n"}

    Book Version

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#conventions}Conventions Used in this Book {#conventions-used-in-this-book .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::::::::: {.sect2 lang="en"}
## Typographical Conventions {#typographical-conventions .sect2}

To make things easy to follow, a number of conventions are used throughout the book. Here are some examples:

``` userinput
./configure --prefix=/usr
```

::: blockquote
> This form of text should be typed exactly as shown unless otherwise noted in the surrounding text. It is also used to identify references to specific commands.
:::

``` screen
install-info: unknown option
`--dir-file=/mnt/lfs/usr/info/dir'
```

::: blockquote
> This form of text (blue, fixed width font) shows screen output, probably the result of issuing a command.
:::

``` screen
/boot/grub/grub.conf
```

::: blockquote
> This form of text (fixed width font) is used to show filenames.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please configure your browser to display fixed-width text with a good monospaced font, with which you can distinguish the glyphs of `Il1`{.literal} or `O0`{.literal} clearly.
:::

[*Emphasis*]{.emphasis}

::: blockquote
> This form of text is used for several purposes, but mainly to emphasize important points, or to give examples of what to type.
:::

[https://www.linuxfromscratch.org/](https://www.linuxfromscratch.org/){.ulink}

::: blockquote
> This form of text is used for hypertext links external to the book, such as HowTos, download locations, websites, etc.
:::

[seamonkey-2.53.23](../xsoft/seamonkey.md "Seamonkey-2.53.23"){.xref}

::: blockquote
> This form of text is used for links internal to the book, such as another section describing a different package.
:::

``` userinput
cat > $LFS/etc/group << "EOF"
root:x:0:
bin:x:1:
......
EOF
```

::: blockquote
> This style is mainly used when creating configuration files. The first command (in bold) tells the system to create the file `$LFS/etc/group`{.filename} from whatever is typed on the following lines, until the sequence EOF is encountered. Therefore, this whole section is usually typed exactly as shown. Remember, copy and paste is your friend!
:::

*`<REPLACED TEXT>`*

::: blockquote
> This form of text is used to encapsulate text that should be modified, and is not to be typed as shown, or copied and pasted. The angle brackets are not part of the literal text; they are part of the substitution.
:::

`root`{.systemitem}

::: blockquote
> This form of text is used to show a specific system user or group reference in the instructions.
:::

 
:::::::::::::

::: {.sect2 lang="en"}
## Conventions Used for Package Dependencies {#conventions-used-for-package-dependencies .sect2}

When new packages are created, the software's authors depend on prior work. In order to build a package in BLFS, these dependencies must be built before the desired package can be compiled. For each package, prerequisites are listed in one or more separate sections: Required, Recommended, and Optional.

### Required Dependencies

These dependencies are the bare minimum needed to build the package. Packages in LFS, and the required dependencies of these required packages, are omitted from this list. Always remember to check for nested dependencies. If a dependency is said to be [“[runtime,]{.quote}”]{.quote} it is not needed for building the package, but only to use it after installation.

### Recommended Dependencies

These are dependencies the BLFS editors have determined are important to give the package reasonable capabilities. If a recommended dependency is not said to be [“[runtime,]{.quote}”]{.quote} package installation instructions assume it is installed. If it is not installed, the instructions may require modification, to accommodate the missing package. A recommended [“[runtime]{.quote}”]{.quote} dependency does not need to be installed before building the package, but must be built afterwards for running the package with reasonable capabilities.

### Optional Dependencies

These are dependencies the package [*may*]{.emphasis} use. Integration of optional dependencies may be automatic by the package, or additional steps not presented by BLFS may be necessary. Optional dependencies are sometimes listed without explicit BLFS instructions. In this case you must determine how to perform the installation yourself.

 
:::

:::: {.sect2 lang="en"}
## Conventions Used for Kernel Configuration Options {#conventions-used-for-kernel-configuration-options .sect2}

Some packages require specific kernel configuration options. The general layout for these looks like this:

``` screen
Master section --->
  Subsection --->
    [*]     Required parameter                                        [REQU_PAR]
    <*>     Required parameter (not as module)                   [REQU_PAR_NMOD]
    <*/M>   Required parameter (could be a module)                [REQU_PAR_MOD]
    <M>     Required parameter (as a module)                 [REQU_PAR_MOD_ONLY]
    < /*/M> Optional parameter                                         [OPT_PAR]
    < /M>   Optional parameter (as a module if enabled)       [OPT_PAR_MOD_ONLY]
    [ ]     Incompatible parameter                                  [INCOMP_PAR]
    < >     Incompatible parameter (even as module)             [INCOMP_PAR_MOD]
```

\[...\] on the right gives the symbolic name of the option, so you can easily check whether it is set in your `.config`{.filename} file. Note that the `.config`{.filename} file contains a `CONFIG_`{.literal} prefix before all symbolic names. The meaning of the various entries is:

::: blockquote
> ::: informaltable
>   ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>   [**Master section**]{.bold}                                top level menu item
>   [**Subsection**]{.bold}                                    submenu item
>   [**Required parameter**]{.bold}                            the option can either be built-in, or not selected: it must be selected
>   [**Required parameter (not as module)**]{.bold}            the option can be built-in, a module, or not selected (tri-state): it must be selected as built-in
>   [**Required parameter (could be a module)**]{.bold}        the option can be built-in, a module, or not selected: it must be selected, either as built-in or as a module
>   [**Required parameter (as a module)**]{.bold}              the option can be built-in, a module, or not selected: it must be selected as a module; selecting it as built-in may cause unwanted effects
>   [**Optional parameter**]{.bold}                            the option can be built-in, a module, or not selected: it may be selected as a module or built-in if you need it for driving the hardware or optional kernel features
>   [**Optional parameter (as a module if enabled)**]{.bold}   the option can be built-in, a module, or not selected: it may be selected as a module if you need it for driving the hardware or optional kernel features, but selecting it as built-in may cause unwanted effects
>   [**Incompatible parameter**]{.bold}                        the option can either be built-in or not selected: it must [*not*]{.emphasis} be selected
>   [**Incompatible parameter (even as module)**]{.bold}       the option can be built-in, a module, or not selected: it must [*not*]{.emphasis} be selected
>   ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> :::
:::

Note that, depending on other selections, the angle brackets (\<\>) in the configuration menu may appear as braces ({}) if the option cannot be unselected, or even as dashes (-\*- or -M-), when the choice is imposed. The help text describing the option specifies the other selections on which this option relies, and how those other selections are set.

The letter in [blue]{.blue} is the hotkey for this option. If you are running [**make menuconfig**]{.command}, you can press a key to quickly traverse all the options with this key as the hotkey on the screen.

 
::::

::: {.sect2 lang="en"}
## SBU values in BLFS {#sbu-values-in-blfs .sect2}

As in LFS, each package in BLFS has a build time listed in Standard Build Units (SBUs). These times are relative to the time it took to build binutils in LFS, and are intended to provide some insight into how long it will take to build a package. Most times listed are for a single processor or core to build the package. In some cases, large, long running builds tested on multi-core systems have SBU times listed with comments such as '(parallelism=4)'. These values indicate testing was done using multiple cores. Note that while this speeds up the build on systems with the appropriate hardware, the speedup is not linear and to some extent depends on the individual package and the specific hardware used.

For packages which use ninja (i.e., anything using meson) or rust, by default all cores are used; similar comments will be seen on such packages even when the build time is minimal.

Where even a parallel build takes more than 15 SBU, on certain machines the time may be considerably greater even when the build does not use swap. In particular, different micro-architectures will build some files at different relative speeds, and this can introduce delays when certain make targets wait for another file to be created. Where a large build uses a lot of C++ files, processors with Simultaneous Multi Threading will share the Floating Point Unit and can take 45% longer than when using four 'prime' cores (measured on an intel i7 using taskset and keeping the other cores idle).

Some packages do not support parallel builds; for these, the make command must specify -j1. Packages that are known to impose such limits are so marked in the text.
:::
::::::::::::::::::

::: navfooter
-   [Prev](which.md "Which Sections of the Book Do I Want?"){accesskey="p"}

    Which Sections of the Book Do I Want?

-   [Next](version.md "Book Version"){accesskey="n"}

    Book Version

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
