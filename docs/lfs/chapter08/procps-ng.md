::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](man-db.md "Man-DB-2.13.1"){accesskey="p"}

    Man-DB-2.13.1

-   [Next](util-linux.md "Util-linux-2.42.1"){accesskey="n"}

    Util-linux-2.42.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-procps}8.79. Procps-ng-4.0.6 {#procps-ng-4.0.6 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Procps-ng package contains programs for monitoring processes.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [28 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.79.1. Installation of Procps-ng {#installation-of-procps-ng .sect2}

Prepare Procps-ng for compilation:

``` userinput
./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.6 \
            --disable-static                        \
            --disable-kill                          \
            --enable-watch8bit                      \
            --with-systemd
```

::: variablelist
**The meaning of the configure option:**

[*`--disable-kill`*]{.term}

:   This switch disables building the [**kill**]{.command} command; it will be installed from the Util-linux package.

[*`--enable-watch8bit`*]{.term}

:   This switch enables the ncursesw support for the [**watch**]{.command} command, so it can handle 8-bit characters.
:::

Compile the package:

``` userinput
make
```

To run the test suite, run:

``` userinput
chown -R tester .
su tester -c "PATH=$PATH make check"
```

One test named `ps with output flag bsdtime,cputime,etime,etimes`{.literal} is known to fail if the host kernel is not built with `CONFIG_BSD_PROCESS_ACCT`{.literal} enabled.

Install the package:

``` userinput
make install
```
::::

::::::::: {.content lang="en"}
## []{#contents-procps}8.79.2. Contents of Procps-ng {#contents-of-procps-ng .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [free, pgrep, pidof, pkill, pmap, ps, pwdx, slabtop, sysctl, tload, top, uptime, vmstat, w, and watch]{.segbody}
:::

::: seg
**Installed library:** [libproc-2.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/procps and /usr/share/doc/procps-ng-4.0.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  []{#free}[[**free**]{.command}]{.term}          Reports the amount of free and used memory (both physical and swap memory) in the system
  []{#pgrep}[[**pgrep**]{.command}]{.term}        Looks up processes based on their name and other attributes
  []{#pidof}[[**pidof**]{.command}]{.term}        Reports the PIDs of the given programs
  []{#pkill}[[**pkill**]{.command}]{.term}        Signals processes based on their name and other attributes
  []{#pmap}[[**pmap**]{.command}]{.term}          Reports the memory map of the given process
  []{#ps}[[**ps**]{.command}]{.term}              Lists the current running processes
  []{#pwdx}[[**pwdx**]{.command}]{.term}          Reports the current working directory of a process
  []{#slabtop}[[**slabtop**]{.command}]{.term}    Displays detailed kernel slab cache information in real time
  []{#sysctl}[[**sysctl**]{.command}]{.term}      Modifies kernel parameters at run time
  []{#tload}[[**tload**]{.command}]{.term}        Prints a graph of the current system load average
  []{#top}[[**top**]{.command}]{.term}            Displays a list of the most CPU intensive processes; it provides an ongoing look at processor activity in real time
  []{#uptime}[[**uptime**]{.command}]{.term}      Reports how long the system has been running, how many users are logged on, and the system load averages
  []{#vmstat}[[**vmstat**]{.command}]{.term}      Reports virtual memory statistics, giving information about processes, memory, paging, block Input/Output (IO), traps, and CPU activity
  []{#w}[[**w**]{.command}]{.term}                Shows which users are currently logged on, where, and since when
  []{#watch}[[**watch**]{.command}]{.term}        Runs a given command repeatedly, displaying the first screen-full of its output; this allows a user to watch the output change over time
  []{#libproc-2}[`libproc-2`{.filename}]{.term}   Contains the functions used by most programs in this package
  ----------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](man-db.md "Man-DB-2.13.1"){accesskey="p"}

    Man-DB-2.13.1

-   [Next](util-linux.md "Util-linux-2.42.1"){accesskey="n"}

    Util-linux-2.42.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
