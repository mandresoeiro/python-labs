# Python Labs

Documentação principal.

## Guia Rápido: Como Criar e Começar um Novo Projeto

1. Abra o terminal e navegue até a raiz do laboratório:
   ```bash
   cd ~/dev/python-labs
   ```

2. Crie um novo projeto usando o script:
   ```bash
   bash scripts/novo_projeto.sh 01 "Nome do Projeto"
   ```
   - Substitua `01` pelo número do projeto.
   - Substitua `"Nome do Projeto"` pelo nome desejado (use aspas se houver espaços).

3. Acesse a pasta do novo projeto:
   ```bash
   cd projetos/01_Nome_do_Projeto
   ```

4. Estrutura criada:
   - `01-explicacao/`: anotações e teoria
   - `02-codigo/`: códigos Python
   - `03-teste/`: testes automatizados
   - `04-praticas/`: exercícios e práticas

5. Para rodar um código:
   ```bash
   python 02-codigo/v1_simples.py
   ```

6. Para rodar testes (se usar pytest):
   ```bash
   pytest 03-teste/
   ```

7. Edite, documente e evolua seu projeto!