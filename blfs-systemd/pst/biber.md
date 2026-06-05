::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](asymptote.md "asymptote-3.10"){accesskey="p"}

    asymptote-3.10

-   [Next](dvisvgm.md "dvisvgm-3.6"){accesskey="n"}

    dvisvgm-3.6

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#biber}biber-2.21 {#biber-2.21 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to biber {#introduction-to-biber .sect2}

Biber is a BibTeX replacement for users of biblatex, written in [Perl]{.application}, with full Unicode support.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/plk/biber/archive/v2.21/biber-2.21.tar.gz](https://github.com/plk/biber/archive/v2.21/biber-2.21.tar.gz){.ulink}

-   Download MD5 sum: abdbdb2aa0479e490d0d75eb8e35ad50

-   Download size: 1.6 MB

-   Estimated disk space required: 14 MB (installs 1.2MB of perl modules)

-   Estimated build time: 0.4 SBU including tests
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have updated to a new release of texlive-source, biber and its perl dependencies are still present in `/usr`{.filename} and do not need to be rebuilt. However, biblatex installs in `/opt/texlive/2025`{.filename} and does need to be reinstalled.

If you installed the above dependencies using the BLFS instructions for each of them, [**perl ./Build.PL**]{.command} will complain that Mozilla::CA is not installed, but that is not needed unless CPAN was used to install the modules. BLFS patches LWP::Protocol::https to use the system certificates, Mozilla::CA uses old certificates.
:::

### Biber Dependencies

#### Required

[autovivification-0.18](../general/perl-modules.md#perl-autovivification "autovivification-0.18"){.xref}, [Business-ISBN-3.014](../general/perl-modules.md#perl-business-isbn "Business::ISBN-3.014"){.xref}, [Business-ISMN-1.205](../general/perl-modules.md#perl-business-ismn "Business::ISMN-1.205"){.xref}, [Business-ISSN-1.008](../general/perl-modules.md#perl-business-issn "Business::ISSN-1.008"){.xref}, [Class-Accessor-0.51](../general/perl-modules.md#perl-class-accessor "Class::Accessor-0.51"){.xref}, [Data-Compare-1.29](../general/perl-modules.md#perl-data-compare "Data::Compare-1.29"){.xref}, [Data-Dump-1.25](../general/perl-modules.md#perl-data-dump "Data::Dump-1.25"){.xref}, [Data-Uniqid-0.12](../general/perl-modules.md#perl-data-uniqid "Data::Uniqid-0.12"){.xref}, [DateTime-Calendar-Julian-0.107](../general/perl-modules.md#perl-datetime-calendar-julian "DateTime::Calendar::Julian-0.107"){.xref}, [DateTime-Format-Builder-0.83](../general/perl-modules.md#perl-datetime-format-builder "DateTime::Format::Builder-0.83"){.xref}, [Encode-EUCJPASCII-0.03](../general/perl-modules.md#perl-encode-eucjpascii "Encode::EUCJPASCII-0.03"){.xref}, [Encode-HanExtra-0.23](../general/perl-modules.md#perl-encode-hanextra "Encode::HanExtra-0.23"){.xref}, [Encode-JIS2K-0.05](../general/perl-modules.md#perl-encode-jis2k "Encode::JIS2K-0.05"){.xref}, [File-Slurper-0.014](../general/perl-modules.md#perl-file-slurper "File::Slurper-0.014"){.xref}, [IO-String-1.08](../general/perl-modules.md#perl-io-string "IO::String-1.08"){.xref}, [IPC-Run3-0.049](../general/perl-modules.md#perl-ipc-run3 "IPC::Run3-0.049"){.xref}, [Lingua-Translit-0.29](../general/perl-modules.md#perl-lingua-translit "Lingua::Translit-0.29"){.xref}, [List-AllUtils-0.19](../general/perl-modules.md#perl-list-allutils "List::AllUtils-0.19"){.xref}, [List-MoreUtils-0.430](../general/perl-modules.md#perl-list-moreutils "List::MoreUtils-0.430"){.xref}, [Log-Log4perl-1.57](../general/perl-modules.md#perl-log-log4perl "Log::Log4perl-1.57"){.xref}, [LWP-Protocol-https-6.15](../general/perl-modules.md#perl-lwp-protocol-https "LWP::Protocol::https-6.15"){.xref}, [Module-Build-0.4234](../general/perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref}, [Parse-RecDescent-1.967015](../general/perl-modules.md#perl-parse-recdescent "Parse::RecDescent-1.967015"){.xref}, [PerlIO-utf8_strict-0.010](../general/perl-modules.md#perl-perlio-utf8_strict "PerlIO::utf8_strict-0.010"){.xref}, [Regexp-Common-2024080801](../general/perl-modules.md#perl-regexp-common "Regexp::Common-2024080801"){.xref}, [Sort-Key-1.33](../general/perl-modules.md#perl-sort-key "Sort::Key-1.33"){.xref}, [Text-BibTeX-0.91](../general/perl-modules.md#perl-text-bibtex "Text::BibTeX-0.91"){.xref}, [Text-CSV-2.06](../general/perl-modules.md#perl-text-csv "Text::CSV-2.06"){.xref}, [Text-Roman-3.5](../general/perl-modules.md#perl-text-roman "Text::Roman-3.5"){.xref}, [Unicode-Collate-1.31](../general/perl-modules.md#perl-unicode-collate "Unicode::Collate-1.31"){.xref}, [Unicode-LineBreak-2019.001](../general/perl-modules.md#perl-unicode-linebreak "Unicode::LineBreak-2019.001"){.xref}, [XML-LibXML-Simple-1.01](../general/perl-modules.md#perl-xml-libxml-simple "XML::LibXML::Simple-1.01"){.xref}, [XML-LibXSLT-2.003000](../general/perl-modules.md#perl-xml-libxslt "XML::LibXSLT-2.003000"){.xref}, and [XML-Writer-0.900](../general/perl-modules.md#perl-xml-writer "XML::Writer-0.900"){.xref}

#### Recommended (required for the test suite)

[File-Which-1.27](../general/perl-modules.md#perl-file-which "File::Which-1.27"){.xref} and [Test-Differences-0.72](../general/perl-modules.md#perl-test-differences "Test::Differences-0.72"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

It is possible to install all missing dependencies automatically. You must first install [Module-Build-0.4234](../general/perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref} using [automatic installation of perl modules](../general/perl-modules.md#perl-auto-install "Automatic Installation of Perl Modules."){.xref}. Then run [**perl ./Build.PL**]{.command} and when it prompts you, become the `root`{.systemitem} user and run [**./Build installdeps**]{.command} - this will use CPAN and as noted above it will use Mozilla::CA instead of using system certificates.
:::
:::::::

::: {.installation lang="en"}
## Installation of Biber {#installation-of-biber .sect2}

Install [Biber]{.application} by running the following commands:

``` userinput
perl ./Build.PL &&
./Build
```

To test the results, enter: [**./Build test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
./Build install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [biber]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/perl5/site_perl/5.\*{,/\<arch\>-linux/auto}/Biber]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------
  []{#biber-prog}[[**biber**]{.command}]{.term}   is used for producing bibliographies in LaTeX documents
  ----------------------------------------------- ---------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](asymptote.md "asymptote-3.10"){accesskey="p"}

    asymptote-3.10

-   [Next](dvisvgm.md "dvisvgm-3.6"){accesskey="n"}

    dvisvgm-3.6

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
