<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](appstream-glib.md "appstream-glib-0.8.3")

    appstream-glib-0.8.3

-   [Next](apr-util.md "Apr-Util-1.6.3")

    Apr-Util-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Apr-1.7.6 {#apr-1.7.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Apr {#introduction-to-apr}

The Apache Portable Runtime (APR) is a supporting library for the Apache web server. It provides a set of application programming interfaces (APIs) that map to the underlying Operating System (OS). Where the OS doesn't support a particular function, APR will provide an emulation. Thus programmers can use the APR to make a program portable across different platforms.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/apr/apr-1.7.6.tar.bz2">https://archive.apache.org/dist/apr/apr-1.7.6.tar.bz2</a>

-   Download MD5 sum: 2ebb58910e426e5a83af97bc94cae66d

-   Download size: 879 KB

-   Estimated disk space required: 11 MB (additional 4 MB for the tests)

-   Estimated build time: 0.2 SBU (add 1.7 SBU for tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of Apr {#installation-of-apr}

Install <span class="application">Apr</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --with-installbuilddir=/usr/share/apr-1/build &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">apr-1-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libapr-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/apr-1 and /usr/share/apr-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="apr-1-config"></a><span class="command"><span class="term"><strong>apr-1-config</strong></span></span>   is a shell script used to retrieve information about the apr library in the system. It is typically used to compile and link against the library
  <a id="libapr-1"></a><span class="term"><code class="filename">libapr-1.so</code></span>           is the Apache Portable Runtime library
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](appstream-glib.md "appstream-glib-0.8.3")

    appstream-glib-0.8.3

-   [Next](apr-util.md "Apr-Util-1.6.3")

    Apr-Util-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
