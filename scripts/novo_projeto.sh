#!/bin/bash
# Script robusto para criar um novo projeto Python Labs a partir de qualquer diretório
# Uso universal: bash ~/dev/python-labs/scripts/novo_projeto.sh 01 "Nome do Projeto"

# Cores para saída
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sem cor

if [ -z "$1" ] || [ -z "$2" ]; then
    echo -e "${YELLOW}Uso: bash ~/dev/python-labs/scripts/novo_projeto.sh 01 'Nome do Projeto'${NC}"
    exit 1
fi

NUMERO="$1"
shift
NOME="$*"
NOME_FORMATADO=$(echo "$NOME" | tr ' ' '_' | tr -cd '[:alnum:]_')
LABDIR="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$LABDIR/projetos/${NUMERO}_${NOME_FORMATADO}"

# Checa se o projeto já existe
if [ -d "$DEST" ]; then
    echo -e "${RED}Erro: O projeto '$DEST' já existe. Escolha outro número ou nome.${NC}"
    exit 2
fi

# Copia o template
cp -r "$LABDIR/_template_projeto" "$DEST"
if [ $? -ne 0 ]; then
    echo -e "${RED}Erro ao copiar o template para $DEST.${NC}"
    exit 3
fi

# Personaliza o README
sed -i "1s/# Nome do Projeto/# ${NOME^}/" "$DEST/README.md"

# Cria docs e index.md
mkdir -p "$DEST/docs"
echo "# Documentação do projeto ${NOME^}" > "$DEST/docs/index.md"

echo -e "\n${GREEN}🚀 Projeto criado com sucesso em:${NC} $DEST"
echo -e "\n${YELLOW}Acesse a pasta:${NC} cd '$DEST'"
echo -e "${YELLOW}Para iniciar o ambiente, rode:${NC} poetry install"
echo -e "${YELLOW}Para ativar o ambiente, rode:${NC} poetry shell"
echo -e "${YELLOW}Para rodar testes:${NC} make test"
echo -e "${YELLOW}Para rodar lint:${NC} make lint"
echo -e "${YELLOW}Para rodar a documentação:${NC} make docs"
echo -e "\n${GREEN}Pronto para codar!${NC}"
