node default {

	class { 'helloworld': }
	class { 'helloworld::motd': }

	class { 'hs_ldap_client':}

	class { 'hs_home_dirs':}

	class { 'hs_desktop':}
	class { 'hs_student_apps': }

	class { 'hs_printers': }

}
