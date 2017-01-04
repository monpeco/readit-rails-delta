class User < ActiveRecord::Base
    before_save :check_stock #

    has_many :articles
    validates :password, presence: true,
                length: { minimum: 8}
    validates :email, presence: true


    def check_stock #
       
       if self.password == '12345678'
         errors[:attribute] << "No se puede usar password tan facil"
         return false
       end
    end
    
end
