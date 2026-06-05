::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](zlib.md "Zlib-1.3.2"){accesskey="p"}

    Zlib-1.3.2

-   [Next](xz.md "Xz-5.8.3"){accesskey="n"}

    Xz-5.8.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-bzip2}8.7. Bzip2-1.0.8 {#bzip2-1.0.8 .sect1}

:::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bzip2 package contains programs for compressing and decompressing files. Compressing text files with [**bzip2**]{.command} yields a much better compression percentage than with the traditional [**gzip**]{.command}.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [7.3 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.7.1. Installation of Bzip2 {#installation-of-bzip2 .sect2}

Apply a patch that will install the documentation for this package:

``` userinput
patch -Np1 -i ../bzip2-1.0.8-install_docs-1.patch
```

The following command ensures installation of symbolic links are relative:

``` userinput
sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' Makefile
```

Ensure the man pages are installed into the correct location:

``` userinput
sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile
```

Prepare Bzip2 for compilation with:

``` userinput
make -f Makefile-libbz2_so
make clean
```

::: variablelist
**The meaning of the make parameter:**

[*`-f Makefile-libbz2_so`*]{.term}

:   This will cause Bzip2 to be built using a different `Makefile`{.filename} file, in this case the `Makefile-libbz2_so`{.filename} file, which creates a dynamic `libbz2.so`{.filename} library and links the Bzip2 utilities against it.
:::

Compile and test the package:

``` userinput
make
```

Install the programs:

``` userinput
make PREFIX=/usr install
```

Install the shared library:

``` userinput
cp -av libbz2.so.* /usr/lib
ln -sfv libbz2.so.1.0.8 /usr/lib/libbz2.so
```

The name of the shared library isn\'t standardized and it varies among distros. The instruction above has installed `libbz2.so.1.0`{.filename}, but some applications, for example Kbd, expects a different name `libbz2.so.1`{.filename} that some other distros are using. Create a compatibility symlink for them:

``` userinput
ln -sfv libbz2.so.1.0.8 /usr/lib/libbz2.so.1
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The symlink approach is only valid here because the library name difference is a result of different aesthetic views of the distro maintainers, not real ABI incompatibilities. In general a library name difference most likely indicates an ABI incompatibility and it would be very likely invalid to ["[hide]{.quote}"]{.quote} the difference via a symlink. Read [Section 8.2.1, "Upgrade Issues"](pkgmgt.md#pkgmgmt-upgrade-issues "8.2.1. Upgrade Issues"){.xref} for details about library names.
:::

Install the shared [**bzip2**]{.command} binary into the `/usr/bin`{.filename} directory, and replace two copies of [**bzip2**]{.command} with symlinks:

``` userinput
cp -v bzip2-shared /usr/bin/bzip2
for i in /usr/bin/{bzcat,bunzip2}; do
  ln -sfv bzip2 $i
done
```

Remove a useless static library:

``` userinput
rm -fv /usr/lib/libbz2.a
```
:::::

::::::::: {.content lang="en"}
## []{#contents-bzip2}8.7.2. Contents of Bzip2 {#contents-of-bzip2 .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [bunzip2 (link to bzip2), bzcat (link to bzip2), bzcmp (link to bzdiff), bzdiff, bzegrep (link to bzgrep), bzfgrep (link to bzgrep), bzgrep, bzip2, bzip2recover, bzless (link to bzmore), and bzmore]{.segbody}
:::

::: seg
**Installed libraries:** [libbz2.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/bzip2-1.0.8]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#bunzip2}[[**bunzip2**]{.command}]{.term}             Decompresses bzipped files
  []{#bzcat}[[**bzcat**]{.command}]{.term}                 Decompresses to standard output
  []{#bzcmp}[[**bzcmp**]{.command}]{.term}                 Runs [**cmp**]{.command} on bzipped files
  []{#bzdiff}[[**bzdiff**]{.command}]{.term}               Runs [**diff**]{.command} on bzipped files
  []{#bzegrep}[[**bzegrep**]{.command}]{.term}             Runs [**egrep**]{.command} on bzipped files
  []{#bzfgrep}[[**bzfgrep**]{.command}]{.term}             Runs [**fgrep**]{.command} on bzipped files
  []{#bzgrep}[[**bzgrep**]{.command}]{.term}               Runs [**grep**]{.command} on bzipped files
  []{#bzip2}[[**bzip2**]{.command}]{.term}                 Compresses files using the Burrows-Wheeler block sorting text compression algorithm with Huffman coding; the compression rate is better than that achieved by more conventional compressors using ["[Lempel-Ziv]{.quote}"]{.quote} algorithms, like [**gzip**]{.command}
  []{#bzip2recover}[[**bzip2recover**]{.command}]{.term}   Tries to recover data from damaged bzipped files
  []{#bzless}[[**bzless**]{.command}]{.term}               Runs [**less**]{.command} on bzipped files
  []{#bzmore}[[**bzmore**]{.command}]{.term}               Runs [**more**]{.command} on bzipped files
  []{#libbz2}[`libbz2`{.filename}]{.term}                  The library implementing lossless, block-sorting data compression, using the Burrows-Wheeler algorithm
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](zlib.md "Zlib-1.3.2"){accesskey="p"}

    Zlib-1.3.2

-   [Next](xz.md "Xz-5.8.3"){accesskey="n"}

    Xz-5.8.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
