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
    redhat, centos: {
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
             'zip',
             'unzip',
             'wget',
             'nano',
             'ethtool',
             'nmap',
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
