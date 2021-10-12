roles:
	ansible-galaxy role install -r requirements.yml

collections:
	ansible-galaxy collection install -r requirements.yml

encrypt:
	ansible-vault encrypt --vault-password-file vault-password group_vars/webservers/vault.yml

decrypt:
	ansible-vault decrypt --vault-password-file vault-password group_vars/webservers/vault.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file vault-password
