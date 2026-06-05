::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](less.md "Less-702"){accesskey="p"}

    Less-702

-   [Next](autoconf.md "Autoconf-2.73"){accesskey="n"}

    Autoconf-2.73

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-perl}8.44. Perl-5.42.2 {#perl-5.42.2 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Perl package contains the Practical Extraction and Report Language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [257 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.44.1. Installation of Perl {#installation-of-perl .sect2}

This version of Perl builds the Compress::Raw::Zlib and Compress::Raw::BZip2 modules. By default Perl will use an internal copy of the sources for the build. Issue the following command so that Perl will use the libraries installed on the system:

``` userinput
export BUILD_ZLIB=False
export BUILD_BZIP2=0
```

To have full control over the way Perl is set up, you can remove the ["[-des]{.quote}"]{.quote} options from the following command and hand-pick the way this package is built. Alternatively, use the command exactly as shown below to use the defaults that Perl auto-detects:

``` userinput
sh Configure -des                                          \
             -D prefix=/usr                                \
             -D vendorprefix=/usr                          \
             -D privlib=/usr/lib/perl5/5.42/core_perl      \
             -D archlib=/usr/lib/perl5/5.42/core_perl      \
             -D sitelib=/usr/lib/perl5/5.42/site_perl      \
             -D sitearch=/usr/lib/perl5/5.42/site_perl     \
             -D vendorlib=/usr/lib/perl5/5.42/vendor_perl  \
             -D vendorarch=/usr/lib/perl5/5.42/vendor_perl \
             -D man1dir=/usr/share/man/man1                \
             -D man3dir=/usr/share/man/man3                \
             -D pager="/usr/bin/less -isR"                 \
             -D useshrplib                                 \
             -D usethreads
```

::: variablelist
**The meaning of the new Configure options:**

[*`-D pager="/usr/bin/less -isR"`*]{.term}

:   This ensures that **`less`** is used instead of **`more`**.

[*`-D man1dir=/usr/share/man/man1 -D man3dir=/usr/share/man/man3`*]{.term}

:   Since Groff is not installed yet, [**Configure**]{.command} will not create man pages for Perl. These parameters override this behavior.

[*`-D usethreads`*]{.term}

:   Build Perl with support for threads.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
TEST_JOBS=$(nproc) make test_harness
```

Install the package and clean up:

``` userinput
make install
unset BUILD_ZLIB BUILD_BZIP2
```
::::

::::::::: {.content lang="en"}
## []{#contents-perl}8.44.2. Contents of Perl {#contents-of-perl .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [corelist, cpan, enc2xs, encguess, h2ph, h2xs, instmodsh, json_pp, libnetcfg, perl, perl5.42.2 (hard link to perl), perlbug, perldoc, perlivp, perlthanks (hard link to perlbug), piconv, pl2pm, pod2html, pod2man, pod2text, pod2usage, podchecker, podselect, prove, ptar, ptardiff, ptargrep, shasum, splain, xsubpp, and zipdetails]{.segbody}
:::

::: seg
**Installed libraries:** [Many which cannot all be listed here]{.segbody}
:::

::: seg
**Installed directory:** [/usr/lib/perl5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------
  []{#corelist}[[**corelist**]{.command}]{.term}         A command line front end to Module::CoreList
  []{#cpan}[[**cpan**]{.command}]{.term}                 Interact with the Comprehensive Perl Archive Network (CPAN) from the command line
  []{#enc2xs}[[**enc2xs**]{.command}]{.term}             Builds a Perl extension for the Encode module from either Unicode Character Mappings or Tcl Encoding Files
  []{#encguess}[[**encguess**]{.command}]{.term}         Guess the encoding type of one or several files
  []{#h2ph}[[**h2ph**]{.command}]{.term}                 Converts `.h`{.filename} C header files to `.ph`{.filename} Perl header files
  []{#h2xs}[[**h2xs**]{.command}]{.term}                 Converts `.h`{.filename} C header files to Perl extensions
  []{#instmodsh}[[**instmodsh**]{.command}]{.term}       Shell script for examining installed Perl modules; it can create a tarball from an installed module
  []{#json_pp}[[**json_pp**]{.command}]{.term}           Converts data between certain input and output formats
  []{#libnetcfg}[[**libnetcfg**]{.command}]{.term}       Can be used to configure the `libnet`{.filename} Perl module
  []{#perl}[[**perl**]{.command}]{.term}                 Combines some of the best features of C, [**sed**]{.command}, [**awk**]{.command} and [**sh**]{.command} into a single Swiss Army language
  []{#perl-version}[[**perl5.42.2**]{.command}]{.term}   A hard link to [**perl**]{.command}
  []{#perlbug}[[**perlbug**]{.command}]{.term}           Used to generate bug reports about Perl, or the modules that come with it, and mail them
  []{#perldoc}[[**perldoc**]{.command}]{.term}           Displays a piece of documentation in pod format that is embedded in the Perl installation tree or in a Perl script
  []{#perlivp}[[**perlivp**]{.command}]{.term}           The Perl Installation Verification Procedure; it can be used to verify that Perl and its libraries have been installed correctly
  []{#perlthanks}[[**perlthanks**]{.command}]{.term}     Used to generate thank you messages to mail to the Perl developers
  []{#piconv}[[**piconv**]{.command}]{.term}             A Perl version of the character encoding converter [**iconv**]{.command}
  []{#pl2pm}[[**pl2pm**]{.command}]{.term}               A rough tool for converting Perl4 `.pl`{.filename} files to Perl5 `.pm`{.filename} modules
  []{#pod2html}[[**pod2html**]{.command}]{.term}         Converts files from pod format to HTML format
  []{#pod2man}[[**pod2man**]{.command}]{.term}           Converts pod data to formatted \*roff input
  []{#pod2text}[[**pod2text**]{.command}]{.term}         Converts pod data to formatted ASCII text
  []{#pod2usage}[[**pod2usage**]{.command}]{.term}       Prints usage messages from embedded pod docs in files
  []{#podchecker}[[**podchecker**]{.command}]{.term}     Checks the syntax of pod format documentation files
  []{#podselect}[[**podselect**]{.command}]{.term}       Displays selected sections of pod documentation
  []{#prove}[[**prove**]{.command}]{.term}               Command line tool for running tests against the Test::Harness module
  []{#ptar}[[**ptar**]{.command}]{.term}                 A [**tar**]{.command}-like program written in Perl
  []{#ptardiff}[[**ptardiff**]{.command}]{.term}         A Perl program that compares an extracted archive with an unextracted one
  []{#ptargrep}[[**ptargrep**]{.command}]{.term}         A Perl program that applies pattern matching to the contents of files in a tar archive
  []{#shasum}[[**shasum**]{.command}]{.term}             Prints or checks SHA checksums
  []{#splain}[[**splain**]{.command}]{.term}             Is used to force verbose warning diagnostics in Perl
  []{#xsubpp}[[**xsubpp**]{.command}]{.term}             Converts Perl XS code into C code
  []{#zipdetails}[[**zipdetails**]{.command}]{.term}     Displays details about the internal structure of a Zip file
  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](less.md "Less-702"){accesskey="p"}

    Less-702

-   [Next](autoconf.md "Autoconf-2.73"){accesskey="n"}

    Autoconf-2.73

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
