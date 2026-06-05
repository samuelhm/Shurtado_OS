<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](make-ca.md "make-ca-1.16.1")

    make-ca-1.16.1

-   [Next](cryptsetup.md "cryptsetup-2.8.6")

    cryptsetup-2.8.6

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# CrackLib-2.10.3 {#cracklib-2.10.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to CrackLib {#introduction-to-cracklib}

The <span class="application">CrackLib</span> package contains a library used to enforce strong passwords by comparing user selected passwords to words in chosen word lists.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-2.10.3.tar.xz">https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-2.10.3.tar.xz</a>

-   Download MD5 sum: e8ea2b86de774fc09fdd0f2829680b19

-   Download size: 456 KB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
Recommended word list for English-speaking countries:

-   Download (HTTP): <a class="ulink" href="https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-words-2.10.3.xz">https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-words-2.10.3.xz</a>

-   Download MD5 sum: f27804022dbf2682a7f7c353317f9a53

-   Download size: 4.0 MB
</div>

There are additional word lists available for download, e.g., from <a class="ulink" href="https://www.skullsecurity.org/wiki/Passwords">https://www.skullsecurity.org/wiki/Passwords</a>. <span class="application">CrackLib</span> can utilize as many, or as few word lists you choose to install.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

Users tend to base their passwords on regular words of the spoken language, and crackers know that. <span class="application">CrackLib</span> is intended to filter out such bad passwords at the source using a dictionary created from word lists. To accomplish this, the word list(s) for use with <span class="application">CrackLib</span> must be an exhaustive list of words and word-based keystroke combinations likely to be chosen by users of the system as (guessable) passwords.

The default word list recommended above for downloading mostly satisfies this role in English-speaking countries. In other situations, it may be necessary to download (or even create) additional word lists.

Note that word lists suitable for spell-checking are not usable as <span class="application">CrackLib</span> word lists in countries with non-Latin based alphabets, because of <span class="quote">“<span class="quote">word-based keystroke combinations</span>”</span> that make bad passwords.
</div>
</div>

<div class="installation" lang="en">
## Installation of CrackLib {#installation-of-cracklib}

Install <span class="application">CrackLib</span> by running the following commands:

```bash
./configure --prefix=/usr               \
            --disable-static            \
            --with-default-dict=/usr/lib/cracklib/pw_dict &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Issue the following commands as the <code class="systemitem">root</code> user to install the recommended word list and create the <span class="application">CrackLib</span> dictionary. Other word lists (text based, one word per line) can also be used by simply installing them into <code class="filename">/usr/share/dict</code> and adding them to the <span class="command"><strong>create-cracklib-dict</strong></span> command.

```bash
xzcat ../cracklib-words-2.10.3.xz \
                       > /usr/share/dict/cracklib-words       &&
ln -v -sf cracklib-words /usr/share/dict/words                &&
echo $(hostname) >>      /usr/share/dict/cracklib-extra-words &&
install -v -m755 -d      /usr/lib/cracklib                    &&

create-cracklib-dict     /usr/share/dict/cracklib-words \
                         /usr/share/dict/cracklib-extra-words
```

If desired, check the proper operation of the library as an unprivileged user by issuing the following command:

```bash
make test
```

If desired, test the Python module with:

```bash
python3 -c 'import cracklib; cracklib.test()'
```

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

If you are installing <span class="application">CrackLib</span> after your LFS system has been completed and you have the <span class="application">Shadow</span> package installed, you must reinstall <a class="xref" href="shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> if you wish to provide strong password support on your system. If you are now going to install the <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> package, you may disregard this note as <span class="application">Shadow</span> will be reinstalled after the <span class="application">Linux-PAM</span> installation.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-default-dict=/usr/lib/cracklib/pw_dict`*: This parameter forces the installation of the <span class="application">CrackLib</span> dictionary to the <code class="filename">/lib</code> hierarchy.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<span class="command"><strong>install -v -m644 -D ...</strong></span>: This command creates the <code class="filename">/usr/share/dict</code> directory (if it doesn't already exist) and installs the compressed word list there.

<span class="command"><strong>ln -v -s cracklib-words /usr/share/dict/words</strong></span>: The word list is linked to <code class="filename">/usr/share/dict/words</code> as historically, <code class="filename">words</code> is the primary word list in the <code class="filename">/usr/share/dict</code> directory. Omit this command if you already have a <code class="filename">/usr/share/dict/words</code> file installed on your system.

<span class="command"><strong>echo \$(hostname) \>\>...</strong></span>: The value of <span class="command"><strong>hostname</strong></span> is echoed to a file called <code class="filename">cracklib-extra-words</code>. This extra file is intended to be a site specific list which includes easy to guess passwords such as company or department names, user names, product names, computer names, domain names, etc.

<span class="command"><strong>create-cracklib-dict ...</strong></span>: This command creates the <span class="application">CrackLib</span> dictionary from the word lists. Modify the command to add any additional word lists you have installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cracklib-check, cracklib-format, cracklib-packer, cracklib-unpacker, cracklib-update, and create-cracklib-dict</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcrack.so and \_cracklib.so (Python module)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cracklib, /usr/share/dict, and /usr/share/cracklib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------
  <a id="cracklib-check"></a><span class="command"><span class="term"><strong>cracklib-check</strong></span></span>               is used to determine if a password is strong
  <a id="cracklib-format"></a><span class="command"><span class="term"><strong>cracklib-format</strong></span></span>             is used to format text files (lowercases all words, removes control characters and sorts the lists)
  <a id="cracklib-packer"></a><span class="command"><span class="term"><strong>cracklib-packer</strong></span></span>             creates a database with words read from standard input
  <a id="cracklib-unpacker"></a><span class="command"><span class="term"><strong>cracklib-unpacker</strong></span></span>         displays on standard output the database specified
  <a id="create-cracklib-dict"></a><span class="command"><span class="term"><strong>create-cracklib-dict</strong></span></span>   is used to create the <span class="application">CrackLib</span> dictionary from the given word list(s)
  <a id="libcrack"></a><span class="term"><code class="filename">libcrack.so</code></span>                           provides a fast dictionary lookup method for strong password enforcement
  ------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](make-ca.md "make-ca-1.16.1")

    make-ca-1.16.1

-   [Next](cryptsetup.md "cryptsetup-2.8.6")

    cryptsetup-2.8.6

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
