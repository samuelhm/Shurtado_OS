::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](typesetting.md "Typesetting"){accesskey="p"}

    Typesetting

-   [Next](tl-installer.md "install-tl-unx"){accesskey="n"}

    install-tl-unx

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tex-path}Setting the PATH for TeX Live {#setting-the-path-for-tex-live .sect1}

:::: {.sect1 lang="en"}
Upstream prefers to install in `/usr/local`{.filename} but the BLFS editors regard that as inconvenient, and think using `/opt/texlive`{.filename} is more appropriate. Originally BLFS used a full binary install to bootstrap the source install, so the same prefix is used for both.

Before starting to build TeX Live, set up your PATH so that the system can properly find the files. If you set up your login scripts as recommended in [The Bash Shell Startup Files](../postlfs/profile.md "The Bash Shell Startup Files"){.xref}, update the needed paths by creating the `texlive.sh`{.filename} script. The programs are always installed in an \<ARCH\>-linux subdirectory and on 32-bit x86 this is always i386-linux. For x86_64 and i?86 we can generate this as \$TEXARCH:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If upgrading from a previous year's version, you should manually edit `texlive.sh`{.filename} to ensure that the version for the year you wish to use is the only TeX present (some people need to keep multiple years available to ensure there are no regressions in their documents).
:::

Now, create the texlive.sh script as the `root`{.systemitem} user:

``` root
TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/')
TEXLIVE_PREFIX=/opt/texlive/2025

cat > /etc/profile.d/texlive.sh << EOF
# Begin texlive setup
TEXLIVE_PREFIX=/opt/texlive/2025
export TEXLIVE_PREFIX

pathappend $TEXLIVE_PREFIX/texmf-dist/doc/info INFOPATH
pathappend $TEXLIVE_PREFIX/bin/$TEXARCH

TEXMFCNF=$TEXLIVE_PREFIX/texmf-dist/web2c
export TEXMFCNF

# End texlive setup
EOF

unset TEXARCH
```

The new paths can be immediately activated by running:

``` userinput
source /etc/profile
```

You should now proceed either to [install-tl-unx](tl-installer.md "install-tl-unx"){.xref} for a binary installation of texlive, or to [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} to begin installing from source.
::::

::: navfooter
-   [Prev](typesetting.md "Typesetting"){accesskey="p"}

    Typesetting

-   [Next](tl-installer.md "install-tl-unx"){accesskey="n"}

    install-tl-unx

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
