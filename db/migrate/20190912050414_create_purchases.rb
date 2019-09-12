class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :username
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
