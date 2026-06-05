<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 1. Welcome to BLFS

-   [Prev](which.md "Which Sections of the Book Do I Want?")

    Which Sections of the Book Do I Want?

-   [Next](version.md "Book Version")

    Book Version

-   [Up](welcome.md "Chapter 1. Welcome to BLFS")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Conventions Used in this Book {#conventions-used-in-this-book}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Typographical Conventions {#typographical-conventions}

To make things easy to follow, a number of conventions are used throughout the book. Here are some examples:

```bash
./configure --prefix=/usr
```

<div class="blockquote">
> This form of text should be typed exactly as shown unless otherwise noted in the surrounding text. It is also used to identify references to specific commands.
</div>

```console
install-info: unknown option
`--dir-file=/mnt/lfs/usr/info/dir'
```

<div class="blockquote">
> This form of text (blue, fixed width font) shows screen output, probably the result of issuing a command.
</div>

```console
/boot/grub/grub.conf
```

<div class="blockquote">
> This form of text (fixed width font) is used to show filenames.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Please configure your browser to display fixed-width text with a good monospaced font, with which you can distinguish the glyphs of <code class="literal">Il1</code> or <code class="literal">O0</code> clearly.
</div>

<span class="emphasis"><em>Emphasis</em></span>

<div class="blockquote">
> This form of text is used for several purposes, but mainly to emphasize important points, or to give examples of what to type.
</div>

<a class="ulink" href="https://www.linuxfromscratch.org/">https://www.linuxfromscratch.org/</a>

<div class="blockquote">
> This form of text is used for hypertext links external to the book, such as HowTos, download locations, websites, etc.
</div>

<a class="xref" href="../xsoft/seamonkey.md" title="Seamonkey-2.53.23">seamonkey-2.53.23</a>

<div class="blockquote">
> This form of text is used for links internal to the book, such as another section describing a different package.
</div>

```bash
cat > $LFS/etc/group << "EOF"
root:x:0:
bin:x:1:
......
EOF
```

<div class="blockquote">
> This style is mainly used when creating configuration files. The first command (in bold) tells the system to create the file <code class="filename">$LFS/etc/group</code> from whatever is typed on the following lines, until the sequence EOF is encountered. Therefore, this whole section is usually typed exactly as shown. Remember, copy and paste is your friend!
</div>

*`<REPLACED TEXT>`*

<div class="blockquote">
> This form of text is used to encapsulate text that should be modified, and is not to be typed as shown, or copied and pasted. The angle brackets are not part of the literal text; they are part of the substitution.
</div>

<code class="systemitem">root</code>

<div class="blockquote">
> This form of text is used to show a specific system user or group reference in the instructions.
</div>

 
</div>

<div class="sect2" lang="en">
## Conventions Used for Package Dependencies {#conventions-used-for-package-dependencies}

When new packages are created, the software's authors depend on prior work. In order to build a package in BLFS, these dependencies must be built before the desired package can be compiled. For each package, prerequisites are listed in one or more separate sections: Required, Recommended, and Optional.

### Required Dependencies

These dependencies are the bare minimum needed to build the package. Packages in LFS, and the required dependencies of these required packages, are omitted from this list. Always remember to check for nested dependencies. If a dependency is said to be <span class="quote">“<span class="quote">runtime,</span>”</span> it is not needed for building the package, but only to use it after installation.

### Recommended Dependencies

These are dependencies the BLFS editors have determined are important to give the package reasonable capabilities. If a recommended dependency is not said to be <span class="quote">“<span class="quote">runtime,</span>”</span> package installation instructions assume it is installed. If it is not installed, the instructions may require modification, to accommodate the missing package. A recommended <span class="quote">“<span class="quote">runtime</span>”</span> dependency does not need to be installed before building the package, but must be built afterwards for running the package with reasonable capabilities.

### Optional Dependencies

These are dependencies the package <span class="emphasis"><em>may</em></span> use. Integration of optional dependencies may be automatic by the package, or additional steps not presented by BLFS may be necessary. Optional dependencies are sometimes listed without explicit BLFS instructions. In this case you must determine how to perform the installation yourself.

 
</div>

<div class="sect2" lang="en">
## Conventions Used for Kernel Configuration Options {#conventions-used-for-kernel-configuration-options}

Some packages require specific kernel configuration options. The general layout for these looks like this:

```console
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

\[...\] on the right gives the symbolic name of the option, so you can easily check whether it is set in your <code class="filename">.config</code> file. Note that the <code class="filename">.config</code> file contains a <code class="literal">CONFIG_</code> prefix before all symbolic names. The meaning of the various entries is:

<div class="blockquote">
> ::: informaltable
>   ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>   <span class="bold"><strong>Master section</strong></span>                                top level menu item
>   <span class="bold"><strong>Subsection</strong></span>                                    submenu item
>   <span class="bold"><strong>Required parameter</strong></span>                            the option can either be built-in, or not selected: it must be selected
>   <span class="bold"><strong>Required parameter (not as module)</strong></span>            the option can be built-in, a module, or not selected (tri-state): it must be selected as built-in
>   <span class="bold"><strong>Required parameter (could be a module)</strong></span>        the option can be built-in, a module, or not selected: it must be selected, either as built-in or as a module
>   <span class="bold"><strong>Required parameter (as a module)</strong></span>              the option can be built-in, a module, or not selected: it must be selected as a module; selecting it as built-in may cause unwanted effects
>   <span class="bold"><strong>Optional parameter</strong></span>                            the option can be built-in, a module, or not selected: it may be selected as a module or built-in if you need it for driving the hardware or optional kernel features
>   <span class="bold"><strong>Optional parameter (as a module if enabled)</strong></span>   the option can be built-in, a module, or not selected: it may be selected as a module if you need it for driving the hardware or optional kernel features, but selecting it as built-in may cause unwanted effects
>   <span class="bold"><strong>Incompatible parameter</strong></span>                        the option can either be built-in or not selected: it must <span class="emphasis"><em>not</em></span> be selected
>   <span class="bold"><strong>Incompatible parameter (even as module)</strong></span>       the option can be built-in, a module, or not selected: it must <span class="emphasis"><em>not</em></span> be selected
>   ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> :::
</div>

Note that, depending on other selections, the angle brackets (\<\>) in the configuration menu may appear as braces ({}) if the option cannot be unselected, or even as dashes (-\*- or -M-), when the choice is imposed. The help text describing the option specifies the other selections on which this option relies, and how those other selections are set.

The letter in <span class="blue">blue</span> is the hotkey for this option. If you are running <span class="command"><strong>make menuconfig</strong></span>, you can press a key to quickly traverse all the options with this key as the hotkey on the screen.

 
</div>

<div class="sect2" lang="en">
## SBU values in BLFS {#sbu-values-in-blfs}

As in LFS, each package in BLFS has a build time listed in Standard Build Units (SBUs). These times are relative to the time it took to build binutils in LFS, and are intended to provide some insight into how long it will take to build a package. Most times listed are for a single processor or core to build the package. In some cases, large, long running builds tested on multi-core systems have SBU times listed with comments such as '(parallelism=4)'. These values indicate testing was done using multiple cores. Note that while this speeds up the build on systems with the appropriate hardware, the speedup is not linear and to some extent depends on the individual package and the specific hardware used.

For packages which use ninja (i.e., anything using meson) or rust, by default all cores are used; similar comments will be seen on such packages even when the build time is minimal.

Where even a parallel build takes more than 15 SBU, on certain machines the time may be considerably greater even when the build does not use swap. In particular, different micro-architectures will build some files at different relative speeds, and this can introduce delays when certain make targets wait for another file to be created. Where a large build uses a lot of C++ files, processors with Simultaneous Multi Threading will share the Floating Point Unit and can take 45% longer than when using four 'prime' cores (measured on an intel i7 using taskset and keeping the other cores idle).

Some packages do not support parallel builds; for these, the make command must specify -j1. Packages that are known to impose such limits are so marked in the text.
</div>
</div>

<div class="navfooter">
-   [Prev](which.md "Which Sections of the Book Do I Want?")

    Which Sections of the Book Do I Want?

-   [Next](version.md "Book Version")

    Book Version

-   [Up](welcome.md "Chapter 1. Welcome to BLFS")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
