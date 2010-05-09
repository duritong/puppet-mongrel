# modules/mongrel/manifests/init.pp - manage mongrel stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

class mongrel {
    case $operatingsystem {
        gentoo: { include mongrel::gentoo }
        centos: { include mongrel::centos }
        default: { include mongrel::base }
    }
}
