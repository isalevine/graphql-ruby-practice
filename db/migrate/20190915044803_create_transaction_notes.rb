class CreateTransactionNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_notes do |t|
      t.integer :transaction_id
      t.integer :note_id

      t.timestamps
    end
  end
end
