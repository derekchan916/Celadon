class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :product_id, null: false
      t.integer :type_id, null: false

      t.timestamps null: false
    end

    add_index :categories, :product_id
    add_index :categories, :type_id
  end
end
