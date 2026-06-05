::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Preface

-   [Prev](package-choices.md "Rationale for Packages in the Book"){accesskey="p"}

    Rationale for Packages in the Book

-   [Next](organization.md "Structure"){accesskey="n"}

    Structure

-   [Up](preface.md "Preface"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#pre-typography}vii. Typography {#vii.-typography .sect1}

:::: {.sect1 lang="en"}
To make things easier to follow, there are a few typographical conventions used throughout this book. This section contains some examples of the typographical format found throughout Linux From Scratch.

``` userinput
./configure --prefix=/usr
```

This form of text is designed to be typed exactly as seen unless otherwise noted in the surrounding text. It is also used in the explanation sections to identify which of the commands is being referenced.

In some cases, a logical line is extended to two or more physical lines with a backslash at the end of the line.

``` userinput
CC="gcc -B/usr/bin/" ../binutils-2.18/configure \
  --prefix=/tools --disable-nls --disable-werror
```

Note that the backslash must be followed by an immediate return. Other whitespace characters like spaces or tab characters will create incorrect results.

``` screen
install-info: unknown option '--dir-file=/mnt/lfs/usr/info/dir'
```

This form of text (fixed-width text) shows screen output, usually as the result of commands issued. If you are reading the book in the HTML format (instead of PDF), the text should be blue.

The fixed-width text is also used to show filenames, such as `/etc/ld.so.conf`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please configure your browser to display fixed-width text with a good monospaced font, with which you can distinguish the glyphs of `Il1`{.literal} or `O0`{.literal} clearly.
:::

[*Emphasis*]{.emphasis}

This form of text is used for several purposes in the book. Its main purpose is to emphasize important points or items.

[https://www.linuxfromscratch.org/](https://www.linuxfromscratch.org/){.ulink}

This format is used for hyperlinks both within the LFS community and to external pages. It includes HOWTOs, download locations, and websites.

``` userinput
cat > $LFS/etc/group << "EOF"
root:x:0:
bin:x:1:
......
EOF
```

This format is used when creating configuration files. The first command tells the system to create the file `$LFS/etc/group`{.filename} from whatever is typed on the following lines until the sequence End Of File (EOF) is encountered. Therefore, this entire section is generally typed as seen.

*`<REPLACED TEXT>`*

This format is used to encapsulate text that is not to be typed as seen or for copy-and-paste operations.

*`[OPTIONAL TEXT]`*

This format is used to encapsulate text that is optional.

[passwd(5)](https://man.archlinux.org/man/passwd.5){.ulink}

This format is used to refer to a specific manual (man) page. The number inside parentheses indicates a specific section inside the manuals. For example, [**passwd**]{.command} has two man pages. Per LFS installation instructions, those two man pages will be located at `/usr/share/man/man1/passwd.1`{.filename} and `/usr/share/man/man5/passwd.5`{.filename}. When the book uses [passwd(5)](https://man.archlinux.org/man//passwd.5){.ulink} it is specifically referring to `/usr/share/man/man5/passwd.5`{.filename}. [**man passwd**]{.command} will print the first man page it finds that matches ["[passwd,]{.quote}"]{.quote} which will be `/usr/share/man/man1/passwd.1`{.filename}. For this example, you will need to run [**man 5 passwd**]{.command} in order to read the page being specified. Note that most man pages do not have duplicate page names in different sections. Therefore, [**man *`<program name>`***]{.command} is generally sufficient. In the LFS book these references to man pages are also hyperlinks, so clicking on such a reference will open the man page rendered in HTML from [Arch Linux manual pages](https://man.archlinux.org/){.ulink}.
::::

::: navfooter
-   [Prev](package-choices.md "Rationale for Packages in the Book"){accesskey="p"}

    Rationale for Packages in the Book

-   [Next](organization.md "Structure"){accesskey="n"}

    Structure

-   [Up](preface.md "Preface"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
