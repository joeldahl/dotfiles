# Set Swedish keyboard layout and make CTRL-ALT-BACKSPACE work
setxkbmap -option terminate:ctrl_alt_bksp -model pc105 -layout se &

# Turn off console beep
xset b off &

# Start Window Manager
exec scrotwm
