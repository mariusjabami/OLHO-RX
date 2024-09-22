#!/bin/bash

name=$1

while IFS= read -r url; do
      status=$(curl -s -o dev/null -w "%{http_code}" "$url/$1/")
#      echo "${status}"
     if [ $status -eq 200 ]; then


         echo -e "\033[32m${url}$1/\033[0m";


     fi

done < urls.txt
