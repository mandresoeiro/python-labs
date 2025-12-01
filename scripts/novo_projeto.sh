#!/bin/bash
# Script robusto para criar um novo projeto Python Labs a partir de qualquer diretório
<<<<<<< HEAD
# Uso universal:
#   bash ~/dev/python-labs/scripts/novo_projeto.sh 01 "Nome do Projeto" [--template=web|cli|datascience]

# Cores para saída
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sem cor
=======
# Uso universal: bash ~/dev/python-labs/scripts/novo_projeto.sh 01 "Nome do Projeto"
>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356

# Cores para saída
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sem cor

<<<<<<< HEAD
# Argumentos: numero, nome, [--template=tipo]
if [ -z "$1" ] || [ -z "$2" ]; then
    echo -e "${YELLOW}Uso: bash ~/dev/python-labs/scripts/novo_projeto.sh 01 'Nome do Projeto' [--template=web|cli|datascience]${NC}"
=======
if [ -z "$1" ] || [ -z "$2" ]; then
    echo -e "${YELLOW}Uso: bash ~/dev/python-labs/scripts/novo_projeto.sh 01 'Nome do Projeto'${NC}"
>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356
    exit 1
fi

NUMERO="$1"
shift
<<<<<<< HEAD

# Detecta argumento opcional --template=TIPO
TEMPLATE="_template_projeto"
for arg in "$@"; do
    case $arg in
        --template=*)
            TIPO="${arg#*=}"
            shift
            ;;
    esac
done

# Junta o nome (ignorando --template)
NOME=""
for arg in "$@"; do
    if [[ $arg != --template=* ]]; then
        NOME+="$arg "
    fi
done
NOME=$(echo "$NOME" | sed 's/ *$//')
NOME_FORMATADO=$(echo "$NOME" | tr ' ' '_' | tr -cd '[:alnum:]_')
LABDIR="$(cd "$(dirname "$0")/.." && pwd)"

# Define template
if [ -n "$TIPO" ]; then
    TEMPLATE="_template_projeto_${TIPO}"
fi

TEMPLATE_PATH="$LABDIR/$TEMPLATE"
DEST="$LABDIR/projetos/${NUMERO}_${NOME_FORMATADO}"


# Checa se o projeto já existe
if [ -d "$DEST" ]; then
    echo -e "${RED}Erro: O projeto '$DEST' já existe. Escolha outro número ou nome.${NC}"
    exit 2
fi

# Checa se o template existe
if [ ! -d "$TEMPLATE_PATH" ]; then
    echo -e "${RED}Template '$TEMPLATE_PATH' não encontrado!${NC}"
    exit 3
fi

# Copia o template
cp -r "$TEMPLATE_PATH" "$DEST"
if [ $? -ne 0 ]; then
    echo -e "${RED}Erro ao copiar o template para $DEST.${NC}"
    exit 4
fi


# Personaliza o README
sed -i "1s/# Nome do Projeto/# ${NOME^}/" "$DEST/README.md" 2>/dev/null

echo "# Documentação do projeto ${NOME^}" > "$DEST/docs/index.md"

=======
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

>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356
# Cria docs e index.md
mkdir -p "$DEST/docs"
echo "# Documentação do projeto ${NOME^}" > "$DEST/docs/index.md"

echo -e "\n${GREEN}🚀 Projeto criado com sucesso em:${NC} $DEST"
<<<<<<< HEAD
echo -e "${YELLOW}Template usado:${NC} $TEMPLATE_PATH"
=======
>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356
echo -e "\n${YELLOW}Acesse a pasta:${NC} cd '$DEST'"
echo -e "${YELLOW}Para iniciar o ambiente, rode:${NC} poetry install"
echo -e "${YELLOW}Para ativar o ambiente, rode:${NC} poetry shell"
echo -e "${YELLOW}Para rodar testes:${NC} make test"
echo -e "${YELLOW}Para rodar lint:${NC} make lint"
echo -e "${YELLOW}Para rodar a documentação:${NC} make docs"
<<<<<<< HEAD
echo -e "\n${GREEN}Pronto para codar!${NC}"
=======
echo -e "\n${GREEN}Pronto para codar!${NC}"
>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356
