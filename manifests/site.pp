# In the absence of any other directive, make files owned by root
File {
  owner => root,
  group => root,
  mode  => 0644
}

# Puppet is the only software in the world without a default PATH.
Exec {
  cwd  => "/",
  path => "/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin",
}

node default {
  include stdlib

  class { "base::setup":
    stage => "setup",
  }

  include base
}

