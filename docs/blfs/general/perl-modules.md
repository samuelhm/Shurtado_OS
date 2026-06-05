<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](patchelf.md "Patchelf-0.18.0")

    Patchelf-0.18.0

-   [Next](perl-deps.md "Perl Module Dependencies")

    Perl Module Dependencies

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Perl Modules {#perl-modules}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Perl Modules {#introduction-to-perl-modules}

The <span class="application">Perl</span> module packages (also referred to as Distributions, because each can contain multiple modules) add useful objects to the <span class="application">Perl</span> language. The packages listed on this page are required or recommended for other packages in the book. If they have dependent modules, those are either on this page or else on the next page (<a class="xref" href="perl-deps.md" title="Perl Module Dependencies">Perl Module Dependencies</a>).

In many cases, only the required or recommended dependencies are listed - there might be other modules which allow more tests to be run, but omitting them will still allow the tests to <code class="literal">PASS</code>.

For a few modules, the BLFS editors have determined that other modules still listed as prerequisites are not required, and omitted them.

Where an alphabetically-earlier dependency of the same module pulls in a dependency, it is not mentioned for the later dependencies of the same module. You should build the listed dependencies in order.

It is generally worth running the tests for perl modules, they often can show problems such as missing dependencies which are required to use the module. Here, the editors have attempted to separate those dependencies which are only required for running test suites, but they will not be mentioned for a module where one of its dependencies uses that module for its own test suite. That is to say, if you intend to run the test suites, please run them for each dependency of the module.

It is possible to automatically install the current versions of a module and <span class="emphasis"><em>all</em></span> missing or too-old dependencies <span class="emphasis"><em>recommended by upstream</em></span> using CPAN. See <a class="xref" href="perl-modules.md#perl-alternatives" title="CPAN automated install of perl modules">CPAN automated install of perl modules</a> at the end of this page.

Most of these modules only install files below <code class="filename">/usr/lib/perl5/site_perl/5.xx.y</code> and those will not be documented. One or two install programs (mostly, perl scripts), or a library, into <code class="filename">/usr/bin/</code> or <code class="filename">/usr/lib/</code> and these <span class="emphasis"><em>are</em></span> documented.

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/perl-modules">https://wiki.linuxfromscratch.org/blfs/wiki/perl-modules</a>

<div class="itemizedlist">
-   <a class="xref" href="perl-modules.md#perl-archive-zip" title="Archive::Zip-1.68">Archive-Zip-1.68</a>

-   <a class="xref" href="perl-modules.md#perl-autovivification" title="autovivification-0.18">autovivification-0.18</a>

-   <a class="xref" href="perl-modules.md#perl-business-isbn" title="Business::ISBN-3.014">Business-ISBN-3.014</a>

-   <a class="xref" href="perl-modules.md#perl-business-ismn" title="Business::ISMN-1.205">Business-ISMN-1.205</a>

-   <a class="xref" href="perl-modules.md#perl-business-issn" title="Business::ISSN-1.008">Business-ISSN-1.008</a>

-   <a class="xref" href="perl-modules.md#perl-class-accessor" title="Class::Accessor-0.51">Class-Accessor-0.51</a>

-   <a class="xref" href="perl-modules.md#perl-data-compare" title="Data::Compare-1.29">Data-Compare-1.29</a>

-   <a class="xref" href="perl-modules.md#perl-data-dump" title="Data::Dump-1.25">Data-Dump-1.25</a>

-   <a class="xref" href="perl-modules.md#perl-data-uniqid" title="Data::Uniqid-0.12">Data-Uniqid-0.12</a>

-   <a class="xref" href="perl-modules.md#perl-datetime-calendar-julian" title="DateTime::Calendar::Julian-0.107">DateTime-Calendar-Julian-0.107</a>

-   <a class="xref" href="perl-modules.md#perl-datetime-format-builder" title="DateTime::Format::Builder-0.83">DateTime-Format-Builder-0.83</a>

-   <a class="xref" href="perl-modules.md#perl-encode-eucjpascii" title="Encode::EUCJPASCII-0.03">Encode-EUCJPASCII-0.03</a>

-   <a class="xref" href="perl-modules.md#perl-encode-hanextra" title="Encode::HanExtra-0.23">Encode-HanExtra-0.23</a>

-   <a class="xref" href="perl-modules.md#perl-encode-jis2k" title="Encode::JIS2K-0.05">Encode-JIS2K-0.05</a>

-   <a class="xref" href="perl-modules.md#perl-file-fcntllock" title="File::FcntlLock-0.22">File-FcntlLock-0.22</a>

-   <a class="xref" href="perl-modules.md#perl-file-slurper" title="File::Slurper-0.014">File-Slurper-0.014</a>

-   <a class="xref" href="perl-modules.md#perl-file-which" title="File::Which-1.27">File-Which-1.27</a>

-   <a class="xref" href="perl-modules.md#perl-html-parser" title="HTML::Parser-3.85">HTML-Parser-3.85</a>

-   <a class="xref" href="perl-modules.md#perl-http-daemon" title="HTTP::Daemon-6.17">HTTP-Daemon-6.17</a>

-   <a class="xref" href="perl-modules.md#perl-io-socket-ssl" title="IO::Socket::SSL-2.098">IO-Socket-SSL-2.098</a>

-   <a class="xref" href="perl-modules.md#perl-io-string" title="IO::String-1.08">IO-String-1.08</a>

-   <a class="xref" href="perl-modules.md#perl-ipc-run3" title="IPC::Run3-0.049">IPC-Run3-0.049</a>

-   <a class="xref" href="perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a>

-   <a class="xref" href="perl-modules.md#perl-lingua-translit" title="Lingua::Translit-0.29">Lingua-Translit-0.29</a>

-   <a class="xref" href="perl-modules.md#perl-list-allutils" title="List::AllUtils-0.19">List-AllUtils-0.19</a>

-   <a class="xref" href="perl-modules.md#perl-list-moreutils" title="List::MoreUtils-0.430">List-MoreUtils-0.430</a>

-   <a class="xref" href="perl-modules.md#perl-log-log4perl" title="Log::Log4perl-1.57">Log-Log4perl-1.57</a>

-   <a class="xref" href="perl-modules.md#perl-lwp-protocol-https" title="LWP::Protocol::https-6.15">LWP-Protocol-https-6.15</a>

-   <a class="xref" href="perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a>

-   <a class="xref" href="perl-modules.md#perl-net-dns" title="Net::DNS-1.54">Net-DNS-1.54</a>

-   <a class="xref" href="perl-modules.md#perl-parse-recdescent" title="Parse::RecDescent-1.967015">Parse-RecDescent-1.967015</a>

-   <a class="xref" href="perl-modules.md#perl-parse-yapp" title="Parse::Yapp-1.21">Parse-Yapp-1.21</a>

-   <a class="xref" href="perl-modules.md#perl-perlio-utf8_strict" title="PerlIO::utf8_strict-0.010">PerlIO-utf8_strict-0.010</a>

-   <a class="xref" href="perl-modules.md#perl-regexp-common" title="Regexp::Common-2024080801">Regexp-Common-2024080801</a>

-   <a class="xref" href="perl-modules.md#perl-sgmlspm" title="SGMLSpm-1.1">SGMLSpm-1.1</a>

-   <a class="xref" href="perl-modules.md#perl-sort-key" title="Sort::Key-1.33">Sort-Key-1.33</a>

-   <a class="xref" href="perl-modules.md#perl-test-command" title="Test::Command-0.11">Test-Command-0.11</a>

-   <a class="xref" href="perl-modules.md#perl-test-differences" title="Test::Differences-0.72">Test-Differences-0.72</a>

-   <a class="xref" href="perl-modules.md#perl-text-bibtex" title="Text::BibTeX-0.91">Text-BibTeX-0.91</a>

-   <a class="xref" href="perl-modules.md#perl-text-csv" title="Text::CSV-2.06">Text-CSV-2.06</a>

-   <a class="xref" href="perl-modules.md#perl-text-roman" title="Text::Roman-3.5">Text-Roman-3.5</a>

-   <a class="xref" href="perl-modules.md#perl-unicode-collate" title="Unicode::Collate-1.31">Unicode-Collate-1.31</a>

-   <a class="xref" href="perl-modules.md#perl-unicode-linebreak" title="Unicode::LineBreak-2019.001">Unicode-LineBreak-2019.001</a>

-   <a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>

-   <a class="xref" href="perl-modules.md#perl-xml-libxml-simple" title="XML::LibXML::Simple-1.01">XML-LibXML-Simple-1.01</a>

-   <a class="xref" href="perl-modules.md#perl-xml-libxslt" title="XML::LibXSLT-2.003000">XML-LibXSLT-2.003000</a>

-   <a class="xref" href="perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a>

-   <a class="xref" href="perl-modules.md#perl-xml-simple" title="XML::Simple-2.25">XML-Simple-2.25</a>

-   <a class="xref" href="perl-modules.md#perl-xml-writer" title="XML::Writer-0.900">XML-Writer-0.900</a>

-   <a class="xref" href="perl-modules.md#perl-alternatives" title="CPAN automated install of perl modules">CPAN automated install of perl modules</a>
</div>
</div>

<div class="sect2" lang="en">
## Archive::Zip-1.68 {#archivezip-1.68}

<div class="package" lang="en">
### Introduction to Archive::Zip {#introduction-to-archivezip}

The Archive::Zip module allows a Perl program to create, manipulate, read, and write Zip archive files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/P/PH/PHRED/Archive-Zip-1.68.tar.gz">https://www.cpan.org/authors/id/P/PH/PHRED/Archive-Zip-1.68.tar.gz</a>

-   Download MD5 sum: a33993309322164867c99e04a4000ee3
</div>

#### Archive::Zip Dependencies

##### Recommended (for the test suite)

<a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>
</div>

<div class="installation" lang="en">
### Installation of Archive::Zip {#installation-of-archivezip}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">crc32</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------------------------
  <a id="crc32-prog"></a><span class="command"><span class="term"><strong>crc32</strong></span></span>   computes and prints to stdout the CRC-32 values of the given files
  ----------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## autovivification-0.18 {#autovivification-0.18}

<div class="package" lang="en">
### Introduction to the autovivification module {#introduction-to-the-autovivification-module}

This module allows you disable autovivification (the automatic creation and population of new arrays and hashes whenever undefined variables are dereferenced), and optionally throw a warning or an error when it would have occurred.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/V/VP/VPIT/autovivification-0.18.tar.gz">https://www.cpan.org/authors/id/V/VP/VPIT/autovivification-0.18.tar.gz</a>

-   Download MD5 sum: 8dec994e1e7d368e055f21a5777385a0
</div>
</div>

<div class="installation" lang="en">
### Installation of autovivification {#installation-of-autovivification}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Business::ISBN-3.014 {#businessisbn-3.014}

<div class="package" lang="en">
### Introduction to Business::ISBN {#introduction-to-businessisbn}

The Business::ISBN module provides functions for working with International Standard Book Numbers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-3.014.tar.gz">https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-3.014.tar.gz</a>

-   Download MD5 sum: d20dedcc798a253223bcfcba2058689e
</div>

#### Business::ISBN Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-business-isbn-data" title="Business::ISBN::Data-20260311.001">Business-ISBN-Data-20260311.001</a>
</div>

<div class="installation" lang="en">
### Installation of Business::ISBN {#installation-of-businessisbn}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

A harmless warning may be output during the creation of the Makefile regarding the ExtUtils::MakeMaker module. This can be safely ignored.
</div>

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Business::ISMN-1.205 {#businessismn-1.205}

<div class="package" lang="en">
### Introduction to Business::ISMN {#introduction-to-businessismn}

The Business::ISMN module provides functions for working with International Standard Music Numbers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISMN-1.205.tar.gz">https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISMN-1.205.tar.gz</a>

-   Download MD5 sum: b35f42bdaeb2fd797c51bb0821ffc906
</div>

#### Business::ISMN Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-tie-cycle" title="Tie::Cycle-1.233">Tie-Cycle-1.233</a>
</div>

<div class="installation" lang="en">
### Installation of Business::ISMN {#installation-of-businessismn}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Business::ISSN-1.008 {#businessissn-1.008}

<div class="package" lang="en">
### Introduction to Business::ISSN {#introduction-to-businessissn}

The Business::ISSN module provides functions for working with International Standard Serial Numbers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISSN-1.008.tar.gz">https://www.cpan.org/authors/id/B/BR/BRIANDFOY/Business-ISSN-1.008.tar.gz</a>

-   Download MD5 sum: 967e79eff741c8710d70c64fb593eda1
</div>
</div>

<div class="installation" lang="en">
### Installation of Business::ISSN {#installation-of-businessissn}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Class::Accessor-0.51 {#classaccessor-0.51}

<div class="package" lang="en">
### Introduction to Class::Accessor {#introduction-to-classaccessor}

Class::Accessor generates accessors/mutators for your class.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/K/KA/KASEI/Class-Accessor-0.51.tar.gz">https://www.cpan.org/authors/id/K/KA/KASEI/Class-Accessor-0.51.tar.gz</a>

-   Download MD5 sum: 1f1e5990f87cad7659b292fed7dc0407
</div>
</div>

<div class="installation" lang="en">
### Installation of Class::Accessor {#installation-of-classaccessor}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Data::Compare-1.29 {#datacompare-1.29}

<div class="package" lang="en">
### Introduction to Data::Compare {#introduction-to-datacompare}

The Data::Compare module compares two <span class="application">perl</span> data structures.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DC/DCANTRELL/Data-Compare-1.29.tar.gz">https://www.cpan.org/authors/id/D/DC/DCANTRELL/Data-Compare-1.29.tar.gz</a>

-   Download MD5 sum: ce9cb42ba6af634f5ab51f13f37e2ddb
</div>

#### Data::Compare Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-clone" title="Clone-0.47">Clone-0.47</a> and <a class="xref" href="perl-deps.md#perl-file-find-rule" title="File::Find::Rule-0.35">File-Find-Rule-0.35</a>
</div>

<div class="installation" lang="en">
### Installation of Data::Compare {#installation-of-datacompare}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Data::Dump-1.25 {#datadump-1.25}

<div class="package" lang="en">
### Introduction to Data::Dump {#introduction-to-datadump}

Data::Dump provides pretty printing of data structures.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/G/GA/GARU/Data-Dump-1.25.tar.gz">https://www.cpan.org/authors/id/G/GA/GARU/Data-Dump-1.25.tar.gz</a>

-   Download MD5 sum: 9bd7131ef0441e1e0e001bf85e9fae31
</div>
</div>

<div class="installation" lang="en">
### Installation of Data::Dump {#installation-of-datadump}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Data::Uniqid-0.12 {#datauniqid-0.12}

<div class="package" lang="en">
### Introduction to Data::Uniqid {#introduction-to-datauniqid}

Data::Uniqid provides three simple routines for generating unique IDs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/M/MW/MWX/Data-Uniqid-0.12.tar.gz">https://www.cpan.org/authors/id/M/MW/MWX/Data-Uniqid-0.12.tar.gz</a>

-   Download MD5 sum: 6bab3b5da09fedfdf60ce2629a7367db
</div>
</div>

<div class="installation" lang="en">
### Installation of Data::Uniqid {#installation-of-datauniqid}

Although the final test fails and reports an Error, the test suite returns a status of 0. The error can safely be ignored.

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## DateTime::Calendar::Julian-0.107 {#datetimecalendarjulian-0.107}

<div class="package" lang="en">
### Introduction to DateTime::Calendar::Julian {#introduction-to-datetimecalendarjulian}

DateTime::Calendar::Julian implements the Julian Calendar.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/W/WY/WYANT/DateTime-Calendar-Julian-0.107.tar.gz">https://www.cpan.org/authors/id/W/WY/WYANT/DateTime-Calendar-Julian-0.107.tar.gz</a>

-   Download MD5 sum: abd775d1d82f0f45d4fd6214cf7bbed8
</div>

#### DateTime::Calendar::Julian Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-datetime" title="DateTime-1.66">DateTime-1.66</a>
</div>

<div class="installation" lang="en">
### Installation of DateTime::Calendar::Julian {#installation-of-datetimecalendarjulian}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## DateTime::Format::Builder-0.83 {#datetimeformatbuilder-0.83}

<div class="package" lang="en">
### Introduction to DateTime::Format::Builder {#introduction-to-datetimeformatbuilder}

DateTime::Format::Builder creates DateTime parser classes and objects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Builder-0.83.tar.gz">https://www.cpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Builder-0.83.tar.gz</a>

-   Download MD5 sum: aa41917ca9ad69b3898728ce9c2fb477
</div>

#### DateTime::Format::Builder Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-datetime-format-strptime" title="DateTime::Format::Strptime-1.80">DateTime-Format-Strptime-1.80</a> and <a class="xref" href="perl-deps.md#perl-params-validate" title="Params::Validate-1.31">Params-Validate-1.31</a>
</div>

<div class="installation" lang="en">
### Installation of DateTime::Format::Builder {#installation-of-datetimeformatbuilder}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Encode::EUCJPASCII-0.03 {#encodeeucjpascii-0.03}

<div class="package" lang="en">
### Introduction to Encode::EUCJPASCII {#introduction-to-encodeeucjpascii}

Encode::EUCJPASCII provides an eucJP-open (Extended Unix Code, Japanese) mapping.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/N/NE/NEZUMI/Encode-EUCJPASCII-0.03.tar.gz">https://www.cpan.org/authors/id/N/NE/NEZUMI/Encode-EUCJPASCII-0.03.tar.gz</a>

-   Download MD5 sum: 5daa65f55b7c2050bb0713d9e95f239d
</div>
</div>

<div class="installation" lang="en">
### Installation of Encode::EUCJPASCII {#installation-of-encodeeucjpascii}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Encode::HanExtra-0.23 {#encodehanextra-0.23}

<div class="package" lang="en">
### Introduction to Encode::HanExtra {#introduction-to-encodehanextra}

The Encode::HanExtra module provides extra sets of Chinese Encodings which are not included in the core Encode module because of size issues.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/A/AU/AUDREYT/Encode-HanExtra-0.23.tar.gz">https://www.cpan.org/authors/id/A/AU/AUDREYT/Encode-HanExtra-0.23.tar.gz</a>

-   Download MD5 sum: e1d3bc32c1c8ee304235a06fbcd5d5a4
</div>
</div>

<div class="installation" lang="en">
### Installation of Encode::HanExtra {#installation-of-encodehanextra}

This module uses the 'unsafe' build and installation instructions (In <span class="application">perl-5.26.0</span> the use of the current directory in <code class="literal">@INC</code> was removed for security reasons and this module has not been updated) :

```bash
PERL_USE_UNSAFE_INC=1 perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Encode::JIS2K-0.05 {#encodejis2k-0.05}

<div class="package" lang="en">
### Introduction to Encode::JIS2K {#introduction-to-encodejis2k}

The Encode::JIS2K module provides JIS X 0212 (aka JIS 2000) Encodings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DA/DANKOGAI/Encode-JIS2K-0.05.tar.gz">https://www.cpan.org/authors/id/D/DA/DANKOGAI/Encode-JIS2K-0.05.tar.gz</a>

-   Download MD5 sum: 06acd9e878d41ffc354258e265db2875
</div>
</div>

<div class="installation" lang="en">
### Installation of Encode::JIS2K {#installation-of-encodejis2k}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## File::FcntlLock-0.22 {#filefcntllock-0.22}

<div class="package" lang="en">
### Introduction to File::FcntlLock {#introduction-to-filefcntllock}

File::FcntlLock is a module to do file locking in an object oriented fashion using the <a class="ulink" href="https://man.archlinux.org/man/fcntl.2">fcntl(2)</a> system call. This allows locks on parts of a file as well as on the whole file and overcomes some known problems with <a class="ulink" href="https://man.archlinux.org/man/flock.2">flock(2)</a>, on which which Perl's <code class="function">flock()</code> function is based per default.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/J/JT/JTT/File-FcntlLock-0.22.tar.gz">https://www.cpan.org/authors/id/J/JT/JTT/File-FcntlLock-0.22.tar.gz</a>

-   Download MD5 sum: 579698d735d864ee403674f1175f789d
</div>
</div>

<div class="installation" lang="en">
### Installation of File::FcntlLock {#installation-of-filefcntllock}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## File::Slurper-0.014 {#fileslurper-0.014}

<div class="package" lang="en">
### Introduction to File::Slurper {#introduction-to-fileslurper}

File::Slurper is a simple, sane and efficient module to slurp a file.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/L/LE/LEONT/File-Slurper-0.014.tar.gz">https://www.cpan.org/authors/id/L/LE/LEONT/File-Slurper-0.014.tar.gz</a>

-   Download MD5 sum: d43bc5f069035eff3b6b7c418b4cedc4
</div>

#### File::Slurper Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a>
</div>

<div class="installation" lang="en">
### Installation of File::Slurper {#installation-of-fileslurper}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## File::Which-1.27 {#filewhich-1.27}

<div class="package" lang="en">
### Introduction to File::Which {#introduction-to-filewhich}

File::Which provides a portable implementation of the 'which' utility.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/P/PL/PLICEASE/File-Which-1.27.tar.gz">https://www.cpan.org/authors/id/P/PL/PLICEASE/File-Which-1.27.tar.gz</a>

-   Download MD5 sum: d5c9154262b93398f0750ec364207639
</div>
</div>

<div class="installation" lang="en">
### Installation of File::Which {#installation-of-filewhich}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## HTML::Parser-3.85 {#htmlparser-3.85}

<div class="package" lang="en">
### Introduction to HTML::Parser {#introduction-to-htmlparser}

The HTML::Parser distribution is a collection of modules that parse and extract information from HTML documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/O/OA/OALDERS/HTML-Parser-3.85.tar.gz">https://www.cpan.org/authors/id/O/OA/OALDERS/HTML-Parser-3.85.tar.gz</a>

-   Download MD5 sum: 400384681da1452493d36f036d9f387b
</div>

#### HTML::Parser Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-html-tagset" title="HTML::Tagset-3.24">HTML-Tagset-3.24</a> and <a class="xref" href="perl-deps.md#perl-http-message" title="HTTP::Message-7.01">HTTP-Message-7.01</a> (strictly speaking, not required for building, but its module HTTP::Headers is required for tests and a run-time requirement for HTML::HeadParser from this distribution).
</div>

<div class="installation" lang="en">
### Installation of HTML::Parser {#installation-of-htmlparser}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## HTTP::Daemon-6.17 {#httpdaemon-6.17}

<div class="package" lang="en">
### Introduction to HTTP::Daemon {#introduction-to-httpdaemon}

Instances of the HTTP::Daemon class are HTTP/1.1 servers that listen on a socket for incoming requests. The HTTP::Daemon is a subclass of IO::Socket::INET, so you can perform socket operations directly on it too.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/O/OA/OALDERS/HTTP-Daemon-6.17.tar.gz">https://www.cpan.org/authors/id/O/OA/OALDERS/HTTP-Daemon-6.17.tar.gz</a>

-   Download MD5 sum: 14f98fd61159ec4740a21781b787944e
</div>

#### HTTP::Daemon Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-http-message" title="HTTP::Message-7.01">HTTP-Message-7.01</a> and <a class="xref" href="perl-deps.md#perl-module-build-tiny" title="Module::Build::Tiny-0.053">Module-Build-Tiny-0.053</a>
</div>

<div class="installation" lang="en">
### Installation of HTTP::Daemon {#installation-of-httpdaemon}

This module is built using <code class="filename">Build.PL</code>:

```bash
perl Build.PL &&
./Build       &&
./Build test
```

Now, as the <code class="systemitem">root</code> user:

```bash
./Build install
```
</div>
</div>

<div class="sect2" lang="en">
## IO::Socket::SSL-2.098 {#iosocketssl-2.098}

<div class="package" lang="en">
### Introduction to IO::Socket::SSL {#introduction-to-iosocketssl}

IO::Socket::SSL makes using SSL/TLS much easier by wrapping the necessary functionality into the familiar IO::Socket interface and providing secure defaults whenever possible.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz">https://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.098.tar.gz</a>

-   Download MD5 sum: d52c3d2dd85bfa22b722f7ae7ba90dc3
</div>

#### IO::Socket::SSL Dependencies

##### Required

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> and <a class="xref" href="perl-deps.md#perl-net-ssleay" title="Net::SSLeay-1.96">Net-SSLeay-1.96</a>

##### Recommended

<a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a> (to access international domain names)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
### Installation of IO::Socket::SSL {#installation-of-iosocketssl}

This module uses a variant of the standard build and installation instructions:

```bash
yes | perl Makefile.PL &&
make                   &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations}

<span class="command"><strong>yes</strong></span>: Perl will ask if you wish to run external tests, which will 'fail soft' if there are network problems. The default is 'y', which will allow you to script the build.
</div>
</div>

<div class="sect2" lang="en">
## IO::String-1.08 {#iostring-1.08}

<div class="package" lang="en">
### Introduction to IO::String {#introduction-to-iostring}

IO::String - Emulate file interface for in-core strings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/G/GA/GAAS/IO-String-1.08.tar.gz">https://www.cpan.org/authors/id/G/GA/GAAS/IO-String-1.08.tar.gz</a>

-   Download MD5 sum: 250e5424f290299fc3d6b5d1e9da3835
</div>
</div>

<div class="installation" lang="en">
### Installation of IO::String {#installation-of-iostring}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## IPC::Run3-0.049 {#ipcrun3-0.049}

<div class="package" lang="en">
### Introduction to IPC::Run3 {#introduction-to-ipcrun3}

IPC::Run3 is used to run a subprocess with input/output redirection.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/R/RJ/RJBS/IPC-Run3-0.049.tar.gz">https://www.cpan.org/authors/id/R/RJ/RJBS/IPC-Run3-0.049.tar.gz</a>

-   Download MD5 sum: 569393ca56dfb78dedd79e93c0439159
</div>
</div>

<div class="installation" lang="en">
### Installation of IPC::Run3 {#installation-of-ipcrun3}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Lingua::Translit-0.29 {#linguatranslit-0.29}

<div class="package" lang="en">
### Introduction to Lingua::Translit {#introduction-to-linguatranslit}

Lingua::Translit and its <span class="command"><strong>translit</strong></span> program transliterate text between writing systems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/A/AL/ALINKE/Lingua-Translit-0.29.tar.gz">https://www.cpan.org/authors/id/A/AL/ALINKE/Lingua-Translit-0.29.tar.gz</a>

-   Download MD5 sum: 605a82f06b05fef4fc18bf069b1be511
</div>
</div>

<div class="installation" lang="en">
### Installation of Lingua::Translit {#installation-of-linguatranslit}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-1}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">translit</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ---------------------------------------------------------------------
  <a id="translit-prog"></a><span class="command"><span class="term"><strong>translit</strong></span></span>   transliterates text between writing systems using various standards
  ----------------------------------------------------- ---------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## LWP (libwww-perl-6.83) {#lwp-libwww-perl-6.83}

<div class="package" lang="en">
### Introduction to LWP - The World-wide Web library for Perl {#introduction-to-lwp---the-world-wide-web-library-for-perl}

The libwww-perl collection is a set of Perl modules which provides a simple and consistent application programming interface (API) to the World-Wide Web. The main focus of the library is to provide classes and functions that allow you to write WWW clients. The library also contains modules that are of more general use and even classes that help you implement simple HTTP servers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/O/OA/OALDERS/libwww-perl-6.83.tar.gz">https://www.cpan.org/authors/id/O/OA/OALDERS/libwww-perl-6.83.tar.gz</a>

-   Download MD5 sum: dfca8f917f4727ddbdf3d81d0979172f
</div>

#### libwww-perl Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-file-listing" title="File::Listing-6.16">File-Listing-6.16</a>, <a class="xref" href="perl-deps.md#perl-http-cookiejar" title="HTTP::CookieJar-0.014">HTTP-CookieJar-0.014</a>, <a class="xref" href="perl-deps.md#perl-http-cookies" title="HTTP::Cookies-6.11">HTTP-Cookies-6.11</a>, <a class="xref" href="perl-modules.md#perl-http-daemon" title="HTTP::Daemon-6.17">HTTP-Daemon-6.17</a>, <a class="xref" href="perl-deps.md#perl-http-negotiate" title="HTTP::Negotiate-6.01">HTTP-Negotiate-6.01</a>, <a class="xref" href="perl-modules.md#perl-html-parser" title="HTML::Parser-3.85">HTML-Parser-3.85</a>, <a class="xref" href="perl-deps.md#perl-net-http" title="Net::HTTP-6.24">Net-HTTP-6.24</a>, <a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a> and <a class="xref" href="perl-deps.md#perl-www-robotrules" title="WWW::RobotRules-6.02">WWW-RobotRules-6.02</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a> and <a class="xref" href="perl-deps.md#perl-test-requiresinternet" title="Test::RequiresInternet-0.05">Test-RequiresInternet-0.05</a>
</div>

<div class="installation" lang="en">
### Installation of libwww-perl {#installation-of-libwww-perl}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

After installing this package, if you want HTTPS protocol support install <a class="xref" href="perl-modules.md#perl-lwp-protocol-https" title="LWP::Protocol::https-6.15">LWP-Protocol-https-6.15</a>.
</div>

<div class="content" lang="en">
### Contents {#contents-2}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lwp-download, lwp-dump, lwp-mirror, lwp-request</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------- ---------------------------------------------------------------
  <a id="lwp-download-prog"></a><span class="command"><span class="term"><strong>lwp-download</strong></span></span>   is a script to fetch a large file from the web
  <a id="lwp-dump-prog"></a><span class="command"><span class="term"><strong>lwp-dump</strong></span></span>           is used to see what headers and content is returned for a URL
  <a id="lwp-mirror-prog"></a><span class="command"><span class="term"><strong>lwp-mirror</strong></span></span>       is a simple mirror utility
  <a id="lwp-request-prog"></a><span class="command"><span class="term"><strong>lwp-request</strong></span></span>     is a simple command line user agent
  ------------------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## List::AllUtils-0.19 {#listallutils-0.19}

<div class="package" lang="en">
### Introduction to List::AllUtils {#introduction-to-listallutils}

The List::Allutils module combines List::Util and List::MoreUtils in one bite-sized package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DR/DROLSKY/List-AllUtils-0.19.tar.gz">https://www.cpan.org/authors/id/D/DR/DROLSKY/List-AllUtils-0.19.tar.gz</a>

-   Download MD5 sum: 86469b1f6819ba181a8471eb932965f2
</div>

#### List::AllUtils Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-list-someutils" title="List::SomeUtils-0.59">List-SomeUtils-0.59</a> and <a class="xref" href="perl-deps.md#perl-list-utilsby" title="List::UtilsBy-0.12">List-UtilsBy-0.12</a>
</div>

<div class="installation" lang="en">
### Installation of List::AllUtils {#installation-of-listallutils}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## List::MoreUtils-0.430 {#listmoreutils-0.430}

<div class="package" lang="en">
### Introduction to List::MoreUtils {#introduction-to-listmoreutils}

List::MoreUtils provides the stuff missing in List::Util.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-0.430.tar.gz">https://www.cpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-0.430.tar.gz</a>

-   Download MD5 sum: daccd6310021231b827dcc943ff1c6b7
</div>

#### List::MoreUtils Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-exporter-tiny" title="Exporter::Tiny-1.006003">Exporter-Tiny-1.006003</a> and <a class="xref" href="perl-deps.md#perl-list-moreutils-xs" title="List::MoreUtils::XS-0.430">List-MoreUtils-XS-0.430</a>
</div>

<div class="installation" lang="en">
### Installation of List::MoreUtils {#installation-of-listmoreutils}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Log::Log4perl-1.57 {#loglog4perl-1.57}

<div class="package" lang="en">
### Introduction to Log::Log4perl {#introduction-to-loglog4perl}

Log::Log4perl provides a Log4j implementation for <span class="application">perl</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/E/ET/ETJ/Log-Log4perl-1.57.tar.gz">https://www.cpan.org/authors/id/E/ET/ETJ/Log-Log4perl-1.57.tar.gz</a>

-   Download MD5 sum: acbe29cbaf03f4478a13579a275b0011
</div>
</div>

<div class="installation" lang="en">
### Installation of Log::Log4perl {#installation-of-loglog4perl}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-3}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">l4p-templ</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  <a id="l4p-templ-prog"></a><span class="command"><span class="term"><strong>l4p-templ</strong></span></span>   prints out the text of a template Log4perl configuration for starting a new Log4perl configuration file
  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## LWP::Protocol::https-6.15 {#lwpprotocolhttps-6.15}

<div class="package" lang="en">
### Introduction to LWP::Protocol::https {#introduction-to-lwpprotocolhttps}

LWP::Protocol::https provides https support for LWP::UserAgent (i.e. <a class="xref" href="perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a>). Once the module is installed LWP is able to access sites using HTTP over SSL/TLS.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/O/OA/OALDERS/LWP-Protocol-https-6.15.tar.gz">https://www.cpan.org/authors/id/O/OA/OALDERS/LWP-Protocol-https-6.15.tar.gz</a>

-   Download MD5 sum: c92eb7bffeb73cf3726193ea69f6792e
</div>

#### LWP::Protocol::https Dependencies

##### Required

<a class="xref" href="perl-modules.md#perl-io-socket-ssl" title="IO::Socket::SSL-2.098">IO-Socket-SSL-2.098</a>, <a class="xref" href="perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a>, and <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> with <code class="literal">/etc/pki/tls/certs/ca-bundle.crt</code>.
</div>

<div class="installation" lang="en">
### Installation of LWP::Protocol::https {#installation-of-lwpprotocolhttps}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Module::Build-0.4234 {#modulebuild-0.4234}

<div class="package" lang="en">
### Introduction to Module::Build {#introduction-to-modulebuild}

Module::Build allows perl modules to be built without a <span class="command"><strong>make</strong></span> command being present.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-0.4234.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-0.4234.tar.gz</a>

-   Download MD5 sum: 0032d0c0bc36a3b68ef41c947829d5e3
</div>
</div>

<div class="installation" lang="en">
### Installation of Module::Build {#installation-of-modulebuild}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Note that this module can also be built using <code class="filename">Build.PL</code>
</div>

<div class="content" lang="en">
### Contents {#contents-4}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">config_data</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------
  <a id="config-data-prog"></a><span class="command"><span class="term"><strong>config_data</strong></span></span>   is used to query or change the configuration of perl modules
  ----------------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Net::DNS-1.54 {#netdns-1.54}

<div class="package" lang="en">
### Introduction to Net::DNS {#introduction-to-netdns}

Net::DNS is a DNS resolver implemented in <span class="application">Perl</span>. It can be used to perform nearly any type of DNS query from a <span class="application">Perl</span> script.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-1.54.tar.gz">https://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-1.54.tar.gz</a>

-   Download MD5 sum: 717ef24e9b284359d65a6af8e077362e
</div>
</div>

<div class="installation" lang="en">
### Installation of Net::DNS {#installation-of-netdns}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Parse::RecDescent-1.967015 {#parserecdescent-1.967015}

<div class="package" lang="en">
### Introduction to Parse::RecDescent {#introduction-to-parserecdescent}

Parse::RecDescent incrementally generates top-down recursive-descent text parsers from simple yacc-like grammar specifications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/J/JT/JTBRAUN/Parse-RecDescent-1.967015.tar.gz">https://www.cpan.org/authors/id/J/JT/JTBRAUN/Parse-RecDescent-1.967015.tar.gz</a>

-   Download MD5 sum: 7a36d45d62a9b68603edcdbd276006cc
</div>
</div>

<div class="installation" lang="en">
### Installation of Parse::RecDescent {#installation-of-parserecdescent}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Parse::Yapp-1.21 {#parseyapp-1.21}

<div class="package" lang="en">
### Introduction to Parse::Yapp {#introduction-to-parseyapp}

Parse::Yapp is a Perl extension for generating and using LALR parsers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/W/WB/WBRASWELL/Parse-Yapp-1.21.tar.gz">https://www.cpan.org/authors/id/W/WB/WBRASWELL/Parse-Yapp-1.21.tar.gz</a>

-   Download MD5 sum: 69584d5b0f0304bb2a23cffcd982c5de
</div>
</div>

<div class="installation" lang="en">
### Installation of Parse::Yapp {#installation-of-parseyapp}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-5}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">yapp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------------------------------------------------------------
  <a id="yapp-prog"></a><span class="command"><span class="term"><strong>yapp</strong></span></span>   is a frontend to the Parse::Yapp module, which lets you create a Perl OO parser from an input grammar file
  --------------------------------------------- ------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## PerlIO::utf8_strict-0.010 {#perlioutf8_strict-0.010}

<div class="package" lang="en">
### Introduction to PerlIO::utf8_strict {#introduction-to-perlioutf8_strict}

PerlIO::utf8_strict provides a fast and correct UTF-8 PerlIO layer. Unlike Perl's default :utf8 layer it checks the input for correctness.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/L/LE/LEONT/PerlIO-utf8_strict-0.010.tar.gz">https://www.cpan.org/authors/id/L/LE/LEONT/PerlIO-utf8_strict-0.010.tar.gz</a>

-   Download MD5 sum: d90ca967f66e05ad9221c79060868346
</div>

#### PerlIO::utf8_strict Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-exception" title="Test::Exception-0.43">Test-Exception-0.43</a>
</div>

<div class="installation" lang="en">
### Installation of PerlIO::utf8_strict {#installation-of-perlioutf8_strict}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Regexp::Common-2024080801 {#regexpcommon-2024080801}

<div class="package" lang="en">
### Introduction to Regexp::Common {#introduction-to-regexpcommon}

Regexp::Common provides commonly requested regular expressions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/A/AB/ABIGAIL/Regexp-Common-2024080801.tar.gz">https://www.cpan.org/authors/id/A/AB/ABIGAIL/Regexp-Common-2024080801.tar.gz</a>

-   Download MD5 sum: 73d4b4b2a0690f9ab573d54a69c22aee
</div>
</div>

<div class="installation" lang="en">
### Installation of Regexp::Common {#installation-of-regexpcommon}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## SGMLSpm-1.1 {#sgmlspm-1.1}

<div class="package" lang="en">
### Introduction to SGMLSpm {#introduction-to-sgmlspm}

The SGMLSpm module is a <span class="application">Perl</span> library used for parsing the output from James Clark's SGMLS and NSGMLS parsers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/R/RA/RAAB/SGMLSpm-1.1.tar.gz">https://www.cpan.org/authors/id/R/RA/RAAB/SGMLSpm-1.1.tar.gz</a>

-   Download MD5 sum: 746c74ae969992cedb1a2879b4168090
</div>
</div>

<div class="installation" lang="en">
### Installation of SGMLSpm {#installation-of-sgmlspm}

Before beginning the build, issue the following command to prevent an error:

```bash
chmod -v 644 MYMETA.yml
```

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

After the package has been installed, run the following command as the <code class="systemitem">root</code> user:

```bash
ln -sv sgmlspl.pl /usr/bin/sgmlspl
```
</div>

<div class="content" lang="en">
### Contents {#contents-6}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sgmlspl.pl, sgmlspl</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  <a id="sgmlspl.pl"></a><span class="command"><span class="term"><strong>sgmlspl.pl</strong></span></span>   is an SGML processor
  <a id="sgmlspl-prog"></a><span class="command"><span class="term"><strong>sgmlspl</strong></span></span>    is a symbolic link used during the install of <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Sort::Key-1.33 {#sortkey-1.33}

<div class="package" lang="en">
### Introduction to Sort::Key {#introduction-to-sortkey}

Sort::Key provides a set of functions to sort lists of values by some calculated key value.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/S/SA/SALVA/Sort-Key-1.33.tar.gz">https://www.cpan.org/authors/id/S/SA/SALVA/Sort-Key-1.33.tar.gz</a>

-   Download MD5 sum: a37ab0da0cfdc26e57b4c79e39f6d98f
</div>
</div>

<div class="installation" lang="en">
### Installation of Sort::Key {#installation-of-sortkey}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Test::Command-0.11 {#testcommand-0.11}

<div class="package" lang="en">
### Introduction to Test::Command {#introduction-to-testcommand}

Test::Command tests the exit status, STDOUT, or STDERR, of an external command.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DA/DANBOO/Test-Command-0.11.tar.gz">https://www.cpan.org/authors/id/D/DA/DANBOO/Test-Command-0.11.tar.gz</a>

-   Download MD5 sum: 9ab83c4695961dbe92cd86efe08f0634
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Command {#installation-of-testcommand}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Test::Differences-0.72 {#testdifferences-0.72}

<div class="package" lang="en">
### Introduction to Test::Differences {#introduction-to-testdifferences}

Test::Differences tests strings and data structures and shows the differences if they do not match.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/D/DC/DCANTRELL/Test-Differences-0.72.tar.gz">https://www.cpan.org/authors/id/D/DC/DCANTRELL/Test-Differences-0.72.tar.gz</a>

-   Download MD5 sum: 348ac35809a53290ac05cf0f18f673fa
</div>

#### Test::Differences Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-text-diff" title="Text::Diff-1.45">Text-Diff-1.45</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a>
</div>

<div class="installation" lang="en">
### Installation of Test::Differences {#installation-of-testdifferences}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Text::BibTeX-0.91 {#textbibtex-0.91}

<div class="package" lang="en">
### Introduction to Text::BibTeX {#introduction-to-textbibtex}

Text::BibTeX provides an interface to read and parse <span class="application">BibTeX</span> files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/A/AM/AMBS/Text-BibTeX-0.91.tar.gz">https://www.cpan.org/authors/id/A/AM/AMBS/Text-BibTeX-0.91.tar.gz</a>

-   Download MD5 sum: 437862f801cfb7598dff52aa4ff7d888
</div>

#### Text::BibTeX Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-config-autoconf" title="Config::AutoConf-0.320">Config-AutoConf-0.320</a> and <a class="xref" href="perl-deps.md#perl-extutils-libbuilder" title="ExtUtils::LibBuilder-0.09">ExtUtils-LibBuilder-0.09</a>
</div>

<div class="installation" lang="en">
### Installation of Text::BibTeX {#installation-of-textbibtex}

This module is built using <code class="filename">Build.PL</code>:

```bash
perl Build.PL &&
./Build       &&
./Build test
```

Now, as the <code class="systemitem">root</code> user:

```bash
./Build install
```
</div>

<div class="content" lang="en">
### Contents {#contents-7}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">biblex, bibparse, dumpnames</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbtparse.so</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  <a id="biblex-prog"></a><span class="command"><span class="term"><strong>biblex</strong></span></span>          performs lexical analysis on a BibTeX file
  <a id="bibparse-prog"></a><span class="command"><span class="term"><strong>bibparse</strong></span></span>      parses a series of BibTeX files with command line options to control the string post-processing behavior
  <a id="dumpnames-prog"></a><span class="command"><span class="term"><strong>dumpnames</strong></span></span>    parses a BibTeX file, splitting 'author' and 'editor' fields into lists of names, and then dumps everything to stdout
  <a id="libbtparse-lib"></a><span class="term"><code class="filename">libbtparse.so</code></span>   is a library for parsing and processing BibTeX data files
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Text::CSV-2.06 {#textcsv-2.06}

<div class="package" lang="en">
### Introduction to Text::CSV {#introduction-to-textcsv}

Text::CSV is a comma-separated values manipulator, using XS (eXternal Subroutine - for subroutines written in C or C++) or pure perl.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/I/IS/ISHIGAKI/Text-CSV-2.06.tar.gz">https://www.cpan.org/authors/id/I/IS/ISHIGAKI/Text-CSV-2.06.tar.gz</a>

-   Download MD5 sum: 620284340dfd1787c89666d22adfd463
</div>

#### Text::CSV Dependencies

##### Recommended

<a class="xref" href="perl-deps.md#perl-text-csv_xs" title="Text::CSV_XS-1.62">Text-CSV_XS-1.62</a> (required by <a class="xref" href="../pst/biber.md" title="biber-2.21">biber-2.21</a>)
</div>

<div class="installation" lang="en">
### Installation of Text::CSV {#installation-of-textcsv}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Text::Roman-3.5 {#textroman-3.5}

<div class="package" lang="en">
### Introduction to Text::Roman {#introduction-to-textroman}

Text::Roman allows conversion between Roman and Arabic algorisms (number systems, e.g. MCMXLV and 1945).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/S/SY/SYP/Text-Roman-3.5.tar.gz">https://www.cpan.org/authors/id/S/SY/SYP/Text-Roman-3.5.tar.gz</a>

-   Download MD5 sum: 1f6b09c0cc1f4425b565ff787a39fd83
</div>
</div>

<div class="installation" lang="en">
### Installation of Text::Roman {#installation-of-textroman}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Unicode::Collate-1.31 {#unicodecollate-1.31}

<div class="package" lang="en">
### Introduction to Unicode::Collate {#introduction-to-unicodecollate}

Unicode::Collate provides a Unicode collation algorithm.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This is a core module. If you are using <span class="application">perl-5.28.0</span> or later, its version is good enough for <a class="xref" href="../pst/biber.md" title="biber-2.21">biber-2.21</a> and you do not need to reinstall this module.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/S/SA/SADAHIRO/Unicode-Collate-1.31.tar.gz">https://www.cpan.org/authors/id/S/SA/SADAHIRO/Unicode-Collate-1.31.tar.gz</a>

-   Download MD5 sum: ee4d960d057c5e5b02ebb49d0286db8f
</div>
</div>

<div class="installation" lang="en">
### Installation of Unicode::Collate {#installation-of-unicodecollate}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## Unicode::LineBreak-2019.001 {#unicodelinebreak-2019.001}

<div class="package" lang="en">
### Introduction to Unicode::LineBreak {#introduction-to-unicodelinebreak}

Unicode::LineBreak provides a UAX #14 Unicode Line Breaking Algorithm.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/N/NE/NEZUMI/Unicode-LineBreak-2019.001.tar.gz">https://www.cpan.org/authors/id/N/NE/NEZUMI/Unicode-LineBreak-2019.001.tar.gz</a>

-   Download MD5 sum: 003d6da7a13700e069afed9238c864b9
</div>

#### Unicode::LineBreak Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-mime-charset" title="MIME::Charset-1.013.1">MIME-Charset-1.013.1</a> and <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a> (to download two files from unicode.org in the test suite)

##### Optional

<a class="ulink" href="https://linux.thai.net/projects/libthai/">libthai</a> (to break Thai words into segments)
</div>

<div class="installation" lang="en">
### Installation of Unicode::LineBreak {#installation-of-unicodelinebreak}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## URI-5.34 {#uri-5.34}

<div class="package" lang="en">
### Introduction to URI {#introduction-to-uri}

This module implements the URI class. Objects of this class represent "Uniform Resource Identifier references" as specified in RFC 2396 (and updated by RFC 2732). A Uniform Resource Identifier is a compact string of characters that identifies an abstract or physical resource. A Uniform Resource Identifier can be further classified as either a Uniform Resource Locator (URL) or a Uniform Resource Name (URN). The distinction between URL and URN does not matter to the URI class interface. A "URI-reference" is a URI that may have additional information attached in the form of a fragment identifier.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.34.tar.gz">https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.34.tar.gz</a>

-   Download MD5 sum: 3736f3d6efe1710176a753a7029b7606
</div>

#### URI Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-mime-base32" title="MIME::Base32-1.303">MIME-Base32-1.303</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a>, and <a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a>

##### Optional

<a class="xref" href="perl-modules.md#perl-business-isbn" title="Business::ISBN-3.014">Business-ISBN-3.014</a>
</div>

<div class="installation" lang="en">
### Installation of URI {#installation-of-uri}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## XML::LibXML::Simple-1.01 {#xmllibxmlsimple-1.01}

<div class="package" lang="en">
### Introduction to XML::LibXML::Simple {#introduction-to-xmllibxmlsimple}

The XML::LibXML::Simple module is a rewrite of XML::Simple to use the XML::LibXML parser for XML structures, instead of the plain <span class="application">Perl</span> or SAX parsers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/M/MA/MARKOV/XML-LibXML-Simple-1.01.tar.gz">https://www.cpan.org/authors/id/M/MA/MARKOV/XML-LibXML-Simple-1.01.tar.gz</a>

-   Download MD5 sum: faad5ed26cd83998f6514be199c56c38
</div>

#### XML::LibXML::Simple Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-xml-libxml" title="XML::LibXML-2.0213">XML-LibXML-2.0213</a>
</div>

<div class="installation" lang="en">
### Installation of XML::LibXML::Simple {#installation-of-xmllibxmlsimple}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## XML::LibXSLT-2.003000 {#xmllibxslt-2.003000}

<div class="package" lang="en">
### Introduction to XML::LibXSLT {#introduction-to-xmllibxslt}

XML-LibXSLT provides an interface to <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/S/SH/SHLOMIF/XML-LibXSLT-2.003000.tar.gz">https://www.cpan.org/authors/id/S/SH/SHLOMIF/XML-LibXSLT-2.003000.tar.gz</a>

-   Download MD5 sum: 632dce587b3c405edd4e622364750191
</div>

#### XML::LibXSLT Dependencies

##### Required

<a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="perl-deps.md#perl-xml-libxml" title="XML::LibXML-2.0213">XML-LibXML-2.0213</a>
</div>

<div class="installation" lang="en">
### Installation of XML::LibXSLT {#installation-of-xmllibxslt}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## XML::Parser-2.59 {#xmlparser-2.59}

<div class="package" lang="en">
### Introduction to XML::Parser {#introduction-to-xmlparser}

The XML::Parser module is a Perl interface to James Clark's XML parser. It is built on top of XML::Parser::Expat, which is a lower level interface to the expat library. Each call to one of the parsing methods creates a new instance of XML::Parser::Expat which is then used to parse the document.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/T/TO/TODDR/XML-Parser-2.59.tar.gz">https://www.cpan.org/authors/id/T/TO/TODDR/XML-Parser-2.59.tar.gz</a>

-   Download MD5 sum: f483e6b8541d60a84e4bf50803e476bc
</div>

#### XML::Parser Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-file-sharedir" title="File::ShareDir-1.118">File-ShareDir-1.118</a>
</div>

<div class="installation" lang="en">
### Installation of XML::Parser {#installation-of-xmlparser}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## XML::Simple-2.25 {#xmlsimple-2.25}

<div class="package" lang="en">
### Introduction to XML::Simple {#introduction-to-xmlsimple}

XML::Simple provides an easy API to read and write XML (especially config files). It is deprecated and its use is discouraged.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz">https://www.cpan.org/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz</a>

-   Download MD5 sum: bb841dce889a26c89a1c2739970e9fbc
</div>

#### XML::Simple Dependencies

##### Recommended

<a class="xref" href="perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a>

##### Optional

<a class="xref" href="perl-deps.md#perl-xml-sax" title="XML::SAX-1.02">XML-SAX-1.02</a> (for an alternative parser which will be used if available)
</div>

<div class="installation" lang="en">
### Installation of XML::Simple {#installation-of-xmlsimple}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

During the configuration process, the build system will complain about missing the <span class="application">XML::SAX::Expat</span> module. If <span class="application">XML::SAX</span> is installed, this module is not necessary as <span class="application">XML::SAX</span> will use the <span class="application">libxml2</span> package instead. However, if it is not installed, <a class="xref" href="perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a> will get used instead.
</div>

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## XML::Writer-0.900 {#xmlwriter-0.900}

<div class="package" lang="en">
### Introduction to XML::Writer {#introduction-to-xmlwriter}

XML::Writer provides a <span class="application">Perl</span> extension for writing XML documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-0.900.tar.gz">https://www.cpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-0.900.tar.gz</a>

-   Download MD5 sum: 2457214360cefda445742a608dd6195e
</div>
</div>

<div class="installation" lang="en">
### Installation of XML::Writer {#installation-of-xmlwriter}

This module uses the standard build and installation instructions:

```bash
perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>
</div>

<div class="sect2" lang="en">
## CPAN automated install of perl modules {#cpan-automated-install-of-perl-modules}

<div class="installation" lang="en">
### Automatic Installation of Perl Modules. {#automatic-installation-of-perl-modules.}

There is an alternate way of installing the modules using the <span class="command"><strong>cpan</strong></span> shell <span class="command"><strong>install</strong></span> command. The command automatically downloads the latest source from the CPAN archive for the module and any missing prerequisite modules listed by upstream. Then for each module it extracts it, runs the compilation, the tests and installs it.

You still need to install any non-perl dependencies before running the automated installation method. You may wish to clean out the <code class="filename">build/</code> directory after installing, to free up the space. If any post-install actions such as creating a symlink are mentioned, you should also do those.

The first time you run <span class="command"><strong>cpan</strong></span>, you'll be prompted to enter some information regarding download locations and methods. This information is retained in files located in <code class="filename">~/.cpan</code>.

In particular, you may wish to configure it so that <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> is used for the installs, allowing you to build and test as a regular user. The following examples have not used that approach.

Start the <span class="command"><strong>cpan</strong></span> shell by issuing '<span class="command"><strong>cpan</strong></span>' as the <code class="systemitem">root</code> user. Any module may now be installed from the <span class="underlined"><code class="prompt">cpan> </code></span> prompt with the command:

```bash
install <Module::Name>
```

For additional commands and help, issue '<span class="command"><strong>help</strong></span>' from the <span class="underlined"><code class="prompt">cpan> </code></span> prompt.

Alternatively, for scripted or non-interactive installations, use the following syntax as the <code class="systemitem">root</code> user to install one or more modules:

```bash
cpan -i <Module1::Name> <Module2::Name>
```

Review the <code class="filename">cpan.1</code> man page for additional parameters you can pass to <span class="command"><strong>cpan</strong></span> on the command line.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](patchelf.md "Patchelf-0.18.0")

    Patchelf-0.18.0

-   [Next](perl-deps.md "Perl Module Dependencies")

    Perl Module Dependencies

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
