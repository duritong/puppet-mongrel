# modules/mongrel/manifests/init.pp - manage mongrel stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

# modules_dir { "mongrel": }

class mongrel {
    case $operatingsystem {
        gentoo: { include mongrel::gentoo }
        centos: { include mongrel::centos }
        default: { include mongrel::base }
    }
}

class mongrel::base {
    package{'mongrel':
        ensure => installed,
    }
}

class mongrel::centos inherits mongrel::base {
    Package[mongrel]{
        # you should find this package @rubyworks
        name => 'rubygem-mongrel',
    }
}
class mongrel::gentoo inherits mongrel::base {
    Package[mongrel]{
        category => 'www-servers',
    }
}
