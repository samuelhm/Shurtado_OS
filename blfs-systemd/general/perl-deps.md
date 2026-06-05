::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](perl-modules.md "Perl Modules"){accesskey="p"}

    Perl Modules

-   [Next](php.md "PHP-8.5.6"){accesskey="n"}

    PHP-8.5.6

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#perl-deps}Perl Module Dependencies {#perl-module-dependencies .sect1}

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Perl Modules which are only required by other modules {#perl-modules-which-are-only-required-by-other-modules .sect2}

The modules on the previous page are referenced from other pages in BLFS, but these modules are only in the book as dependencies of those modules. If you use the CPAN install method, you do not need to read this page.

The BLFS editors pay much less attention to these modules, and the versions will not be regularly reviewed. In all cases, only the required or recommended dependencies are listed - there might be other modules which allow more tests to be run, but omitting them will still allow the tests to `PASS`{.literal}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The links on this page (to metacpan.org) should go to "known good" versions, for which their dependencies are correct. If you wish to use a later version, please check the Changes file at https://metacpan.org - sometimes added dependencies are listed, other times not. Some of these modules have very frequent updates, often bringing different dependencies. The linked metacpan.org versions below were known to work with the module versions in BLFS when last reviewed.

However, if you notice that the Changes file for a newer version than is in the current development book reports a fix for a security issue, please report this to either the blfs-dev or the blfs-support list.

Similarly, if you discover that an updated module on the previous page needs an extra dependency, please report this.
:::

::: itemizedlist
-   [Algorithm-Diff-1.201](perl-deps.md#perl-algorithm-diff "Algorithm::Diff-1.201"){.xref}

-   [Alien-Build-2.84](perl-deps.md#perl-alien-build "Alien::Build-2.84"){.xref}

-   [Alien-Build-Plugin-Download-GitLab-0.01](perl-deps.md#perl-alien-build-plugin-download-gitlab "Alien::Build::Plugin::Download::GitLab-0.01"){.xref}

-   [Alien-Libxml2-0.20](perl-deps.md#perl-alien-libxml2 "Alien::Libxml2-0.20"){.xref}

-   [B-COW-0.007](perl-deps.md#perl-b-cow "B::COW-0.007"){.xref}

-   [B-Hooks-EndOfScope-0.28](perl-deps.md#perl-b-hooks-endofscope "B::Hooks::EndOfScope-0.28"){.xref}

-   [Business-ISBN-Data-20260311.001](perl-deps.md#perl-business-isbn-data "Business::ISBN::Data-20260311.001"){.xref}

-   [Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref}

-   [Class-Data-Inheritable-0.10](perl-deps.md#perl-class-data-inheritable "Class::Data::Inheritable-0.10"){.xref}

-   [Class-Inspector-1.36](perl-deps.md#perl-class-inspector "Class::Inspector-1.36"){.xref}

-   [Class-Singleton-1.6](perl-deps.md#perl-class-singleton "Class::Singleton-1.6"){.xref}

-   [Class-Tiny-1.008](perl-deps.md#perl-class-tiny "Class::Tiny-1.008"){.xref}

-   [Clone-0.47](perl-deps.md#perl-clone "Clone-0.47"){.xref}

-   [Clone-PP-1.08](perl-deps.md#perl-clone-pp "Clone::PP-1.08"){.xref}

-   [Config-AutoConf-0.320](perl-deps.md#perl-config-autoconf "Config::AutoConf-0.320"){.xref}

-   [CPAN-Meta-Check-0.018](perl-deps.md#perl-cpan-meta-check "CPAN::Meta::Check-0.018"){.xref}

-   [DateTime-1.66](perl-deps.md#perl-datetime "DateTime-1.66"){.xref}

-   [DateTime-Format-Strptime-1.80](perl-deps.md#perl-datetime-format-strptime "DateTime::Format::Strptime-1.80"){.xref}

-   [DateTime-Locale-1.45](perl-deps.md#perl-datetime-locale "DateTime::Locale-1.45"){.xref}

-   [DateTime-TimeZone-2.66](perl-deps.md#perl-datetime-timezone "DateTime::TimeZone-2.66"){.xref}

-   [Devel-StackTrace-2.05](perl-deps.md#perl-devel-stacktrace "Devel::StackTrace-2.05"){.xref}

-   [Dist-CheckConflicts-0.11](perl-deps.md#perl-dist-checkconflicts "Dist::CheckConflicts-0.11"){.xref}

-   [Encode-Locale-1.05](perl-deps.md#perl-encode-locale "Encode::Locale-1.05"){.xref}

-   [Eval-Closure-0.14](perl-deps.md#perl-eval-closure "Eval::Closure-0.14"){.xref}

-   [Exception-Class-1.45](perl-deps.md#perl-exception-class "Exception::Class-1.45"){.xref}

-   [Exporter-Tiny-1.006003](perl-deps.md#perl-exporter-tiny "Exporter::Tiny-1.006003"){.xref}

-   [ExtUtils-Config-0.010](perl-deps.md#perl-extutils-config "ExtUtils::Config-0.010"){.xref}

-   [ExtUtils-Helpers-0.028](perl-deps.md#perl-extutils-helpers "ExtUtils::Helpers-0.028"){.xref}

-   [ExtUtils-InstallPaths-0.015](perl-deps.md#perl-extutils-installpaths "ExtUtils::InstallPaths-0.015"){.xref}

-   [ExtUtils-LibBuilder-0.09](perl-deps.md#perl-extutils-libbuilder "ExtUtils::LibBuilder-0.09"){.xref}

-   [FFI-CheckLib-0.31](perl-deps.md#perl-ffi-checklib "FFI::CheckLib-0.31"){.xref}

-   [File-chdir-0.1011](perl-deps.md#perl-file-chdir "File::chdir-0.1011"){.xref}

-   [File-Copy-Recursive-0.45](perl-deps.md#perl-file-copy-recursive "File::Copy::Recursive-0.45"){.xref}

-   [File-Find-Rule-0.35](perl-deps.md#perl-file-find-rule "File::Find::Rule-0.35"){.xref}

-   [File-Listing-6.16](perl-deps.md#perl-file-listing "File::Listing-6.16"){.xref}

-   [File-ShareDir-1.118](perl-deps.md#perl-file-sharedir "File::ShareDir-1.118"){.xref}

-   [File-ShareDir-Install-0.14](perl-deps.md#perl-file-sharedir-install "File::ShareDir::Install-0.14"){.xref}

-   [HTML-Tagset-3.24](perl-deps.md#perl-html-tagset "HTML::Tagset-3.24"){.xref}

-   [HTTP-CookieJar-0.014](perl-deps.md#perl-http-cookiejar "HTTP::CookieJar-0.014"){.xref}

-   [HTTP-Cookies-6.11](perl-deps.md#perl-http-cookies "HTTP::Cookies-6.11"){.xref}

-   [HTTP-Date-6.06](perl-deps.md#perl-http-date "HTTP::Date-6.06"){.xref}

-   [HTTP-Message-7.01](perl-deps.md#perl-http-message "HTTP::Message-7.01"){.xref}

-   [HTTP-Negotiate-6.01](perl-deps.md#perl-http-negotiate "HTTP::Negotiate-6.01"){.xref}

-   [IO-HTML-1.004](perl-deps.md#perl-io-html "IO::HTML-1.004"){.xref}

-   [IPC-System-Simple-1.30](perl-deps.md#perl-ipc-system-simple "IPC::System::Simple-1.30"){.xref}

-   [List-MoreUtils-XS-0.430](perl-deps.md#perl-list-moreutils-xs "List::MoreUtils::XS-0.430"){.xref}

-   [List-SomeUtils-0.59](perl-deps.md#perl-list-someutils "List::SomeUtils-0.59"){.xref}

-   [List-SomeUtils-XS-0.58](perl-deps.md#perl-list-someutils-xs "List::SomeUtils::XS-0.58"){.xref}

-   [List-UtilsBy-0.12](perl-deps.md#perl-list-utilsby "List::UtilsBy-0.12"){.xref}

-   [LWP-MediaTypes-6.04](perl-deps.md#perl-lwp-mediatypes "LWP::MediaTypes-6.04"){.xref}

-   [MIME-Base32-1.303](perl-deps.md#perl-mime-base32 "MIME::Base32-1.303"){.xref}

-   [MIME-Charset-1.013.1](perl-deps.md#perl-mime-charset "MIME::Charset-1.013.1"){.xref}

-   [Module-Build-Tiny-0.053](perl-deps.md#perl-module-build-tiny "Module::Build::Tiny-0.053"){.xref}

-   [Module-Implementation-0.09](perl-deps.md#perl-module-implementation "Module::Implementation-0.09"){.xref}

-   [Module-Pluggable-6.3](perl-deps.md#perl-module-pluggable "Module::Pluggable-6.3"){.xref}

-   [Module-Runtime-0.018](perl-deps.md#perl-module-runtime "Module::Runtime-0.018"){.xref}

-   [MRO-Compat-0.15](perl-deps.md#perl-mro-compat "MRO::Compat-0.15"){.xref}

-   [namespace-autoclean-0.31](perl-deps.md#perl-namespace-autoclean "namespace::autoclean-0.31"){.xref}

-   [namespace-clean-0.27](perl-deps.md#perl-namespace-clean "namespace::clean-0.27"){.xref}

-   [Net-HTTP-6.24](perl-deps.md#perl-net-http "Net::HTTP-6.24"){.xref}

-   [Net-SSLeay-1.96](perl-deps.md#perl-net-ssleay "Net::SSLeay-1.96"){.xref}

-   [Number-Compare-0.03](perl-deps.md#perl-number-compare "Number::Compare-0.03"){.xref}

-   [Package-Stash-0.40](perl-deps.md#perl-package-stash "Package::Stash-0.40"){.xref}

-   [Params-Validate-1.31](perl-deps.md#perl-params-validate "Params::Validate-1.31"){.xref}

-   [Params-ValidationCompiler-0.31](perl-deps.md#perl-params-validationcompiler "Params::ValidationCompiler-0.31"){.xref}

-   [Path-Tiny-0.150](perl-deps.md#perl-path-tiny "Path::Tiny-0.150"){.xref}

-   [Role-Tiny-2.002004](perl-deps.md#perl-role-tiny "Role::Tiny-2.002004"){.xref}

-   [Scope-Guard-0.21](perl-deps.md#perl-scope-guard "Scope::Guard-0.21"){.xref}

-   [Specio-0.53](perl-deps.md#perl-specio "Specio-0.53"){.xref}

-   [Sub-Exporter-Progressive-0.001013](perl-deps.md#perl-sub-exporter-progressive "Sub::Exporter::Progressive-0.001013"){.xref}

-   [Sub-Quote-2.006009](perl-deps.md#perl-sub-quote "Sub::Quote-2.006009"){.xref}

-   [Sub-Uplevel-0.2800](perl-deps.md#perl-sub-uplevel "Sub::Uplevel-0.2800"){.xref}

-   [Term-Table-0.028](perl-deps.md#perl-term-table "Term::Table-0.028"){.xref}

-   [Test-Deep-1.205](perl-deps.md#perl-test-deep "Test::Deep-1.205"){.xref}

-   [Test-Exception-0.43](perl-deps.md#perl-test-exception "Test::Exception-0.43"){.xref}

-   [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}

-   [Test-File-1.995](perl-deps.md#perl-test-file "Test::File-1.995"){.xref}

-   [Test-File-ShareDir-1.001002](perl-deps.md#perl-test-file-sharedir "Test::File::ShareDir-1.001002"){.xref}

-   [Test-LeakTrace-0.17](perl-deps.md#perl-test-leaktrace "Test::LeakTrace-0.17"){.xref}

-   [Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref}

-   [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}

-   [Test-RequiresInternet-0.05](perl-deps.md#perl-test-requiresinternet "Test::RequiresInternet-0.05"){.xref}

-   [Test-Simple-1.302219](perl-deps.md#perl-test-simple "Test::Simple-1.302219"){.xref}

-   [Test-utf8-1.03](perl-deps.md#perl-test-utf8 "Test::utf8-1.03"){.xref}

-   [Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref}

-   [Test-Without-Module-0.23](perl-deps.md#perl-test-without-module "Test::Without::Module-0.23"){.xref}

-   [Test2-Plugin-NoWarnings-0.10](perl-deps.md#perl-test2-plugin-nowarnings "Test2::Plugin::NoWarnings-0.10"){.xref}

-   [Text-CSV_XS-1.62](perl-deps.md#perl-text-csv_xs "Text::CSV_XS-1.62"){.xref}

-   [Text-Diff-1.45](perl-deps.md#perl-text-diff "Text::Diff-1.45"){.xref}

-   [Text-Glob-0.11](perl-deps.md#perl-text-glob "Text::Glob-0.11"){.xref}

-   [Tie-Cycle-1.233](perl-deps.md#perl-tie-cycle "Tie::Cycle-1.233"){.xref}

-   [TimeDate-2.33](perl-deps.md#perl-timedate "TimeDate-2.33"){.xref}

-   [Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}

-   [Variable-Magic-0.64](perl-deps.md#perl-variable-magic "Variable::Magic-0.64"){.xref}

-   [WWW-RobotRules-6.02](perl-deps.md#perl-www-robotrules "WWW::RobotRules-6.02"){.xref}

-   [XML-LibXML-2.0213](perl-deps.md#perl-xml-libxml "XML::LibXML-2.0213"){.xref}

-   [XML-NamespaceSupport-1.12](perl-deps.md#perl-xml-namespacesupport "XML::NamespaceSupport-1.12"){.xref}

-   [XML-SAX-1.02](perl-deps.md#perl-xml-sax "XML::SAX-1.02"){.xref}

-   [XML-SAX-Base-1.09](perl-deps.md#perl-xml-sax-base "XML::SAX::Base-1.09"){.xref}
:::
:::::

::::::: {.sect2 lang="en"}
## []{#perl-algorithm-diff}Algorithm::Diff-1.201 {#algorithmdiff-1.201 .sect2}

::::: {.package lang="en"}
### Introduction to Algorithm::Diff {#introduction-to-algorithmdiff .sect3}

Algorithm::Diff computes 'intelligent' differences between two files or lists.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RJ/RJBS//Algorithm-Diff-1.201.tar.gz](https://cpan.metacpan.org/authors/id/R/RJ/RJBS//Algorithm-Diff-1.201.tar.gz){.ulink}

-   Download MD5 sum: 2eaae910f5220261ee2bbdfc4a8df2c2
:::
:::::

::: {.installation lang="en"}
### Installation of Algorithm::Diff {#installation-of-algorithmdiff .sect3}

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
## []{#perl-alien-build}Alien::Build-2.84 {#alienbuild-2.84 .sect2}

::::: {.package lang="en"}
### Introduction to Alien::Build {#introduction-to-alienbuild .sect3}

Alien::Build provides tools for building external (non-CPAN) dependencies for CPAN.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-2.84.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-2.84.tar.gz){.ulink}

-   Download MD5 sum: 531c4d1ea1274e2fafd7e61df60f9099
:::

#### Alien::Build Dependencies

##### Required

[Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref}, [File-Which-1.27](perl-modules.md#perl-file-which "File::Which-1.27"){.xref}, [FFI-CheckLib-0.31](perl-deps.md#perl-ffi-checklib "FFI::CheckLib-0.31"){.xref} and [File-chdir-0.1011](perl-deps.md#perl-file-chdir "File::chdir-0.1011"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Alien::Build {#installation-of-alienbuild .sect3}

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
## []{#perl-alien-build-plugin-download-gitlab}Alien::Build::Plugin::Download::GitLab-0.01 {#alienbuildplugindownloadgitlab-0.01 .sect2}

::::: {.package lang="en"}
### Introduction to Alien::Build::Plugin::Download::GitLab {#introduction-to-alienbuildplugindownloadgitlab .sect3}

Alien::Build::Plugin::Download::GitLab allows Alien::Build to download from GitLab (in practice, this does not download if the required library is already installed on the system).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-Plugin-Download-GitLab-0.01.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-Plugin-Download-GitLab-0.01.tar.gz){.ulink}

-   Download MD5 sum: ad1d815262ad7dd98b0a9b35ba2f05ef
:::

#### Alien::Build::Plugin::Download::GitLab Dependencies

##### Required

[Alien-Build-2.84](perl-deps.md#perl-alien-build "Alien::Build-2.84"){.xref} and [URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Alien::Build::Plugin::Download::GitLab {#installation-of-alienbuildplugindownloadgitlab .sect3}

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
## []{#perl-alien-libxml2}Alien::Libxml2-0.20 {#alienlibxml2-0.20 .sect2}

::::: {.package lang="en"}
### Introduction to Alien::Libxml2 {#introduction-to-alienlibxml2 .sect3}

Alien::Libxml2 is designed to allow modules to install the C libxml2 library on your system. In BLFS, it uses [**pkg-config**]{.command} to find how to link to the installed [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Libxml2-0.20.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Libxml2-0.20.tar.gz){.ulink}

-   Download MD5 sum: c19b4fdf1e4670f035a0971413a56424
:::

#### Alien::Libxml2 Dependencies

##### Required

[Alien-Build-Plugin-Download-GitLab-0.01](perl-deps.md#perl-alien-build-plugin-download-gitlab "Alien::Build::Plugin::Download::GitLab-0.01"){.xref}, [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, and [Path-Tiny-0.150](perl-deps.md#perl-path-tiny "Path::Tiny-0.150"){.xref}

##### Recommended (required for the test suite)

[Test-Simple-1.302219](perl-deps.md#perl-test-simple "Test::Simple-1.302219"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Alien::Libxml2 {#installation-of-alienlibxml2 .sect3}

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
## []{#perl-b-cow}B::COW-0.007 {#bcow-0.007 .sect2}

::::: {.package lang="en"}
### Introduction to B::COW {#introduction-to-bcow .sect3}

B::COW provides additional helpers for the B core module to check Copy On Write.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/B-COW-0.007.tar.gz](https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/B-COW-0.007.tar.gz){.ulink}

-   Download MD5 sum: 7afc46f19e6f906e2ba5769b21fca5ff
:::
:::::

::: {.installation lang="en"}
### Installation of B::COW {#installation-of-bcow .sect3}

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
## []{#perl-b-hooks-endofscope}B::Hooks::EndOfScope-0.28 {#bhooksendofscope-0.28 .sect2}

::::: {.package lang="en"}
### Introduction to B::Hooks::EndOfScope {#introduction-to-bhooksendofscope .sect3}

B::Hooks::EndOfScope allows you to execute code when Perl finishes compiling the surrounding scope.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/B-Hooks-EndOfScope-0.28.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/B-Hooks-EndOfScope-0.28.tar.gz){.ulink}

-   Download MD5 sum: d738ba65539d4acd601d47cc3e2cbb3a
:::

#### B::Hooks::EndOfScope Dependencies

##### Required

[Module-Implementation-0.09](perl-deps.md#perl-module-implementation "Module::Implementation-0.09"){.xref}, [Sub-Exporter-Progressive-0.001013](perl-deps.md#perl-sub-exporter-progressive "Sub::Exporter::Progressive-0.001013"){.xref} and [Variable-Magic-0.64](perl-deps.md#perl-variable-magic "Variable::Magic-0.64"){.xref}

##### Recommended (required for the test suite)

[Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}
:::::

::: {.installation lang="en"}
### Installation of B::Hooks::EndOfScope {#installation-of-bhooksendofscope .sect3}

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
## []{#perl-business-isbn-data}Business::ISBN::Data-20260311.001 {#businessisbndata-20260311.001 .sect2}

::::: {.package lang="en"}
### Introduction to Business-ISBN-Data {#introduction-to-business-isbn-data .sect3}

Business-ISBN-Data is a data pack for Business::ISBN.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-Data-20260311.001.tar.gz](https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-Data-20260311.001.tar.gz){.ulink}

-   Download MD5 sum: 9080a0f981ff40b59b536d4fa2d8efa0
:::
:::::

:::: {.installation lang="en"}
### Installation of Business-ISBN-Data {#installation-of-business-isbn-data .sect3}

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
## []{#perl-capture-tiny}Capture::Tiny-0.50 {#capturetiny-0.50 .sect2}

::::: {.package lang="en"}
### Introduction to Capture::Tiny {#introduction-to-capturetiny .sect3}

The Capture::Tiny module captures STDOUT and STDERR from Perl, XS (eXternal Subroutine, i.e. written in C or C++) or external programs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Capture-Tiny-0.50.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Capture-Tiny-0.50.tar.gz){.ulink}

-   Download MD5 sum: 92c96fdff1b972a663cc2b3e206ca853
:::
:::::

::: {.installation lang="en"}
### Installation of Capture::Tiny {#installation-of-capturetiny .sect3}

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
## []{#perl-class-data-inheritable}Class::Data::Inheritable-0.10 {#classdatainheritable-0.10 .sect2}

::::: {.package lang="en"}
### Introduction to Class::Data::Inheritable {#introduction-to-classdatainheritable .sect3}

Class::Data::Inheritable is for creating accessor/mutators to class data. That is, if you want to store something about your class as a whole (instead of about a single object).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RS/RSHERER/Class-Data-Inheritable-0.10.tar.gz](https://cpan.metacpan.org/authors/id/R/RS/RSHERER/Class-Data-Inheritable-0.10.tar.gz){.ulink}

-   Download MD5 sum: 6bec8f4663a83972af60bd8e71a06f64
:::
:::::

::: {.installation lang="en"}
### Installation of Class::Data::Inheritable {#installation-of-classdatainheritable .sect3}

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
## []{#perl-class-inspector}Class::Inspector-1.36 {#classinspector-1.36 .sect2}

::::: {.package lang="en"}
### Introduction to Class::Inspector {#introduction-to-classinspector .sect3}

Class::Inspector allows you to get information about a loaded class.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Class-Inspector-1.36.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Class-Inspector-1.36.tar.gz){.ulink}

-   Download MD5 sum: 084c3aeec023639d21ecbaf7d4460b21
:::
:::::

::: {.installation lang="en"}
### Installation of Class::Inspector {#installation-of-classinspector .sect3}

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
## []{#perl-class-singleton}Class::Singleton-1.6 {#classsingleton-1.6 .sect2}

::::: {.package lang="en"}
### Introduction to Class::Singleton {#introduction-to-classsingleton .sect3}

A Singleton describes an object class that can have only one instance in any system, such as a print spooler. This module implements a Singleton class from which other classes can be derived.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/S/SH/SHAY/Class-Singleton-1.6.tar.gz](https://cpan.metacpan.org/authors/id/S/SH/SHAY/Class-Singleton-1.6.tar.gz){.ulink}

-   Download MD5 sum: d9c84a7b8d1c490c38e88ed1f9faae47
:::
:::::

::: {.installation lang="en"}
### Installation of Class::Singleton {#installation-of-classsingleton .sect3}

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
## []{#perl-class-tiny}Class::Tiny-1.008 {#classtiny-1.008 .sect2}

::::: {.package lang="en"}
### Introduction to Class::Tiny {#introduction-to-classtiny .sect3}

Class::Tiny offers a minimalist class construction kit.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Class-Tiny-1.008.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Class-Tiny-1.008.tar.gz){.ulink}

-   Download MD5 sum: e3ccfae5f64d443e7e1110be964d7202
:::
:::::

::: {.installation lang="en"}
### Installation of Class::Tiny {#installation-of-classtiny .sect3}

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
## []{#perl-clone}Clone-0.47 {#clone-0.47 .sect2}

::::: {.package lang="en"}
### Introduction to Clone {#introduction-to-clone .sect3}

Clone recursively copies perl datatypes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/Clone-0.47.tar.gz](https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/Clone-0.47.tar.gz){.ulink}

-   Download MD5 sum: 62ff032a4df0c4abb74f76adf519361e
:::

#### Clone Dependencies

##### Recommended (required for the test suite)

[B-COW-0.007](perl-deps.md#perl-b-cow "B::COW-0.007"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Clone {#installation-of-clone .sect3}

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
## []{#perl-clone-pp}Clone::PP-1.08 {#clonepp-1.08 .sect2}

::::: {.package lang="en"}
### Introduction to Clone::PP {#introduction-to-clonepp .sect3}

Clone:PP recursively copies Perl datatypes, allowing for a deep copy of a given Perl data structure.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/N/NE/NEILB/Clone-PP-1.08.tar.gz](https://cpan.metacpan.org/authors/id/N/NE/NEILB/Clone-PP-1.08.tar.gz){.ulink}

-   Download MD5 sum: 62f9547aec61768af85b00bd2c3e5547
:::
:::::

::: {.installation lang="en"}
### Installation of Clone::PP {#installation-of-clonepp .sect3}

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
## []{#perl-config-autoconf}Config::AutoConf-0.320 {#configautoconf-0.320 .sect2}

::::: {.package lang="en"}
### Introduction to Config::AutoConf {#introduction-to-configautoconf .sect3}

The Config::AutoConf module implements some of the AutoConf macros (detecting a command, detecting a library, etc.) in pure perl.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/A/AM/AMBS/Config-AutoConf-0.320.tar.gz](https://cpan.metacpan.org/authors/id/A/AM/AMBS/Config-AutoConf-0.320.tar.gz){.ulink}

-   Download MD5 sum: 71664b2864232e265179ac29298e0916
:::

#### Config::AutoConf Dependencies

##### Required

[Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref} and [File-Slurper-0.014](perl-modules.md#perl-file-slurper "File::Slurper-0.014"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Config::AutoConf {#installation-of-configautoconf .sect3}

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
## []{#perl-cpan-meta-check}CPAN::Meta::Check-0.018 {#cpanmetacheck-0.018 .sect2}

::::: {.package lang="en"}
### Introduction to CPAN::Meta::Check {#introduction-to-cpanmetacheck .sect3}

CPAN::Meta::Check verifies if requirements described in a CPAN::Meta object are present.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/CPAN-Meta-Check-0.018.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/CPAN-Meta-Check-0.018.tar.gz){.ulink}

-   Download MD5 sum: d1c2190e8bc1c176b9ee9cba3ac403ad
:::
:::::

::: {.installation lang="en"}
### Installation of CPAN::Meta::Check {#installation-of-cpanmetacheck .sect3}

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
## []{#perl-datetime}DateTime-1.66 {#datetime-1.66 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime {#introduction-to-datetime .sect3}

DateTime is a date and time object for perl.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-1.66.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-1.66.tar.gz){.ulink}

-   Download MD5 sum: 525b43ebad148a24783c971aa198559c
:::

#### DateTime Dependencies

##### Required

[DateTime-Locale-1.45](perl-deps.md#perl-datetime-locale "DateTime::Locale-1.45"){.xref} and [DateTime-TimeZone-2.66](perl-deps.md#perl-datetime-timezone "DateTime::TimeZone-2.66"){.xref}

##### Recommended (required for the test suite)

[CPAN-Meta-Check-0.018](perl-deps.md#perl-cpan-meta-check "CPAN::Meta::Check-0.018"){.xref}, [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, [Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref} and [Test-Without-Module-0.23](perl-deps.md#perl-test-without-module "Test::Without::Module-0.23"){.xref}
:::::

::: {.installation lang="en"}
### Installation of DateTime {#installation-of-datetime .sect3}

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
## []{#perl-datetime-format-strptime}DateTime::Format::Strptime-1.80 {#datetimeformatstrptime-1.80 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime::Format::Strptime {#introduction-to-datetimeformatstrptime .sect3}

DateTime::Format::Strptime implements most of [strptime(3)](https://man.archlinux.org/man/strptime.3){.ulink}, i.e. it takes a string and a pattern and returns a DateTime object.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Strptime-1.80.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Strptime-1.80.tar.gz){.ulink}

-   Download MD5 sum: 574119fab01ef37082c002d237140009
:::

#### DateTime::Format::Strptime Dependencies

##### Required

[DateTime-1.66](perl-deps.md#perl-datetime "DateTime-1.66"){.xref}
:::::

::: {.installation lang="en"}
### Installation of DateTime::Format::Strptime {#installation-of-datetimeformatstrptime .sect3}

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
## []{#perl-datetime-locale}DateTime::Locale-1.45 {#datetimelocale-1.45 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime::Locale {#introduction-to-datetimelocale .sect3}

DateTime::Locale provides localization support for [DateTime-1.66](perl-deps.md#perl-datetime "DateTime-1.66"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Locale-1.45.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Locale-1.45.tar.gz){.ulink}

-   Download MD5 sum: 0ba952412b4e013dd42894625ddb3c20
:::

#### DateTime::Locale Dependencies

##### Required

[Dist-CheckConflicts-0.11](perl-deps.md#perl-dist-checkconflicts "Dist::CheckConflicts-0.11"){.xref}, [File-ShareDir-1.118](perl-deps.md#perl-file-sharedir "File::ShareDir-1.118"){.xref}, [namespace-autoclean-0.31](perl-deps.md#perl-namespace-autoclean "namespace::autoclean-0.31"){.xref} and [Params-ValidationCompiler-0.31](perl-deps.md#perl-params-validationcompiler "Params::ValidationCompiler-0.31"){.xref}

##### Recommended (required for the test suite)

[CPAN-Meta-Check-0.018](perl-deps.md#perl-cpan-meta-check "CPAN::Meta::Check-0.018"){.xref}, [IPC-System-Simple-1.30](perl-deps.md#perl-ipc-system-simple "IPC::System::Simple-1.30"){.xref} and [Test-File-ShareDir-1.001002](perl-deps.md#perl-test-file-sharedir "Test::File::ShareDir-1.001002"){.xref}
:::::

::: {.installation lang="en"}
### Installation of DateTime::Locale {#installation-of-datetimelocale .sect3}

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
## []{#perl-datetime-timezone}DateTime::TimeZone-2.66 {#datetimetimezone-2.66 .sect2}

::::: {.package lang="en"}
### Introduction to DateTime::TimeZone {#introduction-to-datetimetimezone .sect3}

This class is the base class for all time zone objects. A time zone is represented internally as a set of observances, each of which describes the offset from GMT for a given time period.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-TimeZone-2.66.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-TimeZone-2.66.tar.gz){.ulink}

-   Download MD5 sum: a945514deaba77225cc2a04f34604ae7
:::

#### DateTime::TimeZone Dependencies

##### Required

[Class-Singleton-1.6](perl-deps.md#perl-class-singleton "Class::Singleton-1.6"){.xref}, [Module-Runtime-0.018](perl-deps.md#perl-module-runtime "Module::Runtime-0.018"){.xref}, and [Params-ValidationCompiler-0.31](perl-deps.md#perl-params-validationcompiler "Params::ValidationCompiler-0.31"){.xref}

##### Recommended (required for the test suite)

Both [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref} and [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}, but only if a copy of [DateTime-1.66](perl-deps.md#perl-datetime "DateTime-1.66"){.xref} (for which this is a dependency) has already been installed.
:::::

::: {.installation lang="en"}
### Installation of DateTime::TimeZone {#installation-of-datetimetimezone .sect3}

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
## []{#perl-devel-stacktrace}Devel::StackTrace-2.05 {#develstacktrace-2.05 .sect2}

::::: {.package lang="en"}
### Introduction to Devel::StackTrace {#introduction-to-develstacktrace .sect3}

Devel::StackTrace provides an object representing a stack trace.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Devel-StackTrace-2.05.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Devel-StackTrace-2.05.tar.gz){.ulink}

-   Download MD5 sum: b8ca19bb4c76e98a04373618db9c7c3c
:::
:::::

::: {.installation lang="en"}
### Installation of Devel::StackTrace {#installation-of-develstacktrace .sect3}

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
## []{#perl-dist-checkconflicts}Dist::CheckConflicts-0.11 {#distcheckconflicts-0.11 .sect2}

::::: {.package lang="en"}
### Introduction to Dist::CheckConflicts {#introduction-to-distcheckconflicts .sect3}

Dist::CheckConflicts declares version conflicts for a distribution, to support post-install updates of dependent distributions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DO/DOY/Dist-CheckConflicts-0.11.tar.gz](https://cpan.metacpan.org/authors/id/D/DO/DOY/Dist-CheckConflicts-0.11.tar.gz){.ulink}

-   Download MD5 sum: c8725a92b9169708b0f63036812070f2
:::

#### Dist::CheckConflicts Dependencies

##### Required

[Module-Runtime-0.018](perl-deps.md#perl-module-runtime "Module::Runtime-0.018"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Dist::CheckConflicts {#installation-of-distcheckconflicts .sect3}

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
## []{#perl-encode-locale}Encode::Locale-1.05 {#encodelocale-1.05 .sect2}

::::: {.package lang="en"}
### Introduction to Encode::Locale {#introduction-to-encodelocale .sect3}

Encode::Locale determines the locale encoding.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/G/GA/GAAS/Encode-Locale-1.05.tar.gz](https://cpan.metacpan.org/authors/id/G/GA/GAAS/Encode-Locale-1.05.tar.gz){.ulink}

-   Download MD5 sum: fcfdb8e4ee34bcf62aed429b4a23db27
:::
:::::

::: {.installation lang="en"}
### Installation of Encode::Locale {#installation-of-encodelocale .sect3}

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
## []{#perl-eval-closure}Eval::Closure-0.14 {#evalclosure-0.14 .sect2}

::::: {.package lang="en"}
### Introduction to Eval::Closure {#introduction-to-evalclosure .sect3}

Eval::Closure safely and cleanly creates closures via string eval.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DO/DOY/Eval-Closure-0.14.tar.gz](https://cpan.metacpan.org/authors/id/D/DO/DOY/Eval-Closure-0.14.tar.gz){.ulink}

-   Download MD5 sum: ceeb1fc579ac9af981fa6b600538c285
:::

#### Eval::Closure Dependencies

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref} and [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Eval::Closure {#installation-of-evalclosure .sect3}

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
## []{#perl-exception-class}Exception::Class-1.45 {#exceptionclass-1.45 .sect2}

::::: {.package lang="en"}
### Introduction to Exception::Class {#introduction-to-exceptionclass .sect3}

Exception::Class allows you to declare real exception classes in [Perl]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Exception-Class-1.45.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Exception-Class-1.45.tar.gz){.ulink}

-   Download MD5 sum: 1e564d20b374a99fdf660ba3f36b0098
:::

#### Exception::Class Dependencies

##### Required

[Class-Data-Inheritable-0.10](perl-deps.md#perl-class-data-inheritable "Class::Data::Inheritable-0.10"){.xref} and [Devel-StackTrace-2.05](perl-deps.md#perl-devel-stacktrace "Devel::StackTrace-2.05"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Exception::Class {#installation-of-exceptionclass .sect3}

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
## []{#perl-exporter-tiny}Exporter::Tiny-1.006003 {#exportertiny-1.006003 .sect2}

::::: {.package lang="en"}
### Introduction to Exporter::Tiny {#introduction-to-exportertiny .sect3}

Exporter::Tiny is an exporter with the features of Sub::Exporter but only core dependencies.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/T/TO/TOBYINK/Exporter-Tiny-1.006003.tar.gz](https://cpan.metacpan.org/authors/id/T/TO/TOBYINK/Exporter-Tiny-1.006003.tar.gz){.ulink}

-   Download MD5 sum: a70bdc039b12f90191e7c5669b2b55f9
:::
:::::

::: {.installation lang="en"}
### Installation of Exporter::Tiny {#installation-of-exportertiny .sect3}

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
## []{#perl-extutils-config}ExtUtils::Config-0.010 {#extutilsconfig-0.010 .sect2}

::::: {.package lang="en"}
### Introduction to ExtUtils::Config {#introduction-to-extutilsconfig .sect3}

ExtUtils::Config is a wrapper for Perl's configuration system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Config-0.010.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Config-0.010.tar.gz){.ulink}

-   Download MD5 sum: f455b5743db7b73c80e88133effa3551
:::
:::::

::: {.installation lang="en"}
### Installation of ExtUtils::Config {#installation-of-extutilsconfig .sect3}

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
## []{#perl-extutils-helpers}ExtUtils::Helpers-0.028 {#extutilshelpers-0.028 .sect2}

::::: {.package lang="en"}
### Introduction to ExtUtils::Helpers {#introduction-to-extutilshelpers .sect3}

ExtUtils::Helpers contains various portability utilities for module builders.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Helpers-0.028.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Helpers-0.028.tar.gz){.ulink}

-   Download MD5 sum: 0687f20ac896a7d01219646908ccdf89
:::
:::::

::: {.installation lang="en"}
### Installation of ExtUtils::Helpers {#installation-of-extutilshelpers .sect3}

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
## []{#perl-extutils-installpaths}ExtUtils::InstallPaths-0.015 {#extutilsinstallpaths-0.015 .sect2}

::::: {.package lang="en"}
### Introduction to ExtUtils::InstallPaths {#introduction-to-extutilsinstallpaths .sect3}

ExtUtils::InstallPaths is a tool to resolve perl installation paths.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-InstallPaths-0.015.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-InstallPaths-0.015.tar.gz){.ulink}

-   Download MD5 sum: 70f17a346e92560b5f5692119edbb161
:::
:::::

::: {.installation lang="en"}
### Installation of ExtUtils::InstallPaths {#installation-of-extutilsinstallpaths .sect3}

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
## []{#perl-extutils-libbuilder}ExtUtils::LibBuilder-0.09 {#extutilslibbuilder-0.09 .sect2}

::::: {.package lang="en"}
### Introduction to ExtUtils::LibBuilder {#introduction-to-extutilslibbuilder .sect3}

ExtUtils::LibBuilder is a tool to build C libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/A/AM/AMBS/ExtUtils-LibBuilder-0.09.tar.gz](https://cpan.metacpan.org/authors/id/A/AM/AMBS/ExtUtils-LibBuilder-0.09.tar.gz){.ulink}

-   Download MD5 sum: 16115f941df504f65b0f94b7f29e8fbc
:::

#### ExtUtils::LibBuilder Dependencies

##### Required

[Module-Build-0.4234](perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref}
:::::

::: {.installation lang="en"}
### Installation of ExtUtils::LibBuilder {#installation-of-extutilslibbuilder .sect3}

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

::::::: {.sect2 lang="en"}
## []{#perl-ffi-checklib}FFI::CheckLib-0.31 {#ffichecklib-0.31 .sect2}

::::: {.package lang="en"}
### Introduction to FFI::CheckLib {#introduction-to-ffichecklib .sect3}

FFI::CheckLib checks whether a particular dynamic library is available for FFI (Foreign Function Interface) to use.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/FFI-CheckLib-0.31.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/FFI-CheckLib-0.31.tar.gz){.ulink}

-   Download MD5 sum: ffc8e61bb686dd631bed3ddf102af41c
:::

#### FFI::CheckLib Dependencies

##### Recommended (required for the test suite)

[Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref}, [File-Which-1.27](perl-modules.md#perl-file-which "File::Which-1.27"){.xref}, [Path-Tiny-0.150](perl-deps.md#perl-path-tiny "Path::Tiny-0.150"){.xref}, and [Test-Simple-1.302219](perl-deps.md#perl-test-simple "Test::Simple-1.302219"){.xref}
:::::

::: {.installation lang="en"}
### Installation of FFI::CheckLib {#installation-of-ffichecklib .sect3}

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
## []{#perl-file-chdir}File::chdir-0.1011 {#filechdir-0.1011 .sect2}

::::: {.package lang="en"}
### Introduction to File::chdir {#introduction-to-filechdir .sect3}

File::chdir provides a more sensible way to change directories.

Perl's chdir() has the unfortunate problem of being very, very, very global. If any part of your program calls chdir() or if any library you use calls chdir(), it changes the current working directory for the \*whole\* program. File::chdir gives you an alternative, \$CWD and \@CWD.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/File-chdir-0.1011.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/File-chdir-0.1011.tar.gz){.ulink}

-   Download MD5 sum: 932090f6c5f602301ae66c259de23ebb
:::
:::::

::: {.installation lang="en"}
### Installation of File::chdir {#installation-of-filechdir .sect3}

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
## []{#perl-file-copy-recursive}File::Copy::Recursive-0.45 {#filecopyrecursive-0.45 .sect2}

::::: {.package lang="en"}
### Introduction to File::Copy::Recursive {#introduction-to-filecopyrecursive .sect3}

This module copies and moves directories recursively (or single files), to an optional depth and attempts to preserve each file or directory's mode.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DM/DMUEY/File-Copy-Recursive-0.45.tar.gz](https://cpan.metacpan.org/authors/id/D/DM/DMUEY/File-Copy-Recursive-0.45.tar.gz){.ulink}

-   Download MD5 sum: e5eee1a3f8ae3aebbac063ea54870e54
:::

#### File::Copy::Recursive Dependencies

##### Recommended (required for the test suite)

[Path-Tiny-0.150](perl-deps.md#perl-path-tiny "Path::Tiny-0.150"){.xref}, [Test-Deep-1.205](perl-deps.md#perl-test-deep "Test::Deep-1.205"){.xref}, [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, [Test-File-1.995](perl-deps.md#perl-test-file "Test::File-1.995"){.xref}, and [Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref}
:::::

::: {.installation lang="en"}
### Installation of File::Copy::Recursive {#installation-of-filecopyrecursive .sect3}

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
## []{#perl-file-find-rule}File::Find::Rule-0.35 {#filefindrule-0.35 .sect2}

::::: {.package lang="en"}
### Introduction to File::Find::Rule {#introduction-to-filefindrule .sect3}

File::Find::Rule is a friendlier interface to File::Find. It allows you to build rules which specify the desired files and directories.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/File-Find-Rule-0.35.tar.gz](https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/File-Find-Rule-0.35.tar.gz){.ulink}

-   Download MD5 sum: a4820609e21b6b85dba26d9e94523d0a
:::

#### File::Find::Rule Dependencies

##### Required

[Number-Compare-0.03](perl-deps.md#perl-number-compare "Number::Compare-0.03"){.xref} and [Text-Glob-0.11](perl-deps.md#perl-text-glob "Text::Glob-0.11"){.xref}
:::::

::: {.installation lang="en"}
### Installation of File::Find::Rule {#installation-of-filefindrule .sect3}

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
**Installed Programs:** [findrule]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -----------------------------------------------
  []{#findrule-prog}[[**findrule**]{.command}]{.term}   is a command line wrapper to File::Find::Rule
  ----------------------------------------------------- -----------------------------------------------
:::
:::::::
::::::::::::

::::::: {.sect2 lang="en"}
## []{#perl-file-listing}File::Listing-6.16 {#filelisting-6.16 .sect2}

::::: {.package lang="en"}
### Introduction to File::Listing {#introduction-to-filelisting .sect3}

File::Listing parses a directory listing.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/File-Listing-6.16.tar.gz](https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/File-Listing-6.16.tar.gz){.ulink}

-   Download MD5 sum: d4fc8b0c86633d1fa5bf75323720eadc
:::

#### File::Listing Dependencies

##### Required

[HTTP-Date-6.06](perl-deps.md#perl-http-date "HTTP::Date-6.06"){.xref}
:::::

::: {.installation lang="en"}
### Installation of File::Listing {#installation-of-filelisting .sect3}

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
## []{#perl-file-sharedir}File::ShareDir-1.118 {#filesharedir-1.118 .sect2}

::::: {.package lang="en"}
### Introduction to File::ShareDir {#introduction-to-filesharedir .sect3}

File::ShareDir allows you to access data files which have been installed by File::ShareDir::Install.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RE/REHSACK/File-ShareDir-1.118.tar.gz](https://cpan.metacpan.org/authors/id/R/RE/REHSACK/File-ShareDir-1.118.tar.gz){.ulink}

-   Download MD5 sum: 0084f730f4e3d4d89703d92b3ea82f54
:::

#### File::ShareDir Dependencies

##### Required

[Class-Inspector-1.36](perl-deps.md#perl-class-inspector "Class::Inspector-1.36"){.xref} and [File-ShareDir-Install-0.14](perl-deps.md#perl-file-sharedir-install "File::ShareDir::Install-0.14"){.xref}
:::::

::: {.installation lang="en"}
### Installation of File::ShareDir {#installation-of-filesharedir .sect3}

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
## []{#perl-file-sharedir-install}File::ShareDir::Install-0.14 {#filesharedirinstall-0.14 .sect2}

::::: {.package lang="en"}
### Introduction to File::ShareDir::Install {#introduction-to-filesharedirinstall .sect3}

File::ShareDir::Install allows you to install read-only data files from a distribution.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/File-ShareDir-Install-0.14.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/File-ShareDir-Install-0.14.tar.gz){.ulink}

-   Download MD5 sum: bac4d924f3d863b00648ab56ec0dcbdc
:::
:::::

::: {.installation lang="en"}
### Installation of File::ShareDir::Install {#installation-of-filesharedirinstall .sect3}

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
## []{#perl-html-tagset}HTML::Tagset-3.24 {#htmltagset-3.24 .sect2}

::::: {.package lang="en"}
### Introduction to HTML::Tagset {#introduction-to-htmltagset .sect3}

HTML::Tagset provides several data tables useful in parsing HTML.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PE/PETDANCE/HTML-Tagset-3.24.tar.gz](https://cpan.metacpan.org/authors/id/P/PE/PETDANCE/HTML-Tagset-3.24.tar.gz){.ulink}

-   Download MD5 sum: f8db8974f5e7fe7df2a58263a7b00552
:::
:::::

::: {.installation lang="en"}
### Installation of HTML::Tagset {#installation-of-htmltagset .sect3}

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
## []{#perl-http-cookiejar}HTTP::CookieJar-0.014 {#httpcookiejar-0.014 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::CookieJar {#introduction-to-httpcookiejar .sect3}

HTTP::CookieJar provides a minimalist HTTP user agent cookie jar.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/HTTP-CookieJar-0.014.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/HTTP-CookieJar-0.014.tar.gz){.ulink}

-   Download MD5 sum: a1d891ce0046f1a2c19e2c617d624d0d
:::

#### HTTP::CookieJar Dependencies

##### Required

[HTTP-Date-6.06](perl-deps.md#perl-http-date "HTTP::Date-6.06"){.xref}

##### Recommended (required for the test suite)

[Test-Deep-1.205](perl-deps.md#perl-test-deep "Test::Deep-1.205"){.xref}, [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}, and [URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref}
:::::

::: {.installation lang="en"}
### Installation of HTTP::CookieJar {#installation-of-httpcookiejar .sect3}

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
## []{#perl-http-cookies}HTTP::Cookies-6.11 {#httpcookies-6.11 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::Cookies {#introduction-to-httpcookies .sect3}

HTTP::Cookies provides a class for objects that represent a "cookie jar" -- that is, a database of all the HTTP cookies that a given LWP::UserAgent (from [libwww-perl-6.83](perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref}) object knows about.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Cookies-6.11.tar.gz](https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Cookies-6.11.tar.gz){.ulink}

-   Download MD5 sum: 80017e7e56bdc8ba16dea75789748829
:::

#### HTTP::Cookies Dependencies

##### Required

[HTTP-Message-7.01](perl-deps.md#perl-http-message "HTTP::Message-7.01"){.xref}
:::::

::: {.installation lang="en"}
### Installation of HTTP::Cookies {#installation-of-httpcookies .sect3}

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
## []{#perl-http-date}HTTP::Date-6.06 {#httpdate-6.06 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::Date {#introduction-to-httpdate .sect3}

HTTP::Date provides functions to deal with the date formats used by the HTTP protocol and also with some other date formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Date-6.06.tar.gz](https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Date-6.06.tar.gz){.ulink}

-   Download MD5 sum: 60462359bfeb1e6d14602508cfd07885
:::

#### HTTP::Date Dependencies

##### Recommended

[TimeDate-2.33](perl-deps.md#perl-timedate "TimeDate-2.33"){.xref} (to allow it to recognize zones other than GMT and numeric)
:::::

::: {.installation lang="en"}
### Installation of HTTP::Date {#installation-of-httpdate .sect3}

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
## []{#perl-http-message}HTTP::Message-7.01 {#httpmessage-7.01 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::Message {#introduction-to-httpmessage .sect3}

HTTP::Message provides a base class for HTTP style message objects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Message-7.01.tar.gz](https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Message-7.01.tar.gz){.ulink}

-   Download MD5 sum: fc958d64205edb2c76e1673424523932
:::

#### HTTP::Message Dependencies

##### Required

[Clone-0.47](perl-deps.md#perl-clone "Clone-0.47"){.xref}, [Encode-Locale-1.05](perl-deps.md#perl-encode-locale "Encode::Locale-1.05"){.xref}, [HTTP-Date-6.06](perl-deps.md#perl-http-date "HTTP::Date-6.06"){.xref}, [IO-HTML-1.004](perl-deps.md#perl-io-html "IO::HTML-1.004"){.xref}, [LWP-MediaTypes-6.04](perl-deps.md#perl-lwp-mediatypes "LWP::MediaTypes-6.04"){.xref}, and [URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref}

##### Recommended (required for the test suite)

[Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref} and [Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}
:::::

::: {.installation lang="en"}
### Installation of HTTP::Message {#installation-of-httpmessage .sect3}

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
## []{#perl-http-negotiate}HTTP::Negotiate-6.01 {#httpnegotiate-6.01 .sect2}

::::: {.package lang="en"}
### Introduction to HTTP::Negotiate {#introduction-to-httpnegotiate .sect3}

HTTP::Negotiate provides a complete implementation of the HTTP content negotiation algorithm.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTTP-Negotiate-6.01.tar.gz](https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTTP-Negotiate-6.01.tar.gz){.ulink}

-   Download MD5 sum: 1236195250e264d7436e7bb02031671b
:::

#### HTTP::Negotiate Dependencies

##### Recommended (required for the test suite)

[HTTP-Message-7.01](perl-deps.md#perl-http-message "HTTP::Message-7.01"){.xref}
:::::

::: {.installation lang="en"}
### Installation of HTTP::Negotiate {#installation-of-httpnegotiate .sect3}

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
## []{#perl-io-html}IO::HTML-1.004 {#iohtml-1.004 .sect2}

::::: {.package lang="en"}
### Introduction to IO::HTML {#introduction-to-iohtml .sect3}

IO::HTML opens an HTML file with automatic character set detection.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/C/CJ/CJM/IO-HTML-1.004.tar.gz](https://cpan.metacpan.org/authors/id/C/CJ/CJM/IO-HTML-1.004.tar.gz){.ulink}

-   Download MD5 sum: 04bbe363686fd19bfb4cc0ed775e3d03
:::
:::::

::: {.installation lang="en"}
### Installation of IO::HTML {#installation-of-iohtml .sect3}

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
## []{#perl-ipc-system-simple}IPC::System::Simple-1.30 {#ipcsystemsimple-1.30 .sect2}

::::: {.package lang="en"}
### Introduction to IPC::System::Simple {#introduction-to-ipcsystemsimple .sect3}

IPC::System::Simple takes the hard work out of calling external commands and producing detailed diagnostics.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/J/JK/JKEENAN/IPC-System-Simple-1.30.tar.gz](https://cpan.metacpan.org/authors/id/J/JK/JKEENAN/IPC-System-Simple-1.30.tar.gz){.ulink}

-   Download MD5 sum: e68341fd958fd013b3521d909904f675
:::
:::::

::: {.installation lang="en"}
### Installation of IPC::System::Simple {#installation-of-ipcsystemsimple .sect3}

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
## []{#perl-list-moreutils-xs}List::MoreUtils::XS-0.430 {#listmoreutilsxs-0.430 .sect2}

::::: {.package lang="en"}
### Introduction to List::MoreUtils::XS {#introduction-to-listmoreutilsxs .sect3}

List::MoreUtils::XS is a compiled backend for List::MoreUtils

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-XS-0.430.tar.gz](https://cpan.metacpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-XS-0.430.tar.gz){.ulink}

-   Download MD5 sum: e77113e55b046906aecfb4ddb4f0c662
:::
:::::

::: {.installation lang="en"}
### Installation of List::MoreUtils::XS {#installation-of-listmoreutilsxs .sect3}

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
## []{#perl-list-someutils}List::SomeUtils-0.59 {#listsomeutils-0.59 .sect2}

::::: {.package lang="en"}
### Introduction to List::SomeUtils {#introduction-to-listsomeutils .sect3}

List::SomeUtils provides the stuff missing in List::Util.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-0.59.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-0.59.tar.gz){.ulink}

-   Download MD5 sum: 333b4adb2907deff2be8da5899881453
:::

#### List::SomeUtils Dependencies

##### Required

[Module-Implementation-0.09](perl-deps.md#perl-module-implementation "Module::Implementation-0.09"){.xref} and [List-SomeUtils-XS-0.58](perl-deps.md#perl-list-someutils-xs "List::SomeUtils::XS-0.58"){.xref}
:::::

::: {.installation lang="en"}
### Installation of List::SomeUtils {#installation-of-listsomeutils .sect3}

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
## []{#perl-list-someutils-xs}List::SomeUtils::XS-0.58 {#listsomeutilsxs-0.58 .sect2}

::::: {.package lang="en"}
### Introduction to List::SomeUtils::XS {#introduction-to-listsomeutilsxs .sect3}

List::SomeUtils::XS is a (faster) XS (eXternal Subroutine) implementation for List::SomeUtils.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-XS-0.58.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-XS-0.58.tar.gz){.ulink}

-   Download MD5 sum: 396eabe83a75fcb8d7542d95812469d1
:::

#### List::SomeUtils::XS Dependencies

##### Recommended (required for the test suite)

[Test-LeakTrace-0.17](perl-deps.md#perl-test-leaktrace "Test::LeakTrace-0.17"){.xref} and [Test-Warnings-0.038](perl-deps.md#perl-test-warnings "Test::Warnings-0.038"){.xref}
:::::

::: {.installation lang="en"}
### Installation of List::SomeUtils::XS {#installation-of-listsomeutilsxs .sect3}

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
## []{#perl-list-utilsby}List::UtilsBy-0.12 {#listutilsby-0.12 .sect2}

::::: {.package lang="en"}
### Introduction to List::UtilsBy {#introduction-to-listutilsby .sect3}

List::UtilsBy provides a number of higher-order list utility functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PE/PEVANS/List-UtilsBy-0.12.tar.gz](https://cpan.metacpan.org/authors/id/P/PE/PEVANS/List-UtilsBy-0.12.tar.gz){.ulink}

-   Download MD5 sum: 54a8c7092bc02f29ea6c5ae215eea385
:::
:::::

::: {.installation lang="en"}
### Installation of List::UtilsBy {#installation-of-listutilsby .sect3}

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
## []{#perl-lwp-mediatypes}LWP::MediaTypes-6.04 {#lwpmediatypes-6.04 .sect2}

::::: {.package lang="en"}
### Introduction to LWP::MediaTypes {#introduction-to-lwpmediatypes .sect3}

LWP::MediaTypes guesses the media type (i.e. the MIME Type) for a file or URL.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/O/OA/OALDERS/LWP-MediaTypes-6.04.tar.gz](https://cpan.metacpan.org/authors/id/O/OA/OALDERS/LWP-MediaTypes-6.04.tar.gz){.ulink}

-   Download MD5 sum: 84b799a90c0d2ce52897a7cb4c0478d0
:::

#### LWP::MediaTypes Dependencies

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}
:::::

::: {.installation lang="en"}
### Installation of LWP::MediaTypes {#installation-of-lwpmediatypes .sect3}

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
## []{#perl-mime-base32}MIME::Base32-1.303 {#mimebase32-1.303 .sect2}

::::: {.package lang="en"}
### Introduction to MIME::Base32 {#introduction-to-mimebase32 .sect3}

MIME::Base32 is for Encoding/Decoding data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RE/REHSACK/MIME-Base32-1.303.tar.gz](https://cpan.metacpan.org/authors/id/R/RE/REHSACK/MIME-Base32-1.303.tar.gz){.ulink}

-   Download MD5 sum: 0c7735fa09e74c7f2ec93d1890b8c6c0
:::
:::::

::: {.installation lang="en"}
### Installation of MIME::Base32 {#installation-of-mimebase32 .sect3}

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
## []{#perl-mime-charset}MIME::Charset-1.013.1 {#mimecharset-1.013.1 .sect2}

::::: {.package lang="en"}
### Introduction to MIME::Charset {#introduction-to-mimecharset .sect3}

MIME::Charset provides information about character sets used for MIME messages on the internet, such as their encodings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/N/NE/NEZUMI/MIME-Charset-1.013.1.tar.gz](https://cpan.metacpan.org/authors/id/N/NE/NEZUMI/MIME-Charset-1.013.1.tar.gz){.ulink}

-   Download MD5 sum: b1932cfc806c8deb1b4a20d6afbfa8ac
:::

#### MIME::Charset Dependencies

##### Recommended

[Encode-EUCJPASCII-0.03](perl-modules.md#perl-encode-eucjpascii "Encode::EUCJPASCII-0.03"){.xref}, [Encode-HanExtra-0.23](perl-modules.md#perl-encode-hanextra "Encode::HanExtra-0.23"){.xref} and [Encode-JIS2K-0.05](perl-modules.md#perl-encode-jis2k "Encode::JIS2K-0.05"){.xref} (because all are required by [biber-2.21](../pst/biber.md "biber-2.21"){.xref})
:::::

::: {.installation lang="en"}
### Installation of MIME::Charset {#installation-of-mimecharset .sect3}

This module uses a variant of the standard build and installation instructions:

``` userinput
yes '' | perl Makefile.PL &&
make             &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations .sect3}

[**yes \|**]{.command}: Perl will ask if you wish to install a further module for handling legacy Japanese encodings, and another which it would use for translating documentation to Japanese. The default option is 'n', using 'yes' allows you to script the build.
:::
::::::::

::::::: {.sect2 lang="en"}
## []{#perl-module-build-tiny}Module::Build::Tiny-0.053 {#modulebuildtiny-0.053 .sect2}

::::: {.package lang="en"}
### Introduction to Module::Build::Tiny {#introduction-to-modulebuildtiny .sect3}

Module::Build::Tiny is a simplified version of [Module-Build-0.4234](perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-Tiny-0.053.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-Tiny-0.053.tar.gz){.ulink}

-   Download MD5 sum: 606d1f830f0475b6de53b82aa3e5d36a
:::

#### Module::Build::Tiny Dependencies

##### Required

[ExtUtils-Config-0.010](perl-deps.md#perl-extutils-config "ExtUtils::Config-0.010"){.xref}, [ExtUtils-Helpers-0.028](perl-deps.md#perl-extutils-helpers "ExtUtils::Helpers-0.028"){.xref}, and [ExtUtils-InstallPaths-0.015](perl-deps.md#perl-extutils-installpaths "ExtUtils::InstallPaths-0.015"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Module::Build::Tiny {#installation-of-modulebuildtiny .sect3}

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

::::::: {.sect2 lang="en"}
## []{#perl-module-implementation}Module::Implementation-0.09 {#moduleimplementation-0.09 .sect2}

::::: {.package lang="en"}
### Introduction to Module::Implementation {#introduction-to-moduleimplementation .sect3}

Module::Implementation loads one of several alternate underlying implementations of a module (e.g. eXternal Subroutine or pure Perl, or an implementation for a given OS).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Module-Implementation-0.09.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Module-Implementation-0.09.tar.gz){.ulink}

-   Download MD5 sum: 52e3fe0ca6b1eff0488d59b7aacc0667
:::

#### Module::Implementation Dependencies

##### Required

[Module-Runtime-0.018](perl-deps.md#perl-module-runtime "Module::Runtime-0.018"){.xref} and [Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref} and [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Module::Implementation {#installation-of-moduleimplementation .sect3}

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
## []{#perl-module-pluggable}Module::Pluggable-6.3 {#modulepluggable-6.3 .sect2}

::::: {.package lang="en"}
### Introduction to Module::Pluggable {#introduction-to-modulepluggable .sect3}

Module::Pluggable provides a way of having 'plugins' for your module.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/S/SI/SIMONW/Module-Pluggable-6.3.tar.gz](https://cpan.metacpan.org/authors/id/S/SI/SIMONW/Module-Pluggable-6.3.tar.gz){.ulink}

-   Download MD5 sum: 442bb8838a2b7053aa276a41233b0607
:::
:::::

::: {.installation lang="en"}
### Installation of Module::Pluggable {#installation-of-modulepluggable .sect3}

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
## []{#perl-module-runtime}Module::Runtime-0.018 {#moduleruntime-0.018 .sect2}

::::: {.package lang="en"}
### Introduction to Module::Runtime {#introduction-to-moduleruntime .sect3}

Module::Runtime provides functions to deal with runtime handling of [Perl]{.application} modules.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HA/HAARG/Module-Runtime-0.018.tar.gz](https://cpan.metacpan.org/authors/id/H/HA/HAARG/Module-Runtime-0.018.tar.gz){.ulink}

-   Download MD5 sum: 455eedb62183b9d9e437c59c375c1054
:::
:::::

::: {.installation lang="en"}
### Installation of Module::Runtime {#installation-of-moduleruntime .sect3}

Although Module::Build is still listed as a prerequisite, it is no-longer necessary on systems with a working [**make**]{.command}.

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
## []{#perl-mro-compat}MRO::Compat-0.15 {#mrocompat-0.15 .sect2}

::::: {.package lang="en"}
### Introduction to MRO::Compat {#introduction-to-mrocompat .sect3}

The "mro" namespace provides several utilities for dealing with method resolution order and method caching in general in Perl 5.9.5 and higher. This module provides those interfaces for earlier versions of Perl.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HA/HAARG/MRO-Compat-0.15.tar.gz](https://cpan.metacpan.org/authors/id/H/HA/HAARG/MRO-Compat-0.15.tar.gz){.ulink}

-   Download MD5 sum: f644dafe901214cedfa7ed8b43b56df1
:::
:::::

::: {.installation lang="en"}
### Installation of MRO::Compat {#installation-of-mrocompat .sect3}

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
## []{#perl-namespace-autoclean}namespace::autoclean-0.31 {#namespaceautoclean-0.31 .sect2}

::::: {.package lang="en"}
### Introduction to namespace::autoclean {#introduction-to-namespaceautoclean .sect3}

This module is very similar to namespace::clean, except it will clean all imported functions, no matter if you imported them before or after you used the pragma. It will also not touch anything that looks like a method.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/namespace-autoclean-0.31.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/namespace-autoclean-0.31.tar.gz){.ulink}

-   Download MD5 sum: abd25263af155ab70bf7a039247400d3
:::

#### namespace::autoclean Dependencies

##### Required

[namespace-clean-0.27](perl-deps.md#perl-namespace-clean "namespace::clean-0.27"){.xref}

##### Recommended (required for the test suite)

[Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref}
:::::

::: {.installation lang="en"}
### Installation of namespace::autoclean {#installation-of-namespaceautoclean .sect3}

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
## []{#perl-namespace-clean}namespace::clean-0.27 {#namespaceclean-0.27 .sect2}

::::: {.package lang="en"}
### Introduction to namespace::clean {#introduction-to-namespaceclean .sect3}

This package allows you to keep imports and functions out of your namespace.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RI/RIBASUSHI/namespace-clean-0.27.tar.gz](https://cpan.metacpan.org/authors/id/R/RI/RIBASUSHI/namespace-clean-0.27.tar.gz){.ulink}

-   Download MD5 sum: cba97f39ef7e594bd8489b4fdcddb662
:::

#### namespace::clean Dependencies

##### Required

[B-Hooks-EndOfScope-0.28](perl-deps.md#perl-b-hooks-endofscope "B::Hooks::EndOfScope-0.28"){.xref} and [Package-Stash-0.40](perl-deps.md#perl-package-stash "Package::Stash-0.40"){.xref}
:::::

::: {.installation lang="en"}
### Installation of namespace::clean {#installation-of-namespaceclean .sect3}

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
## []{#perl-net-http}Net::HTTP-6.24 {#nethttp-6.24 .sect2}

::::: {.package lang="en"}
### Introduction to Net::HTTP {#introduction-to-nethttp .sect3}

The Net::HTTP class is a low level HTTP client. An instance of the class represents a connection to an HTTP server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/O/OA/OALDERS/Net-HTTP-6.24.tar.gz](https://cpan.metacpan.org/authors/id/O/OA/OALDERS/Net-HTTP-6.24.tar.gz){.ulink}

-   Download MD5 sum: 3728289552dc5031700596e0cf4092b4
:::

#### Net::HTTP Dependencies

##### Required

[URI-5.34](perl-modules.md#perl-uri "URI-5.34"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Net::HTTP {#installation-of-nethttp .sect3}

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

::::::::: {.sect2 lang="en"}
## []{#perl-net-ssleay}Net::SSLeay-1.96 {#netssleay-1.96 .sect2}

:::::: {.package lang="en"}
### Introduction to Net::SSLeay {#introduction-to-netssleay .sect3}

Net::SSLeay is a Perl extension for using OpenSSL.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz](https://cpan.metacpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz){.ulink}

-   Download MD5 sum: 63772ad94b874b5f0f025c2a4285f82f
:::

#### Additional Download

::: itemizedlist
-   Required patch (for openssl-4): [https://www.linuxfromscratch.org/patches/blfs/svn/Net-SSLeay-1.96-openssl4_fixes-2.patch](https://www.linuxfromscratch.org/patches/blfs/svn/Net-SSLeay-1.96-openssl4_fixes-2.patch){.ulink}
:::
::::::

::: {.installation lang="en"}
### Installation of Net::SSLeay {#installation-of-netssleay .sect3}

First, apply a patch to support OpenSSL-4:

``` userinput
patch -Np1 -i ../Net-SSLeay-1.96-openssl4_fixes-2.patch
```

This module uses a variant of the standard build and installation instructions:

``` userinput
yes '' | perl Makefile.PL &&
make                      &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-1 .sect3}

[**yes ''**]{.command}: Perl will ask if you wish to run external tests, which will fail if you do not have network connectivity. The default is 'n', specifying this allows you to script the build.
:::
:::::::::

::::::: {.sect2 lang="en"}
## []{#perl-number-compare}Number::Compare-0.03 {#numbercompare-0.03 .sect2}

::::: {.package lang="en"}
### Introduction to Number::Compare {#introduction-to-numbercompare .sect3}

Number::Compare compiles a simple comparison to an anonymous subroutine, which you can call with a value to be tested against. It understands IEC standard magnitudes (k, ki, m, mi, g, gi).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Number-Compare-0.03.tar.gz](https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Number-Compare-0.03.tar.gz){.ulink}

-   Download MD5 sum: ded4085a8fc96328742785574ca65208
:::
:::::

::: {.installation lang="en"}
### Installation of Number::Compare {#installation-of-numbercompare .sect3}

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
## []{#perl-package-stash}Package::Stash-0.40 {#packagestash-0.40 .sect2}

::::: {.package lang="en"}
### Introduction to Package::Stash {#introduction-to-packagestash .sect3}

Manipulating stashes (Perl's symbol tables) is occasionally necessary, but incredibly messy, and easy to get wrong. This module hides all of that behind a simple API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/Package-Stash-0.40.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/Package-Stash-0.40.tar.gz){.ulink}

-   Download MD5 sum: 7a2922941cc2aad6a52642e4fb13d07b
:::

#### Package::Stash Dependencies

##### Required

[Dist-CheckConflicts-0.11](perl-deps.md#perl-dist-checkconflicts "Dist::CheckConflicts-0.11"){.xref} and [Module-Implementation-0.09](perl-deps.md#perl-module-implementation "Module::Implementation-0.09"){.xref}

##### Recommended (required for the test suite)

[CPAN-Meta-Check-0.018](perl-deps.md#perl-cpan-meta-check "CPAN::Meta::Check-0.018"){.xref}, [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, and [Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Package::Stash {#installation-of-packagestash .sect3}

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
## []{#perl-params-validate}Params::Validate-1.31 {#paramsvalidate-1.31 .sect2}

::::: {.package lang="en"}
### Introduction to Params::Validate {#introduction-to-paramsvalidate .sect3}

Params::Validate allows you to validate method or function call parameters to an arbitrary level of specificity.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-Validate-1.31.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-Validate-1.31.tar.gz){.ulink}

-   Download MD5 sum: ef5f57387c2c9032b59fb23023cf5b25
:::

#### Params::Validate Dependencies

##### Required

[Module-Build-0.4234](perl-modules.md#perl-module-build "Module::Build-0.4234"){.xref} and [Module-Implementation-0.09](perl-deps.md#perl-module-implementation "Module::Implementation-0.09"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref} and [Test-Requires-0.11](perl-deps.md#perl-test-requires "Test::Requires-0.11"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Params::Validate {#installation-of-paramsvalidate .sect3}

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

::::::: {.sect2 lang="en"}
## []{#perl-params-validationcompiler}Params::ValidationCompiler-0.31 {#paramsvalidationcompiler-0.31 .sect2}

::::: {.package lang="en"}
### Introduction to Params::ValidationCompiler {#introduction-to-paramsvalidationcompiler .sect3}

Params::ValidationCompiler builds an optimized subroutine parameter validator.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-ValidationCompiler-0.31.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-ValidationCompiler-0.31.tar.gz){.ulink}

-   Download MD5 sum: 15528055f3f53c8cfebbee1f928dec07
:::

#### Params::ValidationCompiler Dependencies

##### Required

[Exception-Class-1.45](perl-deps.md#perl-exception-class "Exception::Class-1.45"){.xref} and [Specio-0.53](perl-deps.md#perl-specio "Specio-0.53"){.xref}

##### Recommended (required for the test suite)

[Test-Without-Module-0.23](perl-deps.md#perl-test-without-module "Test::Without::Module-0.23"){.xref} and [Test2-Plugin-NoWarnings-0.10](perl-deps.md#perl-test2-plugin-nowarnings "Test2::Plugin::NoWarnings-0.10"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Params::ValidationCompiler {#installation-of-paramsvalidationcompiler .sect3}

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
## []{#perl-path-tiny}Path::Tiny-0.150 {#pathtiny-0.150 .sect2}

::::: {.package lang="en"}
### Introduction to Path::Tiny {#introduction-to-pathtiny .sect3}

Path::Tiny provides a small fast utility for working with file paths.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Path-Tiny-0.150.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Path-Tiny-0.150.tar.gz){.ulink}

-   Download MD5 sum: 7126ad3d5c14a32a5f4bde0054f57449
:::
:::::

::: {.installation lang="en"}
### Installation of Path::Tiny {#installation-of-pathtiny .sect3}

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
## []{#perl-role-tiny}Role::Tiny-2.002004 {#roletiny-2.002004 .sect2}

::::: {.package lang="en"}
### Introduction to Role::Tiny {#introduction-to-roletiny .sect3}

Role::Tiny is a minimalist role composition tool.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HA/HAARG/Role-Tiny-2.002004.tar.gz](https://cpan.metacpan.org/authors/id/H/HA/HAARG/Role-Tiny-2.002004.tar.gz){.ulink}

-   Download MD5 sum: 9ee45591befa3d0b1094ac75d282b6ba
:::
:::::

::: {.installation lang="en"}
### Installation of Role::Tiny {#installation-of-roletiny .sect3}

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
## []{#perl-scope-guard}Scope::Guard-0.21 {#scopeguard-0.21 .sect2}

::::: {.package lang="en"}
### Introduction to Scope::Guard {#introduction-to-scopeguard .sect3}

Scope::Guard provides a convenient way to perform cleanup or other forms of resource management at the end of a scope.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/C/CH/CHOCOLATE/Scope-Guard-0.21.tar.gz](https://cpan.metacpan.org/authors/id/C/CH/CHOCOLATE/Scope-Guard-0.21.tar.gz){.ulink}

-   Download MD5 sum: be57b915d23ddac7677ef2ad9e52b92a
:::
:::::

::: {.installation lang="en"}
### Installation of Scope::Guard {#installation-of-scopeguard .sect3}

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
## []{#perl-specio}Specio-0.53 {#specio-0.53 .sect2}

::::: {.package lang="en"}
### Introduction to Specio {#introduction-to-specio .sect3}

Specio provides classes for representing type constraints and coercion, along with syntax sugar for declaring them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Specio-0.53.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Specio-0.53.tar.gz){.ulink}

-   Download MD5 sum: 2665608c5ca3d502146bfe9207831838
:::

#### Specio Dependencies

##### Required

[Devel-StackTrace-2.05](perl-deps.md#perl-devel-stacktrace "Devel::StackTrace-2.05"){.xref}, [Eval-Closure-0.14](perl-deps.md#perl-eval-closure "Eval::Closure-0.14"){.xref}, [Module-Runtime-0.018](perl-deps.md#perl-module-runtime "Module::Runtime-0.018"){.xref}, [Role-Tiny-2.002004](perl-deps.md#perl-role-tiny "Role::Tiny-2.002004"){.xref}, [Sub-Quote-2.006009](perl-deps.md#perl-sub-quote "Sub::Quote-2.006009"){.xref}, and [Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}

##### Recommended (required for the test suite)

[MRO-Compat-0.15](perl-deps.md#perl-mro-compat "MRO::Compat-0.15"){.xref}, [Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}, and [Test-Needs-0.002010](perl-deps.md#perl-test-needs "Test::Needs-0.002010"){.xref}

##### Optional

[namespace-autoclean-0.31](perl-deps.md#perl-namespace-autoclean "namespace::autoclean-0.31"){.xref} (for the test suite)
:::::

::: {.installation lang="en"}
### Installation of Specio {#installation-of-specio .sect3}

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
## []{#perl-sub-exporter-progressive}Sub::Exporter::Progressive-0.001013 {#subexporterprogressive-0.001013 .sect2}

::::: {.package lang="en"}
### Introduction to Sub::Exporter::Progressive {#introduction-to-subexporterprogressive .sect3}

Sub::Exporter::Progressive is a wrapper for Sub::Exporter.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/F/FR/FREW/Sub-Exporter-Progressive-0.001013.tar.gz](https://cpan.metacpan.org/authors/id/F/FR/FREW/Sub-Exporter-Progressive-0.001013.tar.gz){.ulink}

-   Download MD5 sum: 72cf6acdd2a0a8b105821a4db98e4ebe
:::
:::::

::: {.installation lang="en"}
### Installation of Sub::Exporter::Progressive {#installation-of-subexporterprogressive .sect3}

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
## []{#perl-sub-quote}Sub::Quote-2.006009 {#subquote-2.006009 .sect2}

::::: {.package lang="en"}
### Introduction to Sub::Quote {#introduction-to-subquote .sect3}

Sub::Quote provides ways to generate subroutines from strings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HA/HAARG/Sub-Quote-2.006009.tar.gz](https://cpan.metacpan.org/authors/id/H/HA/HAARG/Sub-Quote-2.006009.tar.gz){.ulink}

-   Download MD5 sum: 8f4600b812f6106a1f907ee47a87bd1d
:::
:::::

::: {.installation lang="en"}
### Installation of Sub::Quote {#installation-of-subquote .sect3}

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
## []{#perl-sub-uplevel}Sub::Uplevel-0.2800 {#subuplevel-0.2800 .sect2}

::::: {.package lang="en"}
### Introduction to Sub::Uplevel {#introduction-to-subuplevel .sect3}

Sub::Uplevel allows you to fool a caller that it is running in a higher stack frame.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Sub-Uplevel-0.2800.tar.gz](https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Sub-Uplevel-0.2800.tar.gz){.ulink}

-   Download MD5 sum: 6c6a174861fd160e8d5871a86df00baf
:::
:::::

::: {.installation lang="en"}
### Installation of Sub::Uplevel {#installation-of-subuplevel .sect3}

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
## []{#perl-term-table}Term::Table-0.028 {#termtable-0.028 .sect2}

::::: {.package lang="en"}
### Introduction to Term::Table {#introduction-to-termtable .sect3}

Term::Table formats a header and rows into a table. This is used by some failing tests to provide diagnostics about what has gone wrong.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Term-Table-0.028.tar.gz](https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Term-Table-0.028.tar.gz){.ulink}

-   Download MD5 sum: 28c3c03c85938a37e92d24413d0953ec
:::

#### Term::Table Dependencies

##### Recommended (required for the test suite)

[Test-Simple-1.302219](perl-deps.md#perl-test-simple "Test::Simple-1.302219"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Term::Table {#installation-of-termtable .sect3}

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
## []{#perl-test-deep}Test::Deep-1.205 {#testdeep-1.205 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Deep {#introduction-to-testdeep .sect3}

Test::Deep gives you very flexible ways to check that the result you got is the result you were expecting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Deep-1.205.tar.gz](https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Deep-1.205.tar.gz){.ulink}

-   Download MD5 sum: 02a83480ffeaf93e7498c4dbd5b507b1
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Deep {#installation-of-testdeep .sect3}

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
## []{#perl-test-exception}Test::Exception-0.43 {#testexception-0.43 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Exception {#introduction-to-testexception .sect3}

Test::Exception provides convenience methods for testing exception based code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Exception-0.43.tar.gz](https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Exception-0.43.tar.gz){.ulink}

-   Download MD5 sum: 572d355026fb0b87fc2b8c64b83cada0
:::

#### Test::Exception Dependencies

##### Required

[Sub-Uplevel-0.2800](perl-deps.md#perl-sub-uplevel "Sub::Uplevel-0.2800"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::Exception {#installation-of-testexception .sect3}

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
## []{#perl-test-fatal}Test::Fatal-0.018 {#testfatal-0.018 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Fatal {#introduction-to-testfatal .sect3}

The Test::Fatal module provides simple helpers for testing code which throws exceptions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Fatal-0.018.tar.gz](https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Fatal-0.018.tar.gz){.ulink}

-   Download MD5 sum: 51a097a5e0af012569b890441e6533c8
:::

#### Test::Fatal Dependencies

##### Required

[Try-Tiny-0.32](perl-deps.md#perl-try-tiny "Try::Tiny-0.32"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::Fatal {#installation-of-testfatal .sect3}

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
## []{#perl-test-file}Test::File-1.995 {#testfile-1.995 .sect2}

::::: {.package lang="en"}
### Introduction to Test::File {#introduction-to-testfile .sect3}

Test::File provides a collection of test utilities for file attributes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Test-File-1.995.tar.gz](https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Test-File-1.995.tar.gz){.ulink}

-   Download MD5 sum: 865b7e00fa68431596e1933d523506ab
:::

#### Test::File Dependencies

##### Recommended (required for the test suite)

[Test-utf8-1.03](perl-deps.md#perl-test-utf8 "Test::utf8-1.03"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::File {#installation-of-testfile .sect3}

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
## []{#perl-test-file-sharedir}Test::File::ShareDir-1.001002 {#testfilesharedir-1.001002 .sect2}

::::: {.package lang="en"}
### Introduction to Test::File::ShareDir {#introduction-to-testfilesharedir .sect3}

Test::File::ShareDir is some low level plumbing to enable a distribution to perform tests while consuming its own share directories in a manner similar to how they will be once installed. This allows [File-ShareDir-1.118](perl-deps.md#perl-file-sharedir "File::ShareDir-1.118"){.xref} to see the latest version of content instead of whatever is installed on the target system where you are testing.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/K/KE/KENTNL/Test-File-ShareDir-1.001002.tar.gz](https://cpan.metacpan.org/authors/id/K/KE/KENTNL/Test-File-ShareDir-1.001002.tar.gz){.ulink}

-   Download MD5 sum: ec31466aa44c1cd56c6cb51d7ec3a5de
:::

#### Test::File::ShareDir Dependencies

##### Required

[Class-Tiny-1.008](perl-deps.md#perl-class-tiny "Class::Tiny-1.008"){.xref}, [File-Copy-Recursive-0.45](perl-deps.md#perl-file-copy-recursive "File::Copy::Recursive-0.45"){.xref}, [File-ShareDir-1.118](perl-deps.md#perl-file-sharedir "File::ShareDir-1.118"){.xref}, [Path-Tiny-0.150](perl-deps.md#perl-path-tiny "Path::Tiny-0.150"){.xref}, and [Scope-Guard-0.21](perl-deps.md#perl-scope-guard "Scope::Guard-0.21"){.xref}

##### Recommended (required for the test suite)

[Test-Fatal-0.018](perl-deps.md#perl-test-fatal "Test::Fatal-0.018"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::File::ShareDir {#installation-of-testfilesharedir .sect3}

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
## []{#perl-test-leaktrace}Test::LeakTrace-0.17 {#testleaktrace-0.17 .sect2}

::::: {.package lang="en"}
### Introduction to Test::LeakTrace {#introduction-to-testleaktrace .sect3}

Test::LeakTrace traces memory leaks.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/L/LE/LEEJO/Test-LeakTrace-0.17.tar.gz](https://cpan.metacpan.org/authors/id/L/LE/LEEJO/Test-LeakTrace-0.17.tar.gz){.ulink}

-   Download MD5 sum: afdb2cc6be0807cb635fb601a004d522
:::
:::::

::: {.installation lang="en"}
### Installation of Test::LeakTrace {#installation-of-testleaktrace .sect3}

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
## []{#perl-test-needs}Test::Needs-0.002010 {#testneeds-0.002010 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Needs {#introduction-to-testneeds .sect3}

Test::Needs skips tests if a requested module is not present.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-0.002010.tar.gz](https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-0.002010.tar.gz){.ulink}

-   Download MD5 sum: 2b3d10946001561297624e7668f09c26
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Needs {#installation-of-testneeds .sect3}

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
## []{#perl-test-requires}Test::Requires-0.11 {#testrequires-0.11 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Requires {#introduction-to-testrequires .sect3}

The Test::Requires module checks if another (optional) module can be loaded, and if not it skips all the current tests.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/T/TO/TOKUHIROM/Test-Requires-0.11.tar.gz](https://cpan.metacpan.org/authors/id/T/TO/TOKUHIROM/Test-Requires-0.11.tar.gz){.ulink}

-   Download MD5 sum: 999d6c4e46ea7baae7a5113292e02ed8
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Requires {#installation-of-testrequires .sect3}

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
## []{#perl-test-requiresinternet}Test::RequiresInternet-0.05 {#testrequiresinternet-0.05 .sect2}

::::: {.package lang="en"}
### Introduction to Test::RequiresInternet {#introduction-to-testrequiresinternet .sect3}

Test::RequiresInternet is intended to easily test network connectivity before functional tests begin to connect to non-local Internet resources.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/M/MA/MALLEN/Test-RequiresInternet-0.05.tar.gz](https://cpan.metacpan.org/authors/id/M/MA/MALLEN/Test-RequiresInternet-0.05.tar.gz){.ulink}

-   Download MD5 sum: 0ba9f1cff4cf90ed2618c2eddfd525d8
:::
:::::

::: {.installation lang="en"}
### Installation of Test::RequiresInternet {#installation-of-testrequiresinternet .sect3}

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
## []{#perl-test-simple}Test::Simple-1.302219 {#testsimple-1.302219 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Simple {#introduction-to-testsimple .sect3}

Test::Simple contains basic utilities for writing tests.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Simple-1.302219.tar.gz](https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Simple-1.302219.tar.gz){.ulink}

-   Download MD5 sum: 3fb91a5748838dbd4e8c64b0ed2add2b
:::

#### Test::Simple Dependencies

##### Required

[Term-Table-0.028](perl-deps.md#perl-term-table "Term::Table-0.028"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test::Simple {#installation-of-testsimple .sect3}

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
## []{#perl-test-utf8}Test::utf8-1.03 {#testutf8-1.03 .sect2}

::::: {.package lang="en"}
### Introduction to Test::utf8 {#introduction-to-testutf8 .sect3}

Test::utf8 is a collection of tests useful for dealing with utf8 strings in [Perl]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/S/SC/SCHWIGON/Test-utf8-1.03.tar.gz](https://cpan.metacpan.org/authors/id/S/SC/SCHWIGON/Test-utf8-1.03.tar.gz){.ulink}

-   Download MD5 sum: 03e219b5a7d0645b313f557238c0f8b3
:::
:::::

::: {.installation lang="en"}
### Installation of Test::utf8 {#installation-of-testutf8 .sect3}

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
## []{#perl-test-warnings}Test::Warnings-0.038 {#testwarnings-0.038 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Warnings {#introduction-to-testwarnings .sect3}

Test::Warnings tests for warnings and the lack of them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/Test-Warnings-0.038.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/Test-Warnings-0.038.tar.gz){.ulink}

-   Download MD5 sum: 53f8c543cf362f49f822bdfe31797712
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Warnings {#installation-of-testwarnings .sect3}

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
## []{#perl-test-without-module}Test::Without::Module-0.23 {#testwithoutmodule-0.23 .sect2}

::::: {.package lang="en"}
### Introduction to Test::Without::Module {#introduction-to-testwithoutmodule .sect3}

This module allows you to deliberately hide modules from a program even though they are installed. This is mostly useful for testing modules that have a fallback when a certain dependency module is not installed.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/C/CO/CORION/Test-Without-Module-0.23.tar.gz](https://cpan.metacpan.org/authors/id/C/CO/CORION/Test-Without-Module-0.23.tar.gz){.ulink}

-   Download MD5 sum: 58a507875131f63a936e0b971dd18f67
:::
:::::

::: {.installation lang="en"}
### Installation of Test::Without::Module {#installation-of-testwithoutmodule .sect3}

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
## []{#perl-test2-plugin-nowarnings}Test2::Plugin::NoWarnings-0.10 {#test2pluginnowarnings-0.10 .sect2}

::::: {.package lang="en"}
### Introduction to Test2::Plugin::NoWarnings {#introduction-to-test2pluginnowarnings .sect3}

Test2::Plugin::NoWarnings causes tests to fail if there are any warnings while they run.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Test2-Plugin-NoWarnings-0.10.tar.gz](https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Test2-Plugin-NoWarnings-0.10.tar.gz){.ulink}

-   Download MD5 sum: d50e21a76f1fef09004092a73b1c065b
:::

#### Test2::Plugin::NoWarnings Dependencies

##### Required

[Test-Simple-1.302219](perl-deps.md#perl-test-simple "Test::Simple-1.302219"){.xref}

##### Recommended (required for the test suite)

[IPC-Run3-0.049](perl-modules.md#perl-ipc-run3 "IPC::Run3-0.049"){.xref} and [Module-Pluggable-6.3](perl-deps.md#perl-module-pluggable "Module::Pluggable-6.3"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Test2::Plugin::NoWarnings {#installation-of-test2pluginnowarnings .sect3}

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
## []{#perl-text-csv_xs}Text::CSV_XS-1.62 {#textcsv_xs-1.62 .sect2}

::::: {.package lang="en"}
### Introduction to Text::CSV_XS {#introduction-to-textcsv_xs .sect3}

Text::CSV_XS provides facilities for the composition and decomposition of comma-separated values.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/H/HM/HMBRAND/Text-CSV_XS-1.62.tgz](https://cpan.metacpan.org/authors/id/H/HM/HMBRAND/Text-CSV_XS-1.62.tgz){.ulink}

-   Download MD5 sum: d7a3748a5dca671e3ee3f874456993ae
:::
:::::

::: {.installation lang="en"}
### Installation of Text::CSV_XS {#installation-of-textcsv_xs .sect3}

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
## []{#perl-text-diff}Text::Diff-1.45 {#textdiff-1.45 .sect2}

::::: {.package lang="en"}
### Introduction to Text::Diff {#introduction-to-textdiff .sect3}

Text::Diff performs diffs on files and record sets.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/N/NE/NEILB/Text-Diff-1.45.tar.gz](https://cpan.metacpan.org/authors/id/N/NE/NEILB/Text-Diff-1.45.tar.gz){.ulink}

-   Download MD5 sum: edf57b6189f7651a6be454062a4e6d9c
:::

#### Text::Diff Dependencies

##### Required

[Algorithm-Diff-1.201](perl-deps.md#perl-algorithm-diff "Algorithm::Diff-1.201"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Text::Diff {#installation-of-textdiff .sect3}

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
## []{#perl-text-glob}Text::Glob-0.11 {#textglob-0.11 .sect2}

::::: {.package lang="en"}
### Introduction to Text::Glob {#introduction-to-textglob .sect3}

Text::Glob implements [glob(3)](https://man.archlinux.org/man/glob.3){.ulink} style matching that can be used to match against text, rather than fetching names from a filesystem.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Text-Glob-0.11.tar.gz](https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Text-Glob-0.11.tar.gz){.ulink}

-   Download MD5 sum: d001559c504a2625dd117bd1558f07f7
:::
:::::

::: {.installation lang="en"}
### Installation of Text::Glob {#installation-of-textglob .sect3}

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
## []{#perl-tie-cycle}Tie::Cycle-1.233 {#tiecycle-1.233 .sect2}

::::: {.package lang="en"}
### Introduction to Tie::Cycle {#introduction-to-tiecycle .sect3}

You use Tie::Cycle to go through a list over and over again. Once you get to the end of the list, you go back to the beginning. You don't have to worry about any of this since the magic of tie does that for you.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Tie-Cycle-1.233.tar.gz](https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Tie-Cycle-1.233.tar.gz){.ulink}

-   Download MD5 sum: 0399e24bfa5c3f6e97479b80741d01b5
:::
:::::

::: {.installation lang="en"}
### Installation of Tie::Cycle {#installation-of-tiecycle .sect3}

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
## []{#perl-timedate}TimeDate-2.33 {#timedate-2.33 .sect2}

::::: {.package lang="en"}
### Introduction to TimeDate {#introduction-to-timedate .sect3}

TimeDate provides miscellaneous timezone manipulation routines.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/TimeDate-2.33.tar.gz](https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/TimeDate-2.33.tar.gz){.ulink}

-   Download MD5 sum: 5e5afe22c8d417417283d1f7f4572a57
:::
:::::

::: {.installation lang="en"}
### Installation of TimeDate {#installation-of-timedate .sect3}

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
## []{#perl-try-tiny}Try::Tiny-0.32 {#trytiny-0.32 .sect2}

::::: {.package lang="en"}
### Introduction to Try::Tiny {#introduction-to-trytiny .sect3}

Try::Tiny provides [**try**]{.command} and [**catch**]{.command} to expect and handle exceptional conditions, avoiding quirks in [Perl]{.application} and common mistakes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.32.tar.gz](https://cpan.metacpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.32.tar.gz){.ulink}

-   Download MD5 sum: 964424fcada4654bede745a7a2fb870b
:::

#### Try::Tiny Dependencies

##### Optional (can be used by the test suite)

[Capture-Tiny-0.50](perl-deps.md#perl-capture-tiny "Capture::Tiny-0.50"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Try::Tiny {#installation-of-trytiny .sect3}

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
## []{#perl-variable-magic}Variable::Magic-0.64 {#variablemagic-0.64 .sect2}

::::: {.package lang="en"}
### Introduction to Variable::Magic {#introduction-to-variablemagic .sect3}

Magic is Perl's way of enhancing variables. With this module, you can add your own magic to any variable.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/V/VP/VPIT/Variable-Magic-0.64.tar.gz](https://cpan.metacpan.org/authors/id/V/VP/VPIT/Variable-Magic-0.64.tar.gz){.ulink}

-   Download MD5 sum: 957d53fc6614deb593aa6d7cf96d713a
:::
:::::

::: {.installation lang="en"}
### Installation of Variable::Magic {#installation-of-variablemagic .sect3}

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
## []{#perl-www-robotrules}WWW::RobotRules-6.02 {#wwwrobotrules-6.02 .sect2}

::::: {.package lang="en"}
### Introduction to WWW::RobotRules {#introduction-to-wwwrobotrules .sect3}

WWW::RobotRules parses `robots.txt`{.filename} files, creating a WWW::RobotRules object with methods to check if access to a given URL is prohibited.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/G/GA/GAAS/WWW-RobotRules-6.02.tar.gz](https://cpan.metacpan.org/authors/id/G/GA/GAAS/WWW-RobotRules-6.02.tar.gz){.ulink}

-   Download MD5 sum: b7186e8b8b3701e70c22abf430742403
:::

#### WWW::RobotRules Dependencies

##### Required (runtime)

[libwww-perl-6.83](perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref} (install this module first and install that later)
:::::

::: {.installation lang="en"}
### Installation of WWW::RobotRules {#installation-of-wwwrobotrules .sect3}

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
## []{#perl-xml-libxml}XML::LibXML-2.0213 {#xmllibxml-2.0213 .sect2}

::::: {.package lang="en"}
### Introduction to XML::LibXML {#introduction-to-xmllibxml .sect3}

XML::LibXML is a perl binding for [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-LibXML-2.0213.tar.gz](https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-LibXML-2.0213.tar.gz){.ulink}

-   Download MD5 sum: 7135bdef80f72a278ca65eb8e2dc13b6
:::

#### XML::LibXML Dependencies

##### Required

[Alien-Libxml2-0.20](perl-deps.md#perl-alien-libxml2 "Alien::Libxml2-0.20"){.xref} and [XML-SAX-1.02](perl-deps.md#perl-xml-sax "XML::SAX-1.02"){.xref}
:::::

::: {.installation lang="en"}
### Installation of XML::LibXML {#installation-of-xmllibxml .sect3}

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
## []{#perl-xml-namespacesupport}XML::NamespaceSupport-1.12 {#xmlnamespacesupport-1.12 .sect2}

::::: {.package lang="en"}
### Introduction to XML::NamespaceSupport {#introduction-to-xmlnamespacesupport .sect3}

XML::NamespaceSupport offers a simple way to process namespaced XML names from within any application that may need them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz](https://cpan.metacpan.org/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz){.ulink}

-   Download MD5 sum: a8916c6d095bcf073e1108af02e78c97
:::
:::::

::: {.installation lang="en"}
### Installation of XML::NamespaceSupport {#installation-of-xmlnamespacesupport .sect3}

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
## []{#perl-xml-sax}XML::SAX-1.02 {#xmlsax-1.02 .sect2}

::::: {.package lang="en"}
### Introduction to XML::SAX {#introduction-to-xmlsax .sect3}

XML::SAX is a SAX parser access API for Perl. It includes classes and APIs required for implementing SAX drivers, along with a factory class for returning any SAX parser installed on the user's system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz](https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz){.ulink}

-   Download MD5 sum: b62e3754523695c7f5bbcafa3676a38d
:::

#### XML::SAX Dependencies

##### Required

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [XML-NamespaceSupport-1.12](perl-deps.md#perl-xml-namespacesupport "XML::NamespaceSupport-1.12"){.xref}, and [XML-SAX-Base-1.09](perl-deps.md#perl-xml-sax-base "XML::SAX::Base-1.09"){.xref}
:::::

::: {.installation lang="en"}
### Installation of XML::SAX {#installation-of-xmlsax .sect3}

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
### Command Explanations {#command-explanations-2 .sect3}

[**yes**]{.command}: Perl will ask if you want it to alter ParserDetails.ini and then wait for a response. The default is 'y'. Using 'yes' allows you to script this.
:::
::::::::

::::::: {.sect2 lang="en"}
## []{#perl-xml-sax-base}XML::SAX::Base-1.09 {#xmlsaxbase-1.09 .sect2}

::::: {.package lang="en"}
### Introduction to XML::SAX::Base {#introduction-to-xmlsaxbase .sect3}

This module has a very simple task - to be a base class for PerlSAX drivers and filters.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz](https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz){.ulink}

-   Download MD5 sum: ec347a14065dd7aec7d9fb181b2d7946
:::
:::::

::: {.installation lang="en"}
### Installation of XML::SAX-Base {#installation-of-xmlsax-base .sect3}

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
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](perl-modules.md "Perl Modules"){accesskey="p"}

    Perl Modules

-   [Next](php.md "PHP-8.5.6"){accesskey="n"}

    PHP-8.5.6

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
