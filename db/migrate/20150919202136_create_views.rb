class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.integer :product_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :views, :product_id
  end
end
