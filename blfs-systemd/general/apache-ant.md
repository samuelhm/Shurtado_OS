<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](ojdk-conf.md "Configuring the Java environment")

    Configuring the Java environment

-   [Next](../basicnet/basicnet.md "Networking")

    Networking

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# apache-ant-1.10.17 {#apache-ant-1.10.17}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Apache Ant {#introduction-to-apache-ant}

The <span class="application">Apache Ant</span> package is a <span class="application">Java</span>-based build tool. In theory, it is like the <span class="command"><strong>make</strong></span> command, but without <span class="command"><strong>make</strong></span>'s wrinkles. <span class="application">Ant</span> is different. Instead of a model that is extended with shell-based commands, <span class="application">Ant</span> is extended using <span class="application">Java</span> classes. Instead of writing shell commands, the configuration files are XML-based, calling out a target tree that executes various tasks. Each task is run by an object that implements a particular task interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/ant/source/apache-ant-1.10.17-src.tar.xz">https://archive.apache.org/dist/ant/source/apache-ant-1.10.17-src.tar.xz</a>

-   Download MD5 sum: 218213b1db69824923c2439461213527

-   Download size: 3.7 MB

-   Estimated disk space required: 328 MB

-   Estimated build time: 0.2 SBU (excluding download time)
</div>

### Apache Ant Dependencies

#### Required

A JDK (<a class="xref" href="java.md#java-bin" title="Binary JDK Information">Java Binary</a> or <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a>) and <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Apache Ant {#installation-of-apache-ant}

Build a limited bootstrap version of <span class="application">Apache Ant</span> using the following command:

```bash
./bootstrap.sh
```

Download the runtime dependencies using the <code class="filename">fetch.xml</code> ant build script:

```bash
bootstrap/bin/ant -f fetch.xml -Ddest=optional
```

Build <span class="application">Apache Ant</span> by running the following command:

```bash
./build.sh -Ddist.dir=$PWD/ant-1.10.17 dist
```

Install, as the <code class="systemitem">root</code> user:

```bash
cp -rv ant-1.10.17 /opt/            &&
chown -R root:root /opt/ant-1.10.17 &&
ln -sfv ant-1.10.17 /opt/ant
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>bootstrap/bin/ant -f fetch.xml -Ddest=optional</strong></span>: Downloads the missing dependencies to the user's home directory, and copies them into the source tree (in the <code class="filename">lib/optional</code> directory, where <span class="command"><strong>ant</strong></span> picks them up at build time).

<span class="command"><strong>./build.sh -Ddist.dir=\$PWD/ant-1.10.17 dist</strong></span>: This command builds, tests, then installs the package into a temporary directory.
</div>

<div class="configuration" lang="en">
## Configuring Apache Ant {#configuring-apache-ant}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/ant/ant.conf</code>, <code class="filename">~/.ant/ant.conf</code>, and <code class="filename">~/.antrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Some packages will require <span class="command"><strong>ant</strong></span> to be in the search path and the <code class="envar">ANT_HOME</code> environment variable defined. Satisfy these requirements by issuing, as the <code class="systemitem">root</code> user:

```bash
cat > /etc/profile.d/ant.sh << EOF
# Begin /etc/profile.d/ant.sh

pathappend /opt/ant/bin
export ANT_HOME=/opt/ant

# End /etc/profile.d/ant.sh
EOF
```

The above instructions assume you have configured your system as described in <a class="xref" href="../postlfs/profile.md" title="The Bash Shell Startup Files">The Bash Shell Startup Files</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ant, antRun, antRun.pl, complete-ant-cmd.pl, runant.pl, and runant.py</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Numerous <code class="filename">ant*.jar</code> and dependent libraries in <code class="envar">$ANT_HOME</code><code class="filename">/lib</code></span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/opt/ant-1.10.17</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  <a id="ant"></a><span class="command"><span class="term"><strong>ant</strong></span></span>                                   is a <span class="application">Java</span> based build tool used by many packages instead of the conventional <span class="command"><strong>make</strong></span> program
  <a id="antRun"></a><span class="command"><span class="term"><strong>antRun</strong></span></span>                             is a support script used to start <span class="command"><strong>ant</strong></span> build scripts in a given directory
  <a id="antRun.pl"></a><span class="command"><span class="term"><strong>antRun.pl</strong></span></span>                       is a <span class="application">Perl</span> script that provides similar functionality offered by the <span class="command"><strong>antRun</strong></span> script
  <a id="complete-ant-cmd.pl"></a><span class="command"><span class="term"><strong>complete-ant-cmd.pl</strong></span></span>   is a <span class="application">Perl</span> script that allows <span class="application">Bash</span> to complete an <span class="command"><strong>ant</strong></span> command-line
  <a id="runant.pl"></a><span class="command"><span class="term"><strong>runant.pl</strong></span></span>                       is a <span class="application">Perl</span> wrapper script used to invoke <span class="command"><strong>ant</strong></span>
  <a id="runant.py"></a><span class="command"><span class="term"><strong>runant.py</strong></span></span>                       is a <span class="application">Python</span> wrapper script used to invoke <span class="command"><strong>ant</strong></span>
  <a id="ant-star"></a><span class="term"><code class="filename">ant*.jar</code></span>                            files are the <span class="application">Apache Ant</span> <span class="application">Java</span> class libraries
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ojdk-conf.md "Configuring the Java environment")

    Configuring the Java environment

-   [Next](../basicnet/basicnet.md "Networking")

    Networking

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
