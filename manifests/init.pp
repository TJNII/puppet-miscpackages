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

   package { ['mpt-status',
              ]:
                ensure => absent,
   }
                   
}
