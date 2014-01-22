## Setup for getting started

### Get packages 

    $ sudo apt-get install postgresql libpq-dev curl vim-gnome nodejs git

### install rvm:

* search for rvm install https://rvm.io/rvm/install
* use poor man's rails installer option

        $ \curl -sSL https://get.rvm.io | bash -s stable --rails

### setup database

    $ sudo -u postgres createuser --superuser $USER

    $ sudo -u postgres psql
    postgres=# \password <enter your user name here, same as $USER>  #<-- don't copy and paste this one

use Ctrl-D to get out

    $ sudo -u postgres createdb $USER

    $ psql
    psql (9.1.11)
    Type "help" for help.

    rob=# 

use Ctrl-D to get out

### create key

    $ ssh-keygen
    $ cat ~/.ssh/id_rsa.pub 

* copy key and add to github see: https://github.com/settings/ssh

### checkout repository

    $ git clone git@github.com:DnDCity/DnDCity.git
    $ cd DnDCity
    $ ls
    $ git status

### install all of the other packages that the project knows about

    DnDCity$ git pull
    DnDCity$ bundle install
    DnDCity$ rake db:create
    DnDCity$ rake db:migrate
    DnDCity$ rails server

At this point, you should be able to browse to http://localhost:3000/ and see our website


