# Recipes App

Приложение для поиска, фильтрации и просмотра рецептов с поддержкой офлайн-режима.

## Описание
- Поиск рецептов по названию и по ингредиентам (ingredients_one и ingredients_two).
- Фильтрация по:
    - Типу изображения (withImage, withoutImage).
    - Времени приготовления (maxMinutes).
- Поддержка офлайн-режима с использованием локального кэша.
- Анимация карточек рецептов при отображении.
- Темная и светлая тема.

## Структура проекта
- Data/Models/ – модели данных (Рецепты, ингредиенты, шаги, пищевая ценность).
- Data/Repositories/ – репозитории для работы с API и локальным хранилищем.
- Presentation/Bloc/ – кубиты для управления состоянием:
    - RecipesCubit – загрузка рецептов.
    - SearchCubit – состояние поискового запроса.
    - FilterCubit – фильтры по изображению и времени.
    - RecipesFilterCubit – комбинированная фильтрация по поиску и фильтрам.
- Presentation/Widgets/ – UI компоненты (списки рецептов, карточки, индикаторы загрузки).

### Архитектура
- State Management: Bloc/Cubit (flutter_bloc)
- DI: GetIt (get_it)
- Networking: Dio (dio)
- Models: Freezed + json_serializable
- Кэширование изображений: cached_network_image

### Зависимости
Проект использует следующие пакеты:
```yaml
# Routing
go_router: ^17.0.0               # Для навигации между экранами
get_it: ^9.0.5                   # DI / сервис локатор

# Storage
shared_preferences: ^2.5.3       # Для хранения настроек пользователя
cached_network_image: ^3.4.1     # Кэширование изображений

# Models
freezed_annotation: ^3.1.0       # Генерация неизменяемых моделей
json_annotation: ^4.9.0          # Сериализация JSON

# Networking
dio: ^5.9.0                      # HTTP клиент для работы с API
```

## API
Используется сторонний API для получения списка рецептов (RecipesApi).

Поля рецептов:

    title – название рецепта.
    prepTime – время приготовления.
    image – ссылка на изображение.
    ingredientsOne и ingredientsTwo – списки ингредиентов.
    energy - пищевая ценность (Б\Ж\У\К).
    steps - шаги приготовления.

В случае недоступности API используется локальный кэш (RecipesStorage).

## Ограничения
- Нет аутентификации и пользовательских профилей.
- Lazy loading реализован только на клиенте, серверная пагинация отсутствует.
- Offline доступ только к ранее загруженным данным.

## Навигация
Используется go_router для маршрутизации между экранами приложения:

-   / – список рецептов.
-   /recipe/:id – детальный экран рецепта.
  



<img src="https://github.com/user-attachments/assets/2d33ff6d-cb6a-467b-9a8f-2c076113ced0" width="240" height="600">
<img src="https://github.com/user-attachments/assets/d9fc194a-7ab3-4ff1-9e98-2cb2ddead40d" width="240" height="460">
