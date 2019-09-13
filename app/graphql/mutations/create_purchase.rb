# created per tutorial: https://mattboldt.com/2019/01/07/rails-and-graphql/

class Mutations::CreatePurchase < Mutations::BaseMutation
    argument :username, String, required: true
    argument :price, Float, required: true

    field :purchase, Types::PurchaseType, null: false
    field :message, String, null: true
    field :errors, [String], null: false
    
    def resolve(username:, price:)
        purchase = Purchase.new(username: username, price: price)
        if purchase.save
            {
                purchase: purchase,
                message: "Purchase created successfully!",
                errors: []
            }
        else
            {
                purchase: nil,
                message: "Purchase NOT created!! See errors!",
                errors: purchase.errors.full_messages
            }
        end
    end


end