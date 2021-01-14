# BookStoreProject  
## Задание  
1) Распределить роли в группе и описать функционал каждого участника разработки   

2) Реализовать распределенную систему хранения данных, согласно варианту, и продемонстрировать ее работу всеми субъектами - участниками бизнес-процессов реализованного проекта.  

3) Обосновать выбор средств и платформу реализации.  

5) Проанализировать выбранный вариант описания проектируемой системы.  

6) Выделить необходимый набор сущностей, отражающих предметную область для представления в рамках реляционной модели. Определить необходимый набор атрибутов каждой сущности, выделив идентифицирующие атрибуты. Определить сущности вида подтип/супертип. Определить связи между сущностями. Формализовать связи вида 1:1, 1:M, M:N.  

7) Реализовать диаграмму «сущность-связь» модели базы данных в нотации IDEF1X  

8) Создать базу данных для СУБД и сгенерировать sql-скрипт для задания структуры базы данных. Выполнить анализ sql-скрипта создания базы данных и ассоциированных с ней объектов (таблиц и ограничений).  

9) Создать и выполнить запросы на добавление данных в таблицы (данные придумать самостоятельно).  

10) Создать Web форму для выполнения запросов к серверной базе данных Адаптировать имеющиеся запросы и/или реализовать новые.  

11) Построить функциональную диаграмму в нотации IDEF0 для всей информационной системы в целом и для отдельных сценариев, отражающих логику и взаимоотношение подсистем. Реализовать IDEF0-модель. Заполнить глоссарий IDEF0-модели. Проверить корректность разработанной модели.  

12) Построить диаграмму потоков данных для проектируемой информационной системы в нотации Йордона - Де Марко или Гейна - Сарсона.  

13) Проанализировать выбранный вариант описания проектируемой системы. Сформулировать требования к системе с применением диаграммы прецедентов. Создать начальную версию диаграммы прецедентов.  

14) Создать модель статической структуры системы и связей между ее элементами с помощью диаграммы классов. Реализовать диаграмму классов.  

15) Создать модель процесса обмена сообщениями между объектами в виде диаграмм последовательностей и кооперации. Реализовать диаграммы последовательностей и кооперации.  

16) Создать модель поведения системы в рамках прецедентов с помощью диаграмм деятельностей. Реализовать диаграммы деятельностей. 

17) Модифицировать диаграмму прецедентов с учетом развития постановки задачи в описании системы. В рамках новой модели произвести модификацию диаграмм классов, последовательностей, кооперации и деятельностей. Выполнить проверку корректности модели.  

18) Реализовать диаграмму развертывания системы.  

19) Составить отчет по заданию, включив все описанные выше пункты (этапы в различных нотациях UML).  

20) Защитить отчет
## Процесс работы
Для копирования репозитория выполнить `git clone git clone --branch <branchname> https://github.com/BigAngryPanda/BookStoreProject`  
Почему иногда нужна опция `--single-branch` можно прочитать [здесь](https://stackoverflow.com/questions/1911109/how-do-i-clone-a-specific-git-branch)  
Про ветви см. ниже  
  
Предположим, что вы локально внесли изменения и хотите внести их в основной репозиторий (т.е. выполнить merge)  
Для этого:  
`git commit -a -m "Your message"` (или git add . && git commit -m "Your message")  
`git checkout master` (переключаемся на master)  
`git pull` (обновляем наш локальный репозиторий)  
`git merge <branchname>`  
`git checkout <branchname>` (переключаемся обратно на свою ветвь)  

Здесь нет пункта про merge-conflicts, надеюсь их не будет, но прочитать про это можно [здесь](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging), глава Basic Merge Conflicts, [на русском](https://git-scm.com/book/ru/v2/%D0%92%D0%B5%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2-Git-%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B-%D0%B2%D0%B5%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B8-%D1%81%D0%BB%D0%B8%D1%8F%D0%BD%D0%B8%D1%8F) 
  
Подробнее [здесь](https://www.git-tower.com/learn/git/faq/git-merge-branch/)

## Ветки
backend  
fronend  
database  
schemes  (все графики, схемы и т.п.)  
misc (для всего остального)  
  
Может быть так, что в процессе работы вам потребуется создавать новые ветви в своей основной  
Как создать свою ветку: `git checkout -b <yournewbranch>` [Подробнее](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)

## Установка база данных
Я тестировал на Debian 10  
Устанавливал mysql по [гайду](https://losst.ru/ustanovka-mysql-v-debian-10)  
Далее логинимся через root аккаунт:  
`mysql -u root -p`  
Создаем базу:  
`create database store;`  
Выбираем ее:  
`use store;`  
Экспортируем бд через команду (путь до sql файла свой):  
`source /home/test/store.sql;`  

База данных готова.  

Запросы к бд и их описание есть в файле db/queries  
