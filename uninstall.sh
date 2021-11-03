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
	GTK_DIR="$HOME/.local/share/themes"
	ICON_DIR="$HOME/.local/share/icons"
	KVANTUM_DIR="$HOME/.config/Kvantum"
	KONSOLE_DIR="$HOME/.local/share/konsole"
	LOOKFEEL_DIR="$HOME/.local/share/plasma/look-and-feel"
	PLASMA_DIR="$HOME/.local/share/plasma/desktoptheme"
	SCHEMES_DIR="$HOME/.local/share/color-schemes"
fi

# Uninstall theme

# Aurorae
echo "Uninstalling aurorae..."
rm -r ${AURORAE_DIR}/Sweet-Dark
rm -r ${AURORAE_DIR}/Sweet-Dark-transparent
# Color
echo "Uninstalling colorschemes..."
rm ${SCHEMES_DIR}/Sweet.colors
# Cursors
echo "Uninstalling cursors themes..."
rm -r ${ICON_DIR}/Sweet-cursors
# Icons
echo "Uninstalling icons themes..."
echo " - Uninstalling candy icons..."
rm -r ${ICON_DIR}/candy-icons
echo " - Uninstalling BeautyLine icons..."
rm -r ${ICON_DIR}/BeautyLine
# Konsole
echo "Uninstalling konsole themes..."
rm ${KONSOLE_DIR}/Sweet.colorscheme
# Kvantum
echo "Uninstalling kvantum themes..."
rm -r ${KVANTUM_DIR}/Sweet
rm -r ${KVANTUM_DIR}/Sweet-transparent-toolbar
# Look and feel
echo "Uninstalling look and feel themes..."
rm -r ${LOOKFEEL_DIR}/com.github.eliverlara.Sweet
# Plasma
echo "Uninstalling plasma themes..."
rm -r ${PLASMA_DIR}/Sweet
# Themes
echo "Uninstalling GTK themes..."
rm -r ${GTK_DIR}/Sweet
