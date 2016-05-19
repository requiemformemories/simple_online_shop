class Product < ActiveRecord::Base
    has_many :shop,though: "shop_product"
    belongs_to :category
end
