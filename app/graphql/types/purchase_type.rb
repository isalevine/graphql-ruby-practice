module Types
  class PurchaseType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :price, Float, null: false
    field :transactions, [Types::TransactionType], null: true

    def transactions_count
      object.transactions.count
    end
  end
end
