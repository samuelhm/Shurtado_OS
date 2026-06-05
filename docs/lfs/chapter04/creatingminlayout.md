::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 4. Final Preparations

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](addinguser.md "Adding the LFS User"){accesskey="n"}

    Adding the LFS User

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-creatingminlayout}4.2. Creating a Limited Directory Layout in the LFS Filesystem {#creating-a-limited-directory-layout-in-the-lfs-filesystem .sect1}

:::: {.sect1 lang="en"}
In this section, we begin populating the LFS filesystem with the pieces that will constitute the final Linux system. The first step is to create a limited directory hierarchy, so that the programs compiled in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} (as well as glibc and libstdc++ in [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref}) can be installed in their final location. We do this so those temporary programs will be overwritten when the final versions are built in [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}.

Create the required directory layout by issuing the following commands as `root`{.systemitem}:

``` userinput
mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac
```

Programs in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} will be compiled with a cross-compiler (more details can be found in section [Toolchain Technical Notes](../partintro/toolchaintechnotes.md "Toolchain Technical Notes"){.xref}). This cross-compiler will be installed in a special directory, to separate it from the other programs. Still acting as `root`{.systemitem}, create that directory with this command:

``` userinput
mkdir -pv $LFS/tools
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The LFS editors have deliberately decided not to use a `/usr/lib64`{.filename} directory. Several steps are taken to be sure the toolchain will not use it. If for any reason this directory appears (either because you made an error in following the instructions, or because you installed a binary package that created it after finishing LFS), it may break your system. You should always be sure this directory does not exist.
:::
::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](addinguser.md "Adding the LFS User"){accesskey="n"}

    Adding the LFS User

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
