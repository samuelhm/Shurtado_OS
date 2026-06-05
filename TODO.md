# KDE Plasma 6.6.5 — Plan de Instalacion

> BLFS r13.0-790 (systemd). VM con GPU VirtIO + virgl (aceleracion HW).
> QtWebEngine (Chromium embebido) NO se instalara.
> Total: ~60 paquetes, ~100 SBU estimados.

---

## Fase 0 — Recompilar Kernel ✅

- [x] Anadir `CONFIG_DRM_VGEM=y` (obligatorio para llvmpipe/fallback)
- [x] Opcional: `CONFIG_SND_HDA_INTEL=y` (sonido QEMU)
- [x] Recompilar e instalar kernel `7.0.10-shurtado`
- [x] Reiniciar VM con nuevo kernel

---

## Fase 1 — Xorg Foundation

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 1.1 | xorgproto | 2025.1 | `x/xorgproto.md` | 0.1 |
| 1.2 | libXau | 1.0.12 | `x/libxau.md` | 0.1 |
| 1.3 | libXdmcp | 1.1.5 | `x/libxdmcp.md` | 0.1 |
| 1.4 | xcb-proto | 1.17.0 | `x/xcb-proto.md` | 0.1 |
| 1.5 | libxcb | 1.17.0 | `x/libxcb.md` | 0.3 |
| 1.6 | **Xorg Libraries** | (bulk ~31) | `x/x7lib.md` | 1.5 |
| 1.7 | libdrm | 2.4.134 | `x/libdrm.md` | 0.1 |
| 1.8 | libevdev | 1.13.6 | `x/x7driver.md#libevdev` | 0.1 |
| 1.9 | mtdev | 1.1.7 | `general/mtdev.md` | 0.1 |
| 1.10 | Xorg Evdev Driver | 2.11.0 | `x/x7driver.md#xorg-evdev` | 0.1 |

---

## Fase 2 — GPU Stack (Mesa)

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 2.1 | libxml2 | 2.15.3 | `general/libxml2.md` | 0.5 |
| 2.2 | ICU | 78.3 | `general/icu.md` | 1.5 |
| 2.3 | Wayland | 1.25.0 | `general/wayland.md` | 0.1 |
| 2.4 | wayland-protocols | 1.48 | `general/wayland-protocols.md` | 0.1 |
| 2.5 | LLVM (con Clang, RTTI) | 22.1.0 | `general/llvm.md` | 10 |
| 2.6 | SPIRV-Headers + SPIRV-Tools | | `general/spirv-tools.md` | 0.5 |
| 2.7 | glslang | 16.3.0 | `x/glslang.md` | 0.3 |
| 2.8 | Vulkan-Headers + Vulkan-Loader | 1.4.350.0 | `x/vulkan-loader.md` | 0.3 |
| 2.9 | SPIRV-LLVM-Translator | 22.1.2 | `general/spirv-llvm-translator.md` | 0.3 |
| 2.10 | libclc | 22.1.0 | `general/libclc.md` | 0.1 |
| 2.11 | Cbindgen | 0.29.3 | `general/cbindgen.md` | 0.1 |
| 2.12 | rust-bindgen | 0.72.1 | `general/rust-bindgen.md` | 0.1 |
| 2.13 | make-ca | 1.16.1 | `postlfs/make-ca.md` | 0.1 |
| 2.14 | libva (stub sin EGL/GLX) | 2.23.0 | `multimedia/libva.md` | 0.1 |
| 2.15 | **Mesa** (wayland+x11,auto drivers) | 26.0.7 | `x/mesa.md` | 3.1 |
| 2.16 | libva (recompilar con EGL/GLX) | 2.23.0 | `multimedia/libva.md` | 0.1 |
| 2.17 | GLU | 9.0.3 | `x/glu.md` | 0.1 |
| 2.18 | libepoxy | 1.5.10 | `x/libepoxy.md` | 0.1 |

---

## Fase 3 — Core Libraries

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 3.1 | GLib + GObject Introspection | 2.88.1 | `general/glib2.md` | 1.5 |
| 3.2 | libgpg-error | 1.61 | `general/libgpg-error.md` | 0.1 |
| 3.3 | libgcrypt | 1.12.2 | `general/libgcrypt.md` | 0.3 |
| 3.4 | libxslt | 1.1.45 | `general/libxslt.md` | 0.1 |
| 3.5 | harfbuzz | 14.2.1 | `general/harfbuzz.md` | 0.5 |
| 3.6 | double-conversion | 3.4.0 | `general/double-conversion.md` | 0.1 |
| 3.7 | libxkbcommon | 1.13.2 | `general/libxkbcommon.md` | 0.2 |
| 3.8 | libwebp | 1.6.0 | `general/libwebp.md` | 0.2 |
| 3.9 | libmng | 2.0.3 | `general/libmng.md` | 0.1 |
| 3.10 | jasper | 4.2.9 | `general/jasper.md` | 0.2 |
| 3.11 | shared-mime-info | 2.4 | `general/shared-mime-info.md` | 0.1 |

---

