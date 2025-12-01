# Função para calcular o IMC (Índice de Massa Corporal)
def calcular_imc(peso, altura):
    # Fórmula do IMC: peso dividido pela altura ao quadrado
    return peso / (altura ** 2)


# Solicita o peso do usuário em kg
peso = float(input('Digite seu peso em kg: '))
# Solicita a altura do usuário em metros
altura = float(input('Digite sua altura em metros: '))

# Calcula o IMC usando a função
imc = calcular_imc(peso, altura)

# Exibe o resultado formatado com duas casas decimais
print(f'Seu IMC é: {imc:.2f}')
