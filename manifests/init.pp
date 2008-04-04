# modules/mongrel/manifests/init.pp - manage mongrel stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

# modules_dir { "mongrel": }

class mongrel {
    case $operatingsystem {
        gentoo: { include mongrel::gentoo }
        default: { include mongrel::base }
    }
}

class mongrel::base {
    package{'mongrel':
        ensure => installed,
    }
}

class mongrel::gentoo inherits mongrel::base {
    Package[mongrel]{
        category => 'www-servers',
    }

    #conf.d file if needed
    # needs module gentoo
    #gentoo::etcconfd { mongrel: require => "Package[mongrel]", notify => "Service[mongrel]"}
}
