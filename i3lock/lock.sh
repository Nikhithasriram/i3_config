#!/bin/bash
#
#
#BLANK='#00000000'
#CLEAR='#ffffff22'
#DEFAULT='#ff00ffcc'
#TEXT='#ee00eeee'
#WRONG='#880000bb'
#VERIFYING='#bb00bbbb'
#
#
BLANK='#00000000'       # fully transparent (keep this)
CLEAR='#b0b0b0cc'       # light grey, semi-transparent (about 80% opacity)
DEFAULT='#f5f5f5cc'     # medium grey, semi-transparent
TEXT='#d0d0d0ff'        # off-white text, fully opaque
WRONG='#dda398'       # muted orange/red for errors, semi-transparent
VERIFYING='#383759'   # soft blue for verifying, semi-transparent

 i3lock\
  -i ~/Downloads/wallpaper/lock-wallpaper.png \
  --clock \
  --insidever-color=$BLANK     \
  --ringver-color=$VERIFYING   \
  \
  --insidewrong-color=$BLANK   \
  --ringwrong-color=$WRONG     \
  \
  --inside-color=$BLANK        \
  --ring-color=$BLANK        \
  --line-color=$BLANK          \
  --separator-color=$BLANK   \
  \
  --verif-color=$TEXT          \
  --wrong-color=$TEXT          \
  --time-color=$TEXT           \
  --date-color=$TEXT           \
  --layout-color=$TEXT         \
  --keyhl-color=$WRONG         \
  --bshl-color=$WRONG          \
  \
  
