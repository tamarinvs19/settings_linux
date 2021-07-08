# Ubuntu Server 20.04 на Yandex.Cloud
## Подключение по ssh
```bash
ssh <login>@<ip>
```

## Настройка
```bash
sudo apt-get update
sudo apt-get install -y vim mosh tmux htop git curl wget unzip zip gcc build-essential make
```

Настройка ssh:
```bash
sudo vim /etc/ssh/sshd_config
    AllowUsers <login>
    PermitRootLogin no
    PasswordAuthentication no
```

```bash
sudo service ssh restart
sudo passwd <login>
exit
```

Подключаемся обратно
```bash
mosh <login>@<ip>
```
Если не запускается из-за кодировок:
```bash
sudo localedef ru_RU.UTF-8 -i ru_RU -fUTF-8
export LANGUAGE=ru_RU.UTF-8
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8
sudo locale-gen ru_RU.UTF-8
sudo dpkg-reconfigure locales
```
Выбираем на первой странице только ru_RU, на второй тоже.

## Установка пакетов
```bash
sudo apt-get install -y zsh tree redis-server nginx zlib1g-dev libbz2-dev libreadline-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev python3-dev python-imaging python3-lxml libxslt-dev python-libxml2 python-libxslt1 libffi-dev libssl-dev python-dev gnumeric libsqlite3-dev libpq-dev libxml2-dev libxslt1-dev libjpeg-dev libfreetype6-dev libcurl4-openssl-dev supervisor
```

### Oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
vim ~/.zshrc
    alias cls="clear"
```
#### Подсветка синтаксиса
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Затем в `~/zshrc` добавить `zsh-syntax-highlighting` в плагины.

## Python
### pyenv
```bash
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
exec "$SHELL"
```
### python 3.9.1
```bash
pyenv install 3.9.1

sudo update-alternatives --install /usr/bin/python3 python3 /home/vyacheslav/.pyenv/shims/python3.9 2
sudo update-alternatives --install /usr/bin/python python /home/vyacheslav/.pyenv/shims/python3.9 2
```

## Project
Можем перейти в директорию для проекта.
### virtualenv
Для pyenv установим
```bash
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```
После этого можно создать виртульное окружение
```bash
pyenv virtualenv 3.9.1 <name>
pyenv activate <name>
```

Можно установить зависимости, проверить рабтоспособность.

### Django
#### guicorn

