#!/bin/bash


export ARCH=arm
export CROSS_COMPILE=/home/kmc/kevintm78/toolchains/linero_arm-eabi-7/bin/arm-eabi-
#export CROSS_COMPILE=/home/kmc/kevintm78/toolchains/arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=kfde_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/zImage $(pwd)/zImage
