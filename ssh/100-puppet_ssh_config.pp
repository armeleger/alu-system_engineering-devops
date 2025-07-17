# This Puppet script configures SSH client to use a specific private key and disables password authentication

file_line { 'Disable password authentication':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
}

file_line { 'Set IdentityFile':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
}
