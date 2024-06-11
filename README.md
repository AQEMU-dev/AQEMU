# AQEMU
AQEMU (Android QEMU) is a fork of QEMU designed to be installed on Android devices within termux 
back in 2022 I found out that it was very hard to install QEMU without errors (And only version 7.0.0 seems to work well in termux!)

# requirements
You will need about ~4GBs of free space to install AQEMU, but you'll should have somewhere about ~40GBs of free space if you're planning to use this for gaming due to Windows space usage on disk images, it's recommended you have 4GBs of RAM for small OSes, and up to 12GB for windows images (expect for 1.01 to 7, including superlite images), you should have a quad core to possibly a 16 core CPU to run some OSes smoothly without lag It's recommended you use a SWAP file on low memory devices (ROOT IS REQUIRED FOR SWAP FILES!), (You have a 99.9 percent chance of voiding warrenty when rooting, however that doesn't apply to PCs running Android x86 and it varients for various reasons)
# Platforms this will run on
aarch64 devices, armv7 devices, armv8 devices X86, X86_64 (You will likely have a good performance ratio with AMD and Intel machines!) but I cannot verify that until I install bliss OS on a VM for testing, (And if you are running this on x86_64 devices that have PCIe slots populated with video cards, you can try to pass them through to get a gaming boost out of this, but use KVM while doing so!(
# installation
curl -o AQEMU-installer https://raw.githubusercontent.com/AQEMU-dev/AQEMU/main/AQEMU-install.sh && chmod +x AQEMU-installer && ./AQEMU-installer
# Will you share any premade ROMS (Windows, mac, linux or anything)?

Yep, on internet archive I will have premade roms to test out for usageo, or to play around with

# Is this even legal?

Yes, AQEMU is legal, since QEMU itself is GPL 3.0 licensed, so I can do whatever to the code of QEMU as long as I credit them

Credits to: www.github/termux for the termux application needed, www.github/QEMU for the 7.0.0 source code

# Well what is the legality of the premade ROMS?

It's a gray area TBH, hell, go ahead and install µtorrent, or qbitorrent on the premade roms or your own and share that around, spread the word that AQEMU is best for Android devices running termux!

# Where do I donate money to support the project?

You really don't have to, unless you are generous, I'm currently finding where you can donate to to support a project that somehow took ~3 years to make due to me being lazy and forgetting about this a lot, but it will be helpful
