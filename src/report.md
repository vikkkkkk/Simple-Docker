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

## Part 3. Мини веб-сервер

![container](screen/3.png)<br>*container*<br>
![ps](screen/3.0.png)<br>*ps*<br>

##### Написала мини сервер на **C** и **FastCgi**, который будет возвращать простейшую страничку с надписью `Hello World!`
![FastCgi](screen/3.01.png)<br>*FastCgi*<br>

##### Копирую файлы **server.c** && **nginx.conf** в сам Докер
![cp](screen/3.2.png)<br>*cp*<br>

##### Запустила написанный мини сервер через *spawn-fcgi* на порту 8080
![apt update](screen/3.3.png)<br>*apt update*<br>
![apt-get install libfcgi-dev](screen/3.4.png)<br>*apt-get install libfcgi-dev*<br>
![apt-get install gcc](screen/3.5.png)<br>*apt-get install gcc*<br>

##### Написала свой *nginx.conf*, который будет проксировать все запросы с 81 порта на *127.0.0.1:8080*
![nginx.conf](screen/3.6.png)<br>*nginx.conf*<br>


##### Проверила, что в браузере по *localhost:81* отдается написанная вами страничка
![apt-get install spawn-fcgi](screen/3.7.png)<br>*apt-get install spawn-fcgi*<br>
![gcc](screen/3.8.png)<br>*gcc*<br>
![localhost:81](screen/3.9.png)<br>*localhost:81*<br>

##### Положила файл *nginx.conf* по пути *./nginx/nginx.conf* (это понадобится позже)