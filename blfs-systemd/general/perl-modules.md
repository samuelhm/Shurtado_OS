::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](patchelf.md "Patchelf-0.18.0"){accesskey="p"}

    Patchelf-0.18.0

-   [Next](perl-deps.md "Perl Module Dependencies"){accesskey="n"}

    Perl Module Dependencies

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#perl-modules}Perl Modules {#perl-modules .sect1}

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
:::: {.package lang="en"}
## Introduction to Perl Modules {#introduction-to-perl-modules .sect2}

The [Perl]{.application} module packages (also referred to as Distributions, because each can contain multiple modules) add useful objects to the [Perl]{.application} language. The packages listed on this page are required or recommended for other packages in the book. If they have dependent modules, those are either on this page or else on the next page ([Perl Module Dependencies](perl-deps.md "Perl Module Dependencies"){.xref}).

In many cases, only the required or recommended dependencies are listed - there might be other modules which allow more tests to be run, but omitting them will still allow the tests to `PASS`{.literal}.

For a few modules, the BLFS editors have determined that other modules still listed as prerequisites are not required, and omitted them.

Where an alphabetically-earlier dependency of the same module pulls in a dependency, it is not mentioned for the later dependencies of the same module. You should build the listed dependencies in order.

It is generally worth running the tests for perl modules, they often can show problems such as missing dependencies which are required to use the module. Here, the editors have attempted to separate those dependencies which are only required for running test suites, but they will not be mentioned for a module where one of its dependencies uses that module for its own test suite. That is to say, if you intend to run the test suites, please run them for each dependency of the module.

