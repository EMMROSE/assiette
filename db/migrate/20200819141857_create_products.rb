class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :cover
      t.text :description
      t.integer :stock
      t.monetize :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
