#!/bin/bash

NUMERO=$1
NOME=$2
DEST="../projetos/${NUMERO}_${NOME}"

if [ -z "$NUMERO" ] || [ -z "$NOME" ]; then
    echo "Uso: ./novo_projeto.sh 01 nome_do_projeto"
    exit 1
fi

cp -r ../projetos/template "$DEST"

sed -i "1s/# Nome do Projeto/# ${NOME^}/" "$DEST/README.md"

echo "Projeto criado em: $DEST"
