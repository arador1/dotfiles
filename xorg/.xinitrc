#!/bin/sh

export LIBVA_DRIVER_NAME="iHD"
#export __GLX_VENDOR_LIBRARY_NAME="nvidia"
export VDPAU_DRIVER="nvidia"

export GOOGLE_API_KEY="no"
export GOOGLE_DEFAULT_CLIENT_ID="no"
export GOOGLE_DEFAULT_CLIENT_SECRET="no"

xrdb ~/.Xresources &
pipewire &
exec dbus-run-session -- i3
