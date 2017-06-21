class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.string :brand
      t.string :product_name
      t.string :model
      t.numeric :year
      t.date :purchased_date
      t.decimal :price
      t.string :shop_name
      t.boolean :has_warranty
      t.date :warranty_void_date

      t.timestamps
    end
  end
end
