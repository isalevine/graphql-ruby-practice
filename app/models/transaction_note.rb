class TransactionNote < ApplicationRecord
    belongs_to :transaction
    belongs_to :note
end
