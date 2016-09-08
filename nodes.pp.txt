node 'client1.ranger.com'{
	package {'httpd':
		ensure => present,
		}
	service {'httpd':
		ensure => running,
		enable => true,
		require => package ['httpd'],
		}
}
node 'client2.ranger.com'{
	package {'tomcat7':
		ensure => present,
		}
	service {'tomcat7':
		ensure => running,
		enable => true,
		require => package ['tomcat7'],
		}
}	