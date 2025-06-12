class AddEmeraldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :emeralds, :integer
  end
end
