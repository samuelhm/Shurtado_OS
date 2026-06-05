<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](perl-modules.md "Perl Modules")

    Perl Modules

-   [Next](php.md "PHP-8.5.6")

    PHP-8.5.6

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Perl Module Dependencies {#perl-module-dependencies}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Perl Modules which are only required by other modules {#perl-modules-which-are-only-required-by-other-modules}

The modules on the previous page are referenced from other pages in BLFS, but these modules are only in the book as dependencies of those modules. If you use the CPAN install method, you do not need to read this page.

The BLFS editors pay much less attention to these modules, and the versions will not be regularly reviewed. In all cases, only the required or recommended dependencies are listed - there might be other modules which allow more tests to be run, but omitting them will still allow the tests to <code class="literal">PASS</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The links on this page (to metacpan.org) should go to "known good" versions, for which their dependencies are correct. If you wish to use a later version, please check the Changes file at https://metacpan.org - sometimes added dependencies are listed, other times not. Some of these modules have very frequent updates, often bringing different dependencies. The linked metacpan.org versions below were known to work with the module versions in BLFS when last reviewed.

However, if you notice that the Changes file for a newer version than is in the current development book reports a fix for a security issue, please report this to either the blfs-dev or the blfs-support list.

Similarly, if you discover that an updated module on the previous page needs an extra dependency, please report this.
</div>

<div class="itemizedlist">
-   <a class="xref" href="perl-deps.md#perl-algorithm-diff" title="Algorithm::Diff-1.201">Algorithm-Diff-1.201</a>

-   <a class="xref" href="perl-deps.md#perl-alien-build" title="Alien::Build-2.84">Alien-Build-2.84</a>

-   <a class="xref" href="perl-deps.md#perl-alien-build-plugin-download-gitlab" title="Alien::Build::Plugin::Download::GitLab-0.01">Alien-Build-Plugin-Download-GitLab-0.01</a>

-   <a class="xref" href="perl-deps.md#perl-alien-libxml2" title="Alien::Libxml2-0.20">Alien-Libxml2-0.20</a>

-   <a class="xref" href="perl-deps.md#perl-b-cow" title="B::COW-0.007">B-COW-0.007</a>

-   <a class="xref" href="perl-deps.md#perl-b-hooks-endofscope" title="B::Hooks::EndOfScope-0.28">B-Hooks-EndOfScope-0.28</a>

-   <a class="xref" href="perl-deps.md#perl-business-isbn-data" title="Business::ISBN::Data-20260311.001">Business-ISBN-Data-20260311.001</a>

-   <a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a>

-   <a class="xref" href="perl-deps.md#perl-class-data-inheritable" title="Class::Data::Inheritable-0.10">Class-Data-Inheritable-0.10</a>

-   <a class="xref" href="perl-deps.md#perl-class-inspector" title="Class::Inspector-1.36">Class-Inspector-1.36</a>

-   <a class="xref" href="perl-deps.md#perl-class-singleton" title="Class::Singleton-1.6">Class-Singleton-1.6</a>

-   <a class="xref" href="perl-deps.md#perl-class-tiny" title="Class::Tiny-1.008">Class-Tiny-1.008</a>

-   <a class="xref" href="perl-deps.md#perl-clone" title="Clone-0.47">Clone-0.47</a>

-   <a class="xref" href="perl-deps.md#perl-clone-pp" title="Clone::PP-1.08">Clone-PP-1.08</a>

-   <a class="xref" href="perl-deps.md#perl-config-autoconf" title="Config::AutoConf-0.320">Config-AutoConf-0.320</a>

-   <a class="xref" href="perl-deps.md#perl-cpan-meta-check" title="CPAN::Meta::Check-0.018">CPAN-Meta-Check-0.018</a>

-   <a class="xref" href="perl-deps.md#perl-datetime" title="DateTime-1.66">DateTime-1.66</a>

-   <a class="xref" href="perl-deps.md#perl-datetime-format-strptime" title="DateTime::Format::Strptime-1.80">DateTime-Format-Strptime-1.80</a>

-   <a class="xref" href="perl-deps.md#perl-datetime-locale" title="DateTime::Locale-1.45">DateTime-Locale-1.45</a>

-   <a class="xref" href="perl-deps.md#perl-datetime-timezone" title="DateTime::TimeZone-2.66">DateTime-TimeZone-2.66</a>

-   <a class="xref" href="perl-deps.md#perl-devel-stacktrace" title="Devel::StackTrace-2.05">Devel-StackTrace-2.05</a>

-   <a class="xref" href="perl-deps.md#perl-dist-checkconflicts" title="Dist::CheckConflicts-0.11">Dist-CheckConflicts-0.11</a>

-   <a class="xref" href="perl-deps.md#perl-encode-locale" title="Encode::Locale-1.05">Encode-Locale-1.05</a>

-   <a class="xref" href="perl-deps.md#perl-eval-closure" title="Eval::Closure-0.14">Eval-Closure-0.14</a>

-   <a class="xref" href="perl-deps.md#perl-exception-class" title="Exception::Class-1.45">Exception-Class-1.45</a>

-   <a class="xref" href="perl-deps.md#perl-exporter-tiny" title="Exporter::Tiny-1.006003">Exporter-Tiny-1.006003</a>

-   <a class="xref" href="perl-deps.md#perl-extutils-config" title="ExtUtils::Config-0.010">ExtUtils-Config-0.010</a>

-   <a class="xref" href="perl-deps.md#perl-extutils-helpers" title="ExtUtils::Helpers-0.028">ExtUtils-Helpers-0.028</a>

-   <a class="xref" href="perl-deps.md#perl-extutils-installpaths" title="ExtUtils::InstallPaths-0.015">ExtUtils-InstallPaths-0.015</a>

-   <a class="xref" href="perl-deps.md#perl-extutils-libbuilder" title="ExtUtils::LibBuilder-0.09">ExtUtils-LibBuilder-0.09</a>

-   <a class="xref" href="perl-deps.md#perl-ffi-checklib" title="FFI::CheckLib-0.31">FFI-CheckLib-0.31</a>

-   <a class="xref" href="perl-deps.md#perl-file-chdir" title="File::chdir-0.1011">File-chdir-0.1011</a>

-   <a class="xref" href="perl-deps.md#perl-file-copy-recursive" title="File::Copy::Recursive-0.45">File-Copy-Recursive-0.45</a>

-   <a class="xref" href="perl-deps.md#perl-file-find-rule" title="File::Find::Rule-0.35">File-Find-Rule-0.35</a>

-   <a class="xref" href="perl-deps.md#perl-file-listing" title="File::Listing-6.16">File-Listing-6.16</a>

-   <a class="xref" href="perl-deps.md#perl-file-sharedir" title="File::ShareDir-1.118">File-ShareDir-1.118</a>

-   <a class="xref" href="perl-deps.md#perl-file-sharedir-install" title="File::ShareDir::Install-0.14">File-ShareDir-Install-0.14</a>

-   <a class="xref" href="perl-deps.md#perl-html-tagset" title="HTML::Tagset-3.24">HTML-Tagset-3.24</a>

-   <a class="xref" href="perl-deps.md#perl-http-cookiejar" title="HTTP::CookieJar-0.014">HTTP-CookieJar-0.014</a>

-   <a class="xref" href="perl-deps.md#perl-http-cookies" title="HTTP::Cookies-6.11">HTTP-Cookies-6.11</a>

-   <a class="xref" href="perl-deps.md#perl-http-date" title="HTTP::Date-6.06">HTTP-Date-6.06</a>

-   <a class="xref" href="perl-deps.md#perl-http-message" title="HTTP::Message-7.01">HTTP-Message-7.01</a>

-   <a class="xref" href="perl-deps.md#perl-http-negotiate" title="HTTP::Negotiate-6.01">HTTP-Negotiate-6.01</a>

-   <a class="xref" href="perl-deps.md#perl-io-html" title="IO::HTML-1.004">IO-HTML-1.004</a>

-   <a class="xref" href="perl-deps.md#perl-ipc-system-simple" title="IPC::System::Simple-1.30">IPC-System-Simple-1.30</a>

-   <a class="xref" href="perl-deps.md#perl-list-moreutils-xs" title="List::MoreUtils::XS-0.430">List-MoreUtils-XS-0.430</a>

-   <a class="xref" href="perl-deps.md#perl-list-someutils" title="List::SomeUtils-0.59">List-SomeUtils-0.59</a>

-   <a class="xref" href="perl-deps.md#perl-list-someutils-xs" title="List::SomeUtils::XS-0.58">List-SomeUtils-XS-0.58</a>

-   <a class="xref" href="perl-deps.md#perl-list-utilsby" title="List::UtilsBy-0.12">List-UtilsBy-0.12</a>

-   <a class="xref" href="perl-deps.md#perl-lwp-mediatypes" title="LWP::MediaTypes-6.04">LWP-MediaTypes-6.04</a>

-   <a class="xref" href="perl-deps.md#perl-mime-base32" title="MIME::Base32-1.303">MIME-Base32-1.303</a>

-   <a class="xref" href="perl-deps.md#perl-mime-charset" title="MIME::Charset-1.013.1">MIME-Charset-1.013.1</a>

-   <a class="xref" href="perl-deps.md#perl-module-build-tiny" title="Module::Build::Tiny-0.053">Module-Build-Tiny-0.053</a>

-   <a class="xref" href="perl-deps.md#perl-module-implementation" title="Module::Implementation-0.09">Module-Implementation-0.09</a>

-   <a class="xref" href="perl-deps.md#perl-module-pluggable" title="Module::Pluggable-6.3">Module-Pluggable-6.3</a>

-   <a class="xref" href="perl-deps.md#perl-module-runtime" title="Module::Runtime-0.018">Module-Runtime-0.018</a>

-   <a class="xref" href="perl-deps.md#perl-mro-compat" title="MRO::Compat-0.15">MRO-Compat-0.15</a>

-   <a class="xref" href="perl-deps.md#perl-namespace-autoclean" title="namespace::autoclean-0.31">namespace-autoclean-0.31</a>

-   <a class="xref" href="perl-deps.md#perl-namespace-clean" title="namespace::clean-0.27">namespace-clean-0.27</a>

-   <a class="xref" href="perl-deps.md#perl-net-http" title="Net::HTTP-6.24">Net-HTTP-6.24</a>

-   <a class="xref" href="perl-deps.md#perl-net-ssleay" title="Net::SSLeay-1.96">Net-SSLeay-1.96</a>

-   <a class="xref" href="perl-deps.md#perl-number-compare" title="Number::Compare-0.03">Number-Compare-0.03</a>

-   <a class="xref" href="perl-deps.md#perl-package-stash" title="Package::Stash-0.40">Package-Stash-0.40</a>

-   <a class="xref" href="perl-deps.md#perl-params-validate" title="Params::Validate-1.31">Params-Validate-1.31</a>

-   <a class="xref" href="perl-deps.md#perl-params-validationcompiler" title="Params::ValidationCompiler-0.31">Params-ValidationCompiler-0.31</a>

-   <a class="xref" href="perl-deps.md#perl-path-tiny" title="Path::Tiny-0.150">Path-Tiny-0.150</a>

-   <a class="xref" href="perl-deps.md#perl-role-tiny" title="Role::Tiny-2.002004">Role-Tiny-2.002004</a>

-   <a class="xref" href="perl-deps.md#perl-scope-guard" title="Scope::Guard-0.21">Scope-Guard-0.21</a>

-   <a class="xref" href="perl-deps.md#perl-specio" title="Specio-0.53">Specio-0.53</a>

-   <a class="xref" href="perl-deps.md#perl-sub-exporter-progressive" title="Sub::Exporter::Progressive-0.001013">Sub-Exporter-Progressive-0.001013</a>

-   <a class="xref" href="perl-deps.md#perl-sub-quote" title="Sub::Quote-2.006009">Sub-Quote-2.006009</a>

-   <a class="xref" href="perl-deps.md#perl-sub-uplevel" title="Sub::Uplevel-0.2800">Sub-Uplevel-0.2800</a>

-   <a class="xref" href="perl-deps.md#perl-term-table" title="Term::Table-0.028">Term-Table-0.028</a>

-   <a class="xref" href="perl-deps.md#perl-test-deep" title="Test::Deep-1.205">Test-Deep-1.205</a>

-   <a class="xref" href="perl-deps.md#perl-test-exception" title="Test::Exception-0.43">Test-Exception-0.43</a>

-   <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>

-   <a class="xref" href="perl-deps.md#perl-test-file" title="Test::File-1.995">Test-File-1.995</a>

-   <a class="xref" href="perl-deps.md#perl-test-file-sharedir" title="Test::File::ShareDir-1.001002">Test-File-ShareDir-1.001002</a>

-   <a class="xref" href="perl-deps.md#perl-test-leaktrace" title="Test::LeakTrace-0.17">Test-LeakTrace-0.17</a>

-   <a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a>

-   <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>

-   <a class="xref" href="perl-deps.md#perl-test-requiresinternet" title="Test::RequiresInternet-0.05">Test-RequiresInternet-0.05</a>

-   <a class="xref" href="perl-deps.md#perl-test-simple" title="Test::Simple-1.302219">Test-Simple-1.302219</a>

-   <a class="xref" href="perl-deps.md#perl-test-utf8" title="Test::utf8-1.03">Test-utf8-1.03</a>

-   <a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a>

-   <a class="xref" href="perl-deps.md#perl-test-without-module" title="Test::Without::Module-0.23">Test-Without-Module-0.23</a>

-   <a class="xref" href="perl-deps.md#perl-test2-plugin-nowarnings" title="Test2::Plugin::NoWarnings-0.10">Test2-Plugin-NoWarnings-0.10</a>

-   <a class="xref" href="perl-deps.md#perl-text-csv_xs" title="Text::CSV_XS-1.62">Text-CSV_XS-1.62</a>

-   <a class="xref" href="perl-deps.md#perl-text-diff" title="Text::Diff-1.45">Text-Diff-1.45</a>

-   <a class="xref" href="perl-deps.md#perl-text-glob" title="Text::Glob-0.11">Text-Glob-0.11</a>

-   <a class="xref" href="perl-deps.md#perl-tie-cycle" title="Tie::Cycle-1.233">Tie-Cycle-1.233</a>

-   <a class="xref" href="perl-deps.md#perl-timedate" title="TimeDate-2.33">TimeDate-2.33</a>

-   <a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>

-   <a class="xref" href="perl-deps.md#perl-variable-magic" title="Variable::Magic-0.64">Variable-Magic-0.64</a>

-   <a class="xref" href="perl-deps.md#perl-www-robotrules" title="WWW::RobotRules-6.02">WWW-RobotRules-6.02</a>

-   <a class="xref" href="perl-deps.md#perl-xml-libxml" title="XML::LibXML-2.0213">XML-LibXML-2.0213</a>

-   <a class="xref" href="perl-deps.md#perl-xml-namespacesupport" title="XML::NamespaceSupport-1.12">XML-NamespaceSupport-1.12</a>

-   <a class="xref" href="perl-deps.md#perl-xml-sax" title="XML::SAX-1.02">XML-SAX-1.02</a>

-   <a class="xref" href="perl-deps.md#perl-xml-sax-base" title="XML::SAX::Base-1.09">XML-SAX-Base-1.09</a>
</div>
</div>

<div class="sect2" lang="en">
## Algorithm::Diff-1.201 {#algorithmdiff-1.201}

<div class="package" lang="en">
### Introduction to Algorithm::Diff {#introduction-to-algorithmdiff}

Algorithm::Diff computes 'intelligent' differences between two files or lists.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RJ/RJBS//Algorithm-Diff-1.201.tar.gz">https://cpan.metacpan.org/authors/id/R/RJ/RJBS//Algorithm-Diff-1.201.tar.gz</a>

-   Download MD5 sum: 2eaae910f5220261ee2bbdfc4a8df2c2
</div>
</div>

<div class="installation" lang="en">
### Installation of Algorithm::Diff {#installation-of-algorithmdiff}

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
## Alien::Build-2.84 {#alienbuild-2.84}

<div class="package" lang="en">
### Introduction to Alien::Build {#introduction-to-alienbuild}

Alien::Build provides tools for building external (non-CPAN) dependencies for CPAN.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-2.84.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-2.84.tar.gz</a>

-   Download MD5 sum: 531c4d1ea1274e2fafd7e61df60f9099
</div>

#### Alien::Build Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a>, <a class="xref" href="perl-modules.md#perl-file-which" title="File::Which-1.27">File-Which-1.27</a>, <a class="xref" href="perl-deps.md#perl-ffi-checklib" title="FFI::CheckLib-0.31">FFI-CheckLib-0.31</a> and <a class="xref" href="perl-deps.md#perl-file-chdir" title="File::chdir-0.1011">File-chdir-0.1011</a>
</div>

<div class="installation" lang="en">
### Installation of Alien::Build {#installation-of-alienbuild}

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
## Alien::Build::Plugin::Download::GitLab-0.01 {#alienbuildplugindownloadgitlab-0.01}

<div class="package" lang="en">
### Introduction to Alien::Build::Plugin::Download::GitLab {#introduction-to-alienbuildplugindownloadgitlab}

Alien::Build::Plugin::Download::GitLab allows Alien::Build to download from GitLab (in practice, this does not download if the required library is already installed on the system).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-Plugin-Download-GitLab-0.01.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Build-Plugin-Download-GitLab-0.01.tar.gz</a>

-   Download MD5 sum: ad1d815262ad7dd98b0a9b35ba2f05ef
</div>

#### Alien::Build::Plugin::Download::GitLab Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-alien-build" title="Alien::Build-2.84">Alien-Build-2.84</a> and <a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>
</div>

<div class="installation" lang="en">
### Installation of Alien::Build::Plugin::Download::GitLab {#installation-of-alienbuildplugindownloadgitlab}

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
## Alien::Libxml2-0.20 {#alienlibxml2-0.20}

<div class="package" lang="en">
### Introduction to Alien::Libxml2 {#introduction-to-alienlibxml2}

Alien::Libxml2 is designed to allow modules to install the C libxml2 library on your system. In BLFS, it uses <span class="command"><strong>pkg-config</strong></span> to find how to link to the installed <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Libxml2-0.20.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Alien-Libxml2-0.20.tar.gz</a>

-   Download MD5 sum: c19b4fdf1e4670f035a0971413a56424
</div>

#### Alien::Libxml2 Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-alien-build-plugin-download-gitlab" title="Alien::Build::Plugin::Download::GitLab-0.01">Alien-Build-Plugin-Download-GitLab-0.01</a>, <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="perl-deps.md#perl-path-tiny" title="Path::Tiny-0.150">Path-Tiny-0.150</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-simple" title="Test::Simple-1.302219">Test-Simple-1.302219</a>
</div>

<div class="installation" lang="en">
### Installation of Alien::Libxml2 {#installation-of-alienlibxml2}

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
## B::COW-0.007 {#bcow-0.007}

<div class="package" lang="en">
### Introduction to B::COW {#introduction-to-bcow}

B::COW provides additional helpers for the B core module to check Copy On Write.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/B-COW-0.007.tar.gz">https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/B-COW-0.007.tar.gz</a>

-   Download MD5 sum: 7afc46f19e6f906e2ba5769b21fca5ff
</div>
</div>

<div class="installation" lang="en">
### Installation of B::COW {#installation-of-bcow}

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
## B::Hooks::EndOfScope-0.28 {#bhooksendofscope-0.28}

<div class="package" lang="en">
### Introduction to B::Hooks::EndOfScope {#introduction-to-bhooksendofscope}

B::Hooks::EndOfScope allows you to execute code when Perl finishes compiling the surrounding scope.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/B-Hooks-EndOfScope-0.28.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/B-Hooks-EndOfScope-0.28.tar.gz</a>

-   Download MD5 sum: d738ba65539d4acd601d47cc3e2cbb3a
</div>

#### B::Hooks::EndOfScope Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-module-implementation" title="Module::Implementation-0.09">Module-Implementation-0.09</a>, <a class="xref" href="perl-deps.md#perl-sub-exporter-progressive" title="Sub::Exporter::Progressive-0.001013">Sub-Exporter-Progressive-0.001013</a> and <a class="xref" href="perl-deps.md#perl-variable-magic" title="Variable::Magic-0.64">Variable-Magic-0.64</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>
</div>

<div class="installation" lang="en">
### Installation of B::Hooks::EndOfScope {#installation-of-bhooksendofscope}

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
## Business::ISBN::Data-20260311.001 {#businessisbndata-20260311.001}

<div class="package" lang="en">
### Introduction to Business-ISBN-Data {#introduction-to-business-isbn-data}

Business-ISBN-Data is a data pack for Business::ISBN.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-Data-20260311.001.tar.gz">https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Business-ISBN-Data-20260311.001.tar.gz</a>

-   Download MD5 sum: 9080a0f981ff40b59b536d4fa2d8efa0
</div>
</div>

<div class="installation" lang="en">
### Installation of Business-ISBN-Data {#installation-of-business-isbn-data}

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
## Capture::Tiny-0.50 {#capturetiny-0.50}

<div class="package" lang="en">
### Introduction to Capture::Tiny {#introduction-to-capturetiny}

The Capture::Tiny module captures STDOUT and STDERR from Perl, XS (eXternal Subroutine, i.e. written in C or C++) or external programs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Capture-Tiny-0.50.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Capture-Tiny-0.50.tar.gz</a>

-   Download MD5 sum: 92c96fdff1b972a663cc2b3e206ca853
</div>
</div>

<div class="installation" lang="en">
### Installation of Capture::Tiny {#installation-of-capturetiny}

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
## Class::Data::Inheritable-0.10 {#classdatainheritable-0.10}

<div class="package" lang="en">
### Introduction to Class::Data::Inheritable {#introduction-to-classdatainheritable}

Class::Data::Inheritable is for creating accessor/mutators to class data. That is, if you want to store something about your class as a whole (instead of about a single object).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RS/RSHERER/Class-Data-Inheritable-0.10.tar.gz">https://cpan.metacpan.org/authors/id/R/RS/RSHERER/Class-Data-Inheritable-0.10.tar.gz</a>

-   Download MD5 sum: 6bec8f4663a83972af60bd8e71a06f64
</div>
</div>

<div class="installation" lang="en">
### Installation of Class::Data::Inheritable {#installation-of-classdatainheritable}

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
## Class::Inspector-1.36 {#classinspector-1.36}

<div class="package" lang="en">
### Introduction to Class::Inspector {#introduction-to-classinspector}

Class::Inspector allows you to get information about a loaded class.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Class-Inspector-1.36.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/Class-Inspector-1.36.tar.gz</a>

-   Download MD5 sum: 084c3aeec023639d21ecbaf7d4460b21
</div>
</div>

<div class="installation" lang="en">
### Installation of Class::Inspector {#installation-of-classinspector}

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
## Class::Singleton-1.6 {#classsingleton-1.6}

<div class="package" lang="en">
### Introduction to Class::Singleton {#introduction-to-classsingleton}

A Singleton describes an object class that can have only one instance in any system, such as a print spooler. This module implements a Singleton class from which other classes can be derived.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/S/SH/SHAY/Class-Singleton-1.6.tar.gz">https://cpan.metacpan.org/authors/id/S/SH/SHAY/Class-Singleton-1.6.tar.gz</a>

-   Download MD5 sum: d9c84a7b8d1c490c38e88ed1f9faae47
</div>
</div>

<div class="installation" lang="en">
### Installation of Class::Singleton {#installation-of-classsingleton}

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
## Class::Tiny-1.008 {#classtiny-1.008}

<div class="package" lang="en">
### Introduction to Class::Tiny {#introduction-to-classtiny}

Class::Tiny offers a minimalist class construction kit.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Class-Tiny-1.008.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Class-Tiny-1.008.tar.gz</a>

-   Download MD5 sum: e3ccfae5f64d443e7e1110be964d7202
</div>
</div>

<div class="installation" lang="en">
### Installation of Class::Tiny {#installation-of-classtiny}

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
## Clone-0.47 {#clone-0.47}

<div class="package" lang="en">
### Introduction to Clone {#introduction-to-clone}

Clone recursively copies perl datatypes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/Clone-0.47.tar.gz">https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/Clone-0.47.tar.gz</a>

-   Download MD5 sum: 62ff032a4df0c4abb74f76adf519361e
</div>

#### Clone Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-b-cow" title="B::COW-0.007">B-COW-0.007</a>
</div>

<div class="installation" lang="en">
### Installation of Clone {#installation-of-clone}

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
## Clone::PP-1.08 {#clonepp-1.08}

<div class="package" lang="en">
### Introduction to Clone::PP {#introduction-to-clonepp}

Clone:PP recursively copies Perl datatypes, allowing for a deep copy of a given Perl data structure.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/N/NE/NEILB/Clone-PP-1.08.tar.gz">https://cpan.metacpan.org/authors/id/N/NE/NEILB/Clone-PP-1.08.tar.gz</a>

-   Download MD5 sum: 62f9547aec61768af85b00bd2c3e5547
</div>
</div>

<div class="installation" lang="en">
### Installation of Clone::PP {#installation-of-clonepp}

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
## Config::AutoConf-0.320 {#configautoconf-0.320}

<div class="package" lang="en">
### Introduction to Config::AutoConf {#introduction-to-configautoconf}

The Config::AutoConf module implements some of the AutoConf macros (detecting a command, detecting a library, etc.) in pure perl.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/A/AM/AMBS/Config-AutoConf-0.320.tar.gz">https://cpan.metacpan.org/authors/id/A/AM/AMBS/Config-AutoConf-0.320.tar.gz</a>

-   Download MD5 sum: 71664b2864232e265179ac29298e0916
</div>

#### Config::AutoConf Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a> and <a class="xref" href="perl-modules.md#perl-file-slurper" title="File::Slurper-0.014">File-Slurper-0.014</a>
</div>

<div class="installation" lang="en">
### Installation of Config::AutoConf {#installation-of-configautoconf}

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
## CPAN::Meta::Check-0.018 {#cpanmetacheck-0.018}

<div class="package" lang="en">
### Introduction to CPAN::Meta::Check {#introduction-to-cpanmetacheck}

CPAN::Meta::Check verifies if requirements described in a CPAN::Meta object are present.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/CPAN-Meta-Check-0.018.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/CPAN-Meta-Check-0.018.tar.gz</a>

-   Download MD5 sum: d1c2190e8bc1c176b9ee9cba3ac403ad
</div>
</div>

<div class="installation" lang="en">
### Installation of CPAN::Meta::Check {#installation-of-cpanmetacheck}

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
## DateTime-1.66 {#datetime-1.66}

<div class="package" lang="en">
### Introduction to DateTime {#introduction-to-datetime}

DateTime is a date and time object for perl.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-1.66.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-1.66.tar.gz</a>

-   Download MD5 sum: 525b43ebad148a24783c971aa198559c
</div>

#### DateTime Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-datetime-locale" title="DateTime::Locale-1.45">DateTime-Locale-1.45</a> and <a class="xref" href="perl-deps.md#perl-datetime-timezone" title="DateTime::TimeZone-2.66">DateTime-TimeZone-2.66</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-cpan-meta-check" title="CPAN::Meta::Check-0.018">CPAN-Meta-Check-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a> and <a class="xref" href="perl-deps.md#perl-test-without-module" title="Test::Without::Module-0.23">Test-Without-Module-0.23</a>
</div>

<div class="installation" lang="en">
### Installation of DateTime {#installation-of-datetime}

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
## DateTime::Format::Strptime-1.80 {#datetimeformatstrptime-1.80}

<div class="package" lang="en">
### Introduction to DateTime::Format::Strptime {#introduction-to-datetimeformatstrptime}

DateTime::Format::Strptime implements most of <a class="ulink" href="https://man.archlinux.org/man/strptime.3">strptime(3)</a>, i.e. it takes a string and a pattern and returns a DateTime object.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Strptime-1.80.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Format-Strptime-1.80.tar.gz</a>

-   Download MD5 sum: 574119fab01ef37082c002d237140009
</div>

#### DateTime::Format::Strptime Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-datetime" title="DateTime-1.66">DateTime-1.66</a>
</div>

<div class="installation" lang="en">
### Installation of DateTime::Format::Strptime {#installation-of-datetimeformatstrptime}

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
## DateTime::Locale-1.45 {#datetimelocale-1.45}

<div class="package" lang="en">
### Introduction to DateTime::Locale {#introduction-to-datetimelocale}

DateTime::Locale provides localization support for <a class="xref" href="perl-deps.md#perl-datetime" title="DateTime-1.66">DateTime-1.66</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Locale-1.45.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-Locale-1.45.tar.gz</a>

-   Download MD5 sum: 0ba952412b4e013dd42894625ddb3c20
</div>

#### DateTime::Locale Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-dist-checkconflicts" title="Dist::CheckConflicts-0.11">Dist-CheckConflicts-0.11</a>, <a class="xref" href="perl-deps.md#perl-file-sharedir" title="File::ShareDir-1.118">File-ShareDir-1.118</a>, <a class="xref" href="perl-deps.md#perl-namespace-autoclean" title="namespace::autoclean-0.31">namespace-autoclean-0.31</a> and <a class="xref" href="perl-deps.md#perl-params-validationcompiler" title="Params::ValidationCompiler-0.31">Params-ValidationCompiler-0.31</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-cpan-meta-check" title="CPAN::Meta::Check-0.018">CPAN-Meta-Check-0.018</a>, <a class="xref" href="perl-deps.md#perl-ipc-system-simple" title="IPC::System::Simple-1.30">IPC-System-Simple-1.30</a> and <a class="xref" href="perl-deps.md#perl-test-file-sharedir" title="Test::File::ShareDir-1.001002">Test-File-ShareDir-1.001002</a>
</div>

<div class="installation" lang="en">
### Installation of DateTime::Locale {#installation-of-datetimelocale}

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
## DateTime::TimeZone-2.66 {#datetimetimezone-2.66}

<div class="package" lang="en">
### Introduction to DateTime::TimeZone {#introduction-to-datetimetimezone}

This class is the base class for all time zone objects. A time zone is represented internally as a set of observances, each of which describes the offset from GMT for a given time period.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-TimeZone-2.66.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/DateTime-TimeZone-2.66.tar.gz</a>

-   Download MD5 sum: a945514deaba77225cc2a04f34604ae7
</div>

#### DateTime::TimeZone Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-class-singleton" title="Class::Singleton-1.6">Class-Singleton-1.6</a>, <a class="xref" href="perl-deps.md#perl-module-runtime" title="Module::Runtime-0.018">Module-Runtime-0.018</a>, and <a class="xref" href="perl-deps.md#perl-params-validationcompiler" title="Params::ValidationCompiler-0.31">Params-ValidationCompiler-0.31</a>

##### Recommended (required for the test suite)

Both <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a> and <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>, but only if a copy of <a class="xref" href="perl-deps.md#perl-datetime" title="DateTime-1.66">DateTime-1.66</a> (for which this is a dependency) has already been installed.
</div>

<div class="installation" lang="en">
### Installation of DateTime::TimeZone {#installation-of-datetimetimezone}

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
## Devel::StackTrace-2.05 {#develstacktrace-2.05}

<div class="package" lang="en">
### Introduction to Devel::StackTrace {#introduction-to-develstacktrace}

Devel::StackTrace provides an object representing a stack trace.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Devel-StackTrace-2.05.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Devel-StackTrace-2.05.tar.gz</a>

-   Download MD5 sum: b8ca19bb4c76e98a04373618db9c7c3c
</div>
</div>

<div class="installation" lang="en">
### Installation of Devel::StackTrace {#installation-of-develstacktrace}

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
## Dist::CheckConflicts-0.11 {#distcheckconflicts-0.11}

<div class="package" lang="en">
### Introduction to Dist::CheckConflicts {#introduction-to-distcheckconflicts}

Dist::CheckConflicts declares version conflicts for a distribution, to support post-install updates of dependent distributions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DO/DOY/Dist-CheckConflicts-0.11.tar.gz">https://cpan.metacpan.org/authors/id/D/DO/DOY/Dist-CheckConflicts-0.11.tar.gz</a>

-   Download MD5 sum: c8725a92b9169708b0f63036812070f2
</div>

#### Dist::CheckConflicts Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-module-runtime" title="Module::Runtime-0.018">Module-Runtime-0.018</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>
</div>

<div class="installation" lang="en">
### Installation of Dist::CheckConflicts {#installation-of-distcheckconflicts}

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
## Encode::Locale-1.05 {#encodelocale-1.05}

<div class="package" lang="en">
### Introduction to Encode::Locale {#introduction-to-encodelocale}

Encode::Locale determines the locale encoding.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/G/GA/GAAS/Encode-Locale-1.05.tar.gz">https://cpan.metacpan.org/authors/id/G/GA/GAAS/Encode-Locale-1.05.tar.gz</a>

-   Download MD5 sum: fcfdb8e4ee34bcf62aed429b4a23db27
</div>
</div>

<div class="installation" lang="en">
### Installation of Encode::Locale {#installation-of-encodelocale}

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
## Eval::Closure-0.14 {#evalclosure-0.14}

<div class="package" lang="en">
### Introduction to Eval::Closure {#introduction-to-evalclosure}

Eval::Closure safely and cleanly creates closures via string eval.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DO/DOY/Eval-Closure-0.14.tar.gz">https://cpan.metacpan.org/authors/id/D/DO/DOY/Eval-Closure-0.14.tar.gz</a>

-   Download MD5 sum: ceeb1fc579ac9af981fa6b600538c285
</div>

#### Eval::Closure Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a> and <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>
</div>

<div class="installation" lang="en">
### Installation of Eval::Closure {#installation-of-evalclosure}

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
## Exception::Class-1.45 {#exceptionclass-1.45}

<div class="package" lang="en">
### Introduction to Exception::Class {#introduction-to-exceptionclass}

Exception::Class allows you to declare real exception classes in <span class="application">Perl</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Exception-Class-1.45.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Exception-Class-1.45.tar.gz</a>

-   Download MD5 sum: 1e564d20b374a99fdf660ba3f36b0098
</div>

#### Exception::Class Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-class-data-inheritable" title="Class::Data::Inheritable-0.10">Class-Data-Inheritable-0.10</a> and <a class="xref" href="perl-deps.md#perl-devel-stacktrace" title="Devel::StackTrace-2.05">Devel-StackTrace-2.05</a>
</div>

<div class="installation" lang="en">
### Installation of Exception::Class {#installation-of-exceptionclass}

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
## Exporter::Tiny-1.006003 {#exportertiny-1.006003}

<div class="package" lang="en">
### Introduction to Exporter::Tiny {#introduction-to-exportertiny}

Exporter::Tiny is an exporter with the features of Sub::Exporter but only core dependencies.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/T/TO/TOBYINK/Exporter-Tiny-1.006003.tar.gz">https://cpan.metacpan.org/authors/id/T/TO/TOBYINK/Exporter-Tiny-1.006003.tar.gz</a>

-   Download MD5 sum: a70bdc039b12f90191e7c5669b2b55f9
</div>
</div>

<div class="installation" lang="en">
### Installation of Exporter::Tiny {#installation-of-exportertiny}

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
## ExtUtils::Config-0.010 {#extutilsconfig-0.010}

<div class="package" lang="en">
### Introduction to ExtUtils::Config {#introduction-to-extutilsconfig}

ExtUtils::Config is a wrapper for Perl's configuration system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Config-0.010.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Config-0.010.tar.gz</a>

-   Download MD5 sum: f455b5743db7b73c80e88133effa3551
</div>
</div>

<div class="installation" lang="en">
### Installation of ExtUtils::Config {#installation-of-extutilsconfig}

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
## ExtUtils::Helpers-0.028 {#extutilshelpers-0.028}

<div class="package" lang="en">
### Introduction to ExtUtils::Helpers {#introduction-to-extutilshelpers}

ExtUtils::Helpers contains various portability utilities for module builders.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Helpers-0.028.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-Helpers-0.028.tar.gz</a>

-   Download MD5 sum: 0687f20ac896a7d01219646908ccdf89
</div>
</div>

<div class="installation" lang="en">
### Installation of ExtUtils::Helpers {#installation-of-extutilshelpers}

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
## ExtUtils::InstallPaths-0.015 {#extutilsinstallpaths-0.015}

<div class="package" lang="en">
### Introduction to ExtUtils::InstallPaths {#introduction-to-extutilsinstallpaths}

ExtUtils::InstallPaths is a tool to resolve perl installation paths.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-InstallPaths-0.015.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/ExtUtils-InstallPaths-0.015.tar.gz</a>

-   Download MD5 sum: 70f17a346e92560b5f5692119edbb161
</div>
</div>

<div class="installation" lang="en">
### Installation of ExtUtils::InstallPaths {#installation-of-extutilsinstallpaths}

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
## ExtUtils::LibBuilder-0.09 {#extutilslibbuilder-0.09}

<div class="package" lang="en">
### Introduction to ExtUtils::LibBuilder {#introduction-to-extutilslibbuilder}

ExtUtils::LibBuilder is a tool to build C libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/A/AM/AMBS/ExtUtils-LibBuilder-0.09.tar.gz">https://cpan.metacpan.org/authors/id/A/AM/AMBS/ExtUtils-LibBuilder-0.09.tar.gz</a>

-   Download MD5 sum: 16115f941df504f65b0f94b7f29e8fbc
</div>

#### ExtUtils::LibBuilder Dependencies

##### Required

<a class="xref" href="perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a>
</div>

<div class="installation" lang="en">
### Installation of ExtUtils::LibBuilder {#installation-of-extutilslibbuilder}

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
## FFI::CheckLib-0.31 {#ffichecklib-0.31}

<div class="package" lang="en">
### Introduction to FFI::CheckLib {#introduction-to-ffichecklib}

FFI::CheckLib checks whether a particular dynamic library is available for FFI (Foreign Function Interface) to use.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/FFI-CheckLib-0.31.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/FFI-CheckLib-0.31.tar.gz</a>

-   Download MD5 sum: ffc8e61bb686dd631bed3ddf102af41c
</div>

#### FFI::CheckLib Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a>, <a class="xref" href="perl-modules.md#perl-file-which" title="File::Which-1.27">File-Which-1.27</a>, <a class="xref" href="perl-deps.md#perl-path-tiny" title="Path::Tiny-0.150">Path-Tiny-0.150</a>, and <a class="xref" href="perl-deps.md#perl-test-simple" title="Test::Simple-1.302219">Test-Simple-1.302219</a>
</div>

<div class="installation" lang="en">
### Installation of FFI::CheckLib {#installation-of-ffichecklib}

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
## File::chdir-0.1011 {#filechdir-0.1011}

<div class="package" lang="en">
### Introduction to File::chdir {#introduction-to-filechdir}

File::chdir provides a more sensible way to change directories.

Perl's chdir() has the unfortunate problem of being very, very, very global. If any part of your program calls chdir() or if any library you use calls chdir(), it changes the current working directory for the \*whole\* program. File::chdir gives you an alternative, \$CWD and \@CWD.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/File-chdir-0.1011.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/File-chdir-0.1011.tar.gz</a>

-   Download MD5 sum: 932090f6c5f602301ae66c259de23ebb
</div>
</div>

<div class="installation" lang="en">
### Installation of File::chdir {#installation-of-filechdir}

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
## File::Copy::Recursive-0.45 {#filecopyrecursive-0.45}

<div class="package" lang="en">
### Introduction to File::Copy::Recursive {#introduction-to-filecopyrecursive}

This module copies and moves directories recursively (or single files), to an optional depth and attempts to preserve each file or directory's mode.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DM/DMUEY/File-Copy-Recursive-0.45.tar.gz">https://cpan.metacpan.org/authors/id/D/DM/DMUEY/File-Copy-Recursive-0.45.tar.gz</a>

-   Download MD5 sum: e5eee1a3f8ae3aebbac063ea54870e54
</div>

#### File::Copy::Recursive Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-path-tiny" title="Path::Tiny-0.150">Path-Tiny-0.150</a>, <a class="xref" href="perl-deps.md#perl-test-deep" title="Test::Deep-1.205">Test-Deep-1.205</a>, <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-file" title="Test::File-1.995">Test-File-1.995</a>, and <a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a>
</div>

<div class="installation" lang="en">
### Installation of File::Copy::Recursive {#installation-of-filecopyrecursive}

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
## File::Find::Rule-0.35 {#filefindrule-0.35}

<div class="package" lang="en">
### Introduction to File::Find::Rule {#introduction-to-filefindrule}

File::Find::Rule is a friendlier interface to File::Find. It allows you to build rules which specify the desired files and directories.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/File-Find-Rule-0.35.tar.gz">https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/File-Find-Rule-0.35.tar.gz</a>

-   Download MD5 sum: a4820609e21b6b85dba26d9e94523d0a
</div>

#### File::Find::Rule Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-number-compare" title="Number::Compare-0.03">Number-Compare-0.03</a> and <a class="xref" href="perl-deps.md#perl-text-glob" title="Text::Glob-0.11">Text-Glob-0.11</a>
</div>

<div class="installation" lang="en">
### Installation of File::Find::Rule {#installation-of-filefindrule}

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
**Installed Programs:** <span class="segbody">findrule</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -----------------------------------------------
  <a id="findrule-prog"></a><span class="command"><span class="term"><strong>findrule</strong></span></span>   is a command line wrapper to File::Find::Rule
  ----------------------------------------------------- -----------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## File::Listing-6.16 {#filelisting-6.16}

<div class="package" lang="en">
### Introduction to File::Listing {#introduction-to-filelisting}

File::Listing parses a directory listing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/File-Listing-6.16.tar.gz">https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/File-Listing-6.16.tar.gz</a>

-   Download MD5 sum: d4fc8b0c86633d1fa5bf75323720eadc
</div>

#### File::Listing Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-http-date" title="HTTP::Date-6.06">HTTP-Date-6.06</a>
</div>

<div class="installation" lang="en">
### Installation of File::Listing {#installation-of-filelisting}

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
## File::ShareDir-1.118 {#filesharedir-1.118}

<div class="package" lang="en">
### Introduction to File::ShareDir {#introduction-to-filesharedir}

File::ShareDir allows you to access data files which have been installed by File::ShareDir::Install.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RE/REHSACK/File-ShareDir-1.118.tar.gz">https://cpan.metacpan.org/authors/id/R/RE/REHSACK/File-ShareDir-1.118.tar.gz</a>

-   Download MD5 sum: 0084f730f4e3d4d89703d92b3ea82f54
</div>

#### File::ShareDir Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-class-inspector" title="Class::Inspector-1.36">Class-Inspector-1.36</a> and <a class="xref" href="perl-deps.md#perl-file-sharedir-install" title="File::ShareDir::Install-0.14">File-ShareDir-Install-0.14</a>
</div>

<div class="installation" lang="en">
### Installation of File::ShareDir {#installation-of-filesharedir}

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
## File::ShareDir::Install-0.14 {#filesharedirinstall-0.14}

<div class="package" lang="en">
### Introduction to File::ShareDir::Install {#introduction-to-filesharedirinstall}

File::ShareDir::Install allows you to install read-only data files from a distribution.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/File-ShareDir-Install-0.14.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/File-ShareDir-Install-0.14.tar.gz</a>

-   Download MD5 sum: bac4d924f3d863b00648ab56ec0dcbdc
</div>
</div>

<div class="installation" lang="en">
### Installation of File::ShareDir::Install {#installation-of-filesharedirinstall}

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
## HTML::Tagset-3.24 {#htmltagset-3.24}

<div class="package" lang="en">
### Introduction to HTML::Tagset {#introduction-to-htmltagset}

HTML::Tagset provides several data tables useful in parsing HTML.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PE/PETDANCE/HTML-Tagset-3.24.tar.gz">https://cpan.metacpan.org/authors/id/P/PE/PETDANCE/HTML-Tagset-3.24.tar.gz</a>

-   Download MD5 sum: f8db8974f5e7fe7df2a58263a7b00552
</div>
</div>

<div class="installation" lang="en">
### Installation of HTML::Tagset {#installation-of-htmltagset}

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
## HTTP::CookieJar-0.014 {#httpcookiejar-0.014}

<div class="package" lang="en">
### Introduction to HTTP::CookieJar {#introduction-to-httpcookiejar}

HTTP::CookieJar provides a minimalist HTTP user agent cookie jar.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/HTTP-CookieJar-0.014.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/HTTP-CookieJar-0.014.tar.gz</a>

-   Download MD5 sum: a1d891ce0046f1a2c19e2c617d624d0d
</div>

#### HTTP::CookieJar Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-http-date" title="HTTP::Date-6.06">HTTP-Date-6.06</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-deep" title="Test::Deep-1.205">Test-Deep-1.205</a>, <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>, and <a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>
</div>

<div class="installation" lang="en">
### Installation of HTTP::CookieJar {#installation-of-httpcookiejar}

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
## HTTP::Cookies-6.11 {#httpcookies-6.11}

<div class="package" lang="en">
### Introduction to HTTP::Cookies {#introduction-to-httpcookies}

HTTP::Cookies provides a class for objects that represent a "cookie jar" -- that is, a database of all the HTTP cookies that a given LWP::UserAgent (from <a class="xref" href="perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a>) object knows about.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Cookies-6.11.tar.gz">https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Cookies-6.11.tar.gz</a>

-   Download MD5 sum: 80017e7e56bdc8ba16dea75789748829
</div>

#### HTTP::Cookies Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-http-message" title="HTTP::Message-7.01">HTTP-Message-7.01</a>
</div>

<div class="installation" lang="en">
### Installation of HTTP::Cookies {#installation-of-httpcookies}

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
## HTTP::Date-6.06 {#httpdate-6.06}

<div class="package" lang="en">
### Introduction to HTTP::Date {#introduction-to-httpdate}

HTTP::Date provides functions to deal with the date formats used by the HTTP protocol and also with some other date formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Date-6.06.tar.gz">https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Date-6.06.tar.gz</a>

-   Download MD5 sum: 60462359bfeb1e6d14602508cfd07885
</div>

#### HTTP::Date Dependencies

##### Recommended

<a class="xref" href="perl-deps.md#perl-timedate" title="TimeDate-2.33">TimeDate-2.33</a> (to allow it to recognize zones other than GMT and numeric)
</div>

<div class="installation" lang="en">
### Installation of HTTP::Date {#installation-of-httpdate}

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
## HTTP::Message-7.01 {#httpmessage-7.01}

<div class="package" lang="en">
### Introduction to HTTP::Message {#introduction-to-httpmessage}

HTTP::Message provides a base class for HTTP style message objects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Message-7.01.tar.gz">https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Message-7.01.tar.gz</a>

-   Download MD5 sum: fc958d64205edb2c76e1673424523932
</div>

#### HTTP::Message Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-clone" title="Clone-0.47">Clone-0.47</a>, <a class="xref" href="perl-deps.md#perl-encode-locale" title="Encode::Locale-1.05">Encode-Locale-1.05</a>, <a class="xref" href="perl-deps.md#perl-http-date" title="HTTP::Date-6.06">HTTP-Date-6.06</a>, <a class="xref" href="perl-deps.md#perl-io-html" title="IO::HTML-1.004">IO-HTML-1.004</a>, <a class="xref" href="perl-deps.md#perl-lwp-mediatypes" title="LWP::MediaTypes-6.04">LWP-MediaTypes-6.04</a>, and <a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a> and <a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>
</div>

<div class="installation" lang="en">
### Installation of HTTP::Message {#installation-of-httpmessage}

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
## HTTP::Negotiate-6.01 {#httpnegotiate-6.01}

<div class="package" lang="en">
### Introduction to HTTP::Negotiate {#introduction-to-httpnegotiate}

HTTP::Negotiate provides a complete implementation of the HTTP content negotiation algorithm.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTTP-Negotiate-6.01.tar.gz">https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTTP-Negotiate-6.01.tar.gz</a>

-   Download MD5 sum: 1236195250e264d7436e7bb02031671b
</div>

#### HTTP::Negotiate Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-http-message" title="HTTP::Message-7.01">HTTP-Message-7.01</a>
</div>

<div class="installation" lang="en">
### Installation of HTTP::Negotiate {#installation-of-httpnegotiate}

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
## IO::HTML-1.004 {#iohtml-1.004}

<div class="package" lang="en">
### Introduction to IO::HTML {#introduction-to-iohtml}

IO::HTML opens an HTML file with automatic character set detection.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/C/CJ/CJM/IO-HTML-1.004.tar.gz">https://cpan.metacpan.org/authors/id/C/CJ/CJM/IO-HTML-1.004.tar.gz</a>

-   Download MD5 sum: 04bbe363686fd19bfb4cc0ed775e3d03
</div>
</div>

<div class="installation" lang="en">
### Installation of IO::HTML {#installation-of-iohtml}

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
## IPC::System::Simple-1.30 {#ipcsystemsimple-1.30}

<div class="package" lang="en">
### Introduction to IPC::System::Simple {#introduction-to-ipcsystemsimple}

IPC::System::Simple takes the hard work out of calling external commands and producing detailed diagnostics.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/J/JK/JKEENAN/IPC-System-Simple-1.30.tar.gz">https://cpan.metacpan.org/authors/id/J/JK/JKEENAN/IPC-System-Simple-1.30.tar.gz</a>

-   Download MD5 sum: e68341fd958fd013b3521d909904f675
</div>
</div>

<div class="installation" lang="en">
### Installation of IPC::System::Simple {#installation-of-ipcsystemsimple}

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
## List::MoreUtils::XS-0.430 {#listmoreutilsxs-0.430}

<div class="package" lang="en">
### Introduction to List::MoreUtils::XS {#introduction-to-listmoreutilsxs}

List::MoreUtils::XS is a compiled backend for List::MoreUtils

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-XS-0.430.tar.gz">https://cpan.metacpan.org/authors/id/R/RE/REHSACK/List-MoreUtils-XS-0.430.tar.gz</a>

-   Download MD5 sum: e77113e55b046906aecfb4ddb4f0c662
</div>
</div>

<div class="installation" lang="en">
### Installation of List::MoreUtils::XS {#installation-of-listmoreutilsxs}

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
## List::SomeUtils-0.59 {#listsomeutils-0.59}

<div class="package" lang="en">
### Introduction to List::SomeUtils {#introduction-to-listsomeutils}

List::SomeUtils provides the stuff missing in List::Util.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-0.59.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-0.59.tar.gz</a>

-   Download MD5 sum: 333b4adb2907deff2be8da5899881453
</div>

#### List::SomeUtils Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-module-implementation" title="Module::Implementation-0.09">Module-Implementation-0.09</a> and <a class="xref" href="perl-deps.md#perl-list-someutils-xs" title="List::SomeUtils::XS-0.58">List-SomeUtils-XS-0.58</a>
</div>

<div class="installation" lang="en">
### Installation of List::SomeUtils {#installation-of-listsomeutils}

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
## List::SomeUtils::XS-0.58 {#listsomeutilsxs-0.58}

<div class="package" lang="en">
### Introduction to List::SomeUtils::XS {#introduction-to-listsomeutilsxs}

List::SomeUtils::XS is a (faster) XS (eXternal Subroutine) implementation for List::SomeUtils.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-XS-0.58.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/List-SomeUtils-XS-0.58.tar.gz</a>

-   Download MD5 sum: 396eabe83a75fcb8d7542d95812469d1
</div>

#### List::SomeUtils::XS Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-leaktrace" title="Test::LeakTrace-0.17">Test-LeakTrace-0.17</a> and <a class="xref" href="perl-deps.md#perl-test-warnings" title="Test::Warnings-0.038">Test-Warnings-0.038</a>
</div>

<div class="installation" lang="en">
### Installation of List::SomeUtils::XS {#installation-of-listsomeutilsxs}

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
## List::UtilsBy-0.12 {#listutilsby-0.12}

<div class="package" lang="en">
### Introduction to List::UtilsBy {#introduction-to-listutilsby}

List::UtilsBy provides a number of higher-order list utility functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PE/PEVANS/List-UtilsBy-0.12.tar.gz">https://cpan.metacpan.org/authors/id/P/PE/PEVANS/List-UtilsBy-0.12.tar.gz</a>

-   Download MD5 sum: 54a8c7092bc02f29ea6c5ae215eea385
</div>
</div>

<div class="installation" lang="en">
### Installation of List::UtilsBy {#installation-of-listutilsby}

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
## LWP::MediaTypes-6.04 {#lwpmediatypes-6.04}

<div class="package" lang="en">
### Introduction to LWP::MediaTypes {#introduction-to-lwpmediatypes}

LWP::MediaTypes guesses the media type (i.e. the MIME Type) for a file or URL.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/O/OA/OALDERS/LWP-MediaTypes-6.04.tar.gz">https://cpan.metacpan.org/authors/id/O/OA/OALDERS/LWP-MediaTypes-6.04.tar.gz</a>

-   Download MD5 sum: 84b799a90c0d2ce52897a7cb4c0478d0
</div>

#### LWP::MediaTypes Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>
</div>

<div class="installation" lang="en">
### Installation of LWP::MediaTypes {#installation-of-lwpmediatypes}

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
## MIME::Base32-1.303 {#mimebase32-1.303}

<div class="package" lang="en">
### Introduction to MIME::Base32 {#introduction-to-mimebase32}

MIME::Base32 is for Encoding/Decoding data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RE/REHSACK/MIME-Base32-1.303.tar.gz">https://cpan.metacpan.org/authors/id/R/RE/REHSACK/MIME-Base32-1.303.tar.gz</a>

-   Download MD5 sum: 0c7735fa09e74c7f2ec93d1890b8c6c0
</div>
</div>

<div class="installation" lang="en">
### Installation of MIME::Base32 {#installation-of-mimebase32}

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
## MIME::Charset-1.013.1 {#mimecharset-1.013.1}

<div class="package" lang="en">
### Introduction to MIME::Charset {#introduction-to-mimecharset}

MIME::Charset provides information about character sets used for MIME messages on the internet, such as their encodings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/N/NE/NEZUMI/MIME-Charset-1.013.1.tar.gz">https://cpan.metacpan.org/authors/id/N/NE/NEZUMI/MIME-Charset-1.013.1.tar.gz</a>

-   Download MD5 sum: b1932cfc806c8deb1b4a20d6afbfa8ac
</div>

#### MIME::Charset Dependencies

##### Recommended

<a class="xref" href="perl-modules.md#perl-encode-eucjpascii" title="Encode::EUCJPASCII-0.03">Encode-EUCJPASCII-0.03</a>, <a class="xref" href="perl-modules.md#perl-encode-hanextra" title="Encode::HanExtra-0.23">Encode-HanExtra-0.23</a> and <a class="xref" href="perl-modules.md#perl-encode-jis2k" title="Encode::JIS2K-0.05">Encode-JIS2K-0.05</a> (because all are required by <a class="xref" href="../pst/biber.md" title="biber-2.21">biber-2.21</a>)
</div>

<div class="installation" lang="en">
### Installation of MIME::Charset {#installation-of-mimecharset}

This module uses a variant of the standard build and installation instructions:

```bash
yes '' | perl Makefile.PL &&
make             &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations}

<span class="command"><strong>yes \|</strong></span>: Perl will ask if you wish to install a further module for handling legacy Japanese encodings, and another which it would use for translating documentation to Japanese. The default option is 'n', using 'yes' allows you to script the build.
</div>
</div>

<div class="sect2" lang="en">
## Module::Build::Tiny-0.053 {#modulebuildtiny-0.053}

<div class="package" lang="en">
### Introduction to Module::Build::Tiny {#introduction-to-modulebuildtiny}

Module::Build::Tiny is a simplified version of <a class="xref" href="perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-Tiny-0.053.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-Tiny-0.053.tar.gz</a>

-   Download MD5 sum: 606d1f830f0475b6de53b82aa3e5d36a
</div>

#### Module::Build::Tiny Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-extutils-config" title="ExtUtils::Config-0.010">ExtUtils-Config-0.010</a>, <a class="xref" href="perl-deps.md#perl-extutils-helpers" title="ExtUtils::Helpers-0.028">ExtUtils-Helpers-0.028</a>, and <a class="xref" href="perl-deps.md#perl-extutils-installpaths" title="ExtUtils::InstallPaths-0.015">ExtUtils-InstallPaths-0.015</a>
</div>

<div class="installation" lang="en">
### Installation of Module::Build::Tiny {#installation-of-modulebuildtiny}

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
## Module::Implementation-0.09 {#moduleimplementation-0.09}

<div class="package" lang="en">
### Introduction to Module::Implementation {#introduction-to-moduleimplementation}

Module::Implementation loads one of several alternate underlying implementations of a module (e.g. eXternal Subroutine or pure Perl, or an implementation for a given OS).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Module-Implementation-0.09.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Module-Implementation-0.09.tar.gz</a>

-   Download MD5 sum: 52e3fe0ca6b1eff0488d59b7aacc0667
</div>

#### Module::Implementation Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-module-runtime" title="Module::Runtime-0.018">Module-Runtime-0.018</a> and <a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a> and <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>
</div>

<div class="installation" lang="en">
### Installation of Module::Implementation {#installation-of-moduleimplementation}

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
## Module::Pluggable-6.3 {#modulepluggable-6.3}

<div class="package" lang="en">
### Introduction to Module::Pluggable {#introduction-to-modulepluggable}

Module::Pluggable provides a way of having 'plugins' for your module.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/S/SI/SIMONW/Module-Pluggable-6.3.tar.gz">https://cpan.metacpan.org/authors/id/S/SI/SIMONW/Module-Pluggable-6.3.tar.gz</a>

-   Download MD5 sum: 442bb8838a2b7053aa276a41233b0607
</div>
</div>

<div class="installation" lang="en">
### Installation of Module::Pluggable {#installation-of-modulepluggable}

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
## Module::Runtime-0.018 {#moduleruntime-0.018}

<div class="package" lang="en">
### Introduction to Module::Runtime {#introduction-to-moduleruntime}

Module::Runtime provides functions to deal with runtime handling of <span class="application">Perl</span> modules.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HA/HAARG/Module-Runtime-0.018.tar.gz">https://cpan.metacpan.org/authors/id/H/HA/HAARG/Module-Runtime-0.018.tar.gz</a>

-   Download MD5 sum: 455eedb62183b9d9e437c59c375c1054
</div>
</div>

<div class="installation" lang="en">
### Installation of Module::Runtime {#installation-of-moduleruntime}

Although Module::Build is still listed as a prerequisite, it is no-longer necessary on systems with a working <span class="command"><strong>make</strong></span>.

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
## MRO::Compat-0.15 {#mrocompat-0.15}

<div class="package" lang="en">
### Introduction to MRO::Compat {#introduction-to-mrocompat}

The "mro" namespace provides several utilities for dealing with method resolution order and method caching in general in Perl 5.9.5 and higher. This module provides those interfaces for earlier versions of Perl.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HA/HAARG/MRO-Compat-0.15.tar.gz">https://cpan.metacpan.org/authors/id/H/HA/HAARG/MRO-Compat-0.15.tar.gz</a>

-   Download MD5 sum: f644dafe901214cedfa7ed8b43b56df1
</div>
</div>

<div class="installation" lang="en">
### Installation of MRO::Compat {#installation-of-mrocompat}

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
## namespace::autoclean-0.31 {#namespaceautoclean-0.31}

<div class="package" lang="en">
### Introduction to namespace::autoclean {#introduction-to-namespaceautoclean}

This module is very similar to namespace::clean, except it will clean all imported functions, no matter if you imported them before or after you used the pragma. It will also not touch anything that looks like a method.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/namespace-autoclean-0.31.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/namespace-autoclean-0.31.tar.gz</a>

-   Download MD5 sum: abd25263af155ab70bf7a039247400d3
</div>

#### namespace::autoclean Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-namespace-clean" title="namespace::clean-0.27">namespace-clean-0.27</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a>
</div>

<div class="installation" lang="en">
### Installation of namespace::autoclean {#installation-of-namespaceautoclean}

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
## namespace::clean-0.27 {#namespaceclean-0.27}

<div class="package" lang="en">
### Introduction to namespace::clean {#introduction-to-namespaceclean}

This package allows you to keep imports and functions out of your namespace.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RI/RIBASUSHI/namespace-clean-0.27.tar.gz">https://cpan.metacpan.org/authors/id/R/RI/RIBASUSHI/namespace-clean-0.27.tar.gz</a>

-   Download MD5 sum: cba97f39ef7e594bd8489b4fdcddb662
</div>

#### namespace::clean Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-b-hooks-endofscope" title="B::Hooks::EndOfScope-0.28">B-Hooks-EndOfScope-0.28</a> and <a class="xref" href="perl-deps.md#perl-package-stash" title="Package::Stash-0.40">Package-Stash-0.40</a>
</div>

<div class="installation" lang="en">
### Installation of namespace::clean {#installation-of-namespaceclean}

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
## Net::HTTP-6.24 {#nethttp-6.24}

<div class="package" lang="en">
### Introduction to Net::HTTP {#introduction-to-nethttp}

The Net::HTTP class is a low level HTTP client. An instance of the class represents a connection to an HTTP server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/O/OA/OALDERS/Net-HTTP-6.24.tar.gz">https://cpan.metacpan.org/authors/id/O/OA/OALDERS/Net-HTTP-6.24.tar.gz</a>

-   Download MD5 sum: 3728289552dc5031700596e0cf4092b4
</div>

#### Net::HTTP Dependencies

##### Required

<a class="xref" href="perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>
</div>

<div class="installation" lang="en">
### Installation of Net::HTTP {#installation-of-nethttp}

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
## Net::SSLeay-1.96 {#netssleay-1.96}

<div class="package" lang="en">
### Introduction to Net::SSLeay {#introduction-to-netssleay}

Net::SSLeay is a Perl extension for using OpenSSL.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz">https://cpan.metacpan.org/authors/id/C/CH/CHRISN/Net-SSLeay-1.96.tar.gz</a>

-   Download MD5 sum: 63772ad94b874b5f0f025c2a4285f82f
</div>

#### Additional Download

<div class="itemizedlist">
-   Required patch (for openssl-4): <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/Net-SSLeay-1.96-openssl4_fixes-2.patch">https://www.linuxfromscratch.org/patches/blfs/svn/Net-SSLeay-1.96-openssl4_fixes-2.patch</a>
</div>
</div>

<div class="installation" lang="en">
### Installation of Net::SSLeay {#installation-of-netssleay}

First, apply a patch to support OpenSSL-4:

```bash
patch -Np1 -i ../Net-SSLeay-1.96-openssl4_fixes-2.patch
```

This module uses a variant of the standard build and installation instructions:

```bash
yes '' | perl Makefile.PL &&
make                      &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-1}

<span class="command"><strong>yes ''</strong></span>: Perl will ask if you wish to run external tests, which will fail if you do not have network connectivity. The default is 'n', specifying this allows you to script the build.
</div>
</div>

<div class="sect2" lang="en">
## Number::Compare-0.03 {#numbercompare-0.03}

<div class="package" lang="en">
### Introduction to Number::Compare {#introduction-to-numbercompare}

Number::Compare compiles a simple comparison to an anonymous subroutine, which you can call with a value to be tested against. It understands IEC standard magnitudes (k, ki, m, mi, g, gi).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Number-Compare-0.03.tar.gz">https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Number-Compare-0.03.tar.gz</a>

-   Download MD5 sum: ded4085a8fc96328742785574ca65208
</div>
</div>

<div class="installation" lang="en">
### Installation of Number::Compare {#installation-of-numbercompare}

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
## Package::Stash-0.40 {#packagestash-0.40}

<div class="package" lang="en">
### Introduction to Package::Stash {#introduction-to-packagestash}

Manipulating stashes (Perl's symbol tables) is occasionally necessary, but incredibly messy, and easy to get wrong. This module hides all of that behind a simple API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/Package-Stash-0.40.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/Package-Stash-0.40.tar.gz</a>

-   Download MD5 sum: 7a2922941cc2aad6a52642e4fb13d07b
</div>

#### Package::Stash Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-dist-checkconflicts" title="Dist::CheckConflicts-0.11">Dist-CheckConflicts-0.11</a> and <a class="xref" href="perl-deps.md#perl-module-implementation" title="Module::Implementation-0.09">Module-Implementation-0.09</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-cpan-meta-check" title="CPAN::Meta::Check-0.018">CPAN-Meta-Check-0.018</a>, <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, and <a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a>
</div>

<div class="installation" lang="en">
### Installation of Package::Stash {#installation-of-packagestash}

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
## Params::Validate-1.31 {#paramsvalidate-1.31}

<div class="package" lang="en">
### Introduction to Params::Validate {#introduction-to-paramsvalidate}

Params::Validate allows you to validate method or function call parameters to an arbitrary level of specificity.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-Validate-1.31.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-Validate-1.31.tar.gz</a>

-   Download MD5 sum: ef5f57387c2c9032b59fb23023cf5b25
</div>

#### Params::Validate Dependencies

##### Required

<a class="xref" href="perl-modules.md#perl-module-build" title="Module::Build-0.4234">Module-Build-0.4234</a> and <a class="xref" href="perl-deps.md#perl-module-implementation" title="Module::Implementation-0.09">Module-Implementation-0.09</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a> and <a class="xref" href="perl-deps.md#perl-test-requires" title="Test::Requires-0.11">Test-Requires-0.11</a>
</div>

<div class="installation" lang="en">
### Installation of Params::Validate {#installation-of-paramsvalidate}

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
## Params::ValidationCompiler-0.31 {#paramsvalidationcompiler-0.31}

<div class="package" lang="en">
### Introduction to Params::ValidationCompiler {#introduction-to-paramsvalidationcompiler}

Params::ValidationCompiler builds an optimized subroutine parameter validator.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-ValidationCompiler-0.31.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Params-ValidationCompiler-0.31.tar.gz</a>

-   Download MD5 sum: 15528055f3f53c8cfebbee1f928dec07
</div>

#### Params::ValidationCompiler Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-exception-class" title="Exception::Class-1.45">Exception-Class-1.45</a> and <a class="xref" href="perl-deps.md#perl-specio" title="Specio-0.53">Specio-0.53</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-without-module" title="Test::Without::Module-0.23">Test-Without-Module-0.23</a> and <a class="xref" href="perl-deps.md#perl-test2-plugin-nowarnings" title="Test2::Plugin::NoWarnings-0.10">Test2-Plugin-NoWarnings-0.10</a>
</div>

<div class="installation" lang="en">
### Installation of Params::ValidationCompiler {#installation-of-paramsvalidationcompiler}

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
## Path::Tiny-0.150 {#pathtiny-0.150}

<div class="package" lang="en">
### Introduction to Path::Tiny {#introduction-to-pathtiny}

Path::Tiny provides a small fast utility for working with file paths.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Path-Tiny-0.150.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Path-Tiny-0.150.tar.gz</a>

-   Download MD5 sum: 7126ad3d5c14a32a5f4bde0054f57449
</div>
</div>

<div class="installation" lang="en">
### Installation of Path::Tiny {#installation-of-pathtiny}

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
## Role::Tiny-2.002004 {#roletiny-2.002004}

<div class="package" lang="en">
### Introduction to Role::Tiny {#introduction-to-roletiny}

Role::Tiny is a minimalist role composition tool.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HA/HAARG/Role-Tiny-2.002004.tar.gz">https://cpan.metacpan.org/authors/id/H/HA/HAARG/Role-Tiny-2.002004.tar.gz</a>

-   Download MD5 sum: 9ee45591befa3d0b1094ac75d282b6ba
</div>
</div>

<div class="installation" lang="en">
### Installation of Role::Tiny {#installation-of-roletiny}

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
## Scope::Guard-0.21 {#scopeguard-0.21}

<div class="package" lang="en">
### Introduction to Scope::Guard {#introduction-to-scopeguard}

Scope::Guard provides a convenient way to perform cleanup or other forms of resource management at the end of a scope.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/C/CH/CHOCOLATE/Scope-Guard-0.21.tar.gz">https://cpan.metacpan.org/authors/id/C/CH/CHOCOLATE/Scope-Guard-0.21.tar.gz</a>

-   Download MD5 sum: be57b915d23ddac7677ef2ad9e52b92a
</div>
</div>

<div class="installation" lang="en">
### Installation of Scope::Guard {#installation-of-scopeguard}

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
## Specio-0.53 {#specio-0.53}

<div class="package" lang="en">
### Introduction to Specio {#introduction-to-specio}

Specio provides classes for representing type constraints and coercion, along with syntax sugar for declaring them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Specio-0.53.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Specio-0.53.tar.gz</a>

-   Download MD5 sum: 2665608c5ca3d502146bfe9207831838
</div>

#### Specio Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-devel-stacktrace" title="Devel::StackTrace-2.05">Devel-StackTrace-2.05</a>, <a class="xref" href="perl-deps.md#perl-eval-closure" title="Eval::Closure-0.14">Eval-Closure-0.14</a>, <a class="xref" href="perl-deps.md#perl-module-runtime" title="Module::Runtime-0.018">Module-Runtime-0.018</a>, <a class="xref" href="perl-deps.md#perl-role-tiny" title="Role::Tiny-2.002004">Role-Tiny-2.002004</a>, <a class="xref" href="perl-deps.md#perl-sub-quote" title="Sub::Quote-2.006009">Sub-Quote-2.006009</a>, and <a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-mro-compat" title="MRO::Compat-0.15">MRO-Compat-0.15</a>, <a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>, and <a class="xref" href="perl-deps.md#perl-test-needs" title="Test::Needs-0.002010">Test-Needs-0.002010</a>

##### Optional

<a class="xref" href="perl-deps.md#perl-namespace-autoclean" title="namespace::autoclean-0.31">namespace-autoclean-0.31</a> (for the test suite)
</div>

<div class="installation" lang="en">
### Installation of Specio {#installation-of-specio}

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
## Sub::Exporter::Progressive-0.001013 {#subexporterprogressive-0.001013}

<div class="package" lang="en">
### Introduction to Sub::Exporter::Progressive {#introduction-to-subexporterprogressive}

Sub::Exporter::Progressive is a wrapper for Sub::Exporter.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/F/FR/FREW/Sub-Exporter-Progressive-0.001013.tar.gz">https://cpan.metacpan.org/authors/id/F/FR/FREW/Sub-Exporter-Progressive-0.001013.tar.gz</a>

-   Download MD5 sum: 72cf6acdd2a0a8b105821a4db98e4ebe
</div>
</div>

<div class="installation" lang="en">
### Installation of Sub::Exporter::Progressive {#installation-of-subexporterprogressive}

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
## Sub::Quote-2.006009 {#subquote-2.006009}

<div class="package" lang="en">
### Introduction to Sub::Quote {#introduction-to-subquote}

Sub::Quote provides ways to generate subroutines from strings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HA/HAARG/Sub-Quote-2.006009.tar.gz">https://cpan.metacpan.org/authors/id/H/HA/HAARG/Sub-Quote-2.006009.tar.gz</a>

-   Download MD5 sum: 8f4600b812f6106a1f907ee47a87bd1d
</div>
</div>

<div class="installation" lang="en">
### Installation of Sub::Quote {#installation-of-subquote}

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
## Sub::Uplevel-0.2800 {#subuplevel-0.2800}

<div class="package" lang="en">
### Introduction to Sub::Uplevel {#introduction-to-subuplevel}

Sub::Uplevel allows you to fool a caller that it is running in a higher stack frame.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Sub-Uplevel-0.2800.tar.gz">https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/Sub-Uplevel-0.2800.tar.gz</a>

-   Download MD5 sum: 6c6a174861fd160e8d5871a86df00baf
</div>
</div>

<div class="installation" lang="en">
### Installation of Sub::Uplevel {#installation-of-subuplevel}

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
## Term::Table-0.028 {#termtable-0.028}

<div class="package" lang="en">
### Introduction to Term::Table {#introduction-to-termtable}

Term::Table formats a header and rows into a table. This is used by some failing tests to provide diagnostics about what has gone wrong.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Term-Table-0.028.tar.gz">https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Term-Table-0.028.tar.gz</a>

-   Download MD5 sum: 28c3c03c85938a37e92d24413d0953ec
</div>

#### Term::Table Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-simple" title="Test::Simple-1.302219">Test-Simple-1.302219</a>
</div>

<div class="installation" lang="en">
### Installation of Term::Table {#installation-of-termtable}

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
## Test::Deep-1.205 {#testdeep-1.205}

<div class="package" lang="en">
### Introduction to Test::Deep {#introduction-to-testdeep}

Test::Deep gives you very flexible ways to check that the result you got is the result you were expecting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Deep-1.205.tar.gz">https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Deep-1.205.tar.gz</a>

-   Download MD5 sum: 02a83480ffeaf93e7498c4dbd5b507b1
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Deep {#installation-of-testdeep}

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
## Test::Exception-0.43 {#testexception-0.43}

<div class="package" lang="en">
### Introduction to Test::Exception {#introduction-to-testexception}

Test::Exception provides convenience methods for testing exception based code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Exception-0.43.tar.gz">https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Exception-0.43.tar.gz</a>

-   Download MD5 sum: 572d355026fb0b87fc2b8c64b83cada0
</div>

#### Test::Exception Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-sub-uplevel" title="Sub::Uplevel-0.2800">Sub-Uplevel-0.2800</a>
</div>

<div class="installation" lang="en">
### Installation of Test::Exception {#installation-of-testexception}

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
## Test::Fatal-0.018 {#testfatal-0.018}

<div class="package" lang="en">
### Introduction to Test::Fatal {#introduction-to-testfatal}

The Test::Fatal module provides simple helpers for testing code which throws exceptions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Fatal-0.018.tar.gz">https://cpan.metacpan.org/authors/id/R/RJ/RJBS/Test-Fatal-0.018.tar.gz</a>

-   Download MD5 sum: 51a097a5e0af012569b890441e6533c8
</div>

#### Test::Fatal Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-try-tiny" title="Try::Tiny-0.32">Try-Tiny-0.32</a>
</div>

<div class="installation" lang="en">
### Installation of Test::Fatal {#installation-of-testfatal}

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
## Test::File-1.995 {#testfile-1.995}

<div class="package" lang="en">
### Introduction to Test::File {#introduction-to-testfile}

Test::File provides a collection of test utilities for file attributes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Test-File-1.995.tar.gz">https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Test-File-1.995.tar.gz</a>

-   Download MD5 sum: 865b7e00fa68431596e1933d523506ab
</div>

#### Test::File Dependencies

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-utf8" title="Test::utf8-1.03">Test-utf8-1.03</a>
</div>

<div class="installation" lang="en">
### Installation of Test::File {#installation-of-testfile}

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
## Test::File::ShareDir-1.001002 {#testfilesharedir-1.001002}

<div class="package" lang="en">
### Introduction to Test::File::ShareDir {#introduction-to-testfilesharedir}

Test::File::ShareDir is some low level plumbing to enable a distribution to perform tests while consuming its own share directories in a manner similar to how they will be once installed. This allows <a class="xref" href="perl-deps.md#perl-file-sharedir" title="File::ShareDir-1.118">File-ShareDir-1.118</a> to see the latest version of content instead of whatever is installed on the target system where you are testing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/K/KE/KENTNL/Test-File-ShareDir-1.001002.tar.gz">https://cpan.metacpan.org/authors/id/K/KE/KENTNL/Test-File-ShareDir-1.001002.tar.gz</a>

-   Download MD5 sum: ec31466aa44c1cd56c6cb51d7ec3a5de
</div>

#### Test::File::ShareDir Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-class-tiny" title="Class::Tiny-1.008">Class-Tiny-1.008</a>, <a class="xref" href="perl-deps.md#perl-file-copy-recursive" title="File::Copy::Recursive-0.45">File-Copy-Recursive-0.45</a>, <a class="xref" href="perl-deps.md#perl-file-sharedir" title="File::ShareDir-1.118">File-ShareDir-1.118</a>, <a class="xref" href="perl-deps.md#perl-path-tiny" title="Path::Tiny-0.150">Path-Tiny-0.150</a>, and <a class="xref" href="perl-deps.md#perl-scope-guard" title="Scope::Guard-0.21">Scope-Guard-0.21</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-deps.md#perl-test-fatal" title="Test::Fatal-0.018">Test-Fatal-0.018</a>
</div>

<div class="installation" lang="en">
### Installation of Test::File::ShareDir {#installation-of-testfilesharedir}

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
## Test::LeakTrace-0.17 {#testleaktrace-0.17}

<div class="package" lang="en">
### Introduction to Test::LeakTrace {#introduction-to-testleaktrace}

Test::LeakTrace traces memory leaks.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/L/LE/LEEJO/Test-LeakTrace-0.17.tar.gz">https://cpan.metacpan.org/authors/id/L/LE/LEEJO/Test-LeakTrace-0.17.tar.gz</a>

-   Download MD5 sum: afdb2cc6be0807cb635fb601a004d522
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::LeakTrace {#installation-of-testleaktrace}

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
## Test::Needs-0.002010 {#testneeds-0.002010}

<div class="package" lang="en">
### Introduction to Test::Needs {#introduction-to-testneeds}

Test::Needs skips tests if a requested module is not present.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-0.002010.tar.gz">https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-0.002010.tar.gz</a>

-   Download MD5 sum: 2b3d10946001561297624e7668f09c26
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Needs {#installation-of-testneeds}

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
## Test::Requires-0.11 {#testrequires-0.11}

<div class="package" lang="en">
### Introduction to Test::Requires {#introduction-to-testrequires}

The Test::Requires module checks if another (optional) module can be loaded, and if not it skips all the current tests.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/T/TO/TOKUHIROM/Test-Requires-0.11.tar.gz">https://cpan.metacpan.org/authors/id/T/TO/TOKUHIROM/Test-Requires-0.11.tar.gz</a>

-   Download MD5 sum: 999d6c4e46ea7baae7a5113292e02ed8
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Requires {#installation-of-testrequires}

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
## Test::RequiresInternet-0.05 {#testrequiresinternet-0.05}

<div class="package" lang="en">
### Introduction to Test::RequiresInternet {#introduction-to-testrequiresinternet}

Test::RequiresInternet is intended to easily test network connectivity before functional tests begin to connect to non-local Internet resources.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/M/MA/MALLEN/Test-RequiresInternet-0.05.tar.gz">https://cpan.metacpan.org/authors/id/M/MA/MALLEN/Test-RequiresInternet-0.05.tar.gz</a>

-   Download MD5 sum: 0ba9f1cff4cf90ed2618c2eddfd525d8
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::RequiresInternet {#installation-of-testrequiresinternet}

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
## Test::Simple-1.302219 {#testsimple-1.302219}

<div class="package" lang="en">
### Introduction to Test::Simple {#introduction-to-testsimple}

Test::Simple contains basic utilities for writing tests.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Simple-1.302219.tar.gz">https://cpan.metacpan.org/authors/id/E/EX/EXODIST/Test-Simple-1.302219.tar.gz</a>

-   Download MD5 sum: 3fb91a5748838dbd4e8c64b0ed2add2b
</div>

#### Test::Simple Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-term-table" title="Term::Table-0.028">Term-Table-0.028</a>
</div>

<div class="installation" lang="en">
### Installation of Test::Simple {#installation-of-testsimple}

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
## Test::utf8-1.03 {#testutf8-1.03}

<div class="package" lang="en">
### Introduction to Test::utf8 {#introduction-to-testutf8}

Test::utf8 is a collection of tests useful for dealing with utf8 strings in <span class="application">Perl</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/S/SC/SCHWIGON/Test-utf8-1.03.tar.gz">https://cpan.metacpan.org/authors/id/S/SC/SCHWIGON/Test-utf8-1.03.tar.gz</a>

-   Download MD5 sum: 03e219b5a7d0645b313f557238c0f8b3
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::utf8 {#installation-of-testutf8}

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
## Test::Warnings-0.038 {#testwarnings-0.038}

<div class="package" lang="en">
### Introduction to Test::Warnings {#introduction-to-testwarnings}

Test::Warnings tests for warnings and the lack of them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/Test-Warnings-0.038.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/Test-Warnings-0.038.tar.gz</a>

-   Download MD5 sum: 53f8c543cf362f49f822bdfe31797712
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Warnings {#installation-of-testwarnings}

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
## Test::Without::Module-0.23 {#testwithoutmodule-0.23}

<div class="package" lang="en">
### Introduction to Test::Without::Module {#introduction-to-testwithoutmodule}

This module allows you to deliberately hide modules from a program even though they are installed. This is mostly useful for testing modules that have a fallback when a certain dependency module is not installed.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/C/CO/CORION/Test-Without-Module-0.23.tar.gz">https://cpan.metacpan.org/authors/id/C/CO/CORION/Test-Without-Module-0.23.tar.gz</a>

-   Download MD5 sum: 58a507875131f63a936e0b971dd18f67
</div>
</div>

<div class="installation" lang="en">
### Installation of Test::Without::Module {#installation-of-testwithoutmodule}

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
## Test2::Plugin::NoWarnings-0.10 {#test2pluginnowarnings-0.10}

<div class="package" lang="en">
### Introduction to Test2::Plugin::NoWarnings {#introduction-to-test2pluginnowarnings}

Test2::Plugin::NoWarnings causes tests to fail if there are any warnings while they run.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Test2-Plugin-NoWarnings-0.10.tar.gz">https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/Test2-Plugin-NoWarnings-0.10.tar.gz</a>

-   Download MD5 sum: d50e21a76f1fef09004092a73b1c065b
</div>

#### Test2::Plugin::NoWarnings Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-test-simple" title="Test::Simple-1.302219">Test-Simple-1.302219</a>

##### Recommended (required for the test suite)

<a class="xref" href="perl-modules.md#perl-ipc-run3" title="IPC::Run3-0.049">IPC-Run3-0.049</a> and <a class="xref" href="perl-deps.md#perl-module-pluggable" title="Module::Pluggable-6.3">Module-Pluggable-6.3</a>
</div>

<div class="installation" lang="en">
### Installation of Test2::Plugin::NoWarnings {#installation-of-test2pluginnowarnings}

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
## Text::CSV_XS-1.62 {#textcsv_xs-1.62}

<div class="package" lang="en">
### Introduction to Text::CSV_XS {#introduction-to-textcsv_xs}

Text::CSV_XS provides facilities for the composition and decomposition of comma-separated values.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/H/HM/HMBRAND/Text-CSV_XS-1.62.tgz">https://cpan.metacpan.org/authors/id/H/HM/HMBRAND/Text-CSV_XS-1.62.tgz</a>

-   Download MD5 sum: d7a3748a5dca671e3ee3f874456993ae
</div>
</div>

<div class="installation" lang="en">
### Installation of Text::CSV_XS {#installation-of-textcsv_xs}

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
## Text::Diff-1.45 {#textdiff-1.45}

<div class="package" lang="en">
### Introduction to Text::Diff {#introduction-to-textdiff}

Text::Diff performs diffs on files and record sets.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/N/NE/NEILB/Text-Diff-1.45.tar.gz">https://cpan.metacpan.org/authors/id/N/NE/NEILB/Text-Diff-1.45.tar.gz</a>

-   Download MD5 sum: edf57b6189f7651a6be454062a4e6d9c
</div>

#### Text::Diff Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-algorithm-diff" title="Algorithm::Diff-1.201">Algorithm-Diff-1.201</a>
</div>

<div class="installation" lang="en">
### Installation of Text::Diff {#installation-of-textdiff}

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
## Text::Glob-0.11 {#textglob-0.11}

<div class="package" lang="en">
### Introduction to Text::Glob {#introduction-to-textglob}

Text::Glob implements <a class="ulink" href="https://man.archlinux.org/man/glob.3">glob(3)</a> style matching that can be used to match against text, rather than fetching names from a filesystem.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Text-Glob-0.11.tar.gz">https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/Text-Glob-0.11.tar.gz</a>

-   Download MD5 sum: d001559c504a2625dd117bd1558f07f7
</div>
</div>

<div class="installation" lang="en">
### Installation of Text::Glob {#installation-of-textglob}

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
## Tie::Cycle-1.233 {#tiecycle-1.233}

<div class="package" lang="en">
### Introduction to Tie::Cycle {#introduction-to-tiecycle}

You use Tie::Cycle to go through a list over and over again. Once you get to the end of the list, you go back to the beginning. You don't have to worry about any of this since the magic of tie does that for you.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Tie-Cycle-1.233.tar.gz">https://cpan.metacpan.org/authors/id/B/BR/BRIANDFOY/Tie-Cycle-1.233.tar.gz</a>

-   Download MD5 sum: 0399e24bfa5c3f6e97479b80741d01b5
</div>
</div>

<div class="installation" lang="en">
### Installation of Tie::Cycle {#installation-of-tiecycle}

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
## TimeDate-2.33 {#timedate-2.33}

<div class="package" lang="en">
### Introduction to TimeDate {#introduction-to-timedate}

TimeDate provides miscellaneous timezone manipulation routines.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/TimeDate-2.33.tar.gz">https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/TimeDate-2.33.tar.gz</a>

-   Download MD5 sum: 5e5afe22c8d417417283d1f7f4572a57
</div>
</div>

<div class="installation" lang="en">
### Installation of TimeDate {#installation-of-timedate}

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
## Try::Tiny-0.32 {#trytiny-0.32}

<div class="package" lang="en">
### Introduction to Try::Tiny {#introduction-to-trytiny}

Try::Tiny provides <span class="command"><strong>try</strong></span> and <span class="command"><strong>catch</strong></span> to expect and handle exceptional conditions, avoiding quirks in <span class="application">Perl</span> and common mistakes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.32.tar.gz">https://cpan.metacpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.32.tar.gz</a>

-   Download MD5 sum: 964424fcada4654bede745a7a2fb870b
</div>

#### Try::Tiny Dependencies

##### Optional (can be used by the test suite)

<a class="xref" href="perl-deps.md#perl-capture-tiny" title="Capture::Tiny-0.50">Capture-Tiny-0.50</a>
</div>

<div class="installation" lang="en">
### Installation of Try::Tiny {#installation-of-trytiny}

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
## Variable::Magic-0.64 {#variablemagic-0.64}

<div class="package" lang="en">
### Introduction to Variable::Magic {#introduction-to-variablemagic}

Magic is Perl's way of enhancing variables. With this module, you can add your own magic to any variable.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/V/VP/VPIT/Variable-Magic-0.64.tar.gz">https://cpan.metacpan.org/authors/id/V/VP/VPIT/Variable-Magic-0.64.tar.gz</a>

-   Download MD5 sum: 957d53fc6614deb593aa6d7cf96d713a
</div>
</div>

<div class="installation" lang="en">
### Installation of Variable::Magic {#installation-of-variablemagic}

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
## WWW::RobotRules-6.02 {#wwwrobotrules-6.02}

<div class="package" lang="en">
### Introduction to WWW::RobotRules {#introduction-to-wwwrobotrules}

WWW::RobotRules parses <code class="filename">robots.txt</code> files, creating a WWW::RobotRules object with methods to check if access to a given URL is prohibited.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/G/GA/GAAS/WWW-RobotRules-6.02.tar.gz">https://cpan.metacpan.org/authors/id/G/GA/GAAS/WWW-RobotRules-6.02.tar.gz</a>

-   Download MD5 sum: b7186e8b8b3701e70c22abf430742403
</div>

#### WWW::RobotRules Dependencies

##### Required (runtime)

<a class="xref" href="perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a> (install this module first and install that later)
</div>

<div class="installation" lang="en">
### Installation of WWW::RobotRules {#installation-of-wwwrobotrules}

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
## XML::LibXML-2.0213 {#xmllibxml-2.0213}

<div class="package" lang="en">
### Introduction to XML::LibXML {#introduction-to-xmllibxml}

XML::LibXML is a perl binding for <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-LibXML-2.0213.tar.gz">https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-LibXML-2.0213.tar.gz</a>

-   Download MD5 sum: 7135bdef80f72a278ca65eb8e2dc13b6
</div>

#### XML::LibXML Dependencies

##### Required

<a class="xref" href="perl-deps.md#perl-alien-libxml2" title="Alien::Libxml2-0.20">Alien-Libxml2-0.20</a> and <a class="xref" href="perl-deps.md#perl-xml-sax" title="XML::SAX-1.02">XML-SAX-1.02</a>
</div>

<div class="installation" lang="en">
### Installation of XML::LibXML {#installation-of-xmllibxml}

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
## XML::NamespaceSupport-1.12 {#xmlnamespacesupport-1.12}

<div class="package" lang="en">
### Introduction to XML::NamespaceSupport {#introduction-to-xmlnamespacesupport}

XML::NamespaceSupport offers a simple way to process namespaced XML names from within any application that may need them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz">https://cpan.metacpan.org/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz</a>

-   Download MD5 sum: a8916c6d095bcf073e1108af02e78c97
</div>
</div>

<div class="installation" lang="en">
### Installation of XML::NamespaceSupport {#installation-of-xmlnamespacesupport}

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
## XML::SAX-1.02 {#xmlsax-1.02}

<div class="package" lang="en">
### Introduction to XML::SAX {#introduction-to-xmlsax}

XML::SAX is a SAX parser access API for Perl. It includes classes and APIs required for implementing SAX drivers, along with a factory class for returning any SAX parser installed on the user's system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz">https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz</a>

-   Download MD5 sum: b62e3754523695c7f5bbcafa3676a38d
</div>

#### XML::SAX Dependencies

##### Required

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="perl-deps.md#perl-xml-namespacesupport" title="XML::NamespaceSupport-1.12">XML-NamespaceSupport-1.12</a>, and <a class="xref" href="perl-deps.md#perl-xml-sax-base" title="XML::SAX::Base-1.09">XML-SAX-Base-1.09</a>
</div>

<div class="installation" lang="en">
### Installation of XML::SAX {#installation-of-xmlsax}

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
### Command Explanations {#command-explanations-2}

<span class="command"><strong>yes</strong></span>: Perl will ask if you want it to alter ParserDetails.ini and then wait for a response. The default is 'y'. Using 'yes' allows you to script this.
</div>
</div>

<div class="sect2" lang="en">
## XML::SAX::Base-1.09 {#xmlsaxbase-1.09}

<div class="package" lang="en">
### Introduction to XML::SAX::Base {#introduction-to-xmlsaxbase}

This module has a very simple task - to be a base class for PerlSAX drivers and filters.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz">https://cpan.metacpan.org/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz</a>

-   Download MD5 sum: ec347a14065dd7aec7d9fb181b2d7946
</div>
</div>

<div class="installation" lang="en">
### Installation of XML::SAX-Base {#installation-of-xmlsax-base}

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
</div>

<div class="navfooter">
-   [Prev](perl-modules.md "Perl Modules")

    Perl Modules

-   [Next](php.md "PHP-8.5.6")

    PHP-8.5.6

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
