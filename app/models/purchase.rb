class Purchase < ApplicationRecord
    has_many :transactions, dependent: :destroy
end
