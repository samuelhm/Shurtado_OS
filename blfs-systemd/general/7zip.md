::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysutils.md "System Utilities"){accesskey="p"}

    System Utilities

-   [Next](accountsservice.md "AccountsService-23.13.9"){accesskey="n"}

    AccountsService-23.13.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#seven-zip}7zip-26.01 {#zip-26.01 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to 7zip {#introduction-to-7zip .sect2}

[7zip]{.application} is a file archiver that archives with high compression ratios. It handles 7z, ZIP, GZIP, Brotli, BZIP2, XZ, TAR, APM, ARJ, CAB, CHM, CPIO, CramFS, DEB, DMG, FAT, HFS, ISO, Lizard, LZ5, LZFSE, LZH, LZMA, LZMA2, MBR, MSI, MSLZ, NSIS, NTFS, RAR, RPM, SquashFS, UDF, VHD, WIM, XAR, Z, and Zstd formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ip7z/7zip/archive/26.01/7zip-26.01.tar.gz](https://github.com/ip7z/7zip/archive/26.01/7zip-26.01.tar.gz){.ulink}

-   Download MD5 sum: 28fd40a3d7a1f07e8918ccecfa40605a

-   Download size: 2.2 MB

-   Estimated disk space required: 45 MB

-   Estimated build time: 1.4 SBU
:::

### 7zip Dependencies

#### Optional

[UASM](https://github.com/Terraspace/UASM){.ulink}
:::::

::: {.installation lang="en"}
## Installation of 7zip {#installation-of-7zip .sect2}

Turn off `-Werror`{.literal} to avoid warnings being treated as errors:

``` userinput
sed -i 's/-Werror //g' CPP/7zip/7zip_gcc.mak
```

Install [7zip]{.application} by running the following commands:

``` userinput
(for i in Bundles/{Alone,Alone7z,Format7zF,SFXCon} UI/Console; do
    make -C CPP/7zip/$i -f ../../cmpl_gcc.mak || exit
done)
```

This package does not have a test suite.

Now, as the `root`{.systemitem} user:

``` root
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
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [7z, 7za, and 7zr]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/7zip and /usr/share/doc/7zip-26.01]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -----------------------------------------------------------------------------------
  []{#Sevenz}[[**7z**]{.command}]{.term}     is a file archiver utility
  []{#Sevenza}[[**7za**]{.command}]{.term}   is a stand-alone executable handling less archive formats than [**7z**]{.command}
  []{#Sevenzr}[[**7zr**]{.command}]{.term}   is a minimal version of [**7za**]{.command} that handles only 7z archives
  ------------------------------------------ -----------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](sysutils.md "System Utilities"){accesskey="p"}

    System Utilities

-   [Next](accountsservice.md "AccountsService-23.13.9"){accesskey="n"}

    AccountsService-23.13.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
