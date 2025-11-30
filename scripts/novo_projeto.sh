#!/bin/bash


NUMERO=$1
shift
NOME="$*"
NOME_FORMATADO=$(echo "$NOME" | tr ' ' '_')
DEST=../projetos/${NUMERO}_${NOME_FORMATADO}

if [ -z "$NUMERO" ] || [ -z "$NOME" ]; then
    echo "Uso: ./novo_projeto.sh 01 \"nome do projeto\""
    exit 1
fi

cp -r ../_template_projeto "$DEST"

sed -i "1s/# Nome do Projeto/# ${NOME^}/" "$DEST/README.md"

mkdir -p "$DEST/docs"
echo "# Documentação do projeto ${NOME^}" > "$DEST/docs/index.md"

echo "🚀 Projeto criado em: $DEST"