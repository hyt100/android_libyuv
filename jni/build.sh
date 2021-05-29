#!/bin/sh

NDKHOME=/home/eric/Android/Sdk/ndk/21.1.6352462
JAVA_HOME=/home/eric/android-studio/jre
PATH=$PATH:$JAVA_HOME/bin:$NDKHOME

export JAVA_HOME
export PATH

ndk-build clean
ndk-build
