#!/bin/bash

# 1. Добавить репозиторий sid
echo "Добавляем репозиторий sid..."
echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list

# 2. Обновить пакеты
echo "Выполняем apt-get update..."
apt-get update

# 3. Установить libc6-dev и libc6-dbg из sid
echo "Устанавливаем libc6-dev и libc6-dbg из sid..."
DEBIAN_FRONTEND=noninteractive apt-get -t sid install libc6-dev libc6-dbg -y

# 4. Закомментировать bullseye репозиторий
echo "Комментируем bullseye репозиторий..."
sed -i 's|^deb http://deb.debian.org/debian/ bullseye main|#deb http://deb.debian.org/debian/ bullseye main|' /etc/apt/sources.list

# 5. Изменить пароль пользователя root
echo "Меняем пароль root..."
echo "root:Hebu0010203" | chpasswd

# 6. Перезагрузка сервера
echo "Перезагрузка сервера через 5 секунд..."
sleep 5
reboot
