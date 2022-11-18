# linux_test_task

1. Написать BASH-скрипт который скачивает файл
[https://raw.githubusercontent.com/GreatMedivack/files/master/list.out](https://raw.githubusercontent.com/GreatMedivack/files/master/list.out) из репозитория.

2. Создает на его основе файл с именем **SERVER_DATE_running.out**,
где SERVER это название сервера (передается в скрипт в качестве аргумента, при отсутствии
аргумента должно выставляться какое-либо значение по умолчанию), а DATE текущая дата в
формате ДЕНЬ_МЕСЯЦ_ГОД (например 01_09_1939).

- Файл должен содержать только имена тех сервисов, у которых статус равен Running.

*В файле должны находиться только имена сервисов, данные из других столбцов
исходного файла не нужны.*

3. Запаковывает файл в архив c именем SERVER_DATE и складывает его в папку
archives если архива с таким именем еще не существует.

4. Выполняет проверку архива на повреждение и выводит сообщение об успешном завершении работы или ошибке.


Перед выполнением скрипта создать папку для архивов.  cd archives
