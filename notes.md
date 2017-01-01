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

###agregar validaciones
    class User < ActiveRecord::Base
        validates :password, presence: true,
                    length: { minimum: 8}
        validates :email, presence: true
        
    end

    class Article < ActiveRecord::Base
        validates :title, presence: true,
                    length: {maximum: 50}
        validates :post, presence: true               
                    
    end

###agregar has_many belongs_to
    class User < ActiveRecord::Base
        has_many :articles

    end

    class Article < ActiveRecord::Base
        belongs_to :article
           
    end

###create comment model
rails generate model Comment commenter:string body:text article:references
rake db:migrate

###nest comment inside articles

    #file: routes.rb
      resources :articles do
        resources :comments
      end

###generate controller
rails generate controller Comments

#in case of delete al controller
rails destroy controller Comments