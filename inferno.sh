#!/bin/sh

# edit as needed

export TERMUX=/data/data/com.termux/files
export HOME=$TERMUX/home
export DEBIAN=$TERMUX/debian
export INFERNO=$TERMUX/inferno
export OBJTYPE=arm
export SYSHOST=Linux
export EMU=$INFERNO/$OBJTYPE/$SYSHOST/bin/emu

$TERMUX/usr/bin/proot \
  -r $DEBIAN \
  -v -0 \
  -b /sys \
  -b /dev \
  -b /proc \
  -b /data \
  -b /mnt \
  -b /proc/mounts:/etc/mtab \
  -b $INFERNO:/inferno \
  # -b /:/mnt/hostroot \
  # -b $TERMUX:/mnt/termux \
  # -b /storage/emulated/0:/mnt/sdcard \
  $EMU -r $INFERNO \
  $"@"
