<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](liboauth.md "liboauth-1.0.3")

    liboauth-1.0.3

-   [Next](mitkrb.md "MIT Kerberos V5-1.22.2")

    MIT Kerberos V5-1.22.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpwquality-1.4.5 {#libpwquality-1.4.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpwquality {#introduction-to-libpwquality}

The <span class="application">libpwquality</span> package provides common functions for password quality checking and also scoring them based on their apparent randomness. The library also provides a function for generating random passwords with good pronounceability.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libpwquality/libpwquality/releases/download/libpwquality-1.4.5/libpwquality-1.4.5.tar.bz2">https://github.com/libpwquality/libpwquality/releases/download/libpwquality-1.4.5/libpwquality-1.4.5.tar.bz2</a>

-   Download MD5 sum: 6b70e355269aef0b9ddb2b9d17936f21

-   Download size: 424 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: 0.1 SBU
</div>

### libpwquality Dependencies

#### Required

<a class="xref" href="cracklib.md" title="CrackLib-2.10.3">CrackLib-2.10.3</a>

#### Recommended

<a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>
</div>

<div class="installation" lang="en">
## Installation of libpwquality {#installation-of-libpwquality}

Install <span class="application">libpwquality</span> by running the following commands:

```bash
./configure --prefix=/usr                      \
            --disable-static                   \
            --with-securedir=/usr/lib/security \
            --disable-python-bindings          &&
make &&
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD/python
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
pip3 install --no-index --find-links dist --no-user pwquality
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-python-bindings`*: This parameter disables building Python bindings with the deprecated <span class="command"><strong>python3 setup.py build</strong></span> command. The explicit instruction to build the Python 3 binding with the <span class="command"><strong>pip3 wheel</strong></span> command is provided.
</div>

<div class="configuration" lang="en">
## Configuring libpwquality {#configuring-libpwquality}

<span class="application">libpwquality</span> is intended to be a functional replacement for the now-obsolete <code class="filename">pam_cracklib.so</code> PAM module. To configure the system to use the <code class="filename">pam_pwquality</code> module, execute the following commands as the <code class="systemitem">root</code> user:

```bash
mv /etc/pam.d/system-password{,.orig} &&
cat > /etc/pam.d/system-password << "EOF"
# Begin /etc/pam.d/system-password

# check new passwords for strength (man pam_pwquality)
password  required    pam_pwquality.so   authtok_type=UNIX retry=1 difok=1 \
                                         minlen=8 dcredit=0 ucredit=0      \
                                         lcredit=0 ocredit=0 minclass=1    \
                                         maxrepeat=0 maxsequence=0         \
                                         maxclassrepeat=0 gecoscheck=0     \
                                         dictcheck=1 usercheck=1           \
                                         enforcing=1 badwords=""           \
                                         dictpath=/usr/lib/cracklib/pw_dict

# use yescrypt hash for encryption, use shadow, and try to use any
# previously defined authentication token (chosen password) set by any
# prior module.
password  required    pam_unix.so        yescrypt shadow try_first_pass

# End /etc/pam.d/system-password
EOF
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pwscore and pwmake</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">pam_pwquality.so and libpwquality.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.11/site-packages/pwquality-1.4.5.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------
  <a id="pwmake"></a><span class="command"><span class="term"><strong>pwmake</strong></span></span>                   is a simple configurable tool for generating random and relatively easily pronounceable passwords
  <a id="pwscore"></a><span class="command"><span class="term"><strong>pwscore</strong></span></span>                 is a simple tool for checking quality of a password
  <a id="libpwquality-lib"></a><span class="term"><code class="filename">libpwquality.so</code></span>   contains API functions for checking the password quality
  <a id="pam_pwquality"></a><span class="term"><code class="filename">pam_pwquality.so</code></span>     is a <span class="application">Linux PAM</span> module used to perform password quality checking
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](liboauth.md "liboauth-1.0.3")

    liboauth-1.0.3

-   [Next](mitkrb.md "MIT Kerberos V5-1.22.2")

    MIT Kerberos V5-1.22.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
