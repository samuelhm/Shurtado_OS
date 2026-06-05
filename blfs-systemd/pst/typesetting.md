<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Part XIII. Printing, Scanning and Typesetting

-   [Prev](paps.md "paps-0.8.0")

    paps-0.8.0

-   [Next](tex-path.md "Setting the PATH for TeX Live")

    Setting the PATH for TeX Live

-   [Up](pst.md "Part XIII. Printing, Scanning and Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Typesetting {#typesetting}

<div class="chapter" lang="en">
This chapter includes <span class="application">texlive</span> applications that create output equivalent to typesetting.

There are two alternative routes through this chapter:

Some people may wish to use the binary installer, either because of the complexity of installing all of <span class="application">texlive</span> from source, or because they only want a part of the package, or perhaps because they wish to get updates as soon as those are available (the source is only updated annually, but the binaries and associated tex and sty files are updated for approximately 10 months). These people should begin at <a class="xref" href="tex-path.md" title="Setting the PATH for TeX Live">Setting the PATH for TeX Live</a> and then follow the <a class="xref" href="tl-installer.md" title="install-tl-unx">install-tl-unx</a> instructions. After installing, they can run <span class="command"><strong>tlmgr</strong></span> to update their system.

Most people reading BLFS will wish to build from source. BLFS used to start by installing <span class="application">install-tl-unx</span> and then use that to bootstrap the build. Nowadays, we build almost the whole of <span class="application">texlive</span> <span class="emphasis"><em>without</em></span> a binary install, by adding the separately-packaged texmf files into this build. For this, begin at <a class="xref" href="tex-path.md" title="Setting the PATH for TeX Live">Setting the PATH for TeX Live</a> then go to <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> which will install most of <span class="application">texlive</span>, together with <span class="emphasis"><em>all</em></span> of the supporting files. This almost-complete install can then be used to build the remaining parts of <span class="application">texlive</span>: <a class="xref" href="asymptote.md" title="asymptote-3.10">asymptote-3.10</a>, <a class="xref" href="biber.md" title="biber-2.21">biber-2.21</a>, <a class="xref" href="dvisvgm.md" title="dvisvgm-3.6">dvisvgm-3.6</a>, and <a class="xref" href="xindy.md" title="xindy-2.5.1">xindy-2.5.1</a>.

Because the texmf files (including documentation, fonts, scripts and supporting files) are all in one tarball, it is not practical to limit what gets extracted in a sensible way (you could exclude one or other of the typesetting engines, not its many supporting files) when building from source in this manner.

In either case, BLFS installs into <code class="filename">/opt/texlive/2025</code>.

Also, please note that texlive is released annually, and updating from the previous year to the current year is no longer supported. If for some reason you wish to keep versions for multiple years, for most things you can mount the old or new system at /opt/texlive and fix up your PATH as necessary. However doing that will not preserve any changes in <code class="filename">texmf-local</code> and if you build from source and try to run a newer version of <span class="application">biber</span> with an older version of <span class="application">biblatex</span> it is unlikely to work.

<div class="toc">
### Table of Contents

-   [Setting the PATH for TeX Live](tex-path.md)
-   [install-tl-unx](tl-installer.md)
-   [texlive-20250308-source](texlive.md)
-   [asymptote-3.10](asymptote.md)
-   [biber-2.21](biber.md)
-   [dvisvgm-3.6](dvisvgm.md)
-   [xindy-2.5.1](xindy.md)
</div>
</div>

<div class="navfooter">
-   [Prev](paps.md "paps-0.8.0")

    paps-0.8.0

-   [Next](tex-path.md "Setting the PATH for TeX Live")

    Setting the PATH for TeX Live

-   [Up](pst.md "Part XIII. Printing, Scanning and Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
