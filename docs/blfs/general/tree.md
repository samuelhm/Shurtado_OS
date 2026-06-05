<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](time.md "Time-1.10")

    Time-1.10

-   [Next](unixodbc.md "unixODBC-2.3.14")

    unixODBC-2.3.14

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# tree-2.3.2 {#tree-2.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to tree {#introduction-to-tree}

The <span class="application">tree</span> application is useful to display a directory tree's contents, including files, subdirectories, and links.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.3.2/unix-tree-2.3.2.tar.bz2">https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.3.2/unix-tree-2.3.2.tar.bz2</a>

-   Download MD5 sum: 1f87820af612c03bfcc0fe7800ce0c71

-   Download size: 60 KB

-   Estimated disk space required: 832 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of tree {#installation-of-tree}

Install <span class="application">tree</span> by running the following commands:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr MANDIR=/usr/share/man install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">tree</span>
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

  -------------------------------------------- -----------------------------------------
  <a id="tree-app"></a><span class="command"><span class="term"><strong>tree</strong></span></span>   displays a directory tree in a terminal
  -------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](time.md "Time-1.10")

    Time-1.10

-   [Next](unixodbc.md "unixODBC-2.3.14")

    unixODBC-2.3.14

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
