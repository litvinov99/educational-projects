# BiMap — Двунаправленная ассоциативная структура

`BiMap` — это C++-реализация двунаправленного отображения (`bidirectional map`), в которой каждый ключ отображается на уникальное значение и наоборот. Структура данных поддерживает быстрый поиск по ключу и по значению, а также безопасное копирование и перемещение с помощью идиомы PIMPL.

---

## 🧩 Возможности

- Вставка уникальных пар `(ключ, значение)`
- Поиск значения по ключу: `FindValue`
- Поиск ключа по значению: `FindKey`
- Безопасное копирование/перемещение с использованием PIMPL-идиомы
- Обработка исключений при вставке
- Эффективная реализация на основе `unordered_map` и `deque`

## 🔨 Технологии

- **C++17**:
  - `std::optional`, `std::string_view`, `std::unique_ptr`, `std::make_unique`
- **STL Containers**:
  - `std::unordered_map` для быстрого поиска
  - `std::deque` для стабильности ссылок (`string_view` остаётся валидным)
- **Идиома PIMPL** для инкапсуляции реализации и поддержки Rule of 5

## 🚀 Интерфейс

### Класс `BiMap`

```cpp
class BiMap {
public:
    BiMap();
    ~BiMap();

    BiMap(const BiMap& other);
    BiMap& operator=(const BiMap& other);
    BiMap(BiMap&& other);
    BiMap& operator=(BiMap&& other);

    bool Add(std::string_view key, std::string_view value);

    std::optional<std::string_view> FindValue(std::string_view key) const noexcept;
    std::optional<std::string_view> FindKey(std::string_view value) const noexcept;
};


