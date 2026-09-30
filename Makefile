# Makefile

ping:
	ansible all -i inventory/inventory.ini -u vagrant -m ping

users:
	ansible-playbook playbooks/tags.yml -i inventory/inventory.ini -u vagrant -t users

packages:
	ansible-playbook -i inventory/inventory.ini -u vagrant playbooks/tags.yml -t packages
