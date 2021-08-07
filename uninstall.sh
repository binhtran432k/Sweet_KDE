#!/bin/bash

ROOT_UID=0
SRC_DIR=$(cd $(dirname $0) && pwd)

# Destiantion directory
if [ "$UID" -eq "$ROOT_UID" ]; then
	AURORAE_DIR="/usr/share/aurorae/themes"
	SCHEMES_DIR="/usr/share/color-schemes"
	PLASMA_DIR="/usr/share/plasma/desktoptheme"
	LOOKFEEL_DIR="/usr/share/plasma/look-and-feel"
	KVANTUM_DIR="/usr/share/Kvantum"
	KONSOLE_DIR="/usr/share/konsole"
	ICON_DIR="/usr/share/icons"
	SDDM_DIR="/usr/share/sddm/themes"
	GTK_DIR="/usr/share/themes"

	# Sddm
	rm -r ${SDDM_DIR}/Sweet
else
	AURORAE_DIR="$HOME/.local/share/aurorae/themes"
	SCHEMES_DIR="$HOME/.local/share/color-schemes"
	PLASMA_DIR="$HOME/.local/share/plasma/desktoptheme"
	LOOKFEEL_DIR="$HOME/.local/share/plasma/look-and-feel"
	KVANTUM_DIR="$HOME/.config/Kvantum"
	KONSOLE_DIR="$HOME/.local/share/konsole"
	ICON_DIR="$HOME/.local/share/icons"
	GTK_DIR="$HOME/.local/share/themes"
fi

# Uninstall theme

# Color
rm -r ${SCHEMES_DIR}/Sweet.colors
# Plasma
rm -r ${PLASMA_DIR}/Sweet
# Look and feel
rm -r ${LOOKFEEL_DIR}/com.github.eliverlara.Sweet
# Kvantum
rm -r ${KVANTUM_DIR}/Sweet
# Konsole
rm -r ${KONSOLE_DIR}/Sweet.colorscheme
# Cursors
rm -r ${ICON_DIR}/Sweet-cursors
# Icons
rm -r ${ICON_DIR}/candy-icons
rm -r ${ICON_DIR}/BeautyLine
# Themes
#rm -r ${GTK_DIR}/Sweet
