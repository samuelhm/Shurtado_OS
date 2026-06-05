<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](python3.md "Python-3.14.5")

    Python-3.14.5

-   [Next](python-modules.md "Python Modules")

    Python Modules

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Python-3.11.1 {#python-3.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Python 3.11 {#introduction-to-python-3.11}

The <span class="application">Python 3.11</span> package contains an older version of the <span class="application">Python</span> development environment. This is <span class="bold"><strong>only</strong></span> needed for building <a class="xref" href="../xsoft/seamonkey.md" title="Seamonkey-2.53.23">seamonkey-2.53.23</a> because its build system has not been updated to support <a class="xref" href="python3.md" title="Python-3.14.5">Python-3.14.5</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Do NOT install this package if you are not installing Seamonkey.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tar.xz">https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tar.xz</a>

-   Download MD5 sum: 4efe92adf28875c77d3b9b2e8d3bc44a

-   Download size: 19 MB

-   Estimated disk space required: 301 MB

-   Estimated build time: 1.1 SBU (Using parallelism=4)
</div>
</div>

<div class="installation" lang="en">
## Installation of Python 3.11 {#installation-of-python-3.11}

Install <span class="application">Python 3.11</span> by running the following commands:

```bash
./configure --prefix=/opt/python3.11 \
            --disable-shared         \
            --with-system-expat      \
            --without-static-libpython &&
make
```

Since this package is only used in very limited situations, tests are not recommended.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>CXX="/usr/bin/g++" ./configure ...</strong></span>: Avoid an annoying message during configuration.

*`--prefix=/opt/python3.11`*: This installs python 3.11 into /opt in order to avoid conflicts with the system version of python, and allows for easy removal/isolation once programs update to python3.12 or later.

*`--disable-shared`*: This switch disables building shared libraries. Since all the packages that need python-3.11 have built in modules and don't directly link to python, it is safe to turn off shared library support.

*`--with-system-expat`*: This switch enables linking against the system version of <span class="application">Expat</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">python3.11</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpython3.11.a</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/opt/python3.11/include/python3.11, and /opt/python3.11/lib/python3.11,</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------------
  <a id="python311-ver"></a><span class="command"><span class="term"><strong>python3.11</strong></span></span>   is a version-specific name for the <span class="command"><strong>python</strong></span> program
  ------------------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](python3.md "Python-3.14.5")

    Python-3.14.5

-   [Next](python-modules.md "Python Modules")

    Python Modules

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
