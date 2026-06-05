<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorg-config.md "Xorg-7 Testing and Configuration")

    Xorg-7 Testing and Configuration

-   [Next](TTF-and-OTF-fonts.md "TTF and OTF fonts")

    TTF and OTF fonts

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tuning Fontconfig {#tuning-fontconfig}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Overview of Fontconfig {#overview-of-fontconfig}

If you only read text in English, and are happy with the common libre fonts listed on the next page, you may never need to worry about the details of how <span class="application">Fontconfig</span> works. But there are many things which can be altered if they do not suit your needs.

However, before spending a long time trying out different settings please be aware that modern applications and desktop environments may ignore the settings of fontconfig - see <a class="xref" href="tuning-fontconfig.md#items-which-can-override-fontconfig" title="Items which can override Fontconfig">Items which can override Fontconfig</a>.

Although this page is long, it barely scratches the surface and you will be able to find many alternative views on the web (but please remember that some things have changed over the years, for example the autohinter is no longer the default). The aim here is to give you enough information to understand the changes you are making, why they may not always work, and to identify online information which is no-longer appropriate.

Unfortunately, some of the terminology is ambiguous (e.g. 'font face' can mean a name known to Fontconfig, <span class="emphasis"><em>or</em></span> the ordinary, condensed, etc variations of a font) and 'style' can be used to differentiate 'ordinary' from 'italic', or in describing some classes of Serif fonts.

The following links are to assist navigation in this page.

<div class="itemizedlist">
-   <a class="xref" href="tuning-fontconfig.md#xft-font-protocol" title="The Xft Font Protocol">The Xft Font Protocol</a>

-   <a class="xref" href="tuning-fontconfig.md#useful-commands" title="Useful Commands">Useful Commands</a>

-   <a class="xref" href="tuning-fontconfig.md#the-various-files" title="The configuration files">The configuration files</a>

-   <a class="xref" href="tuning-fontconfig.md#rules-to-choose-a-font" title="The rules to choose a font">The rules to choose a font</a>

-   <a class="xref" href="tuning-fontconfig.md#hinting-and-antialiasing" title="Hinting and Anti-aliasing">Hinting and Anti-aliasing</a>

-   <a class="xref" href="tuning-fontconfig.md#disabling-bitmap-fonts" title="Disabling Bitmap Fonts">Disabling Bitmap fonts</a>

-   <a class="xref" href="tuning-fontconfig.md#synthetic-changes" title="Synthetic changes">Synthetic changes</a>

-   <a class="xref" href="tuning-fontconfig.md#adding-extra-directories" title="Adding extra font directories">Adding extra font directories</a>

-   <a class="xref" href="tuning-fontconfig.md#preferring-certain-fonts" title="Preferring certain fonts">Preferring certain fonts</a>

-   <a class="xref" href="tuning-fontconfig.md#fontconfig-user-docs" title="Fontconfig user documentation">Fontconfig user documentation</a>

-   <a class="xref" href="tuning-fontconfig.md#prefer-a-specific-font" title="Prefer a specific font">Prefer a specific font</a>

-   <a class="xref" href="tuning-fontconfig.md#prefer-chosen-CJK-fonts" title="Prefer chosen CJK fonts">Preferring chosen CJK fonts</a>

-   <a class="xref" href="tuning-fontconfig.md#editing-old-style-conf-files" title="Editing Old-Style conf files">Editing Old-Style conf files</a>

-   <a class="xref" href="tuning-fontconfig.md#font-weights" title="About font weights">About font weights</a>

-   <a class="xref" href="tuning-fontconfig.md#items-which-can-override-fontconfig" title="Items which can override Fontconfig">Items which can override Fontconfig</a>

-   <a class="xref" href="tuning-fontconfig.md#external-links" title="External Links">External Links</a>
</div>
</div>

<div class="configuration" lang="en">
## The Xft Font Protocol {#the-xft-font-protocol}

The Xft font protocol provides antialiased font rendering through <span class="application">freetype</span>, and fonts are controlled from the client side using <span class="application">Fontconfig</span> (except for <a class="xref" href="../xsoft/rxvt-unicode.md" title="rxvt-unicode-9.31">rxvt-unicode-9.31</a> which can use fonts listed in <code class="filename">~/.Xresources</code>) The default search path is <code class="filename">/usr/share/fonts</code> and <code class="filename">~/.local/share/fonts</code>, although for the moment the old and deprecated location <code class="filename">~/.fonts</code> still works. <span class="application">Fontconfig</span> searches directories in its path recursively and maintains a cache of the font characteristics in each directory. If the cache appears to be out of date, it is ignored, and information is fetched from the fonts themselves (that can take a few seconds if you have a lot of fonts installed).

If you've installed <span class="application">Xorg</span> in any prefix other than <code class="filename">/usr</code>, any <span class="application">X</span> fonts were not installed in a location known to <span class="application">Fontconfig</span>. Symlinks were created from the <code class="filename">OTF</code> and <code class="filename">TTF</code> <span class="application">X</span> font directories to <code class="filename">/usr/share/fonts/X11-{OTF,TTF}</code> in Xorg Fonts. This allows <span class="application">Fontconfig</span> to use the OpenType and TrueType fonts provided by <span class="application">X</span>, although many people will prefer to use more modern fonts.

<span class="application">Fontconfig</span> uses names to define fonts. Applications generally use generic font names such as "Monospace", "Sans" and "Serif". <span class="application">Fontconfig</span> resolves these names to a font that has all characters that cover the orthography of the language indicated by the locale settings.
</div>

<div class="configuration" lang="en">
## Useful Commands {#useful-commands}

The following commands may be helpful when working with <span class="application">Fontconfig</span>, particularly if you are interested in overriding which font will be chosen.

<span class="command"><strong>fc-list \| less</strong></span> : shows a list of all available fonts (/path/to/filename: Font Name:style). If you installed a font and it doesn't show, then the directory it is contained in is not readable by your user.

<span class="command"><strong>fc-match 'Font Name'</strong></span> : tells you which font will be used if the named font is requested. Typically you would use this to see what happens if a font you have not installed is requested, but you can also use it if the system is giving you a different font from what you expected (perhaps because <span class="application">Fontconfig</span> does not think that the font supports your language).

<span class="command"><strong>fc-match <em>`TYPE`</strong></em></span> : shows which font will be used in the current language for that *`TYPE`* (Monospace, Sans, Serif <span class="emphasis"><em>(initial capital letter is optional)</em></span>). If that font does not map a codepoint, <span class="application">Fontconfig</span> can take a glyph from any available font, even if it is not of the specified type. Any other value for *`TYPE`* will be assumed to be Sans.

<span class="command"><strong>fc-match 'Serif :lang=ja:weight=bold'</strong></span> will tell you which font and weight will be chosen for Japanese text in bold weight. It does not mean that the reported font will necessarily be able to show Japanese ideograms, so a fallback might be used, or some glyphs may be missing. For language codes, use ISO-639 values such as 'fr', 'ja', 'zh-cn'. Note that an unrecognized value such as just 'zh' will not return any match. To illustrate the fallback, on a system where both Noto Sans Mono and DejaVu Sans Mono are installed, <span class="command"><strong>fc-match 'monospace :lang=en</strong></span> shows Noto Sans Mono will be used, but if the lang is changed to 'ar' (arabic) DejaVu Sans will be used.

If you want to determine if a font file has hinting (many older fonts do not, because it was patented) use <span class="command"><strong>fc-query <em>`/path/to/fontfile`</em> \| grep 'fonthashint:'</strong></span>: which will report 'True(s)' or 'False(s)'. Some recent fonts with both TTF and OTF versions will have hinting in the TTF files.

If you wish to know which font will be used for a string of text (i.e. one or more glyphs, preceded by a space), paste the following command and replace the <code class="literal">xyz</code> by the text you care about:

<span class="command"><strong>FC_DEBUG=4 pango-view --font=monospace -t xyz \| grep family</strong></span> : this requires <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a> and <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> - it will invoke <span class="command"><a class="xref" href="../general/imagemagick.md#display"><strong>display</strong></span></a> to show the text in a tiny window, and after closing that the last line of the output will show which font was chosen. This is particularly useful for CJK languages, and you can also pass a language, e.g. PANGO_LANGUAGE=en;ja (English, then assume Japanese) or just zh-cn (or other variants such as zh-sg or zh-tw).
</div>

<div class="configuration" lang="en">
## The configuration files {#the-configuration-files}

The main files are in <code class="filename">/etc/fonts/conf.d/</code>, which was intended to be a directory populated by symlinks to some of the files in <code class="filename">/usr/share/fontconfig/conf.avail/</code>. But many people, and some packages, create the files directly. Each file name must be in the form of two digits, a dash, somename.conf and they are read in sequence.

By convention, the numbers are assigned as follows:

<div class="itemizedlist">
-   00-09 extra font directories

-   10-19 system rendering defaults (such as antialiasing)

-   20-29 font rendering options

-   30-39 family substitution

-   40-49 map family to generic type

-   50-59 load alternate config files

-   60-69 generic aliases, map generic to family

-   70-79 adjust which fonts are available

-   80-89 match target scan (modify scanned patterns)

-   90-99 font synthesis
</div>

You can also have a personal <code class="filename">fonts.conf</code> in \$XDG_CONFIG_HOME (which is <code class="filename">~/.config/fontconfig/</code>).
</div>

<div class="configuration" lang="en">
## The rules to choose a font {#the-rules-to-choose-a-font}

If the requested font is installed, and provided it contains the codepoints <span class="emphasis"><em>required</em></span> for the current language (in the source, see the .orth files in the <code class="filename">fc-lang/</code> directory), it will be used.

However, if the document or page requested a font which is not installed (or, occasionally, does not contain all the required codepoints) the following rules come into play: First, <code class="filename">30-metric-aliases.conf</code> is used to map aliases for some fonts with the same metrics (same size, etc). Note that there are both weak and strong aliases so that aliases for one form such as Helvetica or Times New Roman can be satisfied by the other style, i.e. anything which is an alias of Arial or Times in those examples. some examples of Latin fonts with the same metrics can be found in the 'Substitutes' PDFs at <a class="ulink" href="https://typosetting.linuxfromscratch.org/files/PDF-substitutes/">typosetting.linuxfromscratch.org</a>.

After that, an unknown font will be searched for in <code class="filename">45-latin.conf</code>: 'Latin' covers Cyrillic and Greek, and now also maps system-ui fonts which are used for User Interface messages in other alphabets. If the font is found it will be mapped as serif, sans-serif, monospace, fantasy, cursive, or system-ui. Otherwise, 49-sansserif.conf will assume it is Sans.

Then <code class="filename">60-latin.conf</code> provides ordered lists of the fallbacks - <a class="xref" href="TTF-and-OTF-fonts.md#noto-fonts" title="Noto fonts">Noto fonts</a> will be used if you installed them. Cyrillic and Greek appear to be treated in the same way.All of these files prefer commercial fonts if they are present, although modern libre fonts are often at least equal. Finally, if a codepoint is still not found it can be taken from any available system font. The following details only mention freely available fonts.

Default Persian fonts are dealt with in <code class="filename">65-fonts-persian.conf</code>. It looks as if all the listed fonts are commercial. Using fonts that support Persian (which has its own variant of the arabic alphabet, and its own font styles) is outside the skills of the BLFS editors.

All remaining scripts for which <span class="application">Fontconfig</span> has preferences (CJK scripts, Indic scripts) are dealt with in <code class="filename">65-nonlatin.conf</code>. These are again nominally grouped as Serif, Sans-Serif, Monospace. Of the free fonts, WenQuanYi Zen Hei (Pan-CJK Sans) comes first for both Serif and for Sans. Therefore, if you install this as a fallback but want to use different fonts for Japanese or Korean you will need to set up a preference. Similarly, the old fireflysung Serif font is also listed for Sans.

After Pan-CJK and Chinese fonts come several Japanese fonts and then several Korean fonts (both split appropriately between Sans and Serif). Finally come the various Lohit Indic families (one font file per script), labelled as both Sans and Serif.

The Monospace fonts listed in <code class="filename">65-nonlatin.conf</code> do not include WenQuanYi Zen Hei although that will be available as a fallback if installed. Several Japanese Gothic fonts are listed, followed by AR PL KaitiM GB (a zh-sc 'Brush' font), AR PL Serif fonts for zh-sc (SungtiL) and zh-tw (Mingti2L), some Korean Sans fonts and the various Lohit Indic families.

For UI fonts, various Noto Sans UI fonts are the only listed free fonts.

The various Noto CJK fonts are <span class="emphasis"><em>not</em></span> among the listed fonts, possibly the RedHat developers preferred other fonts. These now come in many variations, and most users who use these will not install any other CJK fonts.

Before Fontconfig-2.14, the first preferred Latin font family was Bitstream Vera. In practice that was rarely used because it covered so little. After that, DejaVu was the next preferred family, so people were recommended to install that. That has now changed, Bitstream Vera has been replaced by the relevant Noto fonts (Serif, Sans, Sans Mono), so these will be preferred if they have been installed, followed by DejaVu.

For serif, Times New Roman could have been aliased from Liberation Serif or Tinos, and Times from TeX Gyre Termes, so although the named fonts are not free, the metric-compatible fonts can be used. Ignoring other non-free fonts, the remaining order for serif is: Times New Roman, Luxi Serif, Nimbus Roman No9 L, and Times. In practice, that means those fonts at the end of the list are unlikely to be used unless a web page asks for them.

For sans-serif, the remaining order is anything mapped to Arial, Luxi Sans, Nimbus Sans L, and anything mapped to Helvetica.

The remaining alternatives for monospace are Inconsolata, anything mapped to Courier New, Luxi Mono, Nimbus Mono, and anything mapped to Courier.

For 'fantasy' there are no free fonts, so <span class="application">Fontconfig</span> will fall back to sans-serif.

For 'cursive', the only free font is TeX Gyre Chorus as an alias for ITC Zapf chancery, otherwise <span class="application">Fontconfig</span> will again fall back to sans-serif.

The system-ui category is unusual. It is for interface messages, so some scripts need special versions to fit in the available space. For Latin, Greek and Cyrillic an ordinary sans font should fit without problems. However, the first preferred font is Cantarell, followed by Noto Sans UI. Cantarell started as a Latin sans-serif font, that has been forked in Gnome under the same name but they only provide the source. The Noto Sans UI fonts are for other languages.

Since Fontconfig-2.12.5, there is also generic family matching for some emoji and math fonts, please see {45,60}-generic.conf.

In the rare cases where a font does not contain all the expected codepoints, see 'Trial the First:' at <a class="xref" href="tuning-fontconfig.md#I-stared-into-the-fontconfig" title="I stared into the fontconfig ...">I stared into the fontconfig</a> for the long details.
</div>

<div class="configuration" lang="en">
## Hinting and Anti-aliasing {#hinting-and-anti-aliasing}

It is possible to change how, or if, fonts are hinted. The following example file contains the default settings, but with comments. The settings are very much down to the user's preferences and to the choice of fonts, so a change which improves some pages may worsen others. The preferred location for this file is: <code class="filename">~/.config/fontconfig/fonts.conf</code>

To try out different settings, you may need to exit from Xorg and then run <span class="command"><strong>startx</strong></span> again so that all applications use the new settings. Several things can override the fontconfig settings, see <a class="xref" href="tuning-fontconfig.md#items-which-can-override-fontconfig" title="Items which can override Fontconfig">Items which can override Fontconfig</a> below for more details. To explore the possibilities, create a file for your user:

```bash
mkdir -pv ~/.config/fontconfig &&
cat > ~/.config/fontconfig/fonts.conf << "EOF"
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>

  <match target="font" >
    <!-- autohint was the old automatic hinter when hinting was patent
    protected, so turn it off to ensure any hinting information in the font
    itself is used, this is the default -->
    <edit mode="assign" name="autohint">  <bool>false</bool></edit>

    <!-- hinting is enabled by default -->
    <edit mode="assign" name="hinting">   <bool>true</bool></edit>

    <!-- for the lcdfilter see https://www.spasche.net/files/lcdfiltering/ -->
    <edit mode="assign" name="lcdfilter"> <const>lcddefault</const></edit>

    <!-- options for hintstyle:
    hintfull: is supposed to give a crisp font that aligns well to the
    character-cell grid but at the cost of its proper shape. However, anything
    using Pango >= 1.44 will not support full hinting, Pango now uses harfbuzz
    for hinting. Apps which use Skia (e.g. Chromium, Firefox) should not be
    affected by this. 

    hintmedium: is reported to be broken.
    hintslight is the default: - supposed to be more fuzzy but retains shape.

    hintnone: seems to turn hinting off.
    The variations are marginal and results vary with different fonts -->
    <edit mode="assign" name="hintstyle"> <const>hintslight</const></edit>

    <!-- antialiasing is on by default and really helps for faint characters
    and also for 'xft:' fonts used in rxvt-unicode -->
    <edit mode="assign" name="antialias"> <bool>true</bool></edit>

    <!-- subpixels are usually rgb, see
    http://www.lagom.nl/lcd-test/subpixel.php -->
    <edit mode="assign" name="rgba">      <const>rgb</const></edit>

    <!-- thanks to the Arch wiki for the lcd and subpixel links -->
  </match>

</fontconfig>
EOF
```

You will now need to edit the file in your preferred editor. Many of the different settings give very subtle differences and the results may differ for some of the fonts you use.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Hinting, if enabled, is done in <span class="application">FreeType</span>. Since FreeType-2.7 the default TrueType interpreter is v40. The original v35 hinter could be enabled by an environment variable, but is only really appropriate to original Microsoft TTF fonts (Arial, etc). The v38 hinter (Infinality) is not built by default and all the options to tune it have been removed. For full details see <a class="xref" href="tuning-fontconfig.md#subpixel-hinting" title="subpixel-hinting">subpixel-hinting</a> (Spoiler: there is NO sub-pixel hinting, the code simply ignores <span class="emphasis"><em>all</em></span> horizontal hinting instructions).

Xorg assumes screens have 96 dots per inch (DPI). Most LCD screens are close to this, but some people detect colour fringing if their screen diverges from that size. See <a class="xref" href="tuning-fontconfig.md#calc-dpi" title="Calculating DPI">calc-dpi</a>.

If you have a High DPI screen (often described as '4K' or larger) you will probably use larger font sizes and benefit from disabling hinting.
</div>

For more examples see the blfs-support thread which started at <a class="ulink" href="https://lists.linuxfromscratch.org/sympa/arc/blfs-support/2016-09/msg00128.md">2016-09/00128</a>, particularly <a class="ulink" href="https://lists.linuxfromscratch.org/sympa/arc/blfs-support/2016-09/msg00137.md">2016-09/00137</a>, and the original poster's preferred solution at <a class="ulink" href="https://lists.linuxfromscratch.org/sympa/arc/blfs-support/2016-09/msg00147.md">2016-09/00147</a>. There are other examples in <a class="xref" href="tuning-fontconfig.md#arch-fontconfig" title="Fontconfig in the Arch wiki">Fontconfig in the Arch wiki</a> and <a class="xref" href="tuning-fontconfig.md#gentoo-fontconfig" title="Fontconfig in the Gentoo wiki">Fontconfig in the Gentoo wiki</a>.
</div>

<div class="configuration" lang="en">
## Disabling Bitmap Fonts {#disabling-bitmap-fonts}

In previous versions of BLFS, the ugly old Xorg bitmap fonts were installed. Now, many people will not need to install any of them. But if for some reason you have installed one or more bitmap fonts, you can prevent them from being used by <span class="application">Fontconfig</span> by creating the following file as the <code class="systemitem">root</code> user :

```bash
cat > /etc/fonts/conf.d/70-no-bitmaps.conf << "EOF"
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
<!-- Reject bitmap fonts -->
 <selectfont>
  <rejectfont>
   <pattern>
     <patelt name="scalable"><bool>false</bool></patelt>
   </pattern>
  </rejectfont>
 </selectfont>
</fontconfig>
EOF
```
</div>

<div class="configuration" lang="en">
## Synthetic changes {#synthetic-changes}

In <code class="filename">90-synthetic.conf</code> there are examples of applying synthetic slanting and emboldening to a font. The synthetic emboldening can be applied to a visibly faint font, but the results are not always as expected: With just the embolden, <span class="application">Epiphany</span> showed darker fonts while <span class="application">Firefox</span> did not - so although <span class="application">Cairo</span> is now used by <span class="application">firefox</span> the comment about setting Weight is still valid. But setting both, <span class="application">Epiphany</span> will show bold text by default, but it will show heavy text if markup for bold is used. In both cases, neither <span class="application">libreOffice</span> nor <span class="application">falkon</span> showed bolder text.
</div>

<div class="configuration" lang="en">
## Adding extra font directories {#adding-extra-font-directories}

Normally, system fonts and user fonts are installed in directories beneath the locations specified in <a class="xref" href="tuning-fontconfig.md#xft-font-protocol" title="The Xft Font Protocol">The Xft Font Protocol</a> and there is no obvious reason to put them elsewhere. However, a full BLFS install of <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> puts many fonts in <code class="filename">/opt/texlive/2025/texmf-dist/fonts/</code> in the <code class="filename">opentype/</code> and <code class="filename">truetype/</code> subdirectories. Although pulling in all of these files may appear useful (it allows you to use them in non <span class="application">TeX</span> programs), there are several problems with such an approach:

<div class="orderedlist">
1.  There are hundreds of files, which makes selecting fonts difficult.

2.  Some of the files do odd things, such as displaying semaphore flags instead of ASCII letters, or mapping cyrillic codepoints to character forms appropriate to Old Church Slavonic instead of the expected current shapes: fine if that is what you need, but painful for normal use.

3.  Several fonts have multiple sizes and impenetrable short names, which both make selecting the correct font even more difficult.

4.  When a font is added to CTAN, it is accompanied by TeX packages to use it in the old engines (<span class="application">xelatex</span> does not normally need this), and then the version is often frozen whilst the font is separately maintained. Some of these fonts such as <a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a> are probably already installed on your BLFS system in a newer version, and if you have multiple versions of a font it is unclear which one will be used by <span class="application">Fontconfig</span>.
</div>

However, it is sometimes useful to look at these fonts in non-TeX applications, if only to see whether you wish to install a current version. If you have installed all of <span class="application">texlive</span>, the following example will make one of the Arkandis Open Type fonts available to other applications, and all three of the ParaType TrueType fonts. Adjust or repeat the lines as desired, to either make all the <code class="filename">opentype/</code> or <code class="filename">truetype</code>fonts available, or to select different font directories. As the <code class="systemitem">root</code> user:

```bash
cat > /etc/fonts/conf.d/09-texlive.conf << "EOF"
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
  <dir>/opt/texlive/2025/texmf-dist/fonts/opentype/arkandis/berenisadf</dir>
  <dir>/opt/texlive/2025/texmf-dist/fonts/truetype/paratype</dir>
</fontconfig>
EOF
```

If you do this, remember to change all instances of the year in that file when you upgrade <span class="application">texlive</span> to a later release.
</div>

<div class="configuration" lang="en">
## Preferring certain fonts {#preferring-certain-fonts}

With the exception of web pages which use WOFF fonts and either supply them or link to google to download them, web pages have traditionally suggested a list of preferred font family names if they cared (e.g. Times New Roman, Serif). There are many reasons why people may wish to have pages which specify a preferred font use a different font, or prefer specific fonts in Monospace or Sans or Serif. As you will expect, there a number of different ways of achieving this.
</div>

<div class="configuration" lang="en">
## Fontconfig user documentation {#fontconfig-user-documentation}

<span class="application">Fontconfig</span> installs user documentation that includes an example 'User configuration file' which among other things prefers <a class="xref" href="TTF-and-OTF-fonts.md#wenquanyi-zenhei" title="WenQuanYi Zen Hei">WenQuanYi ZenHei</a> (a Sans font) if a <span class="emphasis"><em>Serif</em></span> font is requested for Chinese (this part might be anachronistic unless you have non-free Chinese fonts, because in <code class="filename">65-nonlatin.conf</code> this font is already among the preferred fonts when Serif is specified for Chinese) and to prefer the modern <a class="xref" href="TTF-and-OTF-fonts.md#VLGothic" title="VL Gothic">VL Gothic</a> font if a Sans font is specified on a Japanese page (otherwise a couple of other fonts would be preferred if they have been installed).

If you have installed the current version, the user documentation is available in HTML, PDF, and text versions at <code class="filename">/usr/share/doc/fontconfig-2.18.1/</code> : change the version if you installed a different one.
</div>

<div class="configuration" lang="en">
## Prefer a specific font {#prefer-a-specific-font}

As an example, if for some reason you wished to use the <a class="ulink" href="https://www.fontsquirrel.com/fonts/nimbus-roman-no9-l">Nimbus Roman No9 L</a> font wherever Times New Roman is referenced (it is metrically similar, and preferred for Times Roman, but the Serif font from <a class="xref" href="TTF-and-OTF-fonts.md#liberation-fonts" title="Liberation fonts">Liberation fonts</a> will be preferred for the Times <span class="emphasis"><em>New</em></span> Roman font if installed), as an individual user you could install the font and then create the following file:

```bash
mkdir -pv ~/.config/fontconfig/conf.d &&
cat >  ~/.config/fontconfig/conf.d/35-prefer-nimbus-for-timesnew.conf << "EOF"
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
<!-- prefer Nimbus Roman No9 L for Times New Roman as well as for Times,
 without this Tinos and Liberation Serif take precedence for Times New Roman
 before Fontconfig falls back to whatever matches Times -->
    <alias binding="same">
        <family>Times New Roman</family>
        <accept>
            <family>Nimbus Roman No9 L</family>
        </accept>
    </alias>
</fontconfig>
EOF
```

This is something you would normally do in an individual user's settings, but the file in this case has been prefixed '35-' so that it could, if desired, be used system-wide in <code class="filename">/etc/fonts/conf.d/</code>.
</div>

<div class="configuration" lang="en">
## Prefer chosen CJK fonts {#prefer-chosen-cjk-fonts}

The following example of a local configuration (i.e. one that applies for all users of the machine) does several things. It is particularly appropriate where no language is specified, or for reading CJK text in a non-CJK locale, and where the Japanese forms of the codepoints shared with Chinese are preferred. In particular, alternative approaches would be to specify a Chinese font ahead of the Japanese font, meaning that only Kana symbols will be used from the Japanese font, or to not specify DejaVu so that the first font in each set of preferences is preferred for text using Latin alphabets.

<div class="orderedlist">
1.  If a Serif font is specified, it prefers <a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>. If Han codepoints are found, or the Japanese language is specified, the Mincho font from <a class="xref" href="TTF-and-OTF-fonts.md#IPAex" title="IPAex fonts">IPAex fonts</a> will be used. If Hangul codepoints are found or the Korean language is specified, UnBatang (see <a class="xref" href="TTF-and-OTF-fonts.md#Korean-fonts" title="Korean fonts:">Korean fonts</a>) will be used: Change that line If you installed a different Korean serif font. After that, <a class="xref" href="TTF-and-OTF-fonts.md#wenquanyi-zenhei" title="WenQuanYi Zen Hei">WenQuanYi ZenHei</a> (Sans, but a default for Serif and monospace) is used. A previous version of this page mentioned using UMing which is a Traditional Chinese font that ships with an old conf file preferring it for zh-tw and zh-hk language codes (and for sans-serif and monospace). But without the conf file, <span class="application">Fontconfig</span> will only treat it as suitable for zh-hk. The conf file needs to be edited to current style and will then be prepended, so specifying UMing does not belong in this <code class="filename">local.conf</code> file.

2.  For Sans Serif preferences again start with <a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>, then <a class="xref" href="TTF-and-OTF-fonts.md#VLGothic" title="VL Gothic">VL Gothic</a> for Japanese before falling back to WenQuanYi Zen Hei which is Sans and covers both Chinese and Korean Hangul.

3.  The Monospace fonts are forced to the preferred Sans fonts. If the text is in Chinese or Korean then <a class="xref" href="TTF-and-OTF-fonts.md#wenquanyi-zenhei" title="WenQuanYi Zen Hei">WenQuanYi ZenHei</a> will be used.
</div>

In a non-CJK locale, the result is that suitable fonts will be used for all variants of Chinese, Japanese and Hangul Korean (but Japanese variants of the glyphs shared with Chinese Han will be used). All other languages should already work if a font is present. As the <code class="systemitem">root</code> user:

```bash
cat > /etc/fonts/local.conf << "EOF"
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
    <alias>
        <family>serif</family>
        <prefer>
            <family>DejaVu Serif</family>
            <family>IPAexMincho</family>
            <!-- WenQuanYi is preferred as Serif in 65-nonlatin.conf,
            override that so a real Korean font can be used for Serif -->
            <family>UnBatang</family>
        </prefer>
    </alias>
    <alias>
         <family>sans-serif</family>
         <prefer>
             <family>DejaVu Sans</family>
             <family>VL Gothic</family>
         <!-- This assumes WenQuanYi is good enough for Korean Sans -->
         </prefer>
    </alias>
    <alias>
         <family>monospace</family>
         <prefer>
             <family>DejaVu Sans Mono</family>
             <family>VL Gothic</family>
         <!-- This assumes WenQuanYi is good enough for Korean Monospace -->
         </prefer>
    </alias>
</fontconfig>
EOF
```
</div>

<div class="configuration" lang="en">
## Editing Old-Style conf files {#editing-old-style-conf-files}

Some fonts, particularly Chinese fonts, ship with conf files which can be installed in <code class="filename">/etc/fonts/conf.d</code>. However, if you do that and then use a terminal to run any command which uses <span class="application">Fontconfig</span> you may see error messages such as :

<code class="literal">Fontconfig warning: "/etc/fonts/conf.d/69-odofonts.conf", line 14: Having multiple <family> in <alias> isn't supported and may not work as expected</code>.

In practice, these old rules do not work. For non-CJK users, <span class="application">Fontconfig</span> will usually do a good job <span class="emphasis"><em>without</em></span> these rules. Their origin dates back to when CJK users needed handcrafted bitmaps to be legible at small sizes, and those looked ugly next to antialiased Latin glyphs - they preferred to use the same CJK font for the Latin glyphs. There is a side-effect of doing this : the (Serif) font is often also used for Sans, and in such a situation the (English) text in <span class="application">Gtk</span> menus will use this font - compared to system fonts, as well as being serif it is both faint and rather small. That can make it uncomfortable to read.

Nevertheless, these old conf files can be fixed if you wish to use them. The following example is the first part of <code class="filename">64-arphic-uming.conf</code> from <a class="xref" href="TTF-and-OTF-fonts.md#UMing" title="UMing">UMing</a> - there are many more similar items which also need changing :

```bash
   <match target="pattern">
       <test qual="any" name="lang" compare="contains">
           <string>zh-cn</string>
           <string>zh-sg</string>
       </test>
       <test qual="any" name="family">
           <string>serif</string>
       </test>
       <edit name="family" mode="prepend" binding="strong">
           <string>AR PL UMing CN</string>
       </edit>
   </match>
```

The process to correct this is straightforward but tedious - for every item which produces an error message, using your editor (as the <code class="systemitem">root</code> user), edit the installed file to repeat the whole block as many times as there are multiple variables, then reduce each example to have only one of them. You may wish to work on one error at a time, save the file after each fix, and from a separate term run a command such as <span class="command"><strong>fc-list 2\>&1 \| less</strong></span> to see that the fix worked. For the block above, the fixed version will be :

```bash
   <match target="pattern">
       <test qual="any" name="lang" compare="contains">
           <string>zh-cn</string>
       </test>
       <test qual="any" name="family">
           <string>serif</string>
       </test>
       <edit name="family" mode="prepend" binding="strong">
           <string>AR PL UMing CN</string>
       </edit>
    </match>
   <match target="pattern">
       <test qual="any" name="lang" compare="contains">
           <string>zh-sg</string>
       </test>
       <test qual="any" name="family">
           <string>serif</string>
       </test>
       <edit name="family" mode="prepend" binding="strong">
           <string>AR PL UMing CN</string>
       </edit>
    </match>
```
</div>

<div class="configuration" lang="en">
## About font weights {#about-font-weights}

When this page and the next page were first created, Latin fonts came with a maximum of two weights - either Regular or Book (Book typically has a larger X-height to make it easier to read in large blocks of text), and Bold - and perhaps an Italic (or Slant) style. A few fonts also had Condensed faces (to fit more text into a line and usually only used when specified). Without CSS (Cascading Style Sheets) markup, text used the Regular or Book weight except when \<b\> ... \</b\> markup was used for bold text. Italic styles would be invoked by \<i\> ... \</i\> markup, along with the bold markup for Bold Italic.

Some faces now contain up to 9 weights, possibly also with a variable font (to save space by including all the alternatives in one file and possibly allowing intermediate weights). For most desktop users who do not need this wide range of weights for creating content, it is simpler to only install one or two weights. If a face has individual weights plus a variable font, the variable font is usually in the top level of the supplied directory, with individual weights in a <code class="filename">static/</code> subdirectory. Except when initially reviewing a font, it makes no sense to install both static and variable, nor all the possible weights.

The weights are labelled from 100 (Thin) to 900 (Black or Heavy) in CSS terminology, with 400 being normal and 700 bold. The full set of weights is described at <a class="xref" href="tuning-fontconfig.md#css-weights" title="Table of CSS font weights">Table of CSS font weights</a>.

If you have installed a font with a range of weights, you can copy <a class="ulink" href="https://linuxfromscratch.org/~ken/font-weights.md">font-weights.html</a> to your local machine. As shipped it will use your default Serif font assuming you have one. Edit it to point to a specific installed font using the name known to <span class="application">Fontconfig</span> (also in the \*EDITME FONTNAME\* text items) and open it from your desktop browser. You can also use it to look at a font with only two installed weights, e.g. for testing to see if you prefer other weights.

Despite the details in that Mozilla link, it appears that if only normal and bold weights are installed, SemiBold (600) will be shown using bold.

There seems to be a little scope for changing which weights are used for normal and bold <span class="emphasis"><em>if only two weights have been installed</em></span>. Firefox, and probably other browsers, will look for the next weight heavier than normal. If that is less than bold (Medium, maybe SemiBold - uncertain) it will be used for normal and then the next higher weight, if any will be used for bold, allowing you to make the fonts slightly darker. Conversely, if only a weight less than normal has been installed, such as Light, that will be used for both normal and bold weights (the upward search happens first).

If you remove some weights of a system font, you may need to run <span class="command"><strong>fc-cache</strong></span> as the <code class="systemitem">root</code> user and then log out completely to clear caches associated with your user.
</div>

<div class="configuration" lang="en">
## Items which can override Fontconfig {#items-which-can-override-fontconfig}

Several desktop environments, as well as some programs, will use <span class="application">Fontconfig</span> to find fonts but may override certain things.

<span class="application">GNOME</span>: The settings in org.gnome.desktop.interface can be updated with <span class="application">dconf-editor</span>. You can set the fonts to your preference and desired point size. To use the fonts chosen by <span class="application">Fontconfig</span> specify e.g. 'Sans 12', Serif 11', 'Mono 10' as desired. Also review the antialiasing, hinting and rgba settings. Alternatively, <a class="xref" href="../gnome/gnome-tweaks.md" title="gnome-tweaks-49.0">gnome-tweaks-49.0</a> can also update the font settings in a GUI form.

<span class="application">LXQt</span>: Change font settings as necessary to match <span class="application">Fontconfig</span> in <span class="application">lxqt-config-appearance</span>.

<span class="application">KDE Plasma</span>: The settings can be adjusted in <span class="application">System Settings</span> under Appearance -\> Fonts or in Edit -\> Preferences of the individual application.

<span class="application">Xfce desktop</span>: The settings can be adjusted in <span class="application">Settings</span> -\> Appearance -\> Fonts. Specify your preferred fonts, e.g. 'Sans Regular' (to use the normal face and weight rather than Bold and/or Italic) and adjust the point size in the option. Review the Rendering and DPI options.

<span class="application">Firefox</span>: This browser allows you to specify its default fonts. For the 128esr series use the 'Hamburger' menu to go to Settings, General, and under Fonts -\> Advanced select Sans Serif, Serif or Monospace as appropriate if you wish to use the fonts which match <span class="application">Fontconfig</span>. Set the point sizes as desired. In later versions, the settings are at Preferences -\> Fonts.

<span class="application">Libreoffice</span>: Tests using English text with an old Japanese font (HanaMinA) which supports several European languages but had only one weight and no italics or slant showed that although <span class="application">Libreoffice</span> uses <span class="application">Fontconfig</span> to find the font, it created its own bold or slanted text. It is not clear if it will do the same where a font actually has bold weight or an italic style. Also, documentation shows that <span class="application">Libreoffice</span> has its own substitution rules for when a codepoint is not found in the selected font, but is unclear if those rules apply on Linux using Fontconfig.

<span class="application">Pango</span>: as noted in the example <code class="filename">~/.config/fontconfig</code> above, anything using Pango-1.44 (from 2019) or later now uses <span class="application">Harfbuzz</span> for hinting, not <span class="application">FreeType</span>, and <code class="literal">hintfull</code> is not supported.

<span class="application">Thunderbird</span>: The font settings can be changed by going to "Edit -\> Settings" and then scrolling down to "Fonts & Colors".
</div>

<div class="configuration" lang="en">
## External Links {#external-links}

### I stared into the fontconfig ...

The blog entries by <a class="ulink" href="https://eev.ee/blog/2015/05/20/i-stared-into-the-fontconfig-and-the-fontconfig-stared-back-at-me/">Eevee</a> are particularly useful if <span class="application">Fontconfig</span> does not think your chosen font supports your language, and for preferring some non-MS Japanese fonts when an ugly MS font is already installed.

### subpixel-hinting

The documentation of the FreeType v40 interpreter at <a class="ulink" href="https://freetype.org/freetype2/docs/hinting/subpixel-hinting.md">freetype docs</a> explains how the current hinter works, and why the previous (slow) Infinality interpreter was replaced.

### Calculating DPI

An old answer at <a class="ulink" href="https://askubuntu.com/questions/197828/how-to-find-and-change-the-screen-dpi/">askubuntu</a> gives some detail on calculating a screen's dots per inch, but essentially you just measure the width and height of the visible panel, convert to inches if using metric measurements, and divide by the number of pixels. You can then pass <code class="option">-dpi </code>*`90`* when you start Xorg, using your own value.

### Table of CSS font weights

Perhaps more than you ever wished to know is at <a class="ulink" href="https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight">Mozilla CSS docs</a>.

### Applying autohinting to a font

If you are using hinting and have a TTF (not OTF) font which lacks hints but permits you to fork it, you might be able to apply hints using <a class="ulink" href="https://freetype.org/ttfautohint/">ttfautohint</a> which is based on the old autohinter. As of version 1.8.4 it fails to build without Qt5.

### Fontconfig in the Arch wiki

Arch has a lot of information in its wiki at <a class="ulink" href="https://wiki.archlinux.org/index.php/font_configuration">font_configuration</a>.

### Fontconfig in the Gentoo wiki

Gentoo has some information in its wiki at <a class="ulink" href="https://wiki.gentoo.org/wiki/Fontconfig">Fontconfig</a> although a lot of the details (what to enable, and Infinality) are specific to Gentoo.
</div>
</div>

<div class="navfooter">
-   [Prev](xorg-config.md "Xorg-7 Testing and Configuration")

    Xorg-7 Testing and Configuration

-   [Next](TTF-and-OTF-fonts.md "TTF and OTF fonts")

    TTF and OTF fonts

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
