[![Codacy Badge](https://api.codacy.com/project/badge/Grade/80c9d999f73a4fec9d8c3eb19438b1d1)](https://www.codacy.com/app/chumakig86/topjava?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=chumakig86/topjava&amp;utm_campaign=Badge_Grade)

## ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) Домашнее задание HW08

- 1: Перевести `meals` на `datatables` (`meals.jsp`, `MealAjaxController`).
  - 1.1 Реализовать добавление записи еды через модальное окно Bootstrap и удаление еды по ajax (БЕЗ редактирования).
  - 1.2 При вставке данных по AJAX пропадает все JSP форматирование, чинить перерисовку НЕ надо. Следующий урок- будем делать datatable по AJAX и форматирование на стороне клиента.
- 2: Т.к. HTML атрибут id у каждого элемента документа должен быть уникален, нужно избавиться от дублирования `id="${user.id}"` в строках таблиц users и meals (переместить атрибут id в тэг `<tr>` или передавать в качестве параметра функций через `onclick`)

#### Optional.
- 3: Перевести работу фильтра на AJAX. Попробуйте после модификации таблицы (например добавлении записи) обновлять ее также с учетом фильтра.
- 4: Сделать кнопку сброса фильтра.
- 5: Реализовать enable/disable User через checkbox в `users.jsp` с сохранением в DB. Неактивных пользователей выделить css стилем.

