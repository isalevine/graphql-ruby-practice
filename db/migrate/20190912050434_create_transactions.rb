class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :purchase, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
