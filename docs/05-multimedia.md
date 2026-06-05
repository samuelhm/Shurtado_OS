# 05 — Multimedia Stack

> Fase 4 del plan. 9 paquetes. ~7 SBU total.

## Paquetes

### 4.1 alsa-lib-1.2.16

- **Para que sirve:** Biblioteca ALSA (Advanced Linux Sound Architecture). Interfaz de audio de bajo nivel en Linux.
- **Que instala:** `libasound.so`, `libatopology.so`, `aserver`.
- **Dependencias:** Ninguna (runtime: systemd/udev).

### 4.2 libsndfile-1.2.2

- **Para que sirve:** Lectura/escritura de archivos de audio en diversos formatos (WAV, AIFF, FLAC, etc.). Requerido por PulseAudio.
- **Que instala:** `libsndfile.so`, `sndfile-convert`, `sndfile-info`, `sndfile-play`, `sndfile-metadata-set`, `sndfile-metadata-get`.
- **Dependencias:** libvorbis, FLAC, opus (opcionales pero recomendados).

### 4.3 PulseAudio-17.0

- **Para que sirve:** Servidor de sonido. Proxy entre aplicaciones y hardware de audio. Plasma lo usa via pulseaudio-qt.
- **Que instala:** `pulseaudio` (daemon), `pactl`, `pacmd`, `paplay`, `parec`, `parecord`, `pamon`, `pacat`, `pax11publish`, y librerias: `libpulse.so`, `libpulse-simple.so`, `libpulse-mainloop-glib.so`, `libpulsedsp.so`.
- **Dependencias:** libsndfile. Recomendados: alsa-lib, dbus, GLib, Xorg Libraries.

### 4.4 NASM-3.01

- **Para que sirve:** Ensamblador x86. FFmpeg y otros codecs lo usan para codigo optimizado en ensamblador.
- **Que instala:** `nasm`, `ndisasm`.
- **Dependencias:** Ninguna.
- **Nota:** Ya existe el tarball en `/sources/nasm-3.01.tar.xz`.

### 4.5 FFmpeg-8.1.1

- **Para que sirve:** Framework multimedia: grabar, convertir, streamear audio/video. Usado por QtMultimedia (backend), Plasma, VLC.
- **Que instala:** `ffmpeg`, `ffplay`, `ffprobe`, `qt-faststart`, y bibliotecas: `libavcodec.so`, `libavformat.so`, `libavutil.so`, `libswscale.so`, `libswresample.so`, `libavfilter.so`, `libavdevice.so`, `libpostproc.so`.
- **Dependencias:** NASM (recomendado). Muchos codecs opcionales (x264, x265, libvorbis, etc.).

### 4.6 pipewire-1.6.6

- **Para que sirve:** Servidor multimedia moderno: reemplaza PulseAudio + JACK. Maneja audio, video, MIDI. Plasma lo requiere.
- **Que instala:** `pipewire` (daemon), `pw-cli`, `pw-cat`, `pw-dump`, `pw-top`, `pw-link`, `pw-jack`, `pw-loopback`, `pw-mon`, `pw-profiler`, y `libpipewire-0.3.so` con ~60 modulos.
- **Dependencias:** BlueZ, gstreamer, PulseAudio, Vulkan, alsa, libdrm, Xorg Libs (muchos opcionales pero recomendados).

### 4.7 libvorbis-1.3.7

- **Para que sirve:** Codec de audio Ogg Vorbis. Requerido por libcanberra y FFmpeg.
- **Que instala:** `libvorbis.so`, `libvorbisfile.so`, `libvorbisenc.so`.
- **Dependencias:** libogg.

### 4.8 libcanberra-0.30

- **Para que sirve:** Implementacion de XDG Sound Theme — sonidos de eventos del escritorio (notificaciones, clicks, etc.). Requerido por KDE Frameworks.
- **Que instala:** `libcanberra.so`, `libcanberra-gtk3.so`, `canberra-gtk-play`.
- **Dependencias:** libvorbis. Recomendados: alsa, gstreamer, GTK3, PulseAudio.

### 4.9 taglib-2.3

- **Para que sirve:** Lectura/escritura de metadatos de archivos de audio (tags ID3, MP4, etc.). Requerido por Plasma.
- **Que instala:** `libtag.so`, `libtag_c.so`, `taglib-config`.
- **Dependencias:** CMake, utfcpp.
