#!/bin/bash

clear

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # cor nula
sleep 1
echo "";

echo "Verfificando dependências...";
sleep 1
sudo apt install curl -y -qq > /dev/null 2>&1
echo -e -n "${CYAN}Verificando curl: ${NC}";
sleep 1
echo -e  "${YELLOW}OK${NC}";
sleep 1
sudo apt install python3 -y  -qq > /dev/null 2>&1
echo -e -n "${CYAN}Verificando python: ${NC}";
sleep 1
echo -e  "${YELLOW}OK${NC}";
sleep 1
sudo apt install python-is-python3 -y -qq > /dev/null 2>&1 
echo -e -n "${CYAN}Verificando py-is-py3: ${NC}";
sleep 1
echo -e  "${YELLOW}OK${NC}";
sleep 1

chmod +x main.sh
chmod +x info.sh
chmod +x namechk.sh
chmod +x setup.sh
chmod +x ipdomain.sh

sudo ln -s "$(pwd)/main.sh" /usr/local/bin/marius

clear

sleep 1
echo -e "${BLUE} Agora digite ${NC}${YELLOW}marius${NC}${BLUE} para iniciar o serviço via bin ${NC}"
sleep 1

