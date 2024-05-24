# Devops-часть хакатона (от 20.05.2024)

**Руководитель по `devops`**: Полушвайко Константин

## Руководство по настройке
1. В первую очередь скачайте `docker` одним из следующих способов:
   - [`Desktop`-версию docker](https://www.docker.com/products/docker-desktop/) *(Подойдет, если у вас Windows, MacOS или GUI Linux)*;
   - При помощи brew в MacOS: `brew install docker`;
   - При помощи `apt-get` в Ubuntu [(Подробнее здесь...)](https://docs.docker.com/engine/install/ubuntu/).

2. Запустите `docker`, затем введите следующую команду:
```bash
    docker-compose up
```
> Или, если у вас есть консоль Bash:
> ```bash
>     bash ./run.sh
> ```

3. Чтобы остановить контейнеры и очистить память от `images` возпользуйтесь:
```bash
    docker-compose down --rmi local
```
> Либо, если у вас есть консоль Bash:
> ```bash
>     bash ./stop.sh
> ```