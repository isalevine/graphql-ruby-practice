module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    field :purchases, [Types::PurchaseType], null: false

    def purchases
      Purchase.all
    end

    field :purchase, Types::PurchaseType, null: false do
      # argument :id, ID, required: false
      # argument :username, String, required: false
      # argument :price, Float, required: false
    end

    def purchase(id:)
      Purchase.find(id)
    end

    
  end
end
