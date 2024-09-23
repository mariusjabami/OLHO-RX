#!/bin/bash
clear

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # cor nula




echo -e  "${RED} NÃO CONFUNDA USERNAME, COM NOME DA CONTA!${NC}"
echo "";
echo -n -e "${GREEN}POR FAVOR DIGITE O NOME: ${NC}";

read name

echo "";

while IFS= read -r url; do
      status=$(curl -s -o dev/null -w "%{http_code}" "$url/$name/") 
#      echo "${status}"
     if [ $status -ge 200 ] && [ $status -le 226  ]; then


         echo -e "\033[32m${url}$name/\033[0m ${status}";
    
     fi

     if [ $status -ge 300 ] && [ $status -le 308 ]; then

        echo -e "\033[35m${url}$name/\033[0m ${status}";

     fi
  
     if [ $status -ge 400 ] && [ $status -le 499 ]; then

       echo -e "\033[31m${url}$name/\033[31m ${status}";  

     fi
done < urls.txt 

echo "";

echo -e "${RED}ANTES DE AVANÇAR POR FAVOR COPIE TODOS OS LINKS!${NC}";

echo "";

echo -e "${BLUE} digite 'v' para voltar ao menu e 's' para sair ${NC}";

echo -n ">> ";
read choice

if [ $choice = "s" ]; then

     exit 1      

elif [ $choice =  "v" ]; then

     ./main.sh

fi
