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
	#[[ ! -d ${SDDM_DIR}/Sweet ]] && mkdir -p ${SDDM_DIR}/Sweet
	#cp -r ${SRC_DIR}/Sweet/kde/sddm/. ${SDDM_DIR}/Sweet
	cp -r ${SRC_DIR}/Customize/sddm/Sweet ${SDDM_DIR}
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

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}
[[ ! -d ${KVANTUM_DIR} ]] && mkdir -p ${KVANTUM_DIR}
[[ ! -d ${KONSOLE_DIR} ]] && mkdir -p ${KONSOLE_DIR}
[[ ! -d ${LOOKFEEL_DIR} ]] && mkdir -p ${LOOKFEEL_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}
[[ ! -d ${SCHEMES_DIR} ]] && mkdir -p ${SCHEMES_DIR}

# Install theme

# Aurorae
echo "Installing aurorae..."
cp -r ${SRC_DIR}/Customize/aurorae/Sweet-Dark ${AURORAE_DIR}
cp -r ${SRC_DIR}/Customize/aurorae/Sweet-Dark-transparent ${AURORAE_DIR}
# Color
echo "Installing colorschemes..."
cp ${SRC_DIR}/Sweet/kde/colorschemes/Sweet.colors ${SCHEMES_DIR}
# Cursors
echo "Installing cursors themes..."
cp -r ${SRC_DIR}/Sweet/kde/cursors/Sweet-cursors ${ICON_DIR}
# Icons
echo "Installing icons themes..."
echo " - Installing candy icons..."
[[ ! -d ${ICON_DIR}/candy-icons ]] && mkdir -p ${ICON_DIR}/candy-icons
cp -r ${SRC_DIR}/candy-icons/* ${ICON_DIR}/candy-icons
echo " - Installing BeautyLine icons..."
[[ ! -d ${ICON_DIR}/BeautyLine ]] && mkdir -p ${ICON_DIR}/BeautyLine
cp -r ${SRC_DIR}/BeautyLine/* ${ICON_DIR}/BeautyLine
# Konsole
echo "Installing konsole themes..."
cp ${SRC_DIR}/Sweet/kde/konsole/Sweet.colorscheme ${KONSOLE_DIR}
# Kvantum
echo "Installing kvantum themes..."
cp -r ${SRC_DIR}/Customize/kvantum/Sweet ${KVANTUM_DIR}
cp -r ${SRC_DIR}/Customize/kvantum/Sweet-transparent-toolbar ${KVANTUM_DIR}
# Look and feel
echo "Installing look and feel themes..."
cp -r ${SRC_DIR}/Customize/look-and-feel/com.github.eliverlara.Sweet ${LOOKFEEL_DIR}
# Plasma
echo "Installing plasma themes..."
[[ ! -d ${PLASMA_DIR}/Sweet ]] && mkdir -p ${PLASMA_DIR}/Sweet
cp -r ${SRC_DIR}/Sweet-kde/* ${PLASMA_DIR}/Sweet
# Themes
echo "Installing GTK themes..."
cp -r ${SRC_DIR}/Customize/gtk/Sweet ${GTK_DIR}
# Customize
echo "Applying customization..."
rm ${PLASMA_DIR}/Sweet/icons/input.svg*
rm ${PLASMA_DIR}/Sweet/icons/manjaro.svg*
rm ${PLASMA_DIR}/Sweet/icons/media.svg*
rm ${PLASMA_DIR}/Sweet/icons/start.svg*
cp ${SRC_DIR}/Customize/desktoptheme/icons/input.svgz ${PLASMA_DIR}/Sweet/icons
cp ${SRC_DIR}/Customize/desktoptheme/icons/manjaro.svgz ${PLASMA_DIR}/Sweet/icons
cp ${SRC_DIR}/Customize/desktoptheme/icons/media.svg ${PLASMA_DIR}/Sweet/icons
cp ${SRC_DIR}/Customize/desktoptheme/icons/start.svgz ${PLASMA_DIR}/Sweet/icons
cp -r ${SRC_DIR}/Customize/candy-icons ${ICON_DIR}
cp -r ${SRC_DIR}/Customize/BeautyLine ${ICON_DIR}
