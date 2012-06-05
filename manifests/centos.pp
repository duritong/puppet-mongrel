class mongrel::centos inherits mongrel::base {
  Package[mongrel]{
    # you should find this package @rubyworks
    name => 'rubygem-mongrel',
  }
}
