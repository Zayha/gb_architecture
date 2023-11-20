| № | Действие | Метод | Ожидаемый результат | Фактический результат | Оценка |
|---|----------|-------|----------------------|-----------------------|--------|
| 1 | Аутентификация пользователя через Client с передачей username и password на Server | `authenticate(username, password)` | Получение токена Token | - | - |
| 2 | Получение Refresh Token от Server после успешной аутентификации | - | Получение Refresh Token | - | - |
| 3 | Получение Access Token через Client с использованием Refresh Token и User | `getAccessTokenFromServer(user, refreshToken)` | Получение валидного Access Token | - | - |
| 4 | Проверка валидности Access Token на Server через AccessManager | `verifyToken(token)` | Подтверждение валидности токена | - | - |
| 5 | Запрос данных ресурса через Server с использованием Token | `getResourceData(token)` | Получение данных ресурса | - | - |
| 6 | Проверка доступности и корректности полученных данных от ResourceService | - | Верные данные ресурса | - | - |
| 7 | Получение ресурсной информации от Server после успешной авторизации | - | Получение ресурсной информации | - | - |
| 8 | Получение Key из AccessRepo через AccessController и AccessManager для пользователя | `getKey(username)` | Получение Key | - | - |
| 9 | Хранение Token в AccessRepo через AccessManager | `storeToken(token)` | Успешное сохранение Token | - | - |
| 10 | Проверка токена, переданного через JWT от Client на Server через AccessManager | - | Верный результат проверки токена | - | - |
