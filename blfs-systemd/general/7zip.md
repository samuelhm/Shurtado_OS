<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysutils.md "System Utilities")

    System Utilities

-   [Next](accountsservice.md "AccountsService-23.13.9")

    AccountsService-23.13.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# 7zip-26.01 {#zip-26.01}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to 7zip {#introduction-to-7zip}

<span class="application">7zip</span> is a file archiver that archives with high compression ratios. It handles 7z, ZIP, GZIP, Brotli, BZIP2, XZ, TAR, APM, ARJ, CAB, CHM, CPIO, CramFS, DEB, DMG, FAT, HFS, ISO, Lizard, LZ5, LZFSE, LZH, LZMA, LZMA2, MBR, MSI, MSLZ, NSIS, NTFS, RAR, RPM, SquashFS, UDF, VHD, WIM, XAR, Z, and Zstd formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ip7z/7zip/archive/26.01/7zip-26.01.tar.gz">https://github.com/ip7z/7zip/archive/26.01/7zip-26.01.tar.gz</a>

-   Download MD5 sum: 28fd40a3d7a1f07e8918ccecfa40605a

-   Download size: 2.2 MB

-   Estimated disk space required: 45 MB

-   Estimated build time: 1.4 SBU
</div>

### 7zip Dependencies

#### Optional

<a class="ulink" href="https://github.com/Terraspace/UASM">UASM</a>
</div>

<div class="installation" lang="en">
## Installation of 7zip {#installation-of-7zip}

Turn off <code class="literal">-Werror</code> to avoid warnings being treated as errors:

```bash
sed -i 's/-Werror //g' CPP/7zip/7zip_gcc.mak
```

Install <span class="application">7zip</span> by running the following commands:

```bash
(for i in Bundles/{Alone,Alone7z,Format7zF,SFXCon} UI/Console; do
    make -C CPP/7zip/$i -f ../../cmpl_gcc.mak || exit
done)
```

This package does not have a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vDm755 CPP/7zip/Bundles/Alone{/b/g/7za,7z/b/g/7zr} \
                CPP/7zip/Bundles/Format7zF/b/g/7z.so        \
                CPP/7zip/UI/Console/b/g/7z                  \
                -t /usr/lib/7zip/                           &&

install -vm755 CPP/7zip/Bundles/SFXCon/b/g/7zCon \
               /usr/lib/7zip/7zCon.sfx           &&

(for i in 7z 7za 7zr; do
    cat > /usr/bin/$i << EOF || exit
#!/bin/sh
exec /usr/lib/7zip/$i "\$@"
EOF
    chmod 755 /usr/bin/$i || exit
done) &&

cp -rv DOC -T /usr/share/doc/7zip-26.01
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">7z, 7za, and 7zr</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/7zip and /usr/share/doc/7zip-26.01</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------ -----------------------------------------------------------------------------------
  <a id="Sevenz"></a><span class="command"><span class="term"><strong>7z</strong></span></span>     is a file archiver utility
  <a id="Sevenza"></a><span class="command"><span class="term"><strong>7za</strong></span></span>   is a stand-alone executable handling less archive formats than <span class="command"><strong>7z</strong></span>
  <a id="Sevenzr"></a><span class="command"><span class="term"><strong>7zr</strong></span></span>   is a minimal version of <span class="command"><strong>7za</strong></span> that handles only 7z archives
  ------------------------------------------ -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sysutils.md "System Utilities")

    System Utilities

-   [Next](accountsservice.md "AccountsService-23.13.9")

    AccountsService-23.13.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
