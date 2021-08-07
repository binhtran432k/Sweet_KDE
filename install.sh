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

[[ ! -d ${SCHEMES_DIR} ]] && mkdir -p ${SCHEMES_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}
[[ ! -d ${LOOKFEEL_DIR} ]] && mkdir -p ${LOOKFEEL_DIR}
[[ ! -d ${KVANTUM_DIR} ]] && mkdir -p ${KVANTUM_DIR}
[[ ! -d ${KONSOLE_DIR} ]] && mkdir -p ${KONSOLE_DIR}

# Install theme

# Color
cp -r ${SRC_DIR}/Sweet/kde/colorschemes/* ${SCHEMES_DIR}
# Plasma
[[ ! -d ${PLASMA_DIR}/Sweet ]] && mkdir -p ${PLASMA_DIR}/Sweet
cp -r ${SRC_DIR}/Sweet-kde/* ${PLASMA_DIR}/Sweet
# Look and feel
cp -r ${SRC_DIR}/Customize/look-and-feel/* ${LOOKFEEL_DIR}
# Kvantum
cp -r ${SRC_DIR}/Customize/kvantum/* ${KVANTUM_DIR}
# Konsole
cp -r ${SRC_DIR}/Sweet/kde/konsole/* ${KONSOLE_DIR}
# Cursors
cp -r ${SRC_DIR}/Sweet/kde/cursors/Sweet-cursors ${ICON_DIR}
# Icons
[[ ! -d ${ICON_DIR}/candy-icons ]] && mkdir -p ${ICON_DIR}/candy-icons
cp -r ${SRC_DIR}/candy-icons/* ${ICON_DIR}/candy-icons
[[ ! -d ${ICON_DIR}/BeautyLine ]] && mkdir -p ${ICON_DIR}/BeautyLine
cp -r ${SRC_DIR}/BeautyLine/* ${ICON_DIR}/BeautyLine
# Themes
#cp -r ${SRC_DIR}/Customize/gtk/Sweet ${GTK_DIR}
# Customize
rm ${PLASMA_DIR}/Sweet/icons/start.svg
cp ${SRC_DIR}/Customize/start.svgz ${PLASMA_DIR}/Sweet/icons
cp ${SRC_DIR}/Customize/manjaro.svgz ${PLASMA_DIR}/Sweet/icons
cp -r ${SRC_DIR}/Customize/candy-icons ${ICON_DIR}
cp -r ${SRC_DIR}/Customize/BeautyLine ${ICON_DIR}
