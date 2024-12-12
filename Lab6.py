# Задание 1: Класс UserAccount
class UserAccount:
    def __init__(self, username, email, password):
        self.username = username
        self.email = email
        self.__password = hash(password)
    def set_password(self, new_password):
        self.__password = hash(new_password)
    def check_password(self, password):
        return self.__password == hash(password)

user = UserAccount("john_doe", "john@example.com", "12345")

print(user.check_password("12345"))
user.set_password("new_password")
print(user.check_password("12345"))
print(user.check_password("new_password"))

# Задание 2: Полиморфизм и наследование
class Vehicle:
    def __init__(self, make, model):
        self.make = make
        self.model = model
    def get_info(self):
        return f"Марка: {self.make}, Модель: {self.model}"
class Car(Vehicle):
    def __init__(self, make, model, fuel_type):
        super().__init__(make, model)
        self.fuel_type = fuel_type
    def get_info(self):
        return f"Марка: {self.make}, Модель: {self.model}, Тип топлива: {self.fuel_type}"

vehicle = Vehicle("Toyota", "Corolla")
print(vehicle.get_info())

car = Car("Tesla", "Model S", "Электричество")
print(car.get_info())
