class accounts ($name) {

  if $::operatingsystem == 'centos' {
    $groups = 'wheel'
  }
  elsif $::operatingsystem == 'debian' {
    $groups = 'admin'
  }
  else {
    fail( "This module does not support ${operatingsystem}.")
  }

  notice ("Groups for user ${name} set to ${groups}")

  user { $name:
    ensure => 'present',
    home => "/home/${name}",
    groups => $groups,
  }

}
