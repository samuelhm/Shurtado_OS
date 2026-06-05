::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 4. Final Preparations

-   [Prev](addinguser.md "Adding the LFS User"){accesskey="p"}

    Adding the LFS User

-   [Next](aboutsbus.md "About SBUs"){accesskey="n"}

    About SBUs

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-preps-settingenviron}4.4. Setting Up the Environment {#setting-up-the-environment .sect1}

:::::: {.sect1 lang="en"}
Set up a good working environment by creating two new startup files for the [**bash**]{.command} shell. While logged in as user `lfs`{.systemitem}, issue the following command to create a new `.bash_profile`{.filename}:

``` userinput
cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF
```

When logged on as user `lfs`{.systemitem}, or when switched to the `lfs`{.systemitem} user using an [**su**]{.command} command with the ["[*`-`*]{.quote}"]{.quote} option, the initial shell is a [*login*]{.emphasis} shell which reads the `/etc/profile`{.filename} of the host (probably containing some settings and environment variables) and then `.bash_profile`{.filename}. The [**exec env -i\.../bin/bash**]{.command} command in the `.bash_profile`{.filename} file replaces the running shell with a new one with a completely empty environment, except for the `HOME`{.envar}, `TERM`{.envar}, and `PS1`{.envar} variables. This ensures that no unwanted and potentially hazardous environment variables from the host system leak into the build environment.

The new instance of the shell is a [*non-login*]{.emphasis} shell, which does not read, and execute, the contents of the `/etc/profile`{.filename} or `.bash_profile`{.filename} files, but rather reads, and executes, the `.bashrc`{.filename} file instead. Create the `.bashrc`{.filename} file now:

``` userinput
cat > ~/.bashrc << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
EOF
```

::: variablelist
**The meaning of the settings in `.bashrc`{.filename}**

[*`set +h`*]{.term}

:   The [**set +h**]{.command} command turns off [**bash**]{.command}\'s hash function. Hashing is ordinarily a useful feature---[**bash**]{.command} uses a hash table to remember the full path to executable files to avoid searching the `PATH`{.envar} time and again to find the same executable. However, the new tools should be used as soon as they are installed. Switching off the hash function forces the shell to search the `PATH`{.envar} whenever a program is to be run. As such, the shell will find the newly compiled tools in `$LFS/tools/bin`{.filename} as soon as they are available without remembering a previous version of the same program provided by the host distro, in `/usr/bin`{.filename} or `/bin`{.filename}.

[*`umask 022`*]{.term}

:   Setting the umask as we\'ve already explained in [Section 2.6, "Setting the \$LFS Variable and the Umask."](../chapter02/aboutlfs.md "2.6. Setting the $LFS Variable and the Umask"){.xref}

[*`LFS=/mnt/lfs`*]{.term}

:   The `LFS`{.envar} variable should be set to the chosen mount point.

[*`LC_ALL=POSIX`*]{.term}

:   The `LC_ALL`{.envar} variable controls the localization of certain programs, making their messages follow the conventions of a specified country. Setting `LC_ALL`{.envar} to ["[POSIX]{.quote}"]{.quote} or ["[C]{.quote}"]{.quote} (the two are equivalent) ensures that everything will work as expected in the cross-compilation environment.

[*`LFS_TGT=$(uname -m)-lfs-linux-gnu`*]{.term}

:   The `LFS_TGT`{.envar} variable sets a non-default, but compatible machine description for use when building our cross-compiler and linker and when cross-compiling our temporary toolchain. More information is provided by [Toolchain Technical Notes](../partintro/toolchaintechnotes.md "Toolchain Technical Notes"){.xref}.

[*`PATH=/usr/bin`*]{.term}

:   Many modern Linux distributions have merged `/bin`{.filename} and `/usr/bin`{.filename}. When this is the case, the standard `PATH`{.envar} variable should be set to `/usr/bin/`{.filename} for the [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} environment. When this is not the case, the following line adds `/bin`{.filename} to the path.

[*`if [ ! -L /bin ]; then PATH=/bin:$PATH; fi`*]{.term}

:   If `/bin`{.filename} is not a symbolic link, it must be added to the `PATH`{.envar} variable.

[*`PATH=$LFS/tools/bin:$PATH`*]{.term}

:   By putting `$LFS/tools/bin`{.filename} ahead of the standard `PATH`{.envar}, the cross-compiler installed at the beginning of [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} is picked up by the shell immediately after its installation. This, combined with turning off hashing, limits the risk that the compiler from the host is used instead of the cross-compiler.

[*`CONFIG_SITE=$LFS/usr/share/config.site`*]{.term}

:   In [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref}, if this variable is not set, [**configure**]{.command} scripts may attempt to load configuration items specific to some distributions from `/usr/share/config.site`{.filename} on the host system. Override it to prevent potential contamination from the host.

[*`export ...`*]{.term}

:   While the preceding commands have set some variables, in order to make them visible within any sub-shells, we export them.
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Several commercial distributions add an undocumented instantiation of `/etc/bash.bashrc`{.filename} to the initialization of [**bash**]{.command}. This file has the potential to modify the `lfs`{.systemitem} user\'s environment in ways that can affect the building of critical LFS packages. To make sure the `lfs`{.systemitem} user\'s environment is clean, check for the presence of `/etc/bash.bashrc`{.filename} and, if present, move it out of the way. As the `root`{.systemitem} user, run:

``` userinput
[ ! -e /etc/bash.bashrc ] || mv -v /etc/bash.bashrc /etc/bash.bashrc.NOUSE
```

When the `lfs`{.systemitem} user is no longer needed (at the beginning of [Chapter 7](../chapter07/chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){.xref}), you may safely restore `/etc/bash.bashrc`{.filename} (if desired).

Note that the LFS Bash package we will build in [Section 8.37, "Bash-5.3"](../chapter08/bash.md "8.37. Bash-5.3"){.xref} is not configured to load or execute `/etc/bash.bashrc`{.filename}, so this file is useless on a completed LFS system.
:::

For many modern systems with multiple processors (or cores) the compilation time for a package can be reduced by performing a \"parallel make\" by telling the make program how many processors are available via a command line option or an environment variable. For instance, an Intel Core i9-13900K processor has 8 P (performance) cores and 16 E (efficiency) cores, and a P core can simultaneously run two threads so each P core are modeled as two logical cores by the Linux kernel. As the result there are 32 logical cores in total. One obvious way to use all these logical cores is allowing [**make**]{.command} to spawn up to 32 build jobs. This can be done by passing the *`-j32`* option to [**make**]{.command}:

``` userinput
make -j32
```

Or set the `MAKEFLAGS`{.envar} environment variable and its content will be automatically used by [**make**]{.command} as command line options:

``` userinput
export MAKEFLAGS=-j32
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Never pass a *`-j`* option without a number to [**make**]{.command} or set such an option in `MAKEFLAGS`{.envar}. Doing so will allow [**make**]{.command} to spawn infinite build jobs and cause system stability problems.
:::

To use all logical cores available for building packages in [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref}, set `MAKEFLAGS`{.envar} now in `.bashrc`{.filename}:

``` userinput
cat >> ~/.bashrc << "EOF"
export MAKEFLAGS=-j$(nproc)
EOF
```

Replace *`$(nproc)`* with the number of logical cores you want to use if you don\'t want to use all the logical cores.

Finally, to ensure the environment is fully prepared for building the temporary tools, force the [**bash**]{.command} shell to read the new user profile:

``` userinput
source ~/.bash_profile
```
::::::

::: navfooter
-   [Prev](addinguser.md "Adding the LFS User"){accesskey="p"}

    Adding the LFS User

-   [Next](aboutsbus.md "About SBUs"){accesskey="n"}

    About SBUs

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
