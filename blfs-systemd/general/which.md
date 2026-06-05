<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](upower.md "UPower-1.91.2")

    UPower-1.91.2

-   [Next](xdotool.md "xdotool-4.20260303.1")

    xdotool-4.20260303.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Which-2.25 and Alternatives {#which-2.25-and-alternatives}

<div class="sect1" lang="en">
The presence or absence of the <span class="command"><strong>which</strong></span> program in the main LFS book is probably one of the most contentious issues on the mailing lists. It has resulted in at least one flame war in the past. To hopefully put an end to this once and for all, presented here are two options for equipping your system with <span class="command"><strong>which</strong></span>. The question of which <span class="command">“<span class="quote"><span class="quote"><strong>which</strong></span></span>”</span> is for you to decide.

<div class="package" lang="en">
## Introduction to GNU Which {#introduction-to-gnu-which}

The first option is to install the actual GNU <span class="application">which</span> package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/which/which-2.25.tar.gz">https://ftpmirror.gnu.org/which/which-2.25.tar.gz</a>

-   Download MD5 sum: 60140cb2637634e4f4e68c2e98c6a07b

-   Download size: 200 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Which {#installation-of-which}

Install <span class="application">which</span> by running the following commands:

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
**Installed Program:** <span class="segbody">which</span>
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

  ----------------------------------------------- --------------------------------------------------------------------------
  <a id="which-prog"></a><span class="command"><span class="term"><strong>which</strong></span></span>   shows the full path of (shell) commands installed in your <code class="envar">PATH</code>
  ----------------------------------------------- --------------------------------------------------------------------------
</div>
</div>

<div class="installation" lang="en">
## The 'which' Script {#the-which-script}

The second option (for those who don't want to install the package) is to create a simple script (execute as the <code class="systemitem">root</code> user):

```bash
cat > /usr/bin/which << "EOF"
#!/bin/bash
type -pa "$@" | head -n 1 ; exit ${PIPESTATUS[0]}
EOF
chmod -v 755 /usr/bin/which
chown -v root:root /usr/bin/which
```

This should work OK and is probably the easiest solution for most cases, but is not the most comprehensive implementation.
</div>
</div>

<div class="navfooter">
-   [Prev](upower.md "UPower-1.91.2")

    UPower-1.91.2

-   [Next](xdotool.md "xdotool-4.20260303.1")

    xdotool-4.20260303.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
