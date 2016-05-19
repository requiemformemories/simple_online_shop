class CreateShopProducts < ActiveRecord::Migration
  def change
    create_table :shop_products do |t|
      t.integer :shop_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
