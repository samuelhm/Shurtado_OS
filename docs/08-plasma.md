# 08 — KDE Plasma 6.6.5 + Dependencias

> Fases 9 y 10 del plan. 14 paquetes. ~38 SBU total.
> Los mas pesados: opencv (8), boost (5), Plasma (20).

## Fase 9 — Plasma Dependencies

### 9.1 boost-1.91.0-1

- **Para que sirve:** Coleccion de bibliotecas C++ peer-reviewed: algebra lineal, multithreading, regex, filesystem, etc. Requerido por Plasma.
- **Que instala:** `libboost_atomic.so`, `libboost_chrono.so`, `libboost_date_time.so`, `libboost_filesystem.so`, `libboost_iostreams.so`, `libboost_locale.so`, `libboost_log.so`, `libboost_program_options.so`, `libboost_python314.so`, `libboost_random.so`, `libboost_regex.so`, `libboost_thread.so`, y ~20 mas.
- **Dependencias:** Which (recomendado), ICU (opcional).

### 9.2 libdisplay-info-0.3.0

- **Para que sirve:** Parseo de informacion EDID de monitores. Plasma lo usa para identificar resoluciones y capacidades del display.
- **Que instala:** `libdisplay-info.so`, `di-edid-decode`.
- **Dependencias:** hwdata.

### 9.3 libpwquality-1.4.5 (+ CrackLib)

- **Para que sirve:** Validacion de calidad de contraseñas. Plasma lo usa en la pantalla de cambio de contraseña y en SDDM.
- **Que instala:** `libpwquality.so`, `pam_pwquality.so`, `pwscore`, `pwmake`.
- **Dependencias:** CrackLib, Linux-PAM.

### 9.4 libnl-3.12.0

- **Para que sirve:** Netlink protocol library — API para interfaces de red del kernel Linux. Plasma lo usa para NetworkManager y configuracion de red.
- **Que instala:** `libnl-3.so`, `libnl-route-3.so`, `libnl-genl-3.so`, `libnl-nf-3.so`, `libnl-cli-3.so`, y ~50 utilidades de linea de comandos (`nl-link-list`, `nl-qdisc-add`, etc.).
- **Dependencias:** Ninguna.

### 9.5 libxcvt-0.1.3

- **Para que sirve:** Calculadora de modelines VESA CVT. Plasma/KWin la usa para configurar resoluciones de pantalla.
- **Que instala:** `libxcvt.so`, `cvt`.
- **Dependencias:** Build environment Xorg.

### 9.6 libqalculate-5.11.0

- **Para que sirve:** Biblioteca de calculo matematico multiproposito. Plasma la usa en la calculadora (KRunner) y widgets.
- **Que instala:** `libqalculate.so`, `qalc`.
- **Dependencias:** cURL, ICU, libxml2.

### 9.7 sassc-3.6.2 (+ libsass)

- **Para que sirve:** Compilador SCSS/SASS a CSS. Plasma lo usa para compilar temas y estilos (breeze, etc.).
- **Que instala:** `sassc`, `libsass.so`.
- **Dependencias:** Ninguna.

### 9.8 xdotool-4.20260303.1

- **Para que sirve:** Simulacion de input X11 (teclado, mouse). Plasma lo usa en KWin para scripts de automatizacion.
- **Que instala:** `xdotool`, `libxdo.so`.
- **Dependencias:** Xorg Libraries.

### 9.9 GTK-3.24.52

- **Para que sirve:** Toolkit de widgets GIMP. Plasma lo requiere para la integracion visual de apps GTK en el escritorio (breeze-gtk theme).
- **Que instala:** `libgtk-3.so`, `libgdk-3.so`, `libgailutil-3.so`, `gtk3-demo`, `gtk-launch`, `gtk-update-icon-cache`, `gtk-builder-tool`, y varias utilidades mas.
- **Dependencias:** at-spi2-core, gdk-pixbuf, libepoxy, Pango. Recomendado: Wayland, libxkbcommon, libxslt.

### 9.10 opencv-4.13.0

- **Para que sirve:** Biblioteca de vision por computadora. Plasma la usa para efectos visuales, procesamiento de imagenes en Spectacle, y face detection en SDDM.
- **Que instala:** `libopencv_core.so`, `libopencv_imgproc.so`, `libopencv_highgui.so`, `libopencv_dnn.so`, `libopencv_video.so`, `libopencv_calib3d.so`, `libopencv_features2d.so`, y ~40 modulos mas, + utilidades: `opencv_version`, `opencv_visualisation`, etc.
- **Dependencias:** CMake, libarchive. Recomendados: FFmpeg, GTK3, jasper, libjpeg, libpng, libtiff, libwebp.

