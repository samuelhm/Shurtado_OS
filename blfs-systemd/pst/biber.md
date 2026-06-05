<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](asymptote.md "asymptote-3.10")

    asymptote-3.10

-   [Next](dvisvgm.md "dvisvgm-3.6")

    dvisvgm-3.6

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# biber-2.21 {#biber-2.21}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to biber {#introduction-to-biber}

Biber is a BibTeX replacement for users of biblatex, written in <span class="application">Perl</span>, with full Unicode support.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/plk/biber/archive/v2.21/biber-2.21.tar.gz">https://github.com/plk/biber/archive/v2.21/biber-2.21.tar.gz</a>

-   Download MD5 sum: abdbdb2aa0479e490d0d75eb8e35ad50

-   Download size: 1.6 MB

-   Estimated disk space required: 14 MB (installs 1.2MB of perl modules)

-   Estimated build time: 0.4 SBU including tests
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have updated to a new release of texlive-source, biber and its perl dependencies are still present in <code class="filename">/usr</code> and do not need to be rebuilt. However, biblatex installs in <code class="filename">/opt/texlive/2025</code> and does need to be reinstalled.

If you installed the above dependencies using the BLFS instructions for each of them, <span class="command"><strong>perl ./Build.PL</strong></span> will complain that Mozilla::CA is not installed, but that is not needed unless CPAN was used to install the modules. BLFS patches LWP::Protocol::https to use the system certificates, Mozilla::CA uses old certificates.
</div>

### Biber Dependencies

#### Required

<a class="xref" href="../general/perl-modules.md#perl-autovivification" title="autovivification-0.18">autovivification-0.18</a>, <a class="xref" href="../general/perl-modules.md#perl-business-isbn" title="Business::ISBN-3.014">Business-ISBN-3.014</a>, <a class="xref" href="../general/perl-modules.md#perl-business-ismn" title="Business::ISMN-1.205">Business-ISMN-1.205</a>, <a class="xref" href="../general/perl-modules.md#perl-business-issn" title="Business::ISSN-1.008">Business-ISSN-1.008</a>, <a class="xref" href="../general/perl-modules.md#perl-class-accessor" title="Class::Accessor-0.51">Class-Accessor-0.51</a>, <a class="xref" href="../general/perl-modules.md#perl-data-compare" title="Data::Compare-1.29">Data-Compare-1.29</a>, <a class="xref" href="../general/perl-modules.md#perl-data-dump" title="Data::Dump-1.25">Data-Dump-1.25</a>, <a class="xref" href="../general/perl-modules.md#perl-data-uniqid" title="Data::Uniqid-0.12">Data-Uniqid-0.12</a>, <a class="xref" href="../general/perl-modules.md#perl-datetime-calendar-julian" title="DateTime::Calendar::Julian-0.107">DateTime-Calendar-Julian-0.107</a>, <a class="xref" href="../general/perl-modules.md#perl-datetime-format-builder" title="DateTime::Format::Builder-0.83">DateTime-Format-Builder-0.83</a>, <a class="xref" href="../general/perl-modules.md#perl-encode-eucjpascii" title="Encode::EUCJPASCII-0.03">Encode-EUCJPASCII-0.03</a>, <a class="xref" href="../general/perl-modules.md#perl-encode-hanextra" title="Encode::HanExtra-0.23">Encode-HanExtra-0.23</a>, <a class="xref" href="../general/perl-modules.md#perl-encode-jis2k" title="Encode::JIS2K-0.05">Encode-JIS2K-0.05</a>, <a class="xref" href="../general/perl-modules.md#perl-file-slurper" title="File::Slurper-0.014">File-Slurper-0.014</a>, <a class="xref" href="../general/perl-modules.md#perl-io-string" title="IO::String-1.08">IO-String-1.08</a>, <a class="xref" href="../general/perl-modules.md#perl-ipc-run3" title="IPC::Run3-0.049">IPC-Run3-0.049</a>, <a class="xref" href="../general/perl-modules.md#perl-lingua-translit" title="Lingua::Translit-0.29">Lingua-Translit-0.29</a>, <a class="xref" href="../general/perl-modules.md#perl-list-allutils" title="List::AllUtils-0.19">List-AllUtils-0.19</a>, <a class="xref" href="../general/perl-modules.md#perl-list-moreutils" title="List::MoreUtils-0.430">List-MoreUtils-0.430</a>, <a class="xref" href="../general/perl-modules.md#perl-log-log4perl" title="Log::Log4perl-1.57">Log-Log4perl-1.57</a>, <a class="xref" href="../general/perl-modules.md#perl-lwp-protocol-https" title="LWP::Protocol::https-6.15">LWP-Protocol-https-6.15</a>, <a class="xref" href="../general/perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a>, <a class="xref" href="../general/perl-modules.md#perl-parse-recdescent" title="Parse::RecDescent-1.967015">Parse-RecDescent-1.967015</a>, <a class="xref" href="../general/perl-modules.md#perl-perlio-utf8_strict" title="PerlIO::utf8_strict-0.010">PerlIO-utf8_strict-0.010</a>, <a class="xref" href="../general/perl-modules.md#perl-regexp-common" title="Regexp::Common-2024080801">Regexp-Common-2024080801</a>, <a class="xref" href="../general/perl-modules.md#perl-sort-key" title="Sort::Key-1.33">Sort-Key-1.33</a>, <a class="xref" href="../general/perl-modules.md#perl-text-bibtex" title="Text::BibTeX-0.91">Text-BibTeX-0.91</a>, <a class="xref" href="../general/perl-modules.md#perl-text-csv" title="Text::CSV-2.06">Text-CSV-2.06</a>, <a class="xref" href="../general/perl-modules.md#perl-text-roman" title="Text::Roman-3.5">Text-Roman-3.5</a>, <a class="xref" href="../general/perl-modules.md#perl-unicode-collate" title="Unicode::Collate-1.31">Unicode-Collate-1.31</a>, <a class="xref" href="../general/perl-modules.md#perl-unicode-linebreak" title="Unicode::LineBreak-2019.001">Unicode-LineBreak-2019.001</a>, <a class="xref" href="../general/perl-modules.md#perl-xml-libxml-simple" title="XML::LibXML::Simple-1.01">XML-LibXML-Simple-1.01</a>, <a class="xref" href="../general/perl-modules.md#perl-xml-libxslt" title="XML::LibXSLT-2.003000">XML-LibXSLT-2.003000</a>, and <a class="xref" href="../general/perl-modules.md#perl-xml-writer" title="XML::Writer-0.900">XML-Writer-0.900</a>

