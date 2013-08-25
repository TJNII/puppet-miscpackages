class miscpackages {
   package { ['curl',
   	      'dnsutils',
              'arping',
              'tcpdump',
              'telnet',
              'traceroute',
              'netcat-traditional',
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
                ensure => absent,
   }
                   
}
