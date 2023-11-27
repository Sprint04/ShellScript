#!/bin/bash
	
echo  "$(tput setaf 93)[Bot assistant]:$(tput setaf 11) Olá, sou o Trackware installer assistant, e serei seu assistente para instalação do Sistema!;"
echo  "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Verificando se você possui o Java instalado...;"
sleep 3

java -version
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11) : Você já tem o java instalado!"
	else
		echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Não encontrei nenhuma versão do Java instalado no seu dispositivo!"
		echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Você deseja instalar o Java (S/N)?"
	read resposta
	if [ \"$resposta\" == \"S\" ]
		then
			echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Ok! Vamos instalar o java!!"
			sleep 3
			clear
			echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Atualizando!"
			sleep 3
			sudo apt update -y
			clear
			
			if [ $VERSAO -eq 17 ]
				then
					echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11) Preparando para instalar a versão 17 do Java. Por favor, confirme a instalação quando solicitado"
					sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
					clear
					echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11) Sucesso ao instalar Java!!"
				fi
		else 	
		echo "$(tput setaf 93)[Bot assistant]:$(tput setaf 11)  Você não quis instalar o Java agora, até a proxima!"
	fi
fi