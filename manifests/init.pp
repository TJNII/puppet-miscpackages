class miscpackages {
   package { ['curl',
   	      'dnsutils',
	      'emacs23-nox',
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
