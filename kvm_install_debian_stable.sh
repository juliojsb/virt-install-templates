#!/bin/bash
#
# Author        :Julio Sanz
# Website       :www.elarraydejota.com
# Email         :juliojosesb@gmail.com
# Description   :Script to automate the creation of KVM virtual machines using virt-install
# License       :GPLv3
#


#
# VARIABLES
# 

vm_name="$1"


#
# MAIN
# 

virt-install \
--name $vm_name \
--disk path=/virt/kvm/vms/$vm_name.qcow2,size=8 \
--vcpus 1 \
--ram 1024 \
--os-type linux \
--os-variant debian9 \
--network bridge=br0 \
--graphics spice \
--video qxl \
--channel spicevmc \
--console pty,target_type=serial \
--location 'http://ftp.us.debian.org/debian/dists/stable/main/installer-amd64/'
