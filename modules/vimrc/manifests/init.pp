class vimrc {
  file { '/root/.vimrc':
    ensure => 'present',
    source => 'puppet:///modules/vimrc/vimrc',
  }
}
