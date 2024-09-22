#!/bin/bash



status=$(curl -s -o dev/null -w "%{http_code}" $1)
if [ $status -eq 200 ]; then

   echo "Conexão estabelecida!";

fi
