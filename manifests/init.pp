class miscpackages {
  case $operatingsystem {
    debian, ubuntu: {
      package { ['dnsutils',
                 'arping',
                 'netcat-traditional',
                 ]:
                   ensure => installed,
      }
    }
    redhat, cent: {
      package { ['bind-utils',
                 'iputils',
                 'nc',
                 ]:
                   ensure => installed,
      }
    }
  }
    
  package { ['curl',
             'tcpdump',
             'telnet',
             'traceroute',
             'pciutils',
             'usbutils',
             'strace',
             ]:
               ensure => installed,
  }
  
  # Packages that cause problems
  package { ['mpt-status',
             'bash-completion',
             ]:
               ensure => purged,
  }
  
}
