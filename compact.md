1) Inside the VM run: `sudo fstrim -av`.
2) On host:
```
cp ubuntu.qcow2 ubuntu.qcow2.bak
qemu-img convert -O qcow2 -c ubuntu.qcow2 ubuntu-compact.qcow2
qemu-img info ubuntu.qcow2
qemu-img info ubuntu-compact.qcow2
mv ubuntu-compact.qcow2 ubuntu.qcow2
[if anything goes wrong restrore from backup]
# rm -f ubuntu.qcow2.bak
```
