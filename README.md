[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a3090cdac212404d80d8d289dbc61870)](https://www.codacy.com/app/javawebinar/topjava)
## ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) ![video](https://cloud.githubusercontent.com/assets/13649199/13672715/06dbc6ce-e6e7-11e5-81a9-04fbddb9e488.png) <a href="https://drive.google.com/open?id=0B9Ye2auQ_NsFZFdWWFdwams0eGM">Домашнее задание HW05</a>

- 1: Имплементировать `DataJpaMealRepositoryImpl`
- 2: Разделить реализации Repository по профилям Spring: `jdbc`, `jpa`, `datajpa` (общее в профилях можно объединять, например `<beans profile="datajpa,jpa">`). 
  - 2.1: Профили выбора DB (`postgres/hsqldb`) и реализации репозитория (`jdbc/datajpa/jpa`) независимы друг от друга и при запуске задать приложения (тестов) нужно задать тот и другой. 
  - 2.2: Для интеграции с IDEA не забудте выставить в `spring-db.xml` справа вверху в `Change Profiles...` профили, например `datajpa, postgres`
  - 2.3: Общие части для всех в `spring-db.xml` можно оставить как есть без профилей вверху файла (до первого `<beans profile=` ).
- 3: Сделать тесты всех реализаций (`jdbc, jpa, datajpa`) через наследование (без дублирования)
  -  3.1 **сделать один базовый класс для `MealServiceTest` и `UserServiceTest`**.
- 4: Запустить все тесты: `mvn test` (в IDEA Maven Lifecycle - test, кнопку skipTest отжать)

#### Optional

- 5: Разделить `JdbcMealRepositoryImpl` для HSQLDB (она не умеет работать с Java8 Time API) и Postgres через `@Profile` (для Postgres оставить `LocalDateTime`). Цель задания -  потренироваться с [паттерном шаблонный метод](https://refactoring.guru/ru/design-patterns/template-method) и профилями Spring. Бины Spring мы разделяем (фильтруем) по разным профилям с помощью `beans profile` в xml конфигурации и `@Profile` (те мы конфигурируем, какие бины попадут в контекст Spring в зависимости от активных профилей приложения). 
Абстрактные классы не создаются и в контекст не попадают. Профили, заданные в `@Profile` пересекаются с активными профилями приложения: если пересечение есть, то бин включается в контекст (cм. реализацию `@Profile` и в ней `ProfileCondition`, можно подебажить). Например при сконфигуренном `@Profile({"postgres","jdbc"})` бин попадет в контекст, если в профилях запущенного приложения есть хотя бы один из них (например "jdbc"). После выполнения разделения можно предложить решение проще.
- 6: Починить `MealServlet` и использовать в `SpringMain` реализацию DB: добавить профили. Попробуйте поднять Spring контекст без использования `spring.profiles.active`.
- 7: Сделать и протестировать в сервисах методы (тесты и реализация только для `DataJpa`)
  - 7.1:  достать по id пользователя вместе с его едой
  - 7.2:  достать по id еду вместе с пользователем
  - 7.3:  обращения к DB сделать в одной транзакции (можно сделать разные варианты). <a href="https://en.wikibooks.org/wiki/Java_Persistence/OneToMany">Java Persistence/OneToMany</a>

---------------------