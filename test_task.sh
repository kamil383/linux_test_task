#! /bin/bash
server_name=("$@")
now=$(date +"%d_%m_%Y")
if [ -z "$server_name" ]
then
    server_name="SERVER_${now}_running"
else
    server_name+="_${now}_running"
fi

curl -s  https://raw.githubusercontent.com/GreatMedivack/files/master/list.out | awk '{if ($3=="Running") print $1}' > $server_name.out

arc_name=$(echo $server_name | grep  -Po '(.*\d)')

if [ -f "archives/$arc_name.tar" ]
then
    echo "Архив уже создан"
else
     tar -cf  archives/$arc_name.tar $server_name.out
     echo "Скрипт отработал успешно! Файл $server_name.out запакован в архив $arc_name.tar"
fi





