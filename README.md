## Linux Kernel for Android
***I'm not a developer nor do I have any formal education regarding Android development (or anything else). These notes are here just for convenience. Some information could be inaccurate and I welcome any input/corrections.***

Samsung has removed the download for some (vintage) devices including most of the trlte variants. The initial tag is an untouched upload of the kernel.zip for the SM-N910V.

* Device = trltevzw
* Firmware = N910VVRU2CQL1
* Toolchain = arm-eabi-4.8 **Google prebuilt**
* Host OS = Ubuntu 18.04.5 LTS

**Environment Setup**

* Java 8

      sudo apt-get install openjdk-8-jdk

* Build Tools

      sudo apt-get install git-core ccache automake lzop bison gperf build-essential zip curl zlib1g-dev g++-multilib python3-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng gnupg flex libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

**Prebuilt GCC toolchains**

* Google's prebuilt toolchain:

      git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8
      
* UberTC's prebuilt toolchain:

      git clone https://bitbucket.org/UBERTC/arm-eabi-4.8.git

### Python 2.7
**Build failed on a clean Ubuntu 18.04 install due to python errors. These packages fixed it.**

    sudo apt-get install python2.7 python-all


**Building with CCACHE**

    export USE_CCACHE=1
    export CCACHE_EXEC=$(command -v ccache)

### References - Android Stuff that may or may not be related to this project
* [Android](https://source.android.com/) - In depth resource for building Android.
* [XDA](https://www.xda-developers.com/) - Lots of guides
* [Samsung Source Code](https://opensource.samsung.com)
* [Anykernel3](https://github.com/osm0sis/AnyKernel3.git) - Makes kernel flashing easier and less intrusive.
* [Android Image Kitchen](https://github.com/osm0sis/Android-Image-Kitchen.git) - If you need/want to build a boot.img
* [Magisk](https://github.com/topjohnwu/Magisk.git)
* [OpenGapps](https://github.com/opengapps/opengapps.git)
