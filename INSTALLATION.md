#### Installation Process on Ubuntu 18.04

```shell
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
```
Installing with _rbenv_ is a simple two step process. First you install _rbenv_, and then _ruby-build_

````shell
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.1
rbenv global 2.6.1
ruby -v
````


Installing Bundler
````shell
gem install bundler
rbenv rehash
````

Installing postgresql
````shell
`sudo apt install libpq-dev` 
````

Installing Node
````shell
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
````


Installing WebPacker
````shell
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn
yarn --version
````

Installing Rails
````shell
gem install rails
rbenv rehash
rails -v
````

Installing RSpec
````shell
gem install rspec

````