It is possible to automatically install the current versions of a module and [*all*]{.emphasis} missing or too-old dependencies [*recommended by upstream*]{.emphasis} using CPAN. See [CPAN automated install of perl modules](perl-modules.md#perl-alternatives "CPAN automated install of perl modules"){.xref} at the end of this page.

Most of these modules only install files below `/usr/lib/perl5/site_perl/5.xx.y`{.filename} and those will not be documented. One or two install programs (mostly, perl scripts), or a library, into `/usr/bin/`{.filename} or `/usr/lib/`{.filename} and these [*are*]{.emphasis} documented.

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/perl-modules](https://wiki.linuxfromscratch.org/blfs/wiki/perl-modules){.ulink}

::: itemizedlist
-   [Archive-Zip-1.68](perl-modules.md#perl-archive-zip "Archive::Zip-1.68"){.xref}

-   [autovivification-0.18](perl-modules.md#perl-autovivification "autovivification-0.18"){.xref}

-   [Business-ISBN-3.014](perl-modules.md#perl-business-isbn "Business::ISBN-3.014"){.xref}

-   [Business-ISMN-1.205](perl-modules.md#perl-business-ismn "Business::ISMN-1.205"){.xref}

-   [Business-ISSN-1.008](perl-modules.md#perl-business-issn "Business::ISSN-1.008"){.xref}

-   [Class-Accessor-0.51](perl-modules.md#perl-class-accessor "Class::Accessor-0.51"){.xref}

-   [Data-Compare-1.29](perl-modules.md#perl-data-compare "Data::Compare-1.29"){.xref}

-   [Data-Dump-1.25](perl-modules.md#perl-data-dump "Data::Dump-1.25"){.xref}

-   [Data-Uniqid-0.12](perl-modules.md#perl-data-uniqid "Data::Uniqid-0.12"){.xref}

-   [DateTime-Calendar-Julian-0.107](perl-modules.md#perl-datetime-calendar-julian "DateTime::Calendar::Julian-0.107"){.xref}

-   [DateTime-Format-Builder-0.83](perl-modules.md#perl-datetime-format-builder "DateTime::Format::Builder-0.83"){.xref}

-   [Encode-EUCJPASCII-0.03](perl-modules.md#perl-encode-eucjpascii "Encode::EUCJPASCII-0.03"){.xref}

-   [Encode-HanExtra-0.23](perl-modules.md#perl-encode-hanextra "Encode::HanExtra-0.23"){.xref}

-   [Encode-JIS2K-0.05](perl-modules.md#perl-encode-jis2k "Encode::JIS2K-0.05"){.xref}

-   [File-FcntlLock-0.22](perl-modules.md#perl-file-fcntllock "File::FcntlLock-0.22"){.xref}

-   [File-Slurper-0.014](perl-modules.md#perl-file-slurper "File::Slurper-0.014"){.xref}

-   [File-Which-1.27](perl-modules.md#perl-file-which "File::Which-1.27"){.xref}

-   [HTML-Parser-3.85](perl-modules.md#perl-html-parser "HTML::Parser-3.85"){.xref}

-   [HTTP-Daemon-6.17](perl-modules.md#perl-http-daemon "HTTP::Daemon-6.17"){.xref}

-   [IO-Socket-SSL-2.098](perl-modules.md#perl-io-socket-ssl "IO::Socket::SSL-2.098"){.xref}

-   [IO-String-1.08](perl-modules.md#perl-io-string "IO::String-1.08"){.xref}

-   [IPC-Run3-0.049](perl-modules.md#perl-ipc-run3 "IPC::Run3-0.049"){.xref}

-   [libwww-perl-6.83](perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref}

-   [Lingua-Translit-0.29](perl-modules.md#perl-lingua-translit "Lingua::Translit-0.29"){.xref}

-   [List-AllUtils-0.19](perl-modules.md#perl-list-allutils "List::AllUtils-0.19"){.xref}

-   [List-MoreUtils-0.430](perl-modules.md#perl-list-moreutils "List::MoreUtils-0.430"){.xref}

-   [Log-Log4perl-1.57](perl-modules.md#perl-log-log4perl "Log::Log4perl-1.57"){.xref}

-   [LWP-Protocol-https-6.15](perl-modules.md#perl-lwp-protocol-https "LWP::Protocol::https-6.15"){.xref}

-   [Module-Build-0.4234](perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref}

-   [Net-DNS-1.54](perl-modules.md#perl-net-dns "Net::DNS-1.54"){.xref}

-   [Parse-RecDescent-1.967015](perl-modules.md#perl-parse-recdescent "Parse::RecDescent-1.967015"){.xref}

-   [Parse-Yapp-1.21](perl-modules.md#perl-parse-yapp "Parse::Yapp-1.21"){.xref}

-   [PerlIO-utf8_strict-0.010](perl-modules.md#perl-perlio-utf8_strict "PerlIO::utf8_strict-0.010"){.xref}

-   [Regexp-Common-2024080801](perl-modules.md#perl-regexp-common "Regexp::Common-2024080801"){.xref}

-   [SGMLSpm-1.1](perl-modules.md#perl-sgmlspm "SGMLSpm-1.1"){.xref}

-   [Sort-Key-1.33](perl-modules.md#perl-sort-key "Sort::Key-1.33"){.xref}

-   [Test-Command-0.11](perl-modules.md#perl-test-command "Test::Command-0.11"){.xref}

-   [Test-Differences-0.72](perl-modules.md#perl-test-differences "Test::Differences-0.72"){.xref}

-   [Text-BibTeX-0.91](perl-modules.md#perl-text-bibtex "Text::BibTeX-0.91"){.xref}

-   [Text-CSV-2.06](perl-modules.md#perl-text-csv "Text::CSV-2.06"){.xref}

-   [Text-Roman-3.5](perl-modules.md#perl-text-roman "Text::Roman-3.5"){.xref}

-   [Unicode-Collate-1.31](perl-modules.md#perl-unicode-collate "Unicode::Collate-1.31"){.xref}

-   [Unicode-LineBreak-2019.001](perl-modules.md#perl-unicode-linebreak "Unicode::LineBreak-2019.001"){.xref}

-   [URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref}

-   [XML-LibXML-Simple-1.01](perl-modules.md#perl-xml-libxml-simple "XML::LibXML::Simple-1.01"){.xref}

-   [XML-LibXSLT-2.003000](perl-modules.md#perl-xml-libxslt "XML::LibXSLT-2.003000"){.xref}

-   [XML-Parser-2.59](perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref}

-   [XML-Simple-2.25](perl-modules.md#perl-xml-simple "XML::Simple-2.25"){.xref}

-   [XML-Writer-0.900](perl-modules.md#perl-xml-writer "XML::Writer-0.900"){.xref}

-   [CPAN automated install of perl modules](perl-modules.md#perl-alternatives "CPAN automated install of perl modules"){.xref}
:::
::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-archive-zip}Archive::Zip-1.68 {#archivezip-1.68 .sect2}

::::: {.package lang="en"}
### Introduction to Archive::Zip {#introduction-to-archivezip .sect3}

The Archive::Zip module allows a Perl program to create, manipulate, read, and write Zip archive files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/P/PH/PHRED/Archive-Zip-1.68.tar.gz](https://www.cpan.org/authors/id/P/PH/PHRED/Archive-Zip-1.68.tar.gz){.ulink}

-   Download MD5 sum: a33993309322164867c99e04a4000ee3
:::

#### Archive::Zip Dependencies

##### Recommended (for the test suite)

[libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Archive::Zip {#installation-of-archivezip .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [crc32]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------------------------
  []{#crc32-prog}[[**crc32**]{.command}]{.term}   computes and prints to stdout the CRC-32 values of the given files
  ----------------------------------------------- --------------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-autovivification}autovivification-0.18 {#autovivification-0.18 .sect2}

::::: {.package lang="en"}
### Introduction to the autovivification module {#introduction-to-the-autovivification-module .sect3}

This module allows you disable autovivification (the automatic creation and population of new arrays and hashes whenever undefined variables are dereferenced), and optionally throw a warning or an error when it would have occurred.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/V/VP/VPIT/autovivification-0.18.tar.gz](https://www.cpan.org/authors/id/V/VP/VPIT/autovivification-0.18.tar.gz){.ulink}

-   Download MD5 sum: 8dec994e1e7d368e055f21a5777385a0
:::
:::::

::: {.installation lang="en"}
### Installation of autovivification {#installation-of-autovivification .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::: {.sect2 lang="en"}
## []{#perl-business-isbn}Business::ISBN-3.014 {#businessisbn-3.014 .sect2}

::::: {.package lang="en"}
### Introduction to Business::ISBN {#introduction-to-businessisbn .sect3}

The Business::ISBN module provides functions for working with International Standard Book Numbers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-3.014.tar.gz](https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-3.014.tar.gz){.ulink}

-   Download MD5 sum: d20dedcc798a253223bcfcba2058689e
:::

#### Business::ISBN Dependencies

##### Required

[Business-ISBN-Data-20260311.001](perl-deps.md#perl-business-isbn-data "Business::ISBN::Data-20260311.001"){.xref}
:::::

:::: {.installation lang="en"}
### Installation of Business::ISBN {#installation-of-businessisbn .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A harmless warning may be output during the creation of the Makefile regarding the ExtUtils::MakeMaker module. This can be safely ignored.
:::

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::
::::::::

::::::: {.sect2 lang="en"}
## []{#perl-business-ismn}Business::ISMN-1.205 {#businessismn-1.205 .sect2}

::::: {.package lang="en"}
### Introduction to Business::ISMN {#introduction-to-businessismn .sect3}

The Business::ISMN module provides functions for working with International Standard Music Numbers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISMN-1.205.tar.gz](https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISMN-1.205.tar.gz){.ulink}

-   Download MD5 sum: b35f42bdaeb2fd797c51bb0821ffc906
:::

#### Business::ISMN Dependencies

##### Required

[Tie-Cycle-1.233](perl-deps.md#perl-tie-cycle "Tie::Cycle-1.233"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Business::ISMN {#installation-of-businessismn .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-business-issn}Business::ISSN-1.008 {#businessissn-1.008 .sect2}

::::: {.package lang="en"}
### Introduction to Business::ISSN {#introduction-to-businessissn .sect3}

The Business::ISSN module provides functions for working with International Standard Serial Numbers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISSN-1.008.tar.gz](https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISSN-1.008.tar.gz){.ulink}

-   Download MD5 sum: 967e79eff741c8710d70c64fb593eda1
:::
:::::

::: {.installation lang="en"}
### Installation of Business::ISSN {#installation-of-businessissn .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-class-accessor}Class::Accessor-0.51 {#classaccessor-0.51 .sect2}

::::: {.package lang="en"}
### Introduction to Class::Accessor {#introduction-to-classaccessor .sect3}

Class::Accessor generates accessors/mutators for your class.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/K/KA/KASEI/Class-Accessor-0.51.tar.gz](https://www.cpan.org/authors/id/K/KA/KASEI/Class-Accessor-0.51.tar.gz){.ulink}

-   Download MD5 sum: 1f1e5990f87cad7659b292fed7dc0407
:::
:::::

::: {.installation lang="en"}
### Installation of Class::Accessor {#installation-of-classaccessor .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-data-compare}Data::Compare-1.29 {#datacompare-1.29 .sect2}

::::: {.package lang="en"}
### Introduction to Data::Compare {#introduction-to-datacompare .sect3}

The Data::Compare module compares two [perl]{.application} data structures.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DC/DCANTRELL/Data-Compare-1.29.tar.gz](https://www.cpan.org/authors/id/D/DC/DCANTRELL/Data-Compare-1.29.tar.gz){.ulink}

-   Download MD5 sum: ce9cb42ba6af634f5ab51f13f37e2ddb
:::

#### Data::Compare Dependencies

##### Required

[Clone-0.47](perl-deps.md#perl-clone "Clone-0.47"){.xref} and [File-Find-Rule-0.35](perl-deps.md#perl-file-find-rule "File::Find::Rule-0.35"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Data::Compare {#installation-of-datacompare .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-data-dump}Data::Dump-1.25 {#datadump-1.25 .sect2}

::::: {.package lang="en"}
### Introduction to Data::Dump {#introduction-to-datadump .sect3}

Data::Dump provides pretty printing of data structures.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/G/GA/GARU/Data-Dump-1.25.tar.gz](https://www.cpan.org/authors/id/G/GA/GARU/Data-Dump-1.25.tar.gz){.ulink}

-   Download MD5 sum: 9bd7131ef0441e1e0e001bf85e9fae31
:::
:::::

::: {.installation lang="en"}
### Installation of Data::Dump {#installation-of-datadump .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-data-uniqid}Data::Uniqid-0.12 {#datauniqid-0.12 .sect2}

::::: {.package lang="en"}
### Introduction to Data::Uniqid {#introduction-to-datauniqid .sect3}

Data::Uniqid provides three simple routines for generating unique IDs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/M/MW/MWX/Data-Uniqid-0.12.tar.gz](https://www.cpan.org/authors/id/M/MW/MWX/Data-Uniqid-0.12.tar.gz){.ulink}

-   Download MD5 sum: 6bab3b5da09fedfdf60ce2629a7367db
:::
:::::

::: {.installation lang="en"}
### Installation of Data::Uniqid {#installation-of-datauniqid .sect3}

Although the final test fails and reports an Error, the test suite returns a status of 0. The error can safely be ignored.

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-datetime-calendar-julian}DateTime::Calendar::Julian-0.107 {#datetimecalendarjulian-0.107 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime::Calendar::Julian {#introduction-to-datetimecalendarjulian .sect3}

DateTime::Calendar::Julian implements the Julian Calendar.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/W/WY/WYANT/DateTime-Calendar-Julian-0.107.tar.gz](https://www.cpan.org/authors/id/W/WY/WYANT/DateTime-Calendar-Julian-0.107.tar.gz){.ulink}

-   Download MD5 sum: abd775d1d82f0f45d4fd6214cf7bbed8
:::

#### DateTime::Calendar::Julian Dependencies

##### Required

[DateTime-1.66](perl-deps.md#perl-datetime "DateTime-1.66"){.xref}
:::::

::: {.installation lang="en"}
### Installation of DateTime::Calendar::Julian {#installation-of-datetimecalendarjulian .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-datetime-format-builder}DateTime::Format::Builder-0.83 {#datetimeformatbuilder-0.83 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime::Format::Builder {#introduction-to-datetimeformatbuilder .sect3}

DateTime::Format::Builder creates DateTime parser classes and objects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Builder-0.83.tar.gz](https://www.cpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Builder-0.83.tar.gz){.ulink}

-   Download MD5 sum: aa41917ca9ad69b3898728ce9c2fb477
:::

#### DateTime::Format::Builder Dependencies

##### Required

[DateTime-Format-Strptime-1.80](perl-deps.md#perl-datetime-format-strptime "DateTime::Format::Strptime-1.80"){.xref} and [Params-Validate-1.31](perl-deps.md#perl-params-validate "Params::Validate-1.31"){.xref}
:::::

::: {.installation lang="en"}
### Installation of DateTime::Format::Builder {#installation-of-datetimeformatbuilder .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-encode-eucjpascii}Encode::EUCJPASCII-0.03 {#encodeeucjpascii-0.03 .sect2}

::::: {.package lang="en"}
### Introduction to Encode::EUCJPASCII {#introduction-to-encodeeucjpascii .sect3}

Encode::EUCJPASCII provides an eucJP-open (Extended Unix Code, Japanese) mapping.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/N/NE/NEZUMI/Encode-EUCJPASCII-0.03.tar.gz](https://www.cpan.org/authors/id/N/NE/NEZUMI/Encode-EUCJPASCII-0.03.tar.gz){.ulink}

-   Download MD5 sum: 5daa65f55b7c2050bb0713d9e95f239d
:::
:::::

::: {.installation lang="en"}
### Installation of Encode::EUCJPASCII {#installation-of-encodeeucjpascii .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-encode-hanextra}Encode::HanExtra-0.23 {#encodehanextra-0.23 .sect2}

::::: {.package lang="en"}
### Introduction to Encode::HanExtra {#introduction-to-encodehanextra .sect3}

The Encode::HanExtra module provides extra sets of Chinese Encodings which are not included in the core Encode module because of size issues.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/A/AU/AUDREYT/Encode-HanExtra-0.23.tar.gz](https://www.cpan.org/authors/id/A/AU/AUDREYT/Encode-HanExtra-0.23.tar.gz){.ulink}

-   Download MD5 sum: e1d3bc32c1c8ee304235a06fbcd5d5a4
:::
:::::

::: {.installation lang="en"}
### Installation of Encode::HanExtra {#installation-of-encodehanextra .sect3}

This module uses the 'unsafe' build and installation instructions (In [perl-5.26.0]{.application} the use of the current directory in `@INC`{.literal} was removed for security reasons and this module has not been updated) :

``` userinput
PERL_USE_UNSAFE_INC=1 perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-encode-jis2k}Encode::JIS2K-0.05 {#encodejis2k-0.05 .sect2}

::::: {.package lang="en"}
### Introduction to Encode::JIS2K {#introduction-to-encodejis2k .sect3}

The Encode::JIS2K module provides JIS X 0212 (aka JIS 2000) Encodings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DA/DANKOGAI/Encode-JIS2K-0.05.tar.gz](https://www.cpan.org/authors/id/D/DA/DANKOGAI/Encode-JIS2K-0.05.tar.gz){.ulink}

-   Download MD5 sum: 06acd9e878d41ffc354258e265db2875
:::
:::::

::: {.installation lang="en"}
### Installation of Encode::JIS2K {#installation-of-encodejis2k .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-file-fcntllock}File::FcntlLock-0.22 {#filefcntllock-0.22 .sect2}

::::: {.package lang="en"}
### Introduction to File::FcntlLock {#introduction-to-filefcntllock .sect3}

File::FcntlLock is a module to do file locking in an object oriented fashion using the [fcntl(2)](https://man.archlinux.org/man/fcntl.2){.ulink} system call. This allows locks on parts of a file as well as on the whole file and overcomes some known problems with [flock(2)](https://man.archlinux.org/man/flock.2){.ulink}, on which which Perl's `flock()`{.function} function is based per default.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/J/JT/JTT/File-FcntlLock-0.22.tar.gz](https://www.cpan.org/authors/id/J/JT/JTT/File-FcntlLock-0.22.tar.gz){.ulink}

-   Download MD5 sum: 579698d735d864ee403674f1175f789d
:::
:::::

::: {.installation lang="en"}
### Installation of File::FcntlLock {#installation-of-filefcntllock .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-file-slurper}File::Slurper-0.014 {#fileslurper-0.014 .sect2}

::::: {.package lang="en"}
### Introduction to File::Slurper {#introduction-to-fileslurper .sect3}

File::Slurper is a simple, sane and efficient module to slurp a file.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/L/LE/LEONT/File-Slurper-0.014.tar.gz](https://www.cpan.org/authors/id/L/LE/LEONT/File-Slurper-0.014.tar.gz){.ulink}

-   Download MD5 sum: d43bc5f069035eff3b6b7c418b4cedc4
:::

#### File::Slurper Dependencies

##### Recommended (required for the test suite)

[Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref}
:::::

::: {.installation lang="en"}
### Installation of File::Slurper {#installation-of-fileslurper .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-file-which}File::Which-1.27 {#filewhich-1.27 .sect2}

::::: {.package lang="en"}
### Introduction to File::Which {#introduction-to-filewhich .sect3}

File::Which provides a portable implementation of the 'which' utility.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/P/PL/PLICEASE/File-Which-1.27.tar.gz](https://www.cpan.org/authors/id/P/PL/PLICEASE/File-Which-1.27.tar.gz){.ulink}

-   Download MD5 sum: d5c9154262b93398f0750ec364207639
:::
:::::

::: {.installation lang="en"}
### Installation of File::Which {#installation-of-filewhich .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-html-parser}HTML::Parser-3.85 {#htmlparser-3.85 .sect2}

::::: {.package lang="en"}
### Introduction to HTML::Parser {#introduction-to-htmlparser .sect3}

The HTML::Parser distribution is a collection of modules that parse and extract information from HTML documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/O/OA/OALDERS/HTML-Parser-3.85.tar.gz](https://www.cpan.org/authors/id/O/OA/OALDERS/HTML-Parser-3.85.tar.gz){.ulink}

-   Download MD5 sum: 400384681da1452493d36f036d9f387b
:::

#### HTML::Parser Dependencies

##### Required

[HTML-Tagset-3.24](perl-deps.md#perl-html-tagset "HTML::Tagset-3.24"){.xref} and [HTTP-Message-7.01](perl-deps.md#perl-http-message "HTTP::Message-7.01"){.xref} (strictly speaking, not required for building, but its module HTTP::Headers is required for tests and a run-time requirement for HTML::HeadParser from this distribution).
:::::

::: {.installation lang="en"}
### Installation of HTML::Parser {#installation-of-htmlparser .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-http-daemon}HTTP::Daemon-6.17 {#httpdaemon-6.17 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::Daemon {#introduction-to-httpdaemon .sect3}

Instances of the HTTP::Daemon class are HTTP/1.1 servers that listen on a socket for incoming requests. The HTTP::Daemon is a subclass of IO::Socket::INET, so you can perform socket operations directly on it too.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/O/OA/OALDERS/HTTP-Daemon-6.17.tar.gz](https://www.cpan.org/authors/id/O/OA/OALDERS/HTTP-Daemon-6.17.tar.gz){.ulink}

-   Download MD5 sum: 14f98fd61159ec4740a21781b787944e
:::

#### HTTP::Daemon Dependencies

##### Required

[HTTP-Message-7.01](perl-deps.md#perl-http-message "HTTP::Message-7.01"){.xref} and [Module-Build-Tiny-0.053](perl-deps.md#perl-module-build-tiny "Module::Build::Tiny-0.053"){.xref}
:::::

::: {.installation lang="en"}
### Installation of HTTP::Daemon {#installation-of-httpdaemon .sect3}

This module is built using `Build.PL`{.filename}:

``` userinput
perl Build.PL &&
./Build       &&
./Build test
```

Now, as the `root`{.systemitem} user:

``` root
./Build install
```
:::
:::::::

::::::::: {.sect2 lang="en"}
## []{#perl-io-socket-ssl}IO::Socket::SSL-2.098 {#iosocketssl-2.098 .sect2}

:::::: {.package lang="en"}
### Introduction to IO::Socket::SSL {#introduction-to-iosocketssl .sect3}

IO::Socket::SSL makes using SSL/TLS much easier by wrapping the necessary functionality into the familiar IO::Socket interface and providing secure defaults whenever possible.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz](https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz){.ulink}

-   Download MD5 sum: d52c3d2dd85bfa22b722f7ae7ba90dc3
:::

#### IO::Socket::SSL Dependencies

##### Required

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} and [Net-SSLeay-1.96](perl-deps.md#perl-net-ssleay "Net::SSLeay-1.96"){.xref}

##### Recommended

[URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref} (to access international domain names)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
### Installation of IO::Socket::SSL {#installation-of-iosocketssl .sect3}

This module uses a variant of the standard build and installation instructions:

``` userinput
yes | perl Makefile.PL &&
make                   &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations .sect3}

[**yes**]{.command}: Perl will ask if you wish to run external tests, which will 'fail soft' if there are network problems. The default is 'y', which will allow you to script the build.
:::
:::::::::

::::::: {.sect2 lang="en"}
## []{#perl-io-string}IO::String-1.08 {#iostring-1.08 .sect2}

::::: {.package lang="en"}
### Introduction to IO::String {#introduction-to-iostring .sect3}

IO::String - Emulate file interface for in-core strings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/G/GA/GAAS/IO-String-1.08.tar.gz](https://www.cpan.org/authors/id/G/GA/GAAS/IO-String-1.08.tar.gz){.ulink}

-   Download MD5 sum: 250e5424f290299fc3d6b5d1e9da3835
:::
:::::

::: {.installation lang="en"}
### Installation of IO::String {#installation-of-iostring .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-ipc-run3}IPC::Run3-0.049 {#ipcrun3-0.049 .sect2}

::::: {.package lang="en"}
### Introduction to IPC::Run3 {#introduction-to-ipcrun3 .sect3}

IPC::Run3 is used to run a subprocess with input/output redirection.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/R/RJ/RJBS/IPC-Run3-0.049.tar.gz](https://www.cpan.org/authors/id/R/RJ/RJBS/IPC-Run3-0.049.tar.gz){.ulink}

-   Download MD5 sum: 569393ca56dfb78dedd79e93c0439159
:::
:::::

::: {.installation lang="en"}
### Installation of IPC::Run3 {#installation-of-ipcrun3 .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-lingua-translit}Lingua::Translit-0.29 {#linguatranslit-0.29 .sect2}

::::: {.package lang="en"}
### Introduction to Lingua::Translit {#introduction-to-linguatranslit .sect3}

Lingua::Translit and its [**translit**]{.command} program transliterate text between writing systems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/A/AL/ALINKE/Lingua-Translit-0.29.tar.gz](https://www.cpan.org/authors/id/A/AL/ALINKE/Lingua-Translit-0.29.tar.gz){.ulink}

-   Download MD5 sum: 605a82f06b05fef4fc18bf069b1be511
:::
:::::

::: {.installation lang="en"}
### Installation of Lingua::Translit {#installation-of-linguatranslit .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents-1 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [translit]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ---------------------------------------------------------------------
  []{#translit-prog}[[**translit**]{.command}]{.term}   transliterates text between writing systems using various standards
  ----------------------------------------------------- ---------------------------------------------------------------------
:::
:::::::
::::::::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-libwww-perl}LWP (libwww-perl-6.83) {#lwp-libwww-perl-6.83 .sect2}

::::: {.package lang="en"}
### Introduction to LWP - The World-wide Web library for Perl {#introduction-to-lwp---the-world-wide-web-library-for-perl .sect3}

The libwww-perl collection is a set of Perl modules which provides a simple and consistent application programming interface (API) to the World-Wide Web. The main focus of the library is to provide classes and functions that allow you to write WWW clients. The library also contains modules that are of more general use and even classes that help you implement simple HTTP servers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/O/OA/OALDERS/libwww-perl-6.83.tar.gz](https://www.cpan.org/authors/id/O/OA/OALDERS/libwww-perl-6.83.tar.gz){.ulink}

-   Download MD5 sum: dfca8f917f4727ddbdf3d81d0979172f
:::

#### libwww-perl Dependencies

##### Required

[File-Listing-6.16](perl-deps.md#perl-file-listing "File::Listing-6.16"){.xref}, [HTTP-CookieJar-0.014](perl-deps.md#perl-http-cookiejar "HTTP::CookieJar-0.014"){.xref}, [HTTP-Cookies-6.11](perl-deps.md#perl-http-cookies "HTTP::Cookies-6.11"){.xref}, [HTTP-Daemon-6.17](perl-modules.md#perl-http-daemon "HTTP::Daemon-6.17"){.xref}, [HTTP-Negotiate-6.01](perl-deps.md#perl-http-negotiate "HTTP::Negotiate-6.01"){.xref}, [HTML-Parser-3.85](perl-modules.md#perl-html-parser "HTML::Parser-3.85"){.xref}, [Net-HTTP-6.24](perl-deps.md#perl-net-http "Net::HTTP-6.24"){.xref}, [Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref} and [WWW-RobotRules-6.02](perl-deps.md#perl-www-robotrules "WWW::RobotRules-6.02"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, [Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref} and [Test-RequiresInternet-0.05](perl-deps.md#perl-test-requiresinternet "Test::RequiresInternet-0.05"){.xref}
:::::

::: {.installation lang="en"}
### Installation of libwww-perl {#installation-of-libwww-perl .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

After installing this package, if you want HTTPS protocol support install [LWP-Protocol-https-6.15](perl-modules.md#perl-lwp-protocol-https "LWP::Protocol::https-6.15"){.xref}.
:::

::::::: {.content lang="en"}
### Contents {#contents-2 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [lwp-download, lwp-dump, lwp-mirror, lwp-request]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------- ---------------------------------------------------------------
  []{#lwp-download-prog}[[**lwp-download**]{.command}]{.term}   is a script to fetch a large file from the web
  []{#lwp-dump-prog}[[**lwp-dump**]{.command}]{.term}           is used to see what headers and content is returned for a URL
  []{#lwp-mirror-prog}[[**lwp-mirror**]{.command}]{.term}       is a simple mirror utility
  []{#lwp-request-prog}[[**lwp-request**]{.command}]{.term}     is a simple command line user agent
  ------------------------------------------------------------- ---------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-list-allutils}List::AllUtils-0.19 {#listallutils-0.19 .sect2}

::::: {.package lang="en"}
### Introduction to List::AllUtils {#introduction-to-listallutils .sect3}

The List::Allutils module combines List::Util and List::MoreUtils in one bite-sized package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DR/DROLSKY/List-AllUtils-0.19.tar.gz](https://www.cpan.org/authors/id/D/DR/DROLSKY/List-AllUtils-0.19.tar.gz){.ulink}

-   Download MD5 sum: 86469b1f6819ba181a8471eb932965f2
:::

#### List::AllUtils Dependencies

##### Required

[List-SomeUtils-0.59](perl-deps.md#perl-list-someutils "List::SomeUtils-0.59"){.xref} and [List-UtilsBy-0.12](perl-deps.md#perl-list-utilsby "List::UtilsBy-0.12"){.xref}
:::::

::: {.installation lang="en"}
### Installation of List::AllUtils {#installation-of-listallutils .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-list-moreutils}List::MoreUtils-0.430 {#listmoreutils-0.430 .sect2}

::::: {.package lang="en"}
### Introduction to List::MoreUtils {#introduction-to-listmoreutils .sect3}

List::MoreUtils provides the stuff missing in List::Util.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-0.430.tar.gz](https://www.cpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-0.430.tar.gz){.ulink}

-   Download MD5 sum: daccd6310021231b827dcc943ff1c6b7
:::

#### List::MoreUtils Dependencies

##### Required

[Exporter-Tiny-1.006003](perl-deps.md#perl-exporter-tiny "Exporter::Tiny-1.006003"){.xref} and [List-MoreUtils-XS-0.430](perl-deps.md#perl-list-moreutils-xs "List::MoreUtils::XS-0.430"){.xref}
:::::

::: {.installation lang="en"}
### Installation of List::MoreUtils {#installation-of-listmoreutils .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-log-log4perl}Log::Log4perl-1.57 {#loglog4perl-1.57 .sect2}

::::: {.package lang="en"}
### Introduction to Log::Log4perl {#introduction-to-loglog4perl .sect3}

Log::Log4perl provides a Log4j implementation for [perl]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/E/ET/ETJ/Log-Log4perl-1.57.tar.gz](https://www.cpan.org/authors/id/E/ET/ETJ/Log-Log4perl-1.57.tar.gz){.ulink}

-   Download MD5 sum: acbe29cbaf03f4478a13579a275b0011
:::
:::::

::: {.installation lang="en"}
### Installation of Log::Log4perl {#installation-of-loglog4perl .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents-3 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [l4p-templ]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  []{#l4p-templ-prog}[[**l4p-templ**]{.command}]{.term}   prints out the text of a template Log4perl configuration for starting a new Log4perl configuration file
  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-lwp-protocol-https}LWP::Protocol::https-6.15 {#lwpprotocolhttps-6.15 .sect2}

::::: {.package lang="en"}
### Introduction to LWP::Protocol::https {#introduction-to-lwpprotocolhttps .sect3}

LWP::Protocol::https provides https support for LWP::UserAgent (i.e. [libwww-perl-6.83](perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref}). Once the module is installed LWP is able to access sites using HTTP over SSL/TLS.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/O/OA/OALDERS/LWP-Protocol-https-6.15.tar.gz](https://www.cpan.org/authors/id/O/OA/OALDERS/LWP-Protocol-https-6.15.tar.gz){.ulink}

-   Download MD5 sum: c92eb7bffeb73cf3726193ea69f6792e
:::

#### LWP::Protocol::https Dependencies

##### Required

[IO-Socket-SSL-2.098](perl-modules.md#perl-io-socket-ssl "IO::Socket::SSL-2.098"){.xref}, [libwww-perl-6.83](perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref}, and [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} with `/etc/pki/tls/certs/ca-bundle.crt`{.literal}.
:::::

::: {.installation lang="en"}
### Installation of LWP::Protocol::https {#installation-of-lwpprotocolhttps .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-module-build}Module::Build-0.4234 {#modulebuild-0.4234 .sect2}

::::: {.package lang="en"}
### Introduction to Module::Build {#introduction-to-modulebuild .sect3}

Module::Build allows perl modules to be built without a [**make**]{.command} command being present.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-0.4234.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-0.4234.tar.gz){.ulink}

-   Download MD5 sum: 0032d0c0bc36a3b68ef41c947829d5e3
:::
:::::

::: {.installation lang="en"}
### Installation of Module::Build {#installation-of-modulebuild .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

Note that this module can also be built using `Build.PL`{.filename}
:::

::::::: {.content lang="en"}
### Contents {#contents-4 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [config_data]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------
  []{#config-data-prog}[[**config_data**]{.command}]{.term}   is used to query or change the configuration of perl modules
  ----------------------------------------------------------- --------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-net-dns}Net::DNS-1.54 {#netdns-1.54 .sect2}

::::: {.package lang="en"}
### Introduction to Net::DNS {#introduction-to-netdns .sect3}

Net::DNS is a DNS resolver implemented in [Perl]{.application}. It can be used to perform nearly any type of DNS query from a [Perl]{.application} script.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-1.54.tar.gz](https://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-1.54.tar.gz){.ulink}

-   Download MD5 sum: 717ef24e9b284359d65a6af8e077362e
:::
:::::

::: {.installation lang="en"}
### Installation of Net::DNS {#installation-of-netdns .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-parse-recdescent}Parse::RecDescent-1.967015 {#parserecdescent-1.967015 .sect2}

::::: {.package lang="en"}
### Introduction to Parse::RecDescent {#introduction-to-parserecdescent .sect3}

Parse::RecDescent incrementally generates top-down recursive-descent text parsers from simple yacc-like grammar specifications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/J/JT/JTBRAUN/Parse-RecDescent-1.967015.tar.gz](https://www.cpan.org/authors/id/J/JT/JTBRAUN/Parse-RecDescent-1.967015.tar.gz){.ulink}

-   Download MD5 sum: 7a36d45d62a9b68603edcdbd276006cc
:::
:::::

::: {.installation lang="en"}
### Installation of Parse::RecDescent {#installation-of-parserecdescent .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-parse-yapp}Parse::Yapp-1.21 {#parseyapp-1.21 .sect2}

::::: {.package lang="en"}
### Introduction to Parse::Yapp {#introduction-to-parseyapp .sect3}

Parse::Yapp is a Perl extension for generating and using LALR parsers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/W/WB/WBRASWELL/Parse-Yapp-1.21.tar.gz](https://www.cpan.org/authors/id/W/WB/WBRASWELL/Parse-Yapp-1.21.tar.gz){.ulink}

-   Download MD5 sum: 69584d5b0f0304bb2a23cffcd982c5de
:::
:::::

::: {.installation lang="en"}
### Installation of Parse::Yapp {#installation-of-parseyapp .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents-5 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [yapp]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------------------------------------------------------------
  []{#yapp-prog}[[**yapp**]{.command}]{.term}   is a frontend to the Parse::Yapp module, which lets you create a Perl OO parser from an input grammar file
  --------------------------------------------- ------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-perlio-utf8_strict}PerlIO::utf8_strict-0.010 {#perlioutf8_strict-0.010 .sect2}

::::: {.package lang="en"}
### Introduction to PerlIO::utf8_strict {#introduction-to-perlioutf8_strict .sect3}

PerlIO::utf8_strict provides a fast and correct UTF-8 PerlIO layer. Unlike Perl's default :utf8 layer it checks the input for correctness.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/L/LE/LEONT/PerlIO-utf8_strict-0.010.tar.gz](https://www.cpan.org/authors/id/L/LE/LEONT/PerlIO-utf8_strict-0.010.tar.gz){.ulink}

-   Download MD5 sum: d90ca967f66e05ad9221c79060868346
:::

#### PerlIO::utf8_strict Dependencies

##### Recommended (required for the test suite)

[Test-Exception-0.43](perl-deps.md#perl-test-exception "Test::Exception-0.43"){.xref}
:::::

::: {.installation lang="en"}
### Installation of PerlIO::utf8_strict {#installation-of-perlioutf8_strict .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-regexp-common}Regexp::Common-2024080801 {#regexpcommon-2024080801 .sect2}

::::: {.package lang="en"}
### Introduction to Regexp::Common {#introduction-to-regexpcommon .sect3}

Regexp::Common provides commonly requested regular expressions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/A/AB/ABIGAIL/Regexp-Common-2024080801.tar.gz](https://www.cpan.org/authors/id/A/AB/ABIGAIL/Regexp-Common-2024080801.tar.gz){.ulink}

-   Download MD5 sum: 73d4b4b2a0690f9ab573d54a69c22aee
:::
:::::

::: {.installation lang="en"}
### Installation of Regexp::Common {#installation-of-regexpcommon .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::::::: {.sect2 lang="en"}
## []{#perl-sgmlspm}SGMLSpm-1.1 {#sgmlspm-1.1 .sect2}

::::: {.package lang="en"}
### Introduction to SGMLSpm {#introduction-to-sgmlspm .sect3}

The SGMLSpm module is a [Perl]{.application} library used for parsing the output from James Clark's SGMLS and NSGMLS parsers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/R/RA/RAAB/SGMLSpm-1.1.tar.gz](https://www.cpan.org/authors/id/R/RA/RAAB/SGMLSpm-1.1.tar.gz){.ulink}

-   Download MD5 sum: 746c74ae969992cedb1a2879b4168090
:::
:::::

::: {.installation lang="en"}
### Installation of SGMLSpm {#installation-of-sgmlspm .sect3}

Before beginning the build, issue the following command to prevent an error:

``` userinput
chmod -v 644 MYMETA.yml
```

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

After the package has been installed, run the following command as the `root`{.systemitem} user:

``` root
ln -sv sgmlspl.pl /usr/bin/sgmlspl
```
:::

::::::: {.content lang="en"}
### Contents {#contents-6 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [sgmlspl.pl, sgmlspl]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  []{#sgmlspl.pl}[[**sgmlspl.pl**]{.command}]{.term}   is an SGML processor
  []{#sgmlspl-prog}[[**sgmlspl**]{.command}]{.term}    is a symbolic link used during the install of [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-sort-key}Sort::Key-1.33 {#sortkey-1.33 .sect2}

::::: {.package lang="en"}
### Introduction to Sort::Key {#introduction-to-sortkey .sect3}

Sort::Key provides a set of functions to sort lists of values by some calculated key value.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/S/SA/SALVA/Sort-Key-1.33.tar.gz](https://www.cpan.org/authors/id/S/SA/SALVA/Sort-Key-1.33.tar.gz){.ulink}

-   Download MD5 sum: a37ab0da0cfdc26e57b4c79e39f6d98f
:::
:::::

::: {.installation lang="en"}
### Installation of Sort::Key {#installation-of-sortkey .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-test-command}Test::Command-0.11 {#testcommand-0.11 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Command {#introduction-to-testcommand .sect3}

Test::Command tests the exit status, STDOUT, or STDERR, of an external command.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DA/DANBOO/Test-Command-0.11.tar.gz](https://www.cpan.org/authors/id/D/DA/DANBOO/Test-Command-0.11.tar.gz){.ulink}

-   Download MD5 sum: 9ab83c4695961dbe92cd86efe08f0634
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Command {#installation-of-testcommand .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-test-differences}Test::Differences-0.72 {#testdifferences-0.72 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Differences {#introduction-to-testdifferences .sect3}

Test::Differences tests strings and data structures and shows the differences if they do not match.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/D/DC/DCANTRELL/Test-Differences-0.72.tar.gz](https://www.cpan.org/authors/id/D/DC/DCANTRELL/Test-Differences-0.72.tar.gz){.ulink}

-   Download MD5 sum: 348ac35809a53290ac05cf0f18f673fa
:::

#### Test::Differences Dependencies

##### Required

[Text-Diff-1.45](perl-deps.md#perl-text-diff "Text::Diff-1.45"){.xref}

##### Recommended (required for the test suite)

[Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::Differences {#installation-of-testdifferences .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::::::::: {.sect2 lang="en"}
## []{#perl-text-bibtex}Text::BibTeX-0.91 {#textbibtex-0.91 .sect2}

::::: {.package lang="en"}
### Introduction to Text::BibTeX {#introduction-to-textbibtex .sect3}

Text::BibTeX provides an interface to read and parse [BibTeX]{.application} files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/A/AM/AMBS/Text-BibTeX-0.91.tar.gz](https://www.cpan.org/authors/id/A/AM/AMBS/Text-BibTeX-0.91.tar.gz){.ulink}

-   Download MD5 sum: 437862f801cfb7598dff52aa4ff7d888
:::

#### Text::BibTeX Dependencies

##### Required

[Config-AutoConf-0.320](perl-deps.md#perl-config-autoconf "Config::AutoConf-0.320"){.xref} and [ExtUtils-LibBuilder-0.09](perl-deps.md#perl-extutils-libbuilder "ExtUtils::LibBuilder-0.09"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Text::BibTeX {#installation-of-textbibtex .sect3}

This module is built using `Build.PL`{.filename}:

``` userinput
perl Build.PL &&
./Build       &&
./Build test
```

Now, as the `root`{.systemitem} user:

``` root
./Build install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-7 .sect3}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Programs:** [biblex, bibparse, dumpnames]{.segbody}
:::

::: seg
**Installed Libraries:** [libbtparse.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  []{#biblex-prog}[[**biblex**]{.command}]{.term}          performs lexical analysis on a BibTeX file
  []{#bibparse-prog}[[**bibparse**]{.command}]{.term}      parses a series of BibTeX files with command line options to control the string post-processing behavior
  []{#dumpnames-prog}[[**dumpnames**]{.command}]{.term}    parses a BibTeX file, splitting 'author' and 'editor' fields into lists of names, and then dumps everything to stdout
  []{#libbtparse-lib}[`libbtparse.so`{.filename}]{.term}   is a library for parsing and processing BibTeX data files
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-text-csv}Text::CSV-2.06 {#textcsv-2.06 .sect2}

::::: {.package lang="en"}
### Introduction to Text::CSV {#introduction-to-textcsv .sect3}

Text::CSV is a comma-separated values manipulator, using XS (eXternal Subroutine - for subroutines written in C or C++) or pure perl.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/I/IS/ISHIGAKI/Text-CSV-2.06.tar.gz](https://www.cpan.org/authors/id/I/IS/ISHIGAKI/Text-CSV-2.06.tar.gz){.ulink}

-   Download MD5 sum: 620284340dfd1787c89666d22adfd463
:::

#### Text::CSV Dependencies

##### Recommended

[Text-CSV_XS-1.62](perl-deps.md#perl-text-csv_xs "Text::CSV_XS-1.62"){.xref} (required by [biber-2.21](../pst/biber.md "biber-2.21"){.xref})
:::::

::: {.installation lang="en"}
### Installation of Text::CSV {#installation-of-textcsv .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-text-roman}Text::Roman-3.5 {#textroman-3.5 .sect2}

::::: {.package lang="en"}
### Introduction to Text::Roman {#introduction-to-textroman .sect3}

Text::Roman allows conversion between Roman and Arabic algorisms (number systems, e.g. MCMXLV and 1945).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/S/SY/SYP/Text-Roman-3.5.tar.gz](https://www.cpan.org/authors/id/S/SY/SYP/Text-Roman-3.5.tar.gz){.ulink}

-   Download MD5 sum: 1f6b09c0cc1f4425b565ff787a39fd83
:::
:::::

::: {.installation lang="en"}
### Installation of Text::Roman {#installation-of-textroman .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::: {.sect2 lang="en"}
## []{#perl-unicode-collate}Unicode::Collate-1.31 {#unicodecollate-1.31 .sect2}

:::::: {.package lang="en"}
### Introduction to Unicode::Collate {#introduction-to-unicodecollate .sect3}

Unicode::Collate provides a Unicode collation algorithm.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This is a core module. If you are using [perl-5.28.0]{.application} or later, its version is good enough for [biber-2.21](../pst/biber.md "biber-2.21"){.xref} and you do not need to reinstall this module.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/S/SA/SADAHIRO/Unicode-Collate-1.31.tar.gz](https://www.cpan.org/authors/id/S/SA/SADAHIRO/Unicode-Collate-1.31.tar.gz){.ulink}

-   Download MD5 sum: ee4d960d057c5e5b02ebb49d0286db8f
:::
::::::

::: {.installation lang="en"}
### Installation of Unicode::Collate {#installation-of-unicodecollate .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
::::::::

::::::: {.sect2 lang="en"}
## []{#perl-unicode-linebreak}Unicode::LineBreak-2019.001 {#unicodelinebreak-2019.001 .sect2}

::::: {.package lang="en"}
### Introduction to Unicode::LineBreak {#introduction-to-unicodelinebreak .sect3}

Unicode::LineBreak provides a UAX #14 Unicode Line Breaking Algorithm.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/N/NE/NEZUMI/Unicode-LineBreak-2019.001.tar.gz](https://www.cpan.org/authors/id/N/NE/NEZUMI/Unicode-LineBreak-2019.001.tar.gz){.ulink}

-   Download MD5 sum: 003d6da7a13700e069afed9238c864b9
:::

#### Unicode::LineBreak Dependencies

##### Required

[MIME-Charset-1.013.1](perl-deps.md#perl-mime-charset "MIME::Charset-1.013.1"){.xref} and [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref} (to download two files from unicode.org in the test suite)

##### Optional

[libthai](https://linux.thai.net/projects/libthai/){.ulink} (to break Thai words into segments)
:::::

::: {.installation lang="en"}
### Installation of Unicode::LineBreak {#installation-of-unicodelinebreak .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-uri}URI-5.34 {#uri-5.34 .sect2}

::::: {.package lang="en"}
### Introduction to URI {#introduction-to-uri .sect3}

This module implements the URI class. Objects of this class represent "Uniform Resource Identifier references" as specified in RFC 2396 (and updated by RFC 2732). A Uniform Resource Identifier is a compact string of characters that identifies an abstract or physical resource. A Uniform Resource Identifier can be further classified as either a Uniform Resource Locator (URL) or a Uniform Resource Name (URN). The distinction between URL and URN does not matter to the URI class interface. A "URI-reference" is a URI that may have additional information attached in the form of a fragment identifier.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.34.tar.gz](https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.34.tar.gz){.ulink}

-   Download MD5 sum: 3736f3d6efe1710176a753a7029b7606
:::

#### URI Dependencies

##### Required

[MIME-Base32-1.303](perl-deps.md#perl-mime-base32 "MIME::Base32-1.303"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, [Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref}, and [Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref}

##### Optional

[Business-ISBN-3.014](perl-modules.md#perl-business-isbn "Business::ISBN-3.014"){.xref}
:::::

::: {.installation lang="en"}
### Installation of URI {#installation-of-uri .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-xml-libxml-simple}XML::LibXML::Simple-1.01 {#xmllibxmlsimple-1.01 .sect2}

::::: {.package lang="en"}
### Introduction to XML::LibXML::Simple {#introduction-to-xmllibxmlsimple .sect3}

The XML::LibXML::Simple module is a rewrite of XML::Simple to use the XML::LibXML parser for XML structures, instead of the plain [Perl]{.application} or SAX parsers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/M/MA/MARKOV/XML-LibXML-Simple-1.01.tar.gz](https://www.cpan.org/authors/id/M/MA/MARKOV/XML-LibXML-Simple-1.01.tar.gz){.ulink}

-   Download MD5 sum: faad5ed26cd83998f6514be199c56c38
:::

#### XML::LibXML::Simple Dependencies

##### Required

[XML-LibXML-2.0213](perl-deps.md#perl-xml-libxml "XML::LibXML-2.0213"){.xref}
:::::

::: {.installation lang="en"}
### Installation of XML::LibXML::Simple {#installation-of-xmllibxmlsimple .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-xml-libxslt}XML::LibXSLT-2.003000 {#xmllibxslt-2.003000 .sect2}

::::: {.package lang="en"}
### Introduction to XML::LibXSLT {#introduction-to-xmllibxslt .sect3}

XML-LibXSLT provides an interface to [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/S/SH/SHLOMIF/XML-LibXSLT-2.003000.tar.gz](https://www.cpan.org/authors/id/S/SH/SHLOMIF/XML-LibXSLT-2.003000.tar.gz){.ulink}

-   Download MD5 sum: 632dce587b3c405edd4e622364750191
:::

#### XML::LibXSLT Dependencies

##### Required

[libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} and [XML-LibXML-2.0213](perl-deps.md#perl-xml-libxml "XML::LibXML-2.0213"){.xref}
:::::

::: {.installation lang="en"}
### Installation of XML::LibXSLT {#installation-of-xmllibxslt .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

::::::: {.sect2 lang="en"}
## []{#perl-xml-parser}XML::Parser-2.59 {#xmlparser-2.59 .sect2}

::::: {.package lang="en"}
### Introduction to XML::Parser {#introduction-to-xmlparser .sect3}

The XML::Parser module is a Perl interface to James Clark's XML parser. It is built on top of XML::Parser::Expat, which is a lower level interface to the expat library. Each call to one of the parsing methods creates a new instance of XML::Parser::Expat which is then used to parse the document.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/T/TO/TODDR/XML-Parser-2.59.tar.gz](https://www.cpan.org/authors/id/T/TO/TODDR/XML-Parser-2.59.tar.gz){.ulink}

-   Download MD5 sum: f483e6b8541d60a84e4bf50803e476bc
:::

#### XML::Parser Dependencies

##### Required

[File-ShareDir-1.118](perl-deps.md#perl-file-sharedir "File::ShareDir-1.118"){.xref}
:::::

::: {.installation lang="en"}
### Installation of XML::Parser {#installation-of-xmlparser .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::::::: {.sect2 lang="en"}
## []{#perl-xml-simple}XML::Simple-2.25 {#xmlsimple-2.25 .sect2}

::::: {.package lang="en"}
### Introduction to XML::Simple {#introduction-to-xmlsimple .sect3}

XML::Simple provides an easy API to read and write XML (especially config files). It is deprecated and its use is discouraged.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz](https://www.cpan.org/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz){.ulink}

-   Download MD5 sum: bb841dce889a26c89a1c2739970e9fbc
:::

#### XML::Simple Dependencies

##### Recommended

[XML-Parser-2.59](perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref}

##### Optional

[XML-SAX-1.02](perl-deps.md#perl-xml-sax "XML::SAX-1.02"){.xref} (for an alternative parser which will be used if available)
:::::

:::: {.installation lang="en"}
### Installation of XML::Simple {#installation-of-xmlsimple .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

During the configuration process, the build system will complain about missing the [XML::SAX::Expat]{.application} module. If [XML::SAX]{.application} is installed, this module is not necessary as [XML::SAX]{.application} will use the [libxml2]{.application} package instead. However, if it is not installed, [XML-Parser-2.59](perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref} will get used instead.
:::

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::
::::::::

::::::: {.sect2 lang="en"}
## []{#perl-xml-writer}XML::Writer-0.900 {#xmlwriter-0.900 .sect2}

::::: {.package lang="en"}
### Introduction to XML::Writer {#introduction-to-xmlwriter .sect3}

XML::Writer provides a [Perl]{.application} extension for writing XML documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-0.900.tar.gz](https://www.cpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-0.900.tar.gz){.ulink}

-   Download MD5 sum: 2457214360cefda445742a608dd6195e
:::
:::::

::: {.installation lang="en"}
### Installation of XML::Writer {#installation-of-xmlwriter .sect3}

This module uses the standard build and installation instructions:

``` userinput
perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::
:::::::

:::: {.sect2 lang="en"}
## []{#perl-alternatives}CPAN automated install of perl modules {#cpan-automated-install-of-perl-modules .sect2}

::: {.installation lang="en"}
### []{#perl-auto-install} Automatic Installation of Perl Modules. {#automatic-installation-of-perl-modules. .sect3}

There is an alternate way of installing the modules using the [**cpan**]{.command} shell [**install**]{.command} command. The command automatically downloads the latest source from the CPAN archive for the module and any missing prerequisite modules listed by upstream. Then for each module it extracts it, runs the compilation, the tests and installs it.

You still need to install any non-perl dependencies before running the automated installation method. You may wish to clean out the `build/`{.filename} directory after installing, to free up the space. If any post-install actions such as creating a symlink are mentioned, you should also do those.

The first time you run [**cpan**]{.command}, you'll be prompted to enter some information regarding download locations and methods. This information is retained in files located in `~/.cpan`{.filename}.

In particular, you may wish to configure it so that [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} is used for the installs, allowing you to build and test as a regular user. The following examples have not used that approach.

Start the [**cpan**]{.command} shell by issuing '[**cpan**]{.command}' as the `root`{.systemitem} user. Any module may now be installed from the [`cpan> `{.prompt}]{.underlined} prompt with the command:

``` root
install <Module::Name>
```

For additional commands and help, issue '[**help**]{.command}' from the [`cpan> `{.prompt}]{.underlined} prompt.

Alternatively, for scripted or non-interactive installations, use the following syntax as the `root`{.systemitem} user to install one or more modules:

``` root
cpan -i <Module1::Name> <Module2::Name>
```

Review the `cpan.1`{.filename} man page for additional parameters you can pass to [**cpan**]{.command} on the command line.
:::
::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](patchelf.md "Patchelf-0.18.0"){accesskey="p"}

    Patchelf-0.18.0

-   [Next](perl-deps.md "Perl Module Dependencies"){accesskey="n"}

    Perl Module Dependencies

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
