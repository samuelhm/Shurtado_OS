::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 4. Final Preparations

-   [Prev](settingenvironment.md "Setting Up the Environment"){accesskey="p"}

    Setting Up the Environment

-   [Next](abouttestsuites.md "About the Test Suites"){accesskey="n"}

    About the Test Suites

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-preps-aboutsbus}4.5. About SBUs {#about-sbus .sect1}

:::: {.sect1 lang="en"}
Many people would like to know beforehand approximately how long it takes to compile and install each package. Because Linux From Scratch can be built on many different systems, it is impossible to provide absolute time estimates. The biggest package (gcc) will take approximately 5 minutes on the fastest systems, but could take days on slower systems! Instead of providing actual times, the Standard Build Unit (SBU) measure will be used instead.

The SBU measure works as follows. The first package to be compiled is binutils in [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref}. The time it takes to compile using one core is what we will refer to as the Standard Build Unit or SBU. All other compile times will be expressed in terms of this unit of time.

For example, consider a package whose compilation time is 4.5 SBUs. This means that if your system took 4 minutes to compile and install the first pass of binutils, it will take [*approximately*]{.emphasis} 18 minutes to build the example package. Fortunately, most build times are shorter than one SBU.

SBUs are not entirely accurate because they depend on many factors, including the host system\'s version of GCC. They are provided here to give an estimate of how long it might take to install a package, but the numbers can vary by as much as dozens of minutes in some cases.

On some newer systems, the motherboard is capable of controlling the system clock speed. This can be controlled with a command such as [**powerprofilesctl**]{.command}. This is not available in LFS, but may be available on the host distro. After LFS is complete, it can be added to a system with the procedures at the [BLFS power-profiles-daemon](https://www.linuxfromscratch.org/blfs/view/systemd/sysutils/power-profiles-daemon.html){.ulink} page. Before measuring the build time of any package it is advisable to use a system power profile set for maximum performance (and maximum power consumption). Otherwise the measured SBU value may be inaccurate because the system may react differently when building [binutils-pass1](../chapter05/binutils-pass1.md "5.2. Binutils-2.46.0 - Pass 1"){.xref} or other packages. Be aware that a significant inaccuracy can still show up even if the same profile is used for both packages because the system may respond slower if the system is idle when starting the build procedure. Setting the power profile to ["[performance]{.quote}"]{.quote} will minimize this problem. And obviously doing so will also make the system build LFS faster.

If [**powerprofilesctl**]{.command} is available, issue the [**powerprofilesctl set performance**]{.command} command to select the `performance`{.literal} profile. Some distros provides the [**tuned-adm**]{.command} command for managing the profiles instead of [**powerprofilesctl**]{.command}, on these distros issue the [**tuned-adm profile throughput-performance**]{.command} command to select the `throughput-performance`{.literal} profile.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When multiple processors are used in this way, the SBU units in the book will vary even more than they normally would. In some cases, the make step will simply fail. Analyzing the output of the build process will also be more difficult because the lines from different processes will be interleaved. If you run into a problem with a build step, revert to a single processor build to properly analyze the error messages.

The times presented here for all packages (except [binutils-pass1](../chapter05/binutils-pass1.md "5.2. Binutils-2.46.0 - Pass 1"){.xref} which is based on one core) are based upon using four cores (-j4). The times in Chapter 8 also include the time to run the regression tests for the package unless specified otherwise.
:::
::::

::: navfooter
-   [Prev](settingenvironment.md "Setting Up the Environment"){accesskey="p"}

    Setting Up the Environment

-   [Next](abouttestsuites.md "About the Test Suites"){accesskey="n"}

    About the Test Suites

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
