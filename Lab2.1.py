name = input("Напишиет ваше имя: ")
def greet(name):
    print("Привет ", name)
greet(name)
number = int(input("Введите число: "))
def square(number):
    print(number * number)
square(number)
number1 = int(input("Введите первое число: "))
number2 = int(input("Введите второе число: "))
def max_of_two(x, y):
    if x > y:
        print("Наибольшое ", x)
    else:
        print("Наибольшое ", y)
max_of_two(number1, number2)