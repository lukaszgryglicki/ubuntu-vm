#!/bin/bash
qemu-system-x86_64 \
  -name morgi -enable-kvm -machine q35,accel=kvm -cpu host -smp 8 -m 16G \
  -drive file=./ubuntu.qcow2,if=virtio,format=qcow2,cache=none,discard=unmap \
  -netdev user,id=net0,hostfwd=tcp::29922-:22 -device virtio-net-pci,netdev=net0 \
  -audiodev pa,id=audio0 -device ich9-intel-hda -device hda-duplex,audiodev=audio0 \
  -vga qxl -vnc 127.0.0.1:1,password=off
