class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :national_id, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :discount
      t.integer :level, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.string :poke_type, null: false
      t.string :description
      t.string :moves, array: true
      t.string :image_url, null: false

      t.timestamps null: false
    end
  end
end
