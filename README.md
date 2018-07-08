# virt-install-templates
A repository of virt-install templates to make the creation of KVM machines easier

## Usage

Just launch the script with the first argument as the virtual machine name, example:
```
./kvm_install_debian_stable.sh mydebian
```

The script will grab the official image and begin the installation process.

You can customize virt-install parameters in the scripts as you need.