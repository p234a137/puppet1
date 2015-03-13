class web ($page_name, $message) {
  $doc_root = '/var/www/html/lvmguide'

  file { "${doc_root}/${page_name}.html":
    ensure => 'present',
    content => "<em>${message}</em>",
  }

}
