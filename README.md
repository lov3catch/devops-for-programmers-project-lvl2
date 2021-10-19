### Hexlet tests and linter status:
[![Actions Status](https://github.com/lov3catch/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/lov3catch/devops-for-programmers-project-lvl2/actions)

Системные требования:

Хост:
- Linux/macos
- Ansible 2.11+
- Make

Сервера:
- Ubuntu 20.04

1. Введите корректный пароль от БД и Datadog API key в файл секретов: `group_vars/webservers/vault.yml`


2. Создайте файл с паролем от секретов Ansible
> touch vault-password

3. Введите пароль в файл
> echo my-example-password >> vault-password

4. Зашифруйте секреты
> make encrypt

5. Запустите деплой
> make deploy

6. (Опционально) Если необходимо изменить секреты - расшифруйте его, измените и зашифруйте обратно.
> make decrypt // расшифровать секреты
> 
> make encrypt // зашифровать секреты