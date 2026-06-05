<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](genutils.md "General Utilities")

    General Utilities

-   [Next](bogofilter.md "Bogofilter-1.2.5")

    Bogofilter-1.2.5

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Asciidoctor-2.0.26 {#asciidoctor-2.0.26}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Asciidoctor {#introduction-to-asciidoctor}

Asciidoctor is a fast, open source text processor and publishing toolchain for converting AsciiDoc content to HTML5, DocBook, PDF, and other formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/asciidoctor/asciidoctor/archive/v2.0.26/asciidoctor-2.0.26.tar.gz">https://github.com/asciidoctor/asciidoctor/archive/v2.0.26/asciidoctor-2.0.26.tar.gz</a>

-   Download MD5 sum: 2bfb3830092af1dc213a99e785688372

-   Download size: 1.6 MB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Asciidoctor Dependencies

#### Required

<a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>
</div>

<div class="installation" lang="en">
## Installation of Asciidoctor {#installation-of-asciidoctor}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When building this package, the following message may appear:

```console
fatal: not a git repository (or any of the parent directories): .git
```

. This is normal, and the package will continue building past this point.
</div>

Build the Ruby gem:

```bash
gem build asciidoctor.gemspec
```

The test suite needs many Ruby gems beyond the scope of BLFS.

Now, as the <code class="systemitem">root</code> user:

```bash
gem install asciidoctor-2.0.26.gem &&
install -vm644 man/asciidoctor.1 /usr/share/man/man1
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">asciidoctor</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/ruby/gems/4.0.0/gems/asciidoctor-2.0.26 and /usr/lib/ruby/gems/4.0.0/doc/asciidoctor-2.0.26</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------
  <a id="asciidoctor-prog"></a><span class="command"><span class="term"><strong>asciidoctor</strong></span></span>   converts AsciiDoc source files to HTML, DocBook, and other formats
  ----------------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](genutils.md "General Utilities")

    General Utilities

-   [Next](bogofilter.md "Bogofilter-1.2.5")

    Bogofilter-1.2.5

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
