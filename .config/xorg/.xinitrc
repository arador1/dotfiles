#!/bin/bash

export QT_QPA_PLATFORMTHEME="qt6ct"

export LIBVA_DRIVER_NAME="iHD"
#export __GLX_VENDOR_LIBRARY_NAME="nvidia"
export VDPAU_DRIVER="nvidia"

export FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"

export MOZ_USE_XINPUT2=1

xrdb ~/.Xresources

pipewire &

exec dbus-run-session -- i3
