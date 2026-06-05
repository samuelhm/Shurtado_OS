::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](make-ca.md "make-ca-1.16.1"){accesskey="p"}

    make-ca-1.16.1

-   [Next](cryptsetup.md "cryptsetup-2.8.6"){accesskey="n"}

    cryptsetup-2.8.6

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cracklib}CrackLib-2.10.3 {#cracklib-2.10.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to CrackLib {#introduction-to-cracklib .sect2}

The [CrackLib]{.application} package contains a library used to enforce strong passwords by comparing user selected passwords to words in chosen word lists.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-2.10.3.tar.xz](https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-2.10.3.tar.xz){.ulink}

-   Download MD5 sum: e8ea2b86de774fc09fdd0f2829680b19

-   Download size: 456 KB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
Recommended word list for English-speaking countries:

-   Download (HTTP): [https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-words-2.10.3.xz](https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-words-2.10.3.xz){.ulink}

-   Download MD5 sum: f27804022dbf2682a7f7c353317f9a53

-   Download size: 4.0 MB
:::

There are additional word lists available for download, e.g., from [https://www.skullsecurity.org/wiki/Passwords](https://www.skullsecurity.org/wiki/Passwords){.ulink}. [CrackLib]{.application} can utilize as many, or as few word lists you choose to install.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Users tend to base their passwords on regular words of the spoken language, and crackers know that. [CrackLib]{.application} is intended to filter out such bad passwords at the source using a dictionary created from word lists. To accomplish this, the word list(s) for use with [CrackLib]{.application} must be an exhaustive list of words and word-based keystroke combinations likely to be chosen by users of the system as (guessable) passwords.

The default word list recommended above for downloading mostly satisfies this role in English-speaking countries. In other situations, it may be necessary to download (or even create) additional word lists.

Note that word lists suitable for spell-checking are not usable as [CrackLib]{.application} word lists in countries with non-Latin based alphabets, because of [“[word-based keystroke combinations]{.quote}”]{.quote} that make bad passwords.
:::
:::::::

:::: {.installation lang="en"}
## Installation of CrackLib {#installation-of-cracklib .sect2}

Install [CrackLib]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr               \
            --disable-static            \
            --with-default-dict=/usr/lib/cracklib/pw_dict &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

Issue the following commands as the `root`{.systemitem} user to install the recommended word list and create the [CrackLib]{.application} dictionary. Other word lists (text based, one word per line) can also be used by simply installing them into `/usr/share/dict`{.filename} and adding them to the [**create-cracklib-dict**]{.command} command.

``` root
xzcat ../cracklib-words-2.10.3.xz \
                       > /usr/share/dict/cracklib-words       &&
ln -v -sf cracklib-words /usr/share/dict/words                &&
echo $(hostname) >>      /usr/share/dict/cracklib-extra-words &&
install -v -m755 -d      /usr/lib/cracklib                    &&

create-cracklib-dict     /usr/share/dict/cracklib-words \
                         /usr/share/dict/cracklib-extra-words
```

If desired, check the proper operation of the library as an unprivileged user by issuing the following command:

``` userinput
make test
```

If desired, test the Python module with:

``` userinput
python3 -c 'import cracklib; cracklib.test()'
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If you are installing [CrackLib]{.application} after your LFS system has been completed and you have the [Shadow]{.application} package installed, you must reinstall [Shadow-4.19.4](shadow.md "Shadow-4.19.4"){.xref} if you wish to provide strong password support on your system. If you are now going to install the [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref} package, you may disregard this note as [Shadow]{.application} will be reinstalled after the [Linux-PAM]{.application} installation.
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-default-dict=/usr/lib/cracklib/pw_dict`*: This parameter forces the installation of the [CrackLib]{.application} dictionary to the `/lib`{.filename} hierarchy.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

[**install -v -m644 -D ...**]{.command}: This command creates the `/usr/share/dict`{.filename} directory (if it doesn't already exist) and installs the compressed word list there.

[**ln -v -s cracklib-words /usr/share/dict/words**]{.command}: The word list is linked to `/usr/share/dict/words`{.filename} as historically, `words`{.filename} is the primary word list in the `/usr/share/dict`{.filename} directory. Omit this command if you already have a `/usr/share/dict/words`{.filename} file installed on your system.

[**echo \$(hostname) \>\>...**]{.command}: The value of [**hostname**]{.command} is echoed to a file called `cracklib-extra-words`{.filename}. This extra file is intended to be a site specific list which includes easy to guess passwords such as company or department names, user names, product names, computer names, domain names, etc.

[**create-cracklib-dict ...**]{.command}: This command creates the [CrackLib]{.application} dictionary from the word lists. Modify the command to add any additional word lists you have installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cracklib-check, cracklib-format, cracklib-packer, cracklib-unpacker, cracklib-update, and create-cracklib-dict]{.segbody}
:::

::: seg
**Installed Libraries:** [libcrack.so and \_cracklib.so (Python module)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cracklib, /usr/share/dict, and /usr/share/cracklib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------
  []{#cracklib-check}[[**cracklib-check**]{.command}]{.term}               is used to determine if a password is strong
  []{#cracklib-format}[[**cracklib-format**]{.command}]{.term}             is used to format text files (lowercases all words, removes control characters and sorts the lists)
  []{#cracklib-packer}[[**cracklib-packer**]{.command}]{.term}             creates a database with words read from standard input
  []{#cracklib-unpacker}[[**cracklib-unpacker**]{.command}]{.term}         displays on standard output the database specified
  []{#create-cracklib-dict}[[**create-cracklib-dict**]{.command}]{.term}   is used to create the [CrackLib]{.application} dictionary from the given word list(s)
  []{#libcrack}[`libcrack.so`{.filename}]{.term}                           provides a fast dictionary lookup method for strong password enforcement
  ------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](make-ca.md "make-ca-1.16.1"){accesskey="p"}

    make-ca-1.16.1

-   [Next](cryptsetup.md "cryptsetup-2.8.6"){accesskey="n"}

    cryptsetup-2.8.6

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
