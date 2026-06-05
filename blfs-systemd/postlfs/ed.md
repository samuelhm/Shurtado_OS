<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](bluefish.md "Bluefish-2.4.1")

    Bluefish-2.4.1

-   [Next](emacs.md "Emacs-30.2")

    Emacs-30.2

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Ed-1.22.5 {#ed-1.22.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ed {#introduction-to-ed}

<span class="application">Ed</span> is a line-oriented text editor. It is used to create, display, modify and otherwise manipulate text files, both interactively and via shell scripts. Ed isn't something which many people use. It's described here because it can be used by the patch program if you encounter an ed-based patch file. This happens rarely because diff-based patches are preferred these days.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/ed/ed-1.22.5.tar.lz">https://ftpmirror.gnu.org/ed/ed-1.22.5.tar.lz</a>

-   Download MD5 sum: be4d48fec1535162059b9416d913e531

-   Download size: 72 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Ed Dependencies

#### Required to uncompress the tarball

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> (for bsdtar)
</div>

<div class="installation" lang="en">
## Installation of Ed {#installation-of-ed}

Install <span class="application">Ed</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">ed and red</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  <a id="ed-prog"></a><span class="command"><span class="term"><strong>ed</strong></span></span>   is a line-oriented text editor
  <a id="red"></a><span class="command"><span class="term"><strong>red</strong></span></span>      is a restricted <span class="command"><strong>ed</strong></span>—it can only edit files in the current directory and cannot execute shell commands
  ----------------------------------------- ----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bluefish.md "Bluefish-2.4.1")

    Bluefish-2.4.1

-   [Next](emacs.md "Emacs-30.2")

    Emacs-30.2

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
