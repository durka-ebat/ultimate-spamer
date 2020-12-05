#!/bin/bash
clear
echo "-----Установщик-----"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH           |"
echo "| Введите 1/2/3:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pip install requests colorama random datetime smtplib getpass termcolor
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo bash install.sh)"
			exit
		else
			apt install python3 python3-pip
			pip3 install requests colorama random datetime smtplib getpass termcolor
		fi
	else
		if [ $numb = "3" ]
		then
			apk add python
			apk add python3
			pip3 install requests
			pip3 install colorama
			pip3 install random
			pip3 install datetime
			pip3 install smtplib
			pip3 install getpass
			pip3 install termcolor
		else
			echo "Некорректный ввод"
		fi
	fi
fi
