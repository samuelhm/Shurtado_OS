# 04 — Core Libraries

> Fase 3 del plan. 11 paquetes. ~5 SBU total.

## Paquetes

### 3.1 GLib-2.88.1 + GObject Introspection

- **Para que sirve:** Biblioteca de utilidad de bajo nivel para C: event loop, threads, dynamic loading, object system (GObject). Base de GTK, harfbuzz, PulseAudio, Polkit, y casi todo GNOME/KDE.
- **Que instala:**
  - **Programas:** `gdbus`, `gio`, `glib-compile-schemas`, `glib-genmarshal`, `gsettings`, `gresource`, y ~12 mas.
  - **Librerias:** `libglib-2.0.so`, `libgobject-2.0.so`, `libgio-2.0.so`, `libgmodule-2.0.so`, `libgthread-2.0.so`.
  - **GI:** `libgirepository-2.0.so`, `g-ir-scanner`, `g-ir-compiler`, etc.
- **Dependencias:** libxslt (para tests, recomendado).

### 3.2 libgpg-error-1.61

- **Para que sirve:** Define codigos de error comunes para GnuPG y sus dependencias. Requerido por libgcrypt.
- **Que instala:** `libgpg-error.so`, `gpg-error`, `gpg-error-config`.
- **Dependencias:** Ninguna.

### 3.3 libgcrypt-1.12.2

- **Para que sirve:** Biblioteca criptografica de proposito general (basada en GnuPG). Requerido por KDE Frameworks para KAuth, KWallet.
- **Que instala:** `libgcrypt.so`, `dumpsexp`, `hmac256`, `mpicalc`.
- **Dependencias:** libgpg-error.

### 3.4 libxslt-1.1.45

- **Para que sirve:** Procesador XSLT (transformaciones XML). Requerido por KDE Frameworks, docbook.
- **Que instala:** `libxslt.so`, `libexslt.so`, `xsltproc`, `xslt-config`.
- **Dependencias:** libxml2.

### 3.5 harfbuzz-14.2.1

- **Para que sirve:** Motor de text shaping OpenType. Renderiza texto con fuentes complejas (arabes, CJK, ligaduras). Qt6 lo usa para texto.
- **Que instala:** `libharfbuzz.so`, `libharfbuzz-subset.so`, `libharfbuzz-icu.so`, `libharfbuzz-gobject.so`, y utilidades `hb-shape`, `hb-view`, `hb-subset`, `hb-info`.
- **Dependencias:** FreeType, GLib, ICU (recomendados).

### 3.6 double-conversion-3.4.0

- **Para que sirve:** Conversion rapida binario-decimal y viceversa para numeros IEEE double. Qt6 lo usa internamente.
- **Que instala:** `libdouble-conversion.so`.
- **Dependencias:** CMake.

### 3.7 libxkbcommon-1.13.2

- **Para que sirve:** Compilador de keymaps y biblioteca de soporte. Procesa keymaps XKB. Usado por Wayland, Qt6, y Plasma para manejar teclados.
- **Que instala:** `libxkbcommon.so`, `libxkbcommon-x11.so`, `libxkbregistry.so`, `xkbcli`.
- **Dependencias:** xkeyboard-config (runtime), libxcb, Wayland (recomendados).

### 3.8 libwebp-1.6.0

- **Para que sirve:** Biblioteca para codificar/decodificar imagenes WebP. Qt6 la usa para cargar este formato.
- **Que instala:** `libwebp.so`, `libwebpdecoder.so`, `libwebpmux.so`, `libsharpyuv.so`, `libwebpdemux.so`, y utilidades: `cwebp`, `dwebp`, `gif2webp`, `vwebp`, `webpmux`, `img2webp`, `webpinfo`.
- **Dependencias:** libjpeg, libpng, libtiff (recomendados, ya instalados).

### 3.9 libmng-2.0.3

- **Para que sirve:** Soporte para archivos MNG (Multiple-image Network Graphics, animacion tipo PNG). Qt6 lo usa.
- **Que instala:** `libmng.so`.
- **Dependencias:** libjpeg-turbo, lcms2 (ya instalados).

### 3.10 jasper-4.2.9

- **Para que sirve:** Implementacion de JPEG-2000. Qt6 lo usa para cargar/soportar este formato.
- **Que instala:** `libjasper.so`, `jasper`, `imgcmp`, `imginfo`, `jiv`.
- **Dependencias:** CMake, libjpeg-turbo (recomendado).

### 3.11 shared-mime-info-2.4

- **Para que sirve:** Base de datos MIME compartida. Permite a aplicaciones conocer el tipo de archivos. Requerido por KDE Frameworks.
- **Que instala:** `update-mime-database` (sin bibliotecas).
- **Dependencias:** GLib, libxml2.
