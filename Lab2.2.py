name = input("Введите ваше имя: ")
def describe_person(name, age = 30):
    print("Вас зовут: ", name)
    print("Ваш возраст: " , age)
describe_person(name)