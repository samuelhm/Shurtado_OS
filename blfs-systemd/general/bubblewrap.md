::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](bluez.md "BlueZ-5.86"){accesskey="p"}

    BlueZ-5.86

-   [Next](colord.md "Colord-1.4.8"){accesskey="n"}

    Colord-1.4.8

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bubblewrap}Bubblewrap-0.11.2 {#bubblewrap-0.11.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Bubblewrap {#introduction-to-bubblewrap .sect2}

[Bubblewrap]{.application} is a setuid implementation of user namespaces, or sandboxing, that provides access to a subset of kernel user namespace features. Bubblewrap allows user owned processes to run in an isolated environment with limited access to the underlying filesystem.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/containers/bubblewrap/releases/download/v0.11.2/bubblewrap-0.11.2.tar.xz](https://github.com/containers/bubblewrap/releases/download/v0.11.2/bubblewrap-0.11.2.tar.xz){.ulink}

-   Download MD5 sum: 6376255e2e505100e01b20c2dafa7faf

-   Download size: 116 KB

-   Estimated disk space required: 3.8 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Bubblewrap Dependencies

#### Optional

[libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (to generate manual pages), [libseccomp-2.6.0](libseccomp.md "libseccomp-2.6.0"){.xref} (built with python bindings, for tests), [bash-completion](https://github.com/scop/bash-completion){.ulink}, and [SELinux](https://github.com/SELinuxProject/selinux){.ulink}
:::::

::: {.kernel lang="en"}
## []{#bubblewrap-kernel}Kernel Configuration {#kernel-configuration .sect2}

When this package began, upstream expected it could be installed suid-root. That was a long time ago, suid-root is generally considered a bad idea. As well as the default namespaces, this package requires the optional User namespace to be enabled. If that has not yet been enabled, select the following option in the kernel configuration and recompile the kernel:

``` screen
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
:::

::: {.installation lang="en"}
## Installation of Bubblewrap {#installation-of-bubblewrap .sect2}

Install [Bubblewrap]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

Next, if you desire to run the test suite, fix an issue caused by the merged-/usr configuration in LFS:

``` userinput
sed 's@symlink usr/lib64@ro-bind-try /lib64@' -i ../tests/libtest.sh
```

To test the results, issue (as a user other than the `root`{.systemitem} user): [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [bwrap]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ ---------------------------------------------
  []{#bwrap}[[**bwrap**]{.command}]{.term}   generates a sandbox for a program to run in
  ------------------------------------------ ---------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](bluez.md "BlueZ-5.86"){accesskey="p"}

    BlueZ-5.86

-   [Next](colord.md "Colord-1.4.8"){accesskey="n"}

    Colord-1.4.8

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
