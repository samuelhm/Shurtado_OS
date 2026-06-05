::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](liboauth.md "liboauth-1.0.3"){accesskey="p"}

    liboauth-1.0.3

-   [Next](mitkrb.md "MIT Kerberos V5-1.22.2"){accesskey="n"}

    MIT Kerberos V5-1.22.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpwquality}libpwquality-1.4.5 {#libpwquality-1.4.5 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libpwquality {#introduction-to-libpwquality .sect2}

The [libpwquality]{.application} package provides common functions for password quality checking and also scoring them based on their apparent randomness. The library also provides a function for generating random passwords with good pronounceability.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libpwquality/libpwquality/releases/download/libpwquality-1.4.5/libpwquality-1.4.5.tar.bz2](https://github.com/libpwquality/libpwquality/releases/download/libpwquality-1.4.5/libpwquality-1.4.5.tar.bz2){.ulink}

-   Download MD5 sum: 6b70e355269aef0b9ddb2b9d17936f21

-   Download size: 424 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: 0.1 SBU
:::

### libpwquality Dependencies

#### Required

[CrackLib-2.10.3](cracklib.md "CrackLib-2.10.3"){.xref}

#### Recommended

[Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libpwquality {#installation-of-libpwquality .sect2}

Install [libpwquality]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                      \
            --disable-static                   \
            --with-securedir=/usr/lib/security \
            --disable-python-bindings          &&
make &&
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD/python
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
pip3 install --no-index --find-links dist --no-user pwquality
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-python-bindings`*: This parameter disables building Python bindings with the deprecated [**python3 setup.py build**]{.command} command. The explicit instruction to build the Python 3 binding with the [**pip3 wheel**]{.command} command is provided.
:::

::: {.configuration lang="en"}
## Configuring libpwquality {#configuring-libpwquality .sect2}

[libpwquality]{.application} is intended to be a functional replacement for the now-obsolete `pam_cracklib.so`{.filename} PAM module. To configure the system to use the `pam_pwquality`{.filename} module, execute the following commands as the `root`{.systemitem} user:

``` root
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
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pwscore and pwmake]{.segbody}
:::

::: seg
**Installed Libraries:** [pam_pwquality.so and libpwquality.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.11/site-packages/pwquality-1.4.5.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------
  []{#pwmake}[[**pwmake**]{.command}]{.term}                   is a simple configurable tool for generating random and relatively easily pronounceable passwords
  []{#pwscore}[[**pwscore**]{.command}]{.term}                 is a simple tool for checking quality of a password
  []{#libpwquality-lib}[`libpwquality.so`{.filename}]{.term}   contains API functions for checking the password quality
  []{#pam_pwquality}[`pam_pwquality.so`{.filename}]{.term}     is a [Linux PAM]{.application} module used to perform password quality checking
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](liboauth.md "liboauth-1.0.3"){accesskey="p"}

    liboauth-1.0.3

-   [Next](mitkrb.md "MIT Kerberos V5-1.22.2"){accesskey="n"}

    MIT Kerberos V5-1.22.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
