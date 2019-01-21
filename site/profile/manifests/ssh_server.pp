class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjqG95AhhB0DC2+QsfVxYOCGL6ZsD6tOiz1k2VesFMVnc00u1VC9Wy6ABX7xViTuJxsmrgbnWUEllDWJ/RC2MTgv04MB9OsO3gKg+Cv89x/5OxIgomACPwWMJ1x45J9ZVkgvumZKwoFxkzJ4huX78c/NaL+XwXLh0edrTaB5ukp4dEaiYZKnVXJkzOQW+xWouJQSFekRvL6IxyT9xEHXtf1X/6hzF4gFQQXZnfY+DJrOlAx363HwEb7bbBKZ5yJgU6Z5Rt0CWve5wY02hdeypXNvUFIKThHzJk4qbiwtsgeXNbWHT9VNjhQy7g0aetszvmb2q37R4FHzMhezSugEXl',
	}  
}
