def calcular_imc(peso, altura):
    return peso / (altura ** 2)

def test_calcular_imc():
    assert round(calcular_imc(70, 1.75), 2) == 22.86