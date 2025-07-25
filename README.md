# AQEMU
AQEMU (Android QEMU) is a fork of QEMU designed to be installed on Android devices within termux 
back in 2022 I found out that it was very hard to install QEMU without errors (And only version 7.0.0 seems to work well in termux!)

# requirements
AQEMU-DEV recommends to use quad cores+ CPUs for AQEMU, you will need 4GiBs space, but you will need lots more for the ISOs and HDD images

This can run XP, but you will need 2GB ram on host to run and 4GBs of space left for data for the OS

Note: I am uploading ROMs for this project

Note: Screw vectras VM for removing ROMs in 2024, count this as a warning

Note: If you are using this project to run illegal things, you are responsible for your actions, not me!

# Platforms this will run on
aarch64 devices, armv7 devices, armv8 devices X86, X86_64 (You will likely have a good performance ratio with AMD and Intel machines!) but I cannot verify that until I install bliss OS on a VM for testing, (And if you are running this on x86_64 devices that have PCIe slots populated with video cards, you can try to pass them through to get a gaming boost out of this, but use KVM while doing so!)
# installation
curl -o AQEMU-installer https://raw.githubusercontent.com/AQEMU-dev/AQEMU/main/AQEMU-install.sh && chmod +x AQEMU-installer && ./AQEMU-installer
# Will you share any premade ROMS (Windows, mac, linux or anything)?

I am currenty creating VMware VMs with OS'es

we are skipping mac due to pontentional DMCA strikes against this project, and due to other reasons

# Is this even legal?

Yes, AQEMU is legal, since QEMU itself is GPL 3.0 licensed, so I can do whatever to the code of QEMU as long as I credit them

Credits to: www.github.com/termux for the termux application needed, www.github.com/QEMU for the 7.0.0 source code

but I won't do any malicous code, you can check all of the code

*note XP roms will never happen, XP is known for a ATAPI bug that crashes the quest with a BSOD*

*Note 2: If you are asking if I can upload .ISO files to AQEMU-ROMs? Yes, but I won't include anything illegal, this includes stuff like trojans and miners

# Well what is the legality of the premade ROMS?

This is a controversal gray area, In fact, I recommend you should build your own ROMs

But go ahead and download them if you want...

# Where do I donate money to support the project?

Monero Address: 84fwmk71ptuci3YbKXDHHziwRwVtdZM784JpiMmdJT1ZTwx17VJwDZmg7v46Y5Ge9Kbch1FL9MCWQddVZQo1Rt7nJEyaJ82

Thanks for donating if you do
