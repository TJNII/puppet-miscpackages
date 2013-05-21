class miscpackages {
   package { ['curl',
   	      'dnsutils',
	      'emacs23-nox']:
      ensure => installed,
   }
}
