# Задание 1: Класс Book
class Book:
    def __init__(self, title, author, year):
        self.title = title
        self.author = author
        self.year = year
    def get_info(self):
        return f"Название книги: {self.title}, Автор: {self.author}, Год издания: {self.year}"

book = Book("Программирование на Python", "Марк Лутц", 2019)
print(book.get_info())

# Задание 2: Класс Circle
class Circle:
    def __init__(self, radius):
        self.radius = radius
    def get_radius(self):
        return self.radius
    def set_radius(self, new_radius):
        self.radius = new_radius

circle = Circle(5)  # Создаем объект с радиусом 5
print(f"Изначальный радиус: {circle.get_radius()}")

circle.set_radius(10)  # Меняем радиус на 10
print(f"Новый радиус: {circle.get_radius()}")
