#!/bin/bash

name=$1

while IFS= read -r url; do
      status=$(curl -s -o dev/null -w "%{http_code}" "$url/$1/")
#      echo "${status}"
     if [ $status -ge 200 ] && [ $status -le 226  ]; then


         echo -e "\033[32m${url}$1/\033[0m ${status}";
    
     fi

     if [ $status -ge 300 ] && [ $status -le 308 ]; then

        echo -e "\033[35m${url}$1/\033[0m ${status}";

     fi


done < urls.txt
