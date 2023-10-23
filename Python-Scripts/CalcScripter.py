 # author : Angel - @qx4ngel

 #VISITA MI GITHUB PARA MAS ↓
 #https://github.com/QxAngel

import math

def suma(a, b):
    return a + b

def resta(a, b):
    return a - b

def multiplicacion(a, b):
    return a * b

def division(a, b):
    if b != 0:
        return a / b
    else:
        return "No se puede dividir por cero"

def cuadrado(a):
    return a ** 2

def raiz_cuadrada(a):
    if a >= 0:
        return math.sqrt(a)
    else:
        return "No se puede calcular la raíz de un número negativo"

while True:
    print("CalcScripter By Angel")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Cuadrado")
    print("6. Raíz Cuadrada")
    print("Presione 'r' para salir")

    opcion = input("Seleccione una operación (1/2/3/4/5/6/r): ")

    if opcion == 'r':
        break
    
    if opcion in ['1', '2', '3', '4', '5', '6']:
        num1 = float(input("Ingrese el primer número: "))

        if opcion in ['1', '2', '3', '4']:
            num2 = float(input("Ingrese el segundo número: "))
            if opcion == '1':
                resultado = suma(num1, num2)
            elif opcion == '2':
                resultado = resta(num1, num2)
            elif opcion == '3':
                resultado = multiplicacion(num1, num2)
            elif opcion == '4':
                resultado = division(num1, num2)
        elif opcion == '5':
            resultado = cuadrado(num1)
        elif opcion == '6':
            resultado = raiz_cuadrada(num1)
        else:
            resultado = "Opción no válida"
        
        print("Resultado:", resultado)
    else:
        print("Opción no válida")
