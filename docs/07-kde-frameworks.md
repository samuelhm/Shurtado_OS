# 07 — KDE Frameworks 6 + Introduccion

> Fases 6, 7 y 8 del plan. 19 paquetes. ~17 SBU total.

## Fase 6 — KDE Introduction (Capitulo 29 BLFS)

### 6.1 duktape-2.7.0

- **Para que sirve:** Motor JavaScript embebido. Polkit lo usa para evaluar reglas de autorizacion en JavaScript.
- **Que instala:** `libduktape.so`, `duk`.
- **Dependencias:** Ninguna.

### 6.2 Polkit-127

- **Para que sirve:** Sistema de autorizaciones — permite a procesos no privilegiados comunicarse con procesos privilegiados. KDE lo usa para acciones administrativas.
- **Que instala:** `polkitd`, `pkexec`, `pkcheck`, `pkaction`, `pkttyagent`, y `libpolkit-gobject-1.so`, `libpolkit-agent-1.so`.
- **Dependencias:** duktape, GLib.

### 6.3 Extra-CMake-Modules-6.26.0

- **Para que sirve:** Modulos CMake adicionales usados por TODO el software KDE. Sin esto no compila nada de KDE.
- **Que instala:** Archivos `.cmake` en `/usr/share/ECM/`.
- **Dependencias:** CMake. Recomendado: Qt6 (instalado en fase 5).

### 6.4 Polkit-Qt-0.201.1

- **Para que sirve:** Bindings Qt para Polkit. KDE lo usa via KAuth para integracion con el sistema de permisos.
- **Que instala:** `libpolkit-qt6-core-1.so`, `libpolkit-qt6-agent-1.so`, `libpolkit-qt6-gui-1.so`.
- **Dependencias:** CMake, Polkit, Qt6.

### 6.5 plasma-wayland-protocols-1.21.0

- **Para que sirve:** Protocolos Wayland especificos de KDE Plasma. Requerido por KDE Frameworks y Plasma.
- **Que instala:** Archivos XML en `/usr/share/plasma-wayland-protocols/`.
- **Dependencias:** Extra-CMake-Modules.

### 6.6 libdmtx-0.7.8

- **Para que sirve:** Lectura de codigos Data Matrix (codigos de barras 2D). Requerido por KDE Frameworks (Prison).
- **Que instala:** `libdmtx.so`.
- **Dependencias:** Ninguna (solo fix de CMake version).

### 6.7 Phonon-4.12.0

- **Para que sirve:** API multimedia de KDE. Abstrae backends de audio/video (VLC, GStreamer). Plasma lo requiere para sonidos del sistema.
- **Que instala:** `libphonon4qt6.so` y plugins.
- **Dependencias:** CMake, Extra-CMake-Modules, GLib, Qt6. Runtime: phonon-backend-vlc.

### 6.8 VLC-3.0.23

- **Para que sirve:** Reproductor multimedia. Backend de Phonon para KDE.
- **Que instala:** `vlc`, `qvlc`, `cvlc`, `nvlc`, `rvlc`, `vlc-wrapper`, `libvlc.so`, `libvlccore.so`, y cientos de plugins en `/usr/lib/vlc/plugins/`.
- **Dependencias:** Muchos codecs opcionales. Recomendados: Qt6, FFmpeg, alsa, libgcrypt.

### 6.9 Phonon-backend-vlc-0.12.0

- **Para que sirve:** Backend VLC para Phonon. Conecta Phonon con libvlc.
- **Que instala:** `phonon_vlc.so` (plugin Phonon).
- **Dependencias:** Phonon, VLC.

---

## Fase 7 — KF6 Dependencies

### 7.1 libical-4.0.2

- **Para que sirve:** Implementacion de iCalendar (RFC 5545). KDE Frameworks lo usa para calendarios (KCalendarCore).
- **Que instala:** `libical.so`, `libicalss.so`, `libicalvcal.so`, `libical-glib.so`.
- **Dependencias:** CMake, GLib, libxml2.

### 7.2 libsecret-0.21.7

