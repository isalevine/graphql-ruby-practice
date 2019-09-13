module Types
  class PurchaseType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :price, Float, null: false
    field :transactions, [Types::TransactionType], null: true
    field :transactions_count, Integer, null: true
    field :current_balance, Float, null: true

    def transactions_count
      object.transactions.size
    end

    def current_balance
      balance = object.price
      if !object.transactions.empty?
        object.transactions.each do |transaction|
          balance -= transaction.amount
        end
      end
      return balance
    end

  end
end
