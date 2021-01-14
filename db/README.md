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

Также смотри [это](https://likegeeks.com/mysql-on-linux-beginners-tutorial/)