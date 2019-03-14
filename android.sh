#! /bin/bash


sudo qemu-system-x86_64 \
        -enable-kvm \
        -cpu host \
        -smp cores=2,threads=1,sockets=1,maxcpus=2 \
        -m 2G \
        -soundhw hda \
        -usb \
        -device usb-tablet \
        -drive file=android.qcow2,format=qcow2,l2-cache-size=8M \
        -vga virtio \
        -display gtk,gl=on \
