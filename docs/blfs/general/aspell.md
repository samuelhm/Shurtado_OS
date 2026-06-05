<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](apr-util.md "Apr-Util-1.6.3")

    Apr-Util-1.6.3

-   [Next](boost.md "boost-1.91.0-1")

    boost-1.91.0-1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Aspell-0.60.8.2 {#aspell-0.60.8.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Aspell {#introduction-to-aspell}

The <span class="application">Aspell</span> package contains an interactive spell checking program and the <span class="application">Aspell</span> libraries. <span class="application">Aspell</span> can either be used as a library or as an independent spell checker.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/aspell/aspell-0.60.8.2.tar.gz">https://ftpmirror.gnu.org/aspell/aspell-0.60.8.2.tar.gz</a>

-   Download MD5 sum: bc3f30321db5d44f112ab66084421225

-   Download size: 3.5 MB

-   Estimated disk space required: 56 MB (Additional 8 MB for EN dictionary)

-   Estimated build time: 0.4 SBU
</div>

### Additional Downloads

You'll need to download at least one dictionary. The English dictionary is given as an example below. Dictionaries in many other languages can be found at <a class="ulink" href="https://ftpmirror.gnu.org/aspell/dict">https://ftpmirror.gnu.org/aspell/dict</a>.

<div class="itemizedlist">
-   Aspell English dictionary: <a class="ulink" href="https://ftpmirror.gnu.org/aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2">https://ftpmirror.gnu.org/aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2</a>
</div>

### Aspell Dependencies

#### Required

<a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (for the dictionaries)
</div>

<div class="installation" lang="en">
## Installation of Aspell {#installation-of-aspell}

Install <span class="application">Aspell</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ln -svfn aspell-0.60 /usr/lib/aspell &&

install -v -m755 -d /usr/share/doc/aspell-0.60.8.2/aspell{,-dev}.md &&

install -v -m644 manual/aspell.html/* \
    /usr/share/doc/aspell-0.60.8.2/aspell.md &&

install -v -m644 manual/aspell-dev.html/* \
    /usr/share/doc/aspell-0.60.8.2/aspell-dev.md
```

If you do not plan to install <span class="application">Ispell</span>, then copy the wrapper script <span class="command"><strong>ispell</strong></span>:

```bash
install -v -m 755 scripts/ispell /usr/bin/
```

If you do not plan to install <span class="application">Spell</span>, then copy the wrapper script <span class="command"><strong>spell</strong></span>:

```bash
install -v -m 755 scripts/spell /usr/bin/
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>ln -svfn aspell-0.60 /usr/lib/aspell</strong></span>: This command is useful for configuration of other applications, such as <a class="xref" href="enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>.
</div>

<div class="configuration" lang="en">
## Configuring Aspell {#configuring-aspell}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

After <span class="application">Aspell</span> is installed, you must set up at least one dictionary. Install the English dictionary by running the following commands:

```bash
tar xf ../aspell6-en-2020.12.07-0.tar.bz2 &&
cd aspell6-en-2020.12.07-0                &&

./configure &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Other dictionaries can be installed with the same instructions.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">aspell, aspell-import, precat, preunzip, prezip, prezip-bin, pspell-config, run-with-aspell, word-list-compress and optionally, ispell and spell.</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libaspell.so and libpspell.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pspell and /usr/lib/aspell-0.60</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="aspell-prog"></a><span class="command"><span class="term"><strong>aspell</strong></span></span>                      is a utility that can function as an <span class="command"><strong>ispell -a</strong></span> replacement, as an independent spell checker, as a test utility to test out <span class="application">Aspell</span> features, and as a utility for managing dictionaries
  <a id="aspell-ispell"></a><span class="command"><span class="term"><strong>ispell</strong></span></span>                    is a wrapper around <span class="command"><strong>aspell</strong></span> to invoke it in <span class="command"><strong>ispell</strong></span> compatible mode
  <a id="aspell-spell"></a><span class="command"><span class="term"><strong>spell</strong></span></span>                      is a wrapper around <span class="command"><strong>aspell</strong></span> to invoke it in <span class="command"><strong>spell</strong></span> compatible mode
  <a id="aspell-import"></a><span class="command"><span class="term"><strong>aspell-import</strong></span></span>             imports old personal dictionaries into <span class="application">Aspell</span>
  <a id="precat"></a><span class="command"><span class="term"><strong>precat</strong></span></span>                           decompresses a <span class="command"><strong>prezip</strong></span>ped file to stdout
  <a id="preunzip"></a><span class="command"><span class="term"><strong>preunzip</strong></span></span>                       decompresses a <span class="command"><strong>prezip</strong></span>ped file
  <a id="prezip"></a><span class="command"><span class="term"><strong>prezip</strong></span></span>                           is a prefix delta compressor, used to compress sorted word lists or other similar text files
  <a id="prezip-bin"></a><span class="command"><span class="term"><strong>prezip-bin</strong></span></span>                   is called by the various wrapper scripts to perform the actual compressing and decompressing
  <a id="pspell-config"></a><span class="command"><span class="term"><strong>pspell-config</strong></span></span>             displays information about the <code class="filename">libpspell</code> installation, mostly for use in build scripts
  <a id="run-with-aspell"></a><span class="command"><span class="term"><strong>run-with-aspell</strong></span></span>         is a script to help use <span class="application">Aspell</span> as an <span class="command"><strong>ispell</strong></span> replacement
  <a id="word-list-compress"></a><span class="command"><span class="term"><strong>word-list-compress</strong></span></span>   compresses or decompresses sorted word lists for use with the <span class="application">Aspell</span> spell checker
  <a id="libaspell"></a><span class="term"><code class="filename">libaspell.so</code></span>                     contains spell checking API functions
  <a id="libpspell"></a><span class="term"><code class="filename">libpspell.so</code></span>                     is an interface to the <code class="filename">libaspell</code> library. All the spell checking functionality is now in <code class="filename">libaspell</code> but this library is included for backward compatibility
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](apr-util.md "Apr-Util-1.6.3")

    Apr-Util-1.6.3

-   [Next](boost.md "boost-1.91.0-1")

    boost-1.91.0-1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
