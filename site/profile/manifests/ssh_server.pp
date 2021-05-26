class profile::ssh_server {
   package {'openssh-server':
           ensure => present,
   }
   service { 'sshd':
           ensure => 'running',
           enable => 'true',
   }
   ssh_authorized_keys { 'root@master.puppet.vm':
           ensure => present,
           user   => 'root',
           type   => 'ssh-rsa',
           key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDlEPmNysavd60oX+OwE1tX5cb1ky2aRGTiM5bteoo3rx1x28fhh5REvAcef3/WSuzCX6ZK4VFszobsPxs08xH1BqbCnKM3pfn8yGdqE4vuYnN9kL5HzXTfSxNJLiAjor4m81aeNKZCZj6YwTMfRtTczcCDYBfO7Gz6DgjRyS5fC6L+HVxZuQcg7WM3s1Aa11XFblRdHWfMsD7VALCtc6MBAKB8uG9vhKazafHEnVWTuRhJynEazDg+YAD6yCdsv81kGKRz/B13bE1gR1UBSVvabWMQeEoTrdASdLBRwJBwymk6WAY9P+jzlUJS0+UYrMzBhP7+ob7NEKnAV6l4DVwP root@master.puppet.vm'
   }
}
           
