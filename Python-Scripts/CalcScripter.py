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

def factorial(a):
    return math.factorial(a)

def potencia(a, b):
    return a ** b

def logaritmo(a, b):
    if a > 0 and b > 0:
        return math.log(a, b)
    else:
        return "Entrada inválida para el logaritmo"

def valor_absoluto(a):
    return abs(a)

def redondeo(a, decimales):
    return round(a, decimales)

while True:
    print("CalcScripter By Angel")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Cuadrado")
    print("6. Raíz Cuadrada")
    print("7. Factorial")
    print("8. Potencia")
    print("9. Logaritmo")
    print("10. Valor Absoluto")
    print("11. Redondeo")
    print("Presione 'r' para salir")

    opcion = input("Seleccione una operación (1/2/3/4/5/6/7/8/9/10/11/r): ")

    if opcion == 'r':
        break
    
    if opcion in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11']:
        num1 = float(input("Ingrese el número: "))

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
        elif opcion == '7':
            resultado = factorial(int(num1))
        elif opcion == '8':
            num2 = float(input("Ingrese la potencia: "))
            resultado = potencia(num1, num2)
        elif opcion == '9':
            num2 = float(input("Ingrese la base del logaritmo: "))
            resultado = logaritmo(num1, num2)
        elif opcion == '10':
            resultado = valor_absoluto(num1)
        elif opcion == '11':
            decimales = int(input("Ingrese la cantidad de decimales para redondear: "))
            resultado = redondeo(num1, decimales)
        else:
            resultado = "Opción no válida"
        
        print("Resultado:", resultado)
    else:
        print("Opción no válida")
