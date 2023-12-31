# Задача №10

---

### Контекст

Имеется база данных для недавно созданного загородного клуба. В ней имеется информация о членах этого клуба, объектов для 
отдыха, таких как теннисные корты, и истории бронирования. Помимо прочего, клуб хочет понять, как они могут использовать 
свою информацию для анализа использования/спроса на объекты. __Обратите внимание__: этот набор данных предназначен 
исключительно для интересного набора упражнений, а схема базы данных несовершенна в нескольких аспектах — пожалуйста, не
воспринимайте ее как пример хорошего дизайна.

В БД в схеме `cd` имееются 3 таблицы. Для этого задания нам потребуется только одна таблица `cd.facilities`.   

---

**Таблица `cd.facilities`**

```postgresql
CREATE TABLE cd.facilities(
   facid               INTEGER                NOT NULL, 
   name                CHARACTER VARYING(100) NOT NULL, 
   membercost          NUMERIC                NOT NULL, 
   guestcost           NUMERIC                NOT NULL, 
   initialoutlay       NUMERIC                NOT NULL, 
   monthlymaintenance  NUMERIC                NOT NULL
);
```

В таблице перечислены все доступные для бронирования объекты, которыми располагает загородный клуб. Клуб хранит 
информацию об идентификаторе/имени, стоимости бронирования как членов, так и гостей, первоначальную стоимость строительства объекта и предполагаемые ежемесячные расходы на содержание.

---

### Постановка

Выведите названия объектов и их ценовую категорию(объект получает ценовую категорию "expensive", если его ежемесячная стоимость обслуживания превышает 100 долларов, и "cheap" в ином случае).



### Ожидаемый формат ответа

Ваш запрос должен возвращать таблицу формата:

| name             | cost      |
|------------------|-----------|
| Tennis Court 1   | expensive |
| Tennis Court 2   | expensive |
| Badminton Court  | cheap     |
| ...              | ...       |
