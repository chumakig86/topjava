[![Codacy Badge](https://api.codacy.com/project/badge/Grade/80c9d999f73a4fec9d8c3eb19438b1d1)](https://www.codacy.com/app/chumakig86/topjava?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=chumakig86/topjava&amp;utm_campaign=Badge_Grade)

## ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) Домашнее задание HW06
- 1.1 Починить тесты `InMemoryAdminRestControllerSpringTest/InMemoryAdminRestControllerTest`  (в новой версии Spring классы `spring-mvc` требуют `WebApplicationContext`, поэтому поправьте `mock.xml`)
- 1.2 Починить Jdbc тесты (валидацию исключить)
  - <a href="http://iliachemodanov.ru/ru/blog-ru/12-tools/57-junit-ignore-test-by-condition-ru">org.junit.Assume</a>
  - <a href="http://www.ekiras.com/2015/09/spring-how-to-get-current-profiles-in-spring-application.html">How to get Current Profiles in Spring Application</a>
- 1.3 Починить работу meals: перенести функциональность `MealServlet` в контроллеры (сервлеты удалить)
  - 1.3.1 разнести запросы на update/delete/.. по разным методам (попробуйте вообще без `action=`). Можно по аналогии с `RootController#setUser` принимать `HttpServletRequest request` (аннотации на параметры и адаптеры для `LocalDate/Time` мы введем позже). 
  - 1.3.2 в одном контроллере нельзя использовать другой. Чтобы не дублировать код можно сделать наследование.
  - 1.3.3 добавить локализацию и `jsp:include` в `mealForm.jsp / meals.jsp`

#### Optional
- 2.1 Добавить транзакционность (`DataSourceTransactionManager`) в Jdbc реализации  
- 2.2 Добавить еще одну роль к ADMIN (будет 2 роли: `ROLE_USER, ROLE_ADMIN`)
- 2.3 Добавить проверку ролей в UserTestData.assertMatch
- 2.4 Починить тесты в `JdbcUserRepositoryImpl` (добавить роли). 
  - 2.4.1 В реализации `getAll` НЕ делать запрос ролей для каждого юзера (N+1 select)
  - 2.4.2 При save посмотрите на <a href="https://www.mkyong.com/spring/spring-jdbctemplate-batchupdate-example/">batchUpdate()</a>