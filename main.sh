#!/bin/bash

clear

# cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # cor nula

# minha apresentacao
echo -e "${CYAN}=====================================${NC}"
echo -e "${GREEN}  Olá, sou ${YELLOW}Marius Jabami${NC},"
echo -e "${GREEN}  Programador e Pentester Solo${NC}."
echo -e "${GREEN}  Tenho ${YELLOW}16 anos${NC}."
echo -e "${CYAN}=====================================${NC}"


sleep 1
echo -e "${BLUE}Bem-vindo ao meu projeto!${NC}"
sleep 1
echo -e "${BLUE}Leia o arquivo README! ${NC}"

echo  ""

echo -e "${GREEN}[1] Redes Sociais ${NC}"
echo -e "${GREEN}[2] Indereços de identidade (IPS) ${NC}"
echo -e "${GREEN}[3] EXTRA ${NC}"
echo -e "${GREEN}[4] Info ${NC}"

echo "";

echo -n ">> ";
read choice

if [ $choice -eq 1 ]; then

     ./namechk.sh

elif [ $choice -eq 2 ]; then

     ./ipdomain.sh


elif [ $choice -eq 3 ]; then

     ./extra.h


elif [ $choice -eq 4 ]; then

     ./info.sh     

fi

