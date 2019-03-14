#! /bin/bash


sudo qemu-system-x86_64 \
        -enable-kvm \
        -machine type=q35,accel=kvm,kernel_irqchip=on \
        -cpu host \
        -smp cores=2,threads=1,sockets=1,maxcpus=2 \
        -m 2G \
        -soundhw hda \
        -display gtk,gl=on \
        -vga qxl \
        -device vfio-pci,sysfsdev=/sys/bus/pci/devices/0000\:00\:02.0/cc6e21bc-2e6e-41b9-ae7e-2a0bfd95885e,x-igd-opregion=on,display=on \
        -drive file=Windows\ 10.qcow2,format=qcow2,l2-cache-size=8M \
        -nic none
