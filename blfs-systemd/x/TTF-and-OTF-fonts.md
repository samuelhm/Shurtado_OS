::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](tuning-fontconfig.md "Tuning Fontconfig"){accesskey="p"}

    Tuning Fontconfig

-   [Next](x7legacy.md "Xorg Legacy"){accesskey="n"}

    Xorg Legacy

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#TTF-and-OTF-fonts}TTF and OTF fonts {#ttf-and-otf-fonts .sect1}

:::::: {.sect1 lang="en"}
:::: {.configuration lang="en"}
## About TTF and OTF fonts {#about-ttf-and-otf-fonts .sect2}

Originally, Xorg provided only bitmap fonts. Later, some scalable Type1 fonts were added, but the desktop world moved on to using TrueType and Open Type fonts. To support these, Xorg uses Xft, the X FreeType interface library, with [Fontconfig]{.application} (see previous page for details including how fonts are selected and various reasons why a font might be ignored).

A few fonts are provided as collections (TTC or OTC) where font data is shared between different fonts, which saves disk space. These should be treated in exactly the same way as individual TTF or OTF files.

If a font provides both TTF and OTF forms, you should prefer the OTF form in Linux, as it may provide more features for programs which know how to use them (such as xelatex). The TTF files of these fonts usually contain hinting, see [Hinting and Anti-aliasing](tuning-fontconfig.md#hinting-and-antialiasing "Hinting and Anti-aliasing"){.xref} and [Items which can override Fontconfig](tuning-fontconfig.md#items-which-can-override-fontconfig "Items which can override Fontconfig"){.xref} for reasons why hinting may be undesirable or unusable.

A font may have multiple variations. For example, Noto Sans has 9 weights (ExtraLight, Light, Thin, Normal, Medium, SemiBold, Bold, ExtraBold, and Black) and 2 styles (Regular and Italic), thus 18 variations in total. Normally each variation is provided as a separate TTF or OTF file. For full coverage you need to install all these TTF or OTF files. Even if you are low on disk space, you should still install two weights (Regular and Bold) by two styles (Normal and Italic) if the font has these variations. Some fonts do not have Italic style (for example most CJK fonts and some monospace fonts), and some fonts only have one variation (for example Noto Sans Math, it only provides the glyph of some mathematic symbols).

Some fonts are also available as [*variable*]{.emphasis} font files. Unlike a normal font file which only contains one variation, a variable font file contains infinite variations. Each variation can be defined by the application using this font by assigning number(s) to one or more variables. There are also pre-defined [*named instances*]{.emphasis} analogous to the traditional variations. For example, with the variable version of Noto Sans, the weight variable can be assigned any number not less than 100 and not greater than 900, and 9 named instances are pre-defined: ExtraLight for weight=100, Regular for weight=400, Bold for weight=700, etc. So once a variable font file for Noto Sans is installed, all the 9 named instances (or [“[variations]{.quote}”]{.quote}) are available. Note that the slope is not defined as a variable in the variable version of Noto Sans, so Regular and Italic are still traditional variations and a separate variable font file is needed for the Italic variation.

A variable font file is obviously more flexible than the normal (static) font files. It's extremely useful for fine tuning the font for Web pages or publications. And, the size of a variable font file is usually significantly smaller than the total size of several static font files for multiple variations. For example, the variable font file for Noto Sans SC is only 11M, while the total size of 9 static font files for Noto Sans SC is 91M. But you must make sure your applications really support variable fonts before installing one. For example, [**lualatex**]{.command} supports variable font but [**xelatex**]{.command} does not. So if you want to use a font for an article and use [**xelatex**]{.command} for typesetting, you must not install the variable font files.

For information about variable fonts, please see [Variable Fonts](https://fonts.google.com/knowledge/introducing_type/introducing_variable_fonts/){.ulink}.

For some scripts, [Pango]{.application} is required to render things correctly, either by selecting different glyph forms, or by combining glyphs - in both cases, according to the context. This applies particularly to Arabic and Indic scripts.

Standard scalable fonts that come with [X]{.application} provide very poor Unicode coverage. You may notice in applications that use [Xft]{.application} that some characters appear as a box with four binary digits inside. In this case, a font with the required glyphs has not been found. Other times, applications that don't use other font families by default and don't accept substitutions from [Fontconfig]{.application} will display blank lines when the default font doesn't cover the orthography of the user's language.

The fonts available to a program are those which were present when it was started, so if you add an extra font and wish to use it in a program which is currently running, then you will have to close and restart that program.

Some people are happy to have dozens, or even hundreds, of font files available, but if you ever wish to select a specific font in a desktop application (for example in a word processor) then scrolling through a lot of fonts to find the right one is slow and awkward - fewer is better. So, for some font packages you might decide to install only one of the fonts - but nevertheless install the different variants (italic, bold, etc) as these are all variations for the same font name.

In the past, everybody recommended running [**fc-cache**]{.command} as the `root`{.systemitem} user after installing or removing fonts, but this is not necessary anymore on Linux, [Fontconfig]{.application} will do it automatically if needed as well as if the font caches are more than 30 seconds old. However, if you add a font and want to use it immediately, you can run that command as a normal user.

There are several references below to CJK characters. This stands for Chinese, Japanese and Korean, although modern Korean is now almost all written using the phonetic Hangul glyphs (it used to sometimes use Hanja glyphs which are similar to Chinese and Japanese). Unicode decided to go for [Han Unification](https://en.wikipedia.org/wiki/Han_unification){.ulink} and to map some Chinese and Japanese glyphs to the same codepoints. This was very unpopular in Japan, and the result is that different fonts will render some codepoints in quite different shapes. In addition, Simplified Chinese will sometimes use the same codepoint as Traditional Chinese but will show it differently, somewhat analogous to the different shapes used for the letters 'a' and 'g' in English (single-storey and two-storey), except that in a language context one will look "wrong" rather than just "different".

Unlike most other packages in this book, the BLFS editors do not monitor the versions of the fonts on this page - once a font is good enough for general use, the typical additions in a new version are minor (e.g. new currency symbols, or glyphs not for a modern language, such as emojis or playing cards). Therefore, none of these fonts show version or md5 information.

The list below will not provide complete Unicode coverage. Unicode is updated every year, and most additions are now for historic writing systems. For almost-complete coverage you can install the full set of [Noto fonts](TTF-and-OTF-fonts.md#noto-fonts "Noto fonts"){.xref} (there are separate fonts for different writing systems). We used to recommend the [Unicode Font Guide](https://unifont.org/fontguide/){.ulink}, but that has not been updated since 2008 and many of its links are dead.

Rendered examples of most of these fonts, and many others, with details of what languages they cover, can be found at [typosetting.linuxfromscratch.org](https://typosetting.linuxfromscratch.org){.ulink} which aims to analyse and compare fonts and despite the name eventually added some reasonable examples of typesetting.

Fonts are often supplied in zip files, requiring tools from [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} or [7zip-26.01](../general/7zip.md "7zip-26.01"){.xref} to list and extract them, but even if the current release is a tarball, you should still check to see if it will create a directory (scattering the contents of a zipfile or tarball across the current directory can be very messy, and a few fonts create \_\_MACOSX/ directories). In addition, many fonts are supplied with permissions which do not let 'other' users read them - if a font is to be installed for system-wide use, any directories must be mode 755 and all the files mode 644, so you need to change them if the permissions are different. If you forget, the root user may be able to see a particular font in [**fc-list**]{.command}, but a normal user will not be able to use them.

As a font installation example, consider the installation of the [Dejavu fonts](TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref}. In this particular package, the TTF files are in a subdirectory. From the unpacked source directory, run the following commands as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/fonts/dejavu &&
install -v -m644 ttf/*.ttf /usr/share/fonts/dejavu &&
fc-cache -v /usr/share/fonts/dejavu
```

If you wish, you can also install any licenses or other documentation, either alongside the font or in a corresponding directory under `/usr/share/doc/`{.filename}.

A few fonts ship with source as well as the completed TTF or OTF file(s). Unless you intend to modify the font, and have the correct tools (sometimes [FontForge-20251009](../xsoft/fontforge.md "FontForge-20251009"){.xref}, but often commercial tools), the source will provide no benefit, so do not install it. One or two fonts even ship with Web Open Font Format (WOFF) files - this is useful if you run a webserver and want to use that font on your website, but not useful for a desktop system.

To provide greater Unicode coverage, you should install some of the following fonts, depending on what websites and languages you want to read. The next part of this page details some fonts which cover at least Latin alphabets, and the final part deals with some CJK issues.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Installation of the [Dejavu fonts](TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref} used to be strongly recommended, but the [Noto fonts](TTF-and-OTF-fonts.md#noto-fonts "Noto fonts"){.xref} will be used in preference if both have been installed. The only likely reason to now prefer a DejaVu font is that DejaVu-Serif has an open 'g' (Both DejaVu Sans and Noto Sans also use an open 'g'). Other than that, Noto is more up to date with fuller coverage.
:::

### []{#adwaita-fonts}Adwaita fonts

[Adwaita fonts](https://download.gnome.org/sources/adwaita-fonts/48/){.ulink} – The Adwaita family provides clear, modern and maintained fonts. They are the preferred fonts for GNOME-48 and later. The tarball includes update scripts for the source, as well as TTF fonts in the mono/ and sans/ directories. The variable-width sans fonts are adapted to fit in UI dialog messages and intended for normal use. The mono fonts (normal and italic in regular and, bold weights), are intended to match, for use in terminals and programming.

### []{#Caladea}Caladea

[Caladea](https://fonts.google.com/specimen/Caladea){.ulink} (created as a Chrome OS extra font) is metrically compatible with MS Cambria and can be used if you have to edit a document which somebody started in Microsoft Office using Cambria.

### []{#cantarell-fonts}Cantarell fonts

[Cantarell fonts](https://fonts.google.com/specimen/Cantarell){.ulink} – The Cantarell typeface family provides a contemporary Humanist Sans Serif. It is particularly optimised for legibility at small sizes and was the preferred font family for the [GNOME]{.application} user interface before GNOME-48.

### []{#Carlito}Carlito

[Carlito](https://github.com/googlefonts/carlito){.ulink} (created as another Chrome OS extra font) is metrically compatible with MS Calibri and can be used if you have to edit a document which somebody started in Microsoft Office using Calibri.

### []{#dejavu-fonts}DejaVu fonts

[DejaVu fonts](https://sourceforge.net/projects/dejavu/files/dejavu/){.ulink} – These fonts are an extension of, and replacement for, the Bitstream Vera fonts and provide Latin-based scripts with accents and punctuation such as "smart-quotes" and variant spacing characters, as well as Cyrillic, Greek, Arabic, Hebrew, Armenian, Georgian and some other glyphs. In the absence of the Bitstream Vera fonts (which had much less coverage), these were the default fallback fonts for 'Latin' languages. As of Fontconfig-2.14, if the Noto 'Latin' fonts have been installed they will be prioritised ahead of DejaVu.

### []{#freefont}GNU FreeFont

[GNU FreeFont](https://ftpmirror.gnu.org/gnu/freefont/){.ulink} – This set of fonts covers many non-CJK characters, but the glyphs are comparatively small (unlike Noto and DejaVu fonts which are comparatively large) and rather light weight ("less black" when black on white is used) which means that in some contexts such as terminals they are not visually pleasing, for example when most other glyphs are provided by another font. On the other hand, some fonts used primarily for printed output, and many CJK fonts, are also light weight.

### []{#Gelasio}Gelasio

[Gelasio](https://fonts.google.com/specimen/Gelasio){.ulink} is metrically compatible with MS Georgia and [Fontconfig]{.application} will use it if MS Georgia is requested but is not installed.

### []{#liberation-fonts}Liberation fonts

The [Liberation fonts](https://github.com/liberationfonts/){.ulink} provide libre substitutes for Arial, Courier New, and Times New Roman. [Fontconfig]{.application} will use them as substitutes for those fonts, and also for the similar Helvetica, Courier, and Times Roman, though for these it can prefer a different font (see the examples in the PDFs at [typosetting.linuxfromscratch.org](https://typosetting.linuxfromscratch.org/files/PDF-substitutes/){.ulink}).

Many people will find the Liberation fonts useful for pages where one of those fonts is requested.

### []{#corefonts}Microsoft Core Fonts

The [Microsoft Core Fonts](https://corefonts.sourceforge.net/){.ulink} date from 2002. They were supplied with old versions of Microsoft Windows and were apparently made available for general use. You can extract them from the '.exe' files using [bsd-tar]{.application} from [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}. Make sure that you read the license before using them. At one time some of these fonts (particularly Arial, Times New Roman, and to a lesser extent Courier New) were widely used on web pages. The full set contains Andale Mono, Arial, Arial Black, Comic Sans MS, Courier New, Georgia, Impact, Times New Roman, Trebuchet MS, Verdana and Webdings.

Please note that if you only want to use a font with the same metrics (character size, etc) as Arial, Courier New, or Times New Roman you can use the libre Liberation Fonts (above), and similarly you can replace Georgia with Gelasio.

Although many old posts recommend installing these fonts for output which looks better, less old posts say that these are 'ugly' or 'broken' with modern [Fontconfig]{.application}, [Freetype]{.application} and [Pango.]{.application} Most people will not want to install any of these fonts.

The newer fonts which Microsoft made their defaults in later releases of MS Windows or MS Office (Calibri and Cambria) have never been freely available. However, if you do not have them installed you can find metric equivalents (Carlito and Caladea) above.

### []{#noto-fonts}Noto fonts

The [Noto fonts](https://fonts.google.com/noto/){.ulink} ('No Tofu', i.e. avoiding boxes with dots \[hex digits\] when a glyph cannot be found) are a set of fonts which aim to cover [*every glyph in Unicode, no matter how obscure*]{.emphasis}.

People using languages written in Latin, Greek or Cyrillic alphabets only need to install Noto Sans, Noto Serif and/or Noto Sans Mono. For more details on the organization of Noto fonts see [how are noto fonts organized](https://fonts.google.com/noto/use#how-are-noto-fonts-organized/){.ulink}. There are also separate fonts for every other current writing system, but those do not cover text in Latin languages.

Those three fonts are the first-choice preferences of [Fontconfig]{.application} for text in those three alphabets, and they are updated frequently to cover recent Unicode additions such as the extensions for phonetic transcription in Latin and Cyrillic alphabets.

It may be easier to download a specific Noto font by going to [Noto Sans](https://fonts.google.com/specimen/Noto+Sans){.ulink} and changing the font name as appropriate, with '+' between each word, e.g. 'Noto+Kufi+Arabic', 'Noto+Serif+Georgian' or whatever, then clicking on 'Download family'.

For the Noto CJK fonts it is easier to find the specific zip archive you desire at Github. Go to [https://github.com/notofonts/noto-cjk/releases/](https://github.com/notofonts/noto-cjk/releases/){.ulink} and look for the newest Sans or Serif version with its own updated Download guide and its assets. The Download guides should help you to identify which zip file best matches your requirements.

Noto Sans is the preferred font for KDE Plasma and applications, except for monospace fonts where [Hack](https://github.com/source-foundry/Hack){.ulink} is preferred.

For writing systems not using the Latin, Greek or Cyrillic alphabets the Noto fonts are not preferred by [Fontconfig]{.application}. If you use a Noto font for a modern language where another installed font also covers it (e.g. the DejaVu fonts cover several Right-to-Left alphabets), you might need to set a preference for [Fontconfig]{.application} - see the previous page.

### []{#source-code-pro}Source Code Pro

This set of fonts from Adobe (seven different weights) includes what is now the preferred monospace font for those applications which use [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}. The github release [source-code-pro](https://github.com/adobe-fonts/source-code-pro.git#release){.ulink} contains OTF (preferred) and TTF as well as the source and WOFF fonts.

To use this in terminals, you probably will only want the Regular font.

There is also an older TTF version of this available from [Google fonts](https://fonts.google.com/specimen/Source+Code+Pro?selection.family=Source+Code+Pro){.ulink} but that has very limited coverage (adequate for most European languages using a Latin alphabet).

### []{#lohit-fonts}Lohit fonts

For Indic languages, [Fontconfig]{.application} now prefers Lohit fonts (Sanskrit for 'red'). They can be found at [pagure.org](https://releases.pagure.org/lohit/){.ulink}
::::

::: {.sect2 lang="en"}
## []{#CJKfonts}CJK fonts {#cjk-fonts .sect2}

As indicated earlier, usage of a combination of Chinese, Japanese and Korean characters can be tricky - each font only covers a subset of the available codepoints, the preferred shapes of the glyphs can differ between the languages, and many of the CJK fonts do not actually support modern Korean.

Also, [Fontconfig]{.application} prefers Chinese to Japanese by default. Tuning that is covered at [Preferring chosen CJK fonts](tuning-fontconfig.md#prefer-chosen-CJK-fonts "Prefer chosen CJK fonts"){.xref}.

Although Unicode has been extended to allow a very large number of CJK codepoints, those outside the Base Plane (greater than U+0xFFFF) are not commonly used in Mandarin (the normal form of written Chinese, whether Simplified (Mainland China, Malaysia, and Singapore) or Traditional (Hong Kong and Taiwan)), or Japanese.

For Hong Kong, which uses Traditional Chinese and where Cantonese is the dominant language, the Hong Kong Supplementary Character Set was added to Unicode in 2005 and revised in 2009 (it is part of CJK Extension B and contains more than 1900 characters). Earlier fonts will not be able to support either Cantonese or use these characters where local names are written in Mandarin. The UMing HK, Noto Sans HK and WenQuanYi Zen Hei fonts all seem to cover Hong Kong usage ([Fontconfig]{.application} disagrees about Noto Sans HK).

The Han glyphs are double width, and other glyphs in the same font may be narrower. For their CJK content, all of these fonts can be regarded as monospaced (i.e. fixed width).

If you wish to use Noto fonts, there are also Serif versions of their various CJK fonts. The Noto Sans/Serif SC/TC/HK/JP/KR fonts are derived from a monolithic [noto-cjk](https://github.com/notofonts/noto-cjk){.ulink} repository and you can find the `.ttc`{.filename} files for the entire Noto Sans CJK (including SC/TC/HK/JP/KR) or Noto Serif CJK font family there. Google recommends the normal users to use the separate Noto Sans/Serif SC/TC/HK/JP/KR fonts instead, but if you are capable and willing to read texts in more than one CJK character systems it may be easier to use a monolithic `.ttc`{.filename} file for full coverage.

If all you wish to do is render CJK glyphs, installing [WenQuanYi ZenHei](TTF-and-OTF-fonts.md#wenquanyi-zenhei "WenQuanYi Zen Hei"){.xref} may be a good place to start if you do not already have a preference.

### []{#Chinese-fonts}Chinese fonts:

In Chinese, there are three font styles in common use: Sung (also known as Song or Ming), which is the most-common ornamented ("serif") form, Kai ("brush strokes") which is an earlier ornamented style that looks quite different, and modern Hei ("sans"). Unless you appreciate the differences, you probably do not want to install Kai fonts.

The current versions of Chinese Noto Sans fonts can be found at [Noto Sans SC](https://fonts.google.com/specimen/Noto+Sans+SC){.ulink} for Simplified Chinese, [Noto Sans TC](https://fonts.google.com/specimen/Noto+Sans+TC){.ulink} for Traditional Chinese, and as mentioned above [Noto Sans HK](https://fonts.google.com/specimen/Noto+Sans+HK){.ulink} for use in Hong Kong.

#### []{#Opendesktop-fonts}Opendesktop fonts

A copy of version 1.4.2 of the [opendesktop-fonts](https://sources.archlinux.org/other/opendesktop-fonts/){.ulink} is preserved at Arch. This was a later development of fireflysung which BLFS used to recommend, adding Kai and Mono fonts. The name of the Sung font remains 'AR PL New Sung' so they cannot both be installed together.

At one time there was a 1.6 release, and more recently some versions at github, which also included a Sans font (Odohei), but those have dropped off the web and it is unclear if there was a problem. [Fontconfig]{.application} does not know anything about the later fonts (AR PL New Kai, AR PL New Sung Mono) and will default to treating them as Sans.

#### []{#UMing}UMing

[UMing fonts](http://ftp.debian.org/debian/pool/main/f/fonts-arphic-uming/){.ulink} – sets of Chinese Ming fonts (from Debian, use the '.orig' tarball) in a ttc which contain variations of Simplified and Traditional Chinese (Taiwanese, with second variant for different [bopomofo](https://en.wikipedia.org/wiki/Bopomofo){.ulink}, and Cantonese for Hong Kong). This ships with old-syntax files which you can install to `/etc/fonts/conf.d/`{.filename} but see [Editing Old-Style conf files](tuning-fontconfig.md#editing-old-style-conf-files "Editing Old-Style conf files"){.xref}.

#### []{#wenquanyi-zenhei}WenQuanYi Zen Hei

[WenQuanYi Zen Hei](https://sourceforge.net/projects/wqy/files/wqy-zenhei/){.ulink} provides a Sans-Serif font which covers all CJK scripts including Korean. Although it includes old-style conf files, these are not required: [Fontconfig]{.application} will already treat these fonts (the 'sharp' contains bitmaps, the monospace appears not to be Mono in its ASCII part) as Sans, Serif, and Monospace. If all you wish to do is to be able to render Han and Korean text without worrying about the niceties of the shapes used, the main font from this package is a good font to use.

### []{#Japanese-fonts}Japanese fonts:

In Japanese, Gothic fonts are Sans, and Mincho are Serif. BLFS used to only mention the Kochi fonts, but those appear to now be the least-preferred of the Japanese fonts.

Apart from the fonts detailed below, also consider [Noto Sans JP](https://fonts.google.com/specimen/Noto+Sans+JP){.ulink}.

#### []{#IPAex}IPAex fonts

The [IPAex fonts](https://moji.or.jp/ipafont/){.ulink} are the current version of the IPA fonts. Use [Google Translate](https://moji-or-jp.translate.goog/ipafont/?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en&_x_tr_pto=wapp){.ulink} on the home page, then click on the download link for IPAex Font Ver.004.01. Unfortunately, [Fontconfig]{.application} only knows about the older IPAfonts and the forked IPA Mona font (which is not easily available and which apparently does not meet Debian's Free Software guidelines). If you install the IPAex fonts, you may want to make it known to [Fontconfig]{.application}. Please see [Preferring chosen CJK fonts](tuning-fontconfig.md#prefer-chosen-CJK-fonts "Prefer chosen CJK fonts"){.xref} for one way to accomplish this.

#### []{#Kochi}Kochi fonts

The [Kochi Substitute fonts](https://web.archive.org/web/20190709233112/http://wiki.fdiary.net/font/){.ulink} were the first truly libre Japanese fonts (the earlier Kochi fonts were allegedly plagiarized from a commercial font).

#### []{#VLGothic}VL Gothic

The [VL Gothic](https://fontinfo.opensuse.org/fonts/VLGothicregular.md){.ulink} font is a modern Japanese font in two variants with monotonic or proportional spacing for the non-Japanese characters.

### []{#Korean-fonts}Korean fonts:

In Korean, Batang or Myeongjo (the older name) are Serif, Dotum or Gothic are the main Sans fonts. BLFS previously recommended the Baekmuk fonts, but the Nanum and Un fonts are now preferred to Baekmuk by [Fontconfig]{.application} because of user requests.

A convenient place to see examples of these and many other Korean fonts is [Free Korean Fonts](https://www.freekoreanfont.com/){.ulink}. Click on 'Gothic Fonts' or 'All Categories -\> Myeongjo Fonts', then click on the font example to see more details including the License, and click on the link to download it. For Nanum, you will need to be able to read Korean to find the download link on the page you get to. For Un there are direct links and you can find the un-fonts-core tarball in the `releases/`{.filename} directory.

Alternatively, consider [Noto Sans KR](https://fonts.google.com/specimen/Noto+Sans+KR){.ulink} or [WenQuanYi ZenHei](TTF-and-OTF-fonts.md#wenquanyi-zenhei "WenQuanYi Zen Hei"){.xref}.
:::
::::::

::: navfooter
-   [Prev](tuning-fontconfig.md "Tuning Fontconfig"){accesskey="p"}

    Tuning Fontconfig

-   [Next](x7legacy.md "Xorg Legacy"){accesskey="n"}

    Xorg Legacy

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
