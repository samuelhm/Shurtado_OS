<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](epdfview.md "ePDFView-gtk3-20200814")

    ePDFView-gtk3-20200814

-   [Next](mupdf.md "MuPDF-1.26.12")

    MuPDF-1.26.12

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# fop-2.11 {#fop-2.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to fop {#introduction-to-fop}

The <span class="application">FOP</span> (Formatting Objects Processor) package contains a print formatter driven by XSL formatting objects (XSL-FO). It is a <span class="application">Java</span> application that reads a formatting object tree and renders the resulting pages to a specified output. Output formats currently supported include PDF, PCL, PostScript, SVG, XML (area tree representation), print, AWT, MIF and ASCII text. The primary output target is PDF.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/xmlgraphics/fop/source/fop-2.11-src.tar.gz">https://archive.apache.org/dist/xmlgraphics/fop/source/fop-2.11-src.tar.gz</a>

-   Download MD5 sum: b202dcd7c6dcaf3ec5d14bb193d7bf01

-   Download size: 21 MB

-   Estimated disk space required: 343 MB (including files downloaded to the user directory)

-   Estimated build time: 0.9 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
**Required Additional Downloads:**

-   Maven build system:\
    <a class="ulink" href="https://archive.apache.org/dist/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz">https://archive.apache.org/dist/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz</a>\
    bcd2fb0a7f3f27047b693c2a2818c965\
    11 MB (additionally, about 90 MB are downloaded to the building user's directory)\
</div>

<div class="itemizedlist">
**Recommended packages**

-   Objects for Formatting Objects (OFFO) hyphenation patterns:\
    <a class="ulink" href="https://downloads.sourceforge.net/offo/2.2/offo-hyphenation.zip">https://downloads.sourceforge.net/offo/2.2/offo-hyphenation.zip</a>\
    bf9c09bf05108ef9661b8f08d91c2336\
    862 KB\
</div>

### fop Dependencies

#### Required

<a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a>

#### Recommended

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> (required for the unpacking OFFO hyphenation patterns)

#### Optional

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> (to run tests), <a class="ulink" href="https://jai-tools.blogspot.com/">JAI Image I/O Tools</a>, and <a class="ulink" href="https://jeuclid.sourceforge.net/">JEuclid</a>
</div>

<div class="installation" lang="en">
## Installation of fop {#installation-of-fop}

Ensure <code class="envar">$JAVA_HOME</code> is set correctly before beginning the build. To build the <span class="application">JIMI SDK</span> and/or <span class="application">XMLUnit</span> extension classes, ensure the corresponding <code class="filename">.jar</code> files can be found via the <code class="envar">CLASSPATH</code> environment variable.

<div class="sect3" lang="en">
### Installing OFFO Hyphenation Patterns {#installing-offo-hyphenation-patterns}

Copy the XML hyphenation patterns into the fop source tree by running the following commands:

```bash
unzip ../offo-hyphenation.zip &&
cp offo-hyphenation/hyph/* fop/hyph &&
rm -rf offo-hyphenation
```
</div>

<div class="sect3" lang="en">
### Installing a temporary Maven binary {#installing-a-temporary-maven-binary}

Starting with fop-2.5, the Maven build system is required. We use the binary provided by apache, that we install in a temporary location:

```bash
tar -xf ../apache-maven-3.9.12-bin.tar.gz -C /tmp
```
</div>

<div class="sect3" lang="en">
### Installing fop Components {#installing-fop-components}

The <span class="command"><strong>javadoc</strong></span> command that ships with OpenJDK 10 and later has become much stricter than previous versions regarding conformance of the Javadoc comments in source code to HTML. The FOP documentation does not meet those standards, so the conformance checks have to be disabled. This can be done with the following command:

```bash
sed -i '\@</javad@i\
<arg value="-Xdoclint:none"/>\
<arg value="--allow-script-in-comments"/>\
<arg value="--ignore-source-errors"/>' \
    fop/build.xml
```

Compile <span class="application">fop</span> by running the following commands:

```bash
cd fop &&

LC_ALL=en_US.UTF-8                     \
PATH=$PATH:/tmp/apache-maven-3.9.12/bin \
ant package javadocs &&

mv build/javadocs .
```

This package comes with a test suite, but the java infrastructure installed in this book does not allow running it.

Now, install <span class="application">Fop</span> as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 -o root -g root          /opt/fop-2.11 &&
cp -vR build conf examples fop* javadocs lib /opt/fop-2.11 &&
chmod a+x /opt/fop-2.11/fop                                &&
ln -v -sfn fop-2.11 /opt/fop
```

Finally, remove the temporary copy of Apache Maven:

```bash
rm -rf /tmp/apache-maven-3.9.12
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i ... build.xml</strong></span>: This adds three switches to the <span class="command"><strong>javadoc</strong></span> command, preventing some errors from occurring when building the documentation.

<span class="command"><strong>export LC_ALL=en_US.UTF-8</strong></span>: the compiler fails if using an ASCII locale.

<span class="command"><strong>ant <code class="option">target</code></strong></span>: This reads the file <code class="filename">build.xml</code> and builds the target: <code class="option">compile</code> compiles the java sources, <code class="option">jar-main</code> generates jar archives, <code class="option">jar-hyphenation</code> generates the hyphenation patterns for FOP, <code class="option">junit</code> runs the <span class="application">junit</span> tests, and <code class="option">javadocs</code> builds the documentation. The <code class="option">all</code> target runs all of the above.

<span class="command"><strong>ln -v -sf fop-2.11 /opt/fop</strong></span>: This is optional and creates a convenience symlink so that <code class="envar">$FOP_HOME</code> doesn't have to be changed each time there's a package version change.
</div>

<div class="configuration" lang="en">
## Configuring fop {#configuring-fop}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.foprc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Using <span class="application">fop</span> to process some large FO's (including the FO derived from the BLFS XML sources), can lead to memory errors. Unless you add a parameter to the <span class="command"><strong>java</strong></span> command used in the <span class="command"><strong>fop</strong></span> script you may receive messages similar to the one shown below:

<code class="computeroutput">Exception in thread "main" java.lang.OutOfMemoryError: Java heap space</code>

To avoid errors like this, you need to pass an extra parameter to the <span class="command"><strong>java</strong></span> command used in the <span class="command"><strong>fop</strong></span> script. This can be accomplished by creating a <code class="filename">~/.foprc</code> (which is sourced by the <span class="command"><strong>fop</strong></span> script) and adding the parameter to the <code class="envar">FOP_OPTS</code> environment variable.

The <span class="command"><strong>fop</strong></span> script looks for a <code class="envar">FOP_HOME</code> environment variable to locate the <span class="application">fop</span> class libraries. You can create this variable using the <code class="filename">~/.foprc</code> file as well. Create a <code class="filename">~/.foprc</code> file using the following commands:

```bash
cat > ~/.foprc << "EOF"
FOP_OPTS="-Xmx<RAM_Installed>m"
FOP_HOME="/opt/fop"
EOF
```

Replace *`<RAM_Installed>`* with a number representing the amount of RAM installed in your computer (in megabytes). An example would be **`FOP_OPTS="-Xmx768m"`**.

To include the <span class="command"><strong>fop</strong></span> script in your path, update the system-wide profile with the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/profile.d/fop.sh << "EOF"
# Begin /etc/profile.d/fop.sh

pathappend /opt/fop

# End /etc/profile.d/fop.sh
EOF
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Running <span class="command"><strong>fop</strong></span> can be somewhat verbose. The default logging level can be changed from INFO to any of FINEST, FINER, FINE, CONFIG, INFO, WARNING, SEVERE, ALL, or OFF. To do this, edit <code class="filename">$JAVA_HOME/jre/lib/logging.properties</code> and change the entries for <code class="option">.level</code> and <code class="option">java.util.logging.ConsoleHandler.level</code> to the desired value.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fop</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">fop.jar and numerous support library classes located in <code class="filename">/opt/fop/{build,lib}</code>; JAI components include libmlib_jai.so, jai_codec.jar, jai_core.jar, and mlibwrapper_jai.jar</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/opt/fop-2.11</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fop-prog"></a><span class="command"><span class="term"><strong>fop</strong></span></span>   is a wrapper script to the <span class="command"><strong>java</strong></span> command which sets up the <span class="application">fop</span> environment and passes the required parameters
  <a id="fop.jar"></a><span class="term"><code class="filename">fop.jar</code></span>   contains all the <span class="application">fop</span> <span class="application">Java</span> classes
  ------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](epdfview.md "ePDFView-gtk3-20200814")

    ePDFView-gtk3-20200814

-   [Next](mupdf.md "MuPDF-1.26.12")

    MuPDF-1.26.12

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
