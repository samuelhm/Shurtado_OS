::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](diffutils.md "Diffutils-3.12"){accesskey="p"}

    Diffutils-3.12

-   [Next](findutils.md "Findutils-4.10.0"){accesskey="n"}

    Findutils-4.10.0

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-file}6.7. File-5.47 {#file-5.47 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The File package contains a utility for determining the type of a given file or files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [43 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.7.1. Installation of File {#installation-of-file .sect2}

The [**file**]{.command} command on the build host needs to be the same version as the one we are building in order to create the signature file. Run the following commands to make a temporary copy of the [**file**]{.command} command:

``` userinput
mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd
```

::: variablelist
**The meaning of the new configure option:**

[*`--disable-*`*]{.term}

:   The configuration script attempts to use some packages from the host distribution if the corresponding library files exist. It may cause compilation failure if a library file exists, but the corresponding header files do not. These options prevent using these unneeded capabilities from the host.
:::

Prepare File for compilation:

``` userinput
./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)
```

Compile the package:

``` userinput
make FILE_COMPILE=$(pwd)/build/src/file
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

Remove the libtool archive file because it is harmful for cross compilation:

``` userinput
rm -v $LFS/usr/lib/libmagic.la
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.11.2, "Contents of File."](../chapter08/file.md#contents-file "8.11.2. Contents of File"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](diffutils.md "Diffutils-3.12"){accesskey="p"}

    Diffutils-3.12

-   [Next](findutils.md "Findutils-4.10.0"){accesskey="n"}

    Findutils-4.10.0

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
