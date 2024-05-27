# Devops-часть хакатона (от 20.05.2024)

**Руководитель по `devops`**: Полушвайко Константин

## Руководство по настройке
### Установка на удаленный сервер через Ansible
1. Склонируйте репозиторий:
```bash
    git clone https://github.com/antoniocra04/it-academy-hackaton-2024-devops.git
```
2. Поменяйте IPv4, имя пользователя и путь к приватному ключу SSH в `hosts.ini`
3. Чтобы загрузить репозиторий, зависимости на сервер и запустить сайт автоматически, используйте:
```bash
    bash ./remote_init.sh
```
4. Чтобы запустить/перегрузить сайт на сервере, используйте: 
```bash
    bash ./remote_run.sh
```
5. Чтобы выключить сайт на сервере, используйте: 
```bash
    bash ./remote_stop.sh
```

### Ручная установка
1. В первую очередь скачайте `docker` одним из следующих способов:
   - [`Desktop`-версию docker](https://www.docker.com/products/docker-desktop/) *(Подойдет, если у вас Windows, MacOS или GUI Linux)*;
   - При помощи brew в MacOS: `brew install docker`;
   - При помощи `apt-get` в Ubuntu [(Подробнее здесь...)](https://docs.docker.com/engine/install/ubuntu/).

2. Склонируйте репозиторий и загрузите подмодули:
```bash
    git clone https://github.com/antoniocra04/it-academy-hackaton-2024-devops.git
    git submodule init
    git submodule update --remote it-academy-hackaton-2024-front
    git submodule update --remote it-academy-hackaton-2024-back
```

3. Запустите `Docker Engine`, затем введите следующие команды в директории репозитория:
```bash
    docker-compose up
```
> Или, если у вас есть консоль Bash:
> ```bash
>     bash ./local_run.sh
> ```

4. Чтобы остановить контейнеры и очистить память от `images` возпользуйтесь:
```bash
    docker-compose down --rmi local
```
> Либо, если у вас есть консоль Bash:
> ```bash
>     bash ./local_stop.sh
> ```