<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](hicolor-icon-theme.md "hicolor-icon-theme-0.18")

    hicolor-icon-theme-0.18

-   [Next](lxde-icon-theme.md "lxde-icon-theme-0.5.1")

    lxde-icon-theme-0.5.1

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# icon-naming-utils-0.8.90 {#icon-naming-utils-0.8.90}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to icon-naming-utils {#introduction-to-icon-naming-utils}

The <span class="application">icon-naming-utils</span> package contains a <span class="application">Perl</span> script used for maintaining backwards compatibility with current desktop icon themes, while migrating to the names specified in the <a class="ulink" href="https://specifications.freedesktop.org/icon-naming-spec/latest/">Icon Naming Specification</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2">https://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2</a>

-   Download MD5 sum: dd8108b56130b9eedc4042df634efa66

-   Download size: 57 KB

-   Estimated disk space required: 440 KB

-   Estimated build time: less than 0.1 SBU
</div>

### icon-naming-utils Dependencies

#### Required

<a class="xref" href="../general/perl-modules.md#perl-xml-simple" title="XML::Simple-2.25">XML-Simple-2.25</a>
</div>

<div class="installation" lang="en">
## Installation of icon-naming-utils {#installation-of-icon-naming-utils}

Install <span class="application">icon-naming-utils</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">icon-name-mapping</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/dtds and /usr/share/icon-naming-utils</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="icon-name-mapping"></a><span class="command"><span class="term"><strong>icon-name-mapping</strong></span></span>   is a <span class="application">Perl</span> script used for maintaining backwards compatibility with current desktop icon themes, while migrating to the names specified in the Icon Naming Specification
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](hicolor-icon-theme.md "hicolor-icon-theme-0.18")

    hicolor-icon-theme-0.18

-   [Next](lxde-icon-theme.md "lxde-icon-theme-0.5.1")

    lxde-icon-theme-0.5.1

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
