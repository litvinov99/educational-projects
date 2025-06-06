## Хэш-таблица

Класс `HashMap` реализует хеш-таблицу с цепочечным хешированием. Добавление пар "ключ-значение" выполняется методом `insert(key, value)`, поиск значения по ключу - методом `get(key)`, а удаление - методом `remove(key)`. Внутри используется динамически расширяемый массив списков (цепочек), в которых хранятся элементы с одинаковым хешем.

## Доказательство корректности
1. Хеш-таблица корректно распределяет элементы с помощью хеш-функции на основе MurmurHash.
2. Коллизии разрешаются методом цепочек, каждый бакет содержит односвязный список элементов.
3. При превышении порога заполненности (FILL_FACTOR = 90) выполняется рехеширование в новый массив большего размера, где размер выбирается как следующее простое число.
4. Операции вставки, поиска и удаления элементов работают в среднем за O(1) при равномерном распределении элементов.

## Временная сложность
Добавление элемента insert():
- вычисление хеш-функции O(1);
- вставка элемента в начало списка O(1);
- в худшем случае (все элементы в одном бакете) O(N);
- рехеширование в случае превышения FILL_FACTOR выполняется за O(N);
- Итоговая сложность в среднем случае O(1), в худшем - O(N).

Поиск элемента get():
- вычисление хеш-функции O(1);
- поиск элемента в списке в среднем случае O(1), в худшем - O(N);
- Итоговая сложность в среднем случае O(1) , в худшем - O(N).

Удаление элемента remove():
- вычисление хеш-функции O(1);
- поиск и удаление из списка в среднем случае O(1), в худшем - O(N);
- Итоговая сложность в среднем случае O(1), в худшем - O(N).

## Пространственная сложность
* Хранение массива бакетов O(N);
* В худшем случае, если все элементы попадают в один бакет, пространство может 
достигать O(N);
* при увеличении размера массива после рехеширования дополнительная память O(N);
  
Итоговая сложность: O(N).

## Пример использования
Ввод:
```MARKDOWN
10
get 1
put 1 10
put 2 4
get 1
get 2
delete 2
get 2
put 1 5
get 1
delete 2
```
Вывод:
```MARKDOWN
None
10
4
4
None
5
None
```
