## Шаблонный контейнер SimpleVector  
Контейнер `SimpleVector` упрощенный аналог шаблонного контейнера `std::vector`.  
Для контейнера написана обёртка указателя `ArrayPtr`. Используется идиома RAII.

### Контейнер поддерживает следующие виды инициализации:
- `SimpleVector(size, value)` создаёт вектор из `size` элементов, инициализированных значением `value`;
- `SimpleVector(size)` создаёт вектор из `size` элементов, инициализированных значением по умолчанию;
- `SimpleVector({value1, value2, ...})` конструирование вектора на основе `std::initializer_list`;
- `SimpleVector(Reserve(capacity))` конструирование вектора с заданной емкостью `capacity`.
  
### Для работы с содержимым контейнер поддерживает модификаторы:
- метод `PushBack(...)`, добавляющий элемент в конец вектора (strong exception safety);
- метод `PopBack()`, удаляющий последний элемент вектора;
- метод `Insert(...)`, вставляющий элемент в произвольное место контейнера (strong exception safety);
- метод `Erase(...)`, удаляющий элемент в произвольной позиции вектора (base exception safety);
- метод `swap()` для обмен содержимого двух векторов.
  
Для контейнера также реализованы операции сравнения `==`, `!=`, `<`, `>`, `<=`, `>=`.
  
### Для доступа к элементам контейнер поддерживает:
- оператор `[]` для доступа к элементу вектора по его индексу;
- метод `At(...)` для доступа к элементу вектора по его индексу.
  
### Для работы с емкостью и размером контейнер поддерживает:
- метод `GetSize()` возвращает количество элементов в списке;
- метод `GetCapacity()` возвращает вместимость вектора;
- метод `IsEmpty()`, сообщает пуст ли вектор;
- метод `Clear()` очищает массива без изменения его вместимости;
- метод `Resize(...)` изменяет количество элементов в массиве (strong exception safety).




