class miscpackages {
   package { ['curl',
   	      'dnsutils',
	      'emacs23-nox',
              'arping',
              'tcpdump',
              'netcat-traditional',]:
      ensure => installed,
   }
}
