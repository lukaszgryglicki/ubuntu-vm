echo -n "Confirm that you've run: 'sudo fstrim -av' inside the VM and now VM is halted... "
read
cp ubuntu.qcow2 ubuntu.qcow2.bak && qemu-img convert -p -O qcow2 -c ubuntu.qcow2 ubuntu-compact.qcow2 && qemu-img info ubuntu.qcow2 && qemu-img info ubuntu-compact.qcow2 && mv ubuntu-compact.qcow2 ubuntu.qcow2
echo "Now I will start the VM, confirm that all is OK then halt it... "
read
./run-headless.sh
echo -n "You can now run 'rm -f ubuntu.qcow2.bak'... "
read
