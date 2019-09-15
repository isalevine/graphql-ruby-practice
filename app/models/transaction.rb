class Transaction < ApplicationRecord
  belongs_to :purchase
  has_many :transaction_notes
  has_many :notes, through: :transaction_notes
end
