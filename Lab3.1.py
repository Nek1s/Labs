choise = input("all or line")
def read_file(file_name, read_mode='all'):
    try:
        with open(file_name, 'r') as file:
            if read_mode == 'all':
                content = file.read()
                print(content)
            elif read_mode == 'line':
                for line in file:
                    print(line.strip())
            else:
                print("Неверный режим чтения. Используйте 'all' или 'line'.")
    except FileNotFoundError:
        print(f"Файл {file_name} не найден.")

read_file('example.txt', choise)