- **Para que sirve:** Acceso a Secret Service API (org.freedesktop.secrets). KDE lo usa para almacenar contraseñas via KWallet.
- **Que instala:** `libsecret-1.so`, `secret-tool`.
- **Dependencias:** GLib, libgcrypt.

### 7.3 lmdb-0.9.35

- **Para que sirve:** Lightning Memory-Mapped Database — base de datos clave-valor ultra rapida. KDE Frameworks la usa internamente.
- **Que instala:** `liblmdb.so`, utilidades `mdb_stat`, `mdb_copy`, `mdb_dump`, `mdb_load`.
- **Dependencias:** Ninguna.

### 7.4 libqrencode-4.1.1

- **Para que sirve:** Generacion de codigos QR. KDE Frameworks lo usa en varios lugares (compartir WiFi, etc.).
- **Que instala:** `libqrencode.so`, `qrencode`.
- **Dependencias:** libpng (recomendado).

### 7.5 docbook-xml + docbook-xsl

- **Para que sirve:** Schemas XML/XSL para documentacion. Requerido para generar docs de KDE Frameworks.
- **Que instala:** Archivos DTD/XSL en `/usr/share/xml/docbook/`.
- **Dependencias:** libxml2, libxslt.

### 7.6 URI (Perl module)-5.34

- **Para que sirve:** Modulo Perl para manipulacion de URIs. Requerido por el sistema de build de KDE Frameworks.
- **Que instala:** `URI.pm` y modulos Perl relacionados.
- **Dependencias:** Perl (LFS base).

### 7.7 breeze-icons-6.26.0

- **Para que sirve:** Conjunto de iconos Breeze — tema de iconos default de KDE Plasma.
- **Que instala:** Archivos SVG/PNG en `/usr/share/icons/breeze/`.
- **Dependencias:** Ninguna (build con CMake).

---

## Fase 8 — KDE Frameworks 6.26.0

### 8.1 KDE Frameworks 6 (bulk build, ~70 librerias)

- **Para que sirve:** Coleccion de ~70 bibliotecas Qt6 que forman la base de todo el software KDE. Son los "bloques de construccion" de Plasma y apps KDE.
- **Build:** Script bash que descarga y compila todos en orden.
- **Librerias principales que instala:**
  - **KCoreAddons** — utilidades core (MIME, plugins, KAutoSaveFile)
  - **KConfig** — sistema de configuracion (KConfig, KConfigWidgets)
  - **KIO** — I/O asincrono (KIO::file, KIO::http, slaves)
  - **Solid** — deteccion de hardware (discos, bateria, red)
  - **KWindowSystem** — manejo de ventanas
  - **KService** — busqueda de aplicaciones/servicios
  - **KTextEditor** — componente de edicion de texto
  - **KAuth** — acciones privilegiadas (via Polkit)
  - **KNotifications** — notificaciones del sistema
  - **KPackage** — formato de empaquetado KDE
  - **BlueZ-Qt** — integracion Bluetooth
  - **NetworkManager-Qt** — integracion red
  - **Breeze Icons** — iconos del tema
  - **KIconThemes** — sistema de iconos
  - **KWidgetsAddons, KCompletion, KJobWidgets** — widgets adicionales
  - **FrameworkIntegration** — integracion con el escritorio
  - **SyntaxHighlighting** — coloreado de sintaxis
  - **y ~50 mas.**
- **Dependencias:** Extra-CMake-Modules, Qt6, todas las deps de las Fases 6 y 7.

### 8.2 plasma-activities-6.6.5

- **Para que sirve:** API de "actividades" de KDE (espacios de trabajo independientes). Core de Plasma.
- **Que instala:** `libPlasmaActivities.so`.
- **Dependencias:** KDE Frameworks 6.

### 8.3 plasma-activities-stats-6.6.5

- **Para que sirve:** Estadisticas de uso de actividades (archivos recientes, apps frecuentes, etc.).
- **Que instala:** `libPlasmaActivitiesStats.so`.
- **Dependencias:** plasma-activities.
