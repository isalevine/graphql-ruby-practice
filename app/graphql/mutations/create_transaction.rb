# created per tutorial: https://mattboldt.com/2019/01/07/rails-and-graphql/

class Mutations::CreateTransaction < Mutations::BaseMutation
    argument :purchase_id, Integer, required: true
    argument :amount, Float, required: true

    field :purchase, Types::PurchaseType, null: false
    field :message, String, null: true
    field :errors, [String], null: false

    def resolve(purchase_id:, amount:)
        purchase = Purchase.find(purchase_id)
        if purchase
            transaction = Transaction.new(purchase_id: purchase_id, amount: amount)
            if transaction.save
                {
                    purchase: purchase,
                    message: "Transaction successfully applied to purchase!",
                    errors: []
                }
            end
        else
            {
                purchase: nil,
                message: "Could not find purchase by purchase_id!",
                errors: []
            }    
        end
    end
end