class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :image_link
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
