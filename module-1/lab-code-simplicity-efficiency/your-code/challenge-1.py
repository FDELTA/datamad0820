"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

#Sólo hace falta poner un "\n" para hacer el salto de línea, no hay necesitad de hacer un segundo print.

print('Welcome to this calculator!\nIt can add an substract whole numbers from 0 to 5')
#print('It can add and subtract whole numbers from zero to five')

#El código entero era muy ineficiente ya que repetía todos los if y había que meter a mano cada una de las posibilidades
#esto era factible ya que no había muchas combinaciones, había que buscar una manera más fácil, es la siguiente:

#Aquí se define un número máximo como 'top_number' y se crea el diccionario resultados.
top_number = 5
results = {}
for a in range(top_number + 1):
    for sign in ['+', '-']:
        for b in range(top_number + 1):
            expression = str(a) + sign + str(b)
#aquí es donde se puede aportar mucho valor con eval, función a la que la pasas una expresión y la ejecuta/parsea con los argumentos introducidos
            results[expression] = str(eval(expression))

first_number = input('Please choose your first number (0 to 5): ')
sign = input('What do you want to do? + or -: ')
second_number = input('Please choose your second number (0 to 5): ')

if int(first_number) > top_number or int(second_number) > top_number:
    print("I am not able to answer this question. Check your input.")
else:
    expression = first_number + sign + second_number
    print(expression + ' = ' + results[expression])
    
print("Thanks for using this calculator, goodbye :)")
