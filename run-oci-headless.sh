#!/bin/bash
qemu-system-x86_64 \
  -name morgi \
  -enable-kvm \
  -machine q35,accel=kvm \
  -cpu host \
  -smp 64 \
  -m 128G \
  -drive file=./ubuntu.qcow2,if=virtio,format=qcow2,cache=none,discard=unmap \
  -netdev user,id=net0,hostfwd=tcp::29922-:22 \
  -device virtio-net-pci,netdev=net0 \
  -display none \
  -serial none \
  -monitor none \
  -daemonize \
  -pidfile ./qemu.pid
