class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name, null: false
      t.integer :type_id, null: false

      t.timestamps null: false
    end
    add_index :moves, :type_id
  end
end
