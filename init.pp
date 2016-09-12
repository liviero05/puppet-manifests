class ntp {

	package {'ntp':
	ensure => installed,
	ensure => latest,
	}
	
	service {'ntp-service':
	name => ntpd,
	ensure => running,
	enable => true,
	require => package['ntp'],
	}
	  }


