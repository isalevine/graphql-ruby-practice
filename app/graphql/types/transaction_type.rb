module Types
  class TransactionType < Types::BaseObject
    field :amount, Float, null: false
    field :notes, [Types::NoteType], null: true


  end
end
