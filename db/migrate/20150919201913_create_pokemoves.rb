class CreatePokemoves < ActiveRecord::Migration
  def change
    create_table :pokemoves do |t|
      t.integer :move_id, null: false
      t.integer :product_id, null: false

      t.timestamps null: false
    end
  end
end
