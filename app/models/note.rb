class Note < ApplicationRecord
    has_many :transaction_notes
    has_many :notes, through: :transaction_notes
end
