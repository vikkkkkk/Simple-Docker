# Simple Docker

## Part 1. Готовый докер

##### Взяла официальный докер образ с **nginx** и выкачала его при помощи `docker pull`
##### Проверила наличие докер образа через `docker images`
##### Запустила докер образ через `docker run -d [image_id|repository]`
##### Проверила, что образ запустился через `docker ps`
![comands](screen/1.png)<br>*comands*<br>


##### Посмотрела информацию о контейнере через `docker inspect [container_id|container_name]`
![docker inspect](screen/1.1.png)<br>*docker inspect*<br>

##### По выводу команды определила и поместила в отчёт размер контейнера, список замапленных портов и ip контейнера

##### Остановила докер образ через `docker stop [container_id|container_name]`
![docker stop](screen/1.2.png)<br>*docker stop*<br>

##### Проверила, что образ остановился через `docker ps`
![docker ps](screen/1.3.png)<br>*docker ps*<br>

##### Запустила докер с замапленными портами 80 и 443 на локальную машину через команду *run*
##### Проверила, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**
![docker run -p 80:80 -p 443:443 -d nginx](screen/1.4.png)<br>*docker run -p 80:80 -p 443:443 -d nginx*<br>

##### Перезапустила докер контейнер через `docker restart [container_id|container_name]` и проверила любым способом, что контейнер запустился
![docker restart](screen/1.5.png)<br>*docker restart*<br>

## Part 2. Операции с контейнером

##### Прочитала конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*
![docker exec](screen/2.png)<br>*docker exec*<br>

##### Создала на локальной машине файл *nginx.conf*
![nginx.conf](screen/2.1.png)<br>*nginx.conf*<br>

##### Настроила в нем по пути */status* отдачу страницы статуса сервера **nginx**
![/status](screen/2.2.png)<br>*/status*<br>

##### Скопировала созданный файл *nginx.conf* внутрь докер образа через команду `docker cp` и перезапустила **nginx** внутри докер образа через команду *exec*
![docker cp && reload](screen/2.3.png)<br>*docker cp && reload*<br>

##### Проверила, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![localhost:8080/status](screen/2.4.png)<br>*localhost:8080/status*<br>

##### Экспортировала контейнер в файл *container.tar* через команду *export*, остановила контейнер и удалила образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
![docker rmi](screen/2.5.png)<br>*docker rmi*<br>
![docker rmi](screen/2.6.png)<br>*docker rmi*<br>


##### Удалила остановленный контейнер
##### Импортировала контейнер обратно через команду *import*, запустила импортированный контейнер
![docker system prune -a](screen/2.7.png)<br>*docker system prune -a*<br>
![docker](screen/2.8.png)<br>*docker*<br>

##### Проверила, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![localhost:80/status](screen/2.9.png)<br>*localhost:80/status*<br>
![localhost:80/status](screen/2.10.png)<br>*localhost:80/status*<br>