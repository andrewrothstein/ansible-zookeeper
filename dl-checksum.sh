#!/usr/bin/env sh
VER=3.5.6
DIR=~/Downloads

dl_ver () {
    local ver=$1
    local prefix=$2
    local file=${prefix}-${ver}.tar.gz
    local url=http://apache.org/dist/zookeeper/zookeeper-${ver}/${file}
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}


dl_ver ${1:-3.5.6} apache-zookeeper
