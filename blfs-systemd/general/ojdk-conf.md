<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](openjdk.md "OpenJDK-21.0.10")

    OpenJDK-21.0.10

-   [Next](apache-ant.md "apache-ant-1.10.17")

    apache-ant-1.10.17

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Configuring the Java environment {#configuring-the-java-environment}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Setting up the environment {#setting-up-the-environment}

After the package installation is complete, the next step is to make sure that the system can properly find the files. If you set up your login scripts as recommended in <a class="xref" href="../postlfs/profile.md" title="The Bash Shell Startup Files">The Bash Shell Startup Files</a>, update the environment by creating the <code class="filename">openjdk.sh</code> script, as the <code class="systemitem">root</code> user:

```bash
cat > /etc/profile.d/openjdk.sh << "EOF"
# Begin /etc/profile.d/openjdk.sh

# Set JAVA_HOME directory
JAVA_HOME=/opt/jdk

# Adjust PATH
pathappend $JAVA_HOME/bin

# Auto Java CLASSPATH: Copy jar files to, or create symlinks in, the
# /usr/share/java directory.

AUTO_CLASSPATH_DIR=/usr/share/java

pathprepend . CLASSPATH

for dir in `find ${AUTO_CLASSPATH_DIR} -type d 2>/dev/null`; do
    pathappend $dir CLASSPATH
done

for jar in `find ${AUTO_CLASSPATH_DIR} -name "*.jar" 2>/dev/null`; do
    pathappend $jar CLASSPATH
done

export JAVA_HOME

# By default, Java creates several files in a directory named
# /tmp/hsperfdata_[username]. This directory contains files that are used for
# performance monitoring and profiling, but aren't normally needed on a BLFS
# system. This environment variable disables that feature.
_JAVA_OPTIONS="-XX:-UsePerfData"

export _JAVA_OPTIONS

unset AUTO_CLASSPATH_DIR dir jar _JAVA_OPTIONS

# End /etc/profile.d/openjdk.sh
EOF
```

If <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> is installed, the super user should have access to the above variables. Execute the following commands as the <code class="systemitem">root</code> user:

```bash
cat > /etc/sudoers.d/java << "EOF"
Defaults env_keep += JAVA_HOME
Defaults env_keep += CLASSPATH
Defaults env_keep += _JAVA_OPTIONS
EOF
```

To use <span class="command"><strong>mandb</strong></span> to include the OpenJDK man pages in its database, issue, as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/man_db.conf << "EOF" &&
# Begin Java addition
MANDATORY_MANPATH     /opt/jdk/man
MANPATH_MAP           /opt/jdk/bin     /opt/jdk/man
MANDB_MAP             /opt/jdk/man     /var/cache/man/jdk
# End Java addition
EOF

mkdir -p /var/cache/man &&
mandb -c /opt/jdk/man
```
</div>

<div class="sect2" lang="en">
## Setting up the Certificate Authority Certificates for Java {#setting-up-the-certificate-authority-certificates-for-java}

<span class="application">OpenJDK</span> uses its own format for the CA certificates. The Java security modules use <code class="envar">$JAVA_HOME</code><code class="filename">/lib/security/cacerts</code> by default. In order to keep all the certificates in one place, we use <code class="filename">/etc/pki/tls/java/cacerts</code>. The instructions on the <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> page previously created the file located in <code class="filename">/etc/pki/tls/java</code>. Set up a symlink in the default location as the <code class="systemitem">root</code> user:

```bash
ln -sfv /etc/pki/tls/java/cacerts /opt/jdk/lib/security/cacerts
```

Use the following command to check if the <code class="filename">cacerts</code> file has been successfully installed:

```bash
/opt/jdk/bin/keytool -list -cacerts
```

At the prompt <code class="computeroutput">Enter keystore password:</code>, enter **`changeit`** (the default) or just press the <span class="quote">“<span class="quote">Enter</span>”</span> key. If the <code class="filename">cacerts</code> file was installed correctly, you will see a list of the certificates with related information for each one. If not, you need to reinstall them.

If you later install a new JVM, you just have to create the symlink in the default location to be able to use the cacerts.
</div>
</div>

<div class="navfooter">
-   [Prev](openjdk.md "OpenJDK-21.0.10")

    OpenJDK-21.0.10

-   [Next](apache-ant.md "apache-ant-1.10.17")

    apache-ant-1.10.17

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
