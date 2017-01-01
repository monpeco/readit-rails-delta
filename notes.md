git clone https://github.com/monpeco/readit-rails-delta.git

cd readit-rails-delta

rails new .

###open mysql

mysql -u root -p



###create database

CREATE DATABASE readitrailsdelta_development;



###show databases

SHOW DATABASES;



###change to database

USE readit_development;



###Grant persisses

GRANT ALL PRIVILEGES ON readitrailsdelta_development.*
to 'sbadmin'@'localhost'
IDENTIFIED BY 'password';


###
rails generate scaffold User password:string email:string 

###
rake db:migrate

###
rails generate scaffold Article title:string post:text user_id: integer

