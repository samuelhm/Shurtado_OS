::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](console.md "Configuring the Linux Console"){accesskey="p"}

    Configuring the Linux Console

-   [Next](inputrc.md "Creating the /etc/inputrc File"){accesskey="n"}

    Creating the /etc/inputrc File

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-locale}9.7. Configuring the System Locale {#configuring-the-system-locale .sect1}

::::: {.sect1 lang="en"}
Some environment variables are necessary for native language support. Setting them properly results in:

::: itemizedlist
-   The output of programs being translated into your native language

-   The correct classification of characters into letters, digits and other classes. This is necessary for [**bash**]{.command} to properly accept non-ASCII characters in command lines in non-English locales

-   The correct alphabetical sorting order for the country

-   The appropriate default paper size

-   The correct formatting of monetary, time, and date values
:::

Replace *`<ll>`* below with the two-letter code for your desired language (e.g., `en`{.literal}) and *`<CC>`* with the two-letter code for the appropriate country (e.g., `GB`{.literal}). *`<charmap>`* should be replaced with the canonical charmap for your chosen locale. Optional modifiers such as `@euro`{.literal} may also be present.

The list of all locales supported by Glibc can be obtained by running the following command:

``` userinput
locale -a
```

Charmaps can have a number of aliases, e.g., `ISO-8859-1`{.literal} is also referred to as `iso8859-1`{.literal} and `iso88591`{.literal}. Some applications cannot handle the various synonyms correctly (e.g., require that `UTF-8`{.literal} is written as `UTF-8`{.literal}, not `utf8`{.literal}), so it is the safest in most cases to choose the canonical name for a particular locale. To determine the canonical name, run the following command, where *`<locale name>`* is the output given by [**locale -a**]{.command} for your preferred locale (`en_GB.iso88591`{.literal} in our example).

``` userinput
LC_ALL=<locale name> locale charmap
```

For the `en_GB.iso88591`{.literal} locale, the above command will print:

``` screen
ISO-8859-1
```

This results in a final locale setting of `en_GB.ISO-8859-1`{.literal}. It is important that the locale found using the heuristic above is tested prior to it being added to the Bash startup files:

``` userinput
LC_ALL=<locale name> locale language
LC_ALL=<locale name> locale charmap
LC_ALL=<locale name> locale int_curr_symbol
LC_ALL=<locale name> locale int_prefix
```

The above commands should print the language name, the character encoding used by the locale, the local currency, and the prefix to dial before the telephone number in order to get into the country. If any of the commands above fail with a message similar to the one shown below, this means that your locale was either not installed in Chapter 8 or is not supported by the default installation of Glibc.

``` screen
locale: Cannot set LC_* to default locale: No such file or directory
```

If this happens, you should either install the desired locale using the [**localedef**]{.command} command, or consider choosing a different locale. Further instructions assume that there are no such error messages from Glibc.

Other packages can also function incorrectly (but may not necessarily display any error messages) if the locale name does not meet their expectations. In those cases, investigating how other Linux distributions support your locale might provide some useful information.

Once the proper locale settings have been determined, create the `/etc/locale.conf`{.filename} file:

``` userinput
cat > /etc/locale.conf << "EOF"
LANG=<ll>_<CC>.<charmap><@modifiers>
EOF
```

The shell program [**/bin/bash**]{.command} (here after referred as ["[the shell]{.quote}"]{.quote}) uses a collection of startup files to help create the environment to run in. Each file has a specific use and may affect login and interactive environments differently. The files in the `/etc`{.filename} directory provide global settings. If equivalent files exist in the home directory, they may override the global settings.

An interactive login shell is started after a successful login, using [**/bin/login**]{.command}, by reading the `/etc/passwd`{.filename} file. An interactive non-login shell is started at the command-line (e.g. `[prompt]$`{.prompt}[**/bin/bash**]{.command}). A non-interactive shell is usually present when a shell script is running. It is non-interactive because it is processing a script and not waiting for user input between commands.

[The login shells are often unaffected by the settings in `/etc/locale.conf`{.filename}.]{.phrase} Create the `/etc/profile`{.filename} [to read the locale settings from `/etc/locale.conf`{.filename} and export them]{.phrase}, but set the `C.UTF-8`{.literal} locale instead if running in the Linux console (to prevent programs from outputting characters that the Linux console is unable to render):

``` userinput
cat > /etc/profile << "EOF"
# Begin /etc/profile

for i in $(locale); do
  unset ${i%=*}
done

if [[ "$TERM" = linux ]]; then
  export LANG=C.UTF-8
else
  source /etc/locale.conf

  for i in $(locale); do
    key=${i%=*}
    if [[ -v $key ]]; then
      export $key
    fi
  done
fi

# End /etc/profile
EOF
```

Note that you can modify `/etc/locale.conf`{.filename} with the systemd [**localectl**]{.command} utility. To use [**localectl**]{.command} for the example above, run:

``` userinput
localectl set-locale LANG="<ll>_<CC>.<charmap><@modifiers>"
```

You can also specify other language specific environment variables such as `LANG`{.envar}, `LC_CTYPE`{.envar}, `LC_NUMERIC`{.envar} or any other environment variable from [**locale**]{.command} output. Just separate them with a space. An example where `LANG`{.envar} is set as en_US.UTF-8 but `LC_CTYPE`{.envar} is set as just en_US is:

``` userinput
localectl set-locale LANG="en_US.UTF-8" LC_CTYPE="en_US"
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please note that the [**localectl**]{.command} command doesn\'t work in the chroot environment. It can only be used after the LFS system is booted with systemd.
:::

The `C`{.literal} (default) and `en_US`{.literal} (the recommended one for United States English users) locales are different. `C`{.literal} uses the US-ASCII 7-bit character set, and treats bytes with the high bit set as invalid characters. That\'s why, e.g., the [**ls**]{.command} command substitutes them with question marks in that locale. Also, an attempt to send mail with such characters from Mutt or Pine results in non-RFC-conforming messages being sent (the charset in the outgoing mail is indicated as `unknown 8-bit`{.computeroutput}). It\'s suggested that you use the `C`{.literal} locale only if you are certain that you will never need 8-bit characters.
:::::

::: navfooter
-   [Prev](console.md "Configuring the Linux Console"){accesskey="p"}

    Configuring the Linux Console

-   [Next](inputrc.md "Creating the /etc/inputrc File"){accesskey="n"}

    Creating the /etc/inputrc File

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
