#!/bin/bash
sleep 1
clear

# cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # cor nula


# Função para mostrar informações de contato
show_info() {
    echo -e "${CYAN}=====================================${NC}"
    echo -e "${GREEN}             Informações             ${NC}"
    echo -e "${CYAN}=====================================${NC}"
    sleep 1 
    echo -e "${YELLOW}Contatos:${NC}"
    sleep 1
    echo -e "WhatsApp: ${BLUE}+244951932611${NC}"
    sleep 1
    echo -e "Email: ${BLUE}mariusjabami@gmail.com${NC}"
    sleep 1
    echo -e "Instagram: ${BLUE}mariusjabami${NC}"
    sleep 1
    echo -e "Twitter: ${BLUE}mariusjabami${NC}"
    sleep 1
    echo -e "Telegram: ${BLUE}mariussjabami${NC}"

    echo -e "${GREEN}=====================================${NC}"
    echo -e "${YELLOW}Descrição do Projeto:${NC}"
    echo -e "Um projeto feito em tempos livres por diversão,"
    echo -e "uma versão beta de um projeto ainda maior."
    echo -e "${CYAN}=====================================${NC}"
}

# Chame a função
show_info

echo "";

echo -e "${BLUE} digite 'v' para voltar ao menu e 's' para sair ${NC}";

echo -n ">> ";

read choice

if [ $choice = "s" ]; then

     exit 1

elif [ $choice =  "v" ]; then

     ./main.sh

fi
