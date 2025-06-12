class ChangeEmeraldsDefaultOnUsers < ActiveRecord::Migration[7.0] # or your version
  def change
    change_column_default :users, :emeralds, 0
  end
end