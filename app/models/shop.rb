class Shop < ActiveRecord::Base
    belongs_to :user
    has_many :products, though: "shop_product"
end
