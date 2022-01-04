#### Samsung has removed the download for some legacy devices including most of the trlte variants. The initial tag is an untouched upload of the kernel.zip for the SM-N910V. [Mirror](https://www.androidfilehost.com/?fid=14943124697586354076) of the original zip from Samsung.

###### ***I'm not a developer nor do I have any formal education regarding Android development (or anything else). These notes are here just for convenience. Some information could be inaccurate and I welcome any input/corrections.***
___________________________________________________________________________________________________________________________________________________________

**Kernel Specs**
* Linux kernel v.3.10.40
* Device = trltevzw
* Firmware = N910VVRU2CQL1
* Recommended Toolchain = arm-eabi-4.8
__________________________________________________________________________________________________________________________________________________________

* Google's prebuilt gcc arm-eabi-4.8 toolchain (mirror):

      git clone git@github.com:kevintm78/arm-eabi-4.8.git

* Build Tools

      sudo apt install git-core ccache automake lzop bison gperf build-essential zip curl zlib1g-dev g++-multilib python3-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng gnupg flex libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig
      
* [AOSP guide](https://source.android.com/setup/build/initializing) for setting up your build environment.
________________________________________________________________________________________________________________________________________________________

#### Fix for "/usr/bin/env 'python' no such file or directory"

* [AOSP suggestion](https://source.android.com/setup/build/downloading#initializing-a-repo-client)
  If your Ubuntu 20.04.2 LTS is a newly installed (vs. upgraded) Linux version:

      sudo ln -s /usr/bin/python3 /usr/bin/python

* Above fix works with certain distros, but if not try:

      sudo apt install python-is-python2

* python-all was needed once, but probably just a fluke...

      sudo apt install python-all
_________________________________________________________________________________________________________________________________________________________

#### Environment Variables:
  *Warning-These could be as inaccurate as everything else in this readme.*

    export USE_CCACHE=1                                     #Android 9 and below just needs this one
    export ANDROID_SDK_ROOT="$HOME/Android/Sdk"             #Path to some dumb kevin. For when I get lost.
    export OUT_DIR_COMMON_BASE=""$HOME/path/to/salvation"   #Set this for common out directory for Android builds
    export PATH="$HOME/android-studio/jre/bin:$PATH"        #This is needs to set for building Magisk
    export PATH="$HOME/.bin:$PATH"                          #This is where I install repo.
    export ALLOW_FILE_DISCOVERY=1                           #Self explanatory
    export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"  #this is for my lack of ram

    export CCACHE_EXEC=$(command -v ccache)                 #Android 10+ only??!!
________________________________________________________________________________________________________________________________________________________

**@osm0sis' rep0s, odds, ends, and evens**
* [Anykernel3](https://github.com/osm0sis/AnyKernel3.git)
* [Android Image Kitchen](https://github.com/osm0sis/Android-Image-Kitchen.git)
* [Odds and End thread](https://forum.xda-developers.com/t/tools-zips-scripts-osm0sis-odds-and-ends-multiple-devices-platforms.2239421/)

### References, Links, etc.
* [Android Source](https://source.android.com/)
* [AOSP-Mirror Links](https://aosp-mirror.github.io/)
* [XDA](https://www.xda-developers.com/)
* [Samsung Source Code](https://opensource.samsung.com)
* [Magisk](https://github.com/topjohnwu/Magisk.git)
* [OpenGapps](https://github.com/opengapps/opengapps.git)
* [Kernel.org commit tree v3.10.y](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/?h=linux-3.10.y)
* [Google kernel source for v3.10.y](https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux/+/refs/heads/linux-3.10.y)
* [All things Repo](https://gerrit.googlesource.com/git-repo/+/refs/heads/master/README.md)
* [AOSP-Mirror Links](https://aosp-mirror.github.io/)
* [Repo and git references](https://gerrit.googlesource.com/git-repo/+/refs/heads/master/docs/manifest-format.md#XML-File-Format)
* [Github Documentatation](https://docs.github.com)
* [Magisk Documentation](https://topjohnwu.github.io/Magisk)
* [Manpages for xz compression](http://http://manpages.org/xz)
