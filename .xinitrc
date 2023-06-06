#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

	xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

	xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Disable sleep
xset s off -dpms &

# DWM Status
# /home/milic/.suckless/dwm-bar/dwm_bar.sh &
# dwmblocks &

# Display resolution
xrandr --output HDMI-0 --mode 1920x1080 --rate 144
xrandr --output VGA-0 --mode 1920x1080 --rate 60

# Compositor
xcompmgr &

# Flameshot
flameshot &

# Wallpaper
nitrogen --restore &

# Pipewire
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

# Notifications
dunst &

# Wacom tablet main monitor
# exec xsetwacom set 'Wacom One bu Wacom M Pen stylus' MapToOutput HEAD-0

# Execute DWM
exec dwm
