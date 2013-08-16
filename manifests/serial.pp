class miscpackages::serial {
   package { ['minicom',
#   	      'putty',
#	      'xauth',
              ]:
      ensure => installed,
   }
}