## Fase 4 — Multimedia Stack

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 4.1 | alsa-lib | 1.2.16 | `multimedia/alsa-lib.md` | 0.1 |
| 4.2 | libsndfile | 1.2.2 | `multimedia/libsndfile.md` | 0.3 |
| 4.3 | PulseAudio | 17.0 | `multimedia/pulseaudio.md` | 0.5 |
| 4.4 | NASM | 3.01 | `general/nasm.md` | 0.1 |
| 4.5 | FFmpeg | 8.1.1 | `multimedia/ffmpeg.md` | 5 |
| 4.6 | pipewire | 1.6.6 | `multimedia/pipewire.md` | 0.5 |
| 4.7 | libvorbis | 1.3.7 | `multimedia/libvorbis.md` | 0.1 |
| 4.8 | libcanberra | 0.30 | `multimedia/libcanberra.md` | 0.1 |
| 4.9 | taglib | 2.3 | `multimedia/taglib.md` | 0.2 |

---

## Fase 5 — Qt 6

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 5.1 | **Qt 6** | 6.11.1 | `x/qt6.md` | 13 |
| 5.2 | qca | 2.3.10 | `general/qca.md` | 0.7 |
| 5.3 | qcoro | 0.13.0 | `general/qcoro.md` | 0.4 |
| 5.4 | qtkeychain | 0.16.0 | `kde/qtkeychain.md` | 0.1 |

---

## Fase 6 — KDE Introduction (Cap 29)

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 6.1 | duktape | 2.7.0 | `general/duktape.md` | 0.1 |
| 6.2 | Polkit | 127 | `postlfs/polkit.md` | 0.3 |
| 6.3 | Extra-CMake-Modules | 6.26.0 | `kde/extra-cmake-modules.md` | 0.1 |
| 6.4 | Polkit-Qt | 0.201.1 | `kde/polkit-qt.md` | 0.2 |
| 6.5 | plasma-wayland-protocols | 1.21.0 | `kde/plasma-wayland-protocols.md` | 0.1 |
| 6.6 | libdmtx | 0.7.8 | `kde/libdmtx.md` | 0.1 |
| 6.7 | Phonon | 4.12.0 | `kde/phonon.md` | 0.3 |
| 6.8 | VLC | 3.0.23 | `multimedia/vlc.md` | 3 |
| 6.9 | Phonon-backend-vlc | 0.12.0 | `kde/phonon-backend-vlc.md` | 0.1 |

---

## Fase 7 — KF6 Dependencies

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 7.1 | libical | 4.0.2 | `general/libical.md` | 0.5 |
| 7.2 | libsecret | 0.21.7 | `gnome/libsecret.md` | 0.2 |
| 7.3 | lmdb | 0.9.35 | `server/lmdb.md` | 0.1 |
| 7.4 | libqrencode | 4.1.1 | `general/libqrencode.md` | 0.1 |
| 7.5 | docbook-xml + docbook-xsl | | `pst/docbook.md` | 0.1 |
| 7.6 | URI (Perl module) | 5.34 | `general/perl-modules.md` | 0.1 |
| 7.7 | breeze-icons | 6.26.0 | `x/breeze-icons.md` | 0.1 |

---

## Fase 8 — KDE Frameworks 6

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 8.1 | **KDE Frameworks 6** | 6.26.0 | `kde/frameworks6.md` | 12 |
| 8.2 | plasma-activities | 6.6.5 | `kde/plasma-activities.md` | 0.1 |
| 8.3 | plasma-activities-stats | 6.6.5 | `kde/plasma-activities-stats.md` | 0.1 |

---

## Fase 9 — Plasma Dependencies

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 9.1 | boost | 1.91.0-1 | `general/boost.md` | 5 |
| 9.2 | libdisplay-info | 0.3.0 | `general/libdisplay-info.md` | 0.1 |
| 9.3 | CrackLib + libpwquality | | `postlfs/libpwquality.md` | 0.2 |
| 9.4 | libnl | 3.12.0 | `basicnet/libnl.md` | 0.3 |
| 9.5 | libxcvt | 0.1.3 | `x/libxcvt.md` | 0.1 |
| 9.6 | libqalculate | 5.11.0 | `general/libqalculate.md` | 0.5 |
| 9.7 | sassc + libsass | 3.6.2 | `general/sassc.md` | 0.2 |
| 9.8 | xdotool | 4.20260303.1 | `general/xdotool.md` | 0.1 |
| 9.9 | GTK 3 | 3.24.52 | `x/gtk3.md` | 3 |
| 9.10 | opencv | 4.13.0 | `general/opencv.md` | 8 |
| 9.11 | kirigami-addons | 1.12.1 | `kde/kirigami-addons.md` | 0.2 |
| 9.12 | pulseaudio-qt | 1.8.1 | `kde/pulseaudio-qt.md` | 0.1 |
| 9.13 | kquickimageeditor | 0.6.1 | `kde/kquickimageeditor.md` | 0.1 |

---

## Fase 10 — KDE Plasma 6

| # | Paquete | Version | Capitulo | SBU |
|---|---------|---------|----------|-----|
| 10.1 | **KDE Plasma 6** | 6.6.5 | `kde/plasma-all.md` | 20 |

---

## Fase 11 — Post-instalacion

- [ ] Configurar `elogind` + `pam` para sesiones de usuario
- [ ] Configurar SDDM como display manager
- [ ] Crear usuario no-root para el escritorio
- [ ] Activar servicios systemd (pipewire, sddm, etc.)
- [ ] Verificar que Plasma arranca
