

## Get packages 

'''
$ sudo apt-get install postgresql libpq-dev curl vim-gnome nodejs git
'''

install rvm:

* search for rvm install 
* use poor man's rails installer option

Additionally with rails (poor man's railsinstaller ):

'''
$ \curl -sSL https://get.rvm.io | bash -s stable --rails
'''

## setup database

$ sudo -u postgres createuser --superuser $USER

$ sudo -u postgres psql
postgres=# \password $USER   #<-- don't copy and paste this one

$ sudo -u postgres createdb $USER

$ psql #<-- sql shell
<ctrl-d to get out>

### create key
$ ssh-keygen
$ cat ~/.ssh/id_rsa.pub 

* copy key and add to github see: https://github.com/settings/ssh

### checkout repository

git clone git@github.com:DnDCity/DnDCity.git

$ cd DnDCity

### install all of the other packages that the project knows about

DnDCity$ bundle install
DnDCity$ rake db:create
DnDCity$ rake db:migrate
DnDCity$ rails server

At this point, you should be able to browse to http://localhost:3000/ and see our website