### 9.11 kirigami-addons-1.12.1

- **Para que sirve:** Componentes adicionales para Kirigami (framework UI/UX convergente de KDE). Plasma requiere esto.
- **Que instala:** Modulos QML adicionales para Kirigami.
- **Dependencias:** KDE Frameworks 6. Recomendado: Vulkan-Loader.

### 9.12 pulseaudio-qt-1.8.1

- **Para que sirve:** Bindings Qt para PulseAudio. Plasma lo usa para control de volumen y dispositivos de audio.
- **Que instala:** `libpulseaudio-qt6.so`.
- **Dependencias:** KDE Frameworks 6, PulseAudio.

### 9.13 kquickimageeditor-0.6.1

- **Para que sirve:** Componente QML de edicion de imagenes (recorte, rotacion, filtros). Plasma Spectacle lo usa.
- **Que instala:** Modulos QML y `libKQuickImageEditor.so`.
- **Dependencias:** KDE Frameworks 6. Opcional: opencv.

---

## Fase 10 — KDE Plasma 6.6.5

### 10.1 Plasma 6 (bulk build, ~50 paquetes)

- **Para que sirve:** El entorno de escritorio KDE Plasma 6 completo. Corre sobre Wayland (nativo) o X11.
- **Build:** Script bash que descarga y compila todos en orden (listado en `plasma-6.6.5.md5`).
- **Paquetes principales que instala:**
  - **kwin** — compositor Wayland y gestor de ventanas
  - **plasma-workspace** — el escritorio (paneles, widgets, wallpaper, menu de aplicaciones)
  - **plasma-desktop** — configuracion del escritorio
  - **kdecoration** — decoraciones de ventanas
  - **libkscreen** — manejo de pantallas/monitores
  - **kscreen** — configuracion de pantallas (KCM)
  - **kscreenlocker** — pantalla de bloqueo
  - **powerdevil** — gestion de energia/bateria
  - **plasma-nm** — applet de red (NetworkManager)
  - **plasma-pa** — applet de audio (PulseAudio/pipewire)
  - **bluedevil** — applet Bluetooth
  - **systemsettings** — configuracion del sistema
  - **kde-gtk-config** — configuracion de temas GTK
  - **kmenuedit** — editor de menus
  - **milou** — lanzador KRunner
  - **kwallet-pam** — integracion PAM de KWallet
  - **spectacle** — captura de pantalla
  - **kgamma** — ajuste de gamma de pantalla
  - **drkonqi** — gestor de crashes
  - **plasma-firewall** — configuracion de firewall
  - **plasma-systemmonitor** — monitor de sistema
  - **kinfocenter** — informacion del sistema
  - **kpipewire** — integracion pipewire con Plasma
  - **xdg-desktop-portal-kde** — backend KDE para xdg-desktop-portal
  - **breeze** — tema visual completo (widgets, cursores, colores)
  - **breeze-gtk** — tema GTK que combina con Breeze
  - **oxygen-sounds** — sonidos del sistema
  - **print-manager** — gestion de impresion
  - **plasma-welcome** — asistente de bienvenida
  - **y ~20 paquetes mas** (wallpapers, addons, etc.)
- **Dependencias:** TODO lo anterior (Fases 1-9).

---

## Fase 11 — Post-instalacion

### Configuracion necesaria

1. **Crear usuario:**
   ```bash
   useradd -m -G users,wheel,audio,video -s /bin/bash <username>
   passwd <username>
   ```

2. **Activar elogind para sesiones de usuario (Wayland):**
   ```bash
   systemctl enable elogind
   ```

3. **Instalar y configurar SDDM** (Simple Desktop Display Manager):
   - SDDM soporta Wayland backend nativo
   - Tema breeze para SDDM incluido en Plasma

4. **Servicios systemd a activar:**
   ```bash
   systemctl enable sddm
   systemctl --global enable pipewire.socket
   systemctl --global enable pipewire-pulse.socket
   ```

5. **Verificar inicio de Plasma:**
   - Reiniciar VM
   - SDDM debe mostrar pantalla de login
   - Iniciar sesion con el usuario creado
   - Plasma 6 debe arrancar en sesion Wayland
