class CreateOwnerships < ActiveRecord::Migration[8.0]
  def change
    create_table :ownerships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :item_code

      t.timestamps
    end
  end
end
