[![Codacy Badge](https://api.codacy.com/project/badge/Grade/80c9d999f73a4fec9d8c3eb19438b1d1)](https://www.codacy.com/app/chumakig86/topjava?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=chumakig86/topjava&amp;utm_campaign=Badge_Grade)

## ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) Домашнее задание HW07

- 1: Добавить тесты контроллеров:
  - 1.1 `RootControllerTest.testMeals` для `meals.jsp`
  - 1.2 `ResourceControllerTest` для `style.css` (проверить status и ContentType)
- 2: Реализовать `MealRestController` и протестировать его через `MealRestControllerTest`
  - 2.1 cледите чтобы url в тестах совпадал с параметрами в методе контроллера. Можно добавить логирование `<logger name="org.springframework.web" level="debug"/>` для проверки маршрутизации.
  - 2.2 в параметрах `getBetween` принимать `LocalDateTime` (конвертировать через <a href="http://blog.codeleak.pl/2014/06/spring-4-datetimeformat-with-java-8.html">@DATETIMEFORMAT WITH JAVA 8 DATE-TIME API</a>), а передавать в тестах в формате `ISO_LOCAL_DATE_TIME` (например `'2011-12-03T10:15:30'`). Вызывать `super.getBetween()` пока без проверки на `null`, используя `toLocalDate()/toLocalTime()` (см. Optional п.3)

#### Optional
- 3: Переделать `MealRestController.getBetween` на параметры `LocalDate/LocalTime` c раздельной фильтрацией по времени/дате, работающий при `null` значениях (см. демо и `JspMealController.getBetween`). Заменить `@DateTimeFormat` на свои LocalDate/LocalTime конверторы или форматтеры.
  -  <a href="https://docs.spring.io/spring/docs/current/spring-framework-reference/html/validation.html#core-convert">Spring Type Conversion</a>
  -  <a href="https://docs.spring.io/spring/docs/current/spring-framework-reference/html/validation.html#format">Spring Field Formatting</a>
  -  <a href="http://stackoverflow.com/questions/13048368/difference-between-spring-mvc-formatters-and-converters">Difference between Spring MVC formatters and converters</a>
- 4: Протестировать `MealRestController` (SoapUi, curl, IDEA Test RESTful Web Service, Postman). Запросы `curl` занести в отдельный `md` файл (либо `README.md`)