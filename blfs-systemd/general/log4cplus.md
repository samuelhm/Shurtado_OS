<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libfyaml.md "libfyaml-0.9.6")

    libfyaml-0.9.6

-   [Next](lzo.md "LZO-2.10")

    LZO-2.10

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# log4cplus-2.1.2 {#log4cplus-2.1.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to log4cplus {#introduction-to-log4cplus}

<span class="application">log4cplus</span> is an easy to use C++20 logging API providing thread-safe, flexible, and arbitrarily granular control over log management and configuration. It is modeled after the Java log4j API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/log4cplus/log4cplus/releases/download/REL_2_1_2/log4cplus-2.1.2.tar.xz">https://github.com/log4cplus/log4cplus/releases/download/REL_2_1_2/log4cplus-2.1.2.tar.xz</a>

-   Download MD5 sum: 9b07ce88a3130673848a26e7e983aa5b

-   Download size: 931 KB

-   Estimated disk space required: 73 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4; add 0.5 SBU for tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of log4cplus {#installation-of-log4cplus}

Build <span class="application">log4cplus</span> by running the following command:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, install the package as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">log4cplus.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------
  <a id="log4cplus-lib"></a><span class="term"><code class="filename">log4cplus.so</code></span>   is the log4cplus library
  ------------------------------------------------------ --------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libfyaml.md "libfyaml-0.9.6")

    libfyaml-0.9.6

-   [Next](lzo.md "LZO-2.10")

    LZO-2.10

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
