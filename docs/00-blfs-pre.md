# 00b — BLFS Pre-Instalados (antes de KDE)

> Paquetes Beyond LFS ya instalados en el sistema antes de iniciar el stack KDE Plasma.
> Estos paquetes están listos y no necesitan reinstalación.

---

## Fonts e Imágenes

### FreeType-2.14.3
- **Para que sirve:** Motor de renderizado de fuentes. Convierte outlines de fuentes en bitmaps. Usado por fontconfig, Qt6, GTK.
- **Que instala:** `libfreetype.so`, `freetype-config`.
- **Dependencias:** Ninguna (LFS base). Recomendado: harfbuzz (no instalado aun).

### Fontconfig-2.18.1
- **Para que sirve:** Configuración y descubrimiento de fuentes. Empareja patrones de fuente (sans-serif, mono) con fuentes instaladas.
- **Que instala:** `libfontconfig.so`, `fc-cache`, `fc-cat`, `fc-list`, `fc-match`, `fc-pattern`, `fc-query`, `fc-scan`, `fc-validate`.
- **Dependencias:** FreeType, Expat (LFS base).

### libjpeg-turbo-3.1.4.1
- **Para que sirve:** Codec JPEG acelerado con SIMD. Carga/guarda imágenes JPEG. Usado por Qt6, GTK, FFmpeg.
- **Que instala:** `libjpeg.so`, `libturbojpeg.so`, `cjpeg`, `djpeg`, `jpegtran`, `rdjpgcom`, `wrjpgcom`.
- **Dependencias:** NASM (para optimizaciones SIMD).

### libpng-1.6.58
- **Para que sirve:** Codec PNG. Carga/guarda imágenes PNG. Usado por casi todo con gráficos.
- **Que instala:** `libpng.so`, `libpng16.so`, `pngfix`, `png-fix-itxt`, `libpng-config`.
- **Dependencias:** Ninguna.

### libtiff-4.7.1
- **Para que sirve:** Codec TIFF (Tag Image File Format). Usado por Qt6, GTK, escáneres, OCR.
- **Que instala:** `libtiff.so`, `libtiffxx.so`, `tiffcp`, `tiffdump`, `tiffinfo`, `tiffset`, `tiffsplit`, `tiff2pdf`, `tiff2ps`, `tiff2bw`, `fax2ps`, `fax2tiff`, `pal2rgb`, `ppm2tiff`, `raw2tiff`, `rgb2ycbcr`, `thumbnail`, `tiffcmp`, `tiffcrop`, `tiffdither`, `tiffgt`, `tiffmedian`.
- **Dependencias:** libjpeg-turbo, zlib (LFS base).

### Little CMS-2.19 (lcms2)
- **Para que sirve:** Gestión de color (ICC profiles). Convierte colores entre espacios de color. Usado por Qt6, GTK, ghostscript.
- **Que instala:** `liblcms2.so`, `jpgicc`, `linkicc`, `psicc`, `tificc`, `transicc`, `wtpt`.
- **Dependencias:** libjpeg-turbo, libtiff (recomendados).

### OpenJPEG-2.5.4
- **Para que sirve:** Codec JPEG 2000. Formato usado en cine digital, imágenes médicas, PDF.
- **Que instala:** `libopenjp2.so`, `opj_compress`, `opj_decompress`, `opj_dump`.
- **Dependencias:** lcms2, libpng, libtiff (recomendados).

---

## Criptografía y Seguridad

### p11-kit-0.25.5
- **Para que sirve:** Gestor de módulos PKCS#11. Carga y comparte tokens criptográficos (HSM, smartcards, TPM). Usado por OpenSSL, GnuTLS.
- **Que instala:** `libp11-kit.so`, `p11-kit`, `trust`.
- **Dependencias:** libffi (LFS base).

---

## Herramientas de Compilación y Desarrollo

### CMake-4.3.3 (BLFS)
- **Para que sirve:** Build system multiplataforma. Alternativa moderna a autotools. Usado por Qt6, KDE, LLVM, opencv, y cientos más.
- **Que instala:** `cmake`, `cmake-gui` (opcional con Qt), `cpack`, `ctest`.
- **Dependencias:** curl, Expat, zlib (LFS base). Opcional: Qt6.

### NASM-3.01 (BLFS)
- **Para que sirve:** Ensamblador x86 (Netwide Assembler). Usado para código optimizado SIMD en libjpeg-turbo, FFmpeg, x264, etc.
- **Que instala:** `nasm`, `ndisasm`.
- **Dependencias:** Ninguna.

---

## Redes y Descarga

### Lynx-2.9.3 (BLFS)
- **Para que sirve:** Navegador web en modo texto. Útil para leer documentación y testear conectividad desde consola.
- **Que instala:** `lynx`, `lynx.cfg` en `/etc/`.
- **Dependencias:** OpenSSL (LFS base).

---

## Rust (Compilador)

### Rust-1.96.0 (BLFS, en /opt/rustc)
- **Para que sirve:** Compilador del lenguaje Rust. Usado para compilar bindgen, cbindgen, y drivers Mesa Vulkan (nouveau).
- **Que instala:** `rustc`, `cargo`, `rustdoc`, `rustfmt`, `clippy-driver`, `rust-gdb`, `rust-lldb` en `/opt/rustc/bin/`, `librustc_driver.so`.
- **Dependencias:** LLVM interno (incluido en Rust, no usable por Mesa). Curl, OpenSSL (LFS base).
- **Nota critica:** El LLVM interno de Rust NO sirve para Mesa. Mesa necesita LLVM instalado separadamente (Fase 2 del plan). Rust no necesita recompilarse.
