<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](yasm.md "yasm-1.3.0")

    yasm-1.3.0

-   [Next](openjdk.md "OpenJDK-21.0.10")

    OpenJDK-21.0.10

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Java-21.0.10 {#java-21.0.10}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## About Java {#about-java}

Java is different from most of the packages in LFS and BLFS. It is a programming language that works with files of bytecode to obtain instructions and executes them in a Java Virtual Machine (JVM). An introductory java program looks like:

```console
public class HelloWorld
{
    public static void main(String[] args)
    {
        System.out.println("Hello, World");
    }
}
```

This program is saved as <code class="filename">HelloWorld.java</code>. The file name, <span class="emphasis"><em>HelloWorld</em></span>, must match the class name. It is then converted into byte code with <span class="command"><strong>javac HelloWorld.java</strong></span>. The output file is <code class="filename">HelloWorld.class</code>. The program is executed with <span class="command"><strong>java HelloWorld</strong></span>. This creates a JVM and runs the code. The 'class' extension must not be specified.

Several class files can be combined into one file with the <span class="command"><strong>jar</strong></span> command. This is similar to the standard <span class="command"><strong>tar</strong></span> command. For instance, the command <span class="command"><strong>jar cf myjar.jar \*.class</strong></span> will combine all class files in a directory into one jar file. These act as library files.

The JVM can search for and use classes in jar files automatically. It uses the <code class="envar">CLASSPATH</code> environment variable to search for jar files. This is a standard list of colon-separated directory names similar to the <code class="envar">PATH</code> environment variable.
</div>

<div class="package" lang="en">
## Binary JDK Information {#binary-jdk-information}

Creating a JVM from source requires a set of circular dependencies. The first thing that's needed is a set of programs called a Java Development Kit (JDK). This set of programs includes <span class="command"><strong>java</strong></span>, <span class="command"><strong>javac</strong></span>, <span class="command"><strong>jar</strong></span>, and several others. It also includes several base <span class="emphasis"><em>jar</em></span> files.

To start, we set up a binary installation of the JDK created by the BLFS editors. It is installed in the <code class="filename">/opt</code> directory to allow for multiple installations, including a source based version.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Binary Package Information

<div class="itemizedlist">
-   Binary download (x86): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-i686-bin.tar.xz">https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-i686-bin.tar.xz</a>

-   Download MD5 sum: 79dcce21ca6bfd8f1892bfabf3e3926d

-   Download size (binary): 164 MB

-   Estimated disk space required: 315 MB
</div>

<div class="itemizedlist">
-   Binary download (x86_64): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-x86_64-bin.tar.xz">https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-x86_64-bin.tar.xz</a>

-   Download MD5 sum: c457d34d4234a3f0d8cf1f79c0513a9c

-   Download size (binary): 170 MB

-   Estimated disk space required: 344 MB
</div>

### Java Binary Runtime Dependencies

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>
</div>

<div class="installation" lang="en">
## Installation of the Java BinaryJDK {#installation-of-the-java-binaryjdk}

Begin by extracting the appropriate binary tarball for your architecture and changing to the extracted directory. Install the binary <span class="application">OpenJDK</span> with the following commands as the <code class="systemitem">root</code> user:

```bash
install -vdm755 /opt/OpenJDK-21.0.10-bin &&
mv -v * /opt/OpenJDK-21.0.10-bin         &&
chown -R root:root /opt/OpenJDK-21.0.10-bin
```

The binary version is now installed. You may create a symlink to that version by issuing, as the <code class="systemitem">root</code> user:

```bash
ln -sfn OpenJDK-21.0.10-bin /opt/jdk
```

You may now proceed to <a class="xref" href="ojdk-conf.md" title="Configuring the Java environment">Configuring the Java environment</a>, where the instructions assume that the above link exists.
</div>
</div>

<div class="navfooter">
-   [Prev](yasm.md "yasm-1.3.0")

    yasm-1.3.0

-   [Next](openjdk.md "OpenJDK-21.0.10")

    OpenJDK-21.0.10

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
