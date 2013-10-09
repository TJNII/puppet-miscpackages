class miscpackages::dbclient {
  package { 'mysql-client':
      ensure => installed,
   }
}
