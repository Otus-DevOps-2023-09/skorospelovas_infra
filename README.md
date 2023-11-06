# skorospelovas_infra
skorospelovas Infra repository

ДЗ №4 Деплой тестового приложения

Данные для подключения:
testapp_IP = 84.201.156.241
testapp_port = 9292

Самостоятельная работа
• Скрипт install_ruby.sh содержит команды по установке Ruby;
• Скрипт install_mongodb.sh содержит команды по установке MongoDB;
• Скрипт deploy.sh содержит команды скачивания кода, установки зависимостей через bundler и запуск приложения;
• Скрипт create-vm-reddit.sh содержит команду для автоматического развертывания с использованием cloud-config файла reddit-metadata.yaml

Дополнительное задание
Создан файл с метаданными для автоматизации деплоя приложения Monolith Reddit при помощи Cloud-init. Пример файла reddit-metadata.yaml ниже. Вместо <YOUR_PUBLIC_KEY> нужно подставить ваш публичный ключ.


ДЗ №3 Знакомство с облачной инфраструктурой Yandex.Cloud

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

