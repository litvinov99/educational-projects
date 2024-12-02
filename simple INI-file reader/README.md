### Простая библиотека для чтения INI-файлов
ini-файл состоит из секций. Секция имеет имя и содержит пары строк — ключ, значение. Секция задаётся типом `Section`, являющимся псевдонимом для `unordered_map<string, string>`. Класс `Document` и функция `Load(...)` определяет работу библиотеки.

Библиотека поддерживает предачу в поток ввода следующего вида:
```ini
[http]
port =8 080
username = httpuser
[database]
driverclass = com.mysql.jdbc.Driver
dbName = mydatabase
port = 3306
username = root
[email]
admin = admin@test.com
support = support@test.com
```
Функция `Load(...)`, читает ini-файл из потока и возвращает объект класса `Document`.

В классе `Document` реализованы:
* метод `AddSection(...)`, который добавляет секцию с указанным именем и возвращает ссылку на неё;
* метод `GetSection(...)`, возвращающий секцию по имени (в случае пустой/несуществующей секции возвращает пустой словарь);
* метод `GetSectionCount()`, возвращающий количество секций в ini-файле (в том числе пустые секции).
      