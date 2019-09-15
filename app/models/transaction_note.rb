class TransactionNote < ApplicationRecord
    # belongs_to :transaction       # <= NO IDEA why only this needs to be commented out!!
    belongs_to :note
end
