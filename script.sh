cd /root
mkdir Kernel
cd Kernel
git clone --depth 1 github.com/r0ddty/kernel_xiaomi_fog
cd kernel_xiaomi_fog
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-kernel-builder
mkdir toolchain
cd toolchain
sudo apt update && sudo apt upgrade -y
sudo apt install git ccache automake flex lzop bison gperf build-essential zip curl zlib1g-dev g++-multilib gcc-multilib libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven libssl-dev pwgen libswitch-perl policycoreutils minicom libxml-sax-base-perl libxml-simple-perl bc libc6-dev-i386 lib32ncurses5-dev libx11-dev lib32z-dev libgl1-mesa-dev xsltproc unzip device-tree-compiler python2
# Install required packages first
sudo apt install bison flex libncurses-dev
sudo apt install clang llvm lld

# Clone the AOSP Clang toolchain
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 --depth=1

# Get a compatible version of binutils
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 --depth=1
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 --depth=1
