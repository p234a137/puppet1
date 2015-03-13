class cowsayings::stdtest {
    include 'stdlib'

    $data = loadyaml('/etc/puppetlabs/data/webservers/data.yaml')

    $http_port = $data[ports][http]
    $https_port = $data[ports][http]
    $webdir = $data[webdir]
    
    notice("http_port = ${http_port}, https_port = ${https_port}, webdir = ${webdir}")

    $database_data = loadyaml('/etc/puppetlabs/data/database/data.yaml')
    $myhash = {database_user => 'webdata', webdir => '/var/html'}
    $data2 = merge($myhash,  $data, $database_data)
    $webdir2 = $data2[webdir]
    $db_port = $data2[ports][db]
    notice("webdir2 = ${webdir2}, db_port = ${db_port}")
}
