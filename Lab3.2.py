user_text = input("Введите текст для сохранения в файл user_input.txt: ")

with open('user_input.txt', 'a') as file:
    file.write(user_text + '\n')

print("Текст был успешно добавлен в файл user_input.txt.")