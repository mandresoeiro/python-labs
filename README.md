# Python Labs

Laboratório de projetos Python para estudos, testes, boas práticas e documentação.

## 🚀 Como clonar este repositório

1. No terminal, clone o repositório:
   ```bash
   git clone https://github.com/mandresoeiro/python-labs.git
   cd python-labs
   ```

## ⚙️ Instalação do ambiente

2. Instale o Poetry (se ainda não tiver):
   ```bash
   pip install poetry
   ```

3. Instale as dependências do laboratório:
   ```bash
   poetry install
   ```

4. Ative o ambiente virtual do Poetry:
   ```bash
   poetry shell
   ```

<<<<<<< HEAD

=======
>>>>>>> 78c2b676501af42884598cad4bf3427bea23e356
## 🛠️ Como criar um novo projeto

5. Execute o script de criação:
   ```bash
   bash scripts/novo_projeto.sh 01 "Nome do Projeto"
   # ou escolha um template específico:
   bash scripts/novo_projeto.sh 02 "Projeto Web" --template=web
   bash scripts/novo_projeto.sh 03 "Projeto CLI" --template=cli
   bash scripts/novo_projeto.sh 04 "Projeto Data" --template=datascience
   ```
   - Substitua `01` pelo número do projeto.
   - Substitua `"Nome do Projeto"` pelo nome desejado (use aspas se houver espaços).
   - O argumento `--template=TIPO` é opcional. Se não informado, será usado o template padrão.

6. Acesse a pasta do novo projeto:
   ```bash
   cd projetos/01_Nome_do_Projeto
   ```

## 🧩 Templates disponíveis

- `_template_projeto` (padrão)
- `_template_projeto_web`
- `_template_projeto_cli`
- `_template_projeto_datascience`

Você pode personalizar qualquer template editando as pastas correspondentes na raiz do repositório. Novos projetos criados a partir de cada template herdarão sua estrutura e arquivos.

## 📦 Estrutura criada
- `01-explicacao/`: anotações e teoria
- `02-codigo/`: códigos Python
- `03-teste/`: testes automatizados
- `04-praticas/`: exercícios e práticas

## ▶️ Como rodar códigos e testes

- Para rodar um código:
  ```bash
  python 02-codigo/v1_simples.py
  ```
- Para rodar testes (pytest):
  ```bash
  pytest 03-teste/
  ```

## 📝 Documentação

- Para rodar a documentação localmente (MkDocs):
  ```bash
  poetry run mkdocs serve
  ```
- Acesse http://localhost:8000 no navegador.

## 📢 Disseminação e colaboração

- Compartilhe este laboratório com colegas e estudantes.
- Sinta-se livre para criar novos projetos, propor melhorias e enviar pull requests.
- Use a estrutura para organizar seus estudos, práticas e experimentos em Python.

---

Este laboratório é focado em aprendizado, organização e qualidade de código Python. Bom estudo!
