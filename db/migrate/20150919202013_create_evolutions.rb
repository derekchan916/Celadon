class CreateEvolutions < ActiveRecord::Migration
  def change
    create_table :evolutions do |t|
      t.integer :product_id, null: false
      t.integer :evolution_id, null: false

      t.timestamps null: false
    end
    add_index :evolutions, :product_id
  end
end
