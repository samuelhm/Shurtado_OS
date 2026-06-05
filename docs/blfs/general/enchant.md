<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](duktape.md "duktape-2.7.0")

    duktape-2.7.0

-   [Next](exempi.md "Exempi-2.6.6")

    Exempi-2.6.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# enchant-2.8.16 {#enchant-2.8.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to enchant {#introduction-to-enchant}

The <span class="application">enchant</span> package provides a generic interface into various existing spell checking libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rrthomas/enchant/releases/download/v2.8.16/enchant-2.8.16.tar.gz">https://github.com/rrthomas/enchant/releases/download/v2.8.16/enchant-2.8.16.tar.gz</a>

-   Download MD5 sum: af5a6f8e0e6379ac7b3dc1c4b02b77bb

-   Download size: 1.3 MB

-   Estimated disk space required: 70 MB (with tests)

-   Estimated build time: 0.2 SBU (add 0.8 SBU for tests)
</div>

### enchant Dependencies

#### Required

<a class="xref" href="aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="dbus-glib.md" title="dbus-glib-0.114">dbus-glib-0.114</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="ulink" href="http://hspell.ivrix.org.il/">Hspell</a>, <a class="ulink" href="https://hunspell.github.io/">Hunspell</a>, <a class="ulink" href="https://nuspell.github.io/">Nuspell</a>, <a class="ulink" href="https://hunspell.github.io/">Voikko</a>, and <a class="ulink" href="https://github.com/unittest-cpp/unittest-cpp/releases">unittest-cpp</a> (required for tests)
</div>

<div class="installation" lang="en">
## Installation of enchant {#installation-of-enchant}

Install <span class="application">enchant</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/enchant-2.8.16 &&
make
```

To run tests, unittest-cpp must be installed and the <code class="option">--enable-relocatable</code> option passed to configure above. If these conditions are present, the tests may be run with <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="configuration" lang="en">
## Configuring enchant {#configuring-enchant}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.enchant</code> and <code class="filename">/usr/share/enchant/enchant.ordering</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

You can test your installation and configuration by creating a test file and running the following commands (you can replace the en_GB dictionary by any other downloaded when installing <a class="xref" href="aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a>):

```bash
cat > /tmp/test-enchant.txt << "EOF"
Tel me more abot linux
Ther ar so many commads
EOF

enchant-2 -d en_GB -l /tmp/test-enchant.txt &&
enchant-2 -d en_GB -a /tmp/test-enchant.txt
```

You will see a list of the misspelled words followed by a list of alternatives for them.

See more details in the enchant manual page.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">enchant-2 and enchant-lsmod-2</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libenchant-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/enchant-2, /usr/lib/enchant-2, /usr/share/enchant, and /usr/share/doc/enchant-2.8.16</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------
  <a id="enchant-2"></a><span class="command"><span class="term"><strong>enchant-2</strong></span></span>               is a spellchecker
  <a id="enchant-lsmod-2"></a><span class="command"><span class="term"><strong>enchant-lsmod-2</strong></span></span>   lists available backends, languages, and dictionaries
  <a id="libenchant-2"></a><span class="term"><code class="filename">libenchant-2.so</code></span>         contains spell checking interface API functions
  -------------------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](duktape.md "duktape-2.7.0")

    duktape-2.7.0

-   [Next](exempi.md "Exempi-2.6.6")

    Exempi-2.6.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
