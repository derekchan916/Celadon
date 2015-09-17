class CreateOrderedItems < ActiveRecord::Migration
  def change
    create_table :ordered_items do |t|
      t.integer :product_id, null: false
      t.integer :user_id, null: false
      t.integer :quantity, null: false
      t.string :order_id, null: false

      t.timestamps null: false
    end
    add_index :ordered_items, :user_id
  end
end
