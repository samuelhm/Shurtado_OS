<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](typesetting.md "Typesetting")

    Typesetting

-   [Next](tl-installer.md "install-tl-unx")

    install-tl-unx

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Setting the PATH for TeX Live {#setting-the-path-for-tex-live}

<div class="sect1" lang="en">
Upstream prefers to install in <code class="filename">/usr/local</code> but the BLFS editors regard that as inconvenient, and think using <code class="filename">/opt/texlive</code> is more appropriate. Originally BLFS used a full binary install to bootstrap the source install, so the same prefix is used for both.

Before starting to build TeX Live, set up your PATH so that the system can properly find the files. If you set up your login scripts as recommended in <a class="xref" href="../postlfs/profile.md" title="The Bash Shell Startup Files">The Bash Shell Startup Files</a>, update the needed paths by creating the <code class="filename">texlive.sh</code> script. The programs are always installed in an \<ARCH\>-linux subdirectory and on 32-bit x86 this is always i386-linux. For x86_64 and i?86 we can generate this as \$TEXARCH:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If upgrading from a previous year's version, you should manually edit <code class="filename">texlive.sh</code> to ensure that the version for the year you wish to use is the only TeX present (some people need to keep multiple years available to ensure there are no regressions in their documents).
</div>

Now, create the texlive.sh script as the <code class="systemitem">root</code> user:

```bash
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

```bash
source /etc/profile
```

You should now proceed either to <a class="xref" href="tl-installer.md" title="install-tl-unx">install-tl-unx</a> for a binary installation of texlive, or to <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> to begin installing from source.
</div>

<div class="navfooter">
-   [Prev](typesetting.md "Typesetting")

    Typesetting

-   [Next](tl-installer.md "install-tl-unx")

    install-tl-unx

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
