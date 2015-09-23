class Editviews < ActiveRecord::Migration
  def change
    remove_column :views, :user_id, :integer

    add_column :views, :user_id, :integer
  end
end
