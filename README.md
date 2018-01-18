[![Codacy Badge](https://api.codacy.com/project/badge/Grade/80c9d999f73a4fec9d8c3eb19438b1d1)](https://www.codacy.com/app/chumakig86/topjava?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=chumakig86/topjava&amp;utm_campaign=Badge_Grade)

## ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) Домашнее задание HW10
- 1: Сделать валидацию в AdminAjaxController/MealAjaxController через `ExceptionInfoHandler`. Вернуть клиенту `ErrorInfo` и статус `HttpStatus.UNPROCESSABLE_ENTITY` (тип методов контроллеров вернуть обратно на `void`).
- 2: Сделать валидацию принимаемых json объектов в REST контроллерах через `ExceptionInfoHandler`. Добавить в Rest контроллеры тест для невалидных данных.
  - <a href="https://dzone.com/articles/spring-31-valid-requestbody">@Valid @RequestBody + Error handling</a>
- 3: Сделать обработку ошибки при дублирования email ("User with this email already exists") для: 
  - 3.1 регистрации / редактирования профиля пользователя
    - <a href="http://www.mkyong.com/spring-mvc/spring-mvc-form-handling-example/">Spring MVC form handling example</a>
  - 3.2 добавления / редактирования пользователя в таблице
  - 3.3 REST контроллеров

#### Optional
- 4: Сделать обработку ошибки при дублирования dateTime еды. Сделать тесты на дублирование email и dateTime.
  - [Тесты на DB exception c @Transactional](http://stackoverflow.com/questions/37406714)
  - [Сheck String in response body with mockMvc](https://stackoverflow.com/questions/18336277/how-to-check-string-in-response-body-with-mockmvc)
- 5: Сделать в приложении выбор локали (см. http://topjava.herokuapp.com/)
  -  <a href="http://www.mkyong.com/spring-mvc/spring-mvc-internationalization-example">Spring MVC internationalization sample</a>
  -  <a href="http://www.concretepage.com/spring-4/spring-4-mvc-internationalization-i18n-and-localization-l10n-annotation-example">Spring 4 MVC Internationalization</a>
- 6: Починить UTF-8 в редактировании профиля и регистрации (если кодировка по умолчанию у вас не UTF-8). Подумайте, почему кодировка поломалась.

