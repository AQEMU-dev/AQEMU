#need to grab and update pre-regs or it won't compile!
apt update
echo "Please press enter if something asks to replace a file as it will be denied by default press of the enter key!"
apt upgrade -y
apt install x11-repo -y
apt install python binutils qemu-utils ninja make wget git dbus glib-bin libpixman libnfs libspice-server libssh gtk3 xorgproto libusb libtasn1 pulseaudio perl -y
wget https://download.qemu.org/qemu-7.0.0.tar.xz
tar xvJf qemu-7.0.0.tar.xz
git clone https://github.com/termux/termux-packages ~/termux-packages --depth=1
mkdir ~/qemu-patches
mv ~/termux-packages/packages/qemu-system-x86-64-headless/*.patch ~/qemu-patches
cd ~/qemu-patches
sed -i "s|@TERMUX_PREFIX@|$PREFIX|g" *.patch
cp -r ~/qemu-7.0.0 ~/aqemu
rm -rf ~/qemu-7.0.0
cd ~/aqemu
for patches in ~/qemu-patches/*.patch; do patch -p1 < $patches; done
rm ~/aqemu/hw/9pfs/9p-proxy.c
rm ~/aqemu/hw/9pfs/9p-local.c
curl -o ~/aqemu/hw/9pfs/9p-proxy.c https://raw.githubusercontent.com/AQEMU-dev/AQEMU/main/9p-proxy.c
curl -o ~/aqemu/hw/9pfs/9p-local.c https://raw.githubusercontent.com/AQEMU-dev/AQEMU/main/9p-local.c
echo "Removing folders that aren't needed anymore"
rm ~/qemu-7.0.0.tar.xz
rm -rf ~/qemu-patches
rm -rf ~/termux-packages
echo "Please allow termux to read/write to SD card(s)"
termux-setup-storage
./configure \
		--prefix="$PREFIX" \
		--disable-stack-protector \
		--smbd="$PREFIX/bin/smbd" \
		--enable-coroutine-pool \
		--audio-drv-list=pa \
		--enable-trace-backends=nop \
		--enable-guest-agent \
		--enable-gnutls \
		--enable-nettle \
		--disable-sdl \
		--disable-sdl-image \
		--enable-gtk \
		--disable-vte \
		--enable-curses \
		--enable-iconv \
		--enable-vnc \
		--disable-vnc-sasl \
		--enable-vnc-jpeg \
		--disable-xen \
		--disable-xen-pci-passthrough \
		--enable-virtfs \
		--enable-curl \
		--enable-fdt \
		--enable-kvm \
		--enable-hax \
		--disable-hvf \
		--disable-whpx \
		--enable-libnfs \
		--enable-lzo \
		--disable-snappy \
		--enable-bzip2 \
		--disable-lzfse \
		--disable-seccomp \
		--enable-libssh \
		--enable-bochs \
		--enable-cloop \
		--enable-dmg \
		--enable-parallels \
		--enable-qed \
		--enable-spice \
		--enable-libusb \
		--disable-usb-redir \
		--disable-vhost-user \
		--disable-vhost-user-blk-server \
		--target-list="x86_64-softmmu"
make
echo "Installation complete, have fun running premade roms if any are available on internet archive"