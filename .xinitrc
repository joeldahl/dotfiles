#
# .xinitrc - xinit configuration file
# 
# Written by:
# Joel Dahl <joel@vnode.se>
#

# Set Swedish keyboard layout and make CTRL-ALT-BACKSPACE work
setxkbmap -option terminate:ctrl_alt_bksp -model pc105 -layout se &

# Add terminus to Xorg's list of known font paths
xset +fp /usr/local/lib/X11/fonts/terminus-font

# Turn off console beep
xset b off &

# Use correct resolution
xrandr -s 1920x1200 &

# Start ssh-agent and my window manager
exec ssh-agent spectrwm
