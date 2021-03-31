#!/usr/bin/env sh
set -e
DIR=~/Downloads

dl_ver () {
    local ver=$1
    local prefix=$2
    local suffix=${3:-"-bin"}
    local file=${prefix}-${ver}${suffix}.tar.gz
    local url=http://apache.org/dist/zookeeper/zookeeper-${ver}/${file}
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-3.7.0} apache-zookeeper