#### Recommended (required for the test suite)

<a class="xref" href="../general/perl-modules.md#perl-file-which" title="File::Which-1.27">File-Which-1.27</a> and <a class="xref" href="../general/perl-modules.md#perl-test-differences" title="Test::Differences-0.72">Test-Differences-0.72</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

It is possible to install all missing dependencies automatically. You must first install <a class="xref" href="../general/perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a> using <a class="xref" href="../general/perl-modules.md#perl-auto-install" title="Automatic Installation of Perl Modules.">automatic installation of perl modules</a>. Then run <span class="command"><strong>perl ./Build.PL</strong></span> and when it prompts you, become the <code class="systemitem">root</code> user and run <span class="command"><strong>./Build installdeps</strong></span> - this will use CPAN and as noted above it will use Mozilla::CA instead of using system certificates.
</div>
</div>

<div class="installation" lang="en">
## Installation of Biber {#installation-of-biber}

Install <span class="application">Biber</span> by running the following commands:

```bash
perl ./Build.PL &&
./Build
```

To test the results, enter: <span class="command"><strong>./Build test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
./Build install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">biber</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/perl5/site_perl/5.\*{,/\<arch\>-linux/auto}/Biber</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------
  <a id="biber-prog"></a><span class="command"><span class="term"><strong>biber</strong></span></span>   is used for producing bibliographies in LaTeX documents
  ----------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](asymptote.md "asymptote-3.10")

    asymptote-3.10

-   [Next](dvisvgm.md "dvisvgm-3.6")

    dvisvgm-3.6

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
