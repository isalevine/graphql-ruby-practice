class AddReferenceIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :reference_id, :string
  end
end
