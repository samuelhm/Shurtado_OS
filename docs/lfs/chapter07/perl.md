::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](bison.md "Bison-3.8.2"){accesskey="p"}

    Bison-3.8.2

-   [Next](Python.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-perl}7.9. Perl-5.42.2 {#perl-5.42.2 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Perl package contains the Practical Extraction and Report Language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.6 SBU]{.segbody}
:::

::: seg
**Required disk space:** [295 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 7.9.1. Installation of Perl {#installation-of-perl .sect2}

Prepare Perl for compilation:

``` userinput
sh Configure -des                                         \
             -D prefix=/usr                               \
             -D vendorprefix=/usr                         \
             -D useshrplib                                \
             -D privlib=/usr/lib/perl5/5.42/core_perl     \
             -D archlib=/usr/lib/perl5/5.42/core_perl     \
             -D sitelib=/usr/lib/perl5/5.42/site_perl     \
             -D sitearch=/usr/lib/perl5/5.42/site_perl    \
             -D vendorlib=/usr/lib/perl5/5.42/vendor_perl \
             -D vendorarch=/usr/lib/perl5/5.42/vendor_perl
```

::: variablelist
**The meaning of the Configure options:**

[*`-des`*]{.term}

:   This is a combination of three options: -d uses defaults for all items; -e ensures completion of all tasks; -s silences non-essential output.

[*`-D vendorprefix=/usr`*]{.term}

:   This ensures [**perl**]{.command} knows how to tell packages where they should install their Perl modules.

[*`-D useshrplib`*]{.term}

:   Build `libperl`{.systemitem} needed by some Perl modules as a shared library, instead of a static library.

[*`-D privlib,-D archlib,-D sitelib,...`*]{.term}

:   These settings define where Perl looks for installed modules. The LFS editors chose to put them in a directory structure based on the MAJOR.MINOR version of Perl (5.42) which allows upgrading Perl to newer patch levels (the patch level is the last dot separated part in the full version string like 5.42.2) without reinstalling all of the modules.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.44.2, "Contents of Perl."](../chapter08/perl.md#contents-perl "8.44.2. Contents of Perl"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](bison.md "Bison-3.8.2"){accesskey="p"}

    Bison-3.8.2

-   [Next](Python.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
