class RemoveandAddProducts < ActiveRecord::Migration
  def change
    remove_column :products, :level, :integer
    remove_column :products, :moves, :string
    remove_column :products, :poke_type, :string

    add_index :products, :price
  end
end
