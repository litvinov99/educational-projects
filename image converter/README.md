# 🖼ImgLib — Простая библиотека работы с изображениями

**ImgLib** — это кроссплатформенная C++ библиотека для загрузки, сохранения и конвертации изображений в форматах **JPEG**, **BMP** и **PPM**. Она предоставляет простой интерфейс для доступа к пикселям, поддерживает шаг строки и использует CMake для сборки с возможностью подключения внешней библиотеки **LibJPEG**.

---

## 🚀 Возможности

- Загрузка изображений в форматах **JPEG**, **BMP**, **PPM**
- Сохранение изображений в тех же форматах
- Конвертация изображений из одного формата в другой через CLI
- Унифицированный интерфейс `ImageFormatInterface` для всех форматов
- Работа с пикселями, поддержка `step` (шаг между строками)
- Проверка границ с помощью `assert`
- Подключение LibJPEG через переменную `LIBJPEG_DIR`

## Структура 
```
cpp-image-converter/
├── ImgConverter/
|   ├── CMakeLists.txt
│   └── main.cpp              # Точка входа входа и реализация логики конвертации
├── ImgLib/
|   ├── CMakeLists.txt
│   ├── bmp_image.cpp         # Реализация работы с BMP изображениями
│   ├── bmp_image.h           
│   ├── img_lib.cpp           # Реализация общих функций обработки изображений
│   ├── img_lib.h             
│   ├── jpeg_image.cpp        # Реализация работы с JPEG изображениями
│   ├── jpeg_image.h          
│   ├── ppm_image.cpp         # Реализация работы с PPM изображениями
│   ├── ppm_image.h           
│   ├── pack_defines.h        # Утилитарные макросы для упаковки данных 
└── README.md                 # ← вы здесь
```
## Логика
Принимает два аргумента командной строки — входной и выходной файлы.
Определяет формат входного и выходного файлов с помощью функции GetFormatByExtension().
Загружает изображение с помощью соответствующего интерфейса.
Сохраняет изображение в нужный формат.

- `GetFormatByExtension()` принимает путь к файлу и возвращает формат изображения (BMP, JPEG, PPM или UNKNOWN), основываясь на расширении файла.
- `ImageFormatInterface` интерфейс, который определяет два виртуальных метода:
  - `LoadImage` загружает изображение из файла.
  - `SaveImage` сохраняет изображение в файл.

Классы-реализации интерфейса:

- `PPM`: для работы с изображениями формата PPM (функции SavePPM, LoadPPM).
- `JPEG`: для работы с JPEG (функции SaveJPEG, LoadJPEG).
- `BMP`: для работы с BMP (функции SaveBMP, LoadBMP).
`GetFormatInterface()` возвращает указатель на объект, реализующий интерфейс ImageFormatInterface в зависимости от формата файла.

## Требования
- CMake 3.10+
- C++17
