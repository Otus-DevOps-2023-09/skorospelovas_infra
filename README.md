# skorospelovas_infra
skorospelovas Infra repository

ДЗ #3. Знакомство с облачной инфраструктурой Yandex.Cloud
Все основные и дополнительные пункты выполнены.

bastion_IP = 84.201.132.201
someinternalhost_IP = 10.128.0.11

Для подключения к хосту someinternalhost при помощи одной команды необходимо ввести:
ssh -i ~/.ssh/id_ed25519 -J appuser@84.201.132.201 appuser@10.128.0.11

Для подключения к хосту someinternalhost по команде "ssh someinternalhost", необходимо в файле ~/.ssh/config добавить строки:
Host someinternalhost
    ProxyJump appuser@84.201.132.201
    HostName 10.128.0.11
    User appuser
    IdentityFile ~/.ssh/id_ed25519

Подключение к консоли настройки Pitunl настроен доступ по имени https://84.201.132.201.nip.io/ с использованием LetsEncrypt 

