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