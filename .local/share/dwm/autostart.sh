#!/bin/bash
#xsetwacom set 'Wacom One by Wacom M Pen stylus' MapToOutput HEAD-0 &
xrandr --output Virtual1 --mode 1920x1080 --rate 144
xrandr --output HDMI-0 --mode 1920x1080 --rate 144
xrandr --output VGA-0 --mode 1920x1080 --rate 144
nitrogen --restore
dwmblocks &
