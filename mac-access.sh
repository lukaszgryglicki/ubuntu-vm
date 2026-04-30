#!/bin/bash
# VNC
# To start remotelly:
# ssh -L 5901:127.0.0.1:5901 lgryglicki@tuxi
# if you add -Y to ssh X11 will be forwarded as well: ssh -Y -L ...
# To access from mac via VNC:
# /Applications/TigerVNC.app/Contents/MacOS/vncviewer 127.0.0.1:5901
# To access locally from laptop
# vncviewer 127.0.0.1:5901
#
# X11 fwd
# To access laptop with X11 forwarding:
# open -a XQuartz
# export DISPLAY=:0
# ssh -Y lgryglicki@tuxi
# ssh -Y -p 29922 morgi@tuxi
