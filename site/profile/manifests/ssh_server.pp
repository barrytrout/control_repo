class profile::ssh_server{
  package {'openssh-server[:
    ensure => present,    
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root'
    type => 'ssh-rsa'
    key = ' AAAAB3NzaC1yc2EAAAADAQABAAABAQC651b6p+Qyin8aQkDlUFrTHoY22j81z/Bejj+4c0ZzwWEN5NepDBIsoxZTgZ9NYsJEVNl1YspvUiM6b73ZWJhkIcU9mXB6oxQp85pA8M0bI01SswCytZEDtdNhRsLapyIetDZFBGTdTN/S8H+b+k3uuyBNepabDKlXg9389y6oiBA+DM4B/IEiMc530ynkspEQ0N0VGFqHtMb5b9d4ubAnjETouLTSiu4Vfe4UYvvVEF5oyN2VmaU/RjryvkZwRzYS9jL6oFvdxNjLwlHQyClqLdZZmCOT/6Tg65fOZltQKllcovif0GO0w2Q3CiTaNl7EpZ3/ORZPsnHSmmjUDNRd',
  }
}
