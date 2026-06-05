<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](freetype2.md "FreeType-2.14.3")

    FreeType-2.14.3

-   [Next](fribidi.md "FriBidi-1.0.16")

    FriBidi-1.0.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Fontconfig-2.18.1 {#fontconfig-2.18.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fontconfig {#introduction-to-fontconfig}

The <span class="application">Fontconfig</span> package contains a library and support programs used for configuring and customizing font access.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/2.18.1/fontconfig-2.18.1.tar.xz">https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/2.18.1/fontconfig-2.18.1.tar.xz</a>

-   Download MD5 sum: 7c28095f89559d9bdef9d2e5d9d882f6

-   Download size: 1.3 MB

-   Estimated disk space required: 18 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### Fontconfig Dependencies

#### Required

<a class="xref" href="freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>

#### Optional

<a class="xref" href="bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> (used by some tests), <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> and <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> (both used by some tests for downloading and extracting test files), <a class="xref" href="json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>, <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have <span class="application">DocBook Utils</span> installed and you remove the *`--disable-docs`* parameter from the <span class="command"><strong>configure</strong></span> command below, you must also have <a class="xref" href="perl-modules.md#perl-sgmlspm" title="SGMLSpm-1.1">SGMLSpm-1.1</a> and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed, or the <span class="application">Fontconfig</span> build will fail.
</div>
</div>

<div class="installation" lang="en">
## Installation of Fontconfig {#installation-of-fontconfig}

Install <span class="application">Fontconfig</span> by running the following commands:

```bash
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.18.1 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. One test is known to fail if the kernel does not support user namespaces. Some tests will download some font files via Internet.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you did not remove the *`--disable-docs`* parameter from the <span class="command"><strong>configure</strong></span> command, you can install the pre-generated documentation by using the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 \
        /usr/share/{man/man{1,3,5},doc/fontconfig-2.18.1} &&
install -v -m644 fc-*/*.1         /usr/share/man/man1 &&
install -v -m644 doc/*.3          /usr/share/man/man3 &&
install -v -m644 doc/fonts-conf.5 /usr/share/man/man5 &&
install -v -m644 doc/*.{pdf,sgml,txt,html} \
                                  /usr/share/doc/fontconfig-2.18.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-docs`*: This switch avoids building the documentation (the release tarball includes pre-generated documentation).
</div>

<div class="configuration" lang="en">
## Configuring Fontconfig {#configuring-fontconfig}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/fonts/*, /etc/fonts/conf.d/* and /usr/share/fontconfig/conf.avail/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The main configuration file for <span class="application">Fontconfig</span> is <code class="filename">/etc/fonts/fonts.conf</code>. Generally you do not want to edit this file. It will also read <code class="filename">/etc/fonts/local.conf</code> and any files in <code class="filename">/etc/fonts/conf.d</code>. To put a new font directory in the configuration, create (or update) the <code class="filename">/etc/fonts/local.conf</code> file with your local information or add a new file in <code class="filename">/etc/fonts/conf.d</code>. The default location of fonts in <span class="application">Fontconfig</span> is:

<div class="itemizedlist">
-   /usr/share/fonts

-   \~/.local/share/fonts

-   \~/.fonts <span class="emphasis"><em>(this is now deprecated, but for the moment it still works)</em></span>
</div>

<span class="application">Fontconfig</span> also ships many example configuration files in the <code class="filename">/usr/share/fontconfig/conf.avail</code> directory. Symlinking specific files to <code class="filename">/etc/fonts/conf.d</code> will enable them. The default setup is generally good enough for most users. See <code class="filename">/etc/fonts/conf.d/README</code> for a description of the configuration files.

More information about configuring <span class="application">Fontconfig</span> can be found in the user's manual in <a class="ulink" href="file:///usr/share/doc/fontconfig-2.18.1/fontconfig-user.md">file:///usr/share/doc/fontconfig-2.18.1/fontconfig-user.html</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fc-cache, fc-cat, fc-conflist, fc-list, fc-match, fc-pattern, fc-query, fc-scan, and fc-validate</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfontconfig.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/fonts, /usr/include/fontconfig, /usr/share/doc/fontconfig-2.18.1, /usr/share/fontconfig, /usr/share/xml/fontconfig, and /var/cache/fontconfig</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
  <a id="fc-cache"></a><span class="command"><span class="term"><strong>fc-cache</strong></span></span>             is used to create font information caches
  <a id="fc-cat"></a><span class="command"><span class="term"><strong>fc-cat</strong></span></span>                 is used to read font information caches
  <a id="fc-conflist"></a><span class="command"><span class="term"><strong>fc-conflist</strong></span></span>       shows the ruleset files' information on the system
  <a id="fc-list"></a><span class="command"><span class="term"><strong>fc-list</strong></span></span>               is used to create font lists
  <a id="fc-match"></a><span class="command"><span class="term"><strong>fc-match</strong></span></span>             is used to match available fonts, or find fonts that match a given pattern
  <a id="fc-pattern"></a><span class="command"><span class="term"><strong>fc-pattern</strong></span></span>         is used to parse pattern (empty pattern by default) and show the parsed result
  <a id="fc-query"></a><span class="command"><span class="term"><strong>fc-query</strong></span></span>             is used to query fonts files and print resulting patterns
  <a id="fc-scan"></a><span class="command"><span class="term"><strong>fc-scan</strong></span></span>               is used to scan font files and directories, and print resulting patterns
  <a id="fc-validate"></a><span class="command"><span class="term"><strong>fc-validate</strong></span></span>       is used to validate font files
  <a id="libfontconfig"></a><span class="term"><code class="filename">libfontconfig.so</code></span>   contains functions used by the <span class="application">Fontconfig</span> programs and also by other programs to configure or customize font access
  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](freetype2.md "FreeType-2.14.3")

    FreeType-2.14.3

-   [Next](fribidi.md "FriBidi-1.0.16")

    FriBidi-1.0.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
