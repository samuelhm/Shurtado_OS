::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 4. Final Preparations

-   [Prev](aboutsbus.md "About SBUs"){accesskey="p"}

    About SBUs

-   [Next](../part3.md "Building the LFS Cross Toolchain and Temporary Tools"){accesskey="n"}

    Building the LFS Cross Toolchain and Temporary Tools

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-preps-abouttestsuites}4.6. About the Test Suites {#about-the-test-suites .sect1}

:::: {.sect1 lang="en"}
Most packages provide a test suite. Running the test suite for a newly built package is a good idea because it can provide a ["[sanity check]{.quote}"]{.quote} indicating that everything compiled correctly. A test suite that passes its set of checks usually proves that the package is functioning as the developer intended. It does not, however, guarantee that the package is totally bug free.

Some test suites are more important than others. For example, the test suites for the core toolchain packages---GCC, binutils, and glibc---are of the utmost importance due to their central role in a properly functioning system. The test suites for GCC and glibc can take a very long time to complete, especially on slower hardware, but are strongly recommended.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Running the test suites in [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} is pointless; since the test programs are compiled with a cross-compiler, they probably can\'t run on the build host.
:::

A common issue with running the test suites for binutils and GCC is running out of pseudo terminals (PTYs). This can result in a large number of failing tests. This may happen for several reasons, but the most likely cause is that the host system does not have the `devpts`{.systemitem} file system set up correctly. This issue is discussed in greater detail at [https://www.linuxfromscratch.org/lfs/faq.html#no-ptys](https://www.linuxfromscratch.org/lfs/faq.html#no-ptys){.ulink}.

Sometimes package test suites will fail for reasons which the developers are aware of and have deemed non-critical. Consult the logs located at [https://www.linuxfromscratch.org/lfs/build-logs/development/](https://www.linuxfromscratch.org/lfs/build-logs/development/){.ulink} to verify whether or not these failures are expected. This site is valid for all test suites throughout this book.
::::

::: navfooter
-   [Prev](aboutsbus.md "About SBUs"){accesskey="p"}

    About SBUs

-   [Next](../part3.md "Building the LFS Cross Toolchain and Temporary Tools"){accesskey="n"}

    Building the LFS Cross Toolchain and Temporary Tools

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
