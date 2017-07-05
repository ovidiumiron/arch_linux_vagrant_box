#!/bin/bash -x
export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
sudo mkdir /addons
sudo mount /home/vagrant/VBoxGuestAdditions.iso /addons
sudo /addons/VBoxLinuxAdditions.run
sudo umount /home/vagrant/VBoxGuestAdditions.iso
sudo rm /home/vagrant/VBoxGuestAdditions.iso
sudo dd if=/dev/zero of=/boot/EMPTY bs=1M || /bin/true
sudo rm -f /boot/EMPTY
sudo dd if=/dev/zero of=/EMPTY bs=1M  || /bin/true
sudo rm -f /EMPTY
