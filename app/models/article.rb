class Article < ActiveRecord::Base
    belongs_to :article
    validates :title, presence: true,
                length: {maximum: 50}
    validates :post, presence: true               
                
end
