class RemoveOwnedFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :owned, :text
  end
end
