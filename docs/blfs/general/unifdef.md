<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](tk.md "Tk-8.6.18")

    Tk-8.6.18

-   [Next](vala.md "Vala-0.56.19")

    Vala-0.56.19

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# unifdef-2.12 {#unifdef-2.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to unifdef {#introduction-to-unifdef}

The <span class="application">unifdef</span> package contains a utility that is useful for removing preprocessor conditionals from code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dotat.at/prog/unifdef/unifdef-2.12.tar.gz">https://dotat.at/prog/unifdef/unifdef-2.12.tar.gz</a>

-   Download MD5 sum: b225312c110cd2600ca7166bd0419751

-   Download size: 88 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of unifdef {#installation-of-unifdef}

First, fix a problem when building with gcc-15:

```bash
sed -i 's/constexpr/unifdef_&/g' unifdef.c
```

Now fix a problem if reinstalling the package:

```bash
sed -i 's/ln -s/ln -sf/' Makefile
```

Install <span class="application">unifdef</span> by running the following commands:

```bash
make
```

To test the results, issue: <span class="command"><strong>LC_ALL=C make test</strong></span>.

Finally, finish the installation as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">unifdef and unifdefall</span>
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

  ---------------------------------------------------- -----------------------------------------------------------------
  <a id="unifdef-prog"></a><span class="command"><span class="term"><strong>unifdef</strong></span></span>    removes preprocessor conditionals from code
  <a id="unifdefall"></a><span class="command"><span class="term"><strong>unifdefall</strong></span></span>   removes preprocessor conditionals from code across a whole tree
  ---------------------------------------------------- -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tk.md "Tk-8.6.18")

    Tk-8.6.18

-   [Next](vala.md "Vala-0.56.19")

    Vala-0.56.19

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
